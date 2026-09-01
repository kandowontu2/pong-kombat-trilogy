# Pong Kombat 3 v2.1 reverse-engineering report

## Result

The supplied classic Mac release has been reconstructed at v2.1, its executable resources completely disassembled, its functions bounded and audited, and its gameplay/assets reimplemented as a native x86-64 Windows GUI executable. The release is a single PE file with no loose runtime assets.

## Input provenance

| Item | Value |
|---|---|
| Original archive | `C:\Users\kando\Downloads\Pong Kombat 3.rar` |
| Archive bytes | 3,645,413 |
| Archive SHA-256 | `F5C857BF7C2C58CDD5083945C5721BB42A6ACC535C7AEE53171C8E79AB3CABB1` |
| Base application | `PK3 2.0` classic Mac resource fork |
| Patch | `PK3 2.0 -> 2.1` ResCompare patch |
| Base raw resource fork | 5,264,178 bytes |

The original RAR, BinHex, StuffIt, and classic Mac files were never modified. Derived artifacts live under `reference/` and `analysis/`.

## Exact v2.1 reconstruction

The v2.1 updater is a ResCompare patcher. Its 68k `ApplyMunges` routine was disassembled to establish the edit-list semantics, then `tools/apply_rescompare_patch.py` reproduced the Classic Mac `Munger` operations. Eleven resources are modified:

| Resource | v2.0 → v2.1 size | Edit count |
|---|---:|---:|
| CODE 1 `__%Main` | 47,252 → 47,236 | 189 |
| CODE 2 `GENERIC SPRITES` | 8,214 → 8,214 | 1 |
| CODE 3 `SPECIAL MOVES` | 38,580 → 38,580 | 56 |
| CODE 4 `FATALITIES` | 71,828 → 71,872 | 76 |
| CODE 5 | 2,160 → 2,160 | 13 |
| DATA 0 | unchanged | 2 |
| PICT 131 | 25,896 → 25,852 | patch list |
| `vers` 128 / 129 | patched | patch list |
| XREF 1 / 4 | patched | patch list |

The patch payload is consumed exactly and every expected original resource attribute, name, and size is checked. Representative reconstructed hashes are:

- CODE 1: `FA6E6AC32B33ECA05DFC1087823C2CE1454F70B4A7AE69790516B903B9A99906`
- CODE 4: `5EA8AC0B6392C0AA367EDD0BF5A47A0488476ED3ED2CFD76F64D4FF1FF7B2F5F`
- DATA 0: `B25204701764736DFF728D2E7A368001586ECE61C1CF4FF2A5C975C880061BA3`

The machine-readable record is `analysis/resources-v2.1/patch-report.json`.

## Complete code disassembly

The v2.1 application contains nine executable CODE resources totaling 173,390 bytes. MacsBug symbol trailers provide source names for most gameplay functions; stripped compiler/runtime helpers were bounded manually. The audit identifies exactly 300 functions:

| Segment | Role | Functions | Function bytes | Metadata/symbol bytes | Resource bytes |
|---:|---|---:|---:|---:|---:|
| CODE 0 | jump metadata | 0 | 0 | 24 | 24 |
| CODE 1 | main/state/render/input | 89 | 46,008 | 1,228 | 47,236 |
| CODE 2 | generic sprites/physics/AI | 27 | 7,708 | 506 | 8,214 |
| CODE 3 | special moves | 67 | 37,150 | 1,430 | 38,580 |
| CODE 4 | fatalities/babalities | 82 | 69,806 | 2,066 | 71,872 |
| CODE 5 | menus/intro/registration | 3 | 2,112 | 48 | 2,160 |
| CODE 6 | graphics/sound/system | 24 | 4,630 | 464 | 5,094 |
| CODE 8 | compiler helpers | 6 | 174 | 8 | 182 |
| CODE 9 | string helpers | 2 | 48 | 8 | 56 |

