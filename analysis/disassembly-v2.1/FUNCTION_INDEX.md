# Pong Kombat 3 v2.1 function audit index

This index covers 300 bounded 68000 functions across the patched CODE resources. Each body is disassembled in `segments/`, hashed independently, and classified by subsystem. MacsBug source symbols are preserved where present; runtime helpers without source symbols are named from their observed behavior.

| CODE | Offset | Bytes | Function | Subsystem | Calls | Traps | Audit summary |
|---:|---:|---:|---|---|---:|---:|---|
| 1 | `0x0000` | 280 | `SegmentBootstrap` | Runtime | 7 | 17 | Loads CODE/DATA resources and starts the application runtime. |
| 1 | `0x0118` | 40 | `RunExitProcedures` | Runtime | 1 | 0 | Runs and removes registered application-exit callbacks. |
| 1 | `0x0140` | 182 | `LoadCodeSegment` | Runtime | 4 | 7 | Loads and fixes up a movable classic-Mac code segment. |
| 1 | `0x01F6` | 106 | `UnloadCodeSegment` | Runtime | 1 | 3 | Releases a previously loaded classic-Mac code segment. |
| 1 | `0x0260` | 256 | `DecodeXref` | Runtime | 0 | 1 | Decodes the compact XREF relocation stream. |
| 1 | `0x0360` | 116 | `ApplyXref` | Runtime | 0 | 0 | Applies decoded relocation deltas to a segment image. |
| 1 | `0x03D4` | 92 | `SegmentLoader` | Runtime | 4 | 3 | Loads an XREF resource and performs segment relocation. |
| 1 | `0x0430` | 32 | `UnsignedMultiply32` | Runtime | 0 | 0 | Implements an unsigned 32-bit multiply helper. |
| 1 | `0x0450` | 110 | `UnsignedDivide32` | Runtime | 1 | 0 | Implements an unsigned 32-bit division helper. |
| 1 | `0x04BE` | 40 | `UnsignedDivide32Remainder` | Runtime | 0 | 0 | Computes a 32-bit division remainder. |
| 1 | `0x04E6` | 32 | `UnsignedDivide16Step` | Runtime | 0 | 0 | Performs the compiler runtime's 16-step division loop. |
| 1 | `0x0506` | 2 | `NoopStub` | Core gameplay | 0 | 0 | Returns immediately; used as an empty runtime hook. |
| 1 | `0x0508` | 692 | `DoKontinue` | Core gameplay | 6 | 19 | Runs the kontinue sequence. |
| 1 | `0x07CA` | 204 | `SelectionScreen` | UI / flow | 11 | 2 | Implements selection screen. |
| 1 | `0x08A8` | 92 | `VSScreen` | UI / flow | 6 | 3 | Implements vs screen. |
| 1 | `0x0910` | 152 | `VSScreenCPU` | AI | 3 | 3 | Implements vs screen cpu. |
| 1 | `0x09B6` | 68 | `DoCongratulations` | UI / flow | 3 | 0 | Runs the congratulations sequence. |
| 1 | `0x0A0E` | 1400 | `RollKredits` | UI / flow | 8 | 154 | Implements roll kredits. |
| 1 | `0x0F94` | 130 | `SetBallSpeed` | Core gameplay | 0 | 0 | Sets ball speed state or configuration. |
| 1 | `0x1026` | 1072 | `DoGameLoop` | Core gameplay | 38 | 11 | Runs the game loop sequence. |
| 1 | `0x1464` | 112 | `ResetValues2` | Core gameplay | 1 | 0 | Resets values2 state. |
| 1 | `0x14E4` | 156 | `ResetValues` | Core gameplay | 1 | 0 | Resets values state. |
| 1 | `0x158E` | 110 | `DoGameOver` | Core gameplay | 3 | 4 | Runs the game over sequence. |
| 1 | `0x160A` | 142 | `OpenMainWindow` | Core gameplay | 0 | 10 | Implements open main window. |
| 1 | `0x16AA` | 152 | `main` | Core gameplay | 10 | 6 | Implements main. |
| 1 | `0x174A` | 320 | `LoadDeathSounds` | Audio | 0 | 10 | Loads resources needed for death sounds. |
| 1 | `0x189C` | 1818 | `LoadTheSounds` | Audio | 0 | 62 | Loads resources needed for the sounds. |
| 1 | `0x1FC6` | 1854 | `DoGame` | Core gameplay | 24 | 14 | Runs the game sequence. |
| 1 | `0x270E` | 1396 | `MoveEverything` | Core gameplay | 64 | 7 | Advances the everything position or animation. |
| 1 | `0x2C94` | 7410 | `ShowEverything` | Core gameplay | 51 | 146 | Renders or reveals everything. |
| 1 | `0x4998` | 80 | `CopyOne` | Core gameplay | 0 | 2 | Copies one graphics to the active surface. |
| 1 | `0x49F2` | 80 | `CopyFight` | Core gameplay | 0 | 2 | Copies fight graphics to the active surface. |
| 1 | `0x4A4E` | 42 | `InitializeEverything` | Core gameplay | 6 | 0 | Initializes everything. |
| 1 | `0x4A90` | 32 | `DoDelay` | Core gameplay | 0 | 2 | Runs the delay sequence. |
| 1 | `0x4ABA` | 32 | `DoDelay2` | Core gameplay | 0 | 2 | Runs the delay2 sequence. |
| 1 | `0x4AE6` | 272 | `InitSelectCrap` | Core gameplay | 4 | 5 | Initializes select crap. |
| 1 | `0x4C08` | 264 | `InitGameCrap` | Core gameplay | 11 | 1 | Initializes game crap. |
| 1 | `0x4D20` | 964 | `DrawInNames` | Core gameplay | 31 | 0 | Draws in names to the game surface. |
| 1 | `0x50F2` | 982 | `ShowWinner` | Core gameplay | 24 | 9 | Renders or reveals winner. |
| 1 | `0x54D6` | 396 | `ScaleFinish` | Finishers | 0 | 8 | Implements scale finish. |
| 1 | `0x5670` | 2730 | `CheckKodeMatch` | Input / kodes | 0 | 0 | Evaluates kode match conditions. |
| 1 | `0x612C` | 2530 | `HandleTheFatalities` | Finishers | 135 | 0 | Updates the fatalities state and interactions. |
| 1 | `0x6B24` | 66 | `LoadPreferences` | Core gameplay | 1 | 3 | Loads resources needed for preferences. |
| 1 | `0x6B78` | 332 | `SavePreferences` | Core gameplay | 0 | 8 | Implements save preferences. |
| 1 | `0x6CD6` | 18 | `saveRegistration` | Input / kodes | 1 | 0 | Implements save registration. |
| 1 | `0x6CFC` | 254 | `FeedbackKey` | Input / kodes | 0 | 3 | Implements feedback key. |
| 1 | `0x6E08` | 486 | `DoKeyConfiguration` | Input / kodes | 14 | 6 | Runs the key configuration sequence. |
| 1 | `0x7004` | 194 | `RegisterKey` | Input / kodes | 0 | 0 | Implements register key. |
| 1 | `0x70D4` | 224 | `InitMiniVersus` | Core gameplay | 4 | 1 | Initializes mini versus. |
| 1 | `0x71C6` | 130 | `InitVersusCrap` | Core gameplay | 8 | 0 | Initializes versus crap. |
| 1 | `0x725A` | 42 | `InitVersusCrapCPU` | AI | 2 | 1 | Initializes versus crap cpu. |
| 1 | `0x7298` | 66 | `CheckKey2` | Input / kodes | 0 | 1 | Evaluates key2 conditions. |
| 1 | `0x72E6` | 466 | `HandleRegisterKeyDown` | Input / kodes | 12 | 0 | Updates register key down state and interactions. |
| 1 | `0x74D0` | 654 | `HandleVSKeyDown` | Input / kodes | 24 | 0 | Updates vs key down state and interactions. |
| 1 | `0x7770` | 132 | `ChangeKodeBox` | Input / kodes | 0 | 2 | Implements change kode box. |
| 1 | `0x7804` | 34 | `MoveVersusCrap` | Core gameplay | 1 | 1 | Advances the versus crap position or animation. |
| 1 | `0x7838` | 336 | `MoveRegistration` | Input / kodes | 1 | 8 | Advances the registration position or animation. |
| 1 | `0x799C` | 100 | `CheckRegistration` | Input / kodes | 3 | 0 | Evaluates registration conditions. |
| 1 | `0x7A14` | 122 | `DrawVSPicts` | Core gameplay | 0 | 9 | Draws vs picts to the game surface. |
| 1 | `0x7A9C` | 528 | `DrawVSPictsCPU` | AI | 0 | 27 | Draws vs picts cpu to the game surface. |
| 1 | `0x7CBE` | 290 | `DrawBackground2` | Core gameplay | 0 | 9 | Draws background2 to the game surface. |
| 1 | `0x7DF2` | 220 | `DrawBackground` | Core gameplay | 0 | 16 | Draws background to the game surface. |
| 1 | `0x7EE0` | 52 | `ReplacePicture` | Core gameplay | 0 | 5 | Implements replace picture. |
| 1 | `0x7F26` | 1672 | `CheckPlayer1Key` | Input / kodes | 13 | 47 | Evaluates player1 key conditions. |
| 1 | `0x85C0` | 1468 | `CheckPlayer2Key` | Input / kodes | 11 | 40 | Evaluates player2 key conditions. |
| 1 | `0x8B8E` | 98 | `HandleKeyDown` | Input / kodes | 2 | 0 | Updates key down state and interactions. |
| 1 | `0x8C00` | 158 | `ChangeIcon1` | Core gameplay | 0 | 3 | Implements change icon1. |
| 1 | `0x8CAC` | 164 | `ChangeIcon2` | Core gameplay | 0 | 3 | Implements change icon2. |
| 1 | `0x8D5E` | 426 | `MoveSelectCrap` | Core gameplay | 15 | 3 | Advances the select crap position or animation. |
| 1 | `0x8F1A` | 504 | `ShowSelectCrap` | Core gameplay | 0 | 13 | Renders or reveals select crap. |
| 1 | `0x9124` | 218 | `DoStory` | Core gameplay | 17 | 0 | Runs the story sequence. |
| 1 | `0x9208` | 316 | `ShangEnding` | Core gameplay | 14 | 0 | Implements shang ending. |
| 1 | `0x9352` | 356 | `SindelEnding` | Core gameplay | 16 | 0 | Implements sindel ending. |
| 1 | `0x94C6` | 374 | `LiuEnding` | Core gameplay | 17 | 0 | Implements liu ending. |
| 1 | `0x9648` | 418 | `SubEnding` | Core gameplay | 19 | 0 | Implements sub ending. |
| 1 | `0x97F6` | 458 | `OmohEnding` | Core gameplay | 21 | 0 | Implements omoh ending. |
| 1 | `0x99CE` | 398 | `CyraxEnding` | Core gameplay | 18 | 0 | Implements cyrax ending. |
| 1 | `0x9B6A` | 416 | `SektorEnding` | Core gameplay | 19 | 0 | Implements sektor ending. |
| 1 | `0x9D1A` | 438 | `KungEnding` | Core gameplay | 20 | 0 | Implements kung ending. |
| 1 | `0x9EDE` | 518 | `KabalEnding` | Core gameplay | 24 | 0 | Implements kabal ending. |
| 1 | `0xA0F2` | 274 | `ShaoEnding` | Core gameplay | 12 | 0 | Implements shao ending. |
| 1 | `0xA212` | 294 | `MotaroEnding` | Core gameplay | 13 | 0 | Implements motaro ending. |
| 1 | `0xA348` | 620 | `NodnarbEnding` | Core gameplay | 29 | 0 | Implements nodnarb ending. |
| 1 | `0xA5C4` | 334 | `NightwolfEnding` | Core gameplay | 15 | 0 | Implements nightwolf ending. |
| 1 | `0xA724` | 118 | `DrawBlackScreen` | Core gameplay | 0 | 7 | Draws black screen to the game surface. |
| 1 | `0xA7AC` | 60 | `CreateWindow` | Core gameplay | 0 | 5 | Implements create window. |
| 1 | `0xA7F8` | 1470 | `SetTheGameRects` | Core gameplay | 0 | 44 | Sets the game rects state or configuration. |
| 1 | `0xADC8` | 2570 | `SetTheRects` | Core gameplay | 0 | 140 | Sets the rects state or configuration. |
| 1 | `0xB7E0` | 150 | `SetThePorts` | Core gameplay | 11 | 0 | Sets the ports state or configuration. |
| 2 | `0x0008` | 894 | `HandleBall` | Core gameplay | 8 | 21 | Updates ball state and interactions. |
| 2 | `0x0394` | 156 | `HandleDecoyBall` | Core gameplay | 0 | 1 | Updates decoy ball state and interactions. |
| 2 | `0x0442` | 58 | `Player1BallEnergyOff` | Core gameplay | 0 | 0 | Starts playback for er1 ball energy off. |
| 2 | `0x0494` | 58 | `Player2BallEnergyOff` | Core gameplay | 0 | 0 | Starts playback for er2 ball energy off. |
| 2 | `0x04E6` | 1610 | `PrintSpecialMessages` | Core gameplay | 52 | 0 | Renders the special messages message or overlay. |
| 2 | `0x0B48` | 554 | `HandleFight` | Core gameplay | 5 | 12 | Updates fight state and interactions. |
| 2 | `0x0D80` | 524 | `HandlePlayer1` | Core gameplay | 8 | 7 | Updates player1 state and interactions. |
| 2 | `0x0F9C` | 498 | `HandlePlayer2` | Core gameplay | 8 | 7 | Updates player2 state and interactions. |
| 2 | `0x119E` | 90 | `Player1EnergyOff` | Core gameplay | 0 | 0 | Starts playback for er1 energy off. |
| 2 | `0x120C` | 30 | `Player2EnergyOff` | Core gameplay | 0 | 0 | Starts playback for er2 energy off. |
| 2 | `0x123E` | 110 | `FastCounter` | Core gameplay | 6 | 0 | Implements fast counter. |
| 2 | `0x12BA` | 110 | `FasterKredits` | UI / flow | 6 | 0 | Implements faster kredits. |
| 2 | `0x1338` | 66 | `CheckKey` | Input / kodes | 0 | 1 | Evaluates key conditions. |
| 2 | `0x1386` | 150 | `CPUFireLimits` | AI | 0 | 0 | Implements cpu fire limits. |
| 2 | `0x142C` | 110 | `CPUMoveLimits` | AI | 0 | 1 | Implements cpu move limits. |
| 2 | `0x14AA` | 88 | `CPUOffScreen` | AI | 0 | 0 | Implements cpu off screen. |
| 2 | `0x1512` | 322 | `CPUDodge` | AI | 1 | 9 | Implements cpu dodge. |
| 2 | `0x1660` | 292 | `HandlePlayer2CPUEasy` | AI | 3 | 5 | Updates player2 cpu easy state and interactions. |
| 2 | `0x179C` | 644 | `HandlePlayer2CPUMedium` | AI | 14 | 5 | Updates player2 cpu medium state and interactions. |
| 2 | `0x1A3A` | 578 | `HandlePlayer2CPUHard` | AI | 14 | 2 | Updates player2 cpu hard state and interactions. |
| 2 | `0x1C94` | 284 | `HandleMotaro2CPUHard` | AI | 7 | 3 | Updates motaro2 cpu hard state and interactions. |
| 2 | `0x1DC8` | 188 | `HandleShao2CPUHard` | AI | 4 | 3 | Updates shao2 cpu hard state and interactions. |
| 2 | `0x1E9A` | 38 | `HandleShangCPU` | AI | 1 | 0 | Updates shang cpu state and interactions. |
| 2 | `0x1ED2` | 102 | `HandleSindelCPU` | AI | 0 | 0 | Updates sindel cpu state and interactions. |
| 2 | `0x1F4A` | 80 | `HandleSubCPU` | AI | 0 | 0 | Updates sub cpu state and interactions. |
| 2 | `0x1FAA` | 14 | `HandleCyraxCPU` | AI | 0 | 0 | Updates cyrax cpu state and interactions. |
| 2 | `0x1FCA` | 60 | `HandleKungCPU` | AI | 0 | 0 | Updates kung cpu state and interactions. |
| 3 | `0x0008` | 78 | `MoveSindelDiagFireball1` | Special moves | 1 | 1 | Advances the sindel diag fireball1 position or animation. |
| 3 | `0x0070` | 82 | `MoveSindelDiagFireball2` | Special moves | 1 | 1 | Advances the sindel diag fireball2 position or animation. |
| 3 | `0x00DC` | 436 | `HandleSindelDiagFireball1` | Special moves | 2 | 11 | Updates sindel diag fireball1 state and interactions. |
| 3 | `0x02AC` | 418 | `HandleSindelDiagFireball2` | Special moves | 2 | 10 | Updates sindel diag fireball2 state and interactions. |
| 3 | `0x046A` | 66 | `SetupNBall1` | Special moves | 1 | 0 | Initializes the n ball1 sequence and its state. |
| 3 | `0x04BA` | 66 | `SetupNBall2` | Special moves | 1 | 0 | Initializes the n ball2 sequence and its state. |
| 3 | `0x050A` | 66 | `SetupNBall3` | Special moves | 1 | 0 | Initializes the n ball3 sequence and its state. |
| 3 | `0x055A` | 66 | `SetupNBall4` | Special moves | 1 | 0 | Initializes the n ball4 sequence and its state. |
| 3 | `0x05AA` | 362 | `HandleNodnarbBall1` | Special moves | 2 | 6 | Updates nodnarb ball1 state and interactions. |
| 3 | `0x072A` | 362 | `HandleNodnarbBall2` | Special moves | 2 | 6 | Updates nodnarb ball2 state and interactions. |
| 3 | `0x08AA` | 362 | `HandleNodnarbBall3` | Special moves | 2 | 6 | Updates nodnarb ball3 state and interactions. |
| 3 | `0x0A2A` | 362 | `HandleNodnarbBall4` | Special moves | 2 | 6 | Updates nodnarb ball4 state and interactions. |
| 3 | `0x0BAA` | 80 | `MoveOmohGrenade1` | Special moves | 0 | 1 | Advances the omoh grenade1 position or animation. |
| 3 | `0x0C0E` | 90 | `MoveOmohGrenade2` | Special moves | 1 | 1 | Advances the omoh grenade2 position or animation. |
| 3 | `0x0C7C` | 1104 | `HandleOmohGrenade1` | Special moves | 2 | 28 | Updates omoh grenade1 state and interactions. |
| 3 | `0x10E2` | 1102 | `HandleOmohGrenade2` | Special moves | 2 | 28 | Updates omoh grenade2 state and interactions. |
| 3 | `0x1546` | 130 | `MoveFire1` | Special moves | 1 | 1 | Advances the fire1 position or animation. |
| 3 | `0x15D4` | 130 | `MoveFire2` | Special moves | 1 | 1 | Advances the fire2 position or animation. |
| 3 | `0x1662` | 810 | `HandleFire1` | Special moves | 4 | 22 | Updates fire1 state and interactions. |
| 3 | `0x199A` | 848 | `HandleFire2` | Special moves | 4 | 22 | Updates fire2 state and interactions. |
| 3 | `0x1CF8` | 456 | `MoveNightwolfReflection` | Special moves | 0 | 17 | Advances the nightwolf reflection position or animation. |
| 3 | `0x1EDA` | 456 | `MoveNightwolfReflection2` | Special moves | 0 | 17 | Advances the nightwolf reflection2 position or animation. |
| 3 | `0x20BE` | 618 | `HandleNightwolfReflection` | Special moves | 3 | 11 | Updates nightwolf reflection state and interactions. |
| 3 | `0x2344` | 620 | `HandleNightwolfReflection2` | Special moves | 3 | 11 | Updates nightwolf reflection2 state and interactions. |
| 3 | `0x25CE` | 112 | `MoveSektorSeeker` | Special moves | 1 | 1 | Advances the sektor seeker position or animation. |
| 3 | `0x2652` | 112 | `MoveSektorSeeker2` | Special moves | 1 | 1 | Advances the sektor seeker2 position or animation. |
| 3 | `0x26D6` | 358 | `HandleSektorSeeker` | Special moves | 2 | 9 | Updates sektor seeker state and interactions. |
| 3 | `0x2852` | 358 | `HandleSektorSeeker2` | Special moves | 2 | 9 | Updates sektor seeker2 state and interactions. |
| 3 | `0x29CE` | 126 | `MoveGrahamDonut` | Special moves | 1 | 2 | Advances the graham donut position or animation. |
| 3 | `0x2A5E` | 126 | `MoveGrahamDonut2` | Special moves | 1 | 2 | Advances the graham donut2 position or animation. |
| 3 | `0x2AF0` | 192 | `HandleGrahamDonut` | Special moves | 1 | 6 | Updates graham donut state and interactions. |
| 3 | `0x2BC4` | 192 | `HandleGrahamDonut2` | Special moves | 1 | 6 | Updates graham donut2 state and interactions. |
| 3 | `0x2C9A` | 78 | `MoveMotaroFireball1` | Special moves | 1 | 1 | Advances the motaro fireball1 position or animation. |
| 3 | `0x2CFE` | 78 | `MoveMotaroFireball2` | Special moves | 1 | 1 | Advances the motaro fireball2 position or animation. |
| 3 | `0x2D62` | 78 | `MoveMotaroFireball3` | Special moves | 1 | 1 | Advances the motaro fireball3 position or animation. |
| 3 | `0x2DC6` | 78 | `MoveMotaroFireball4` | Special moves | 1 | 1 | Advances the motaro fireball4 position or animation. |
| 3 | `0x2E2A` | 78 | `MoveMotaroFireball5` | Special moves | 1 | 1 | Advances the motaro fireball5 position or animation. |
| 3 | `0x2E8E` | 78 | `MoveMotaroFireball6` | Special moves | 1 | 1 | Advances the motaro fireball6 position or animation. |
| 3 | `0x2EF2` | 344 | `HandleMotaroFireball1` | Special moves | 2 | 8 | Updates motaro fireball1 state and interactions. |
| 3 | `0x3062` | 348 | `HandleMotaroFireball2` | Special moves | 2 | 8 | Updates motaro fireball2 state and interactions. |
| 3 | `0x31D6` | 348 | `HandleMotaroFireball3` | Special moves | 2 | 8 | Updates motaro fireball3 state and interactions. |
| 3 | `0x334A` | 346 | `HandleMotaroFireball4` | Special moves | 2 | 8 | Updates motaro fireball4 state and interactions. |
| 3 | `0x34BC` | 350 | `HandleMotaroFireball5` | Special moves | 2 | 8 | Updates motaro fireball5 state and interactions. |
| 3 | `0x3632` | 350 | `HandleMotaroFireball6` | Special moves | 2 | 8 | Updates motaro fireball6 state and interactions. |
| 3 | `0x37A8` | 106 | `MoveKungFire1` | Special moves | 1 | 1 | Advances the kung fire1 position or animation. |
| 3 | `0x3822` | 106 | `MoveKungFire2` | Special moves | 1 | 1 | Advances the kung fire2 position or animation. |
| 3 | `0x389C` | 388 | `HandleKungFire1` | Special moves | 3 | 9 | Updates kung fire1 state and interactions. |
| 3 | `0x3A32` | 378 | `HandleKungFire2` | Special moves | 3 | 8 | Updates kung fire2 state and interactions. |
| 3 | `0x3BBE` | 18698 | `HandleShootKey` | Special moves | 113 | 495 | Updates shoot key state and interactions. |
| 3 | `0x84DA` | 108 | `MoveGroundFireball1` | Special moves | 1 | 1 | Advances the ground fireball1 position or animation. |
| 3 | `0x855C` | 108 | `MoveGroundFireball2` | Special moves | 1 | 1 | Advances the ground fireball2 position or animation. |
| 3 | `0x85DE` | 232 | `HandleGroundFireball1Far` | Special moves | 2 | 5 | Updates ground fireball1 far state and interactions. |
| 3 | `0x86E2` | 232 | `HandleGroundFireball2Far` | Special moves | 2 | 5 | Updates ground fireball2 far state and interactions. |
| 3 | `0x87E6` | 232 | `HandleGroundFireball1Close` | Special moves | 2 | 5 | Updates ground fireball1 close state and interactions. |
| 3 | `0x88EC` | 232 | `HandleGroundFireball2Close` | Special moves | 2 | 5 | Updates ground fireball2 close state and interactions. |
| 3 | `0x89F2` | 90 | `MoveKabalRazor` | Special moves | 1 | 1 | Advances the kabal razor position or animation. |
| 3 | `0x8A5E` | 90 | `MoveKabalRazor2` | Special moves | 1 | 1 | Advances the kabal razor2 position or animation. |
| 3 | `0x8ACA` | 746 | `HandleKabalRazor` | Special moves | 3 | 15 | Updates kabal razor state and interactions. |
| 3 | `0x8DC8` | 748 | `HandleKabalRazor2` | Special moves | 3 | 15 | Updates kabal razor2 state and interactions. |
| 3 | `0x90C8` | 106 | `MoveCyraxBomb1` | Special moves | 1 | 0 | Advances the cyrax bomb1 position or animation. |
| 3 | `0x9144` | 100 | `MoveCyraxBomb2` | Special moves | 1 | 0 | Advances the cyrax bomb2 position or animation. |
| 3 | `0x91BA` | 110 | `HandleCyraxBomb1` | Special moves | 1 | 4 | Updates cyrax bomb1 state and interactions. |
| 3 | `0x923C` | 100 | `HandleCyraxBomb2` | Special moves | 1 | 4 | Updates cyrax bomb2 state and interactions. |
| 3 | `0x92B4` | 74 | `MoveShowerFreeze1` | Special moves | 1 | 1 | Advances the shower freeze1 position or animation. |
| 3 | `0x9312` | 74 | `MoveShowerFreeze2` | Special moves | 1 | 1 | Advances the shower freeze2 position or animation. |
| 3 | `0x9370` | 396 | `HandleShowerFreeze1` | Special moves | 1 | 8 | Updates shower freeze1 state and interactions. |
| 3 | `0x9512` | 396 | `HandleShowerFreeze2` | Special moves | 1 | 8 | Updates shower freeze2 state and interactions. |
| 4 | `0x0008` | 8986 | `HandleFatalKey1` | Finishers | 39 | 247 | Updates fatal key1 state and interactions. |
| 4 | `0x2334` | 9004 | `HandleFatalKey2` | Finishers | 39 | 246 | Updates fatal key2 state and interactions. |
| 4 | `0x4672` | 320 | `SetupSindelFootballFatality` | Finishers | 0 | 6 | Initializes the sindel football fatality sequence and its state. |
| 4 | `0x47D0` | 312 | `SetupSindelFootballFatality2` | Finishers | 0 | 6 | Initializes the sindel football fatality2 sequence and its state. |
| 4 | `0x4928` | 1750 | `DoSindelFootballFatality` | Finishers | 9 | 52 | Runs the sindel football fatality sequence. |
| 4 | `0x501A` | 1754 | `DoSindelFootballFatality2` | Finishers | 9 | 52 | Runs the sindel football fatality2 sequence. |
| 4 | `0x5710` | 28 | `LoadCyraxHellFatalitySounds` | Finishers | 0 | 1 | Loads resources needed for cyrax hell fatality sounds. |
| 4 | `0x574A` | 294 | `SetupCyraxHellFatality` | Finishers | 1 | 13 | Initializes the cyrax hell fatality sequence and its state. |
| 4 | `0x588A` | 294 | `SetupCyraxHellFatality2` | Finishers | 1 | 13 | Initializes the cyrax hell fatality2 sequence and its state. |
| 4 | `0x59CA` | 1116 | `DoCyraxHellFatality` | Finishers | 7 | 20 | Runs the cyrax hell fatality sequence. |
| 4 | `0x5E3C` | 1110 | `DoCyraxHellFatality2` | Finishers | 7 | 20 | Runs the cyrax hell fatality2 sequence. |
| 4 | `0x62AA` | 54 | `LoadArcadeSounds` | Finishers | 1 | 2 | Loads resources needed for arcade sounds. |
| 4 | `0x62F4` | 506 | `SetupLiuArcadeFatality2` | Finishers | 1 | 26 | Initializes the liu arcade fatality2 sequence and its state. |
| 4 | `0x6508` | 514 | `SetupLiuArcadeFatality` | Finishers | 1 | 26 | Initializes the liu arcade fatality sequence and its state. |
| 4 | `0x6724` | 982 | `DoLiuArcadeFatality` | Finishers | 8 | 16 | Runs the liu arcade fatality sequence. |
| 4 | `0x6B10` | 982 | `DoLiuArcadeFatality2` | Finishers | 8 | 16 | Runs the liu arcade fatality2 sequence. |
| 4 | `0x6EFE` | 242 | `SetupNightwolfMoonFatality` | Finishers | 3 | 3 | Initializes the nightwolf moon fatality sequence and its state. |
| 4 | `0x700E` | 242 | `SetupNightwolfMoonFatality2` | Finishers | 3 | 3 | Initializes the nightwolf moon fatality2 sequence and its state. |
| 4 | `0x711E` | 396 | `DoNightwolfMoonFatality` | Finishers | 0 | 8 | Runs the nightwolf moon fatality sequence. |
| 4 | `0x72C4` | 396 | `DoNightwolfMoonFatality2` | Finishers | 0 | 8 | Runs the nightwolf moon fatality2 sequence. |
| 4 | `0x746C` | 422 | `SetupNightwolfRaidenFatality` | Finishers | 3 | 8 | Initializes the nightwolf raiden fatality sequence and its state. |
| 4 | `0x7632` | 418 | `SetupNightwolfRaidenFatality2` | Finishers | 3 | 8 | Initializes the nightwolf raiden fatality2 sequence and its state. |
| 4 | `0x77F4` | 1070 | `DoNightwolfRaidenFatality` | Finishers | 6 | 18 | Runs the nightwolf raiden fatality sequence. |
| 4 | `0x7C3E` | 1064 | `DoNightwolfRaidenFatality2` | Finishers | 6 | 18 | Runs the nightwolf raiden fatality2 sequence. |
| 4 | `0x8084` | 220 | `SetupBabality` | Finishers | 0 | 13 | Initializes the babality sequence and its state. |
| 4 | `0x8170` | 212 | `SetupBabality2` | Finishers | 0 | 13 | Initializes the babality2 sequence and its state. |
| 4 | `0x8256` | 764 | `DoBabality` | Finishers | 17 | 7 | Runs the babality sequence. |
| 4 | `0x8560` | 764 | `DoBabality2` | Finishers | 17 | 7 | Runs the babality2 sequence. |
| 4 | `0x886A` | 168 | `SetupSektorSmashFatality` | Finishers | 0 | 11 | Initializes the sektor smash fatality sequence and its state. |
| 4 | `0x892E` | 168 | `SetupSektorSmashFatality2` | Finishers | 0 | 11 | Initializes the sektor smash fatality2 sequence and its state. |
| 4 | `0x89F2` | 902 | `DoSektorSmashFatality` | Finishers | 3 | 17 | Runs the sektor smash fatality sequence. |
| 4 | `0x8D90` | 902 | `DoSektorSmashFatality2` | Finishers | 3 | 17 | Runs the sektor smash fatality2 sequence. |
| 4 | `0x9130` | 28 | `LoadHatSounds` | Finishers | 0 | 1 | Loads resources needed for hat sounds. |
| 4 | `0x915C` | 554 | `SetupKungHatFatality1` | Finishers | 2 | 17 | Initializes the kung hat fatality1 sequence and its state. |
| 4 | `0x939E` | 552 | `SetupKungHatFatality2` | Finishers | 2 | 17 | Initializes the kung hat fatality2 sequence and its state. |
| 4 | `0x95DE` | 756 | `DoKungHatFatality1` | Finishers | 1 | 20 | Runs the kung hat fatality1 sequence. |
| 4 | `0x98E8` | 760 | `DoKungHatFatality2` | Finishers | 1 | 20 | Runs the kung hat fatality2 sequence. |
| 4 | `0x9BF6` | 54 | `LoadIceSounds` | Finishers | 1 | 2 | Loads resources needed for ice sounds. |
| 4 | `0x9C3C` | 398 | `SetupSubIceFatality` | Finishers | 2 | 9 | Initializes the sub ice fatality sequence and its state. |
| 4 | `0x9DE0` | 390 | `SetupSubIceFatality2` | Finishers | 2 | 9 | Initializes the sub ice fatality2 sequence and its state. |
| 4 | `0x9F7E` | 1620 | `DoSubIceFatality` | Finishers | 5 | 36 | Runs the sub ice fatality sequence. |
| 4 | `0xA5E6` | 1612 | `DoSubIceFatality2` | Finishers | 5 | 36 | Runs the sub ice fatality2 sequence. |
| 4 | `0xAC46` | 508 | `SetupKabalBalloonFatality` | Finishers | 0 | 24 | Initializes the kabal balloon fatality sequence and its state. |
| 4 | `0xAE5E` | 506 | `SetupKabalBalloonFatality2` | Finishers | 0 | 24 | Initializes the kabal balloon fatality2 sequence and its state. |
| 4 | `0xB076` | 3014 | `DoKabalBalloonFatality` | Finishers | 14 | 84 | Runs the kabal balloon fatality sequence. |
| 4 | `0xBC56` | 3014 | `DoKabalBalloonFatality2` | Finishers | 14 | 84 | Runs the kabal balloon fatality2 sequence. |
| 4 | `0xC836` | 112 | `SetupSindelScreamFatality` | Finishers | 0 | 2 | Initializes the sindel scream fatality sequence and its state. |
| 4 | `0xC8C2` | 110 | `SetupSindelScreamFatality2` | Finishers | 0 | 2 | Initializes the sindel scream fatality2 sequence and its state. |
| 4 | `0xC94E` | 410 | `DoSindelScreamFatality` | Finishers | 1 | 9 | Runs the sindel scream fatality sequence. |
| 4 | `0xCB02` | 412 | `DoSindelScreamFatality2` | Finishers | 1 | 9 | Runs the sindel scream fatality2 sequence. |
| 4 | `0xCCB8` | 198 | `SetupNodnarbBallFatality` | Finishers | 1 | 4 | Initializes the nodnarb ball fatality sequence and its state. |
| 4 | `0xCD9A` | 196 | `SetupNodnarbBallFatality2` | Finishers | 1 | 4 | Initializes the nodnarb ball fatality2 sequence and its state. |
| 4 | `0xCE7A` | 420 | `DoNodnarbBallFatality` | Finishers | 2 | 8 | Runs the nodnarb ball fatality sequence. |
| 4 | `0xD036` | 420 | `DoNodnarbBallFatality2` | Finishers | 2 | 8 | Runs the nodnarb ball fatality2 sequence. |
| 4 | `0xD1F4` | 224 | `SetupShovaInvisibleFatality` | Finishers | 1 | 10 | Initializes the shova invisible fatality sequence and its state. |
| 4 | `0xD2F2` | 222 | `SetupShovaInvisibleFatality2` | Finishers | 1 | 10 | Initializes the shova invisible fatality2 sequence and its state. |
| 4 | `0xD3F0` | 1188 | `DoShovaInvisibleFatality` | Finishers | 5 | 25 | Runs the shova invisible fatality sequence. |
| 4 | `0xD8B0` | 1192 | `DoShovaInvisibleFatality2` | Finishers | 5 | 25 | Runs the shova invisible fatality2 sequence. |
| 4 | `0xDD74` | 354 | `SetupOmohStompFatality` | Finishers | 1 | 19 | Initializes the omoh stomp fatality sequence and its state. |
| 4 | `0xDEF0` | 356 | `SetupOmohStompFatality2` | Finishers | 1 | 19 | Initializes the omoh stomp fatality2 sequence and its state. |
| 4 | `0xE06E` | 806 | `DoOmohStompFatality` | Finishers | 4 | 14 | Runs the omoh stomp fatality sequence. |
| 4 | `0xE3AA` | 802 | `DoOmohStompFatality2` | Finishers | 4 | 14 | Runs the omoh stomp fatality2 sequence. |
| 4 | `0xE6E4` | 160 | `SetupOmohKissFatality` | Finishers | 0 | 3 | Initializes the omoh kiss fatality sequence and its state. |
| 4 | `0xE79C` | 158 | `SetupOmohKissFatality2` | Finishers | 0 | 3 | Initializes the omoh kiss fatality2 sequence and its state. |
| 4 | `0xE854` | 1498 | `DoOmohKissFatality` | Finishers | 3 | 46 | Runs the omoh kiss fatality sequence. |
| 4 | `0xEE44` | 1500 | `DoOmohKissFatality2` | Finishers | 3 | 46 | Runs the omoh kiss fatality2 sequence. |
| 4 | `0xF436` | 336 | `SetupSektorClampFatality` | Finishers | 0 | 17 | Initializes the sektor clamp fatality sequence and its state. |
| 4 | `0xF5A2` | 336 | `SetupSektorClampFatality2` | Finishers | 0 | 17 | Initializes the sektor clamp fatality2 sequence and its state. |
| 4 | `0xF70E` | 1102 | `DoSektorClampFatality` | Finishers | 1 | 26 | Runs the sektor clamp fatality sequence. |
| 4 | `0xFB74` | 1112 | `DoSektorClampFatality2` | Finishers | 1 | 26 | Runs the sektor clamp fatality2 sequence. |
| 4 | `0xFFE6` | 228 | `SetupShangSoulFatality` | Finishers | 0 | 5 | Initializes the shang soul fatality sequence and its state. |
| 4 | `0x100E4` | 226 | `SetupShangSoulFatality2` | Finishers | 0 | 5 | Initializes the shang soul fatality2 sequence and its state. |
| 4 | `0x101E0` | 554 | `DoShangSoulFatality` | Finishers | 4 | 10 | Runs the shang soul fatality sequence. |
| 4 | `0x10420` | 554 | `DoShangSoulFatality2` | Finishers | 4 | 10 | Runs the shang soul fatality2 sequence. |
| 4 | `0x10662` | 344 | `SetupShangSpikeFatality` | Finishers | 1 | 10 | Initializes the shang spike fatality sequence and its state. |
| 4 | `0x107D4` | 338 | `SetupShangSpikeFatality2` | Finishers | 1 | 10 | Initializes the shang spike fatality2 sequence and its state. |
| 4 | `0x10942` | 592 | `DoShangSpikeFatality` | Finishers | 2 | 15 | Runs the shang spike fatality sequence. |
| 4 | `0x10BAA` | 592 | `DoShangSpikeFatality2` | Finishers | 2 | 15 | Runs the shang spike fatality2 sequence. |
| 4 | `0x10E12` | 122 | `SetupKabalRazorFatality` | Finishers | 1 | 2 | Initializes the kabal razor fatality sequence and its state. |
| 4 | `0x10EA6` | 120 | `SetupKabalRazorFatality2` | Finishers | 1 | 2 | Initializes the kabal razor fatality2 sequence and its state. |
| 4 | `0x10F3A` | 1194 | `DoKabalRazorFatality` | Finishers | 4 | 25 | Runs the kabal razor fatality sequence. |
| 4 | `0x113FC` | 1196 | `DoKabalRazorFatality2` | Finishers | 4 | 25 | Runs the kabal razor fatality2 sequence. |
| 5 | `0x0008` | 86 | `DoNewRegistration` | Input / kodes | 6 | 2 | Runs the new registration sequence. |
| 5 | `0x0072` | 406 | `DoMenus` | UI / flow | 0 | 24 | Runs the menus sequence. |
| 5 | `0x0212` | 1620 | `DoIntro` | UI / flow | 16 | 41 | Runs the intro sequence. |
| 6 | `0x0008` | 42 | `CloseDownTheSoundOne` | Audio | 0 | 1 | Closes or releases down the sound one. |
| 6 | `0x004A` | 42 | `CloseDownTheSoundTwo` | Audio | 0 | 1 | Closes or releases down the sound two. |
| 6 | `0x008C` | 42 | `CloseDownTheSoundThree` | Audio | 0 | 1 | Closes or releases down the sound three. |
| 6 | `0x00D0` | 82 | `InitializeForSound` | Audio | 1 | 0 | Initializes for sound. |
| 6 | `0x0138` | 144 | `FlushSoundNowThree` | Audio | 0 | 2 | Flushes pending sound now three state. |
| 6 | `0x01DE` | 172 | `PlayASoundOneHandle` | Audio | 0 | 5 | Starts playback for a sound one handle. |
| 6 | `0x02A0` | 172 | `PlayASoundTwoHandle` | Audio | 0 | 5 | Starts playback for a sound two handle. |
| 6 | `0x0362` | 172 | `PlayASoundThreeHandle` | Audio | 0 | 5 | Starts playback for a sound three handle. |
| 6 | `0x0426` | 198 | `PlayASoundOne` | Audio | 0 | 6 | Starts playback for a sound one. |
| 6 | `0x04FC` | 198 | `PlayASoundTwo` | Audio | 0 | 6 | Starts playback for a sound two. |
| 6 | `0x05D2` | 198 | `PlayASoundThree` | Audio | 0 | 6 | Starts playback for a sound three. |
| 6 | `0x06AA` | 162 | `PlaySynchSound` | Audio | 0 | 5 | Starts playback for synch sound. |
| 6 | `0x075E` | 168 | `PlayLoopSoundOne` | Audio | 0 | 5 | Starts playback for loop sound one. |
| 6 | `0x081A` | 82 | `RedAlert` | Core gameplay | 2 | 4 | Implements red alert. |
| 6 | `0x0878` | 46 | `MacHasSystem7` | Core gameplay | 1 | 0 | Implements mac has system7. |
| 6 | `0x08B6` | 70 | `ChangeTheDepth` | Platform | 0 | 2 | Implements change the depth. |
| 6 | `0x090E` | 46 | `RestoreTheDepth` | Platform | 0 | 2 | Implements restore the depth. |
| 6 | `0x094E` | 32 | `CheckEnvironment` | Platform | 3 | 0 | Evaluates environment conditions. |
| 6 | `0x0982` | 80 | `ErrorAlert` | Core gameplay | 2 | 3 | Implements error alert. |
| 6 | `0x09E0` | 62 | `InitToolbox` | Platform | 1 | 14 | Initializes toolbox. |
| 6 | `0x0A2C` | 150 | `CreateOffScreenBitMap` | Platform | 3 | 7 | Implements create off screen bit map. |
| 6 | `0x0ADA` | 298 | `CreateOffScreenPixMap` | Platform | 4 | 15 | Implements create off screen pix map. |
| 6 | `0x0C1C` | 96 | `LoadGraphic` | Platform | 1 | 6 | Loads resources needed for graphic. |
| 6 | `0x0C8A` | 1876 | `Words` | Core gameplay | 2 | 30 | Implements words. |
| 8 | `0x0008` | 18 | `MacOSTailDispatch` | Platform | 0 | 1 | Adapts a Macintosh toolbox call and tail-dispatches its result. |
| 8 | `0x001A` | 16 | `MacOSHandleAdapter` | Platform | 0 | 1 | Adapts a handle-oriented Macintosh Memory Manager call. |
| 8 | `0x002A` | 70 | `GetIndexedString` | Runtime | 0 | 2 | Loads one Pascal string from a STR# resource. |
| 8 | `0x0070` | 22 | `MacOSHandleSizeAdapter` | Platform | 0 | 1 | Wraps a classic Macintosh handle-size operation. |
| 8 | `0x0086` | 34 | `MacOSStackBlockAdapter` | Platform | 0 | 1 | Builds a stack parameter block for a toolbox operation. |
| 8 | `0x00A8` | 14 | `MacOSPointerTailDispatch` | Platform | 0 | 1 | Wraps a pointer operation and tail-dispatches to its caller. |
| 9 | `0x0008` | 28 | `strcpy` | Runtime | 0 | 0 | Copies a NUL-terminated byte string and returns the destination. |
| 9 | `0x0024` | 20 | `strlen` | Runtime | 0 | 0 | Counts bytes in a NUL-terminated byte string. |
