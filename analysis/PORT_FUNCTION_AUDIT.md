# Native port function audit

The v2.1 code-resource audit found and bounded **300 functions**. This ledger accounts for every function, preserves its content hash and original offset, and identifies the native replacement layer. “Replaced” means the Classic Mac Toolbox/runtime responsibility is provided by a native Win32 or C++ facility; “Retired” is limited to the obsolete shareware-registration gate and does not remove gameplay.

Status totals: Reimplemented: 272, Replaced: 24, Retired: 4.

## Segment coverage

| Segment | Function bytes | Metadata/symbol bytes | Total bytes | Functions |
|---|---:|---:|---:|---:|
| CODE 0 | 0 | 24 | 24 | 0 |
| CODE 1 | 46008 | 1228 | 47236 | 89 |
| CODE 2 | 7708 | 506 | 8214 | 27 |
| CODE 3 | 37150 | 1430 | 38580 | 67 |
| CODE 4 | 69806 | 2066 | 71872 | 82 |
| CODE 5 | 2112 | 48 | 2160 | 3 |
| CODE 6 | 4630 | 464 | 5094 | 24 |
| CODE 8 | 174 | 8 | 182 | 6 |
| CODE 9 | 48 | 8 | 56 | 2 |

## Complete function ledger

| CODE | Offset | Original function | Bytes | Audit category | Port status | Native replacement | SHA-256 prefix |
|---:|---:|---|---:|---|---|---|---|
| 1 | `0x0000` | `SegmentBootstrap` | 280 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `7a841e5078ec` |
| 1 | `0x0118` | `RunExitProcedures` | 40 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `555a1191990e` |
| 1 | `0x0140` | `LoadCodeSegment` | 182 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `9b6928ea88af` |
| 1 | `0x01F6` | `UnloadCodeSegment` | 106 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `540f2576d0a7` |
| 1 | `0x0260` | `DecodeXref` | 256 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `5e40b3fd92a5` |
| 1 | `0x0360` | `ApplyXref` | 116 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `d8307b48bd5f` |
| 1 | `0x03D4` | `SegmentLoader` | 92 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `43b6f57bd718` |
| 1 | `0x0430` | `UnsignedMultiply32` | 32 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `feab82403498` |
| 1 | `0x0450` | `UnsignedDivide32` | 110 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `5c4e166666e5` |
| 1 | `0x04BE` | `UnsignedDivide32Remainder` | 40 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `30fc6219afd1` |
| 1 | `0x04E6` | `UnsignedDivide16Step` | 32 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `8d4856587d9b` |
| 1 | `0x0506` | `NoopStub` | 2 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `1ceeabf0c6a5` |
| 1 | `0x0508` | `DoKontinue` | 692 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `2f50c1847b7e` |
| 1 | `0x07CA` | `SelectionScreen` | 204 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `c6f453817f8f` |
| 1 | `0x08A8` | `VSScreen` | 92 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `4ea27c233849` |
| 1 | `0x0910` | `VSScreenCPU` | 152 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `b46b8c28585d` |
| 1 | `0x09B6` | `DoCongratulations` | 68 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `f1ff76f95e81` |
| 1 | `0x0A0E` | `RollKredits` | 1400 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `a1f6767ebc2f` |
| 1 | `0x0F94` | `SetBallSpeed` | 130 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `db3734643757` |
| 1 | `0x1026` | `DoGameLoop` | 1072 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `48704917e8bb` |
| 1 | `0x1464` | `ResetValues2` | 112 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `9311599b3933` |
| 1 | `0x14E4` | `ResetValues` | 156 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `ce780c1ce9cc` |
| 1 | `0x158E` | `DoGameOver` | 110 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `b26730a6e61b` |
| 1 | `0x160A` | `OpenMainWindow` | 142 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `25df60588c9e` |
| 1 | `0x16AA` | `main` | 152 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `f3e4226f5aeb` |
| 1 | `0x174A` | `LoadDeathSounds` | 320 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `2093ad28f4f4` |
| 1 | `0x189C` | `LoadTheSounds` | 1818 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `1a67d45e3519` |
| 1 | `0x1FC6` | `DoGame` | 1854 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `403a300bcdd1` |
| 1 | `0x270E` | `MoveEverything` | 1396 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `cecb5a0137c1` |
| 1 | `0x2C94` | `ShowEverything` | 7410 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `d116c59cd431` |
| 1 | `0x4998` | `CopyOne` | 80 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `bcbef9ae818c` |
| 1 | `0x49F2` | `CopyFight` | 80 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `afe27a157cdf` |
| 1 | `0x4A4E` | `InitializeEverything` | 42 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `447a670ba24c` |
| 1 | `0x4A90` | `DoDelay` | 32 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `60c6d6b089ac` |
| 1 | `0x4ABA` | `DoDelay2` | 32 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `4d697d23eb83` |
| 1 | `0x4AE6` | `InitSelectCrap` | 272 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `df61bc4fb6b1` |
| 1 | `0x4C08` | `InitGameCrap` | 264 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `6c28620c1413` |
| 1 | `0x4D20` | `DrawInNames` | 964 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `18b22dad88e4` |
| 1 | `0x50F2` | `ShowWinner` | 982 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `7144398df978` |
| 1 | `0x54D6` | `ScaleFinish` | 396 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4e1012570173` |
| 1 | `0x5670` | `CheckKodeMatch` | 2730 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `51ab857fb77b` |
| 1 | `0x612C` | `HandleTheFatalities` | 2530 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `b8712006f951` |
| 1 | `0x6B24` | `LoadPreferences` | 66 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `fcdf29465a7f` |
| 1 | `0x6B78` | `SavePreferences` | 332 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `e6ee9aea84f0` |
| 1 | `0x6CD6` | `saveRegistration` | 18 | Input / kodes | Retired | Classic shareware registration gate removed; recovered routine remains audited | `b53dfc4fde31` |
| 1 | `0x6CFC` | `FeedbackKey` | 254 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `109e177500b1` |
| 1 | `0x6E08` | `DoKeyConfiguration` | 486 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `310020c43e7c` |
| 1 | `0x7004` | `RegisterKey` | 194 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `9947a1740718` |
| 1 | `0x70D4` | `InitMiniVersus` | 224 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `cd348304d335` |
| 1 | `0x71C6` | `InitVersusCrap` | 130 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `aa330054e386` |
| 1 | `0x725A` | `InitVersusCrapCPU` | 42 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `ba0622705470` |
| 1 | `0x7298` | `CheckKey2` | 66 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `299bb0770823` |
| 1 | `0x72E6` | `HandleRegisterKeyDown` | 466 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `eb6c969057e6` |
| 1 | `0x74D0` | `HandleVSKeyDown` | 654 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `cdc68a438c98` |
| 1 | `0x7770` | `ChangeKodeBox` | 132 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `95053a893376` |
| 1 | `0x7804` | `MoveVersusCrap` | 34 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `136435a72fe4` |
| 1 | `0x7838` | `MoveRegistration` | 336 | Input / kodes | Retired | Classic shareware registration gate removed; recovered routine remains audited | `9262707b937f` |
| 1 | `0x799C` | `CheckRegistration` | 100 | Input / kodes | Retired | Classic shareware registration gate removed; recovered routine remains audited | `50d23f41c3fc` |
| 1 | `0x7A14` | `DrawVSPicts` | 122 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `222b729ece91` |
| 1 | `0x7A9C` | `DrawVSPictsCPU` | 528 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `623c9f288f59` |
| 1 | `0x7CBE` | `DrawBackground2` | 290 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `d969faed6637` |
| 1 | `0x7DF2` | `DrawBackground` | 220 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `eded1e392947` |
| 1 | `0x7EE0` | `ReplacePicture` | 52 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `22e4ae289306` |
| 1 | `0x7F26` | `CheckPlayer1Key` | 1672 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `7bf869e12b10` |
| 1 | `0x85C0` | `CheckPlayer2Key` | 1468 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `3496f9ae18bf` |
| 1 | `0x8B8E` | `HandleKeyDown` | 98 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `618765a32290` |
| 1 | `0x8C00` | `ChangeIcon1` | 158 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `4cc0d263e66c` |
| 1 | `0x8CAC` | `ChangeIcon2` | 164 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `71dcd77a4170` |
| 1 | `0x8D5E` | `MoveSelectCrap` | 426 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `733daf319931` |
| 1 | `0x8F1A` | `ShowSelectCrap` | 504 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `f1b66433143d` |
| 1 | `0x9124` | `DoStory` | 218 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `0fd77b6fb057` |
| 1 | `0x9208` | `ShangEnding` | 316 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `5fe080b759d2` |
| 1 | `0x9352` | `SindelEnding` | 356 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `ef30fa6c8ea9` |
| 1 | `0x94C6` | `LiuEnding` | 374 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `db75202abdf5` |
| 1 | `0x9648` | `SubEnding` | 418 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `e2e9253d0ca1` |
| 1 | `0x97F6` | `OmohEnding` | 458 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `c8ab29f4aab7` |
| 1 | `0x99CE` | `CyraxEnding` | 398 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `e483531eae31` |
| 1 | `0x9B6A` | `SektorEnding` | 416 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `b16bf1755299` |
| 1 | `0x9D1A` | `KungEnding` | 438 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `93acb86f981c` |
| 1 | `0x9EDE` | `KabalEnding` | 518 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `340a35daba6a` |
| 1 | `0xA0F2` | `ShaoEnding` | 274 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `f11a00fab81d` |
| 1 | `0xA212` | `MotaroEnding` | 294 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `0ec4914eda21` |
| 1 | `0xA348` | `NodnarbEnding` | 620 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `399643cb37b9` |
| 1 | `0xA5C4` | `NightwolfEnding` | 334 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `0f401e707a1b` |
| 1 | `0xA724` | `DrawBlackScreen` | 118 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `659804593cea` |
| 1 | `0xA7AC` | `CreateWindow` | 60 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `eb3b3774fb15` |
| 1 | `0xA7F8` | `SetTheGameRects` | 1470 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `c4f6f4b6306f` |
| 1 | `0xADC8` | `SetTheRects` | 2570 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `288f65300739` |
| 1 | `0xB7E0` | `SetThePorts` | 150 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `d20b9ac32813` |
| 2 | `0x0008` | `HandleBall` | 894 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `13f3b9c9578b` |
| 2 | `0x0394` | `HandleDecoyBall` | 156 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `2876abd1993e` |
| 2 | `0x0442` | `Player1BallEnergyOff` | 58 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `5fd75f93551c` |
| 2 | `0x0494` | `Player2BallEnergyOff` | 58 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `ac143bec3a80` |
| 2 | `0x04E6` | `PrintSpecialMessages` | 1610 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `b0ef9dc86819` |
| 2 | `0x0B48` | `HandleFight` | 554 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `3505fbc05a21` |
| 2 | `0x0D80` | `HandlePlayer1` | 524 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `c4da5dfebad2` |
| 2 | `0x0F9C` | `HandlePlayer2` | 498 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `cb3d0d11e58c` |
| 2 | `0x119E` | `Player1EnergyOff` | 90 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `89bae62e83dd` |
| 2 | `0x120C` | `Player2EnergyOff` | 30 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `3216cfaa83dc` |
| 2 | `0x123E` | `FastCounter` | 110 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `e09d70866348` |
| 2 | `0x12BA` | `FasterKredits` | 110 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `e09d70866348` |
| 2 | `0x1338` | `CheckKey` | 66 | Input / kodes | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `299bb0770823` |
| 2 | `0x1386` | `CPUFireLimits` | 150 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `476329324b53` |
| 2 | `0x142C` | `CPUMoveLimits` | 110 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `30e9d9270e94` |
| 2 | `0x14AA` | `CPUOffScreen` | 88 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `92822e73868c` |
| 2 | `0x1512` | `CPUDodge` | 322 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `c531b79cc455` |
| 2 | `0x1660` | `HandlePlayer2CPUEasy` | 292 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `3639ee6cac1a` |
| 2 | `0x179C` | `HandlePlayer2CPUMedium` | 644 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `36a534bc7e6d` |
| 2 | `0x1A3A` | `HandlePlayer2CPUHard` | 578 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `db8d40366559` |
| 2 | `0x1C94` | `HandleMotaro2CPUHard` | 284 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `f08e0d8596f3` |
| 2 | `0x1DC8` | `HandleShao2CPUHard` | 188 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `0c932ea7c23d` |
| 2 | `0x1E9A` | `HandleShangCPU` | 38 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `eb342737b110` |
| 2 | `0x1ED2` | `HandleSindelCPU` | 102 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `461437bb49b3` |
| 2 | `0x1F4A` | `HandleSubCPU` | 80 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `c615e9c3154f` |
| 2 | `0x1FAA` | `HandleCyraxCPU` | 14 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `78eb6730ad9b` |
| 2 | `0x1FCA` | `HandleKungCPU` | 60 | AI | Reimplemented | src/game.cpp (native CPU tracking/evasion/action scheduler) | `9776d57384de` |
| 3 | `0x0008` | `MoveSindelDiagFireball1` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f1cb9680d622` |
| 3 | `0x0070` | `MoveSindelDiagFireball2` | 82 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d3ddf36ed59b` |
| 3 | `0x00DC` | `HandleSindelDiagFireball1` | 436 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5dd77d397946` |
| 3 | `0x02AC` | `HandleSindelDiagFireball2` | 418 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `da98449350c9` |
| 3 | `0x046A` | `SetupNBall1` | 66 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `7d329390a51b` |
| 3 | `0x04BA` | `SetupNBall2` | 66 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `59a3b7822fe5` |
| 3 | `0x050A` | `SetupNBall3` | 66 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3cdf8f639e95` |
| 3 | `0x055A` | `SetupNBall4` | 66 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `fc41185eea5f` |
| 3 | `0x05AA` | `HandleNodnarbBall1` | 362 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `ccbeec762889` |
| 3 | `0x072A` | `HandleNodnarbBall2` | 362 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1e2034ec6184` |
| 3 | `0x08AA` | `HandleNodnarbBall3` | 362 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `2244514f831e` |
| 3 | `0x0A2A` | `HandleNodnarbBall4` | 362 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `55706175656c` |
| 3 | `0x0BAA` | `MoveOmohGrenade1` | 80 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `886dd396299a` |
| 3 | `0x0C0E` | `MoveOmohGrenade2` | 90 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `08229ff21837` |
| 3 | `0x0C7C` | `HandleOmohGrenade1` | 1104 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1252fbc74da8` |
| 3 | `0x10E2` | `HandleOmohGrenade2` | 1102 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `136da2faa40f` |
| 3 | `0x1546` | `MoveFire1` | 130 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `95890ec6929b` |
| 3 | `0x15D4` | `MoveFire2` | 130 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `137d1b081ff4` |
| 3 | `0x1662` | `HandleFire1` | 810 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `17fe3e79576c` |
| 3 | `0x199A` | `HandleFire2` | 848 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f3b50f1ff041` |
| 3 | `0x1CF8` | `MoveNightwolfReflection` | 456 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `b545242d0be1` |
| 3 | `0x1EDA` | `MoveNightwolfReflection2` | 456 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d205a646f64f` |
| 3 | `0x20BE` | `HandleNightwolfReflection` | 618 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `23cd92801743` |
| 3 | `0x2344` | `HandleNightwolfReflection2` | 620 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c557aa3596d1` |
| 3 | `0x25CE` | `MoveSektorSeeker` | 112 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c6817a5547c4` |
| 3 | `0x2652` | `MoveSektorSeeker2` | 112 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5027901dbbd5` |
| 3 | `0x26D6` | `HandleSektorSeeker` | 358 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `af9427b4791a` |
| 3 | `0x2852` | `HandleSektorSeeker2` | 358 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `496d3747dd0f` |
| 3 | `0x29CE` | `MoveGrahamDonut` | 126 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `beb14828aba5` |
| 3 | `0x2A5E` | `MoveGrahamDonut2` | 126 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `e80abf2ce321` |
| 3 | `0x2AF0` | `HandleGrahamDonut` | 192 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5256ba0015ed` |
| 3 | `0x2BC4` | `HandleGrahamDonut2` | 192 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `e6a37dd0370d` |
| 3 | `0x2C9A` | `MoveMotaroFireball1` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `9da2eea559ad` |
| 3 | `0x2CFE` | `MoveMotaroFireball2` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `fce1bfc038b9` |
| 3 | `0x2D62` | `MoveMotaroFireball3` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1597db7d96e0` |
| 3 | `0x2DC6` | `MoveMotaroFireball4` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f836b0b1d3e1` |
| 3 | `0x2E2A` | `MoveMotaroFireball5` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `854057a96617` |
| 3 | `0x2E8E` | `MoveMotaroFireball6` | 78 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `2e0036a9f1ee` |
| 3 | `0x2EF2` | `HandleMotaroFireball1` | 344 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `fb40e98c319b` |
| 3 | `0x3062` | `HandleMotaroFireball2` | 348 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3fc9e5b0262b` |
| 3 | `0x31D6` | `HandleMotaroFireball3` | 348 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3fc3246e8f8c` |
| 3 | `0x334A` | `HandleMotaroFireball4` | 346 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1db251b4f93d` |
| 3 | `0x34BC` | `HandleMotaroFireball5` | 350 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `ea284ae23cc8` |
| 3 | `0x3632` | `HandleMotaroFireball6` | 350 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `8031fc348484` |
| 3 | `0x37A8` | `MoveKungFire1` | 106 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5b3067d7620c` |
| 3 | `0x3822` | `MoveKungFire2` | 106 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `de0479bb4100` |
| 3 | `0x389C` | `HandleKungFire1` | 388 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d9d96adeaeeb` |
| 3 | `0x3A32` | `HandleKungFire2` | 378 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `a65b06321c89` |
| 3 | `0x3BBE` | `HandleShootKey` | 18698 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `b3578f43b695` |
| 3 | `0x84DA` | `MoveGroundFireball1` | 108 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `384e334c5e0e` |
| 3 | `0x855C` | `MoveGroundFireball2` | 108 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `e701a9632e38` |
| 3 | `0x85DE` | `HandleGroundFireball1Far` | 232 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `61f77959378e` |
| 3 | `0x86E2` | `HandleGroundFireball2Far` | 232 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `59f8f99299c3` |
| 3 | `0x87E6` | `HandleGroundFireball1Close` | 232 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `bc813cfc82e1` |
| 3 | `0x88EC` | `HandleGroundFireball2Close` | 232 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0b6961b08498` |
| 3 | `0x89F2` | `MoveKabalRazor` | 90 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `7d9a437c1504` |
| 3 | `0x8A5E` | `MoveKabalRazor2` | 90 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `edcb9d5cdf5e` |
| 3 | `0x8ACA` | `HandleKabalRazor` | 746 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `aab560415394` |
| 3 | `0x8DC8` | `HandleKabalRazor2` | 748 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `8a0ba934f480` |
| 3 | `0x90C8` | `MoveCyraxBomb1` | 106 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `ab0d0a3ee839` |
| 3 | `0x9144` | `MoveCyraxBomb2` | 100 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `26e8db854943` |
| 3 | `0x91BA` | `HandleCyraxBomb1` | 110 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `a5cc0bd3f20e` |
| 3 | `0x923C` | `HandleCyraxBomb2` | 100 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f6013892c458` |
| 3 | `0x92B4` | `MoveShowerFreeze1` | 74 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `a44dafc1ec4f` |
| 3 | `0x9312` | `MoveShowerFreeze2` | 74 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `2ac46e52b213` |
| 3 | `0x9370` | `HandleShowerFreeze1` | 396 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `342e01098f82` |
| 3 | `0x9512` | `HandleShowerFreeze2` | 396 | Special moves | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c18718de1db9` |
| 4 | `0x0008` | `HandleFatalKey1` | 8986 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c8b9eee07345` |
| 4 | `0x2334` | `HandleFatalKey2` | 9004 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3ba99bd8b481` |
| 4 | `0x4672` | `SetupSindelFootballFatality` | 320 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0a7204b45833` |
| 4 | `0x47D0` | `SetupSindelFootballFatality2` | 312 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `bfde5c63d17e` |
| 4 | `0x4928` | `DoSindelFootballFatality` | 1750 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0b3cb3b8a58e` |
| 4 | `0x501A` | `DoSindelFootballFatality2` | 1754 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `14fdc3dd958c` |
| 4 | `0x5710` | `LoadCyraxHellFatalitySounds` | 28 | Finishers | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `2783aef1b8a7` |
| 4 | `0x574A` | `SetupCyraxHellFatality` | 294 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f35bd1ce3624` |
| 4 | `0x588A` | `SetupCyraxHellFatality2` | 294 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4bd2568f5b21` |
| 4 | `0x59CA` | `DoCyraxHellFatality` | 1116 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `867f460112d2` |
| 4 | `0x5E3C` | `DoCyraxHellFatality2` | 1110 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c0f861b6f05e` |
| 4 | `0x62AA` | `LoadArcadeSounds` | 54 | Finishers | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `51c2e7870323` |
| 4 | `0x62F4` | `SetupLiuArcadeFatality2` | 506 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `766373f0cd7c` |
| 4 | `0x6508` | `SetupLiuArcadeFatality` | 514 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0d1703881c6a` |
| 4 | `0x6724` | `DoLiuArcadeFatality` | 982 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5a6ba79794c0` |
| 4 | `0x6B10` | `DoLiuArcadeFatality2` | 982 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `cb293d3bec9f` |
| 4 | `0x6EFE` | `SetupNightwolfMoonFatality` | 242 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `6a412e9ed0aa` |
| 4 | `0x700E` | `SetupNightwolfMoonFatality2` | 242 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `ffa747bba3b0` |
| 4 | `0x711E` | `DoNightwolfMoonFatality` | 396 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `7036af013a74` |
| 4 | `0x72C4` | `DoNightwolfMoonFatality2` | 396 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3105acc50ce1` |
| 4 | `0x746C` | `SetupNightwolfRaidenFatality` | 422 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3e6f1904eacf` |
| 4 | `0x7632` | `SetupNightwolfRaidenFatality2` | 418 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5ffa7cce9dbb` |
| 4 | `0x77F4` | `DoNightwolfRaidenFatality` | 1070 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d953fe714320` |
| 4 | `0x7C3E` | `DoNightwolfRaidenFatality2` | 1064 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4ed4d81581a7` |
| 4 | `0x8084` | `SetupBabality` | 220 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `24123cbb7249` |
| 4 | `0x8170` | `SetupBabality2` | 212 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0424387519bd` |
| 4 | `0x8256` | `DoBabality` | 764 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d6b2e3ea516c` |
| 4 | `0x8560` | `DoBabality2` | 764 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0ea42a3e8f2d` |
| 4 | `0x886A` | `SetupSektorSmashFatality` | 168 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d0f3b01d392e` |
| 4 | `0x892E` | `SetupSektorSmashFatality2` | 168 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d0f3b01d392e` |
| 4 | `0x89F2` | `DoSektorSmashFatality` | 902 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5d50fc4446e0` |
| 4 | `0x8D90` | `DoSektorSmashFatality2` | 902 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `8d8a6a286fd7` |
| 4 | `0x9130` | `LoadHatSounds` | 28 | Finishers | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `76f481b956c2` |
| 4 | `0x915C` | `SetupKungHatFatality1` | 554 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `f677eb98c2c9` |
| 4 | `0x939E` | `SetupKungHatFatality2` | 552 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5d078b733867` |
| 4 | `0x95DE` | `DoKungHatFatality1` | 756 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1eb50dbbaeaf` |
| 4 | `0x98E8` | `DoKungHatFatality2` | 760 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `6b5617e6ef0a` |
| 4 | `0x9BF6` | `LoadIceSounds` | 54 | Finishers | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `9640ec622c4e` |
| 4 | `0x9C3C` | `SetupSubIceFatality` | 398 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `cf3e334df9f3` |
| 4 | `0x9DE0` | `SetupSubIceFatality2` | 390 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `3303b9c5323c` |
| 4 | `0x9F7E` | `DoSubIceFatality` | 1620 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `2008c2d3cdab` |
| 4 | `0xA5E6` | `DoSubIceFatality2` | 1612 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `138411869e4a` |
| 4 | `0xAC46` | `SetupKabalBalloonFatality` | 508 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `eb83ba6a0236` |
| 4 | `0xAE5E` | `SetupKabalBalloonFatality2` | 506 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `6e7ef643c04f` |
| 4 | `0xB076` | `DoKabalBalloonFatality` | 3014 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `ac0623535dd5` |
| 4 | `0xBC56` | `DoKabalBalloonFatality2` | 3014 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `76e4f4f4b371` |
| 4 | `0xC836` | `SetupSindelScreamFatality` | 112 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4f8b0fd5c335` |
| 4 | `0xC8C2` | `SetupSindelScreamFatality2` | 110 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `9fe5c2ff739d` |
| 4 | `0xC94E` | `DoSindelScreamFatality` | 410 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `536aa42170d4` |
| 4 | `0xCB02` | `DoSindelScreamFatality2` | 412 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `b82b135e6ad6` |
| 4 | `0xCCB8` | `SetupNodnarbBallFatality` | 198 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `d6ab26335392` |
| 4 | `0xCD9A` | `SetupNodnarbBallFatality2` | 196 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `e1a5682f36d0` |
| 4 | `0xCE7A` | `DoNodnarbBallFatality` | 420 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `7b76a7375575` |
| 4 | `0xD036` | `DoNodnarbBallFatality2` | 420 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `8e870e80dc6d` |
| 4 | `0xD1F4` | `SetupShovaInvisibleFatality` | 224 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1cac7344b55e` |
| 4 | `0xD2F2` | `SetupShovaInvisibleFatality2` | 222 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5b6db3a082fa` |
| 4 | `0xD3F0` | `DoShovaInvisibleFatality` | 1188 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `5fe2a2861233` |
| 4 | `0xD8B0` | `DoShovaInvisibleFatality2` | 1192 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `29d7d328e364` |
| 4 | `0xDD74` | `SetupOmohStompFatality` | 354 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `0382f4dc366f` |
| 4 | `0xDEF0` | `SetupOmohStompFatality2` | 356 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c2602f2803ce` |
| 4 | `0xE06E` | `DoOmohStompFatality` | 806 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `69f5219b12f1` |
| 4 | `0xE3AA` | `DoOmohStompFatality2` | 802 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `1609ff40a723` |
| 4 | `0xE6E4` | `SetupOmohKissFatality` | 160 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `149e13a100c3` |
| 4 | `0xE79C` | `SetupOmohKissFatality2` | 158 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `b6bc0db8bff4` |
| 4 | `0xE854` | `DoOmohKissFatality` | 1498 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `7b7739430d27` |
| 4 | `0xEE44` | `DoOmohKissFatality2` | 1500 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `10ada48d2489` |
| 4 | `0xF436` | `SetupSektorClampFatality` | 336 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4178e06f615d` |
| 4 | `0xF5A2` | `SetupSektorClampFatality2` | 336 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `efaa73a9c663` |
| 4 | `0xF70E` | `DoSektorClampFatality` | 1102 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `a0deb251b829` |
| 4 | `0xFB74` | `DoSektorClampFatality2` | 1112 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `a9363edd0e71` |
| 4 | `0xFFE6` | `SetupShangSoulFatality` | 228 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `72c76f71ab16` |
| 4 | `0x100E4` | `SetupShangSoulFatality2` | 226 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `66e83795b973` |
| 4 | `0x101E0` | `DoShangSoulFatality` | 554 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `c746f353ff6c` |
| 4 | `0x10420` | `DoShangSoulFatality2` | 554 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `6d91ea4bbb65` |
| 4 | `0x10662` | `SetupShangSpikeFatality` | 344 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `95112fae0412` |
| 4 | `0x107D4` | `SetupShangSpikeFatality2` | 338 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `6c01bfd9432d` |
| 4 | `0x10942` | `DoShangSpikeFatality` | 592 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `4cfdd8a96048` |
| 4 | `0x10BAA` | `DoShangSpikeFatality2` | 592 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `520daf91a0e1` |
| 4 | `0x10E12` | `SetupKabalRazorFatality` | 122 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `206de4811bf8` |
| 4 | `0x10EA6` | `SetupKabalRazorFatality2` | 120 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `2d92e5d3861a` |
| 4 | `0x10F3A` | `DoKabalRazorFatality` | 1194 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `681517e74f37` |
| 4 | `0x113FC` | `DoKabalRazorFatality2` | 1196 | Finishers | Reimplemented | src/game_data.cpp + src/game.cpp (data-driven sequences/effects) | `567313393b0e` |
| 5 | `0x0008` | `DoNewRegistration` | 86 | Input / kodes | Retired | Classic shareware registration gate removed; recovered routine remains audited | `e1f93d64a2f6` |
| 5 | `0x0072` | `DoMenus` | 406 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `89fe6e23ae8b` |
| 5 | `0x0212` | `DoIntro` | 1620 | UI / flow | Reimplemented | src/game.cpp + src/app.cpp | `37be21d6c5b9` |
| 6 | `0x0008` | `CloseDownTheSoundOne` | 42 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `64887c6ac3c7` |
| 6 | `0x004A` | `CloseDownTheSoundTwo` | 42 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `61f957bed59e` |
| 6 | `0x008C` | `CloseDownTheSoundThree` | 42 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `85375fc384ff` |
| 6 | `0x00D0` | `InitializeForSound` | 82 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `dc209af4bf5a` |
| 6 | `0x0138` | `FlushSoundNowThree` | 144 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `16693715d9c7` |
| 6 | `0x01DE` | `PlayASoundOneHandle` | 172 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `8f44ae6fe053` |
| 6 | `0x02A0` | `PlayASoundTwoHandle` | 172 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `67b5ac4ab3da` |
| 6 | `0x0362` | `PlayASoundThreeHandle` | 172 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `895bd8ba1b39` |
| 6 | `0x0426` | `PlayASoundOne` | 198 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `6419c4472e11` |
| 6 | `0x04FC` | `PlayASoundTwo` | 198 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `bb721ff68ff4` |
| 6 | `0x05D2` | `PlayASoundThree` | 198 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `309d020ca3d8` |
| 6 | `0x06AA` | `PlaySynchSound` | 162 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `067a518e99b7` |
| 6 | `0x075E` | `PlayLoopSoundOne` | 168 | Audio | Reimplemented | src/audio.cpp (embedded PCM + waveOut voices) | `374514165a24` |
| 6 | `0x081A` | `RedAlert` | 82 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `958c633dac41` |
| 6 | `0x0878` | `MacHasSystem7` | 46 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `d839bb41fe2b` |
| 6 | `0x08B6` | `ChangeTheDepth` | 70 | Platform | Reimplemented | src/renderer.cpp + embedded Win32 resources | `97afea1386da` |
| 6 | `0x090E` | `RestoreTheDepth` | 46 | Platform | Reimplemented | src/renderer.cpp + embedded Win32 resources | `9c80e62f67c4` |
| 6 | `0x094E` | `CheckEnvironment` | 32 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `e91e1a8603e1` |
| 6 | `0x0982` | `ErrorAlert` | 80 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `2fc24b1d808e` |
| 6 | `0x09E0` | `InitToolbox` | 62 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `260dbdff5ac7` |
| 6 | `0x0A2C` | `CreateOffScreenBitMap` | 150 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `cf253bd95ffc` |
| 6 | `0x0ADA` | `CreateOffScreenPixMap` | 298 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `e9063ce4253a` |
| 6 | `0x0C1C` | `LoadGraphic` | 96 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `1655c757f94d` |
| 6 | `0x0C8A` | `Words` | 1876 | Core gameplay | Reimplemented | src/game.cpp (fixed-step native simulation/state machine) | `0244dd00ea55` |
| 8 | `0x0008` | `MacOSTailDispatch` | 18 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `7f934ffaf96f` |
| 8 | `0x001A` | `MacOSHandleAdapter` | 16 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `4e33837ec947` |
| 8 | `0x002A` | `GetIndexedString` | 70 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `36603e3ac92a` |
| 8 | `0x0070` | `MacOSHandleSizeAdapter` | 22 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `5bceb01d715e` |
| 8 | `0x0086` | `MacOSStackBlockAdapter` | 34 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `2a5e12822f4d` |
| 8 | `0x00A8` | `MacOSPointerTailDispatch` | 14 | Platform | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `c4d1856bc26d` |
| 9 | `0x0008` | `strcpy` | 28 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `865c07bf1046` |
| 9 | `0x0024` | `strlen` | 20 | Runtime | Replaced | src/app.cpp / Win32 runtime; obsolete Classic Mac toolbox shim retired | `147fd2d631fc` |