Every byte is retained in `analysis/disassembly-v2.1/segments/`: function bodies, jump tables, symbol trailers, gaps, and trailing data. `FUNCTION_INDEX.md` gives calls/traps/category/hash for every function; `PORT_FUNCTION_AUDIT.md` maps all 300 to the native replacement layer.

## Resource recovery

The resource fork inventory contains 24 resource types and 284 resources. All gameplay media were decoded without loss:

- 140/140 PICT resources to RGBA PNG.
- 103/103 `snd ` resources to PCM WAV, including standard and extended Sound Manager headers, 8- and 16-bit samples, and nonstandard rates.
- `analysis/assets-v2.1-final/failures.json` is exactly `[]`.

The PICT decoder is a build-time preservation tool. It covers the indexed QuickDraw/PackBits opcodes absent from the available FFmpeg decoder. The final Windows executable does not ship or call it; it embeds the already recovered assets.

Important resource families:

| IDs | Meaning |
|---|---|
| 129–134 | title, credit, and production screens |
| 201–205 | selection, VS, continue, and game-over screens |
| 208–215 | eight complete 516×432 stages/HUD backgrounds |
| 900–902 | generic HUD/player/ball sprite atlases and masks |
| 1000–1015 / 1500–1515 | P1 character color/mask atlases |
| 2000–2015 / 2500–2515 | mirrored P2 color/mask atlases |
| 3000–3015 | 123×155 selection/VS portraits |
| 4000–4011 / 4500–4511 | finisher color/mask atlases |
| 6000–6009 | Kombat Kode digits |

## Native architecture

| Native layer | Responsibility |
|---|---|
| `src/app.cpp` | Win32 window/message loop, fixed 60 Hz dispatch, DPI handling, fullscreen state restoration, hotkeys |
| `src/renderer.cpp` | top-down 32-bit DIB, original masked sprite composition, GDI text, WIC resource decoding, integer-scale presentation |
| `src/audio.cpp` | embedded RIFF parsing and concurrent `waveOut` voices/music |
| `src/game.cpp` | screens, selection, VS Kodes, arena physics, four-direction paddles, rounds, ladder, CPU, projectiles, finishers, secrets, cheats |
| `src/game_data.cpp` | complete character move/finisher tables and 48 recovered Kombat Kodes |
| generated PE resources | all 243 pictures/sounds, icon, version metadata, runtime verification catalog |

The simulation uses the disassembled 516×432 bounds, y=84 arena top, 16×48 paddles, 112-pixel side zones, 6-pixel original tick speeds, 100 starting energy, and 20-point missed-ball damage. The original 256-color imagery remains pixel-aligned; presentation uses nearest-neighbor integer scaling with black letterboxing.

## Verification

The final verification sequence is:

1. Release build with warnings enabled and static MinGW C++/GCC runtimes.
2. Built-in hidden self-test decodes all 140 embedded images and checks every recovered dimension.
3. The same self-test parses all 103 embedded PCM resources.
4. It advances the production state machine through intro, title, selection, VS, and an active match, then renders the cheat menu.
5. Six deterministic 516×432 BMPs are produced for visual inspection.
6. `tests/window_smoke_test.ps1` drives a live hidden HWND and verifies `Alt+Enter` removes the overlapped frame, expands to the monitor, and restores the original style/placement on the second press.
7. PE import inspection confirms a Windows GUI subsystem and only Windows system/API-set DLL imports; no asset or third-party runtime DLL is shipped.

The executable also retains `--self-test <directory>` as a reproducible field diagnostic.

Final release: `dist/Pong Kombat 3.exe`, 7,780,826 bytes, SHA-256 `7E1D918F371981FD2B02B6C79F20079F31B1C7DCC7B648260BC4D71AFEAA8065`. A relocation test launched this copy with an unrelated working directory; all 243 embedded resources still validated and all six reference frames rendered.
