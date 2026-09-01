#!/usr/bin/env python3
"""Generate the native port's resource script from the recovered asset manifest."""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from PIL import Image


PICT_BASE = 10_000
SOUND_BASE = 20_000
PK1_PICTURE_BASE = 31_000
PK1_SOUND_BASE = 32_000
PK2_PICTURE_BASE = 33_000
PK2_SOUND_BASE = 36_000
PK2_MUSIC_BASE = 36_100


def rc_path(path: Path) -> str:
    return str(path.resolve()).replace("\\", "/").replace('"', '\\"')


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--asset-root", type=Path, required=True)
    parser.add_argument("--pk1-root", type=Path, required=True)
    parser.add_argument("--pk2-root", type=Path, required=True)
    parser.add_argument("--icon-source", type=Path, required=True)
    parser.add_argument("--output-rc", type=Path, required=True)
    parser.add_argument("--output-icon", type=Path, required=True)
    parser.add_argument("--output-header", type=Path, required=True)
    args = parser.parse_args()

    failures = json.loads((args.asset_root / "failures.json").read_text(encoding="utf-8"))
    if failures:
        raise SystemExit(f"refusing to embed an incomplete asset set: {len(failures)} failures")

    manifest = json.loads((args.asset_root / "manifest.json").read_text(encoding="utf-8"))
    pictures = sorted((x for x in manifest if x["type"] == "PICT"), key=lambda x: x["id"])
    sounds = sorted((x for x in manifest if x["type"] == "snd "), key=lambda x: x["id"])
    if len(pictures) != 140 or len(sounds) != 103:
        raise SystemExit(f"unexpected recovered asset count: {len(pictures)} PICT, {len(sounds)} snd")

    pk1_failures = json.loads((args.pk1_root / "failures.json").read_text(encoding="utf-8"))
    if pk1_failures:
        raise SystemExit(f"refusing to embed incomplete PK1 assets: {len(pk1_failures)} failures")
    pk1_picture_files = sorted(args.pk1_root.rglob("*.png"),
                               key=lambda path: path.relative_to(args.pk1_root).as_posix().lower())
    pk1_sound_files = sorted((args.pk1_root / "audio").glob("*.wav"),
                             key=lambda path: path.name.lower())
    if len(pk1_picture_files) != 608 or len(pk1_sound_files) != 31:
        raise SystemExit(
            f"unexpected PK1 asset count: {len(pk1_picture_files)} images, "
            f"{len(pk1_sound_files)} sounds")
    pk1_pictures = []
    for sequence, source in enumerate(pk1_picture_files):
        with Image.open(source) as recovered:
            width, height = recovered.size
        pk1_pictures.append({
            "resource": PK1_PICTURE_BASE + sequence,
            "path": source,
            "name": source.relative_to(args.pk1_root).as_posix(),
            "width": width,
            "height": height,
        })
    pk1_sounds = [{
        "resource": PK1_SOUND_BASE + sequence,
        "path": source,
        "name": source.relative_to(args.pk1_root).as_posix(),
    } for sequence, source in enumerate(pk1_sound_files)]

    pk2_manifest = json.loads((args.pk2_root / "asset-manifest.json").read_text(encoding="utf-8"))
    pk2_images = [item for item in pk2_manifest["images"] if item["present"]]
    pk2_sounds = [item for item in pk2_manifest["sounds"] if item["present"]]
    pk2_music = [item for item in pk2_manifest["music"] if item["present"]]
    if len(pk2_images) != 2036 or len(pk2_sounds) != 18 or len(pk2_music) != 16:
        raise SystemExit(
            f"unexpected PK2 asset count: {len(pk2_images)} images, "
            f"{len(pk2_sounds)} sounds, {len(pk2_music)} music")

    args.output_rc.parent.mkdir(parents=True, exist_ok=True)
    args.output_icon.parent.mkdir(parents=True, exist_ok=True)
    args.output_header.parent.mkdir(parents=True, exist_ok=True)

    image = Image.open(args.icon_source).convert("RGBA")
    image.save(args.output_icon, format="ICO", sizes=[(16, 16), (32, 32), (48, 48), (64, 64), (128, 128), (256, 256)])

    lines = [
        '#include <windows.h>',
        '',
        f'1 ICON "{rc_path(args.output_icon)}"',
        '',
        '1 VERSIONINFO',
        'FILEVERSION 1,0,1,0',
        'PRODUCTVERSION 1,0,1,0',
        'FILEFLAGSMASK 0x3fL',
        '#ifdef _DEBUG',
        'FILEFLAGS 0x1L',
        '#else',
        'FILEFLAGS 0x0L',
        '#endif',
        'FILEOS 0x40004L',
        'FILETYPE 0x1L',
        'FILESUBTYPE 0x0L',
        'BEGIN',
        '    BLOCK "StringFileInfo"',
        '    BEGIN',
        '        BLOCK "040904b0"',
        '        BEGIN',
        '            VALUE "CompanyName", "Gagne Software / native preservation port\\0"',
        '            VALUE "FileDescription", "Pong Kombat Trilogy native Windows port\\0"',
        '            VALUE "FileVersion", "1.0.1\\0"',
        '            VALUE "InternalName", "PongKombatTrilogy\\0"',
        '            VALUE "OriginalFilename", "Pong Kombat Trilogy.exe\\0"',
        '            VALUE "ProductName", "Pong Kombat Trilogy\\0"',
        '            VALUE "ProductVersion", "1.0.1\\0"',
        '        END',
        '    END',
        '    BLOCK "VarFileInfo"',
        '    BEGIN',
        '        VALUE "Translation", 0x0409, 1200',
        '    END',
        'END',
        '',
    ]

    for item in pictures:
        source = args.asset_root / item["path"]
        lines.append(f'{PICT_BASE + int(item["id"])} RCDATA "{rc_path(source)}"')
    lines.append("")
    for item in sounds:
        source = args.asset_root / item["path"]
        lines.append(f'{SOUND_BASE + int(item["id"])} RCDATA "{rc_path(source)}"')
    lines.append("")
    for item in pk1_pictures:
        lines.append(f'{item["resource"]} RCDATA "{rc_path(item["path"])}"')
    lines.append("")
    for item in pk1_sounds:
        lines.append(f'{item["resource"]} RCDATA "{rc_path(item["path"])}"')
    lines.append("")
    for item in pk2_images:
        source = args.pk2_root / "images" / item["filename"]
        lines.append(f'{PK2_PICTURE_BASE + int(item["index"])} RCDATA "{rc_path(source)}"')
    lines.append("")
    for item in pk2_sounds:
        source = args.pk2_root / "sounds" / item["filename"]
        lines.append(f'{PK2_SOUND_BASE + int(item["index"])} RCDATA "{rc_path(source)}"')
    lines.append("")
    for item in pk2_music:
        source = args.pk2_root / "music" / item["filename"]
        lines.append(f'{PK2_MUSIC_BASE + int(item["index"])} RCDATA "{rc_path(source)}"')
    lines.append("")

    args.output_rc.write_text("\n".join(lines), encoding="utf-8", newline="\n")
    header = [
        "#pragma once",
        "#include <array>",
        "namespace pk3::generated {",
        "struct PictureMeta { int id; int width; int height; };",
        f"inline constexpr std::array<PictureMeta, {len(pictures)}> kPictures = {{{{",
    ]
    for item in pictures:
        header.append(f'    {{{int(item["id"])}, {int(item["width"])}, {int(item["height"])} }},')
    header.extend([
        "}};",
        f"inline constexpr std::array<int, {len(sounds)}> kSounds = {{{{",
    ])
    for item in sounds:
        header.append(f'    {int(item["id"])},')
    header.extend([
        "}};",
        "struct NamedPictureMeta { int resource; const char* name; int width; int height; };",
        f"inline constexpr std::array<NamedPictureMeta, {len(pk1_pictures)}> kPk1Pictures = {{{{",
    ])
    for item in pk1_pictures:
        header.append(
            f'    {{{item["resource"]}, "{item["name"]}", {item["width"]}, {item["height"]} }},')
    header.extend([
        "}};",
        "struct NamedSoundMeta { int resource; const char* name; };",
        f"inline constexpr std::array<NamedSoundMeta, {len(pk1_sounds)}> kPk1Sounds = {{{{",
    ])
    for item in pk1_sounds:
        header.append(f'    {{{item["resource"]}, "{item["name"]}"}},')
    header.extend([
        "}};",
        "struct BankPictureMeta { int index; int resource; int width; int height; int hotspotX; int hotspotY; };",
        f"inline constexpr std::array<BankPictureMeta, {len(pk2_images)}> kPk2Pictures = {{{{",
    ])
    for item in pk2_images:
        header.append(
            f'    {{{item["index"]}, {PK2_PICTURE_BASE + int(item["index"])}, '
            f'{item["width"]}, {item["height"]}, {item["hotspot"][0]}, {item["hotspot"][1]} }},')
    header.extend([
        "}};",
        "struct BankSoundMeta { int index; int resource; const char* name; };",
        f"inline constexpr std::array<BankSoundMeta, {len(pk2_sounds)}> kPk2Sounds = {{{{",
    ])
    for item in pk2_sounds:
        header.append(
            f'    {{{item["index"]}, {PK2_SOUND_BASE + int(item["index"])}, '
            f'"{item["originalName"]}"}},')
    header.extend([
        "}};",
        f"inline constexpr std::array<BankSoundMeta, {len(pk2_music)}> kPk2Music = {{{{",
    ])
    for item in pk2_music:
        header.append(
            f'    {{{item["index"]}, {PK2_MUSIC_BASE + int(item["index"])}, '
            f'"{item["originalName"]}"}},')
    header.extend(["}};", "} // namespace pk3::generated", ""])
    args.output_header.write_text("\n".join(header), encoding="utf-8", newline="\n")
    print(
        f"embedded PK3 {len(pictures)} pictures/{len(sounds)} sounds; "
        f"PK1 {len(pk1_pictures)} pictures/{len(pk1_sounds)} sounds; "
        f"PK2 {len(pk2_images)} pictures/{len(pk2_sounds)} sounds/{len(pk2_music)} music")


if __name__ == "__main__":
    main()
