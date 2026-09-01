#!/usr/bin/env python3
"""Convert classic Macintosh PICT and 'snd ' resources into portable assets."""

from __future__ import annotations

import argparse
import concurrent.futures
import json
import re
import shutil
import struct
import subprocess
import wave
from pathlib import Path


def safe_component(value: str) -> str:
    value = re.sub(r'[<>:"/\\|?*\x00-\x1f]', "_", value).strip(" .")
    return value or "unnamed"


def output_stem(item: dict[str, object]) -> str:
    name = item.get("name")
    return f"{item['id']}_{safe_component(str(name))}" if name else str(item["id"])


def png_size(path: Path) -> tuple[int, int]:
    data = path.read_bytes()[:24]
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError(f"not a PNG: {path}")
    return struct.unpack(">II", data[16:24])


def convert_pict(
    ffmpeg: str,
    pict_decoder: str | None,
    source_root: Path,
    destination_root: Path,
    item: dict[str, object],
) -> dict[str, object]:
    source = source_root / str(item["path"])
    destination = destination_root / "pict" / f"{output_stem(item)}.png"
    if pict_decoder:
        native_result = subprocess.run(
            [pict_decoder, str(source), str(destination)],
            capture_output=True,
            text=True,
        )
        if native_result.returncode == 0:
            width, height = png_size(destination)
            return {
                "type": "PICT",
                "id": item["id"],
                "name": item.get("name"),
                "source_size": item["size"],
                "path": str(destination.relative_to(destination_root)),
                "width": width,
                "height": height,
            }
    command = [
        ffmpeg,
        "-hide_banner",
        "-loglevel",
        "error",
        "-f",
        "image2",
        "-c:v",
        "qdraw",
        "-i",
        str(source),
        "-frames:v",
        "1",
        "-update",
        "1",
        str(destination),
        "-y",
    ]
    result = subprocess.run(command, capture_output=True, text=True)
    if result.returncode != 0:
        raise RuntimeError(
            f"ffmpeg failed for PICT {item['id']}: {result.stderr.strip()}"
        )
    width, height = png_size(destination)
    return {
        "type": "PICT",
        "id": item["id"],
        "name": item.get("name"),
        "source_size": item["size"],
        "path": str(destination.relative_to(destination_root)),
        "width": width,
        "height": height,
    }


