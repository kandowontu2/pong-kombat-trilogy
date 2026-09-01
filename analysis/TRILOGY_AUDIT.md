# Pong Kombat Trilogy preservation and port audit

## Scope and result

The shipped program is a native x86-64 Windows reconstruction of Pong Kombat 1.5 (DOS), Pong Kombat 2.0 (Win16/Klik & Play), and Pong Kombat 3 v2.1 (Classic Mac 68k). All three modules run under one Win32 message loop and one top-level window. The release contains no original executable, installer, emulator, compatibility layer, or loose runtime file.

The audit preserves the original inputs, their hashes, complete bounded assembly listings for every recovered native-code entry, raw machine-readable records, decoded asset manifests, and a port-responsibility mapping. For PK2, whose game rules are serialized rather than compiled as x86 functions, the audit separately inventories every frame and every object/text-bearing record by file offset.

## Input provenance

| Game | Primary source | Preserved program SHA-256 |
|---|---|---|
| PK1 | DOSGames release plus the v1.5 patch; reconstructed `PONGKOMB.EXE` | `DA6FC8A34BB52470DDE974B77A6B41594E4A51A21EAAD6AEDA6043B3DA85338E` |
| PK2 | Author-hosted PK2 installer; installed `pongkom2.exe` | `907E82EE1DEB27CFD8A3BA1CF292D2F1EC34169848C8BB457D626525C934A23C` |
| PK2 game bank | installed `pongkom2.gam` | `974A4A410D5F94A163AF0E13984FF2066B0ABAF826AE5D0038CF604DC80B2A2A` |
| PK3 | user-supplied `Pong Kombat 3.rar`; archive | `F5C857BF7C2C58CDD5083945C5721BB42A6ACC535C7AEE53171C8E79AB3CABB1` |

PK1 archive hashes are `BC5B79C60C7C5E40EB3A7A179BA12E2488AB0B471C439A0538B6622E5FB16A7B` (base) and `5B297F161CBC22FD2E6C2651A3EB992ED920C75D217AA9B34B6C704DF9A7B3F2` (v1.5 patch). The PK2 archive hash is `10FC9702D9771150C5E9F40B2BDF1132307693FAC6170382DE7DF83DE0254747`.

## Native-code coverage

| Original | Format | Modules | Recovered entries | Audit artifacts |
|---|---|---:|---:|---|
| PK1 | DOS MZ, 16-bit x86 | 1 | 390 | `legacy-disassembly/pk1/{FUNCTION_INDEX.md,LISTING.asm,audit.json}` |
| PK2 | Windows NE, 16-bit x86 | 5 | 1,590 | one index/listing/JSON set per module under `legacy-disassembly/pk2/` |
| PK3 | Classic Mac CODE, Motorola 68000 | 9 CODE resources | 300 | `disassembly-v2.1/`, `PORT_FUNCTION_AUDIT.md` |
| Total | three legacy platforms | 15 code containers | 2,280 | complete address-indexed listings plus JSON |

PK2 module breakdown:

| Module | Role | Functions/entries | Exported NE entries |
|---|---|---:|---:|
| `pongkom2.exe` | Klik & Play loader/runtime shell | 293 | 0 |
| `knpg.dll` | graphics/runtime services | 365 | 54 |
| `knps.dll` | sound/MIDI/runtime services | 677 | 144 |
| `dib.drv` | DIB display driver | 211 | 27 |
| `ibmjoy.drv` | joystick driver | 44 | 4 |

The DOS/NE function boundaries are seeded by executable entry points, NE entry tables, direct call targets, and conservative compiler-prologue scans. Ambiguous code/data regions remain marked conservative in the indexes rather than being silently treated as certain. Each entry retains its original segment:offset, instruction range, direct calls, and source-module hash.

PK3 has stronger symbol information: MacsBug trailers identify most gameplay routines. Its 300-entry ledger records original names, sizes, categories, content hashes, and native replacement responsibilities. The exact v2.1 application was first reconstructed by applying the recovered ResCompare/Munger edit list to v2.0; the patch report is `resources-v2.1/patch-report.json`.

## PK2 serialized game audit

`pongkom2.gam` stores game-specific behavior as Klik & Play frame/object/event data, not as additional x86 procedures. `legacy-disassembly/pk2/game/GAME_EVENT_AUDIT.md` and `game-audit.json` record:

- 640×480 logical canvas.
- Six serialized frames at `0x9A0E`, `0xC805`, `0xF1FF`, `0x11BA7`, `0x14F9F`, and `0x18B1D`.
- 339 declared objects: 5, 3, 3, 8, 15, and 305 by frame.
- Every recovered object label, game text, serialized string, and exact source offset.

