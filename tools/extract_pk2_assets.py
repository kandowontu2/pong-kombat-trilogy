#!/usr/bin/env python3
"""Extract lossless assets from a Klik & Play 1.x resource set.

Pong Kombat 2 stores high-colour Windows DIB pixels in ``.IMG`` and
standard MIDI/PCM payloads in ``.MUS``/``.SND``.  This extractor keeps the
original bank index in every filename so later GAM/event analysis can map
objects back to their exact images and sounds.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import struct
import wave
from pathlib import Path

from PIL import Image


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def clean_name(value: str, fallback: str) -> str:
    value = re.sub(r"[^A-Za-z0-9._ -]+", "_", value).strip(" .")
    return value or fallback


def read_image_bank(path: Path, output: Path) -> list[dict[str, object]]:
    source = path.read_bytes()
    if len(source) < 4:
        raise ValueError(f"{path}: truncated image bank")
    count = struct.unpack_from("<I", source, 0)[0]
    if 4 + count * 8 > len(source):
        raise ValueError(f"{path}: truncated image directory")

    image_dir = output / "images"
    image_dir.mkdir(parents=True, exist_ok=True)
    manifest: list[dict[str, object]] = []
    for index in range(count):
        offset, record_size = struct.unpack_from("<II", source, 4 + index * 8)
        if record_size == 0:
            manifest.append({"index": index, "present": False})
            continue
        if record_size < 24 or offset + record_size > len(source):
            raise ValueError(f"image {index}: invalid record bounds")

        (checksum, references, data_size, width, height, mode, flags,
         hotspot_x, hotspot_y, action_x, action_y) = struct.unpack_from(
             "<HIIHHBBhhhh", source, offset)
        if data_size != record_size - 24:
            raise ValueError(f"image {index}: data-size mismatch")
        if width == 0 or height == 0:
            raise ValueError(f"image {index}: invalid dimensions")
        bytes_per_pixel = {3: 1, 6: 2}.get(mode)
        if bytes_per_pixel is None:
            raise ValueError(f"image {index}: unsupported graphics mode {mode}")

        packed = source[offset + 24:offset + record_size]
        expected = width * height * bytes_per_pixel
        if flags & 2:
            decoded = decode_rle(packed, bytes_per_pixel, expected, index)
        else:
            if len(packed) != expected:
                raise ValueError(
                    f"image {index}: raw data is {len(packed)}, expected {expected}")
            decoded = packed

        if mode == 6:
            rgb = bytearray(width * height * 3)
            for pixel_index, (value,) in enumerate(struct.iter_unpack("<H", decoded)):
                # K&P's 16-bit graphics mode uses the Windows RGB555 DIB layout.
                blue = (value & 0x1F) * 255 // 31
                green = ((value >> 5) & 0x1F) * 255 // 31
                red = ((value >> 10) & 0x1F) * 255 // 31
                rgb[pixel_index * 3:pixel_index * 3 + 3] = (red, green, blue)
            image = Image.frombytes("RGB", (width, height), bytes(rgb))
        else:
            # Mode 3 is an 8-bit bank.  Its palette is application-owned; an
            # indexed PNG preserves every source value without inventing colour.
            image = Image.frombytes("P", (width, height), decoded)
            image.putpalette(bytes(value for index in range(256) for value in (index, index, index)))

        # K&P's bank records are already in display order.  Although the runtime
        # ultimately hands pixels to Windows DIB APIs, reversing these records
        # here inverts logos, text, hotspots, and every animation frame.
        filename = f"{index:04d}_{width}x{height}.png"
        image.save(image_dir / filename, format="PNG", optimize=True)
        manifest.append({
            "index": index,
            "present": True,
            "filename": filename,
            "offset": offset,
            "recordBytes": record_size,
            "packedBytes": data_size,
            "decodedBytes": len(decoded),
            "checksum": checksum,
            "references": references,
            "width": width,
            "height": height,
            "graphicsMode": mode,
            "flags": flags,
            "hotspot": [hotspot_x, hotspot_y],
            "actionPoint": [action_x, action_y],
            "decodedSha256": sha256(decoded),
        })
    return manifest


def decode_rle(data: bytes, unit: int, expected: int, image_index: int) -> bytes:
    """Decode K&P's byte-count RLE (repeat packets and literal packets)."""
    output = bytearray()
    position = 0
    terminated = False
    while position < len(data):
        control = data[position]
        position += 1
        if control == 0:
            terminated = True
            break
        if control & 0x80:
            count = control & 0x7F
            byte_count = count * unit
            if count == 0 or position + byte_count > len(data):
                raise ValueError(f"image {image_index}: invalid literal RLE packet")
            output.extend(data[position:position + byte_count])
            position += byte_count
        else:
            count = control
            if position + unit > len(data):
                raise ValueError(f"image {image_index}: invalid repeated RLE packet")
            output.extend(data[position:position + unit] * count)
            position += unit
        if len(output) > expected:
            raise ValueError(f"image {image_index}: RLE expands beyond expected size")
    if not terminated or position != len(data):
        raise ValueError(f"image {image_index}: missing or premature RLE terminator")
    if len(output) != expected:
        raise ValueError(
            f"image {image_index}: RLE produced {len(output)}, expected {expected}")
    return bytes(output)


