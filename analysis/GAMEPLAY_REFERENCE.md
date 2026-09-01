# Pong Kombat 3 v2.1 gameplay reference

This is a normalized preservation reference generated from the recovered v2.1 resource data, the original Read Me/FAQ, and constants verified in the disassembly. It is build documentation for the clean-room Windows port; the original inputs remain unchanged under `reference/` and `analysis/resources-v2.1/`.

## Verified engine constants

| Property | Recovered value | Evidence |
|---|---:|---|
| Logical canvas | 516 × 432 | All eight stage PICTs and QuickDraw bounds |
| Original display target | 640 × 480, 256 colors | Original Read Me |
| Arena top | y = 84 | `HandleBall`, `HandlePlayer1`, `HandlePlayer2` |
| Paddle size | 16 × 48 | Player rectangle clamps in CODE 2 |
| P1 horizontal zone | x = 0…112 | `HandlePlayer1` |
| P2 horizontal zone | x = 404…516 | `HandlePlayer2` |
| Normal ball velocity | 6 px/original tick per axis | `SetBallSpeed` |
| Normal paddle velocity | 6 px/original tick | `SetBallSpeed`, player handlers |
| Starting energy | 100 | `DoGameLoop`, `ResetValues`, `ResetValues2` |
| Missed-ball damage | 20 | `Player1BallEnergyOff`, `Player2BallEnergyOff` |
| Ball lower/upper bounds | y = 432 / 84 | `HandleBall` |
| Ball left/right bounds | x = 0 / 516 | `HandleBall` |

## Character/resource map

| ID | Character | P1 color/mask | P2 color/mask | Portrait |
|---:|---|---|---|---|
| 0 | Shang Tsung | 1000 / 1500 | 2000 / 2500 | 3000 |
| 1 | Sindel | 1001 / 1501 | 2001 / 2501 | 3001 |
| 2 | Liu Kang | 1002 / 1502 | 2002 / 2502 | 3002 |
| 3 | Sub-Zero | 1003 / 1503 | 2003 / 2503 | 3003 |
| 4 | Omoh | 1004 / 1504 | 2004 / 2504 | 3004 |
| 5 | Cyrax | 1005 / 1505 | 2005 / 2505 | 3005 |
| 6 | Sektor | 1006 / 1506 | 2006 / 2506 | 3006 |
| 7 | Kung Lao | 1007 / 1507 | 2007 / 2507 | 3007 |
| 8 | Kabal | 1008 / 1508 | 2008 / 2508 | 3008 |
| 9 | Shao Kahn | 1009 / 1509 | 2009 / 2509 | 3009 |
| 10 | Motaro | 1010 / 1510 | 2010 / 2510 | 3010 |
| 11 | Nodnarb | 1011 / 1511 | 2011 / 2511 | 3011 |
| 12 | Loser sentinel | — | — | — |
| 13 | Nightwolf | 1013 / 1513 | 2013 / 2513 | 3013 |
| 14 | Shova | 1014 / 1514 | 2014 / 2514 | 3014 |
| 15 | Noob Saibot | 1015 / 1515 | 2015 / 2515 | 3015 |

The final recovered set contains **140 PICT resources** and **103 sound resources**. Every one decodes successfully; `analysis/assets-v2.1-final/failures.json` is empty.

## Normalized original move, secret, and Kombat Kode reference

Directions are relative to the player's facing: `F` forward, `B` back, `U` up, `D` down, `P` punch, `K` kick.

