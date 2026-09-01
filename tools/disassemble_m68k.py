#!/usr/bin/env python3
"""Small Motorola 68000 disassembly helper for classic Macintosh CODE resources."""

from __future__ import annotations

import argparse
from pathlib import Path

from capstone import CS_ARCH_M68K, CS_MODE_BIG_ENDIAN, CS_MODE_M68K_000, Cs


def number(value: str) -> int:
    return int(value, 0)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("--start", type=number, default=0)
    parser.add_argument("--end", type=number)
    parser.add_argument("--base", type=number, default=0)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()

    data = args.input.read_bytes()
    end = len(data) if args.end is None else min(args.end, len(data))
    if args.start < 0 or args.start > end:
        parser.error("invalid start/end range")

    decoder = Cs(CS_ARCH_M68K, CS_MODE_BIG_ENDIAN | CS_MODE_M68K_000)
    decoder.skipdata = True
    lines: list[str] = []
    for instruction in decoder.disasm(
        data[args.start:end], args.base + args.start
    ):
        encoded = instruction.bytes.hex(" ").upper()
        lines.append(
            f"{instruction.address:08X}  {encoded:<26} "
            f"{instruction.mnemonic:<10} {instruction.op_str}".rstrip()
        )

    output = "\n".join(lines) + ("\n" if lines else "")
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(output, encoding="utf-8")
    else:
        print(output, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