def read_media_bank(path: Path, output: Path, kind: str) -> list[dict[str, object]]:
    source = path.read_bytes()
    if len(source) < 4:
        raise ValueError(f"{path}: truncated media bank")
    count = struct.unpack_from("<I", source, 0)[0]
    if 4 + count * 8 > len(source):
        raise ValueError(f"{path}: truncated media directory")
    destination_dir = output / ("music" if kind == "mus" else "sounds")
    destination_dir.mkdir(parents=True, exist_ok=True)
    manifest: list[dict[str, object]] = []
    for index in range(count):
        offset, record_size = struct.unpack_from("<II", source, 4 + index * 8)
        if record_size == 0:
            manifest.append({"index": index, "present": False})
            continue
        if record_size < 32 or offset + record_size > len(source):
            raise ValueError(f"{kind} {index}: invalid record bounds")
        unknown_a, unknown_b, payload_size = struct.unpack_from("<IHI", source, offset)
        name_bytes = source[offset + 10:offset + 32].split(b"\0", 1)[0]
        original_name = name_bytes.decode("latin1")
        if payload_size > record_size - 32:
            raise ValueError(f"{kind} {index}: payload extends beyond record")
        payload = source[offset + 32:offset + 32 + payload_size]
        stem = clean_name(original_name, f"{kind}_{index:04d}")

        if kind == "mus":
            if payload.startswith(b"MThd"):
                extension = "mid"
            elif payload.startswith(b"RIFF") and payload[8:12] == b"RMID":
                extension = "rmi"
            else:
                raise ValueError(f"music {index}: payload is not MIDI or RIFF MIDI")
            filename = f"{index:04d}_{stem}.{extension}"
            converted = payload
        else:
            if len(payload) < 16:
                raise ValueError(f"sound {index}: truncated WAVEFORMAT")
            format_tag, channels, rate, avg_rate, block_align, bits = struct.unpack_from(
                "<HHIIHH", payload)
            if format_tag != 1:
                raise ValueError(f"sound {index}: unsupported WAVE format {format_tag}")
            pcm = payload[16:]
            filename = f"{index:04d}_{stem}.wav"
            wave_path = destination_dir / filename
            with wave.open(str(wave_path), "wb") as writer:
                writer.setnchannels(channels)
                writer.setsampwidth(bits // 8)
                writer.setframerate(rate)
                writer.writeframes(pcm)
            converted = wave_path.read_bytes()

        if kind == "mus":
            (destination_dir / filename).write_bytes(converted)
        manifest.append({
            "index": index,
            "present": True,
            "filename": filename,
            "originalName": original_name,
            "offset": offset,
            "recordBytes": record_size,
            "payloadBytes": payload_size,
            "unknown": [unknown_a, unknown_b],
            "payloadSha256": sha256(payload),
        })
    return manifest


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, required=True,
                        help="directory containing the installed K&P resource set")
    parser.add_argument("--stem", default="pongkom2")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)

    manifest = {
        "imageBank": str(args.root / f"{args.stem}.img"),
        "images": read_image_bank(args.root / f"{args.stem}.img", args.output),
        "music": read_media_bank(args.root / f"{args.stem}.mus", args.output, "mus"),
        "sounds": read_media_bank(args.root / f"{args.stem}.snd", args.output, "snd"),
    }
    (args.output / "asset-manifest.json").write_text(
        json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
    counts = {key: sum(1 for item in manifest[key] if item["present"])
              for key in ("images", "music", "sounds")}
    print(json.dumps(counts, sort_keys=True))


if __name__ == "__main__":
    main()
