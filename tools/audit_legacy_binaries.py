#!/usr/bin/env python3
"""Build reproducible function-level indexes for the PK1 DOS and PK2 Win16 binaries."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from collections import deque
from dataclasses import dataclass
from pathlib import Path

from capstone import CS_ARCH_X86, CS_MODE_16, Cs
from capstone.x86 import X86_INS_CALL, X86_INS_LCALL, X86_INS_RET, X86_INS_RETF, X86_INS_IRET
from capstone.x86_const import X86_OP_IMM


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


@dataclass
class Segment:
    number: int
    data: bytes
    file_offset: int
    executable: bool
    label: str


def strings(data: bytes, minimum: int = 5) -> list[dict]:
    result: list[dict] = []
    start = None
    for index, value in enumerate(data + b"\0"):
        if 32 <= value < 127 or value in (9, 10, 13):
            if start is None:
                start = index
        elif start is not None:
            if index - start >= minimum:
                result.append({"offset": start, "text": data[start:index].decode("ascii")})
            start = None
    return result


def decode_function(md: Cs, segment: Segment, start: int, known_starts: set[int]) -> tuple[list[dict], set[int]]:
    if start < 0 or start >= len(segment.data):
        return [], set()
    queue = deque([start])
    visited: set[int] = set()
    calls: set[int] = set()
    decoded: dict[int, dict] = {}
    instruction_budget = 8192
    while queue and instruction_budget > 0:
        cursor = queue.popleft()
        while 0 <= cursor < len(segment.data) and cursor not in visited and instruction_budget > 0:
            if cursor != start and cursor in known_starts:
                break
            instruction = next(md.disasm(segment.data[cursor:cursor + 15], cursor, count=1), None)
            if instruction is None:
                break
            instruction_budget -= 1
            visited.add(cursor)
            raw = bytes(instruction.bytes)
            decoded[cursor] = {
                "offset": cursor,
                "bytes": raw.hex(" ").upper(),
                "mnemonic": instruction.mnemonic,
                "operands": instruction.op_str,
            }
            next_address = cursor + instruction.size
            target = None
            if instruction.operands and instruction.operands[0].type == X86_OP_IMM:
                target = int(instruction.operands[0].imm) & 0xFFFF
            if instruction.id in (X86_INS_CALL, X86_INS_LCALL):
                if target is not None and 0 <= target < len(segment.data):
                    calls.add(target)
                cursor = next_address
                continue
            if instruction.id in (X86_INS_RET, X86_INS_RETF, X86_INS_IRET) or instruction.mnemonic in ("int", "hlt"):
                break
            if instruction.mnemonic.startswith("j") or instruction.mnemonic in ("loop", "loope", "loopne", "jcxz"):
                if target is not None and 0 <= target < len(segment.data):
                    queue.append(target)
                if instruction.mnemonic == "jmp":
                    break
            cursor = next_address
    return [decoded[key] for key in sorted(decoded)], calls


def function_index(segments: list[Segment], seeds: dict[int, set[int]]) -> list[dict]:
    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.detail = True
    result: list[dict] = []
    for segment in segments:
        if not segment.executable:
            continue
        starts = set(seeds.get(segment.number, set()))
        # Compiler frame prologues and ENTER instructions provide conservative
        # extra seeds for functions not reached by the selected startup path.
        data = segment.data
        for offset in range(max(0, len(data) - 3)):
            if data[offset:offset + 3] in (b"\x55\x8b\xec", b"\x55\x89\xe5") or data[offset] == 0xC8:
                starts.add(offset)
        pending = deque(sorted(starts))
        indexed: set[int] = set()
        while pending:
            start = pending.popleft()
            if start in indexed or not (0 <= start < len(data)):
                continue
            indexed.add(start)
            instructions, calls = decode_function(md, segment, start, starts | indexed)
            if not instructions:
                continue
            for target in sorted(calls):
                if target not in starts:
                    starts.add(target)
                    pending.append(target)
            end = max(item["offset"] + len(bytes.fromhex(item["bytes"])) for item in instructions)
            result.append({
                "segment": segment.number,
                "segmentLabel": segment.label,
                "offset": start,
                "address": f"{segment.number:04X}:{start:04X}",
                "endOffset": end,
                "instructionCount": len(instructions),
                "calls": [f"{segment.number:04X}:{target:04X}" for target in sorted(calls)],
                "instructions": instructions,
            })
    return sorted(result, key=lambda item: (item["segment"], item["offset"]))


def parse_mz(path: Path) -> dict:
    data = path.read_bytes()
    if data[:2] != b"MZ":
        raise ValueError(f"{path}: not MZ")
    header_bytes = u16(data, 0x08) * 16
    relocations = []
    relocation_offset = u16(data, 0x18)
    for index in range(u16(data, 0x06)):
        offset, segment = struct.unpack_from("<HH", data, relocation_offset + index * 4)
        relocations.append({"segment": segment, "offset": offset, "address": f"{segment:04X}:{offset:04X}"})
    image = data[header_bytes:]
    cs, ip = u16(data, 0x16), u16(data, 0x14)
    # A DOS EXE's CS is paragraph-relative to the load module. Keep a single
    # normalized code segment so near targets remain directly comparable.
    entry_flat = cs * 16 + ip
    segment = Segment(0, image, header_bytes, True, "DOS load module")
    functions = function_index([segment], {0: {entry_flat}})
    return {
        "format": "DOS MZ",
        "path": str(path),
        "bytes": len(data),
        "sha256": sha256(data),
        "headerBytes": header_bytes,
        "entry": {"cs": cs, "ip": ip, "flatOffset": entry_flat},
        "stack": {"ss": u16(data, 0x0E), "sp": u16(data, 0x10)},
        "relocationCount": len(relocations),
        "relocations": relocations,
        "segments": [{"number": 0, "fileOffset": header_bytes, "bytes": len(image), "executable": True}],
        "functions": functions,
        "strings": strings(image),
    }


def parse_ne_entries(data: bytes, ne: int, length: int, offset: int) -> list[dict]:
    cursor = ne + offset
    end = cursor + length
    ordinal = 1
    entries: list[dict] = []
    while cursor < end:
        count = data[cursor]
        cursor += 1
        if count == 0:
            break
        bundle = data[cursor]
        cursor += 1
        if bundle == 0:
            ordinal += count
            continue
        for _ in range(count):
            if bundle == 0xFF:
                flags = data[cursor]
                int3f = u16(data, cursor + 1)
                segment = data[cursor + 3]
                entry_offset = u16(data, cursor + 4)
                cursor += 6
                entries.append({"ordinal": ordinal, "flags": flags, "int3f": int3f,
                                "segment": segment, "offset": entry_offset, "moveable": True})
            else:
                flags = data[cursor]
                entry_offset = u16(data, cursor + 1)
                cursor += 3
                entries.append({"ordinal": ordinal, "flags": flags, "segment": bundle,
                                "offset": entry_offset, "moveable": False})
            ordinal += 1
    return entries


def parse_ne(path: Path) -> dict:
    data = path.read_bytes()
    if data[:2] != b"MZ":
        raise ValueError(f"{path}: not MZ")
    ne = u32(data, 0x3C)
    if data[ne:ne + 2] != b"NE":
        raise ValueError(f"{path}: not NE")
    align_shift = u16(data, ne + 0x32)
    segment_count = u16(data, ne + 0x1C)
    segment_table = ne + u16(data, ne + 0x22)
    segments: list[Segment] = []
    segment_meta: list[dict] = []
    for index in range(segment_count):
        sector, length, flags, minimum = struct.unpack_from("<HHHH", data, segment_table + index * 8)
        file_offset = sector << align_shift
        actual_length = length or 0x10000
        payload = data[file_offset:min(len(data), file_offset + actual_length)]
        executable = not bool(flags & 1)
        segments.append(Segment(index + 1, payload, file_offset, executable,
                                "code" if executable else "data"))
        segment_meta.append({"number": index + 1, "fileOffset": file_offset, "bytes": len(payload),
                             "flags": flags, "minimumAllocation": minimum, "executable": executable})
    entry_offset = u16(data, ne + 0x04)
    entry_length = u16(data, ne + 0x06)
    entries = parse_ne_entries(data, ne, entry_length, entry_offset)
    ip = u16(data, ne + 0x14)
    cs = u16(data, ne + 0x16)
    seeds: dict[int, set[int]] = {cs: {ip}}
    for entry in entries:
        seeds.setdefault(entry["segment"], set()).add(entry["offset"])
    functions = function_index(segments, seeds)
    return {
        "format": "Windows NE",
        "path": str(path),
        "bytes": len(data),
        "sha256": sha256(data),
        "neHeaderOffset": ne,
        "alignmentShift": align_shift,
        "entry": {"segment": cs, "offset": ip, "address": f"{cs:04X}:{ip:04X}"},
        "stack": {"segment": u16(data, ne + 0x1A), "offset": u16(data, ne + 0x18)},
        "segments": segment_meta,
        "entries": entries,
        "functions": functions,
        "strings": strings(data),
    }


def write_report(audit: dict, output: Path) -> None:
    output.mkdir(parents=True, exist_ok=True)
    (output / "audit.json").write_text(json.dumps(audit, indent=2), encoding="utf-8")
    functions = audit["functions"]
    lines = [
        f"# Function index — {Path(audit['path']).name}", "",
        f"- Format: `{audit['format']}`", f"- SHA-256: `{audit['sha256']}`",
        f"- File bytes: {audit['bytes']:,}", f"- Recovered function entries: {len(functions):,}", "",
        "Function boundaries are seeded from the executable entry table/startup address, direct call targets, "
        "and conservative 16-bit compiler prologue scans. Every listing is bounded and carries its original "
        "segment:offset address; ambiguous data/code regions remain explicitly conservative.", "",
        "| Address | Instructions | End | Direct near calls |", "|---|---:|---:|---|",
    ]
    for function in functions:
        calls = ", ".join(f"`{item}`" for item in function["calls"][:8])
        if len(function["calls"]) > 8:
            calls += ", …"
        lines.append(f"| `{function['address']}` | {function['instructionCount']} | "
                     f"`{function['endOffset']:04X}` | {calls} |")
    (output / "FUNCTION_INDEX.md").write_text("\n".join(lines) + "\n", encoding="utf-8")

    listing = []
    for function in functions:
        listing.append(f"\n; FUNCTION {function['address']} ({function['instructionCount']} instructions)")
        for instruction in function["instructions"]:
            operands = f" {instruction['operands']}" if instruction["operands"] else ""
            listing.append(f"{function['segment']:04X}:{instruction['offset']:04X}  "
                           f"{instruction['bytes']:<28} {instruction['mnemonic']}{operands}")
    (output / "LISTING.asm").write_text("\n".join(listing).lstrip() + "\n", encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--pk1", type=Path, required=True)
    parser.add_argument("--pk2-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    pk1 = parse_mz(args.pk1)
    write_report(pk1, args.output / "pk1")
    summary = {"pk1": {"path": str(args.pk1), "sha256": pk1["sha256"],
                       "functions": len(pk1["functions"])}, "pk2": {}}
    for name in ("pongkom2.exe", "knpg.dll", "knps.dll", "dib.drv", "ibmjoy.drv"):
        path = args.pk2_root / name
        audit = parse_ne(path)
        write_report(audit, args.output / "pk2" / name)
        summary["pk2"][name] = {"sha256": audit["sha256"], "functions": len(audit["functions"]),
                                "entries": len(audit["entries"]), "segments": len(audit["segments"])}
    (args.output / "summary.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(json.dumps(summary))


if __name__ == "__main__":
    main()