```text
Secrets

Secrets

To Fight Nodnarb: Perform a Fatality on opponent before the ? (3rd to last
opponent)

To Fight Noob Saibot: Perform a Babality on opponent before the ? (3rd to last
opponent)

(type the following at the main screen)

Extra Kredits: IMLAME

De-Register: NULL

Kredits: WHO

Cyrax

Bomb: F-F-K

Net: B-B-K

Fatality 1: Chopper: D-D-D-U-K

Fatality 2: Chopper: B-F-U-K

Babality: F-F-B-K

Kabal

Fireball: B-B-P

Razor: B-B-B-K

Fatality 1: Razor: F-F-F-B-K (aligned)

Fatality 2: BalloonK-K-B-F-P (aligned)

Babality: P-P-P-K

Kung Lao

Hat Toss (Up): F-U-P

Hat Toss (Middle): B-F-P

Hat Toss (Down): F-D-P

Fatality 1: Hat: B-B-F-K (aligned)

Fatality 2: Hat: F-B-B-F-P (aligned)

Babality: F-F-D-P

Liu Kang

Fireball: F-F-P

Fireball (Fast): F-F-F-P

Fireball (Slow):F-F-B-P

Fatality 1: Arcade: D-U-D-D-K (anywhere)

Fatality 2: Baby: D-D-U-P (anywhere)

Babality: U-U-U-P

Motaro

To play as Motaro:

Player one: highlight Shang Tsung and push B-U-B-P or K.

Player two: Highlight Liu Kang and push B-U-B-P or K

Fireball:F-F-K

Diagonal Fireball (Up): U-U-K

Diagonal Fireball (Down): D-D-K

Nightwolf

To play as Nightwolf:

Player one: highlight Shang Tsung and push B-U-U-P or K.

Player two: Highlight Liu Kang and push B-U-U-P or K

Arrow: D-B-P

Reflect: B-B-B-K

Fatality 1: Light: U-U-B-F-K

Fatality 2: Raiden: K-K-B-B (aligned)

Babality: F-B-F-B-P

Nodnarb

To play as Nodnarb:

Player one: highlight Sektor and push D-D-D-P or K.

Player two: Highlight Kabal and push D-D-D-P or K

Ball: B-B-K

Ball (Up): B-B-U-K

Ball (Down): B-B-D-K

Fatality 1: Ball: B-F-D-F-P

Babality: F-F-F-K

Noob Saibot

To play as Noob Saibot:

Player one: highlight Sub-Zero and push B-B-B-P or K.

Player two: Highlight Cyrax and push B-B-B-P or K

Fireball: F-F-K

Babality: D-D-F-P

Omoh

Missle: B-F-P

Grenade (High): F-D-B-K

Grenade (Mid): F-D-B-P

Grenade (Low): B-D-F-K

Fatality 1: Stomp: K-K-D-U

Fatality 2: Kiss: F-F-P-B (aligned)

Fatality 3: Stomp: D-D-D-P

Babality: D-D-D-K

Sektor

Missile: F,F,Punch

Homing Missile: F,D,B,Punch

Fatality 1: clamp: B,B,F,B,Kick (aligned)

Fatality 2: smash: B,F,Kick,Punch (aligned)

Fatality 3: clamp: F,F,B,Punch (aligned)

Babality: B,D,D,B,Kick

Shang Tsung

Fireball: B-B-P

Fire Eruption: F-B-B-K

Morphs

Cyrax: K-K-K

Kabal: K-P-K

Kung Lao: U-F-F-K

Liu Kang: F-F-B-P

Motaro: F-F-D-K

Nightwolf: U-U-U-K

Nodnarb: U-U-U-P

Noob Saibot: B-B-B-K

Omoh: D-D-U-K

Sektor: B-D-B-P

Shao Kahn: F-F-D-P

Shova: F-F-U-K

Sindel: B-D-B-K

Sub-Zero: F-D-F-P

Fatality 1: Spikes: F-D-D-F-P

Fatality 2: Soul: P-U-U-P

Fatality 3: Baby: P-K-K

Babality: K-P-P

Shao Khan

To play as Shao Kahn:

Player one: highlight Shang Tsung and push U-U-B-P or K.

Player two: Highlight Liu Kang and push U-U-B-P or K

Fireball: B-B-P

Seeker Fireball: B-B-K

Shova

To play as Shova:

Player one: highlight Sektor and push B-B-B-P or K.

Player two: Highlight Kabal and push B-B-B-P or K

Fireball: D-F-K

Donut: D-F-P

Fatality 1: Rip: F-F-F-K (aligned)

Babality: U-U-D

Sindel

Fireball: F-F-P

Diagonal Fireball (Up): D-F-K

Diagonal Fireball (Down): D-B-K

Fatality 1: Football: F-B-B-B-K (aligned)

Fatality 2: Scream: P-K-K-P (aligned)

Babality: K-K-K-U

Sub-Zero

Forward Freeze: D-F-P

Shower Freeze (Front): D-F-B-K

Shower Freeze (Middle): D-F-K

Shower Freeze (Back): D-B-F-K

Fatality 1: Fridge: U-U-D-D-P

Fatality 2: Spike: K-P-K-K (aligned)

Fatality 3: Fridge: D-B-D-B-P

Babality: D-D-B-B-P

Kombat Kodes

Blue Ball: 1-0-0 0-0-1

Red Ball: 0-1-0 0-1-0

Green Ball: 0-0-1 1-0-0

White Ball: 1-0-0 1-0-0

Yellow Ball: 0-1-0 0-0-1

Purple Ball: 1-0-0 0-1-0

Huge Ball: 2-0-0 0-0-2

Huge Blue Ball: 2-0-0 0-0-2

Huge Red Ball: 0-2-0 0-2-0

Huge Green Ball: 0-0-2 0-0-2

Huge White Ball: 2-0-0 2-0-0

Huge Yellow Ball: 0-2-0 0-0-2

Huge Purple Ball: 2-0-0 0-2-0

Mammoth Ball: 4-4-0 6-6-0

Tiny Ball: 2-2-1 4-4-2

Invisible Ball: 0-0-1 0-0-1

Turbo Ball: 1-2-3 1-2-3

Super Turbo Ball: 1-2-3 4-5-6

Crazy Ball: 2-2-4 4-2-2

Crazy Ball 2: 0-1-0 9-7-6

Slow Ball: 5-6-6 5-4-4

Decoy Ball: 0-2-2 0-6-7

Invisible Players: 0-1-1 1-8-2

Reversed Controls: 0-1-1 2-7-6

Projectiles Disabled: 6-3-0 0-3-6

Damage Half: 1-5-1 5-1-5

Damage Double: 3-5-3 5-3-5

1/2 Energy Player 1: 0-3-3 0-0-0

1/2 Energy Player 2: 0-0-0 0-3-3

1/2 Energy Both Players: 0-3-3 0-3-3

1/4 Energy Player 1: 7-0-7 0-0-0

1/4 Energy Player 2: 0-0-0 7-0-7

1/4 Energy Both Players: 7-0-7 7-0-7

No Power Bars: 0-1-0 8-9-4

Gravity Paddles: 9-9-9 9-9-9

Anti Gravity Paddles: 1-1-1 1-1-1

Text

"No Knowledge..." 1-2-3 9-2-6

"Sega Sucks" 3-3-3 3-3-3

"I was shamed..." 2-2-2 2-2-2

"I'm on a plain..." 8-8-8 8-8-8

"Grandma take.." 7-7-7 7-7-7

"I thnk I'm dumb.." 4-4-4 4-4-4

"Doll steak, test meat" 6-6-6 6-6-6

"How now...." 5-5-5 5-5-5

Backgrounds

Happy Valley: 3-5-1 3-5-1

The Inferno: 3-5-2 3-5-2

Desktop: 3-5-3 3-5-3

The Alley: 3-5-4 3-5-4

Portal: 3-5-5 3-5-5

Space: 3-5-6 3-5-6

E-Mail ]{0MBAT

Back to Pong Kombat 3

Return to The Kombat Pavilion
```

