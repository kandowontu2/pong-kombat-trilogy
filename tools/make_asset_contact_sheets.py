#!/usr/bin/env python3
"""Build labeled contact sheets for visual asset-bank auditing."""

from __future__ import annotations

import argparse
import math
from pathlib import Path

from PIL import Image, ImageDraw, ImageFont


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("input", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--columns", type=int, default=8)
    parser.add_argument("--rows", type=int, default=8)
    parser.add_argument("--cell-width", type=int, default=128)
    parser.add_argument("--cell-height", type=int, default=104)
    args = parser.parse_args()

    files = sorted(args.input.glob("*.png"))
    if not files:
        raise SystemExit(f"no PNG files under {args.input}")
    args.output.mkdir(parents=True, exist_ok=True)
    font = ImageFont.load_default()
    page_size = args.columns * args.rows
    for page_index in range(math.ceil(len(files) / page_size)):
        page_files = files[page_index * page_size:(page_index + 1) * page_size]
        page = Image.new("RGB", (args.columns * args.cell_width,
                                 args.rows * args.cell_height), (28, 28, 32))
        draw = ImageDraw.Draw(page)
        for item_index, path in enumerate(page_files):
            column = item_index % args.columns
            row = item_index // args.columns
            cell_x = column * args.cell_width
            cell_y = row * args.cell_height
            with Image.open(path) as source:
                source = source.convert("RGB")
                source.thumbnail((args.cell_width - 8, args.cell_height - 24),
                                 Image.Resampling.NEAREST)
                x = cell_x + (args.cell_width - source.width) // 2
                y = cell_y + 2 + (args.cell_height - 22 - source.height) // 2
                page.paste(source, (x, y))
            label = path.stem
            draw.rectangle((cell_x, cell_y + args.cell_height - 20,
                            cell_x + args.cell_width - 1, cell_y + args.cell_height - 1),
                           fill=(8, 8, 10))
            draw.text((cell_x + 4, cell_y + args.cell_height - 17), label,
                      fill=(235, 235, 235), font=font)
            draw.rectangle((cell_x, cell_y, cell_x + args.cell_width - 1,
                            cell_y + args.cell_height - 1), outline=(70, 70, 78))
        first = page_index * page_size
        last = first + len(page_files) - 1
        page.save(args.output / f"sheet_{page_index:03d}_{first:04d}-{last:04d}.png",
                  format="PNG", optimize=True)
    print(f"wrote {math.ceil(len(files) / page_size)} sheets for {len(files)} images")


if __name__ == "__main__":
    main()
