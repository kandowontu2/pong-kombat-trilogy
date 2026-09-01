#!/usr/bin/env python3
"""Reproduce the Klik & Play installer extraction for Pong Kombat 2."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path

from lzhuf_decode import decode


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--setup-bin", type=Path, required=True)
    parser.add_argument("--data", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    setup = args.setup_bin.read_bytes()
    archive = args.data.read_bytes()
    count = struct.unpack_from("<H", setup, 0x68)[0]
    position = 0x6A
    manifest = []
    args.output.mkdir(parents=True, exist_ok=True)
    for index in range(count):
        record_size = struct.unpack_from("<H", setup, position)[0]
        record_end = position + record_size
        name_start = position + 6
        name_end = setup.index(0, name_start, record_end)
        name = setup[name_start:name_end].decode("latin1")
        data_offset = struct.unpack_from("<I", setup, record_end - 10)[0]
        packed_size = struct.unpack_from("<I", setup, record_end - 6)[0]
        packed = archive[data_offset:data_offset + packed_size]
        if len(packed) != packed_size:
            raise ValueError(f"{name}: compressed block extends beyond archive")
        decoded = decode(packed)
        destination = args.output / name
        destination.write_bytes(decoded)
        manifest.append({
            "index": index,
            "name": name,
            "dataOffset": data_offset,
            "packedBytes": packed_size,
            "decodedBytes": len(decoded),
            "sha256": sha256(decoded),
        })
        position = record_end

    (args.output / "installer-manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    print(f"decoded {len(manifest)} installer files")


if __name__ == "__main__":
    main()