## Pong Kombat 1.5 controls and moves

PK1 uses `U`, `D`, and `1` (fire/button) notation. Player 1 is `W`, `X`, left `Shift`; Player 2 is Up, Down, right `Shift`.

| Paddle | Missile | Fatality |
|---|---|---|
| Blue | `1111` Phase Ball | `U1U1` Spiral Splut |
| Green | `UDU1` Arrow | `DUD1` Arrow Impalement |
| Red | `DU11` Shadow Paddle | `DDD1` Harpoon Rip |
| Purple | `UUU1` Spinning Razor | `1UUU` Razor Slice |
| Yellow | `UDUD` Sine Wave | `DUDU` Air-pump Explosion |

During “Finish Him,” `DDDD` is the Pit fatality and `UUDD` is the Toxic River fatality. `111U` performs a Spamality after a flawless victory.

## Pong Kombat 2.0 controls and moves

PK2 uses facing-relative `F`/`B`, `U`/`D`, and buttons `1`/`2`. Player 1 is arrows plus left `Shift`/`Ctrl`; Player 2 is numpad `8/2/4/6`, `+`, and `Enter`.

| Paddle | Special 1 | Special 2 | Dismantle |
|---|---|---|---|
| Aqua | `FFB2` Aqua Freeze | `FUU1` Ice Pick | `FFD2D` Freeze Ram |
| Monolith | `DFB22` Star | `FDF2` Wooden Stars | `BBUD1` Monolith Mash |
| Green | `DUD1` Arrow | `FFF2` Flame Arrow | `UDU2` Triple Arrow |
| Cyber | `B2F1` Laser Hot Spikes | `DD2` Laser | `FBB2D` Clamp Smash |
| Bloodstone | `FF111` Spinning Blood Stone | `UUDD22` Three Blood Stones | `UUU21U` Head Removal |
| Rock | `DDUB2` Boulder | `BBUB1` Pebble Spread | `DDBDU1` Boulder Break |
| Spike | `FBFB2` Spiked Ball | `22222` Spikes | `BBDU1` Spike Rush |
| Shifter | `BBF1` Sword | `FFF11` Saber | `DFFB2` Saber Stab |
| Magma | `BF1` Fireball 1 | `BB1` / `BBFF2` Fireballs 2/3 | `DDDBU` Magma Crumble |

