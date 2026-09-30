# Pong Kombat Trilogy v1.0.1

This is the complete native Windows preservation release of Pong Kombat 1.5, Pong Kombat 2.0, and Pong Kombat 3 v2.1 in one self-contained executable.

## Highlights

- One native 64-bit Windows executable with all game media embedded.
- Trilogy launcher, controller settings, credits, and full return-to-launcher lifecycle.
- Borderless fullscreen toggle with `Alt+Enter`.
- Hidden in-game cheat menu with `Ctrl+Alt+F1`; no on-screen cheat hint.
- Corrected Pong Kombat 1 mode and character-selection highlights.
- Flicker-free buffered rendering.
- No Pong Kombat 2 post-game closing window or legacy shutdown dialog.
- Recovered move, finisher, secret-paddle, and kode documentation in `analysis/GAMEPLAY_REFERENCE.md`.

## Downloads

- **Pong Kombat Trilogy.exe** — standalone executable; no installation or external assets required.
- **Pong-Kombat-Trilogy-v1.0.1-Windows-x64.zip** — executable plus the readme, preservation notice, release notes, and gameplay reference.
- **SHA256SUMS.txt** — SHA-256 checksums for both downloadable builds.

## Verification

The release build passes the deterministic embedded-resource and gameplay self-test, producing all 27 expected reference frames. It also passes a live window smoke test covering the `Alt+Enter` windowed/fullscreen round trip.

Standalone executable SHA-256: `45D39A8D47FA74B109F7048FE69A73ADEB1667C5236038AB57B79844A83B6A72`