def parse_snd(data: bytes) -> tuple[int, bytes, dict[str, int]]:
    if len(data) < 12:
        raise ValueError("sound resource is too short")
    sound_format, modifier_count = struct.unpack_from(">HH", data, 0)
    if sound_format == 1:
        command_count_pos = 4 + modifier_count * 6
        command_count = struct.unpack_from(">H", data, command_count_pos)[0]
        commands_pos = command_count_pos + 2
    elif sound_format == 2:
        command_count_pos = 4
        command_count = struct.unpack_from(">H", data, command_count_pos)[0]
        commands_pos = command_count_pos + 2
    else:
        raise ValueError(f"unsupported sound resource format {sound_format}")

    header_offset = None
    for command_index in range(command_count):
        pos = commands_pos + command_index * 8
        command, _param1, param2 = struct.unpack_from(">HhI", data, pos)
        # dataOffsetFlag (0x8000) plus soundCmd/bufferCmd (0x0050/0x0051)
        if command & 0x7FFF in (0x0050, 0x0051):
            header_offset = param2
            break
    if header_offset is None:
        raise ValueError("sound resource has no buffer command")
    if header_offset + 22 > len(data):
        raise ValueError("sound header extends beyond resource")

    fixed_rate = struct.unpack_from(">I", data, header_offset + 8)[0]
    loop_start = struct.unpack_from(">I", data, header_offset + 12)[0]
    loop_end = struct.unpack_from(">I", data, header_offset + 16)[0]
    encoding = data[header_offset + 20]
    base_frequency = data[header_offset + 21]
    if encoding == 0:
        channels = 1
        sample_size = 8
        sample_count = struct.unpack_from(">I", data, header_offset + 4)[0]
        samples_pos = header_offset + 22
    elif encoding == 0xFF:
        channels = struct.unpack_from(">I", data, header_offset + 4)[0]
        frame_count = struct.unpack_from(">I", data, header_offset + 22)[0]
        sample_size = struct.unpack_from(">H", data, header_offset + 48)[0]
        if sample_size not in (8, 16):
            raise ValueError(f"unsupported extended sample size {sample_size}")
        sample_count = frame_count * channels * (sample_size // 8)
        samples_pos = header_offset + 64
    else:
        raise ValueError(f"unsupported encoded sound header {encoding}")
    samples = data[samples_pos : samples_pos + sample_count]
    if len(samples) != sample_count:
        raise ValueError("sample data extends beyond sound resource")
    sample_rate = max(1, round(fixed_rate / 65536.0))
    if sample_size == 16:
        # Macintosh PCM is big-endian; RIFF/WAVE PCM is little-endian.
        samples = b"".join(samples[index : index + 2][::-1] for index in range(0, len(samples), 2))
    return sample_rate, samples, {
        "loop_start": loop_start,
        "loop_end": loop_end,
        "base_frequency": base_frequency,
        "channels": channels,
        "sample_size": sample_size,
    }


def convert_snd(
    source_root: Path,
    destination_root: Path,
    item: dict[str, object],
) -> dict[str, object]:
    source = source_root / str(item["path"])
    sample_rate, samples, metadata = parse_snd(source.read_bytes())
    destination = destination_root / "sound" / f"{output_stem(item)}.wav"
    with wave.open(str(destination), "wb") as wav:
        wav.setnchannels(metadata["channels"])
        wav.setsampwidth(metadata["sample_size"] // 8)
        wav.setframerate(sample_rate)
        wav.writeframes(samples)
    return {
        "type": "snd ",
        "id": item["id"],
        "name": item.get("name"),
        "source_size": item["size"],
        "path": str(destination.relative_to(destination_root)),
        "sample_rate": sample_rate,
        "sample_count": len(samples),
        **metadata,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("resources", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--jobs", type=int, default=8)
    parser.add_argument("--ffmpeg", default=shutil.which("ffmpeg"))
    default_decoder = (
        Path(__file__).resolve().parent
        / "pict_decoder"
        / "target"
        / "release"
        / "pict_decoder.exe"
    )
    parser.add_argument(
        "--pict-decoder",
        default=str(default_decoder) if default_decoder.exists() else None,
    )
    args = parser.parse_args()
    if not args.ffmpeg:
        parser.error("ffmpeg was not found")
    if args.output.exists():
        parser.error(f"output already exists: {args.output}")

    manifest = json.loads(
        (args.resources / "manifest.json").read_text(encoding="utf-8")
    )
    args.output.mkdir(parents=True)
    (args.output / "pict").mkdir()
    (args.output / "sound").mkdir()

    picture_items = [item for item in manifest if item["type"] == "PICT"]
    sound_items = [item for item in manifest if item["type"] == "snd "]
    results: list[dict[str, object]] = []
    failures: list[dict[str, object]] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.jobs) as executor:
        futures = {
            executor.submit(
                convert_pict,
                args.ffmpeg,
                args.pict_decoder,
                args.resources,
                args.output,
                item,
            ): item
            for item in picture_items
        }
        for future in concurrent.futures.as_completed(futures):
            item = futures[future]
            try:
                results.append(future.result())
            except Exception as error:
                failures.append(
                    {
                        "type": "PICT",
                        "id": item["id"],
                        "name": item.get("name"),
                        "source_size": item["size"],
                        "source_path": item["path"],
                        "error": str(error),
                    }
                )

    for item in sound_items:
        try:
            results.append(convert_snd(args.resources, args.output, item))
        except Exception as error:
            failures.append(
                {
                    "type": "snd ",
                    "id": item["id"],
                    "name": item.get("name"),
                    "source_size": item["size"],
                    "source_path": item["path"],
                    "error": str(error),
                }
            )

    results.sort(key=lambda item: (str(item["type"]), int(item["id"])))
    (args.output / "manifest.json").write_text(
        json.dumps(results, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    (args.output / "failures.json").write_text(
        json.dumps(failures, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(
        f"converted {sum(item['type'] == 'PICT' for item in results)}/{len(picture_items)} "
        f"PICT resources and {sum(item['type'] == 'snd ' for item in results)}/"
        f"{len(sound_items)} sound resources; "
        f"failures={len(failures)}"
    )
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
