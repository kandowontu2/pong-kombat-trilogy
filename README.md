# Pong Kombat Trilogy — native Windows preservation port

This workspace contains native Windows reconstructions of Pong Kombat 1.5, Pong Kombat 2.0, and Pong Kombat 3 v2.1 in one self-contained Windows GUI executable. The launcher, all three games, controller configuration, original media, PCM audio, and PK2 MIDI sequencer run in one process and one window. No DOS, Win16, Classic Mac, emulator, installer, loose asset, or external media player is needed at runtime.

## Run

The packaged release is:

```text
dist/Pong Kombat Trilogy.exe
```

Release v1.0.1 size: 23,574,038 bytes. SHA-256: `13F179F8CFAD70090DB3433C7E435E30A9261C491F57B20C35DD7B31D3FC7B84`.

The current packaged build is also available from the public [GitHub Releases page](https://github.com/kandowontu2/pong-kombat-trilogy/releases/latest).

Global controls:

- `Enter` / `Space`: select or confirm.
- `F12`: return from any game to the trilogy launcher.
- `Alt+Enter`: toggle borderless fullscreen and restore the previous window placement.
- `Ctrl+Alt+F1`: open or close the cheat menu while a game is active.
- `Esc`: pause an active match, close an overlay, or return from a menu.

Controller Settings is available directly in the trilogy launcher. It supports two independently assigned XInput slots and remappable direction/action bindings. The settings are shared by all three games and saved under the current Windows user.

## Credits

- **Pong Kombat:** Stefan Gagne (code, art, sound, and 3-D rendering); Nick Steele, Julio DeLeon, David Hunt, Josh Saxon, and George Sopko.
- **Pong Kombat 2:** Ryan Sadwick / Sadwick Productions and Arturo Aquino / Art Entertainment; based on Pong Kombat by Gagne Software, used with permission; documentation by Stefan Gagne.
- **Pong Kombat 3:** Brandon Kuroda; contributions from Brandon Yowell, Nathan Rosen, Graeme Humphries, Misha Sakellaropoulo, and Brandon Miguel.
- **Native Windows preservation port:** kandowontu, with engineering assistance from OpenAI Codex.

The same attribution is available from **Credits** in the executable's trilogy launcher.

PK1 retains its original keyboard layout: Player 1 uses `W`, `X`, and left `Shift`; Player 2 uses the arrow keys and right `Shift`. In one-player tournament mode the human is Player 2, as in the DOS release. PK2 retains arrows plus left `Shift`/`Ctrl` for Player 1 and numpad `8/2/4/6`, `+`, and `Enter` for Player 2. PK3 controls and the complete recovered move/kode reference are documented in [GAMEPLAY_REFERENCE.md](analysis/GAMEPLAY_REFERENCE.md).

All game-over, ladder-loss, tournament-win, ending, and credit paths return to the selector in the existing window. The Win16 PK2 shutdown dialog/closing window is deliberately absent.

## Build

Requirements are CMake 3.24+, Ninja, Python 3 with Pillow, and a MinGW-w64 C++20 compiler. The final executable statically links the MinGW runtime and imports only Windows system libraries.

```powershell
cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build --parallel
```

The build-time resource generator verifies and embeds:

| Game | Pictures | Sounds | Music |
|---|---:|---:|---:|
| Pong Kombat | 608 PNG | 31 WAV | — |
| Pong Kombat 2 | 2,036 PNG | 18 WAV | 16 MIDI/RMID |
| Pong Kombat 3 | 140 PNG | 103 WAV | — |
| Total | 2,784 | 152 | 16 |

Run the deterministic resource, gameplay, controls, finisher, lifecycle, and rendering suite with:

```powershell
$testOutput = "$PWD\build\self-test"
$exe = (Resolve-Path '.\build\Pong Kombat Trilogy.exe').Path
Start-Process -FilePath $exe `
  -ArgumentList @('--self-test', ('"' + $testOutput + '"')) `
  -WindowStyle Hidden -Wait
```

This validates all 2,952 embedded media resources, exercises the three state machines, all published PK1/PK2 regular-character move and finisher sequences, all twelve PK2 secret-paddle projectile inputs, shared controller configuration, the credits screen, the hidden cheat overlays, and every terminal return path. It writes 27 reference BMPs. `tests/window_smoke_test.ps1` separately verifies a live `Alt+Enter` fullscreen round trip.

## Preservation and audit record

- [TRILOGY_AUDIT.md](analysis/TRILOGY_AUDIT.md) is the combined provenance, disassembly, serialized-event, port-mapping, and verification report.
- [PK3 reverse-engineering report](analysis/REVERSE_ENGINEERING_REPORT.md) documents the exact Classic Mac v2.0-to-v2.1 reconstruction and 300-function audit.
- [PK3 function ledger](analysis/PORT_FUNCTION_AUDIT.md) maps all 300 recovered 68k functions to native replacements.
- [PK1 function index](analysis/legacy-disassembly/pk1/FUNCTION_INDEX.md) and its complete bounded [16-bit listing](analysis/legacy-disassembly/pk1/LISTING.asm) cover the DOS executable.
- [PK2 serialized game audit](analysis/legacy-disassembly/pk2/game/GAME_EVENT_AUDIT.md) inventories all six Klik & Play frames, 339 declared objects, labels, and game text by source offset.
- Each PK2 Win16 runtime module under `analysis/legacy-disassembly/pk2/` has a complete function index, bounded assembly listing, and machine-readable JSON audit.

The original archives and extracted reference binaries are analysis inputs only and are not copied into the release executable. The native build contains the recovered media and independently implemented Win32 game logic.
