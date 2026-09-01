#!/usr/bin/env python3
"""Decode the original Pong Kombat 1.5 asset container files.

The DOS release deliberately reuses the .GRA suffix for PCX stills, Autodesk
FLI animations, Creative Voice audio, and an uncompressed sprite-sheet format.
This tool identifies each payload by its file signature, preserves indexed
pixels, and emits a reproducible manifest for the native port.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
import subprocess
import tempfile
import wave
from pathlib import Path

from PIL import Image, ImageSequence


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def palette_bytes(path: Path) -> bytes:
    data = path.read_bytes()
    if len(data) != 768:
        raise ValueError(f"{path}: expected a 768-byte VGA palette")
    # The original palette is six bits per channel. Pillow wants 8-bit RGB.
    return bytes(min(255, (component << 2) | (component >> 4)) for component in data)


def save_indexed(pixels: bytes, width: int, height: int, palette: bytes,
                 output: Path, transparent_zero: bool = False) -> None:
    image = Image.frombytes("P", (width, height), pixels)
    image.putpalette(palette)
    options = {"optimize": False}
    if transparent_zero:
        options["transparency"] = 0
    image.save(output, format="PNG", **options)


def decode_pcx(source: Path, output: Path) -> dict:
    with Image.open(source) as image:
        converted = image.convert("RGB")
        converted.save(output, format="PNG", optimize=False)
        return {"width": converted.width, "height": converted.height, "frames": 1}


def decode_fli(source: Path, output_dir: Path) -> dict:
    output_dir.mkdir(parents=True, exist_ok=True)
    frames = []
    durations = []
    with Image.open(source) as animation:
        for index, frame in enumerate(ImageSequence.Iterator(animation)):
            converted = frame.convert("RGB")
            name = f"{index:04d}.png"
            converted.save(output_dir / name, format="PNG", optimize=False)
            frames.append(name)
            durations.append(int(frame.info.get("duration", animation.info.get("duration", 100))))
        width, height = animation.size
    return {"width": width, "height": height, "frames": len(frames),
            "frameFiles": frames, "durationsMs": durations}


def decode_raw_sheet(data: bytes, output_dir: Path, palette: bytes) -> dict:
    output_dir.mkdir(parents=True, exist_ok=True)
    offset = 0
    frames = []
    dimensions = []
    while offset < len(data):
        if len(data) - offset < 4:
            raise ValueError(f"trailing {len(data) - offset} bytes at {offset:#x}")
        width, height = struct.unpack_from("<HH", data, offset)
        offset += 4
        size = width * height
        if not width or not height or size > len(data) - offset:
            raise ValueError(f"invalid frame {len(frames)} ({width}x{height}) at {offset - 4:#x}")
        name = f"{len(frames):04d}.png"
        save_indexed(data[offset:offset + size], width, height, palette,
                     output_dir / name, transparent_zero=True)
        offset += size
        frames.append(name)
        dimensions.append([width, height])
    return {"frames": len(frames), "frameFiles": frames, "dimensions": dimensions}


def voc_codec_summary(data: bytes) -> dict:
    if not data.startswith(b"Creative Voice File\x1a") or len(data) < 26:
        raise ValueError("not a Creative Voice File")
    offset = struct.unpack_from("<H", data, 20)[0]
    block_types: list[int] = []
    while offset < len(data):
        block_type = data[offset]
        offset += 1
        if block_type == 0:
            break
        if offset + 3 > len(data):
            raise ValueError("truncated VOC block header")
        size = data[offset] | data[offset + 1] << 8 | data[offset + 2] << 16
        offset += 3
        if offset + size > len(data):
            raise ValueError("truncated VOC block")
        block_types.append(block_type)
        offset += size
    return {"blockTypes": block_types}


def decode_voc(source: Path, output: Path, ffmpeg: str) -> dict:
    # ffmpeg's VOC demuxer handles the old repeat/silence block variants found
    # in the game, and the PCM WAV is the exact format consumed by AudioEngine.
    command = [ffmpeg, "-hide_banner", "-loglevel", "error", "-y", "-i", str(source),
               "-map_metadata", "-1", "-fflags", "+bitexact", "-flags:a", "+bitexact",
               str(output)]
    subprocess.run(command, check=True)
    with wave.open(str(output), "rb") as decoded:
        return {
            "channels": decoded.getnchannels(),
            "sampleRate": decoded.getframerate(),
            "sampleWidth": decoded.getsampwidth(),
            "sampleFrames": decoded.getnframes(),
        }


def classify(data: bytes) -> str:
    if data.startswith(b"Creative Voice File\x1a"):
        return "voc"
    # A raw sheet may coincidentally begin with width 10. Validate the rest of
    # the 128-byte PCX header instead of relying on the manufacturer byte.
    if (len(data) >= 128 and data[0] == 0x0A and data[1] in range(0, 6) and
            data[2] == 1 and data[3] in (1, 2, 4, 8)):
        return "pcx"
    if len(data) >= 6 and struct.unpack_from("<H", data, 4)[0] in (0xAF11, 0xAF12):
        return "fli"
    return "raw-sheet"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--ffmpeg", default="ffmpeg")
    args = parser.parse_args()

    args.output.mkdir(parents=True, exist_ok=True)
    palette = palette_bytes(args.source / "PONGKOMB.PAL")
    manifest = []
    failures = []
    for source in sorted(args.source.glob("*.GRA")):
        data = source.read_bytes()
        kind = classify(data)
        item = {"source": source.name, "sourceBytes": len(data), "sourceSha256": sha256(data),
                "type": kind}
        try:
            stem = source.stem.lower()
            if kind == "pcx":
                relative = Path("stills") / f"{stem}.png"
                (args.output / relative).parent.mkdir(parents=True, exist_ok=True)
                item.update(decode_pcx(source, args.output / relative))
                item["path"] = relative.as_posix()
            elif kind == "fli":
                relative = Path("animations") / stem
                item.update(decode_fli(source, args.output / relative))
                item["path"] = relative.as_posix()
            elif kind == "raw-sheet":
                relative = Path("sprites") / stem
                item.update(decode_raw_sheet(data, args.output / relative, palette))
                item["path"] = relative.as_posix()
            else:
                relative = Path("audio") / f"{stem}.wav"
                (args.output / relative).parent.mkdir(parents=True, exist_ok=True)
                item.update(voc_codec_summary(data))
                item.update(decode_voc(source, args.output / relative, args.ffmpeg))
                item["path"] = relative.as_posix()
            manifest.append(item)
        except Exception as exc:  # preserve a complete audit trail
            failures.append({**item, "error": str(exc)})

    (args.output / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    (args.output / "failures.json").write_text(json.dumps(failures, indent=2) + "\n", encoding="utf-8")
    print(f"decoded {len(manifest)} assets; {len(failures)} failures")
    if failures:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
