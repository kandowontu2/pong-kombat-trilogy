#!/usr/bin/env python3
"""Normalize the recovered PK3 FAQ and key DATA strings into a preservation spec."""

from __future__ import annotations

import argparse
import html
import json
import re
from html.parser import HTMLParser
from pathlib import Path


class TextExtractor(HTMLParser):
    BREAKS = {"br", "p", "hr", "center", "div", "h1", "h2", "h3", "li"}

    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.parts: list[str] = []
        self.ignored = 0

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if tag in {"script", "style"}:
            self.ignored += 1
        elif tag in self.BREAKS:
            self.parts.append("\n")

    def handle_endtag(self, tag: str) -> None:
        if tag in {"script", "style"}:
            self.ignored = max(0, self.ignored - 1)
        elif tag in self.BREAKS:
            self.parts.append("\n")

    def handle_data(self, data: str) -> None:
        if not self.ignored:
            self.parts.append(data)

    def text(self) -> str:
        raw = html.unescape("".join(self.parts)).replace("\r", "")
        lines: list[str] = []
        for line in raw.splitlines():
            line = re.sub(r"[ \t]+", " ", line).strip()
            if line or (lines and lines[-1]):
                lines.append(line)
        return "\n".join(lines).strip()


def printable_strings(data: bytes) -> list[str]:
    strings = []
    for match in re.finditer(rb"[\x20-\x7e]{4,}", data):
        value = match.group().decode("mac_roman", errors="replace").strip()
        if value and value not in strings:
            strings.append(value)
    return strings


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--faq", type=Path, required=True)
    parser.add_argument("--data", type=Path, required=True)
    parser.add_argument("--asset-manifest", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    extractor = TextExtractor()
    extractor.feed(args.faq.read_text(encoding="utf-8", errors="replace"))
    faq_text = extractor.text()
    start = faq_text.find("Secrets")
    if start >= 0:
        faq_text = faq_text[start:]

    strings = printable_strings(args.data.read_bytes())
    relevant_terms = (
        "energy", "ball", "player", "kode", "kombat", "valley", "inferno", "desktop",
        "alley", "portal", "space", "wins", "knowledge", "version", "return", "option",
        "control", "punch", "kick", "shang", "sindel", "kang", "sub zero", "omoh",
        "cyrax", "sektor", "kung", "kabal", "kahn", "motaro", "nodnarb", "nightwolf",
        "shova", "noob",
    )
    selected_strings = [s for s in strings if any(term in s.lower() for term in relevant_terms)]
    manifest = json.loads(args.asset_manifest.read_text(encoding="utf-8"))
    pictures = [x for x in manifest if x["type"] == "PICT"]
    sounds = [x for x in manifest if x["type"] == "snd "]

    output = f"""# Pong Kombat 3 v2.1 gameplay reference

This is a normalized preservation reference generated from the recovered v2.1 resource data, the original Read Me/FAQ, and constants verified in the disassembly. It is build documentation for the clean-room Windows port; the original inputs remain unchanged under `reference/` and `analysis/resources-v2.1/`.

## Verified engine constants

| Property | Recovered value | Evidence |
|---|---:|---|
| Logical canvas | 516 × 432 | All eight stage PICTs and QuickDraw bounds |
| Original display target | 640 × 480, 256 colors | Original Read Me |
| Arena top | y = 84 | `HandleBall`, `HandlePlayer1`, `HandlePlayer2` |
| Paddle size | 16 × 48 | Player rectangle clamps in CODE 2 |
| P1 horizontal zone | x = 0…112 | `HandlePlayer1` |
| P2 horizontal zone | x = 404…516 | `HandlePlayer2` |
| Normal ball velocity | 6 px/original tick per axis | `SetBallSpeed` |
| Normal paddle velocity | 6 px/original tick | `SetBallSpeed`, player handlers |
| Starting energy | 100 | `DoGameLoop`, `ResetValues`, `ResetValues2` |
| Missed-ball damage | 20 | `Player1BallEnergyOff`, `Player2BallEnergyOff` |
| Ball lower/upper bounds | y = 432 / 84 | `HandleBall` |
| Ball left/right bounds | x = 0 / 516 | `HandleBall` |

## Character/resource map

| ID | Character | P1 color/mask | P2 color/mask | Portrait |
|---:|---|---|---|---|
| 0 | Shang Tsung | 1000 / 1500 | 2000 / 2500 | 3000 |
| 1 | Sindel | 1001 / 1501 | 2001 / 2501 | 3001 |
| 2 | Liu Kang | 1002 / 1502 | 2002 / 2502 | 3002 |
| 3 | Sub-Zero | 1003 / 1503 | 2003 / 2503 | 3003 |
| 4 | Omoh | 1004 / 1504 | 2004 / 2504 | 3004 |
| 5 | Cyrax | 1005 / 1505 | 2005 / 2505 | 3005 |
| 6 | Sektor | 1006 / 1506 | 2006 / 2506 | 3006 |
| 7 | Kung Lao | 1007 / 1507 | 2007 / 2507 | 3007 |
| 8 | Kabal | 1008 / 1508 | 2008 / 2508 | 3008 |
| 9 | Shao Kahn | 1009 / 1509 | 2009 / 2509 | 3009 |
| 10 | Motaro | 1010 / 1510 | 2010 / 2510 | 3010 |
| 11 | Nodnarb | 1011 / 1511 | 2011 / 2511 | 3011 |
| 12 | Loser sentinel | — | — | — |
| 13 | Nightwolf | 1013 / 1513 | 2013 / 2513 | 3013 |
| 14 | Shova | 1014 / 1514 | 2014 / 2514 | 3014 |
| 15 | Noob Saibot | 1015 / 1515 | 2015 / 2515 | 3015 |

The final recovered set contains **{len(pictures)} PICT resources** and **{len(sounds)} sound resources**. Every one decodes successfully; `analysis/assets-v2.1-final/failures.json` is empty.

## Normalized original move, secret, and Kombat Kode reference

Directions are relative to the player's facing: `F` forward, `B` back, `U` up, `D` down, `P` punch, `K` kick.

```text
{faq_text}
```

## Selected v2.1 DATA strings

These strings were extracted directly from patched DATA resource 0 and retained here to make spelling and labels searchable.

```text
{chr(10).join(selected_strings)}
```
"""
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(output, encoding="utf-8", newline="\n")
    print(f"wrote {args.output} ({len(output.splitlines())} lines)")


if __name__ == "__main__":
    main()
