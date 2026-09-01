#!/usr/bin/env python3
"""Inventory and disassemble every function in the patched PK3 CODE resources."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from dataclasses import asdict, dataclass
from pathlib import Path

from capstone import CS_ARCH_M68K, CS_MODE_BIG_ENDIAN, CS_MODE_M68K_000, Cs


@dataclass(frozen=True)
class Function:
    segment: int
    module: str
    name: str
    start: int
    end: int
    size: int
    category: str
    summary: str
    calls: int
    traps: int
    sha256: str
    source_symbol: bool


RUNTIME_FUNCTIONS: dict[int, list[tuple[int, str, str]]] = {
    1: [
        (0x0000, "SegmentBootstrap", "Loads CODE/DATA resources and starts the application runtime."),
        (0x0118, "RunExitProcedures", "Runs and removes registered application-exit callbacks."),
        (0x0140, "LoadCodeSegment", "Loads and fixes up a movable classic-Mac code segment."),
        (0x01F6, "UnloadCodeSegment", "Releases a previously loaded classic-Mac code segment."),
        (0x0260, "DecodeXref", "Decodes the compact XREF relocation stream."),
        (0x0360, "ApplyXref", "Applies decoded relocation deltas to a segment image."),
        (0x03D4, "SegmentLoader", "Loads an XREF resource and performs segment relocation."),
        (0x0430, "UnsignedMultiply32", "Implements an unsigned 32-bit multiply helper."),
        (0x0450, "UnsignedDivide32", "Implements an unsigned 32-bit division helper."),
        (0x04BE, "UnsignedDivide32Remainder", "Computes a 32-bit division remainder."),
        (0x04E6, "UnsignedDivide16Step", "Performs the compiler runtime's 16-step division loop."),
        (0x0506, "NoopStub", "Returns immediately; used as an empty runtime hook."),
    ],
    8: [
        (0x0008, "MacOSTailDispatch", "Adapts a Macintosh toolbox call and tail-dispatches its result."),
        (0x001A, "MacOSHandleAdapter", "Adapts a handle-oriented Macintosh Memory Manager call."),
        (0x002A, "GetIndexedString", "Loads one Pascal string from a STR# resource."),
        (0x0070, "MacOSHandleSizeAdapter", "Wraps a classic Macintosh handle-size operation."),
        (0x0086, "MacOSStackBlockAdapter", "Builds a stack parameter block for a toolbox operation."),
        (0x00A8, "MacOSPointerTailDispatch", "Wraps a pointer operation and tail-dispatches to its caller."),
    ],
    9: [
        (0x0008, "strcpy", "Copies a NUL-terminated byte string and returns the destination."),
        (0x0024, "strlen", "Counts bytes in a NUL-terminated byte string."),
    ],
}


FIRST_NAMED_START = {1: 0x0508, 2: 0x0008, 3: 0x0008, 4: 0x0008, 5: 0x0008, 6: 0x0008}


def split_words(name: str) -> str:
    text = re.sub(r"([a-z0-9])([A-Z])", r"\1 \2", name)
    text = re.sub(r"([A-Z]+)([A-Z][a-z])", r"\1 \2", text)
    return text.replace("CPU", "CPU").strip()


def category_for(segment: int, name: str) -> str:
    lowered = name.lower()
    if segment == 4 or any(word in lowered for word in ("fatal", "babality", "finish")):
        return "Finishers"
    if "cpu" in lowered:
        return "AI"
    if segment == 3:
        return "Special moves"
    if any(word in lowered for word in ("sound", "audio")):
        return "Audio"
    if any(word in lowered for word in ("registration", "kode", "key")):
        return "Input / kodes"
    if any(word in lowered for word in ("intro", "menu", "selection", "vsscreen", "kredit", "congrat")):
        return "UI / flow"
    if any(word in lowered for word in ("toolbox", "environment", "depth", "graphic", "offscreen", "macos")):
        return "Platform"
    if segment in (8, 9) or name.startswith(("Segment", "Unsigned", "RunExit", "LoadCode", "UnloadCode", "DecodeXref", "ApplyXref")):
        return "Runtime"
    return "Core gameplay"


def summary_for(name: str) -> str:
    spaced = split_words(name)
    rules = [
        ("Handle", "Updates {} state and interactions."),
        ("Setup", "Initializes the {} sequence and its state."),
        ("Move", "Advances the {} position or animation."),
        ("Load", "Loads resources needed for {}."),
        ("Play", "Starts playback for {}."),
        ("Check", "Evaluates {} conditions."),
        ("Initialize", "Initializes {}."),
        ("Init", "Initializes {}."),
        ("Reset", "Resets {} state."),
        ("Set", "Sets {} state or configuration."),
        ("Draw", "Draws {} to the game surface."),
        ("Show", "Renders or reveals {}."),
        ("Print", "Renders the {} message or overlay."),
        ("Copy", "Copies {} graphics to the active surface."),
        ("Do", "Runs the {} sequence."),
        ("Close", "Closes or releases {}."),
        ("Flush", "Flushes pending {} state."),
    ]
    for prefix, template in rules:
        if name.startswith(prefix) and len(name) > len(prefix):
            subject = split_words(name[len(prefix) :]).lower()
            return template.format(subject)
    return f"Implements {spaced.lower()}."


def macsbug_symbols(data: bytes) -> list[tuple[int, str, int]]:
    result: list[tuple[int, str, int]] = []
    for offset, marker in enumerate(data):
        length = marker & 0x7F
        if not marker & 0x80 or not 2 <= length <= 80:
            continue
        end = offset + 1 + length
        if end > len(data) or offset < 2 or data[offset - 2 : offset] != b"\x4e\x75":
            continue
        raw_name = data[offset + 1 : end]
        if not all(32 <= byte < 127 for byte in raw_name):
            continue
        result.append((offset, raw_name.decode("ascii"), end))
    return result


def decoder() -> Cs:
    engine = Cs(CS_ARCH_M68K, CS_MODE_BIG_ENDIAN | CS_MODE_M68K_000)
    engine.skipdata = True
    return engine


def instruction_stats(data: bytes, start: int, end: int) -> tuple[int, int]:
    calls = 0
    traps = 0
    for instruction in decoder().disasm(data[start:end], start):
        if instruction.mnemonic in ("jsr", "bsr", "bsr.b", "bsr.w", "bsr.l"):
            calls += 1
        if (
            instruction.mnemonic == ".byte"
            and len(instruction.bytes) == 2
            and instruction.bytes[0] & 0xF0 == 0xA0
        ):
            traps += 1
    return calls, traps


def make_function(
    segment: int,
    module: str,
    name: str,
    start: int,
    end: int,
    data: bytes,
    source_symbol: bool,
    explicit_summary: str | None = None,
) -> Function:
    calls, traps = instruction_stats(data, start, end)
    body = data[start:end]
    return Function(
        segment=segment,
        module=module,
        name=name,
        start=start,
        end=end,
        size=end - start,
        category=category_for(segment, name),
        summary=explicit_summary or summary_for(name),
        calls=calls,
        traps=traps,
        sha256=hashlib.sha256(body).hexdigest(),
        source_symbol=source_symbol,
    )


def disassembly_lines(data: bytes, start: int, end: int) -> list[str]:
    result: list[str] = []
    for instruction in decoder().disasm(data[start:end], start):
        encoded = instruction.bytes.hex(" ").upper()
        result.append(
            f"{instruction.address:08X}  {encoded:<26} "
            f"{instruction.mnemonic:<10} {instruction.op_str}".rstrip()
        )
    return result


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("resources", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    if args.output.exists():
        parser.error(f"output already exists: {args.output}")

    manifest = json.loads(
        (args.resources / "manifest.json").read_text(encoding="utf-8")
    )
    code_items = sorted(
        (item for item in manifest if item["type"] == "CODE"),
        key=lambda item: int(item["id"]),
    )
    args.output.mkdir(parents=True)
    segments_dir = args.output / "segments"
    segments_dir.mkdir()
    functions: list[Function] = []
    coverage: list[dict[str, int]] = []

    for item in code_items:
        segment = int(item["id"])
        module = str(item.get("name") or f"CODE {segment}")
        data = (args.resources / str(item["path"])).read_bytes()
        symbols = macsbug_symbols(data)
        segment_functions: list[Function] = []

        runtime = RUNTIME_FUNCTIONS.get(segment, [])
        for index, (start, name, summary) in enumerate(runtime):
            if index + 1 < len(runtime):
                end = runtime[index + 1][0]
            elif segment in FIRST_NAMED_START:
                end = FIRST_NAMED_START[segment]
            else:
                end = len(data)
            segment_functions.append(
                make_function(segment, module, name, start, end, data, False, summary)
            )

        if symbols:
            start = FIRST_NAMED_START[segment]
            for symbol_offset, name, trailer_end in symbols:
                segment_functions.append(
                    make_function(segment, module, name, start, symbol_offset, data, True)
                )
                start = trailer_end + (trailer_end & 1)
                while start < len(data) and data[start] == 0:
                    start += 1
                if start & 1:
                    start += 1

        segment_functions.sort(key=lambda function: function.start)
        functions.extend(segment_functions)
        covered = sum(function.size for function in segment_functions)
        coverage.append(
            {
                "segment": segment,
                "resource_bytes": len(data),
                "function_bytes": covered,
                "metadata_bytes": len(data) - covered,
            }
        )

        lines = [
            f"; CODE {segment} — {module}",
            f"; resource size: {len(data)} bytes",
            "; Motorola 68000, big-endian",
            "",
        ]
        cursor = 0
        symbol_by_end = {offset: (name, trailer_end) for offset, name, trailer_end in symbols}
        for function in segment_functions:
            if cursor < function.start:
                gap = data[cursor : function.start]
                lines.append(f"; metadata/gap {cursor:08X}..{function.start:08X}: {gap.hex(' ').upper()}")
                lines.append("")
            lines.append(f"{function.name}: ; {function.start:08X}..{function.end:08X}")
            lines.extend(disassembly_lines(data, function.start, function.end))
            lines.append("")
            cursor = function.end
            if function.end in symbol_by_end:
                symbol_name, trailer_end = symbol_by_end[function.end]
                trailer = data[function.end:trailer_end]
                lines.append(
                    f"; MacsBug symbol trailer for {symbol_name}: {trailer.hex(' ').upper()}"
                )
                lines.append("")
                cursor = trailer_end + (trailer_end & 1)
                while cursor < len(data) and data[cursor] == 0:
                    cursor += 1
                if cursor & 1:
                    cursor += 1
        if cursor < len(data):
            lines.append(f"; trailing bytes {cursor:08X}..{len(data):08X}: {data[cursor:].hex(' ').upper()}")
        (segments_dir / f"CODE_{segment}.asm").write_text(
            "\n".join(lines) + "\n", encoding="utf-8"
        )

    (args.output / "functions.json").write_text(
        json.dumps([asdict(function) for function in functions], indent=2) + "\n",
        encoding="utf-8",
    )
    (args.output / "coverage.json").write_text(
        json.dumps(coverage, indent=2) + "\n", encoding="utf-8"
    )

    markdown = [
        "# Pong Kombat 3 v2.1 function audit index",
        "",
        f"This index covers {len(functions)} bounded 68000 functions across the patched CODE resources. "
        "Each body is disassembled in `segments/`, hashed independently, and classified by subsystem. "
        "MacsBug source symbols are preserved where present; runtime helpers without source symbols are "
        "named from their observed behavior.",
        "",
        "| CODE | Offset | Bytes | Function | Subsystem | Calls | Traps | Audit summary |",
        "|---:|---:|---:|---|---|---:|---:|---|",
    ]
    for function in functions:
        markdown.append(
            f"| {function.segment} | `0x{function.start:04X}` | {function.size} | "
            f"`{function.name}` | {function.category} | {function.calls} | "
            f"{function.traps} | {function.summary} |"
        )
    (args.output / "FUNCTION_INDEX.md").write_text(
        "\n".join(markdown) + "\n", encoding="utf-8"
    )
    print(f"audited {len(functions)} functions across {len(code_items)} CODE resources")
    for entry in coverage:
        print(
            f"CODE {entry['segment']}: functions={entry['function_bytes']} "
            f"metadata={entry['metadata_bytes']} total={entry['resource_bytes']}"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