This event inventory is the game-logic counterpart to the five PK2 native runtime listings.

## Media recovery

| Game | Decoded pictures | Decoded sounds | Decoded music | Failure record |
|---|---:|---:|---:|---|
| PK1 | 608 | 31 | 0 | `assets-pk1/failures.json` is empty |
| PK2 | 2,036 | 18 | 16 | all manifest entries validated |
| PK3 | 140 | 103 | 0 | `assets-v2.1-final/failures.json` is empty |

PK1 PCX/FLI-style banks and audio were decoded from the v1.5 files. PK2 images were decoded top-down from the Klik & Play image bank; WAV and SMF/RMID records were extracted from their sound/music banks. PK3 PICT and Sound Manager resources were decoded from the reconstructed v2.1 resource fork. The PE resource generator rejects missing files or dimension mismatches.

## Native replacement map

| Original responsibility | Native implementation |
|---|---|
| DOS/Win16/Mac startup, event loops, window creation | `src/app.cpp`, one Win32 GUI process and HWND |
| Trilogy ownership and cross-game lifecycle | `src/collection.cpp` |
| PK1/PK2 menus, tournaments, AI, ball/paddle physics, moves, fatalities/dismantles | `src/legacy_game.cpp` |
| PK3 screens, ladders, AI, physics, kodes, moves, finishers | `src/game.cpp`, `src/game_data.cpp` |
| DOS blits, Win16 DIB driver, QuickDraw/PICT composition | `src/renderer.cpp`, top-down 32-bit DIB and one final presentation blit |
| DOS/Win16/Mac sound APIs | `src/audio.cpp`, embedded waveOut PCM voices and an in-memory WinMM MIDI sequencer |
| Keyboard and legacy joystick paths | normalized Win32 keyboard input plus dynamically loaded XInput |
| Registry/preferences | versioned HKCU controller settings shared by all games |

The published PK1 sequences for all five regular paddles and the published PK2 sequences for all nine regular paddles are represented as data tables. PK1 stage fatalities and flawless Spamality, and PK2 dismantles, Nudeality, and Shifter's flawless Spam Lite-ality, run only in the native finish phase. Tournament ladders end with White Paddle and return to the trilogy launcher after completion.

## Window, fullscreen, and flicker audit

`src/app.cpp` contains the only `CreateWindowExW` call. Game selection constructs an in-process module; it never launches an original EXE. A terminal state raises `returnRequested`, after which `Collection::returnToLauncher` destroys the module object and redraws the selector in the same HWND. There is no `CreateProcess`, `ShellExecute`, or `MessageBox` call, so PK2's legacy post-game closing dialog cannot appear.

Rendering is composed into the logical top-down DIB, scaled and letterboxed into a client-sized presentation DIB, and copied to the paint DC with one final `BitBlt`. `WM_ERASEBKGND` is consumed. This removes the prior clear/scale/paint race that caused black flicker. `Alt+Enter` swaps the existing HWND between overlapped and borderless-monitor styles, preserving and restoring placement.

The cheat hotkey is registered globally by the app and routed only to the active game. No renderer or menu string advertises the hotkey.

## Verification contract

The hidden `--self-test <directory>` path validates all 2,952 embedded media records and renders 27 deterministic BMPs. It also checks:

1. All three launch paths and logical canvas changes.
2. Shared controller settings and a remapped input path.
3. Every published regular-character PK1/PK2 projectile sequence.
4. Every published regular-character PK1 fatality and PK2 dismantle sequence, plus all twelve PK2 secret-paddle projectile inputs and the `RYANART` selection route.
5. PK1, PK2, and PK3 terminal lifecycle returns.
6. Launcher, credits, intro, mode, select, VS, match, cheat, fatality, and dismantle rendering.
7. All 16 embedded PK2 MIDI/RMID records through the native parser.

The live window test starts the release as a normal GUI process, locates its HWND, performs two `Alt+Enter` transitions, verifies removal/restoration of the overlapped style, verifies monitor-sized expansion, and closes the same window. Final packaging additionally checks the PE GUI subsystem, system-only imports, embedded resource count, relocated self-test behavior, release byte size, and SHA-256.

Final release v1.0.1: `dist/Pong Kombat Trilogy.exe`, 23,574,038 bytes, SHA-256 `B2D6D9720A0FC499D052F33902669BAB33BEF2FE6EEAD945351B05B6BC71789F`. A relocation test launched that exact copy with `%TEMP%` as its working directory, returned 0, and produced all 27 reference frames without any companion files.
