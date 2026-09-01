#!/usr/bin/env python3
"""Inventory every serialized frame, object label, and text-bearing record in PK2's GAM."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import struct
from pathlib import Path


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def c_strings(data: bytes, start: int, end: int) -> list[dict]:
    result = []
    for match in re.finditer(rb"[\x20-\x7e]{2,}\x00", data[start:end]):
        raw = match.group()[:-1]
        text = raw.decode("latin1")
        if len(text) > 512:
            continue
        result.append({"offset": start + match.start(), "text": text})
    return result


def classify(value: str) -> str:
    lowered = value.lower()
    if any(token in lowered for token in (
            "quick backdrop", "active object", "counter", "score", "shadow", "dent",
            "question", "string object", "lives", "player", "machine independant")):
        return "object-label"
    if any(token in lowered for token in (
            "wins", "paddle", "start", "options", "debug", "game over", "dismantle",
            "bounce", "flawless", "kode", "secret", "victory", "credit", "warning")):
        return "game-text"
    return "serialized-string"


def meaningful(value: str) -> bool:
    if classify(value) != "serialized-string":
        return True
    letters = [character for character in value if character.isalpha()]
    if not letters or len(letters) / len(value) < 0.65:
        return False
    vowels = sum(character.lower() in "aeiou" for character in letters)
    return vowels >= 1 and vowels / len(letters) >= 0.10


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    data = args.input.read_bytes()
    if data[:6] != b"GAME&\x01":
        raise SystemExit("unsupported GAM signature/version")
    frame_count = u16(data, 0xF6)
    width, height = u16(data, 0xF8), u16(data, 0xFA)
    frame_table = 0x166
    offsets = [u32(data, frame_table + index * 4) for index in range(frame_count)]
    if offsets != sorted(offsets) or any(offset >= len(data) for offset in offsets):
        raise SystemExit("invalid frame offset table")
    frames = []
    all_strings = c_strings(data, 0, len(data))
    for index, start in enumerate(offsets):
        end = offsets[index + 1] if index + 1 < frame_count else len(data)
        if start + 0x74 > end:
            raise SystemExit(f"truncated frame {index}")
        object_count = u16(data, start + 0x70)
        frame_strings = [item | {"kind": classify(item["text"])}
                         for item in all_strings
                         if start <= item["offset"] < end and meaningful(item["text"])]
        frames.append({
            "index": index,
            "offset": start,
            "endOffset": end,
            "bytes": end - start,
            "width": u16(data, start + 4),
            "height": u16(data, start + 6),
            "objectCount": object_count,
            "objectLabels": [item for item in frame_strings if item["kind"] == "object-label"],
            "gameText": [item for item in frame_strings if item["kind"] == "game-text"],
            "allNullTerminatedStrings": frame_strings,
        })

    manifest = {
        "format": "Klik & Play GAME& v1",
        "path": str(args.input),
        "bytes": len(data),
        "sha256": hashlib.sha256(data).hexdigest().upper(),
        "title": data[6:0x56].split(b"\0", 1)[0].decode("latin1"),
        "author": data[0x56:0xF4].split(b"\0", 1)[0].decode("latin1"),
        "frameCount": frame_count,
        "canvas": [width, height],
        "frameOffsetTable": frame_table,
        "frames": frames,
        "globalStrings": [item | {"kind": classify(item["text"])}
                          for item in all_strings if item["offset"] < offsets[0]],
    }
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "game-audit.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    lines = [
        "# Pong Kombat 2 serialized game audit", "",
        f"- SHA-256: `{manifest['sha256']}`", f"- File bytes: {len(data):,}",
        f"- Logical canvas: {width}×{height}", f"- Serialized frames: {frame_count}",
        f"- Frame offsets: {', '.join(f'`0x{value:X}`' for value in offsets)}", "",
        "Klik & Play stores PK2's game-specific behavior as frame/object/event records in the GAM rather "
        "than native x86 procedures. This inventory keeps every frame boundary and every null-terminated "
        "object/text record at its exact source offset. The separate NE indexes cover the native runtime, "
        "graphics, sound, DIB, and joystick procedures.", "",
        "| Frame | Range | Bytes | Declared objects | Object-label records | Game-text records |", "|---:|---|---:|---:|---:|---:|",
    ]
    for frame in frames:
        lines.append(f"| {frame['index']} | `0x{frame['offset']:X}`–`0x{frame['endOffset']:X}` | "
                     f"{frame['bytes']:,} | {frame['objectCount']} | {len(frame['objectLabels'])} | "
                     f"{len(frame['gameText'])} |")
    for frame in frames:
        lines.extend(["", f"## Frame {frame['index']}", "", "Object/text-bearing records:", ""])
        for item in frame["allNullTerminatedStrings"]:
            if item["kind"] != "serialized-string" or len(item["text"]) >= 4:
                escaped = item["text"].replace("|", "\\|").replace("\r", " ").replace("\n", " ")
                lines.append(f"- `0x{item['offset']:08X}` [{item['kind']}] {escaped}")
    (args.output / "GAME_EVENT_AUDIT.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps({"frames": frame_count, "objects": sum(f["objectCount"] for f in frames),
                      "strings": len(all_strings), "sha256": manifest["sha256"]}))


if __name__ == "__main__":
    main()
