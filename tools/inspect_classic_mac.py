#!/usr/bin/env python3
"""Inspect and extract classic Macintosh resource forks.

The files emitted by unar with ``-forks visible`` are AppleDouble files.  This
utility accepts either such a container or a raw resource fork, inventories the
resource map, and can dump each resource as an individual binary file.
"""

from __future__ import annotations

import argparse
import json
import re
import struct
from dataclasses import dataclass, asdict
from pathlib import Path


APPLEDOUBLE_MAGIC = 0x00051607
RESOURCE_FORK_ENTRY_ID = 2


def be16(data: bytes, offset: int) -> int:
    return struct.unpack_from(">H", data, offset)[0]


def bes16(data: bytes, offset: int) -> int:
    return struct.unpack_from(">h", data, offset)[0]


def be32(data: bytes, offset: int) -> int:
    return struct.unpack_from(">I", data, offset)[0]


def extract_resource_fork(container: bytes) -> bytes:
    """Return the resource fork from AppleDouble data, or the input if raw."""
    if len(container) < 26 or be32(container, 0) != APPLEDOUBLE_MAGIC:
        return container
    entry_count = be16(container, 24)
    for index in range(entry_count):
        pos = 26 + index * 12
        entry_id, offset, length = struct.unpack_from(">III", container, pos)
        if entry_id == RESOURCE_FORK_ENTRY_ID:
            end = offset + length
            if end > len(container):
                raise ValueError("AppleDouble resource fork extends beyond file")
            return container[offset:end]
    raise ValueError("AppleDouble file has no resource-fork entry")


@dataclass(frozen=True)
class Resource:
    type: str
    id: int
    name: str | None
    attributes: int
    data_offset: int
    size: int
    data: bytes

    def metadata(self) -> dict[str, object]:
        result = asdict(self)
        result.pop("data")
        return result


class ResourceFork:
    def __init__(self, data: bytes):
        self.data = data
        if len(data) < 16:
            raise ValueError("Resource fork is too short")
        self.data_offset, self.map_offset, self.data_length, self.map_length = (
            struct.unpack_from(">IIII", data, 0)
        )
        if self.data_offset + self.data_length > len(data):
            raise ValueError("Resource data area extends beyond resource fork")
        if self.map_offset + self.map_length > len(data):
            raise ValueError("Resource map extends beyond resource fork")
        self.resources = self._parse_map()

    def _parse_map(self) -> list[Resource]:
        map_base = self.map_offset
        type_list = map_base + be16(self.data, map_base + 24)
        name_list = map_base + be16(self.data, map_base + 26)
        type_count = be16(self.data, type_list) + 1
        resources: list[Resource] = []

        for type_index in range(type_count):
            type_pos = type_list + 2 + type_index * 8
            raw_type = self.data[type_pos : type_pos + 4]
            type_code = raw_type.decode("mac_roman", errors="replace")
            resource_count = be16(self.data, type_pos + 4) + 1
            refs = type_list + be16(self.data, type_pos + 6)

            for resource_index in range(resource_count):
                ref = refs + resource_index * 12
                resource_id = bes16(self.data, ref)
                name_offset = bes16(self.data, ref + 2)
                attributes = self.data[ref + 4]
                relative_data_offset = int.from_bytes(
                    self.data[ref + 5 : ref + 8], "big"
                )
                item = self.data_offset + relative_data_offset
                size = be32(self.data, item)
                payload = self.data[item + 4 : item + 4 + size]
                if len(payload) != size:
                    raise ValueError(
                        f"Resource {type_code!r} {resource_id} extends beyond data area"
                    )

                name = None
                if name_offset != -1:
                    name_pos = name_list + name_offset
                    name_size = self.data[name_pos]
                    name = self.data[name_pos + 1 : name_pos + 1 + name_size].decode(
                        "mac_roman", errors="replace"
                    )

                resources.append(
                    Resource(
                        type=type_code,
                        id=resource_id,
                        name=name,
                        attributes=attributes,
                        data_offset=relative_data_offset,
                        size=size,
                        data=payload,
                    )
                )
        return resources


def safe_component(value: str) -> str:
    value = value.replace("\r", "_").replace("\n", "_")
    value = re.sub(r'[<>:"/\\|?*\x00-\x1f]', "_", value).strip(" .")
    return value or "unnamed"


def dump_resources(fork: ResourceFork, output: Path) -> None:
    output.mkdir(parents=True, exist_ok=True)
    manifest: list[dict[str, object]] = []
    for resource in fork.resources:
        type_dir = output / safe_component(resource.type)
        type_dir.mkdir(parents=True, exist_ok=True)
        suffix = f"_{safe_component(resource.name)}" if resource.name else ""
        destination = type_dir / f"{resource.id}{suffix}.bin"
        destination.write_bytes(resource.data)
        metadata = resource.metadata()
        metadata["path"] = str(destination.relative_to(output))
        manifest.append(metadata)
    (output / "manifest.json").write_text(
        json.dumps(manifest, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )


def print_inventory(fork: ResourceFork, detailed: bool) -> None:
    grouped: dict[str, list[Resource]] = {}
    for resource in fork.resources:
        grouped.setdefault(resource.type, []).append(resource)

    print(
        f"data_offset={fork.data_offset} map_offset={fork.map_offset} "
        f"data_length={fork.data_length} map_length={fork.map_length}"
    )
    print(f"resource_types={len(grouped)} resources={len(fork.resources)}")
    for type_code in sorted(grouped):
        resources = grouped[type_code]
        total = sum(resource.size for resource in resources)
        print(f"{type_code!r:10} count={len(resources):4} bytes={total:8}")
        if detailed:
            for resource in sorted(resources, key=lambda item: item.id):
                name = f" name={resource.name!r}" if resource.name is not None else ""
                print(
                    f"  id={resource.id:6} size={resource.size:8} "
                    f"attrs=0x{resource.attributes:02X}{name}"
                )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("--detailed", action="store_true")
    parser.add_argument("--dump", type=Path)
    parser.add_argument("--raw-output", type=Path)
    args = parser.parse_args()

    raw = args.input.read_bytes()
    resource_data = extract_resource_fork(raw)
    if args.raw_output:
        args.raw_output.parent.mkdir(parents=True, exist_ok=True)
        args.raw_output.write_bytes(resource_data)
    fork = ResourceFork(resource_data)
    print_inventory(fork, args.detailed)
    if args.dump:
        dump_resources(fork, args.dump)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
