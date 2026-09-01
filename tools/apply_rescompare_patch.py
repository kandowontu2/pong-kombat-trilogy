#!/usr/bin/env python3
"""Apply the ResCompare patch resources used by the Pong Kombat 3 v2.1 updater.

ResCompare stores a target table in ``ZAP#`` resources.  Each referenced ``ZAP ``
resource contains replacement bytes and is paired with either a compact ``ZIS#``
or long-offset ``ZIL#`` edit list.  The edit list is a sequence of Munger-style
``(offset, remove_length, replacement_length)`` operations.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
import struct
from dataclasses import dataclass
from pathlib import Path


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from(">H", data, offset)[0]


def s16(data: bytes, offset: int) -> int:
    return struct.unpack_from(">h", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from(">I", data, offset)[0]


def s32(data: bytes, offset: int) -> int:
    return struct.unpack_from(">i", data, offset)[0]


@dataclass(frozen=True)
class Target:
    patch_id: int
    flags: int
    resource_type: str
    resource_id: int
    attributes: int
    original_size: int
    name: str | None


@dataclass(frozen=True)
class Edit:
    offset: int
    remove_length: int
    replacement_length: int


def parse_target_table(data: bytes) -> list[Target]:
    count = u16(data, 0)
    pos = 2
    targets: list[Target] = []
    for _ in range(count):
        start = pos
        patch_id = s16(data, pos)
        flags = u16(data, pos + 2)
        resource_type = data[pos + 4 : pos + 8].decode("mac_roman")
        resource_id = s16(data, pos + 8)
        attributes = u16(data, pos + 10)
        original_size = u32(data, pos + 12)
        name_length = data[pos + 16]
        raw_name = data[pos + 17 : pos + 17 + name_length]
        name = raw_name.decode("mac_roman") if name_length else None
        pos += 17 + name_length
        if (pos - start) & 1:
            pos += 1
        targets.append(
            Target(
                patch_id=patch_id,
                flags=flags,
                resource_type=resource_type,
                resource_id=resource_id,
                attributes=attributes,
                original_size=original_size,
                name=name,
            )
        )
    if pos != len(data):
        raise ValueError(f"target table has {len(data) - pos} trailing byte(s)")
    return targets


def parse_edits(data: bytes, long_offsets: bool) -> tuple[int, list[Edit]]:
    count = u16(data, 0)
    descriptor_value = u32(data, 2)
    pos = 6
    edits: list[Edit] = []
    for _ in range(count):
        if long_offsets:
            offset = s32(data, pos)
            encoded_remove = u32(data, pos + 4)
            pos += 8
            if encoded_remove & 0x80000000:
                remove_length = encoded_remove & 0x7FFFFFFF
                replacement_length = remove_length
            else:
                remove_length = encoded_remove
                replacement_length = u32(data, pos)
                pos += 4
        else:
            offset = s16(data, pos)
            encoded_remove = u16(data, pos + 2)
            pos += 4
            if encoded_remove & 0x8000:
                remove_length = encoded_remove & 0x7FFF
                replacement_length = remove_length
            else:
                remove_length = encoded_remove
                replacement_length = u16(data, pos)
                pos += 2
        edits.append(Edit(offset, remove_length, replacement_length))
    if pos != len(data):
        raise ValueError(f"edit list has {len(data) - pos} trailing byte(s)")
    return descriptor_value, edits


def load_manifest(root: Path) -> tuple[list[dict[str, object]], dict[tuple[str, int], dict[str, object]]]:
    manifest = json.loads((root / "manifest.json").read_text(encoding="utf-8"))
    by_key = {(item["type"], item["id"]): item for item in manifest}
    return manifest, by_key


def payload(root: Path, item: dict[str, object]) -> bytes:
    return (root / str(item["path"])).read_bytes()


def apply_edits(original: bytes, replacement: bytes, edits: list[Edit]) -> bytes:
    result = bytearray(original)
    replacement_pos = 0
    for edit in edits:
        if edit.offset < 0 or edit.offset + edit.remove_length > len(result):
            raise ValueError(f"edit is outside target: {edit}")
        end = replacement_pos + edit.replacement_length
        chunk = replacement[replacement_pos:end]
        if len(chunk) != edit.replacement_length:
            raise ValueError("patch payload ended before all edits were applied")
        result[edit.offset : edit.offset + edit.remove_length] = chunk
        replacement_pos = end
    if replacement_pos != len(replacement):
        raise ValueError(
            f"patch has {len(replacement) - replacement_pos} unused payload byte(s)"
        )
    return bytes(result)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("base", type=Path, help="dumped v2.0 resource directory")
    parser.add_argument("patch", type=Path, help="dumped ResCompare patch directory")
    parser.add_argument("output", type=Path)
    args = parser.parse_args()

    base_manifest, base_by_key = load_manifest(args.base)
    _, patch_by_key = load_manifest(args.patch)
    target_table_item = next(
        item for (type_code, _), item in patch_by_key.items() if type_code == "ZAP#"
    )
    targets = parse_target_table(payload(args.patch, target_table_item))

    if args.output.exists():
        raise ValueError(f"output already exists: {args.output}")
    shutil.copytree(args.base, args.output)
    output_manifest, output_by_key = load_manifest(args.output)

    report: list[dict[str, object]] = []
    for target in targets:
        key = (target.resource_type, target.resource_id)
        base_item = base_by_key.get(key)
        if base_item is None:
            raise ValueError(f"target resource does not exist: {key}")
        original = payload(args.base, base_item)
        if len(original) != target.original_size:
            raise ValueError(
                f"size mismatch for {key}: expected {target.original_size}, got {len(original)}"
            )
        if int(base_item["attributes"]) != target.attributes:
            raise ValueError(
                f"attribute mismatch for {key}: expected 0x{target.attributes:02X}, "
                f"got 0x{int(base_item['attributes']):02X}"
            )
        if base_item.get("name") != target.name:
            raise ValueError(
                f"name mismatch for {key}: expected {target.name!r}, "
                f"got {base_item.get('name')!r}"
            )

        patch_item = patch_by_key[("ZAP ", target.patch_id)]
        replacement = payload(args.patch, patch_item)
        if ("ZIS#", target.patch_id) in patch_by_key:
            list_type = "ZIS#"
            long_offsets = False
        else:
            list_type = "ZIL#"
            long_offsets = True
        edit_item = patch_by_key[(list_type, target.patch_id)]
        descriptor_value, edits = parse_edits(
            payload(args.patch, edit_item), long_offsets
        )
        patched = apply_edits(original, replacement, edits)

        output_item = output_by_key[key]
        output_path = args.output / str(output_item["path"])
        output_path.write_bytes(patched)
        output_item["size"] = len(patched)
        report.append(
            {
                "type": target.resource_type,
                "id": target.resource_id,
                "name": target.name,
                "patch_id": target.patch_id,
                "flags": target.flags,
                "edit_format": list_type,
                "descriptor_value": descriptor_value,
                "edits": len(edits),
                "old_size": len(original),
                "new_size": len(patched),
                "payload_size": len(replacement),
                "sha256": hashlib.sha256(patched).hexdigest(),
            }
        )

    (args.output / "manifest.json").write_text(
        json.dumps(output_manifest, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )
    (args.output / "patch-report.json").write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(json.dumps(report, indent=2, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