Monolith and Green also recognize `FDBUUUUDBF` as the FAQ-published Nudeality. Shifter recognizes `111U` as Spam Lite-ality after a flawless victory.

Typing `RYANART` on PK2's opening/options screen opens the secret-paddle selection. The cheat-menu unlock exposes the same roster plus the two debug-only paddles.

| Secret paddle | Special |
|---|---|
| White | `1` / `2` fireball volleys |
| Acid | `FF2` Acid Spit |
| Chief | `1` / `2` fireball volleys |
| Blue | `1111` Blue Aura Ball |
| Red | `DU11` Shadow |
| Plaid | `BBD2` Plaid Shovel |
| Wacky | `DF1` Claw |
| Cigarette | `FFF2` Smoke |
| Awesome | `BDB2` Stone Ninja Stars |
| Purple | `UUU1` Spinning Razor |
| Art | `1` Shadow |
| Ryan | `1` Fireball |

## Selected v2.1 DATA strings

These strings were extracted directly from patched DATA resource 0 and retained here to make spelling and labels searchable.

```text
PONG KOMBAT 3
Version 2.1
PONG KOMBAT 1
MK2 (PC Version)
MK3 (PSX Version)
Mortal Kombat, the Dragon Logo,
shang tsung
sindel
liu kang
sub zero
omoh
cyrax
sektor
kung lao
kabal
shao kahnA
motaro
nodnarb
nightwolf
shova
shang tsung wins
sindel wins
liu kang wins
sub zero wins
omoh winsA
cyrax wins
sektor wins
kung lao wins
kabal wins
shao kahn wins
motaro wins
nodnarb wins
nightwolf wins
shova wins
b saibot winsA
Return
Space
Option
Control
shang tsun
as shao kahns armies continues to
shao kahns side, sindel finds
sindel on vocals, motaro on ba s
single handedly, liu kang has
kang spirals even lower, and beginsA
d money as a sidekick
as a child, sub zero had grown up
sub zero earns his k e
le is over and omoh
the fact is, omoh was just l o
ior he hit up was kabal,
kick everybodys a s
weapons technology, cyrax enters the
p, cyrax also destroys
after the death of shao kahn, shangA
sektor began life as an entry in a high
sektor does his job we l@
kahns defeat, sektor shows the world
than a shao kahn one
become the best pong kombatant in
now that he has done so, kung lao,
kabal led a life of crime
er is kabal
then you can understand kabals anger
kabal a new sense of purpose in life
money from pawning kahns armor, kabalA
playerA
kahn was impre s
being almost blind as a bat, kahnA
kahn l o
just kicked his own a sA
kahn becomes confused and blows up
motaro grows tired of begin kahns petA
after destroying kahn, motaro becomes
while out for a run one day, motaroA
not only have you bested shao kahn and
nodnarb is fina l
by surprise, nodnarb was prepared to
earth realm was kahns last resort
this scheme was thwarted when nodnarb
company version six of a wp program,
after the defeat of kahn, nightwolfA
so popular and powerful, nightwolf
reversed controls
invisible playersA
half energy player one
half energy player two
half energy both players
quarter energy player one
quarter energy player two
er energy both playersA
there is no knowledge
the inferno
desktop
portal
spaceA
```
