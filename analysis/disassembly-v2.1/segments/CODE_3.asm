; CODE 3 — SPECIAL MOVES
; resource size: 38580 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 03 78 00 36 00 00 03 78

MoveSindelDiagFireball1: ; 00000008..00000056
00000008  4E 56 00 00                link.w     a6, #$0
0000000C  3B 6D DC 88 DA FC          move.w     -$2378(a5), -$2504(a5)
00000012  70 30                      moveq      #$30, d0
00000014  D0 6D DA FC                add.w      -$2504(a5), d0
00000018  3B 40 DB 00                move.w     d0, -$2500(a5)
0000001C  70 0A                      moveq      #$a, d0
0000001E  D0 6D DC 82                add.w      -$237e(a5), d0
00000022  3B 40 DA FA                move.w     d0, -$2506(a5)
00000026  70 14                      moveq      #$14, d0
00000028  D0 6D DA FA                add.w      -$2506(a5), d0
0000002C  3B 40 DA FE                move.w     d0, -$2502(a5)
00000030  2F 2D DE CE                move.l     -$2132(a5), -(a7)
00000034  4E B9 00 00 00 90          jsr        $90.l
0000003A  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00000040  42 2D FF DA                clr.b      -$26(a5)
00000044  A9 75                      .byte      0xa9, 0x75
00000046  20 1F                      move.l     (a7)+, d0
00000048  2B 40 D7 9E                move.l     d0, -$2862(a5)
0000004C  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000052  4E 5E                      unlk       a6
00000054  4E 75                      rts

; MacsBug symbol trailer for MoveSindelDiagFireball1: 97 4D 6F 76 65 53 69 6E 64 65 6C 44 69 61 67 46 69 72 65 62 61 6C 6C 31

MoveSindelDiagFireball2: ; 00000070..000000C2
00000070  4E 56 00 00                link.w     a6, #$0
00000074  70 0A                      moveq      #$a, d0
00000076  D0 6D DC 58                add.w      -$23a8(a5), d0
0000007A  3B 40 DA D4                move.w     d0, -$252c(a5)
0000007E  70 D0                      moveq      #$d0, d0
00000080  D0 6D DA D4                add.w      -$252c(a5), d0
00000084  3B 40 DA D0                move.w     d0, -$2530(a5)
00000088  70 0A                      moveq      #$a, d0
0000008A  D0 6D DC 56                add.w      -$23aa(a5), d0
0000008E  3B 40 DA CE                move.w     d0, -$2532(a5)
00000092  70 14                      moveq      #$14, d0
00000094  D0 6D DA CE                add.w      -$2532(a5), d0
00000098  3B 40 DA D2                move.w     d0, -$252e(a5)
0000009C  2F 2D DE CA                move.l     -$2136(a5), -(a7)
000000A0  4E B9 00 00 00 98          jsr        $98.l
000000A6  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
000000AC  42 2D FF DC                clr.b      -$24(a5)
000000B0  A9 75                      .byte      0xa9, 0x75
000000B2  20 1F                      move.l     (a7)+, d0
000000B4  2B 40 D7 9A                move.l     d0, -$2866(a5)
000000B8  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000000BE  4E 5E                      unlk       a6
000000C0  4E 75                      rts

; MacsBug symbol trailer for MoveSindelDiagFireball2: 97 4D 6F 76 65 53 69 6E 64 65 6C 44 69 61 67 46 69 72 65 62 61 6C 6C 32

HandleSindelDiagFireball1: ; 000000DC..00000290
000000DC  4E 56 FF F8                link.w     a6, #$fff8
000000E0  2B 6D DA FA DB 02          move.l     -$2506(a5), -$24fe(a5)
000000E6  2B 6D DA FE DB 06          move.l     -$2502(a5), -$24fa(a5)
000000EC  30 2D DB 00                move.w     -$2500(a5), d0
000000F0  90 6D DA FC                sub.w      -$2504(a5), d0
000000F4  0C 40 00 1E                cmpi.w     #$1e, d0
000000F8  6C 0A                      bge.b      $104
000000FA  48 6D DA FA                pea.l      -$2506(a5)
000000FE  42 A7                      clr.l      -(a7)
00000100  A8 A8                      .byte      0xa8, 0xa8
00000102  60 2E                      bra.b      $132
00000104  0C 6D 00 01 D7 A8          cmpi.w     #$1, -$2858(a5)
0000010A  66 10                      bne.b      $11c
0000010C  48 6D DA FA                pea.l      -$2506(a5)
00000110  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
00000114  3F 3C FF FE                move.w     #$fffe, -(a7)
00000118  A8 A8                      .byte      0xa8, 0xa8
0000011A  60 16                      bra.b      $132
0000011C  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
00000122  66 0E                      bne.b      $132
00000124  48 6D DA FA                pea.l      -$2506(a5)
00000128  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
0000012C  3F 3C 00 02                move.w     #$2, -(a7)
00000130  A8 A8                      .byte      0xa8, 0xa8
00000132  0C 6D 02 04 DA FC          cmpi.w     #$204, -$2504(a5)
00000138  6E 1E                      bgt.b      $158
0000013A  0C 6D 00 52 DA FA          cmpi.w     #$52, -$2506(a5)
00000140  6F 16                      ble.b      $158
00000142  55 4F                      subq.w     #$2, a7
00000144  48 6D DA FA                pea.l      -$2506(a5)
00000148  48 6D DC 56                pea.l      -$23aa(a5)
0000014C  48 6E FF F8                pea.l      -$8(a6)
00000150  A8 AA                      .byte      0xa8, 0xaa
00000152  10 1F                      move.b     (a7)+, d0
00000154  67 00 01 36                beq.w      $28c
00000158  55 4F                      subq.w     #$2, a7
0000015A  48 6D DA FA                pea.l      -$2506(a5)
0000015E  48 6D DC 56                pea.l      -$23aa(a5)
00000162  48 6E FF F8                pea.l      -$8(a6)
00000166  A8 AA                      .byte      0xa8, 0xaa
00000168  10 1F                      move.b     (a7)+, d0
0000016A  67 00 00 BC                beq.w      $228
0000016E  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00000174  66 76                      bne.b      $1ec
00000176  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
0000017C  0C 6D 00 01 D7 A8          cmpi.w     #$1, -$2858(a5)
00000182  66 14                      bne.b      $198
00000184  48 6D CF 92                pea.l      -$306e(a5)
00000188  2F 3C 00 35 00 10          move.l     #$350010, -(a7)
0000018E  2F 3C 00 49 00 40          move.l     #$490040, -(a7)
00000194  A8 A7                      .byte      0xa8, 0xa7
00000196  60 1A                      bra.b      $1b2
00000198  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
0000019E  66 12                      bne.b      $1b2
000001A0  48 6D CF 92                pea.l      -$306e(a5)
000001A4  2F 3C 00 49 00 10          move.l     #$490010, -(a7)
000001AA  2F 3C 00 5D 00 40          move.l     #$5d0040, -(a7)
000001B0  A8 A7                      .byte      0xa8, 0xa7
000001B2  42 2D FF DC                clr.b      -$24(a5)
000001B6  59 4F                      subq.w     #$4, a7
000001B8  A9 75                      .byte      0xa9, 0x75
000001BA  20 1F                      move.l     (a7)+, d0
000001BC  2B 40 D7 9A                move.l     d0, -$2866(a5)
000001C0  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000001C6  2B 6D DA FA CF 8A          move.l     -$2506(a5), -$3076(a5)
000001CC  2B 6D DA FE CF 8E          move.l     -$2502(a5), -$3072(a5)
000001D2  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
000001D8  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
000001DE  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
000001E4  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
000001EA  60 3C                      bra.b      $228
000001EC  30 2D DB 00                move.w     -$2500(a5), d0
000001F0  5B 40                      subq.w     #$5, d0
000001F2  3B 40 D7 7C                move.w     d0, -$2884(a5)
000001F6  70 D8                      moveq      #$d8, d0
000001F8  D0 6D D7 7C                add.w      -$2884(a5), d0
000001FC  3B 40 D7 78                move.w     d0, -$2888(a5)
00000200  3B 6D DA FA D7 76          move.w     -$2506(a5), -$288a(a5)
00000206  70 28                      moveq      #$28, d0
00000208  D0 6D D7 76                add.w      -$288a(a5), d0
0000020C  3B 40 D7 7A                move.w     d0, -$2886(a5)
00000210  4E B9 00 00 05 58          jsr        $558.l
00000216  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
0000021C  2F 2D DE BE                move.l     -$2142(a5), -(a7)
00000220  4E B9 00 00 00 98          jsr        $98.l
00000226  58 4F                      addq.w     #$4, a7
00000228  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
0000022E  42 2D D4 04                clr.b      -$2bfc(a5)
00000232  42 2D D7 AA                clr.b      -$2856(a5)
00000236  48 6D DA FA                pea.l      -$2506(a5)
0000023A  48 6D DB 02                pea.l      -$24fe(a5)
0000023E  48 6E FF F8                pea.l      -$8(a6)
00000242  A8 AB                      .byte      0xa8, 0xab
00000244  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000248  48 68 00 02                pea.l      $2(a0)
0000024C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000250  48 68 00 02                pea.l      $2(a0)
00000254  48 6E FF F8                pea.l      -$8(a6)
00000258  48 6E FF F8                pea.l      -$8(a6)
0000025C  42 67                      clr.w      -(a7)
0000025E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000262  2F 28 00 18                move.l     $18(a0), -(a7)
00000266  A8 EC                      .byte      0xa8, 0xec
00000268  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000026C  48 68 00 02                pea.l      $2(a0)
00000270  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000274  48 68 00 02                pea.l      $2(a0)
00000278  48 6E FF F8                pea.l      -$8(a6)
0000027C  48 6E FF F8                pea.l      -$8(a6)
00000280  42 67                      clr.w      -(a7)
00000282  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000286  2F 28 00 18                move.l     $18(a0), -(a7)
0000028A  A8 EC                      .byte      0xa8, 0xec
0000028C  4E 5E                      unlk       a6
0000028E  4E 75                      rts

; MacsBug symbol trailer for HandleSindelDiagFireball1: 99 48 61 6E 64 6C 65 53 69 6E 64 65 6C 44 69 61 67 46 69 72 65 62 61 6C 6C 31

HandleSindelDiagFireball2: ; 000002AC..0000044E
000002AC  4E 56 FF F8                link.w     a6, #$fff8
000002B0  2B 6D DA CE DA D6          move.l     -$2532(a5), -$252a(a5)
000002B6  2B 6D DA D2 DA DA          move.l     -$252e(a5), -$2526(a5)
000002BC  0C 6D 00 01 D7 A6          cmpi.w     #$1, -$285a(a5)
000002C2  66 14                      bne.b      $2d8
000002C4  48 6D DA CE                pea.l      -$2532(a5)
000002C8  30 2D D8 04                move.w     -$27fc(a5), d0
000002CC  44 40                      neg.w      d0
000002CE  3F 00                      move.w     d0, -(a7)
000002D0  3F 3C FF FE                move.w     #$fffe, -(a7)
000002D4  A8 A8                      .byte      0xa8, 0xa8
000002D6  60 1A                      bra.b      $2f2
000002D8  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
000002DE  66 12                      bne.b      $2f2
000002E0  48 6D DA CE                pea.l      -$2532(a5)
000002E4  30 2D D8 04                move.w     -$27fc(a5), d0
000002E8  44 40                      neg.w      d0
000002EA  3F 00                      move.w     d0, -(a7)
000002EC  3F 3C 00 02                move.w     #$2, -(a7)
000002F0  A8 A8                      .byte      0xa8, 0xa8
000002F2  4A 6D DA D4                tst.w      -$252c(a5)
000002F6  6D 1E                      blt.b      $316
000002F8  0C 6D 00 52 DA CE          cmpi.w     #$52, -$2532(a5)
000002FE  6F 16                      ble.b      $316
00000300  55 4F                      subq.w     #$2, a7
00000302  48 6D DA CE                pea.l      -$2532(a5)
00000306  48 6D DC 82                pea.l      -$237e(a5)
0000030A  48 6E FF F8                pea.l      -$8(a6)
0000030E  A8 AA                      .byte      0xa8, 0xaa
00000310  10 1F                      move.b     (a7)+, d0
00000312  67 00 01 36                beq.w      $44a
00000316  55 4F                      subq.w     #$2, a7
00000318  48 6D DA CE                pea.l      -$2532(a5)
0000031C  48 6D DC 82                pea.l      -$237e(a5)
00000320  48 6E FF F8                pea.l      -$8(a6)
00000324  A8 AA                      .byte      0xa8, 0xaa
00000326  10 1F                      move.b     (a7)+, d0
00000328  67 00 00 BC                beq.w      $3e6
0000032C  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00000332  66 76                      bne.b      $3aa
00000334  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
0000033A  0C 6D 00 01 D7 A6          cmpi.w     #$1, -$285a(a5)
00000340  66 14                      bne.b      $356
00000342  48 6D CF C4                pea.l      -$303c(a5)
00000346  2F 3C 00 35 00 10          move.l     #$350010, -(a7)
0000034C  2F 3C 00 49 00 40          move.l     #$490040, -(a7)
00000352  A8 A7                      .byte      0xa8, 0xa7
00000354  60 1A                      bra.b      $370
00000356  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
0000035C  66 12                      bne.b      $370
0000035E  48 6D CF C4                pea.l      -$303c(a5)
00000362  2F 3C 00 49 00 10          move.l     #$490010, -(a7)
00000368  2F 3C 00 5D 00 40          move.l     #$5d0040, -(a7)
0000036E  A8 A7                      .byte      0xa8, 0xa7
00000370  42 2D FF DA                clr.b      -$26(a5)
00000374  59 4F                      subq.w     #$4, a7
00000376  A9 75                      .byte      0xa9, 0x75
00000378  20 1F                      move.l     (a7)+, d0
0000037A  2B 40 D7 9E                move.l     d0, -$2862(a5)
0000037E  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000384  2B 6D DA CE CF BC          move.l     -$2532(a5), -$3044(a5)
0000038A  2B 6D DA D2 CF C0          move.l     -$252e(a5), -$3040(a5)
00000390  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
00000396  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
0000039C  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
000003A2  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
000003A8  60 3C                      bra.b      $3e6
000003AA  30 2D DA D0                move.w     -$2530(a5), d0
000003AE  5A 40                      addq.w     #$5, d0
000003B0  3B 40 D7 70                move.w     d0, -$2890(a5)
000003B4  70 28                      moveq      #$28, d0
000003B6  D0 6D D7 70                add.w      -$2890(a5), d0
000003BA  3B 40 D7 74                move.w     d0, -$288c(a5)
000003BE  3B 6D DA CE D7 6E          move.w     -$2532(a5), -$2892(a5)
000003C4  70 28                      moveq      #$28, d0
000003C6  D0 6D D7 6E                add.w      -$2892(a5), d0
000003CA  3B 40 D7 72                move.w     d0, -$288e(a5)
000003CE  4E B9 00 00 05 50          jsr        $550.l
000003D4  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
000003DA  2F 2D DE C2                move.l     -$213e(a5), -(a7)
000003DE  4E B9 00 00 00 90          jsr        $90.l
000003E4  58 4F                      addq.w     #$4, a7
000003E6  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000003EC  42 2D D4 02                clr.b      -$2bfe(a5)
000003F0  42 2D D7 A2                clr.b      -$285e(a5)
000003F4  48 6D DA CE                pea.l      -$2532(a5)
000003F8  48 6D DA D6                pea.l      -$252a(a5)
000003FC  48 6E FF F8                pea.l      -$8(a6)
00000400  A8 AB                      .byte      0xa8, 0xab
00000402  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000406  48 68 00 02                pea.l      $2(a0)
0000040A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000040E  48 68 00 02                pea.l      $2(a0)
00000412  48 6E FF F8                pea.l      -$8(a6)
00000416  48 6E FF F8                pea.l      -$8(a6)
0000041A  42 67                      clr.w      -(a7)
0000041C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000420  2F 28 00 18                move.l     $18(a0), -(a7)
00000424  A8 EC                      .byte      0xa8, 0xec
00000426  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000042A  48 68 00 02                pea.l      $2(a0)
0000042E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000432  48 68 00 02                pea.l      $2(a0)
00000436  48 6E FF F8                pea.l      -$8(a6)
0000043A  48 6E FF F8                pea.l      -$8(a6)
0000043E  42 67                      clr.w      -(a7)
00000440  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000444  2F 28 00 18                move.l     $18(a0), -(a7)
00000448  A8 EC                      .byte      0xa8, 0xec
0000044A  4E 5E                      unlk       a6
0000044C  4E 75                      rts

; MacsBug symbol trailer for HandleSindelDiagFireball2: 99 48 61 6E 64 6C 65 53 69 6E 64 65 6C 44 69 61 67 46 69 72 65 62 61 6C 6C 32

SetupNBall1: ; 0000046A..000004AC
0000046A  4E 56 00 00                link.w     a6, #$0
0000046E  3B 6D DC 88 DE 84          move.w     -$2378(a5), -$217c(a5)
00000474  70 0C                      moveq      #$c, d0
00000476  D0 6D DE 84                add.w      -$217c(a5), d0
0000047A  3B 40 DE 88                move.w     d0, -$2178(a5)
0000047E  70 14                      moveq      #$14, d0
00000480  D0 6D DC 82                add.w      -$237e(a5), d0
00000484  3B 40 DE 82                move.w     d0, -$217e(a5)
00000488  70 0C                      moveq      #$c, d0
0000048A  D0 6D DE 82                add.w      -$217e(a5), d0
0000048E  3B 40 DE 86                move.w     d0, -$217a(a5)
00000492  3B 7C 00 06 DE A2          move.w     #$6, -$215e(a5)
00000498  3B 7C 00 06 DE A4          move.w     #$6, -$215c(a5)
0000049E  2F 2D DE CE                move.l     -$2132(a5), -(a7)
000004A2  4E B9 00 00 00 90          jsr        $90.l
000004A8  4E 5E                      unlk       a6
000004AA  4E 75                      rts

; MacsBug symbol trailer for SetupNBall1: 8B 53 65 74 75 70 4E 42 61 6C 6C 31

SetupNBall2: ; 000004BA..000004FC
000004BA  4E 56 00 00                link.w     a6, #$0
000004BE  3B 6D DC 88 DE 60          move.w     -$2378(a5), -$21a0(a5)
000004C4  70 0C                      moveq      #$c, d0
000004C6  D0 6D DE 60                add.w      -$21a0(a5), d0
000004CA  3B 40 DE 64                move.w     d0, -$219c(a5)
000004CE  70 14                      moveq      #$14, d0
000004D0  D0 6D DC 82                add.w      -$237e(a5), d0
000004D4  3B 40 DE 5E                move.w     d0, -$21a2(a5)
000004D8  70 0C                      moveq      #$c, d0
000004DA  D0 6D DE 5E                add.w      -$21a2(a5), d0
000004DE  3B 40 DE 62                move.w     d0, -$219e(a5)
000004E2  3B 7C 00 06 DE 7E          move.w     #$6, -$2182(a5)
000004E8  3B 7C FF FA DE 80          move.w     #$fffa, -$2180(a5)
000004EE  2F 2D DE CE                move.l     -$2132(a5), -(a7)
000004F2  4E B9 00 00 00 90          jsr        $90.l
000004F8  4E 5E                      unlk       a6
000004FA  4E 75                      rts

; MacsBug symbol trailer for SetupNBall2: 8B 53 65 74 75 70 4E 42 61 6C 6C 32

SetupNBall3: ; 0000050A..0000054C
0000050A  4E 56 00 00                link.w     a6, #$0
0000050E  3B 6D DC 58 DE 40          move.w     -$23a8(a5), -$21c0(a5)
00000514  70 F4                      moveq      #$f4, d0
00000516  D0 6D DE 40                add.w      -$21c0(a5), d0
0000051A  3B 40 DE 3C                move.w     d0, -$21c4(a5)
0000051E  70 14                      moveq      #$14, d0
00000520  D0 6D DC 56                add.w      -$23aa(a5), d0
00000524  3B 40 DE 3A                move.w     d0, -$21c6(a5)
00000528  70 0C                      moveq      #$c, d0
0000052A  D0 6D DE 3A                add.w      -$21c6(a5), d0
0000052E  3B 40 DE 3E                move.w     d0, -$21c2(a5)
00000532  3B 7C FF FA DE 5A          move.w     #$fffa, -$21a6(a5)
00000538  3B 7C 00 06 DE 5C          move.w     #$6, -$21a4(a5)
0000053E  2F 2D DE CA                move.l     -$2136(a5), -(a7)
00000542  4E B9 00 00 00 98          jsr        $98.l
00000548  4E 5E                      unlk       a6
0000054A  4E 75                      rts

; MacsBug symbol trailer for SetupNBall3: 8B 53 65 74 75 70 4E 42 61 6C 6C 33

SetupNBall4: ; 0000055A..0000059C
0000055A  4E 56 00 00                link.w     a6, #$0
0000055E  3B 6D DC 58 DE 1C          move.w     -$23a8(a5), -$21e4(a5)
00000564  70 F4                      moveq      #$f4, d0
00000566  D0 6D DE 1C                add.w      -$21e4(a5), d0
0000056A  3B 40 DE 18                move.w     d0, -$21e8(a5)
0000056E  70 14                      moveq      #$14, d0
00000570  D0 6D DC 56                add.w      -$23aa(a5), d0
00000574  3B 40 DE 16                move.w     d0, -$21ea(a5)
00000578  70 0C                      moveq      #$c, d0
0000057A  D0 6D DE 16                add.w      -$21ea(a5), d0
0000057E  3B 40 DE 1A                move.w     d0, -$21e6(a5)
00000582  3B 7C FF FA DE 36          move.w     #$fffa, -$21ca(a5)
00000588  3B 7C FF FA DE 38          move.w     #$fffa, -$21c8(a5)
0000058E  2F 2D DE CA                move.l     -$2136(a5), -(a7)
00000592  4E B9 00 00 00 98          jsr        $98.l
00000598  4E 5E                      unlk       a6
0000059A  4E 75                      rts

; MacsBug symbol trailer for SetupNBall4: 8B 53 65 74 75 70 4E 42 61 6C 6C 34

HandleNodnarbBall1: ; 000005AA..00000714
000005AA  4E 56 FF F8                link.w     a6, #$fff8
000005AE  2B 6D DE 82 DE 8A          move.l     -$217e(a5), -$2176(a5)
000005B4  2B 6D DE 86 DE 8E          move.l     -$217a(a5), -$2172(a5)
000005BA  48 6D DE 82                pea.l      -$217e(a5)
000005BE  3F 2D DE A2                move.w     -$215e(a5), -(a7)
000005C2  3F 2D DE A4                move.w     -$215c(a5), -(a7)
000005C6  A8 A8                      .byte      0xa8, 0xa8
000005C8  0C 6D 01 B0 DE 86          cmpi.w     #$1b0, -$217a(a5)
000005CE  6F 18                      ble.b      $5e8
000005D0  4A 6D DE A4                tst.w      -$215c(a5)
000005D4  6E 08                      bgt.b      $5de
000005D6  30 2D DE A4                move.w     -$215c(a5), d0
000005DA  44 40                      neg.w      d0
000005DC  60 04                      bra.b      $5e2
000005DE  30 2D DE A4                move.w     -$215c(a5), d0
000005E2  44 40                      neg.w      d0
000005E4  3B 40 DE A4                move.w     d0, -$215c(a5)
000005E8  0C 6D 00 54 DE 82          cmpi.w     #$54, -$217e(a5)
000005EE  6C 16                      bge.b      $606
000005F0  4A 6D DE A4                tst.w      -$215c(a5)
000005F4  6E 08                      bgt.b      $5fe
000005F6  30 2D DE A4                move.w     -$215c(a5), d0
000005FA  44 40                      neg.w      d0
000005FC  60 04                      bra.b      $602
000005FE  30 2D DE A4                move.w     -$215c(a5), d0
00000602  3B 40 DE A4                move.w     d0, -$215c(a5)
00000606  55 4F                      subq.w     #$2, a7
00000608  48 6D DE 82                pea.l      -$217e(a5)
0000060C  48 6D DC 56                pea.l      -$23aa(a5)
00000610  48 6E FF F8                pea.l      -$8(a6)
00000614  A8 AA                      .byte      0xa8, 0xaa
00000616  10 1F                      move.b     (a7)+, d0
00000618  67 00 00 EA                beq.w      $704
0000061C  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00000622  66 58                      bne.b      $67c
00000624  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
0000062A  3B 7C 00 03 D7 A8          move.w     #$3, -$2858(a5)
00000630  48 6D CF 92                pea.l      -$306e(a5)
00000634  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
0000063A  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
00000640  A8 A7                      .byte      0xa8, 0xa7
00000642  42 2D FF DC                clr.b      -$24(a5)
00000646  59 4F                      subq.w     #$4, a7
00000648  A9 75                      .byte      0xa9, 0x75
0000064A  20 1F                      move.l     (a7)+, d0
0000064C  2B 40 D7 9A                move.l     d0, -$2866(a5)
00000650  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00000656  2B 6D DE 82 CF 8A          move.l     -$217e(a5), -$3076(a5)
0000065C  2B 6D DE 86 CF 8E          move.l     -$217a(a5), -$3072(a5)
00000662  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
00000668  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
0000066E  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
00000674  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
0000067A  60 3C                      bra.b      $6b8
0000067C  30 2D DE 88                move.w     -$2178(a5), d0
00000680  5B 40                      subq.w     #$5, d0
00000682  3B 40 D7 7C                move.w     d0, -$2884(a5)
00000686  70 D8                      moveq      #$d8, d0
00000688  D0 6D D7 7C                add.w      -$2884(a5), d0
0000068C  3B 40 D7 78                move.w     d0, -$2888(a5)
00000690  3B 6D DE 82 D7 76          move.w     -$217e(a5), -$288a(a5)
00000696  70 28                      moveq      #$28, d0
00000698  D0 6D D7 76                add.w      -$288a(a5), d0
0000069C  3B 40 D7 7A                move.w     d0, -$2886(a5)
000006A0  4E B9 00 00 05 58          jsr        $558.l
000006A6  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
000006AC  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000006B0  4E B9 00 00 00 98          jsr        $98.l
000006B6  58 4F                      addq.w     #$4, a7
000006B8  42 2D CF 5E                clr.b      -$30a2(a5)
000006BC  20 6D D3 FA                movea.l    -$2c06(a5), a0
000006C0  48 68 00 02                pea.l      $2(a0)
000006C4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000006C8  48 68 00 02                pea.l      $2(a0)
000006CC  48 6D DE 8A                pea.l      -$2176(a5)
000006D0  48 6D DE 8A                pea.l      -$2176(a5)
000006D4  42 67                      clr.w      -(a7)
000006D6  20 6D D3 DE                movea.l    -$2c22(a5), a0
000006DA  2F 28 00 18                move.l     $18(a0), -(a7)
000006DE  A8 EC                      .byte      0xa8, 0xec
000006E0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000006E4  48 68 00 02                pea.l      $2(a0)
000006E8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000006EC  48 68 00 02                pea.l      $2(a0)
000006F0  48 6D DE 8A                pea.l      -$2176(a5)
000006F4  48 6D DE 8A                pea.l      -$2176(a5)
000006F8  42 67                      clr.w      -(a7)
000006FA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000006FE  2F 28 00 18                move.l     $18(a0), -(a7)
00000702  A8 EC                      .byte      0xa8, 0xec
00000704  0C 6D 02 13 DE 84          cmpi.w     #$213, -$217c(a5)
0000070A  6F 04                      ble.b      $710
0000070C  42 2D CF 5E                clr.b      -$30a2(a5)
00000710  4E 5E                      unlk       a6
00000712  4E 75                      rts

; MacsBug symbol trailer for HandleNodnarbBall1: 92 48 61 6E 64 6C 65 4E 6F 64 6E 61 72 62 42 61 6C 6C 31

HandleNodnarbBall2: ; 0000072A..00000894
0000072A  4E 56 FF F8                link.w     a6, #$fff8
0000072E  2B 6D DE 5E DE 66          move.l     -$21a2(a5), -$219a(a5)
00000734  2B 6D DE 62 DE 6A          move.l     -$219e(a5), -$2196(a5)
0000073A  48 6D DE 5E                pea.l      -$21a2(a5)
0000073E  3F 2D DE 7E                move.w     -$2182(a5), -(a7)
00000742  3F 2D DE 80                move.w     -$2180(a5), -(a7)
00000746  A8 A8                      .byte      0xa8, 0xa8
00000748  0C 6D 01 B0 DE 62          cmpi.w     #$1b0, -$219e(a5)
0000074E  6F 18                      ble.b      $768
00000750  4A 6D DE 80                tst.w      -$2180(a5)
00000754  6E 08                      bgt.b      $75e
00000756  30 2D DE 80                move.w     -$2180(a5), d0
0000075A  44 40                      neg.w      d0
0000075C  60 04                      bra.b      $762
0000075E  30 2D DE 80                move.w     -$2180(a5), d0
00000762  44 40                      neg.w      d0
00000764  3B 40 DE 80                move.w     d0, -$2180(a5)
00000768  0C 6D 00 54 DE 5E          cmpi.w     #$54, -$21a2(a5)
0000076E  6C 16                      bge.b      $786
00000770  4A 6D DE 80                tst.w      -$2180(a5)
00000774  6E 08                      bgt.b      $77e
00000776  30 2D DE 80                move.w     -$2180(a5), d0
0000077A  44 40                      neg.w      d0
0000077C  60 04                      bra.b      $782
0000077E  30 2D DE 80                move.w     -$2180(a5), d0
00000782  3B 40 DE 80                move.w     d0, -$2180(a5)
00000786  55 4F                      subq.w     #$2, a7
00000788  48 6D DE 5E                pea.l      -$21a2(a5)
0000078C  48 6D DC 56                pea.l      -$23aa(a5)
00000790  48 6E FF F8                pea.l      -$8(a6)
00000794  A8 AA                      .byte      0xa8, 0xaa
00000796  10 1F                      move.b     (a7)+, d0
00000798  67 00 00 EA                beq.w      $884
0000079C  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
000007A2  66 58                      bne.b      $7fc
000007A4  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
000007AA  3B 7C 00 04 D7 A8          move.w     #$4, -$2858(a5)
000007B0  48 6D CF 92                pea.l      -$306e(a5)
000007B4  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
000007BA  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
000007C0  A8 A7                      .byte      0xa8, 0xa7
000007C2  42 2D FF DC                clr.b      -$24(a5)
000007C6  59 4F                      subq.w     #$4, a7
000007C8  A9 75                      .byte      0xa9, 0x75
000007CA  20 1F                      move.l     (a7)+, d0
000007CC  2B 40 D7 9A                move.l     d0, -$2866(a5)
000007D0  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000007D6  2B 6D DE 5E CF 8A          move.l     -$21a2(a5), -$3076(a5)
000007DC  2B 6D DE 62 CF 8E          move.l     -$219e(a5), -$3072(a5)
000007E2  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
000007E8  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
000007EE  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
000007F4  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
000007FA  60 3C                      bra.b      $838
000007FC  30 2D DE 64                move.w     -$219c(a5), d0
00000800  5B 40                      subq.w     #$5, d0
00000802  3B 40 D7 7C                move.w     d0, -$2884(a5)
00000806  70 D8                      moveq      #$d8, d0
00000808  D0 6D D7 7C                add.w      -$2884(a5), d0
0000080C  3B 40 D7 78                move.w     d0, -$2888(a5)
00000810  3B 6D DE 5E D7 76          move.w     -$21a2(a5), -$288a(a5)
00000816  70 28                      moveq      #$28, d0
00000818  D0 6D D7 76                add.w      -$288a(a5), d0
0000081C  3B 40 D7 7A                move.w     d0, -$2886(a5)
00000820  4E B9 00 00 05 58          jsr        $558.l
00000826  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
0000082C  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00000830  4E B9 00 00 00 90          jsr        $90.l
00000836  58 4F                      addq.w     #$4, a7
00000838  42 2D CF 5C                clr.b      -$30a4(a5)
0000083C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000840  48 68 00 02                pea.l      $2(a0)
00000844  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000848  48 68 00 02                pea.l      $2(a0)
0000084C  48 6D DE 66                pea.l      -$219a(a5)
00000850  48 6D DE 66                pea.l      -$219a(a5)
00000854  42 67                      clr.w      -(a7)
00000856  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000085A  2F 28 00 18                move.l     $18(a0), -(a7)
0000085E  A8 EC                      .byte      0xa8, 0xec
00000860  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000864  48 68 00 02                pea.l      $2(a0)
00000868  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000086C  48 68 00 02                pea.l      $2(a0)
00000870  48 6D DE 66                pea.l      -$219a(a5)
00000874  48 6D DE 66                pea.l      -$219a(a5)
00000878  42 67                      clr.w      -(a7)
0000087A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000087E  2F 28 00 18                move.l     $18(a0), -(a7)
00000882  A8 EC                      .byte      0xa8, 0xec
00000884  0C 6D 02 13 DE 60          cmpi.w     #$213, -$21a0(a5)
0000088A  6F 04                      ble.b      $890
0000088C  42 2D CF 5C                clr.b      -$30a4(a5)
00000890  4E 5E                      unlk       a6
00000892  4E 75                      rts

; MacsBug symbol trailer for HandleNodnarbBall2: 92 48 61 6E 64 6C 65 4E 6F 64 6E 61 72 62 42 61 6C 6C 32

HandleNodnarbBall3: ; 000008AA..00000A14
000008AA  4E 56 FF F8                link.w     a6, #$fff8
000008AE  2B 6D DE 3A DE 42          move.l     -$21c6(a5), -$21be(a5)
000008B4  2B 6D DE 3E DE 46          move.l     -$21c2(a5), -$21ba(a5)
000008BA  48 6D DE 3A                pea.l      -$21c6(a5)
000008BE  3F 2D DE 5A                move.w     -$21a6(a5), -(a7)
000008C2  3F 2D DE 5C                move.w     -$21a4(a5), -(a7)
000008C6  A8 A8                      .byte      0xa8, 0xa8
000008C8  0C 6D 01 B0 DE 3E          cmpi.w     #$1b0, -$21c2(a5)
000008CE  6F 18                      ble.b      $8e8
000008D0  4A 6D DE 5C                tst.w      -$21a4(a5)
000008D4  6E 08                      bgt.b      $8de
000008D6  30 2D DE 5C                move.w     -$21a4(a5), d0
000008DA  44 40                      neg.w      d0
000008DC  60 04                      bra.b      $8e2
000008DE  30 2D DE 5C                move.w     -$21a4(a5), d0
000008E2  44 40                      neg.w      d0
000008E4  3B 40 DE 5C                move.w     d0, -$21a4(a5)
000008E8  0C 6D 00 54 DE 3A          cmpi.w     #$54, -$21c6(a5)
000008EE  6C 16                      bge.b      $906
000008F0  4A 6D DE 5C                tst.w      -$21a4(a5)
000008F4  6E 08                      bgt.b      $8fe
000008F6  30 2D DE 5C                move.w     -$21a4(a5), d0
000008FA  44 40                      neg.w      d0
000008FC  60 04                      bra.b      $902
000008FE  30 2D DE 5C                move.w     -$21a4(a5), d0
00000902  3B 40 DE 5C                move.w     d0, -$21a4(a5)
00000906  55 4F                      subq.w     #$2, a7
00000908  48 6D DE 3A                pea.l      -$21c6(a5)
0000090C  48 6D DC 82                pea.l      -$237e(a5)
00000910  48 6E FF F8                pea.l      -$8(a6)
00000914  A8 AA                      .byte      0xa8, 0xaa
00000916  10 1F                      move.b     (a7)+, d0
00000918  67 00 00 EA                beq.w      $a04
0000091C  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00000922  66 58                      bne.b      $97c
00000924  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
0000092A  3B 7C 00 03 D7 A6          move.w     #$3, -$285a(a5)
00000930  48 6D CF C4                pea.l      -$303c(a5)
00000934  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
0000093A  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
00000940  A8 A7                      .byte      0xa8, 0xa7
00000942  42 2D FF DA                clr.b      -$26(a5)
00000946  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
0000094C  59 4F                      subq.w     #$4, a7
0000094E  A9 75                      .byte      0xa9, 0x75
00000950  20 1F                      move.l     (a7)+, d0
00000952  2B 40 D7 9E                move.l     d0, -$2862(a5)
00000956  2B 6D DE 3A CF BC          move.l     -$21c6(a5), -$3044(a5)
0000095C  2B 6D DE 3E CF C0          move.l     -$21c2(a5), -$3040(a5)
00000962  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
00000968  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
0000096E  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
00000974  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
0000097A  60 3C                      bra.b      $9b8
0000097C  30 2D DE 3C                move.w     -$21c4(a5), d0
00000980  5A 40                      addq.w     #$5, d0
00000982  3B 40 D7 70                move.w     d0, -$2890(a5)
00000986  70 28                      moveq      #$28, d0
00000988  D0 6D D7 70                add.w      -$2890(a5), d0
0000098C  3B 40 D7 74                move.w     d0, -$288c(a5)
00000990  3B 6D DE 3A D7 6E          move.w     -$21c6(a5), -$2892(a5)
00000996  70 28                      moveq      #$28, d0
00000998  D0 6D D7 6E                add.w      -$2892(a5), d0
0000099C  3B 40 D7 72                move.w     d0, -$288e(a5)
000009A0  4E B9 00 00 05 50          jsr        $550.l
000009A6  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
000009AC  2F 2D DE C2                move.l     -$213e(a5), -(a7)
000009B0  4E B9 00 00 00 90          jsr        $90.l
000009B6  58 4F                      addq.w     #$4, a7
000009B8  42 2D CF 5A                clr.b      -$30a6(a5)
000009BC  20 6D D3 FA                movea.l    -$2c06(a5), a0
000009C0  48 68 00 02                pea.l      $2(a0)
000009C4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000009C8  48 68 00 02                pea.l      $2(a0)
000009CC  48 6D DE 42                pea.l      -$21be(a5)
000009D0  48 6D DE 42                pea.l      -$21be(a5)
000009D4  42 67                      clr.w      -(a7)
000009D6  20 6D D3 DE                movea.l    -$2c22(a5), a0
000009DA  2F 28 00 18                move.l     $18(a0), -(a7)
000009DE  A8 EC                      .byte      0xa8, 0xec
000009E0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000009E4  48 68 00 02                pea.l      $2(a0)
000009E8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000009EC  48 68 00 02                pea.l      $2(a0)
000009F0  48 6D DE 42                pea.l      -$21be(a5)
000009F4  48 6D DE 42                pea.l      -$21be(a5)
000009F8  42 67                      clr.w      -(a7)
000009FA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000009FE  2F 28 00 18                move.l     $18(a0), -(a7)
00000A02  A8 EC                      .byte      0xa8, 0xec
00000A04  0C 6D FF F1 DE 40          cmpi.w     #$fff1, -$21c0(a5)
00000A0A  6C 04                      bge.b      $a10
00000A0C  42 2D CF 5A                clr.b      -$30a6(a5)
00000A10  4E 5E                      unlk       a6
00000A12  4E 75                      rts

; MacsBug symbol trailer for HandleNodnarbBall3: 92 48 61 6E 64 6C 65 4E 6F 64 6E 61 72 62 42 61 6C 6C 33

HandleNodnarbBall4: ; 00000A2A..00000B94
00000A2A  4E 56 FF F8                link.w     a6, #$fff8
00000A2E  2B 6D DE 16 DE 1E          move.l     -$21ea(a5), -$21e2(a5)
00000A34  2B 6D DE 1A DE 22          move.l     -$21e6(a5), -$21de(a5)
00000A3A  48 6D DE 16                pea.l      -$21ea(a5)
00000A3E  3F 2D DE 36                move.w     -$21ca(a5), -(a7)
00000A42  3F 2D DE 38                move.w     -$21c8(a5), -(a7)
00000A46  A8 A8                      .byte      0xa8, 0xa8
00000A48  0C 6D 01 B0 DE 1A          cmpi.w     #$1b0, -$21e6(a5)
00000A4E  6F 18                      ble.b      $a68
00000A50  4A 6D DE 38                tst.w      -$21c8(a5)
00000A54  6E 08                      bgt.b      $a5e
00000A56  30 2D DE 38                move.w     -$21c8(a5), d0
00000A5A  44 40                      neg.w      d0
00000A5C  60 04                      bra.b      $a62
00000A5E  30 2D DE 38                move.w     -$21c8(a5), d0
00000A62  44 40                      neg.w      d0
00000A64  3B 40 DE 38                move.w     d0, -$21c8(a5)
00000A68  0C 6D 00 54 DE 16          cmpi.w     #$54, -$21ea(a5)
00000A6E  6C 16                      bge.b      $a86
00000A70  4A 6D DE 38                tst.w      -$21c8(a5)
00000A74  6E 08                      bgt.b      $a7e
00000A76  30 2D DE 38                move.w     -$21c8(a5), d0
00000A7A  44 40                      neg.w      d0
00000A7C  60 04                      bra.b      $a82
00000A7E  30 2D DE 38                move.w     -$21c8(a5), d0
00000A82  3B 40 DE 38                move.w     d0, -$21c8(a5)
00000A86  55 4F                      subq.w     #$2, a7
00000A88  48 6D DE 16                pea.l      -$21ea(a5)
00000A8C  48 6D DC 82                pea.l      -$237e(a5)
00000A90  48 6E FF F8                pea.l      -$8(a6)
00000A94  A8 AA                      .byte      0xa8, 0xaa
00000A96  10 1F                      move.b     (a7)+, d0
00000A98  67 00 00 EA                beq.w      $b84
00000A9C  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00000AA2  66 58                      bne.b      $afc
00000AA4  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
00000AAA  3B 7C 00 04 D7 A6          move.w     #$4, -$285a(a5)
00000AB0  48 6D CF C4                pea.l      -$303c(a5)
00000AB4  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
00000ABA  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
00000AC0  A8 A7                      .byte      0xa8, 0xa7
00000AC2  42 2D FF DA                clr.b      -$26(a5)
00000AC6  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000ACC  59 4F                      subq.w     #$4, a7
00000ACE  A9 75                      .byte      0xa9, 0x75
00000AD0  20 1F                      move.l     (a7)+, d0
00000AD2  2B 40 D7 9E                move.l     d0, -$2862(a5)
00000AD6  2B 6D DE 16 CF BC          move.l     -$21ea(a5), -$3044(a5)
00000ADC  2B 6D DE 1A CF C0          move.l     -$21e6(a5), -$3040(a5)
00000AE2  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
00000AE8  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
00000AEE  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
00000AF4  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
00000AFA  60 3C                      bra.b      $b38
00000AFC  30 2D DE 18                move.w     -$21e8(a5), d0
00000B00  5A 40                      addq.w     #$5, d0
00000B02  3B 40 D7 70                move.w     d0, -$2890(a5)
00000B06  70 28                      moveq      #$28, d0
00000B08  D0 6D D7 70                add.w      -$2890(a5), d0
00000B0C  3B 40 D7 74                move.w     d0, -$288c(a5)
00000B10  3B 6D DE 16 D7 6E          move.w     -$21ea(a5), -$2892(a5)
00000B16  70 28                      moveq      #$28, d0
00000B18  D0 6D D7 6E                add.w      -$2892(a5), d0
00000B1C  3B 40 D7 72                move.w     d0, -$288e(a5)
00000B20  4E B9 00 00 05 50          jsr        $550.l
00000B26  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00000B2C  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00000B30  4E B9 00 00 00 90          jsr        $90.l
00000B36  58 4F                      addq.w     #$4, a7
00000B38  42 2D CF 58                clr.b      -$30a8(a5)
00000B3C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000B40  48 68 00 02                pea.l      $2(a0)
00000B44  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000B48  48 68 00 02                pea.l      $2(a0)
00000B4C  48 6D DE 1E                pea.l      -$21e2(a5)
00000B50  48 6D DE 1E                pea.l      -$21e2(a5)
00000B54  42 67                      clr.w      -(a7)
00000B56  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000B5A  2F 28 00 18                move.l     $18(a0), -(a7)
00000B5E  A8 EC                      .byte      0xa8, 0xec
00000B60  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000B64  48 68 00 02                pea.l      $2(a0)
00000B68  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000B6C  48 68 00 02                pea.l      $2(a0)
00000B70  48 6D DE 1E                pea.l      -$21e2(a5)
00000B74  48 6D DE 1E                pea.l      -$21e2(a5)
00000B78  42 67                      clr.w      -(a7)
00000B7A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000B7E  2F 28 00 18                move.l     $18(a0), -(a7)
00000B82  A8 EC                      .byte      0xa8, 0xec
00000B84  0C 6D FF F1 DE 1C          cmpi.w     #$fff1, -$21e4(a5)
00000B8A  6C 04                      bge.b      $b90
00000B8C  42 2D CF 58                clr.b      -$30a8(a5)
00000B90  4E 5E                      unlk       a6
00000B92  4E 75                      rts

; MacsBug symbol trailer for HandleNodnarbBall4: 92 48 61 6E 64 6C 65 4E 6F 64 6E 61 72 62 42 61 6C 6C 34

MoveOmohGrenade1: ; 00000BAA..00000BFA
00000BAA  4E 56 00 00                link.w     a6, #$0
00000BAE  3B 6D DC 88 DD 9C          move.w     -$2378(a5), -$2264(a5)
00000BB4  70 0F                      moveq      #$f, d0
00000BB6  D0 6D DD 9C                add.w      -$2264(a5), d0
00000BBA  3B 40 DD A0                move.w     d0, -$2260(a5)
00000BBE  70 0A                      moveq      #$a, d0
00000BC0  D0 6D DC 82                add.w      -$237e(a5), d0
00000BC4  3B 40 DD 9A                move.w     d0, -$2266(a5)
00000BC8  70 10                      moveq      #$10, d0
00000BCA  D0 6D DD 9A                add.w      -$2266(a5), d0
00000BCE  3B 40 DD 9E                move.w     d0, -$2262(a5)
00000BD2  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00000BD8  42 2D FF DA                clr.b      -$26(a5)
00000BDC  59 4F                      subq.w     #$4, a7
00000BDE  A9 75                      .byte      0xa9, 0x75
00000BE0  20 1F                      move.l     (a7)+, d0
00000BE2  2B 40 D7 9E                move.l     d0, -$2862(a5)
00000BE6  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000BEC  42 6D CF 66                clr.w      -$309a(a5)
00000BF0  3B 7C 00 08 CF 6A          move.w     #$8, -$3096(a5)
00000BF6  4E 5E                      unlk       a6
00000BF8  4E 75                      rts

; MacsBug symbol trailer for MoveOmohGrenade1: 90 4D 6F 76 65 4F 6D 6F 68 47 72 65 6E 61 64 65 31

MoveOmohGrenade2: ; 00000C0E..00000C68
00000C0E  4E 56 00 00                link.w     a6, #$0
00000C12  3B 6D DC 58 DD 7C          move.w     -$23a8(a5), -$2284(a5)
00000C18  70 F1                      moveq      #$f1, d0
00000C1A  D0 6D DD 7C                add.w      -$2284(a5), d0
00000C1E  3B 40 DD 78                move.w     d0, -$2288(a5)
00000C22  70 0A                      moveq      #$a, d0
00000C24  D0 6D DC 56                add.w      -$23aa(a5), d0
00000C28  3B 40 DD 76                move.w     d0, -$228a(a5)
00000C2C  70 10                      moveq      #$10, d0
00000C2E  D0 6D DD 76                add.w      -$228a(a5), d0
00000C32  3B 40 DD 7A                move.w     d0, -$2286(a5)
00000C36  2F 3C 0B BC 00 0A          move.l     #$bbc000a, -(a7)
00000C3C  4E B9 00 00 00 B0          jsr        $b0.l
00000C42  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00000C48  42 2D FF DC                clr.b      -$24(a5)
00000C4C  A9 75                      .byte      0xa9, 0x75
00000C4E  20 1F                      move.l     (a7)+, d0
00000C50  2B 40 D7 9A                move.l     d0, -$2866(a5)
00000C54  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00000C5A  42 6D CF 64                clr.w      -$309c(a5)
00000C5E  3B 7C FF F8 CF 68          move.w     #$fff8, -$3098(a5)
00000C64  4E 5E                      unlk       a6
00000C66  4E 75                      rts

; MacsBug symbol trailer for MoveOmohGrenade2: 90 4D 6F 76 65 4F 6D 6F 68 47 72 65 6E 61 64 65 32

HandleOmohGrenade1: ; 00000C7C..000010CC
00000C7C  4E 56 FF F8                link.w     a6, #$fff8
00000C80  2B 6D DD 9A DD A2          move.l     -$2266(a5), -$225e(a5)
00000C86  2B 6D DD 9E DD A6          move.l     -$2262(a5), -$225a(a5)
00000C8C  0C 6D 00 1E CF 66          cmpi.w     #$1e, -$309a(a5)
00000C92  6D 28                      blt.b      $cbc
00000C94  0C 6D 00 2C CF 66          cmpi.w     #$2c, -$309a(a5)
00000C9A  6C 20                      bge.b      $cbc
00000C9C  0C 6D 00 02 CF 72          cmpi.w     #$2, -$308e(a5)
00000CA2  66 08                      bne.b      $cac
00000CA4  3B 7C 00 07 CF 6A          move.w     #$7, -$3096(a5)
00000CAA  60 36                      bra.b      $ce2
00000CAC  0C 6D 00 03 CF 72          cmpi.w     #$3, -$308e(a5)
00000CB2  66 2E                      bne.b      $ce2
00000CB4  3B 7C 00 09 CF 6A          move.w     #$9, -$3096(a5)
00000CBA  60 26                      bra.b      $ce2
00000CBC  0C 6D 00 2C CF 66          cmpi.w     #$2c, -$309a(a5)
00000CC2  6D 1E                      blt.b      $ce2
00000CC4  0C 6D 00 02 CF 72          cmpi.w     #$2, -$308e(a5)
00000CCA  66 08                      bne.b      $cd4
00000CCC  3B 7C 00 06 CF 6A          move.w     #$6, -$3096(a5)
00000CD2  60 0E                      bra.b      $ce2
00000CD4  0C 6D 00 03 CF 72          cmpi.w     #$3, -$308e(a5)
00000CDA  66 06                      bne.b      $ce2
00000CDC  3B 7C 00 0A CF 6A          move.w     #$a, -$3096(a5)
00000CE2  4A 2D CF 60                tst.b      -$30a0(a5)
00000CE6  66 00 02 70                bne.w      $f58
00000CEA  4A 6D CF 66                tst.w      -$309a(a5)
00000CEE  6D 1A                      blt.b      $d0a
00000CF0  0C 6D 00 03 CF 66          cmpi.w     #$3, -$309a(a5)
00000CF6  6C 12                      bge.b      $d0a
00000CF8  48 6D DD 9A                pea.l      -$2266(a5)
00000CFC  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000D00  3F 3C FF F5                move.w     #$fff5, -(a7)
00000D04  A8 A8                      .byte      0xa8, 0xa8
00000D06  60 00 02 50                bra.w      $f58
00000D0A  0C 6D 00 03 CF 66          cmpi.w     #$3, -$309a(a5)
00000D10  6D 1A                      blt.b      $d2c
00000D12  0C 6D 00 06 CF 66          cmpi.w     #$6, -$309a(a5)
00000D18  6C 12                      bge.b      $d2c
00000D1A  48 6D DD 9A                pea.l      -$2266(a5)
00000D1E  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000D22  3F 3C FF F7                move.w     #$fff7, -(a7)
00000D26  A8 A8                      .byte      0xa8, 0xa8
00000D28  60 00 02 2E                bra.w      $f58
00000D2C  0C 6D 00 06 CF 66          cmpi.w     #$6, -$309a(a5)
00000D32  6D 1A                      blt.b      $d4e
00000D34  0C 6D 00 09 CF 66          cmpi.w     #$9, -$309a(a5)
00000D3A  6C 12                      bge.b      $d4e
00000D3C  48 6D DD 9A                pea.l      -$2266(a5)
00000D40  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000D44  3F 3C FF F9                move.w     #$fff9, -(a7)
00000D48  A8 A8                      .byte      0xa8, 0xa8
00000D4A  60 00 02 0C                bra.w      $f58
00000D4E  0C 6D 00 09 CF 66          cmpi.w     #$9, -$309a(a5)
00000D54  6D 1A                      blt.b      $d70
00000D56  0C 6D 00 0C CF 66          cmpi.w     #$c, -$309a(a5)
00000D5C  6C 12                      bge.b      $d70
00000D5E  48 6D DD 9A                pea.l      -$2266(a5)
00000D62  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000D66  3F 3C FF FA                move.w     #$fffa, -(a7)
00000D6A  A8 A8                      .byte      0xa8, 0xa8
00000D6C  60 00 01 EA                bra.w      $f58
00000D70  0C 6D 00 0C CF 66          cmpi.w     #$c, -$309a(a5)
00000D76  6D 1A                      blt.b      $d92
00000D78  0C 6D 00 0F CF 66          cmpi.w     #$f, -$309a(a5)
00000D7E  6C 12                      bge.b      $d92
00000D80  48 6D DD 9A                pea.l      -$2266(a5)
00000D84  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000D88  3F 3C FF FB                move.w     #$fffb, -(a7)
00000D8C  A8 A8                      .byte      0xa8, 0xa8
00000D8E  60 00 01 C8                bra.w      $f58
00000D92  0C 6D 00 0F CF 66          cmpi.w     #$f, -$309a(a5)
00000D98  6D 1A                      blt.b      $db4
00000D9A  0C 6D 00 12 CF 66          cmpi.w     #$12, -$309a(a5)
00000DA0  6C 12                      bge.b      $db4
00000DA2  48 6D DD 9A                pea.l      -$2266(a5)
00000DA6  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000DAA  3F 3C FF FC                move.w     #$fffc, -(a7)
00000DAE  A8 A8                      .byte      0xa8, 0xa8
00000DB0  60 00 01 A6                bra.w      $f58
00000DB4  0C 6D 00 12 CF 66          cmpi.w     #$12, -$309a(a5)
00000DBA  6D 1A                      blt.b      $dd6
00000DBC  0C 6D 00 15 CF 66          cmpi.w     #$15, -$309a(a5)
00000DC2  6C 12                      bge.b      $dd6
00000DC4  48 6D DD 9A                pea.l      -$2266(a5)
00000DC8  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000DCC  3F 3C FF FD                move.w     #$fffd, -(a7)
00000DD0  A8 A8                      .byte      0xa8, 0xa8
00000DD2  60 00 01 84                bra.w      $f58
00000DD6  0C 6D 00 15 CF 66          cmpi.w     #$15, -$309a(a5)
00000DDC  6D 1A                      blt.b      $df8
00000DDE  0C 6D 00 18 CF 66          cmpi.w     #$18, -$309a(a5)
00000DE4  6C 12                      bge.b      $df8
00000DE6  48 6D DD 9A                pea.l      -$2266(a5)
00000DEA  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000DEE  3F 3C FF FE                move.w     #$fffe, -(a7)
00000DF2  A8 A8                      .byte      0xa8, 0xa8
00000DF4  60 00 01 62                bra.w      $f58
00000DF8  0C 6D 00 18 CF 66          cmpi.w     #$18, -$309a(a5)
00000DFE  6D 1A                      blt.b      $e1a
00000E00  0C 6D 00 1B CF 66          cmpi.w     #$1b, -$309a(a5)
00000E06  6C 12                      bge.b      $e1a
00000E08  48 6D DD 9A                pea.l      -$2266(a5)
00000E0C  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000E10  3F 3C FF FF                move.w     #$ffff, -(a7)
00000E14  A8 A8                      .byte      0xa8, 0xa8
00000E16  60 00 01 40                bra.w      $f58
00000E1A  0C 6D 00 1B CF 66          cmpi.w     #$1b, -$309a(a5)
00000E20  6D 18                      blt.b      $e3a
00000E22  0C 6D 00 1E CF 66          cmpi.w     #$1e, -$309a(a5)
00000E28  6C 10                      bge.b      $e3a
00000E2A  48 6D DD 9A                pea.l      -$2266(a5)
00000E2E  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000E32  42 67                      clr.w      -(a7)
00000E34  A8 A8                      .byte      0xa8, 0xa8
00000E36  60 00 01 20                bra.w      $f58
00000E3A  0C 6D 00 1E CF 66          cmpi.w     #$1e, -$309a(a5)
00000E40  6D 1A                      blt.b      $e5c
00000E42  0C 6D 00 21 CF 66          cmpi.w     #$21, -$309a(a5)
00000E48  6C 12                      bge.b      $e5c
00000E4A  48 6D DD 9A                pea.l      -$2266(a5)
00000E4E  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000E52  3F 3C 00 01                move.w     #$1, -(a7)
00000E56  A8 A8                      .byte      0xa8, 0xa8
00000E58  60 00 00 FE                bra.w      $f58
00000E5C  0C 6D 00 21 CF 66          cmpi.w     #$21, -$309a(a5)
00000E62  6D 1A                      blt.b      $e7e
00000E64  0C 6D 00 24 CF 66          cmpi.w     #$24, -$309a(a5)
00000E6A  6C 12                      bge.b      $e7e
00000E6C  48 6D DD 9A                pea.l      -$2266(a5)
00000E70  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000E74  3F 3C 00 02                move.w     #$2, -(a7)
00000E78  A8 A8                      .byte      0xa8, 0xa8
00000E7A  60 00 00 DC                bra.w      $f58
00000E7E  0C 6D 00 24 CF 66          cmpi.w     #$24, -$309a(a5)
00000E84  6D 1A                      blt.b      $ea0
00000E86  0C 6D 00 27 CF 66          cmpi.w     #$27, -$309a(a5)
00000E8C  6C 12                      bge.b      $ea0
00000E8E  48 6D DD 9A                pea.l      -$2266(a5)
00000E92  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000E96  3F 3C 00 03                move.w     #$3, -(a7)
00000E9A  A8 A8                      .byte      0xa8, 0xa8
00000E9C  60 00 00 BA                bra.w      $f58
00000EA0  0C 6D 00 27 CF 66          cmpi.w     #$27, -$309a(a5)
00000EA6  6D 1A                      blt.b      $ec2
00000EA8  0C 6D 00 29 CF 66          cmpi.w     #$29, -$309a(a5)
00000EAE  6C 12                      bge.b      $ec2
00000EB0  48 6D DD 9A                pea.l      -$2266(a5)
00000EB4  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000EB8  3F 3C 00 04                move.w     #$4, -(a7)
00000EBC  A8 A8                      .byte      0xa8, 0xa8
00000EBE  60 00 00 98                bra.w      $f58
00000EC2  0C 6D 00 29 CF 66          cmpi.w     #$29, -$309a(a5)
00000EC8  6D 18                      blt.b      $ee2
00000ECA  0C 6D 00 2C CF 66          cmpi.w     #$2c, -$309a(a5)
00000ED0  6C 10                      bge.b      $ee2
00000ED2  48 6D DD 9A                pea.l      -$2266(a5)
00000ED6  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000EDA  3F 3C 00 05                move.w     #$5, -(a7)
00000EDE  A8 A8                      .byte      0xa8, 0xa8
00000EE0  60 76                      bra.b      $f58
00000EE2  0C 6D 00 2C CF 66          cmpi.w     #$2c, -$309a(a5)
00000EE8  6D 18                      blt.b      $f02
00000EEA  0C 6D 00 2F CF 66          cmpi.w     #$2f, -$309a(a5)
00000EF0  6C 10                      bge.b      $f02
00000EF2  48 6D DD 9A                pea.l      -$2266(a5)
00000EF6  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000EFA  3F 3C 00 06                move.w     #$6, -(a7)
00000EFE  A8 A8                      .byte      0xa8, 0xa8
00000F00  60 56                      bra.b      $f58
00000F02  0C 6D 00 2F CF 66          cmpi.w     #$2f, -$309a(a5)
00000F08  6D 18                      blt.b      $f22
00000F0A  0C 6D 00 32 CF 66          cmpi.w     #$32, -$309a(a5)
00000F10  6C 10                      bge.b      $f22
00000F12  48 6D DD 9A                pea.l      -$2266(a5)
00000F16  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000F1A  3F 3C 00 07                move.w     #$7, -(a7)
00000F1E  A8 A8                      .byte      0xa8, 0xa8
00000F20  60 36                      bra.b      $f58
00000F22  0C 6D 00 32 CF 66          cmpi.w     #$32, -$309a(a5)
00000F28  6D 18                      blt.b      $f42
00000F2A  0C 6D 00 35 CF 66          cmpi.w     #$35, -$309a(a5)
00000F30  6C 10                      bge.b      $f42
00000F32  48 6D DD 9A                pea.l      -$2266(a5)
00000F36  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000F3A  3F 3C 00 09                move.w     #$9, -(a7)
00000F3E  A8 A8                      .byte      0xa8, 0xa8
00000F40  60 16                      bra.b      $f58
00000F42  0C 6D 00 35 CF 66          cmpi.w     #$35, -$309a(a5)
00000F48  6D 0E                      blt.b      $f58
00000F4A  48 6D DD 9A                pea.l      -$2266(a5)
00000F4E  3F 2D CF 6A                move.w     -$3096(a5), -(a7)
00000F52  3F 3C 00 0B                move.w     #$b, -(a7)
00000F56  A8 A8                      .byte      0xa8, 0xa8
00000F58  52 6D CF 66                addq.w     #$1, -$309a(a5)
00000F5C  0C 6D 02 04 DD 9C          cmpi.w     #$204, -$2264(a5)
00000F62  6E 16                      bgt.b      $f7a
00000F64  55 4F                      subq.w     #$2, a7
00000F66  48 6D DD 9A                pea.l      -$2266(a5)
00000F6A  48 6D DC 56                pea.l      -$23aa(a5)
00000F6E  48 6E FF F8                pea.l      -$8(a6)
00000F72  A8 AA                      .byte      0xa8, 0xaa
00000F74  10 1F                      move.b     (a7)+, d0
00000F76  67 00 00 CC                beq.w      $1044
00000F7A  55 4F                      subq.w     #$2, a7
00000F7C  48 6D DD 9A                pea.l      -$2266(a5)
00000F80  48 6D DC 56                pea.l      -$23aa(a5)
00000F84  48 6E FF F8                pea.l      -$8(a6)
00000F88  A8 AA                      .byte      0xa8, 0xaa
00000F8A  10 1F                      move.b     (a7)+, d0
00000F8C  67 4C                      beq.b      $fda
00000F8E  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00000F94  66 08                      bne.b      $f9e
00000F96  1B 7C 00 01 CF 60          move.b     #$1, -$30a0(a5)
00000F9C  60 3C                      bra.b      $fda
00000F9E  30 2D DD A0                move.w     -$2260(a5), d0
00000FA2  5B 40                      subq.w     #$5, d0
00000FA4  3B 40 D7 7C                move.w     d0, -$2884(a5)
00000FA8  70 D8                      moveq      #$d8, d0
00000FAA  D0 6D D7 7C                add.w      -$2884(a5), d0
00000FAE  3B 40 D7 78                move.w     d0, -$2888(a5)
00000FB2  3B 6D DD 9A D7 76          move.w     -$2266(a5), -$288a(a5)
00000FB8  70 28                      moveq      #$28, d0
00000FBA  D0 6D D7 76                add.w      -$288a(a5), d0
00000FBE  3B 40 D7 7A                move.w     d0, -$2886(a5)
00000FC2  4E B9 00 00 05 58          jsr        $558.l
00000FC8  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
00000FCE  2F 2D DE BE                move.l     -$2142(a5), -(a7)
00000FD2  4E B9 00 00 00 98          jsr        $98.l
00000FD8  58 4F                      addq.w     #$4, a7
00000FDA  4A 2D CF AA                tst.b      -$3056(a5)
00000FDE  66 64                      bne.b      $1044
00000FE0  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00000FE6  42 2D D4 04                clr.b      -$2bfc(a5)
00000FEA  42 2D CF 6E                clr.b      -$3092(a5)
00000FEE  48 6D DD 9A                pea.l      -$2266(a5)
00000FF2  48 6D DD A2                pea.l      -$225e(a5)
00000FF6  48 6E FF F8                pea.l      -$8(a6)
00000FFA  A8 AB                      .byte      0xa8, 0xab
00000FFC  20 6D D3 FA                movea.l    -$2c06(a5), a0
00001000  48 68 00 02                pea.l      $2(a0)
00001004  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001008  48 68 00 02                pea.l      $2(a0)
0000100C  48 6E FF F8                pea.l      -$8(a6)
00001010  48 6E FF F8                pea.l      -$8(a6)
00001014  42 67                      clr.w      -(a7)
00001016  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000101A  2F 28 00 18                move.l     $18(a0), -(a7)
0000101E  A8 EC                      .byte      0xa8, 0xec
00001020  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001024  48 68 00 02                pea.l      $2(a0)
00001028  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000102C  48 68 00 02                pea.l      $2(a0)
00001030  48 6E FF F8                pea.l      -$8(a6)
00001034  48 6E FF F8                pea.l      -$8(a6)
00001038  42 67                      clr.w      -(a7)
0000103A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000103E  2F 28 00 18                move.l     $18(a0), -(a7)
00001042  A8 EC                      .byte      0xa8, 0xec
00001044  0C 2D 00 01 CF 60          cmpi.b     #$1, -$30a0(a5)
0000104A  66 7C                      bne.b      $10c8
0000104C  48 6D DD 9A                pea.l      -$2266(a5)
00001050  2F 3C 00 09 FF FF          move.l     #$9ffff, -(a7)
00001056  A8 A8                      .byte      0xa8, 0xa8
00001058  0C 6D 01 B0 DD 9A          cmpi.w     #$1b0, -$2266(a5)
0000105E  6F 68                      ble.b      $10c8
00001060  42 2D CF 60                clr.b      -$30a0(a5)
00001064  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
0000106A  42 2D D4 04                clr.b      -$2bfc(a5)
0000106E  42 2D CF 6E                clr.b      -$3092(a5)
00001072  48 6D DD 9A                pea.l      -$2266(a5)
00001076  48 6D DD A2                pea.l      -$225e(a5)
0000107A  48 6E FF F8                pea.l      -$8(a6)
0000107E  A8 AB                      .byte      0xa8, 0xab
00001080  20 6D D3 FA                movea.l    -$2c06(a5), a0
00001084  48 68 00 02                pea.l      $2(a0)
00001088  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000108C  48 68 00 02                pea.l      $2(a0)
00001090  48 6E FF F8                pea.l      -$8(a6)
00001094  48 6E FF F8                pea.l      -$8(a6)
00001098  42 67                      clr.w      -(a7)
0000109A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000109E  2F 28 00 18                move.l     $18(a0), -(a7)
000010A2  A8 EC                      .byte      0xa8, 0xec
000010A4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000010A8  48 68 00 02                pea.l      $2(a0)
000010AC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000010B0  48 68 00 02                pea.l      $2(a0)
000010B4  48 6E FF F8                pea.l      -$8(a6)
000010B8  48 6E FF F8                pea.l      -$8(a6)
000010BC  42 67                      clr.w      -(a7)
000010BE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000010C2  2F 28 00 18                move.l     $18(a0), -(a7)
000010C6  A8 EC                      .byte      0xa8, 0xec
000010C8  4E 5E                      unlk       a6
000010CA  4E 75                      rts

; MacsBug symbol trailer for HandleOmohGrenade1: 92 48 61 6E 64 6C 65 4F 6D 6F 68 47 72 65 6E 61 64 65 31

HandleOmohGrenade2: ; 000010E2..00001530
000010E2  4E 56 FF F8                link.w     a6, #$fff8
000010E6  2B 6D DD 76 DD 7E          move.l     -$228a(a5), -$2282(a5)
000010EC  2B 6D DD 7A DD 82          move.l     -$2286(a5), -$227e(a5)
000010F2  0C 6D 00 1E CF 64          cmpi.w     #$1e, -$309c(a5)
000010F8  6D 28                      blt.b      $1122
000010FA  0C 6D 00 2C CF 64          cmpi.w     #$2c, -$309c(a5)
00001100  6C 20                      bge.b      $1122
00001102  0C 6D 00 02 CF 70          cmpi.w     #$2, -$3090(a5)
00001108  66 08                      bne.b      $1112
0000110A  3B 7C FF F9 CF 68          move.w     #$fff9, -$3098(a5)
00001110  60 36                      bra.b      $1148
00001112  0C 6D 00 03 CF 70          cmpi.w     #$3, -$3090(a5)
00001118  66 2E                      bne.b      $1148
0000111A  3B 7C FF F7 CF 68          move.w     #$fff7, -$3098(a5)
00001120  60 26                      bra.b      $1148
00001122  0C 6D 00 2C CF 64          cmpi.w     #$2c, -$309c(a5)
00001128  6D 1E                      blt.b      $1148
0000112A  0C 6D 00 02 CF 70          cmpi.w     #$2, -$3090(a5)
00001130  66 08                      bne.b      $113a
00001132  3B 7C FF FA CF 68          move.w     #$fffa, -$3098(a5)
00001138  60 0E                      bra.b      $1148
0000113A  0C 6D 00 03 CF 70          cmpi.w     #$3, -$3090(a5)
00001140  66 06                      bne.b      $1148
00001142  3B 7C FF F6 CF 68          move.w     #$fff6, -$3098(a5)
00001148  4A 2D CF 62                tst.b      -$309e(a5)
0000114C  66 00 02 70                bne.w      $13be
00001150  4A 6D CF 64                tst.w      -$309c(a5)
00001154  6D 1A                      blt.b      $1170
00001156  0C 6D 00 03 CF 64          cmpi.w     #$3, -$309c(a5)
0000115C  6C 12                      bge.b      $1170
0000115E  48 6D DD 76                pea.l      -$228a(a5)
00001162  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001166  3F 3C FF F5                move.w     #$fff5, -(a7)
0000116A  A8 A8                      .byte      0xa8, 0xa8
0000116C  60 00 02 50                bra.w      $13be
00001170  0C 6D 00 03 CF 64          cmpi.w     #$3, -$309c(a5)
00001176  6D 1A                      blt.b      $1192
00001178  0C 6D 00 06 CF 64          cmpi.w     #$6, -$309c(a5)
0000117E  6C 12                      bge.b      $1192
00001180  48 6D DD 76                pea.l      -$228a(a5)
00001184  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001188  3F 3C FF F7                move.w     #$fff7, -(a7)
0000118C  A8 A8                      .byte      0xa8, 0xa8
0000118E  60 00 02 2E                bra.w      $13be
00001192  0C 6D 00 06 CF 64          cmpi.w     #$6, -$309c(a5)
00001198  6D 1A                      blt.b      $11b4
0000119A  0C 6D 00 09 CF 64          cmpi.w     #$9, -$309c(a5)
000011A0  6C 12                      bge.b      $11b4
000011A2  48 6D DD 76                pea.l      -$228a(a5)
000011A6  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000011AA  3F 3C FF F9                move.w     #$fff9, -(a7)
000011AE  A8 A8                      .byte      0xa8, 0xa8
000011B0  60 00 02 0C                bra.w      $13be
000011B4  0C 6D 00 09 CF 64          cmpi.w     #$9, -$309c(a5)
000011BA  6D 1A                      blt.b      $11d6
000011BC  0C 6D 00 0C CF 64          cmpi.w     #$c, -$309c(a5)
000011C2  6C 12                      bge.b      $11d6
000011C4  48 6D DD 76                pea.l      -$228a(a5)
000011C8  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000011CC  3F 3C FF FA                move.w     #$fffa, -(a7)
000011D0  A8 A8                      .byte      0xa8, 0xa8
000011D2  60 00 01 EA                bra.w      $13be
000011D6  0C 6D 00 0C CF 64          cmpi.w     #$c, -$309c(a5)
000011DC  6D 1A                      blt.b      $11f8
000011DE  0C 6D 00 0F CF 64          cmpi.w     #$f, -$309c(a5)
000011E4  6C 12                      bge.b      $11f8
000011E6  48 6D DD 76                pea.l      -$228a(a5)
000011EA  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000011EE  3F 3C FF FB                move.w     #$fffb, -(a7)
000011F2  A8 A8                      .byte      0xa8, 0xa8
000011F4  60 00 01 C8                bra.w      $13be
000011F8  0C 6D 00 0F CF 64          cmpi.w     #$f, -$309c(a5)
000011FE  6D 1A                      blt.b      $121a
00001200  0C 6D 00 12 CF 64          cmpi.w     #$12, -$309c(a5)
00001206  6C 12                      bge.b      $121a
00001208  48 6D DD 76                pea.l      -$228a(a5)
0000120C  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001210  3F 3C FF FC                move.w     #$fffc, -(a7)
00001214  A8 A8                      .byte      0xa8, 0xa8
00001216  60 00 01 A6                bra.w      $13be
0000121A  0C 6D 00 12 CF 64          cmpi.w     #$12, -$309c(a5)
00001220  6D 1A                      blt.b      $123c
00001222  0C 6D 00 15 CF 64          cmpi.w     #$15, -$309c(a5)
00001228  6C 12                      bge.b      $123c
0000122A  48 6D DD 76                pea.l      -$228a(a5)
0000122E  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001232  3F 3C FF FD                move.w     #$fffd, -(a7)
00001236  A8 A8                      .byte      0xa8, 0xa8
00001238  60 00 01 84                bra.w      $13be
0000123C  0C 6D 00 15 CF 64          cmpi.w     #$15, -$309c(a5)
00001242  6D 1A                      blt.b      $125e
00001244  0C 6D 00 18 CF 64          cmpi.w     #$18, -$309c(a5)
0000124A  6C 12                      bge.b      $125e
0000124C  48 6D DD 76                pea.l      -$228a(a5)
00001250  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001254  3F 3C FF FE                move.w     #$fffe, -(a7)
00001258  A8 A8                      .byte      0xa8, 0xa8
0000125A  60 00 01 62                bra.w      $13be
0000125E  0C 6D 00 18 CF 64          cmpi.w     #$18, -$309c(a5)
00001264  6D 1A                      blt.b      $1280
00001266  0C 6D 00 1B CF 64          cmpi.w     #$1b, -$309c(a5)
0000126C  6C 12                      bge.b      $1280
0000126E  48 6D DD 76                pea.l      -$228a(a5)
00001272  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001276  3F 3C FF FF                move.w     #$ffff, -(a7)
0000127A  A8 A8                      .byte      0xa8, 0xa8
0000127C  60 00 01 40                bra.w      $13be
00001280  0C 6D 00 1B CF 64          cmpi.w     #$1b, -$309c(a5)
00001286  6D 18                      blt.b      $12a0
00001288  0C 6D 00 1E CF 64          cmpi.w     #$1e, -$309c(a5)
0000128E  6C 10                      bge.b      $12a0
00001290  48 6D DD 76                pea.l      -$228a(a5)
00001294  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001298  42 67                      clr.w      -(a7)
0000129A  A8 A8                      .byte      0xa8, 0xa8
0000129C  60 00 01 20                bra.w      $13be
000012A0  0C 6D 00 1E CF 64          cmpi.w     #$1e, -$309c(a5)
000012A6  6D 1A                      blt.b      $12c2
000012A8  0C 6D 00 21 CF 64          cmpi.w     #$21, -$309c(a5)
000012AE  6C 12                      bge.b      $12c2
000012B0  48 6D DD 76                pea.l      -$228a(a5)
000012B4  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000012B8  3F 3C 00 01                move.w     #$1, -(a7)
000012BC  A8 A8                      .byte      0xa8, 0xa8
000012BE  60 00 00 FE                bra.w      $13be
000012C2  0C 6D 00 21 CF 64          cmpi.w     #$21, -$309c(a5)
000012C8  6D 1A                      blt.b      $12e4
000012CA  0C 6D 00 24 CF 64          cmpi.w     #$24, -$309c(a5)
000012D0  6C 12                      bge.b      $12e4
000012D2  48 6D DD 76                pea.l      -$228a(a5)
000012D6  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000012DA  3F 3C 00 02                move.w     #$2, -(a7)
000012DE  A8 A8                      .byte      0xa8, 0xa8
000012E0  60 00 00 DC                bra.w      $13be
000012E4  0C 6D 00 24 CF 64          cmpi.w     #$24, -$309c(a5)
000012EA  6D 1A                      blt.b      $1306
000012EC  0C 6D 00 27 CF 64          cmpi.w     #$27, -$309c(a5)
000012F2  6C 12                      bge.b      $1306
000012F4  48 6D DD 76                pea.l      -$228a(a5)
000012F8  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000012FC  3F 3C 00 03                move.w     #$3, -(a7)
00001300  A8 A8                      .byte      0xa8, 0xa8
00001302  60 00 00 BA                bra.w      $13be
00001306  0C 6D 00 27 CF 64          cmpi.w     #$27, -$309c(a5)
0000130C  6D 1A                      blt.b      $1328
0000130E  0C 6D 00 29 CF 64          cmpi.w     #$29, -$309c(a5)
00001314  6C 12                      bge.b      $1328
00001316  48 6D DD 76                pea.l      -$228a(a5)
0000131A  3F 2D CF 68                move.w     -$3098(a5), -(a7)
0000131E  3F 3C 00 04                move.w     #$4, -(a7)
00001322  A8 A8                      .byte      0xa8, 0xa8
00001324  60 00 00 98                bra.w      $13be
00001328  0C 6D 00 29 CF 64          cmpi.w     #$29, -$309c(a5)
0000132E  6D 18                      blt.b      $1348
00001330  0C 6D 00 2C CF 64          cmpi.w     #$2c, -$309c(a5)
00001336  6C 10                      bge.b      $1348
00001338  48 6D DD 76                pea.l      -$228a(a5)
0000133C  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001340  3F 3C 00 05                move.w     #$5, -(a7)
00001344  A8 A8                      .byte      0xa8, 0xa8
00001346  60 76                      bra.b      $13be
00001348  0C 6D 00 2C CF 64          cmpi.w     #$2c, -$309c(a5)
0000134E  6D 18                      blt.b      $1368
00001350  0C 6D 00 2F CF 64          cmpi.w     #$2f, -$309c(a5)
00001356  6C 10                      bge.b      $1368
00001358  48 6D DD 76                pea.l      -$228a(a5)
0000135C  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001360  3F 3C 00 06                move.w     #$6, -(a7)
00001364  A8 A8                      .byte      0xa8, 0xa8
00001366  60 56                      bra.b      $13be
00001368  0C 6D 00 2F CF 64          cmpi.w     #$2f, -$309c(a5)
0000136E  6D 18                      blt.b      $1388
00001370  0C 6D 00 32 CF 64          cmpi.w     #$32, -$309c(a5)
00001376  6C 10                      bge.b      $1388
00001378  48 6D DD 76                pea.l      -$228a(a5)
0000137C  3F 2D CF 68                move.w     -$3098(a5), -(a7)
00001380  3F 3C 00 07                move.w     #$7, -(a7)
00001384  A8 A8                      .byte      0xa8, 0xa8
00001386  60 36                      bra.b      $13be
00001388  0C 6D 00 32 CF 64          cmpi.w     #$32, -$309c(a5)
0000138E  6D 18                      blt.b      $13a8
00001390  0C 6D 00 35 CF 64          cmpi.w     #$35, -$309c(a5)
00001396  6C 10                      bge.b      $13a8
00001398  48 6D DD 76                pea.l      -$228a(a5)
0000139C  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000013A0  3F 3C 00 09                move.w     #$9, -(a7)
000013A4  A8 A8                      .byte      0xa8, 0xa8
000013A6  60 16                      bra.b      $13be
000013A8  0C 6D 00 35 CF 64          cmpi.w     #$35, -$309c(a5)
000013AE  6D 0E                      blt.b      $13be
000013B0  48 6D DD 76                pea.l      -$228a(a5)
000013B4  3F 2D CF 68                move.w     -$3098(a5), -(a7)
000013B8  3F 3C 00 0B                move.w     #$b, -(a7)
000013BC  A8 A8                      .byte      0xa8, 0xa8
000013BE  52 6D CF 64                addq.w     #$1, -$309c(a5)
000013C2  4A 6D DD 7C                tst.w      -$2284(a5)
000013C6  6D 16                      blt.b      $13de
000013C8  55 4F                      subq.w     #$2, a7
000013CA  48 6D DD 76                pea.l      -$228a(a5)
000013CE  48 6D DC 82                pea.l      -$237e(a5)
000013D2  48 6E FF F8                pea.l      -$8(a6)
000013D6  A8 AA                      .byte      0xa8, 0xaa
000013D8  10 1F                      move.b     (a7)+, d0
000013DA  67 00 00 CC                beq.w      $14a8
000013DE  55 4F                      subq.w     #$2, a7
000013E0  48 6D DD 76                pea.l      -$228a(a5)
000013E4  48 6D DC 82                pea.l      -$237e(a5)
000013E8  48 6E FF F8                pea.l      -$8(a6)
000013EC  A8 AA                      .byte      0xa8, 0xaa
000013EE  10 1F                      move.b     (a7)+, d0
000013F0  67 4C                      beq.b      $143e
000013F2  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
000013F8  66 08                      bne.b      $1402
000013FA  1B 7C 00 01 CF 62          move.b     #$1, -$309e(a5)
00001400  60 3C                      bra.b      $143e
00001402  30 2D DD 78                move.w     -$2288(a5), d0
00001406  5A 40                      addq.w     #$5, d0
00001408  3B 40 D7 70                move.w     d0, -$2890(a5)
0000140C  70 28                      moveq      #$28, d0
0000140E  D0 6D D7 70                add.w      -$2890(a5), d0
00001412  3B 40 D7 74                move.w     d0, -$288c(a5)
00001416  3B 6D DD 76 D7 6E          move.w     -$228a(a5), -$2892(a5)
0000141C  70 28                      moveq      #$28, d0
0000141E  D0 6D D7 6E                add.w      -$2892(a5), d0
00001422  3B 40 D7 72                move.w     d0, -$288e(a5)
00001426  4E B9 00 00 05 50          jsr        $550.l
0000142C  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00001432  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00001436  4E B9 00 00 00 90          jsr        $90.l
0000143C  58 4F                      addq.w     #$4, a7
0000143E  4A 2D CF E6                tst.b      -$301a(a5)
00001442  66 64                      bne.b      $14a8
00001444  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
0000144A  42 2D D4 02                clr.b      -$2bfe(a5)
0000144E  42 2D CF 6C                clr.b      -$3094(a5)
00001452  48 6D DD 76                pea.l      -$228a(a5)
00001456  48 6D DD 7E                pea.l      -$2282(a5)
0000145A  48 6E FF F8                pea.l      -$8(a6)
0000145E  A8 AB                      .byte      0xa8, 0xab
00001460  20 6D D3 FA                movea.l    -$2c06(a5), a0
00001464  48 68 00 02                pea.l      $2(a0)
00001468  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000146C  48 68 00 02                pea.l      $2(a0)
00001470  48 6E FF F8                pea.l      -$8(a6)
00001474  48 6E FF F8                pea.l      -$8(a6)
00001478  42 67                      clr.w      -(a7)
0000147A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000147E  2F 28 00 18                move.l     $18(a0), -(a7)
00001482  A8 EC                      .byte      0xa8, 0xec
00001484  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001488  48 68 00 02                pea.l      $2(a0)
0000148C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001490  48 68 00 02                pea.l      $2(a0)
00001494  48 6E FF F8                pea.l      -$8(a6)
00001498  48 6E FF F8                pea.l      -$8(a6)
0000149C  42 67                      clr.w      -(a7)
0000149E  20 6D D3 DE                movea.l    -$2c22(a5), a0
000014A2  2F 28 00 18                move.l     $18(a0), -(a7)
000014A6  A8 EC                      .byte      0xa8, 0xec
000014A8  0C 2D 00 01 CF 62          cmpi.b     #$1, -$309e(a5)
000014AE  66 7C                      bne.b      $152c
000014B0  48 6D DD 76                pea.l      -$228a(a5)
000014B4  2F 3C 00 09 00 01          move.l     #$90001, -(a7)
000014BA  A8 A8                      .byte      0xa8, 0xa8
000014BC  0C 6D 01 B0 DD 76          cmpi.w     #$1b0, -$228a(a5)
000014C2  6F 68                      ble.b      $152c
000014C4  42 2D CF 62                clr.b      -$309e(a5)
000014C8  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000014CE  42 2D D4 02                clr.b      -$2bfe(a5)
000014D2  42 2D CF 6C                clr.b      -$3094(a5)
000014D6  48 6D DD 76                pea.l      -$228a(a5)
000014DA  48 6D DD 7E                pea.l      -$2282(a5)
000014DE  48 6E FF F8                pea.l      -$8(a6)
000014E2  A8 AB                      .byte      0xa8, 0xab
000014E4  20 6D D3 FA                movea.l    -$2c06(a5), a0
000014E8  48 68 00 02                pea.l      $2(a0)
000014EC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000014F0  48 68 00 02                pea.l      $2(a0)
000014F4  48 6E FF F8                pea.l      -$8(a6)
000014F8  48 6E FF F8                pea.l      -$8(a6)
000014FC  42 67                      clr.w      -(a7)
000014FE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001502  2F 28 00 18                move.l     $18(a0), -(a7)
00001506  A8 EC                      .byte      0xa8, 0xec
00001508  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000150C  48 68 00 02                pea.l      $2(a0)
00001510  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001514  48 68 00 02                pea.l      $2(a0)
00001518  48 6E FF F8                pea.l      -$8(a6)
0000151C  48 6E FF F8                pea.l      -$8(a6)
00001520  42 67                      clr.w      -(a7)
00001522  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001526  2F 28 00 18                move.l     $18(a0), -(a7)
0000152A  A8 EC                      .byte      0xa8, 0xec
0000152C  4E 5E                      unlk       a6
0000152E  4E 75                      rts

; MacsBug symbol trailer for HandleOmohGrenade2: 92 48 61 6E 64 6C 65 4F 6D 6F 68 47 72 65 6E 61 64 65 32

MoveFire1: ; 00001546..000015C8
00001546  4E 56 00 00                link.w     a6, #$0
0000154A  30 2D DC 84                move.w     -$237c(a5), d0
0000154E  54 40                      addq.w     #$2, d0
00001550  3B 40 DC 34                move.w     d0, -$23cc(a5)
00001554  30 2D DC 34                move.w     -$23cc(a5), d0
00001558  D0 6D D8 0E                add.w      -$27f2(a5), d0
0000155C  3B 40 DC 38                move.w     d0, -$23c8(a5)
00001560  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00001566  66 0C                      bne.b      $1574
00001568  70 F4                      moveq      #$f4, d0
0000156A  D0 6D DC 82                add.w      -$237e(a5), d0
0000156E  3B 40 DC 32                move.w     d0, -$23ce(a5)
00001572  60 0A                      bra.b      $157e
00001574  70 10                      moveq      #$10, d0
00001576  D0 6D DC 82                add.w      -$237e(a5), d0
0000157A  3B 40 DC 32                move.w     d0, -$23ce(a5)
0000157E  30 2D DC 32                move.w     -$23ce(a5), d0
00001582  D0 6D D8 0C                add.w      -$27f4(a5), d0
00001586  3B 40 DC 36                move.w     d0, -$23ca(a5)
0000158A  2B 6D DC 32 DC 4A          move.l     -$23ce(a5), -$23b6(a5)
00001590  2B 6D DC 36 DC 4E          move.l     -$23ca(a5), -$23b2(a5)
00001596  2B 6D DC 32 DC 3A          move.l     -$23ce(a5), -$23c6(a5)
0000159C  2B 6D DC 36 DC 3E          move.l     -$23ca(a5), -$23c2(a5)
000015A2  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
000015A8  2F 2D DE CE                move.l     -$2132(a5), -(a7)
000015AC  4E B9 00 00 00 90          jsr        $90.l
000015B2  42 2D FF DA                clr.b      -$26(a5)
000015B6  A9 75                      .byte      0xa9, 0x75
000015B8  20 1F                      move.l     (a7)+, d0
000015BA  2B 40 D7 9E                move.l     d0, -$2862(a5)
000015BE  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000015C4  4E 5E                      unlk       a6
000015C6  4E 75                      rts

; MacsBug symbol trailer for MoveFire1: 89 4D 6F 76 65 46 69 72 65 31

MoveFire2: ; 000015D4..00001656
000015D4  4E 56 00 00                link.w     a6, #$0
000015D8  30 2D DC 5C                move.w     -$23a4(a5), d0
000015DC  55 40                      subq.w     #$2, d0
000015DE  3B 40 DC 14                move.w     d0, -$23ec(a5)
000015E2  30 2D DC 14                move.w     -$23ec(a5), d0
000015E6  90 6D D8 0A                sub.w      -$27f6(a5), d0
000015EA  3B 40 DC 10                move.w     d0, -$23f0(a5)
000015EE  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
000015F4  66 0C                      bne.b      $1602
000015F6  70 F4                      moveq      #$f4, d0
000015F8  D0 6D DC 56                add.w      -$23aa(a5), d0
000015FC  3B 40 DC 0E                move.w     d0, -$23f2(a5)
00001600  60 0A                      bra.b      $160c
00001602  70 10                      moveq      #$10, d0
00001604  D0 6D DC 56                add.w      -$23aa(a5), d0
00001608  3B 40 DC 0E                move.w     d0, -$23f2(a5)
0000160C  30 2D DC 0E                move.w     -$23f2(a5), d0
00001610  D0 6D D8 08                add.w      -$27f8(a5), d0
00001614  3B 40 DC 12                move.w     d0, -$23ee(a5)
00001618  2B 6D DC 0E DC 26          move.l     -$23f2(a5), -$23da(a5)
0000161E  2B 6D DC 12 DC 2A          move.l     -$23ee(a5), -$23d6(a5)
00001624  2B 6D DC 0E DC 16          move.l     -$23f2(a5), -$23ea(a5)
0000162A  2B 6D DC 12 DC 1A          move.l     -$23ee(a5), -$23e6(a5)
00001630  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00001636  2F 2D DE CA                move.l     -$2136(a5), -(a7)
0000163A  4E B9 00 00 00 98          jsr        $98.l
00001640  42 2D FF DC                clr.b      -$24(a5)
00001644  A9 75                      .byte      0xa9, 0x75
00001646  20 1F                      move.l     (a7)+, d0
00001648  2B 40 D7 9A                move.l     d0, -$2866(a5)
0000164C  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001652  4E 5E                      unlk       a6
00001654  4E 75                      rts

; MacsBug symbol trailer for MoveFire2: 89 4D 6F 76 65 46 69 72 65 32

HandleFire1: ; 00001662..0000198C
00001662  4E 56 FF F8                link.w     a6, #$fff8
00001666  2F 03                      move.l     d3, -(a7)
00001668  2B 6D DC 32 DC 3A          move.l     -$23ce(a5), -$23c6(a5)
0000166E  2B 6D DC 36 DC 3E          move.l     -$23ca(a5), -$23c2(a5)
00001674  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
0000167A  66 0E                      bne.b      $168a
0000167C  48 6D DC 32                pea.l      -$23ce(a5)
00001680  48 78 00 07                pea.l      $7.w
00001684  A8 A8                      .byte      0xa8, 0xa8
00001686  60 00 01 8E                bra.w      $1816
0000168A  0C 6D 00 0A FF E0          cmpi.w     #$a, -$20(a5)
00001690  66 00 00 CC                bne.w      $175e
00001694  0C 2D 00 01 D7 C8          cmpi.b     #$1, -$2838(a5)
0000169A  66 00 00 B4                bne.w      $1750
0000169E  55 4F                      subq.w     #$2, a7
000016A0  A8 61                      .byte      0xa8, 0x61
000016A2  30 1F                      move.w     (a7)+, d0
000016A4  02 40 7F FF                andi.w     #$7fff, d0
000016A8  48 C0                      ext.l      d0
000016AA  81 FC 00 06                divs.w     #$6, d0
000016AE  48 40                      swap       d0
000016B0  52 40                      addq.w     #$1, d0
000016B2  36 00                      move.w     d0, d3
000016B4  0C 43 00 03                cmpi.w     #$3, d3
000016B8  6C 14                      bge.b      $16ce
000016BA  0C 6D 00 96 DC 32          cmpi.w     #$96, -$23ce(a5)
000016C0  6C 06                      bge.b      $16c8
000016C2  52 6D CF 76                addq.w     #$1, -$308a(a5)
000016C6  60 26                      bra.b      $16ee
000016C8  53 6D CF 76                subq.w     #$1, -$308a(a5)
000016CC  60 20                      bra.b      $16ee
000016CE  0C 43 00 04                cmpi.w     #$4, d3
000016D2  6F 14                      ble.b      $16e8
000016D4  0C 6D 01 7E DC 36          cmpi.w     #$17e, -$23ca(a5)
000016DA  6F 06                      ble.b      $16e2
000016DC  53 6D CF 76                subq.w     #$1, -$308a(a5)
000016E0  60 0C                      bra.b      $16ee
000016E2  52 6D CF 76                addq.w     #$1, -$308a(a5)
000016E6  60 06                      bra.b      $16ee
000016E8  3B 6D CF 76 CF 76          move.w     -$308a(a5), -$308a(a5)
000016EE  48 6D DC 32                pea.l      -$23ce(a5)
000016F2  3F 3C 00 09                move.w     #$9, -(a7)
000016F6  3F 2D CF 76                move.w     -$308a(a5), -(a7)
000016FA  A8 A8                      .byte      0xa8, 0xa8
000016FC  0C 6D 00 5A DC 32          cmpi.w     #$5a, -$23ce(a5)
00001702  6C 1E                      bge.b      $1722
00001704  48 6D DC 32                pea.l      -$23ce(a5)
00001708  42 67                      clr.w      -(a7)
0000170A  4A 6D CF 76                tst.w      -$308a(a5)
0000170E  6E 08                      bgt.b      $1718
00001710  30 2D CF 76                move.w     -$308a(a5), d0
00001714  44 40                      neg.w      d0
00001716  60 04                      bra.b      $171c
00001718  30 2D CF 76                move.w     -$308a(a5), d0
0000171C  54 40                      addq.w     #$2, d0
0000171E  3F 00                      move.w     d0, -(a7)
00001720  A8 A8                      .byte      0xa8, 0xa8
00001722  0C 6D 01 A6 DC 36          cmpi.w     #$1a6, -$23ca(a5)
00001728  6F 00 00 EC                ble.w      $1816
0000172C  48 6D DC 32                pea.l      -$23ce(a5)
00001730  42 67                      clr.w      -(a7)
00001732  4A 6D CF 76                tst.w      -$308a(a5)
00001736  6E 08                      bgt.b      $1740
00001738  30 2D CF 76                move.w     -$308a(a5), d0
0000173C  44 40                      neg.w      d0
0000173E  60 04                      bra.b      $1744
00001740  30 2D CF 76                move.w     -$308a(a5), d0
00001744  44 40                      neg.w      d0
00001746  55 40                      subq.w     #$2, d0
00001748  3F 00                      move.w     d0, -(a7)
0000174A  A8 A8                      .byte      0xa8, 0xa8
0000174C  60 00 00 C8                bra.w      $1816
00001750  48 6D DC 32                pea.l      -$23ce(a5)
00001754  48 78 00 0B                pea.l      $b.w
00001758  A8 A8                      .byte      0xa8, 0xa8
0000175A  60 00 00 BA                bra.w      $1816
0000175E  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
00001764  66 76                      bne.b      $17dc
00001766  4A 6D D7 BA                tst.w      -$2846(a5)
0000176A  66 10                      bne.b      $177c
0000176C  48 6D DC 32                pea.l      -$23ce(a5)
00001770  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
00001774  42 67                      clr.w      -(a7)
00001776  A8 A8                      .byte      0xa8, 0xa8
00001778  60 00 00 9C                bra.w      $1816
0000177C  0C 6D 00 01 D7 BA          cmpi.w     #$1, -$2846(a5)
00001782  66 28                      bne.b      $17ac
00001784  0C 6D 01 6E DC 38          cmpi.w     #$16e, -$23c8(a5)
0000178A  6F 12                      ble.b      $179e
0000178C  48 6D DC 32                pea.l      -$23ce(a5)
00001790  30 2D D8 04                move.w     -$27fc(a5), d0
00001794  5A 40                      addq.w     #$5, d0
00001796  3F 00                      move.w     d0, -(a7)
00001798  42 67                      clr.w      -(a7)
0000179A  A8 A8                      .byte      0xa8, 0xa8
0000179C  60 78                      bra.b      $1816
0000179E  48 6D DC 32                pea.l      -$23ce(a5)
000017A2  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
000017A6  42 67                      clr.w      -(a7)
000017A8  A8 A8                      .byte      0xa8, 0xa8
000017AA  60 6A                      bra.b      $1816
000017AC  0C 6D 00 02 D7 BA          cmpi.w     #$2, -$2846(a5)
000017B2  66 62                      bne.b      $1816
000017B4  0C 6D 01 6E DC 38          cmpi.w     #$16e, -$23c8(a5)
000017BA  6F 12                      ble.b      $17ce
000017BC  48 6D DC 32                pea.l      -$23ce(a5)
000017C0  30 2D D8 04                move.w     -$27fc(a5), d0
000017C4  5B 40                      subq.w     #$5, d0
000017C6  3F 00                      move.w     d0, -(a7)
000017C8  42 67                      clr.w      -(a7)
000017CA  A8 A8                      .byte      0xa8, 0xa8
000017CC  60 48                      bra.b      $1816
000017CE  48 6D DC 32                pea.l      -$23ce(a5)
000017D2  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
000017D6  42 67                      clr.w      -(a7)
000017D8  A8 A8                      .byte      0xa8, 0xa8
000017DA  60 3A                      bra.b      $1816
000017DC  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
000017E2  66 0C                      bne.b      $17f0
000017E4  48 6D DC 32                pea.l      -$23ce(a5)
000017E8  48 78 00 06                pea.l      $6.w
000017EC  A8 A8                      .byte      0xa8, 0xa8
000017EE  60 26                      bra.b      $1816
000017F0  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
000017F6  66 12                      bne.b      $180a
000017F8  48 6D DC 32                pea.l      -$23ce(a5)
000017FC  30 2D D8 04                move.w     -$27fc(a5), d0
00001800  52 40                      addq.w     #$1, d0
00001802  3F 00                      move.w     d0, -(a7)
00001804  42 67                      clr.w      -(a7)
00001806  A8 A8                      .byte      0xa8, 0xa8
00001808  60 0C                      bra.b      $1816
0000180A  48 6D DC 32                pea.l      -$23ce(a5)
0000180E  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
00001812  42 67                      clr.w      -(a7)
00001814  A8 A8                      .byte      0xa8, 0xa8
00001816  0C 6D 02 04 DC 34          cmpi.w     #$204, -$23cc(a5)
0000181C  6E 16                      bgt.b      $1834
0000181E  55 4F                      subq.w     #$2, a7
00001820  48 6D DC 32                pea.l      -$23ce(a5)
00001824  48 6D DC 56                pea.l      -$23aa(a5)
00001828  48 6E FF F8                pea.l      -$8(a6)
0000182C  A8 AA                      .byte      0xa8, 0xaa
0000182E  10 1F                      move.b     (a7)+, d0
00001830  67 00 01 54                beq.w      $1986
00001834  55 4F                      subq.w     #$2, a7
00001836  48 6D DC 32                pea.l      -$23ce(a5)
0000183A  48 6D DC 56                pea.l      -$23aa(a5)
0000183E  48 6E FF F8                pea.l      -$8(a6)
00001842  A8 AA                      .byte      0xa8, 0xaa
00001844  10 1F                      move.b     (a7)+, d0
00001846  67 00 00 D6                beq.w      $191e
0000184A  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00001850  66 14                      bne.b      $1866
00001852  42 6D D7 A8                clr.w      -$2858(a5)
00001856  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
0000185C  4E B9 00 00 1E DA          jsr        $1eda.l
00001862  60 00 00 BA                bra.w      $191e
00001866  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
0000186C  66 54                      bne.b      $18c2
0000186E  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
00001874  66 20                      bne.b      $1896
00001876  42 2D D7 DA                clr.b      -$2826(a5)
0000187A  1B 7C 00 01 D7 DC          move.b     #$1, -$2824(a5)
00001880  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001886  42 2D FF F0                clr.b      -$10(a5)
0000188A  59 4F                      subq.w     #$4, a7
0000188C  A9 75                      .byte      0xa9, 0x75
0000188E  20 1F                      move.l     (a7)+, d0
00001890  2B 40 D7 86                move.l     d0, -$287a(a5)
00001894  60 1C                      bra.b      $18b2
00001896  4A 2D D7 DA                tst.b      -$2826(a5)
0000189A  66 16                      bne.b      $18b2
0000189C  1B 7C 00 01 D7 DA          move.b     #$1, -$2826(a5)
000018A2  59 4F                      subq.w     #$4, a7
000018A4  A9 75                      .byte      0xa9, 0x75
000018A6  20 1F                      move.l     (a7)+, d0
000018A8  2B 40 D7 82                move.l     d0, -$287e(a5)
000018AC  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000018B2  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
000018B8  4E B9 00 00 00 A8          jsr        $a8.l
000018BE  58 4F                      addq.w     #$4, a7
000018C0  60 5C                      bra.b      $191e
000018C2  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
000018C8  66 18                      bne.b      $18e2
000018CA  1B 7C 00 01 D7 7E          move.b     #$1, -$2882(a5)
000018D0  59 4F                      subq.w     #$4, a7
000018D2  A9 75                      .byte      0xa9, 0x75
000018D4  20 1F                      move.l     (a7)+, d0
000018D6  2B 40 D7 82                move.l     d0, -$287e(a5)
000018DA  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000018E0  60 3C                      bra.b      $191e
000018E2  30 2D DC 38                move.w     -$23c8(a5), d0
000018E6  5B 40                      subq.w     #$5, d0
000018E8  3B 40 D7 7C                move.w     d0, -$2884(a5)
000018EC  70 D8                      moveq      #$d8, d0
000018EE  D0 6D D7 7C                add.w      -$2884(a5), d0
000018F2  3B 40 D7 78                move.w     d0, -$2888(a5)
000018F6  3B 6D DC 32 D7 76          move.w     -$23ce(a5), -$288a(a5)
000018FC  70 28                      moveq      #$28, d0
000018FE  D0 6D D7 76                add.w      -$288a(a5), d0
00001902  3B 40 D7 7A                move.w     d0, -$2886(a5)
00001906  2F 2D DE BE                move.l     -$2142(a5), -(a7)
0000190A  4E B9 00 00 00 98          jsr        $98.l
00001910  4E B9 00 00 05 58          jsr        $558.l
00001916  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
0000191C  58 4F                      addq.w     #$4, a7
0000191E  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00001924  42 2D D4 04                clr.b      -$2bfc(a5)
00001928  42 2D D7 AC                clr.b      -$2854(a5)
0000192C  42 2D D7 C8                clr.b      -$2838(a5)
00001930  48 6D DC 32                pea.l      -$23ce(a5)
00001934  48 6D DC 3A                pea.l      -$23c6(a5)
00001938  48 6E FF F8                pea.l      -$8(a6)
0000193C  A8 AB                      .byte      0xa8, 0xab
0000193E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00001942  48 68 00 02                pea.l      $2(a0)
00001946  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000194A  48 68 00 02                pea.l      $2(a0)
0000194E  48 6E FF F8                pea.l      -$8(a6)
00001952  48 6E FF F8                pea.l      -$8(a6)
00001956  42 67                      clr.w      -(a7)
00001958  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000195C  2F 28 00 18                move.l     $18(a0), -(a7)
00001960  A8 EC                      .byte      0xa8, 0xec
00001962  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001966  48 68 00 02                pea.l      $2(a0)
0000196A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000196E  48 68 00 02                pea.l      $2(a0)
00001972  48 6E FF F8                pea.l      -$8(a6)
00001976  48 6E FF F8                pea.l      -$8(a6)
0000197A  42 67                      clr.w      -(a7)
0000197C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001980  2F 28 00 18                move.l     $18(a0), -(a7)
00001984  A8 EC                      .byte      0xa8, 0xec
00001986  26 1F                      move.l     (a7)+, d3
00001988  4E 5E                      unlk       a6
0000198A  4E 75                      rts

; MacsBug symbol trailer for HandleFire1: 8B 48 61 6E 64 6C 65 46 69 72 65 31

HandleFire2: ; 0000199A..00001CEA
0000199A  4E 56 FF F8                link.w     a6, #$fff8
0000199E  2F 03                      move.l     d3, -(a7)
000019A0  2B 6D DC 0E DC 16          move.l     -$23f2(a5), -$23ea(a5)
000019A6  2B 6D DC 12 DC 1A          move.l     -$23ee(a5), -$23e6(a5)
000019AC  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
000019B2  66 10                      bne.b      $19c4
000019B4  48 6D DC 0E                pea.l      -$23f2(a5)
000019B8  2F 3C 00 00 FF F9          move.l     #$fff9, -(a7)
000019BE  A8 A8                      .byte      0xa8, 0xa8
000019C0  60 00 01 AC                bra.w      $1b6e
000019C4  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
000019CA  66 00 00 CE                bne.w      $1a9a
000019CE  0C 2D 00 01 D7 CA          cmpi.b     #$1, -$2836(a5)
000019D4  66 00 00 B4                bne.w      $1a8a
000019D8  55 4F                      subq.w     #$2, a7
000019DA  A8 61                      .byte      0xa8, 0x61
000019DC  30 1F                      move.w     (a7)+, d0
000019DE  02 40 7F FF                andi.w     #$7fff, d0
000019E2  48 C0                      ext.l      d0
000019E4  81 FC 00 06                divs.w     #$6, d0
000019E8  48 40                      swap       d0
000019EA  52 40                      addq.w     #$1, d0
000019EC  36 00                      move.w     d0, d3
000019EE  0C 43 00 03                cmpi.w     #$3, d3
000019F2  6C 14                      bge.b      $1a08
000019F4  0C 6D 00 96 DC 0E          cmpi.w     #$96, -$23f2(a5)
000019FA  6C 06                      bge.b      $1a02
000019FC  52 6D CF 78                addq.w     #$1, -$3088(a5)
00001A00  60 26                      bra.b      $1a28
00001A02  53 6D CF 78                subq.w     #$1, -$3088(a5)
00001A06  60 20                      bra.b      $1a28
00001A08  0C 43 00 04                cmpi.w     #$4, d3
00001A0C  6F 14                      ble.b      $1a22
00001A0E  0C 6D 01 7E DC 12          cmpi.w     #$17e, -$23ee(a5)
00001A14  6F 06                      ble.b      $1a1c
00001A16  53 6D CF 78                subq.w     #$1, -$3088(a5)
00001A1A  60 0C                      bra.b      $1a28
00001A1C  52 6D CF 78                addq.w     #$1, -$3088(a5)
00001A20  60 06                      bra.b      $1a28
00001A22  3B 6D CF 78 CF 78          move.w     -$3088(a5), -$3088(a5)
00001A28  48 6D DC 0E                pea.l      -$23f2(a5)
00001A2C  3F 3C FF F7                move.w     #$fff7, -(a7)
00001A30  3F 2D CF 78                move.w     -$3088(a5), -(a7)
00001A34  A8 A8                      .byte      0xa8, 0xa8
00001A36  0C 6D 00 5A DC 0E          cmpi.w     #$5a, -$23f2(a5)
00001A3C  6C 1E                      bge.b      $1a5c
00001A3E  48 6D DC 0E                pea.l      -$23f2(a5)
00001A42  42 67                      clr.w      -(a7)
00001A44  4A 6D CF 78                tst.w      -$3088(a5)
00001A48  6E 08                      bgt.b      $1a52
00001A4A  30 2D CF 78                move.w     -$3088(a5), d0
00001A4E  44 40                      neg.w      d0
00001A50  60 04                      bra.b      $1a56
00001A52  30 2D CF 78                move.w     -$3088(a5), d0
00001A56  54 40                      addq.w     #$2, d0
00001A58  3F 00                      move.w     d0, -(a7)
00001A5A  A8 A8                      .byte      0xa8, 0xa8
00001A5C  0C 6D 01 A6 DC 12          cmpi.w     #$1a6, -$23ee(a5)
00001A62  6F 00 01 0A                ble.w      $1b6e
00001A66  48 6D DC 0E                pea.l      -$23f2(a5)
00001A6A  42 67                      clr.w      -(a7)
00001A6C  4A 6D CF 78                tst.w      -$3088(a5)
00001A70  6E 08                      bgt.b      $1a7a
00001A72  30 2D CF 78                move.w     -$3088(a5), d0
00001A76  44 40                      neg.w      d0
00001A78  60 04                      bra.b      $1a7e
00001A7A  30 2D CF 78                move.w     -$3088(a5), d0
00001A7E  44 40                      neg.w      d0
00001A80  55 40                      subq.w     #$2, d0
00001A82  3F 00                      move.w     d0, -(a7)
00001A84  A8 A8                      .byte      0xa8, 0xa8
00001A86  60 00 00 E6                bra.w      $1b6e
00001A8A  48 6D DC 0E                pea.l      -$23f2(a5)
00001A8E  2F 3C 00 00 FF F5          move.l     #$fff5, -(a7)
00001A94  A8 A8                      .byte      0xa8, 0xa8
00001A96  60 00 00 D6                bra.w      $1b6e
00001A9A  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00001AA0  66 00 00 8A                bne.w      $1b2c
00001AA4  4A 6D CF 74                tst.w      -$308c(a5)
00001AA8  66 14                      bne.b      $1abe
00001AAA  48 6D DC 0E                pea.l      -$23f2(a5)
00001AAE  30 2D D8 04                move.w     -$27fc(a5), d0
00001AB2  44 40                      neg.w      d0
00001AB4  3F 00                      move.w     d0, -(a7)
00001AB6  42 67                      clr.w      -(a7)
00001AB8  A8 A8                      .byte      0xa8, 0xa8
00001ABA  60 00 00 B2                bra.w      $1b6e
00001ABE  0C 6D 00 01 CF 74          cmpi.w     #$1, -$308c(a5)
00001AC4  66 30                      bne.b      $1af6
00001AC6  0C 6D 00 96 DC 10          cmpi.w     #$96, -$23f0(a5)
00001ACC  6C 16                      bge.b      $1ae4
00001ACE  48 6D DC 0E                pea.l      -$23f2(a5)
00001AD2  30 2D D8 04                move.w     -$27fc(a5), d0
00001AD6  44 40                      neg.w      d0
00001AD8  5B 40                      subq.w     #$5, d0
00001ADA  3F 00                      move.w     d0, -(a7)
00001ADC  42 67                      clr.w      -(a7)
00001ADE  A8 A8                      .byte      0xa8, 0xa8
00001AE0  60 00 00 8C                bra.w      $1b6e
00001AE4  48 6D DC 0E                pea.l      -$23f2(a5)
00001AE8  30 2D D8 04                move.w     -$27fc(a5), d0
00001AEC  44 40                      neg.w      d0
00001AEE  3F 00                      move.w     d0, -(a7)
00001AF0  42 67                      clr.w      -(a7)
00001AF2  A8 A8                      .byte      0xa8, 0xa8
00001AF4  60 78                      bra.b      $1b6e
00001AF6  0C 6D 00 02 CF 74          cmpi.w     #$2, -$308c(a5)
00001AFC  66 70                      bne.b      $1b6e
00001AFE  0C 6D 00 96 DC 10          cmpi.w     #$96, -$23f0(a5)
00001B04  6C 14                      bge.b      $1b1a
00001B06  48 6D DC 0E                pea.l      -$23f2(a5)
00001B0A  30 2D D8 04                move.w     -$27fc(a5), d0
00001B0E  44 40                      neg.w      d0
00001B10  5A 40                      addq.w     #$5, d0
00001B12  3F 00                      move.w     d0, -(a7)
00001B14  42 67                      clr.w      -(a7)
00001B16  A8 A8                      .byte      0xa8, 0xa8
00001B18  60 54                      bra.b      $1b6e
00001B1A  48 6D DC 0E                pea.l      -$23f2(a5)
00001B1E  30 2D D8 04                move.w     -$27fc(a5), d0
00001B22  44 40                      neg.w      d0
00001B24  3F 00                      move.w     d0, -(a7)
00001B26  42 67                      clr.w      -(a7)
00001B28  A8 A8                      .byte      0xa8, 0xa8
00001B2A  60 42                      bra.b      $1b6e
00001B2C  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00001B32  66 0E                      bne.b      $1b42
00001B34  48 6D DC 0E                pea.l      -$23f2(a5)
00001B38  2F 3C 00 00 FF FA          move.l     #$fffa, -(a7)
00001B3E  A8 A8                      .byte      0xa8, 0xa8
00001B40  60 2C                      bra.b      $1b6e
00001B42  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00001B48  66 14                      bne.b      $1b5e
00001B4A  48 6D DC 0E                pea.l      -$23f2(a5)
00001B4E  30 2D D8 04                move.w     -$27fc(a5), d0
00001B52  52 40                      addq.w     #$1, d0
00001B54  44 40                      neg.w      d0
00001B56  3F 00                      move.w     d0, -(a7)
00001B58  42 67                      clr.w      -(a7)
00001B5A  A8 A8                      .byte      0xa8, 0xa8
00001B5C  60 10                      bra.b      $1b6e
00001B5E  48 6D DC 0E                pea.l      -$23f2(a5)
00001B62  30 2D D8 04                move.w     -$27fc(a5), d0
00001B66  44 40                      neg.w      d0
00001B68  3F 00                      move.w     d0, -(a7)
00001B6A  42 67                      clr.w      -(a7)
00001B6C  A8 A8                      .byte      0xa8, 0xa8
00001B6E  4A 6D DC 14                tst.w      -$23ec(a5)
00001B72  6D 16                      blt.b      $1b8a
00001B74  55 4F                      subq.w     #$2, a7
00001B76  48 6D DC 0E                pea.l      -$23f2(a5)
00001B7A  48 6D DC 82                pea.l      -$237e(a5)
00001B7E  48 6E FF F8                pea.l      -$8(a6)
00001B82  A8 AA                      .byte      0xa8, 0xaa
00001B84  10 1F                      move.b     (a7)+, d0
00001B86  67 00 01 5C                beq.w      $1ce4
00001B8A  55 4F                      subq.w     #$2, a7
00001B8C  48 6D DC 0E                pea.l      -$23f2(a5)
00001B90  48 6D DC 82                pea.l      -$237e(a5)
00001B94  48 6E FF F8                pea.l      -$8(a6)
00001B98  A8 AA                      .byte      0xa8, 0xaa
00001B9A  10 1F                      move.b     (a7)+, d0
00001B9C  67 00 00 DE                beq.w      $1c7c
00001BA0  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00001BA6  66 14                      bne.b      $1bbc
00001BA8  42 6D D7 A6                clr.w      -$285a(a5)
00001BAC  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
00001BB2  4E B9 00 00 1C F8          jsr        $1cf8.l
00001BB8  60 00 00 C2                bra.w      $1c7c
00001BBC  4A 2D CF E6                tst.b      -$301a(a5)
00001BC0  66 00 00 BA                bne.w      $1c7c
00001BC4  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
00001BCA  66 54                      bne.b      $1c20
00001BCC  0C 2D 00 01 D7 DC          cmpi.b     #$1, -$2824(a5)
00001BD2  66 20                      bne.b      $1bf4
00001BD4  42 2D D7 DC                clr.b      -$2824(a5)
00001BD8  1B 7C 00 01 D7 DA          move.b     #$1, -$2826(a5)
00001BDE  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001BE4  42 2D FF EE                clr.b      -$12(a5)
00001BE8  59 4F                      subq.w     #$4, a7
00001BEA  A9 75                      .byte      0xa9, 0x75
00001BEC  20 1F                      move.l     (a7)+, d0
00001BEE  2B 40 D7 82                move.l     d0, -$287e(a5)
00001BF2  60 1C                      bra.b      $1c10
00001BF4  4A 2D D7 DC                tst.b      -$2824(a5)
00001BF8  66 16                      bne.b      $1c10
00001BFA  1B 7C 00 01 D7 DC          move.b     #$1, -$2824(a5)
00001C00  59 4F                      subq.w     #$4, a7
00001C02  A9 75                      .byte      0xa9, 0x75
00001C04  20 1F                      move.l     (a7)+, d0
00001C06  2B 40 D7 86                move.l     d0, -$287a(a5)
00001C0A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001C10  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
00001C16  4E B9 00 00 00 B0          jsr        $b0.l
00001C1C  58 4F                      addq.w     #$4, a7
00001C1E  60 5C                      bra.b      $1c7c
00001C20  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00001C26  66 18                      bne.b      $1c40
00001C28  1B 7C 00 01 D7 80          move.b     #$1, -$2880(a5)
00001C2E  59 4F                      subq.w     #$4, a7
00001C30  A9 75                      .byte      0xa9, 0x75
00001C32  20 1F                      move.l     (a7)+, d0
00001C34  2B 40 D7 86                move.l     d0, -$287a(a5)
00001C38  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001C3E  60 3C                      bra.b      $1c7c
00001C40  30 2D DC 10                move.w     -$23f0(a5), d0
00001C44  5A 40                      addq.w     #$5, d0
00001C46  3B 40 D7 70                move.w     d0, -$2890(a5)
00001C4A  70 28                      moveq      #$28, d0
00001C4C  D0 6D D7 70                add.w      -$2890(a5), d0
00001C50  3B 40 D7 74                move.w     d0, -$288c(a5)
00001C54  3B 6D DC 0E D7 6E          move.w     -$23f2(a5), -$2892(a5)
00001C5A  70 28                      moveq      #$28, d0
00001C5C  D0 6D D7 6E                add.w      -$2892(a5), d0
00001C60  3B 40 D7 72                move.w     d0, -$288e(a5)
00001C64  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00001C68  4E B9 00 00 00 90          jsr        $90.l
00001C6E  4E B9 00 00 05 50          jsr        $550.l
00001C74  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00001C7A  58 4F                      addq.w     #$4, a7
00001C7C  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00001C82  42 2D D4 02                clr.b      -$2bfe(a5)
00001C86  42 2D D7 A4                clr.b      -$285c(a5)
00001C8A  42 2D D7 CA                clr.b      -$2836(a5)
00001C8E  48 6D DC 0E                pea.l      -$23f2(a5)
00001C92  48 6D DC 16                pea.l      -$23ea(a5)
00001C96  48 6E FF F8                pea.l      -$8(a6)
00001C9A  A8 AB                      .byte      0xa8, 0xab
00001C9C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00001CA0  48 68 00 02                pea.l      $2(a0)
00001CA4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001CA8  48 68 00 02                pea.l      $2(a0)
00001CAC  48 6E FF F8                pea.l      -$8(a6)
00001CB0  48 6E FF F8                pea.l      -$8(a6)
00001CB4  42 67                      clr.w      -(a7)
00001CB6  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001CBA  2F 28 00 18                move.l     $18(a0), -(a7)
00001CBE  A8 EC                      .byte      0xa8, 0xec
00001CC0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001CC4  48 68 00 02                pea.l      $2(a0)
00001CC8  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001CCC  48 68 00 02                pea.l      $2(a0)
00001CD0  48 6E FF F8                pea.l      -$8(a6)
00001CD4  48 6E FF F8                pea.l      -$8(a6)
00001CD8  42 67                      clr.w      -(a7)
00001CDA  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001CDE  2F 28 00 18                move.l     $18(a0), -(a7)
00001CE2  A8 EC                      .byte      0xa8, 0xec
00001CE4  26 1F                      move.l     (a7)+, d3
00001CE6  4E 5E                      unlk       a6
00001CE8  4E 75                      rts

; MacsBug symbol trailer for HandleFire2: 8B 48 61 6E 64 6C 65 46 69 72 65 32

MoveNightwolfReflection: ; 00001CF8..00001EC0
00001CF8  4E 56 00 00                link.w     a6, #$0
00001CFC  30 2D FF E2                move.w     -$1e(a5), d0
00001D00  0C 40 00 10                cmpi.w     #$10, d0
00001D04  62 00 01 76                bhi.w      $1e7c
00001D08  D0 40                      add.w      d0, d0
00001D0A  30 3B 00 06                move.w     $1d12(pc, d0.w), d0
00001D0E  4E FB 00 02                jmp        $1d12(pc, d0.w)
00001D12  01 6A 00 22                bchg.b     d0, $22(a2)
00001D16  00 38 00 4E 00 62          ori.b      #$4e, $62.w
00001D1C  00 78 00 8E 00 A2          ori.w      #$8e, $a2.w
00001D22  00 B8 00 CE 00 E4 00 F8    ori.l      #$ce00e4, $f8.w
00001D2A  01 0A 01 1E                movep.w    $11e(a2), d0
00001D2E  01 32 01 44                btst.l     d0, (a2, invalid.w)
00001D32  01 58                      bchg.b     d0, (a0)+
00001D34  48 6D CF C4                pea.l      -$303c(a5)
00001D38  2F 3C 00 09 00 10          move.l     #$90010, -(a7)
00001D3E  2F 3C 00 21 00 40          move.l     #$210040, -(a7)
00001D44  A8 A7                      .byte      0xa8, 0xa7
00001D46  60 00 01 34                bra.w      $1e7c
00001D4A  48 6D CF C4                pea.l      -$303c(a5)
00001D4E  2F 3C 00 21 00 10          move.l     #$210010, -(a7)
00001D54  2F 3C 00 35 00 40          move.l     #$350040, -(a7)
00001D5A  A8 A7                      .byte      0xa8, 0xa7
00001D5C  60 00 01 1E                bra.w      $1e7c
00001D60  48 6D CF C4                pea.l      -$303c(a5)
00001D64  48 78 00 40                pea.l      $40.w
00001D68  2F 3C 00 0A 00 78          move.l     #$a0078, -(a7)
00001D6E  A8 A7                      .byte      0xa8, 0xa7
00001D70  60 00 01 0A                bra.w      $1e7c
00001D74  48 6D CF C4                pea.l      -$303c(a5)
00001D78  2F 3C 00 0A 00 40          move.l     #$a0040, -(a7)
00001D7E  2F 3C 00 15 00 70          move.l     #$150070, -(a7)
00001D84  A8 A7                      .byte      0xa8, 0xa7
00001D86  60 00 00 F4                bra.w      $1e7c
00001D8A  48 6D CF C4                pea.l      -$303c(a5)
00001D8E  2F 3C 00 15 00 40          move.l     #$150040, -(a7)
00001D94  2F 3C 00 20 00 75          move.l     #$200075, -(a7)
00001D9A  A8 A7                      .byte      0xa8, 0xa7
00001D9C  60 00 00 DE                bra.w      $1e7c
00001DA0  48 6D CF C4                pea.l      -$303c(a5)
00001DA4  48 78 00 A7                pea.l      $a7.w
00001DA8  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
00001DAE  A8 A7                      .byte      0xa8, 0xa7
00001DB0  60 00 00 CA                bra.w      $1e7c
00001DB4  48 6D CF C4                pea.l      -$303c(a5)
00001DB8  2F 3C 00 20 00 40          move.l     #$200040, -(a7)
00001DBE  2F 3C 00 27 00 6C          move.l     #$27006c, -(a7)
00001DC4  A8 A7                      .byte      0xa8, 0xa7
00001DC6  60 00 00 B4                bra.w      $1e7c
00001DCA  48 6D CF C4                pea.l      -$303c(a5)
00001DCE  2F 3C 00 27 00 40          move.l     #$270040, -(a7)
00001DD4  2F 3C 00 36 00 7E          move.l     #$36007e, -(a7)
00001DDA  A8 A7                      .byte      0xa8, 0xa7
00001DDC  60 00 00 9E                bra.w      $1e7c
00001DE0  48 6D CF C4                pea.l      -$303c(a5)
00001DE4  2F 3C 00 36 00 40          move.l     #$360040, -(a7)
00001DEA  2F 3C 00 4F 00 5D          move.l     #$4f005d, -(a7)
00001DF0  A8 A7                      .byte      0xa8, 0xa7
00001DF2  60 00 00 88                bra.w      $1e7c
00001DF6  48 6D CF C4                pea.l      -$303c(a5)
00001DFA  2F 3C 00 5D 00 16          move.l     #$5d0016, -(a7)
00001E00  2F 3C 00 8A 00 40          move.l     #$8a0040, -(a7)
00001E06  A8 A7                      .byte      0xa8, 0xa7
00001E08  60 72                      bra.b      $1e7c
00001E0A  48 6D CF C4                pea.l      -$303c(a5)
00001E0E  48 78 00 87                pea.l      $87.w
00001E12  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
00001E18  A8 A7                      .byte      0xa8, 0xa7
00001E1A  60 60                      bra.b      $1e7c
00001E1C  48 6D CF C4                pea.l      -$303c(a5)
00001E20  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
00001E26  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
00001E2C  A8 A7                      .byte      0xa8, 0xa7
00001E2E  60 4C                      bra.b      $1e7c
00001E30  48 6D CF C4                pea.l      -$303c(a5)
00001E34  2F 3C 00 36 00 40          move.l     #$360040, -(a7)
00001E3A  2F 3C 00 4F 00 5D          move.l     #$4f005d, -(a7)
00001E40  A8 A7                      .byte      0xa8, 0xa7
00001E42  60 38                      bra.b      $1e7c
00001E44  48 6D CF C4                pea.l      -$303c(a5)
00001E48  48 78 00 10                pea.l      $10.w
00001E4C  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
00001E52  A8 A7                      .byte      0xa8, 0xa7
00001E54  60 26                      bra.b      $1e7c
00001E56  48 6D CF C4                pea.l      -$303c(a5)
00001E5A  2F 3C 00 4F 00 40          move.l     #$4f0040, -(a7)
00001E60  2F 3C 00 5E 00 65          move.l     #$5e0065, -(a7)
00001E66  A8 A7                      .byte      0xa8, 0xa7
00001E68  60 12                      bra.b      $1e7c
00001E6A  48 6D CF C4                pea.l      -$303c(a5)
00001E6E  2F 3C 00 5E 00 40          move.l     #$5e0040, -(a7)
00001E74  2F 3C 00 6A 00 67          move.l     #$6a0067, -(a7)
00001E7A  A8 A7                      .byte      0xa8, 0xa7
00001E7C  42 2D FF DA                clr.b      -$26(a5)
00001E80  59 4F                      subq.w     #$4, a7
00001E82  A9 75                      .byte      0xa9, 0x75
00001E84  20 1F                      move.l     (a7)+, d0
00001E86  2B 40 D7 9E                move.l     d0, -$2862(a5)
00001E8A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001E90  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
00001E96  67 0C                      beq.b      $1ea4
00001E98  2B 6D DC 0E CF BC          move.l     -$23f2(a5), -$3044(a5)
00001E9E  2B 6D DC 12 CF C0          move.l     -$23ee(a5), -$3040(a5)
00001EA4  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
00001EAA  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
00001EB0  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
00001EB6  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
00001EBC  4E 5E                      unlk       a6
00001EBE  4E 75                      rts

; MacsBug symbol trailer for MoveNightwolfReflection: 97 4D 6F 76 65 4E 69 67 68 74 77 6F 6C 66 52 65 66 6C 65 63 74 69 6F 6E

MoveNightwolfReflection2: ; 00001EDA..000020A2
00001EDA  4E 56 00 00                link.w     a6, #$0
00001EDE  30 2D FF E0                move.w     -$20(a5), d0
00001EE2  0C 40 00 10                cmpi.w     #$10, d0
00001EE6  62 00 01 76                bhi.w      $205e
00001EEA  D0 40                      add.w      d0, d0
00001EEC  30 3B 00 06                move.w     $1ef4(pc, d0.w), d0
00001EF0  4E FB 00 02                jmp        $1ef4(pc, d0.w)
00001EF4  01 6A 00 22                bchg.b     d0, $22(a2)
00001EF8  00 38 00 4E 00 62          ori.b      #$4e, $62.w
00001EFE  00 78 00 8E 00 A2          ori.w      #$8e, $a2.w
00001F04  00 B8 00 CE 00 E4 00 F8    ori.l      #$ce00e4, $f8.w
00001F0C  01 0A 01 1E                movep.w    $11e(a2), d0
00001F10  01 32 01 44                btst.l     d0, (a2, invalid.w)
00001F14  01 58                      bchg.b     d0, (a0)+
00001F16  48 6D CF 92                pea.l      -$306e(a5)
00001F1A  2F 3C 00 09 00 10          move.l     #$90010, -(a7)
00001F20  2F 3C 00 21 00 40          move.l     #$210040, -(a7)
00001F26  A8 A7                      .byte      0xa8, 0xa7
00001F28  60 00 01 34                bra.w      $205e
00001F2C  48 6D CF 92                pea.l      -$306e(a5)
00001F30  2F 3C 00 21 00 10          move.l     #$210010, -(a7)
00001F36  2F 3C 00 35 00 40          move.l     #$350040, -(a7)
00001F3C  A8 A7                      .byte      0xa8, 0xa7
00001F3E  60 00 01 1E                bra.w      $205e
00001F42  48 6D CF 92                pea.l      -$306e(a5)
00001F46  48 78 00 40                pea.l      $40.w
00001F4A  2F 3C 00 0A 00 78          move.l     #$a0078, -(a7)
00001F50  A8 A7                      .byte      0xa8, 0xa7
00001F52  60 00 01 0A                bra.w      $205e
00001F56  48 6D CF 92                pea.l      -$306e(a5)
00001F5A  2F 3C 00 0A 00 40          move.l     #$a0040, -(a7)
00001F60  2F 3C 00 15 00 70          move.l     #$150070, -(a7)
00001F66  A8 A7                      .byte      0xa8, 0xa7
00001F68  60 00 00 F4                bra.w      $205e
00001F6C  48 6D CF 92                pea.l      -$306e(a5)
00001F70  2F 3C 00 15 00 40          move.l     #$150040, -(a7)
00001F76  2F 3C 00 20 00 75          move.l     #$200075, -(a7)
00001F7C  A8 A7                      .byte      0xa8, 0xa7
00001F7E  60 00 00 DE                bra.w      $205e
00001F82  48 6D CF 92                pea.l      -$306e(a5)
00001F86  48 78 00 A7                pea.l      $a7.w
00001F8A  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
00001F90  A8 A7                      .byte      0xa8, 0xa7
00001F92  60 00 00 CA                bra.w      $205e
00001F96  48 6D CF 92                pea.l      -$306e(a5)
00001F9A  2F 3C 00 20 00 40          move.l     #$200040, -(a7)
00001FA0  2F 3C 00 27 00 6C          move.l     #$27006c, -(a7)
00001FA6  A8 A7                      .byte      0xa8, 0xa7
00001FA8  60 00 00 B4                bra.w      $205e
00001FAC  48 6D CF 92                pea.l      -$306e(a5)
00001FB0  2F 3C 00 27 00 40          move.l     #$270040, -(a7)
00001FB6  2F 3C 00 36 00 7E          move.l     #$36007e, -(a7)
00001FBC  A8 A7                      .byte      0xa8, 0xa7
00001FBE  60 00 00 9E                bra.w      $205e
00001FC2  48 6D CF 92                pea.l      -$306e(a5)
00001FC6  2F 3C 00 36 00 40          move.l     #$360040, -(a7)
00001FCC  2F 3C 00 4F 00 5D          move.l     #$4f005d, -(a7)
00001FD2  A8 A7                      .byte      0xa8, 0xa7
00001FD4  60 00 00 88                bra.w      $205e
00001FD8  48 6D CF 92                pea.l      -$306e(a5)
00001FDC  2F 3C 00 5D 00 16          move.l     #$5d0016, -(a7)
00001FE2  2F 3C 00 8A 00 40          move.l     #$8a0040, -(a7)
00001FE8  A8 A7                      .byte      0xa8, 0xa7
00001FEA  60 72                      bra.b      $205e
00001FEC  48 6D CF 92                pea.l      -$306e(a5)
00001FF0  48 78 00 87                pea.l      $87.w
00001FF4  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
00001FFA  A8 A7                      .byte      0xa8, 0xa7
00001FFC  60 60                      bra.b      $205e
00001FFE  48 6D CF 92                pea.l      -$306e(a5)
00002002  2F 3C 00 6A 00 40          move.l     #$6a0040, -(a7)
00002008  2F 3C 00 76 00 4C          move.l     #$76004c, -(a7)
0000200E  A8 A7                      .byte      0xa8, 0xa7
00002010  60 4C                      bra.b      $205e
00002012  48 6D CF 92                pea.l      -$306e(a5)
00002016  2F 3C 00 36 00 40          move.l     #$360040, -(a7)
0000201C  2F 3C 00 4F 00 5D          move.l     #$4f005d, -(a7)
00002022  A8 A7                      .byte      0xa8, 0xa7
00002024  60 38                      bra.b      $205e
00002026  48 6D CF 92                pea.l      -$306e(a5)
0000202A  48 78 00 10                pea.l      $10.w
0000202E  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
00002034  A8 A7                      .byte      0xa8, 0xa7
00002036  60 26                      bra.b      $205e
00002038  48 6D CF 92                pea.l      -$306e(a5)
0000203C  2F 3C 00 4F 00 40          move.l     #$4f0040, -(a7)
00002042  2F 3C 00 5E 00 65          move.l     #$5e0065, -(a7)
00002048  A8 A7                      .byte      0xa8, 0xa7
0000204A  60 12                      bra.b      $205e
0000204C  48 6D CF 92                pea.l      -$306e(a5)
00002050  2F 3C 00 5E 00 40          move.l     #$5e0040, -(a7)
00002056  2F 3C 00 6A 00 67          move.l     #$6a0067, -(a7)
0000205C  A8 A7                      .byte      0xa8, 0xa7
0000205E  42 2D FF DC                clr.b      -$24(a5)
00002062  59 4F                      subq.w     #$4, a7
00002064  A9 75                      .byte      0xa9, 0x75
00002066  20 1F                      move.l     (a7)+, d0
00002068  2B 40 D7 9A                move.l     d0, -$2866(a5)
0000206C  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002072  0C 6D 00 08 FF E0          cmpi.w     #$8, -$20(a5)
00002078  67 0C                      beq.b      $2086
0000207A  2B 6D DC 32 CF 8A          move.l     -$23ce(a5), -$3076(a5)
00002080  2B 6D DC 36 CF 8E          move.l     -$23ca(a5), -$3072(a5)
00002086  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
0000208C  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
00002092  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
00002098  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
0000209E  4E 5E                      unlk       a6
000020A0  4E 75                      rts

; MacsBug symbol trailer for MoveNightwolfReflection2: 98 4D 6F 76 65 4E 69 67 68 74 77 6F 6C 66 52 65 66 6C 65 63 74 69 6F 6E 32

HandleNightwolfReflection: ; 000020BE..00002328
000020BE  4E 56 FF F8                link.w     a6, #$fff8
000020C2  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
000020C8  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
000020CE  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
000020D4  67 08                      beq.b      $20de
000020D6  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
000020DC  66 18                      bne.b      $20f6
000020DE  0C 6D 00 01 D7 A6          cmpi.w     #$1, -$285a(a5)
000020E4  66 10                      bne.b      $20f6
000020E6  48 6D CF BC                pea.l      -$3044(a5)
000020EA  2F 3C FF FD 00 09          move.l     #$fffd0009, -(a7)
000020F0  A8 A8                      .byte      0xa8, 0xa8
000020F2  60 00 01 04                bra.w      $21f8
000020F6  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
000020FC  67 08                      beq.b      $2106
000020FE  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
00002104  66 18                      bne.b      $211e
00002106  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
0000210C  66 10                      bne.b      $211e
0000210E  48 6D CF BC                pea.l      -$3044(a5)
00002112  2F 3C 00 03 00 09          move.l     #$30009, -(a7)
00002118  A8 A8                      .byte      0xa8, 0xa8
0000211A  60 00 00 DC                bra.w      $21f8
0000211E  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00002124  66 00 00 C8                bne.w      $21ee
00002128  0C 6D 00 03 D7 A6          cmpi.w     #$3, -$285a(a5)
0000212E  67 0A                      beq.b      $213a
00002130  0C 6D 00 04 D7 A6          cmpi.w     #$4, -$285a(a5)
00002136  66 00 00 B6                bne.w      $21ee
0000213A  0C 6D 00 03 D7 A6          cmpi.w     #$3, -$285a(a5)
00002140  66 52                      bne.b      $2194
00002142  48 6D CF BC                pea.l      -$3044(a5)
00002146  30 2D DE 5A                move.w     -$21a6(a5), d0
0000214A  44 40                      neg.w      d0
0000214C  3F 00                      move.w     d0, -(a7)
0000214E  3F 2D DE 5C                move.w     -$21a4(a5), -(a7)
00002152  A8 A8                      .byte      0xa8, 0xa8
00002154  0C 6D 01 B0 CF C0          cmpi.w     #$1b0, -$3040(a5)
0000215A  6F 18                      ble.b      $2174
0000215C  4A 6D DE 5C                tst.w      -$21a4(a5)
00002160  6E 08                      bgt.b      $216a
00002162  30 2D DE 5C                move.w     -$21a4(a5), d0
00002166  44 40                      neg.w      d0
00002168  60 04                      bra.b      $216e
0000216A  30 2D DE 5C                move.w     -$21a4(a5), d0
0000216E  44 40                      neg.w      d0
00002170  3B 40 DE 5C                move.w     d0, -$21a4(a5)
00002174  0C 6D 00 54 CF BC          cmpi.w     #$54, -$3044(a5)
0000217A  6C 7C                      bge.b      $21f8
0000217C  4A 6D DE 5C                tst.w      -$21a4(a5)
00002180  6E 08                      bgt.b      $218a
00002182  30 2D DE 5C                move.w     -$21a4(a5), d0
00002186  44 40                      neg.w      d0
00002188  60 04                      bra.b      $218e
0000218A  30 2D DE 5C                move.w     -$21a4(a5), d0
0000218E  3B 40 DE 5C                move.w     d0, -$21a4(a5)
00002192  60 64                      bra.b      $21f8
00002194  0C 6D 00 04 D7 A6          cmpi.w     #$4, -$285a(a5)
0000219A  66 5C                      bne.b      $21f8
0000219C  48 6D CF BC                pea.l      -$3044(a5)
000021A0  30 2D DE 36                move.w     -$21ca(a5), d0
000021A4  44 40                      neg.w      d0
000021A6  3F 00                      move.w     d0, -(a7)
000021A8  3F 2D DE 38                move.w     -$21c8(a5), -(a7)
000021AC  A8 A8                      .byte      0xa8, 0xa8
000021AE  0C 6D 01 B0 CF C0          cmpi.w     #$1b0, -$3040(a5)
000021B4  6F 18                      ble.b      $21ce
000021B6  4A 6D DE 38                tst.w      -$21c8(a5)
000021BA  6E 08                      bgt.b      $21c4
000021BC  30 2D DE 38                move.w     -$21c8(a5), d0
000021C0  44 40                      neg.w      d0
000021C2  60 04                      bra.b      $21c8
000021C4  30 2D DE 38                move.w     -$21c8(a5), d0
000021C8  44 40                      neg.w      d0
000021CA  3B 40 DE 38                move.w     d0, -$21c8(a5)
000021CE  0C 6D 00 54 CF BC          cmpi.w     #$54, -$3044(a5)
000021D4  6C 22                      bge.b      $21f8
000021D6  4A 6D DE 38                tst.w      -$21c8(a5)
000021DA  6E 08                      bgt.b      $21e4
000021DC  30 2D DE 38                move.w     -$21c8(a5), d0
000021E0  44 40                      neg.w      d0
000021E2  60 04                      bra.b      $21e8
000021E4  30 2D DE 38                move.w     -$21c8(a5), d0
000021E8  3B 40 DE 38                move.w     d0, -$21c8(a5)
000021EC  60 0A                      bra.b      $21f8
000021EE  48 6D CF BC                pea.l      -$3044(a5)
000021F2  48 78 00 0C                pea.l      $c.w
000021F6  A8 A8                      .byte      0xa8, 0xa8
000021F8  0C 6D 02 04 CF BE          cmpi.w     #$204, -$3042(a5)
000021FE  6E 1E                      bgt.b      $221e
00002200  0C 6D 00 50 CF BC          cmpi.w     #$50, -$3044(a5)
00002206  6D 16                      blt.b      $221e
00002208  55 4F                      subq.w     #$2, a7
0000220A  48 6D CF BC                pea.l      -$3044(a5)
0000220E  48 6D DC 56                pea.l      -$23aa(a5)
00002212  48 6E FF F8                pea.l      -$8(a6)
00002216  A8 AA                      .byte      0xa8, 0xaa
00002218  10 1F                      move.b     (a7)+, d0
0000221A  67 00 01 08                beq.w      $2324
0000221E  55 4F                      subq.w     #$2, a7
00002220  48 6D CF BC                pea.l      -$3044(a5)
00002224  48 6D DC 56                pea.l      -$23aa(a5)
00002228  48 6E FF F8                pea.l      -$8(a6)
0000222C  A8 AA                      .byte      0xa8, 0xaa
0000222E  10 1F                      move.b     (a7)+, d0
00002230  67 00 00 98                beq.w      $22ca
00002234  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
0000223A  66 26                      bne.b      $2262
0000223C  1B 7C 00 01 D7 DA          move.b     #$1, -$2826(a5)
00002242  59 4F                      subq.w     #$4, a7
00002244  A9 75                      .byte      0xa9, 0x75
00002246  20 1F                      move.l     (a7)+, d0
00002248  2B 40 D7 82                move.l     d0, -$287e(a5)
0000224C  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002252  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
00002258  4E B9 00 00 00 A8          jsr        $a8.l
0000225E  58 4F                      addq.w     #$4, a7
00002260  60 68                      bra.b      $22ca
00002262  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00002268  66 1E                      bne.b      $2288
0000226A  1B 7C 00 01 D7 7E          move.b     #$1, -$2882(a5)
00002270  59 4F                      subq.w     #$4, a7
00002272  A9 75                      .byte      0xa9, 0x75
00002274  20 1F                      move.l     (a7)+, d0
00002276  2B 40 D7 82                move.l     d0, -$287e(a5)
0000227A  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002280  1B 7C 00 01 CF CE          move.b     #$1, -$3032(a5)
00002286  60 42                      bra.b      $22ca
00002288  30 2D CF C2                move.w     -$303e(a5), d0
0000228C  5B 40                      subq.w     #$5, d0
0000228E  3B 40 D7 7C                move.w     d0, -$2884(a5)
00002292  70 D8                      moveq      #$d8, d0
00002294  D0 6D D7 7C                add.w      -$2884(a5), d0
00002298  3B 40 D7 78                move.w     d0, -$2888(a5)
0000229C  3B 6D CF BC D7 76          move.w     -$3044(a5), -$288a(a5)
000022A2  70 28                      moveq      #$28, d0
000022A4  D0 6D D7 76                add.w      -$288a(a5), d0
000022A8  3B 40 D7 7A                move.w     d0, -$2886(a5)
000022AC  4E B9 00 00 05 58          jsr        $558.l
000022B2  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
000022B8  1B 7C 00 01 CF CE          move.b     #$1, -$3032(a5)
000022BE  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000022C2  4E B9 00 00 00 98          jsr        $98.l
000022C8  58 4F                      addq.w     #$4, a7
000022CA  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000022D0  42 2D D4 04                clr.b      -$2bfc(a5)
000022D4  42 2D CF E4                clr.b      -$301c(a5)
000022D8  42 2D CF CC                clr.b      -$3034(a5)
000022DC  20 6D D3 FA                movea.l    -$2c06(a5), a0
000022E0  48 68 00 02                pea.l      $2(a0)
000022E4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000022E8  48 68 00 02                pea.l      $2(a0)
000022EC  48 6D CF AC                pea.l      -$3054(a5)
000022F0  48 6D CF AC                pea.l      -$3054(a5)
000022F4  42 67                      clr.w      -(a7)
000022F6  20 6D D3 DE                movea.l    -$2c22(a5), a0
000022FA  2F 28 00 18                move.l     $18(a0), -(a7)
000022FE  A8 EC                      .byte      0xa8, 0xec
00002300  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002304  48 68 00 02                pea.l      $2(a0)
00002308  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000230C  48 68 00 02                pea.l      $2(a0)
00002310  48 6D CF AC                pea.l      -$3054(a5)
00002314  48 6D CF AC                pea.l      -$3054(a5)
00002318  42 67                      clr.w      -(a7)
0000231A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000231E  2F 28 00 18                move.l     $18(a0), -(a7)
00002322  A8 EC                      .byte      0xa8, 0xec
00002324  4E 5E                      unlk       a6
00002326  4E 75                      rts

; MacsBug symbol trailer for HandleNightwolfReflection: 99 48 61 6E 64 6C 65 4E 69 67 68 74 77 6F 6C 66 52 65 66 6C 65 63 74 69 6F 6E

HandleNightwolfReflection2: ; 00002344..000025B0
00002344  4E 56 FF F8                link.w     a6, #$fff8
00002348  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
0000234E  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
00002354  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
0000235A  67 08                      beq.b      $2364
0000235C  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
00002362  66 18                      bne.b      $237c
00002364  0C 6D 00 01 D7 A8          cmpi.w     #$1, -$2858(a5)
0000236A  66 10                      bne.b      $237c
0000236C  48 6D CF 8A                pea.l      -$3076(a5)
00002370  2F 3C FF FD FF F7          move.l     #$fffdfff7, -(a7)
00002376  A8 A8                      .byte      0xa8, 0xa8
00002378  60 00 01 08                bra.w      $2482
0000237C  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
00002382  67 08                      beq.b      $238c
00002384  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
0000238A  66 18                      bne.b      $23a4
0000238C  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
00002392  66 10                      bne.b      $23a4
00002394  48 6D CF 8A                pea.l      -$3076(a5)
00002398  2F 3C 00 03 FF F7          move.l     #$3fff7, -(a7)
0000239E  A8 A8                      .byte      0xa8, 0xa8
000023A0  60 00 00 E0                bra.w      $2482
000023A4  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
000023AA  66 00 00 CA                bne.w      $2476
000023AE  0C 6D 00 03 D7 A8          cmpi.w     #$3, -$2858(a5)
000023B4  67 0A                      beq.b      $23c0
000023B6  0C 6D 00 04 D7 A8          cmpi.w     #$4, -$2858(a5)
000023BC  66 00 00 B8                bne.w      $2476
000023C0  0C 6D 00 03 D7 A8          cmpi.w     #$3, -$2858(a5)
000023C6  66 54                      bne.b      $241c
000023C8  48 6D CF 8A                pea.l      -$3076(a5)
000023CC  30 2D DE A2                move.w     -$215e(a5), d0
000023D0  44 40                      neg.w      d0
000023D2  3F 00                      move.w     d0, -(a7)
000023D4  3F 2D DE A4                move.w     -$215c(a5), -(a7)
000023D8  A8 A8                      .byte      0xa8, 0xa8
000023DA  0C 6D 01 B0 CF 8E          cmpi.w     #$1b0, -$3072(a5)
000023E0  6F 18                      ble.b      $23fa
000023E2  4A 6D DE A4                tst.w      -$215c(a5)
000023E6  6E 08                      bgt.b      $23f0
000023E8  30 2D DE A4                move.w     -$215c(a5), d0
000023EC  44 40                      neg.w      d0
000023EE  60 04                      bra.b      $23f4
000023F0  30 2D DE A4                move.w     -$215c(a5), d0
000023F4  44 40                      neg.w      d0
000023F6  3B 40 DE A4                move.w     d0, -$215c(a5)
000023FA  0C 6D 00 54 CF 8A          cmpi.w     #$54, -$3076(a5)
00002400  6C 00 00 80                bge.w      $2482
00002404  4A 6D DE A4                tst.w      -$215c(a5)
00002408  6E 08                      bgt.b      $2412
0000240A  30 2D DE A4                move.w     -$215c(a5), d0
0000240E  44 40                      neg.w      d0
00002410  60 04                      bra.b      $2416
00002412  30 2D DE A4                move.w     -$215c(a5), d0
00002416  3B 40 DE A4                move.w     d0, -$215c(a5)
0000241A  60 66                      bra.b      $2482
0000241C  0C 6D 00 04 D7 A8          cmpi.w     #$4, -$2858(a5)
00002422  66 5E                      bne.b      $2482
00002424  48 6D CF 8A                pea.l      -$3076(a5)
00002428  30 2D DE 7E                move.w     -$2182(a5), d0
0000242C  44 40                      neg.w      d0
0000242E  3F 00                      move.w     d0, -(a7)
00002430  3F 2D DE 80                move.w     -$2180(a5), -(a7)
00002434  A8 A8                      .byte      0xa8, 0xa8
00002436  0C 6D 01 B0 CF 8E          cmpi.w     #$1b0, -$3072(a5)
0000243C  6F 18                      ble.b      $2456
0000243E  4A 6D DE 80                tst.w      -$2180(a5)
00002442  6E 08                      bgt.b      $244c
00002444  30 2D DE 80                move.w     -$2180(a5), d0
00002448  44 40                      neg.w      d0
0000244A  60 04                      bra.b      $2450
0000244C  30 2D DE 80                move.w     -$2180(a5), d0
00002450  44 40                      neg.w      d0
00002452  3B 40 DE 80                move.w     d0, -$2180(a5)
00002456  0C 6D 00 54 CF 8A          cmpi.w     #$54, -$3076(a5)
0000245C  6C 24                      bge.b      $2482
0000245E  4A 6D DE 80                tst.w      -$2180(a5)
00002462  6E 08                      bgt.b      $246c
00002464  30 2D DE 80                move.w     -$2180(a5), d0
00002468  44 40                      neg.w      d0
0000246A  60 04                      bra.b      $2470
0000246C  30 2D DE 80                move.w     -$2180(a5), d0
00002470  3B 40 DE 80                move.w     d0, -$2180(a5)
00002474  60 0C                      bra.b      $2482
00002476  48 6D CF 8A                pea.l      -$3076(a5)
0000247A  2F 3C 00 00 FF F4          move.l     #$fff4, -(a7)
00002480  A8 A8                      .byte      0xa8, 0xa8
00002482  4A 6D CF 90                tst.w      -$3070(a5)
00002486  6D 1E                      blt.b      $24a6
00002488  0C 6D 00 50 CF 8A          cmpi.w     #$50, -$3076(a5)
0000248E  6D 16                      blt.b      $24a6
00002490  55 4F                      subq.w     #$2, a7
00002492  48 6D CF 8A                pea.l      -$3076(a5)
00002496  48 6D DC 82                pea.l      -$237e(a5)
0000249A  48 6E FF F8                pea.l      -$8(a6)
0000249E  A8 AA                      .byte      0xa8, 0xaa
000024A0  10 1F                      move.b     (a7)+, d0
000024A2  67 00 01 08                beq.w      $25ac
000024A6  55 4F                      subq.w     #$2, a7
000024A8  48 6D CF 8A                pea.l      -$3076(a5)
000024AC  48 6D DC 82                pea.l      -$237e(a5)
000024B0  48 6E FF F8                pea.l      -$8(a6)
000024B4  A8 AA                      .byte      0xa8, 0xaa
000024B6  10 1F                      move.b     (a7)+, d0
000024B8  67 00 00 98                beq.w      $2552
000024BC  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
000024C2  66 26                      bne.b      $24ea
000024C4  1B 7C 00 01 D7 DC          move.b     #$1, -$2824(a5)
000024CA  59 4F                      subq.w     #$4, a7
000024CC  A9 75                      .byte      0xa9, 0x75
000024CE  20 1F                      move.l     (a7)+, d0
000024D0  2B 40 D7 86                move.l     d0, -$287a(a5)
000024D4  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000024DA  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
000024E0  4E B9 00 00 00 B0          jsr        $b0.l
000024E6  58 4F                      addq.w     #$4, a7
000024E8  60 68                      bra.b      $2552
000024EA  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
000024F0  66 1E                      bne.b      $2510
000024F2  1B 7C 00 01 D7 80          move.b     #$1, -$2880(a5)
000024F8  59 4F                      subq.w     #$4, a7
000024FA  A9 75                      .byte      0xa9, 0x75
000024FC  20 1F                      move.l     (a7)+, d0
000024FE  2B 40 D7 86                move.l     d0, -$287a(a5)
00002502  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002508  1B 7C 00 01 CF 9A          move.b     #$1, -$3066(a5)
0000250E  60 42                      bra.b      $2552
00002510  30 2D CF 8C                move.w     -$3074(a5), d0
00002514  5A 40                      addq.w     #$5, d0
00002516  3B 40 D7 70                move.w     d0, -$2890(a5)
0000251A  70 28                      moveq      #$28, d0
0000251C  D0 6D D7 70                add.w      -$2890(a5), d0
00002520  3B 40 D7 74                move.w     d0, -$288c(a5)
00002524  3B 6D CF 8A D7 6E          move.w     -$3076(a5), -$2892(a5)
0000252A  70 28                      moveq      #$28, d0
0000252C  D0 6D D7 6E                add.w      -$2892(a5), d0
00002530  3B 40 D7 72                move.w     d0, -$288e(a5)
00002534  4E B9 00 00 05 50          jsr        $550.l
0000253A  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00002540  1B 7C 00 01 CF 9A          move.b     #$1, -$3066(a5)
00002546  2F 2D DE C2                move.l     -$213e(a5), -(a7)
0000254A  4E B9 00 00 00 90          jsr        $90.l
00002550  58 4F                      addq.w     #$4, a7
00002552  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00002558  42 2D D4 02                clr.b      -$2bfe(a5)
0000255C  42 2D CF A8                clr.b      -$3058(a5)
00002560  42 2D CF CC                clr.b      -$3034(a5)
00002564  20 6D D3 FA                movea.l    -$2c06(a5), a0
00002568  48 68 00 02                pea.l      $2(a0)
0000256C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002570  48 68 00 02                pea.l      $2(a0)
00002574  48 6D CF 7A                pea.l      -$3086(a5)
00002578  48 6D CF 7A                pea.l      -$3086(a5)
0000257C  42 67                      clr.w      -(a7)
0000257E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002582  2F 28 00 18                move.l     $18(a0), -(a7)
00002586  A8 EC                      .byte      0xa8, 0xec
00002588  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000258C  48 68 00 02                pea.l      $2(a0)
00002590  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002594  48 68 00 02                pea.l      $2(a0)
00002598  48 6D CF 7A                pea.l      -$3086(a5)
0000259C  48 6D CF 7A                pea.l      -$3086(a5)
000025A0  42 67                      clr.w      -(a7)
000025A2  20 6D D3 DE                movea.l    -$2c22(a5), a0
000025A6  2F 28 00 18                move.l     $18(a0), -(a7)
000025AA  A8 EC                      .byte      0xa8, 0xec
000025AC  4E 5E                      unlk       a6
000025AE  4E 75                      rts

; MacsBug symbol trailer for HandleNightwolfReflection2: 9A 48 61 6E 64 6C 65 4E 69 67 68 74 77 6F 6C 66 52 65 66 6C 65 63 74 69 6F 6E 32

MoveSektorSeeker: ; 000025CE..0000263E
000025CE  4E 56 00 00                link.w     a6, #$0
000025D2  30 2D DC 84                move.w     -$237c(a5), d0
000025D6  54 40                      addq.w     #$2, d0
000025D8  3B 40 DC 34                move.w     d0, -$23cc(a5)
000025DC  30 2D DC 34                move.w     -$23cc(a5), d0
000025E0  D0 6D D8 0E                add.w      -$27f2(a5), d0
000025E4  3B 40 DC 38                move.w     d0, -$23c8(a5)
000025E8  70 10                      moveq      #$10, d0
000025EA  D0 6D DC 82                add.w      -$237e(a5), d0
000025EE  3B 40 DC 32                move.w     d0, -$23ce(a5)
000025F2  30 2D DC 32                move.w     -$23ce(a5), d0
000025F6  D0 6D D8 0C                add.w      -$27f4(a5), d0
000025FA  3B 40 DC 36                move.w     d0, -$23ca(a5)
000025FE  2B 6D DC 32 DC 4A          move.l     -$23ce(a5), -$23b6(a5)
00002604  2B 6D DC 36 DC 4E          move.l     -$23ca(a5), -$23b2(a5)
0000260A  2B 6D DC 32 DC 3A          move.l     -$23ce(a5), -$23c6(a5)
00002610  2B 6D DC 36 DC 3E          move.l     -$23ca(a5), -$23c2(a5)
00002616  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
0000261C  42 2D FF DA                clr.b      -$26(a5)
00002620  59 4F                      subq.w     #$4, a7
00002622  A9 75                      .byte      0xa9, 0x75
00002624  20 1F                      move.l     (a7)+, d0
00002626  2B 40 D7 9E                move.l     d0, -$2862(a5)
0000262A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002630  2F 2D DE D2                move.l     -$212e(a5), -(a7)
00002634  4E B9 00 00 00 90          jsr        $90.l
0000263A  4E 5E                      unlk       a6
0000263C  4E 75                      rts

; MacsBug symbol trailer for MoveSektorSeeker: 90 4D 6F 76 65 53 65 6B 74 6F 72 53 65 65 6B 65 72

MoveSektorSeeker2: ; 00002652..000026C2
00002652  4E 56 00 00                link.w     a6, #$0
00002656  30 2D DC 5C                move.w     -$23a4(a5), d0
0000265A  55 40                      subq.w     #$2, d0
0000265C  3B 40 DC 14                move.w     d0, -$23ec(a5)
00002660  30 2D DC 14                move.w     -$23ec(a5), d0
00002664  90 6D D8 0A                sub.w      -$27f6(a5), d0
00002668  3B 40 DC 10                move.w     d0, -$23f0(a5)
0000266C  70 10                      moveq      #$10, d0
0000266E  D0 6D DC 56                add.w      -$23aa(a5), d0
00002672  3B 40 DC 0E                move.w     d0, -$23f2(a5)
00002676  30 2D DC 0E                move.w     -$23f2(a5), d0
0000267A  D0 6D D8 08                add.w      -$27f8(a5), d0
0000267E  3B 40 DC 12                move.w     d0, -$23ee(a5)
00002682  2B 6D DC 0E DC 26          move.l     -$23f2(a5), -$23da(a5)
00002688  2B 6D DC 12 DC 2A          move.l     -$23ee(a5), -$23d6(a5)
0000268E  2B 6D DC 0E DC 16          move.l     -$23f2(a5), -$23ea(a5)
00002694  2B 6D DC 12 DC 1A          move.l     -$23ee(a5), -$23e6(a5)
0000269A  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
000026A0  42 2D FF DC                clr.b      -$24(a5)
000026A4  59 4F                      subq.w     #$4, a7
000026A6  A9 75                      .byte      0xa9, 0x75
000026A8  20 1F                      move.l     (a7)+, d0
000026AA  2B 40 D7 9A                move.l     d0, -$2866(a5)
000026AE  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000026B4  2F 2D DE C6                move.l     -$213a(a5), -(a7)
000026B8  4E B9 00 00 00 98          jsr        $98.l
000026BE  4E 5E                      unlk       a6
000026C0  4E 75                      rts

; MacsBug symbol trailer for MoveSektorSeeker2: 91 4D 6F 76 65 53 65 6B 74 6F 72 53 65 65 6B 65 72 32

HandleSektorSeeker: ; 000026D6..0000283C
000026D6  4E 56 FF F8                link.w     a6, #$fff8
000026DA  2B 6D DC 32 DC 3A          move.l     -$23ce(a5), -$23c6(a5)
000026E0  2B 6D DC 36 DC 3E          move.l     -$23ca(a5), -$23c2(a5)
000026E6  30 2D DC 36                move.w     -$23ca(a5), d0
000026EA  B0 6D DC 56                cmp.w      -$23aa(a5), d0
000026EE  6C 0E                      bge.b      $26fe
000026F0  48 6D DC 32                pea.l      -$23ce(a5)
000026F4  2F 3C 00 03 00 07          move.l     #$30007, -(a7)
000026FA  A8 A8                      .byte      0xa8, 0xa8
000026FC  60 22                      bra.b      $2720
000026FE  30 2D DC 36                move.w     -$23ca(a5), d0
00002702  B0 6D DC 5A                cmp.w      -$23a6(a5), d0
00002706  6F 0E                      ble.b      $2716
00002708  48 6D DC 32                pea.l      -$23ce(a5)
0000270C  2F 3C FF FD 00 07          move.l     #$fffd0007, -(a7)
00002712  A8 A8                      .byte      0xa8, 0xa8
00002714  60 0A                      bra.b      $2720
00002716  48 6D DC 32                pea.l      -$23ce(a5)
0000271A  48 78 00 07                pea.l      $7.w
0000271E  A8 A8                      .byte      0xa8, 0xa8
00002720  0C 6D 02 04 DC 34          cmpi.w     #$204, -$23cc(a5)
00002726  6E 16                      bgt.b      $273e
00002728  55 4F                      subq.w     #$2, a7
0000272A  48 6D DC 32                pea.l      -$23ce(a5)
0000272E  48 6D DC 56                pea.l      -$23aa(a5)
00002732  48 6E FF F8                pea.l      -$8(a6)
00002736  A8 AA                      .byte      0xa8, 0xaa
00002738  10 1F                      move.b     (a7)+, d0
0000273A  67 00 00 FC                beq.w      $2838
0000273E  55 4F                      subq.w     #$2, a7
00002740  48 6D DC 32                pea.l      -$23ce(a5)
00002744  48 6D DC 56                pea.l      -$23aa(a5)
00002748  48 6E FF F8                pea.l      -$8(a6)
0000274C  A8 AA                      .byte      0xa8, 0xaa
0000274E  10 1F                      move.b     (a7)+, d0
00002750  67 00 00 8C                beq.w      $27de
00002754  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
0000275A  66 46                      bne.b      $27a2
0000275C  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
00002762  48 6D CF 92                pea.l      -$306e(a5)
00002766  2F 3C 00 20 00 40          move.l     #$200040, -(a7)
0000276C  2F 3C 00 27 00 6C          move.l     #$27006c, -(a7)
00002772  A8 A7                      .byte      0xa8, 0xa7
00002774  42 2D FF DC                clr.b      -$24(a5)
00002778  59 4F                      subq.w     #$4, a7
0000277A  A9 75                      .byte      0xa9, 0x75
0000277C  20 1F                      move.l     (a7)+, d0
0000277E  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002782  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002788  2B 6D DC 32 CF 8A          move.l     -$23ce(a5), -$3076(a5)
0000278E  2B 6D DC 36 CF 8E          move.l     -$23ca(a5), -$3072(a5)
00002794  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
0000279A  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
000027A0  60 3C                      bra.b      $27de
000027A2  30 2D DC 38                move.w     -$23c8(a5), d0
000027A6  5B 40                      subq.w     #$5, d0
000027A8  3B 40 D7 7C                move.w     d0, -$2884(a5)
000027AC  70 D8                      moveq      #$d8, d0
000027AE  D0 6D D7 7C                add.w      -$2884(a5), d0
000027B2  3B 40 D7 78                move.w     d0, -$2888(a5)
000027B6  3B 6D DC 32 D7 76          move.w     -$23ce(a5), -$288a(a5)
000027BC  70 28                      moveq      #$28, d0
000027BE  D0 6D D7 76                add.w      -$288a(a5), d0
000027C2  3B 40 D7 7A                move.w     d0, -$2886(a5)
000027C6  4E B9 00 00 05 58          jsr        $558.l
000027CC  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
000027D2  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000027D6  4E B9 00 00 00 98          jsr        $98.l
000027DC  58 4F                      addq.w     #$4, a7
000027DE  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000027E4  42 2D D4 04                clr.b      -$2bfc(a5)
000027E8  42 2D D7 AC                clr.b      -$2854(a5)
000027EC  42 2D CF EA                clr.b      -$3016(a5)
000027F0  20 6D D3 FA                movea.l    -$2c06(a5), a0
000027F4  48 68 00 02                pea.l      $2(a0)
000027F8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000027FC  48 68 00 02                pea.l      $2(a0)
00002800  48 6D DC 4A                pea.l      -$23b6(a5)
00002804  48 6D DC 4A                pea.l      -$23b6(a5)
00002808  42 67                      clr.w      -(a7)
0000280A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000280E  2F 28 00 18                move.l     $18(a0), -(a7)
00002812  A8 EC                      .byte      0xa8, 0xec
00002814  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002818  48 68 00 02                pea.l      $2(a0)
0000281C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002820  48 68 00 02                pea.l      $2(a0)
00002824  48 6D DC 4A                pea.l      -$23b6(a5)
00002828  48 6D DC 4A                pea.l      -$23b6(a5)
0000282C  42 67                      clr.w      -(a7)
0000282E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002832  2F 28 00 18                move.l     $18(a0), -(a7)
00002836  A8 EC                      .byte      0xa8, 0xec
00002838  4E 5E                      unlk       a6
0000283A  4E 75                      rts

; MacsBug symbol trailer for HandleSektorSeeker: 92 48 61 6E 64 6C 65 53 65 6B 74 6F 72 53 65 65 6B 65 72

HandleSektorSeeker2: ; 00002852..000029B8
00002852  4E 56 FF F8                link.w     a6, #$fff8
00002856  2B 6D DC 0E DC 16          move.l     -$23f2(a5), -$23ea(a5)
0000285C  2B 6D DC 12 DC 1A          move.l     -$23ee(a5), -$23e6(a5)
00002862  30 2D DC 12                move.w     -$23ee(a5), d0
00002866  B0 6D DC 82                cmp.w      -$237e(a5), d0
0000286A  6C 0E                      bge.b      $287a
0000286C  48 6D DC 0E                pea.l      -$23f2(a5)
00002870  2F 3C 00 03 FF F9          move.l     #$3fff9, -(a7)
00002876  A8 A8                      .byte      0xa8, 0xa8
00002878  60 24                      bra.b      $289e
0000287A  30 2D DC 12                move.w     -$23ee(a5), d0
0000287E  B0 6D DC 86                cmp.w      -$237a(a5), d0
00002882  6F 0E                      ble.b      $2892
00002884  48 6D DC 0E                pea.l      -$23f2(a5)
00002888  2F 3C FF FD FF F9          move.l     #$fffdfff9, -(a7)
0000288E  A8 A8                      .byte      0xa8, 0xa8
00002890  60 0C                      bra.b      $289e
00002892  48 6D DC 0E                pea.l      -$23f2(a5)
00002896  2F 3C 00 00 FF F9          move.l     #$fff9, -(a7)
0000289C  A8 A8                      .byte      0xa8, 0xa8
0000289E  4A 6D DC 14                tst.w      -$23ec(a5)
000028A2  6D 16                      blt.b      $28ba
000028A4  55 4F                      subq.w     #$2, a7
000028A6  48 6D DC 0E                pea.l      -$23f2(a5)
000028AA  48 6D DC 82                pea.l      -$237e(a5)
000028AE  48 6E FF F8                pea.l      -$8(a6)
000028B2  A8 AA                      .byte      0xa8, 0xaa
000028B4  10 1F                      move.b     (a7)+, d0
000028B6  67 00 00 FC                beq.w      $29b4
000028BA  55 4F                      subq.w     #$2, a7
000028BC  48 6D DC 0E                pea.l      -$23f2(a5)
000028C0  48 6D DC 82                pea.l      -$237e(a5)
000028C4  48 6E FF F8                pea.l      -$8(a6)
000028C8  A8 AA                      .byte      0xa8, 0xaa
000028CA  10 1F                      move.b     (a7)+, d0
000028CC  67 00 00 8C                beq.w      $295a
000028D0  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
000028D6  66 46                      bne.b      $291e
000028D8  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
000028DE  48 6D CF C4                pea.l      -$303c(a5)
000028E2  2F 3C 00 20 00 40          move.l     #$200040, -(a7)
000028E8  2F 3C 00 27 00 6C          move.l     #$27006c, -(a7)
000028EE  A8 A7                      .byte      0xa8, 0xa7
000028F0  42 2D FF DA                clr.b      -$26(a5)
000028F4  59 4F                      subq.w     #$4, a7
000028F6  A9 75                      .byte      0xa9, 0x75
000028F8  20 1F                      move.l     (a7)+, d0
000028FA  2B 40 D7 9E                move.l     d0, -$2862(a5)
000028FE  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002904  2B 6D DC 0E CF BC          move.l     -$23f2(a5), -$3044(a5)
0000290A  2B 6D DC 12 CF C0          move.l     -$23ee(a5), -$3040(a5)
00002910  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
00002916  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
0000291C  60 3C                      bra.b      $295a
0000291E  30 2D DC 10                move.w     -$23f0(a5), d0
00002922  5A 40                      addq.w     #$5, d0
00002924  3B 40 D7 70                move.w     d0, -$2890(a5)
00002928  70 28                      moveq      #$28, d0
0000292A  D0 6D D7 70                add.w      -$2890(a5), d0
0000292E  3B 40 D7 74                move.w     d0, -$288c(a5)
00002932  3B 6D DC 0E D7 6E          move.w     -$23f2(a5), -$2892(a5)
00002938  70 28                      moveq      #$28, d0
0000293A  D0 6D D7 6E                add.w      -$2892(a5), d0
0000293E  3B 40 D7 72                move.w     d0, -$288e(a5)
00002942  4E B9 00 00 05 50          jsr        $550.l
00002948  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
0000294E  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00002952  4E B9 00 00 00 90          jsr        $90.l
00002958  58 4F                      addq.w     #$4, a7
0000295A  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00002960  42 2D D4 02                clr.b      -$2bfe(a5)
00002964  42 2D D7 A4                clr.b      -$285c(a5)
00002968  42 2D CF E8                clr.b      -$3018(a5)
0000296C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00002970  48 68 00 02                pea.l      $2(a0)
00002974  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002978  48 68 00 02                pea.l      $2(a0)
0000297C  48 6D DC 26                pea.l      -$23da(a5)
00002980  48 6D DC 26                pea.l      -$23da(a5)
00002984  42 67                      clr.w      -(a7)
00002986  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000298A  2F 28 00 18                move.l     $18(a0), -(a7)
0000298E  A8 EC                      .byte      0xa8, 0xec
00002990  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002994  48 68 00 02                pea.l      $2(a0)
00002998  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000299C  48 68 00 02                pea.l      $2(a0)
000029A0  48 6D DC 26                pea.l      -$23da(a5)
000029A4  48 6D DC 26                pea.l      -$23da(a5)
000029A8  42 67                      clr.w      -(a7)
000029AA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000029AE  2F 28 00 18                move.l     $18(a0), -(a7)
000029B2  A8 EC                      .byte      0xa8, 0xec
000029B4  4E 5E                      unlk       a6
000029B6  4E 75                      rts

; MacsBug symbol trailer for HandleSektorSeeker2: 93 48 61 6E 64 6C 65 53 65 6B 74 6F 72 53 65 65 6B 65 72 32

MoveGrahamDonut: ; 000029CE..00002A4C
000029CE  4E 56 00 00                link.w     a6, #$0
000029D2  48 6D D0 26                pea.l      -$2fda(a5)
000029D6  2F 3C 00 0F 00 10          move.l     #$f0010, -(a7)
000029DC  2F 3C 00 32 00 24          move.l     #$320024, -(a7)
000029E2  A8 A7                      .byte      0xa8, 0xa7
000029E4  30 2D DC 84                move.w     -$237c(a5), d0
000029E8  54 40                      addq.w     #$2, d0
000029EA  3B 40 D0 20                move.w     d0, -$2fe0(a5)
000029EE  70 14                      moveq      #$14, d0
000029F0  D0 6D D0 20                add.w      -$2fe0(a5), d0
000029F4  3B 40 D0 24                move.w     d0, -$2fdc(a5)
000029F8  30 2D DC 82                move.w     -$237e(a5), d0
000029FC  5C 40                      addq.w     #$6, d0
000029FE  3B 40 D0 1E                move.w     d0, -$2fe2(a5)
00002A02  70 23                      moveq      #$23, d0
00002A04  D0 6D D0 1E                add.w      -$2fe2(a5), d0
00002A08  3B 40 D0 22                move.w     d0, -$2fde(a5)
00002A0C  2B 6D D0 1E D0 0E          move.l     -$2fe2(a5), -$2ff2(a5)
00002A12  2B 6D D0 22 D0 12          move.l     -$2fde(a5), -$2fee(a5)
00002A18  2B 6D D0 1E D0 16          move.l     -$2fe2(a5), -$2fea(a5)
00002A1E  2B 6D D0 22 D0 1A          move.l     -$2fde(a5), -$2fe6(a5)
00002A24  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00002A2A  42 2D FF DA                clr.b      -$26(a5)
00002A2E  59 4F                      subq.w     #$4, a7
00002A30  A9 75                      .byte      0xa9, 0x75
00002A32  20 1F                      move.l     (a7)+, d0
00002A34  2B 40 D7 9E                move.l     d0, -$2862(a5)
00002A38  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002A3E  2F 2D DE D2                move.l     -$212e(a5), -(a7)
00002A42  4E B9 00 00 00 90          jsr        $90.l
00002A48  4E 5E                      unlk       a6
00002A4A  4E 75                      rts

; MacsBug symbol trailer for MoveGrahamDonut: 8F 4D 6F 76 65 47 72 61 68 61 6D 44 6F 6E 75 74

MoveGrahamDonut2: ; 00002A5E..00002ADC
00002A5E  4E 56 00 00                link.w     a6, #$0
00002A62  48 6D D0 26                pea.l      -$2fda(a5)
00002A66  2F 3C 00 0F 00 10          move.l     #$f0010, -(a7)
00002A6C  2F 3C 00 32 00 24          move.l     #$320024, -(a7)
00002A72  A8 A7                      .byte      0xa8, 0xa7
00002A74  30 2D DC 5C                move.w     -$23a4(a5), d0
00002A78  55 40                      subq.w     #$2, d0
00002A7A  3B 40 D0 04                move.w     d0, -$2ffc(a5)
00002A7E  70 EC                      moveq      #$ec, d0
00002A80  D0 6D D0 04                add.w      -$2ffc(a5), d0
00002A84  3B 40 D0 00                move.w     d0, -$3000(a5)
00002A88  30 2D DC 56                move.w     -$23aa(a5), d0
00002A8C  5C 40                      addq.w     #$6, d0
00002A8E  3B 40 CF FE                move.w     d0, -$3002(a5)
00002A92  70 23                      moveq      #$23, d0
00002A94  D0 6D CF FE                add.w      -$3002(a5), d0
00002A98  3B 40 D0 02                move.w     d0, -$2ffe(a5)
00002A9C  2B 6D CF FE CF EE          move.l     -$3002(a5), -$3012(a5)
00002AA2  2B 6D D0 02 CF F2          move.l     -$2ffe(a5), -$300e(a5)
00002AA8  2B 6D CF FE CF F6          move.l     -$3002(a5), -$300a(a5)
00002AAE  2B 6D D0 02 CF FA          move.l     -$2ffe(a5), -$3006(a5)
00002AB4  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00002ABA  42 2D FF DC                clr.b      -$24(a5)
00002ABE  59 4F                      subq.w     #$4, a7
00002AC0  A9 75                      .byte      0xa9, 0x75
00002AC2  20 1F                      move.l     (a7)+, d0
00002AC4  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002AC8  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002ACE  2F 2D DE C6                move.l     -$213a(a5), -(a7)
00002AD2  4E B9 00 00 00 98          jsr        $98.l
00002AD8  4E 5E                      unlk       a6
00002ADA  4E 75                      rts

; MacsBug symbol trailer for MoveGrahamDonut2: 90 4D 6F 76 65 47 72 61 68 61 6D 44 6F 6E 75 74 32

HandleGrahamDonut: ; 00002AF0..00002BB0
00002AF0  4E 56 FF F8                link.w     a6, #$fff8
00002AF4  2B 6D D0 1E D0 16          move.l     -$2fe2(a5), -$2fea(a5)
00002AFA  2B 6D D0 22 D0 1A          move.l     -$2fde(a5), -$2fe6(a5)
00002B00  48 6D D0 1E                pea.l      -$2fe2(a5)
00002B04  48 78 00 09                pea.l      $9.w
00002B08  A8 A8                      .byte      0xa8, 0xa8
00002B0A  0C 6D 02 04 D0 20          cmpi.w     #$204, -$2fe0(a5)
00002B10  6E 16                      bgt.b      $2b28
00002B12  55 4F                      subq.w     #$2, a7
00002B14  48 6D D0 1E                pea.l      -$2fe2(a5)
00002B18  48 6D DC AE                pea.l      -$2352(a5)
00002B1C  48 6E FF F8                pea.l      -$8(a6)
00002B20  A8 AA                      .byte      0xa8, 0xaa
00002B22  10 1F                      move.b     (a7)+, d0
00002B24  67 00 00 86                beq.w      $2bac
00002B28  55 4F                      subq.w     #$2, a7
00002B2A  48 6D D0 1E                pea.l      -$2fe2(a5)
00002B2E  48 6D DC AE                pea.l      -$2352(a5)
00002B32  48 6E FF F8                pea.l      -$8(a6)
00002B36  A8 AA                      .byte      0xa8, 0xaa
00002B38  10 1F                      move.b     (a7)+, d0
00002B3A  67 1A                      beq.b      $2b56
00002B3C  2F 3C 0D B4 00 0A          move.l     #$db4000a, -(a7)
00002B42  4E B9 00 00 00 B8          jsr        $b8.l
00002B48  A9 75                      .byte      0xa9, 0x75
00002B4A  20 1F                      move.l     (a7)+, d0
00002B4C  2B 40 D0 06                move.l     d0, -$2ffa(a5)
00002B50  1B 7C 00 01 D0 0A          move.b     #$1, -$2ff6(a5)
00002B56  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00002B5C  42 2D D4 04                clr.b      -$2bfc(a5)
00002B60  42 2D D0 0C                clr.b      -$2ff4(a5)
00002B64  20 6D D3 FA                movea.l    -$2c06(a5), a0
00002B68  48 68 00 02                pea.l      $2(a0)
00002B6C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002B70  48 68 00 02                pea.l      $2(a0)
00002B74  48 6D D0 0E                pea.l      -$2ff2(a5)
00002B78  48 6D D0 0E                pea.l      -$2ff2(a5)
00002B7C  42 67                      clr.w      -(a7)
00002B7E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002B82  2F 28 00 18                move.l     $18(a0), -(a7)
00002B86  A8 EC                      .byte      0xa8, 0xec
00002B88  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002B8C  48 68 00 02                pea.l      $2(a0)
00002B90  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002B94  48 68 00 02                pea.l      $2(a0)
00002B98  48 6D D0 0E                pea.l      -$2ff2(a5)
00002B9C  48 6D D0 0E                pea.l      -$2ff2(a5)
00002BA0  42 67                      clr.w      -(a7)
00002BA2  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002BA6  2F 28 00 18                move.l     $18(a0), -(a7)
00002BAA  A8 EC                      .byte      0xa8, 0xec
00002BAC  4E 5E                      unlk       a6
00002BAE  4E 75                      rts

; MacsBug symbol trailer for HandleGrahamDonut: 91 48 61 6E 64 6C 65 47 72 61 68 61 6D 44 6F 6E 75 74

HandleGrahamDonut2: ; 00002BC4..00002C84
00002BC4  4E 56 FF F8                link.w     a6, #$fff8
00002BC8  2B 6D CF FE CF F6          move.l     -$3002(a5), -$300a(a5)
00002BCE  2B 6D D0 02 CF FA          move.l     -$2ffe(a5), -$3006(a5)
00002BD4  48 6D CF FE                pea.l      -$3002(a5)
00002BD8  2F 3C 00 00 FF F7          move.l     #$fff7, -(a7)
00002BDE  A8 A8                      .byte      0xa8, 0xa8
00002BE0  4A 6D D0 04                tst.w      -$2ffc(a5)
00002BE4  6D 16                      blt.b      $2bfc
00002BE6  55 4F                      subq.w     #$2, a7
00002BE8  48 6D CF FE                pea.l      -$3002(a5)
00002BEC  48 6D DC AE                pea.l      -$2352(a5)
00002BF0  48 6E FF F8                pea.l      -$8(a6)
00002BF4  A8 AA                      .byte      0xa8, 0xaa
00002BF6  10 1F                      move.b     (a7)+, d0
00002BF8  67 00 00 86                beq.w      $2c80
00002BFC  55 4F                      subq.w     #$2, a7
00002BFE  48 6D CF FE                pea.l      -$3002(a5)
00002C02  48 6D DC AE                pea.l      -$2352(a5)
00002C06  48 6E FF F8                pea.l      -$8(a6)
00002C0A  A8 AA                      .byte      0xa8, 0xaa
00002C0C  10 1F                      move.b     (a7)+, d0
00002C0E  67 1A                      beq.b      $2c2a
00002C10  2F 3C 0D B4 00 0A          move.l     #$db4000a, -(a7)
00002C16  4E B9 00 00 00 B8          jsr        $b8.l
00002C1C  A9 75                      .byte      0xa9, 0x75
00002C1E  20 1F                      move.l     (a7)+, d0
00002C20  2B 40 D0 06                move.l     d0, -$2ffa(a5)
00002C24  1B 7C 00 01 D0 0A          move.b     #$1, -$2ff6(a5)
00002C2A  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00002C30  42 2D D4 02                clr.b      -$2bfe(a5)
00002C34  42 2D CF EC                clr.b      -$3014(a5)
00002C38  20 6D D3 FA                movea.l    -$2c06(a5), a0
00002C3C  48 68 00 02                pea.l      $2(a0)
00002C40  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002C44  48 68 00 02                pea.l      $2(a0)
00002C48  48 6D CF EE                pea.l      -$3012(a5)
00002C4C  48 6D CF EE                pea.l      -$3012(a5)
00002C50  42 67                      clr.w      -(a7)
00002C52  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002C56  2F 28 00 18                move.l     $18(a0), -(a7)
00002C5A  A8 EC                      .byte      0xa8, 0xec
00002C5C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002C60  48 68 00 02                pea.l      $2(a0)
00002C64  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002C68  48 68 00 02                pea.l      $2(a0)
00002C6C  48 6D CF EE                pea.l      -$3012(a5)
00002C70  48 6D CF EE                pea.l      -$3012(a5)
00002C74  42 67                      clr.w      -(a7)
00002C76  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002C7A  2F 28 00 18                move.l     $18(a0), -(a7)
00002C7E  A8 EC                      .byte      0xa8, 0xec
00002C80  4E 5E                      unlk       a6
00002C82  4E 75                      rts

; MacsBug symbol trailer for HandleGrahamDonut2: 92 48 61 6E 64 6C 65 47 72 61 68 61 6D 44 6F 6E 75 74 32

MoveMotaroFireball1: ; 00002C9A..00002CE8
00002C9A  4E 56 00 00                link.w     a6, #$0
00002C9E  3B 6D DC 88 D9 70          move.w     -$2378(a5), -$2690(a5)
00002CA4  70 1A                      moveq      #$1a, d0
00002CA6  D0 6D D9 70                add.w      -$2690(a5), d0
00002CAA  3B 40 D9 74                move.w     d0, -$268c(a5)
00002CAE  70 0A                      moveq      #$a, d0
00002CB0  D0 6D DC 82                add.w      -$237e(a5), d0
00002CB4  3B 40 D9 6E                move.w     d0, -$2692(a5)
00002CB8  70 1A                      moveq      #$1a, d0
00002CBA  D0 6D D9 6E                add.w      -$2692(a5), d0
00002CBE  3B 40 D9 72                move.w     d0, -$268e(a5)
00002CC2  2F 2D DE CE                move.l     -$2132(a5), -(a7)
00002CC6  4E B9 00 00 00 90          jsr        $90.l
00002CCC  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00002CD2  42 2D FF DA                clr.b      -$26(a5)
00002CD6  A9 75                      .byte      0xa9, 0x75
00002CD8  20 1F                      move.l     (a7)+, d0
00002CDA  2B 40 D7 9E                move.l     d0, -$2862(a5)
00002CDE  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002CE4  4E 5E                      unlk       a6
00002CE6  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball1: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 31

MoveMotaroFireball2: ; 00002CFE..00002D4C
00002CFE  4E 56 00 00                link.w     a6, #$0
00002D02  3B 6D DC 88 D9 94          move.w     -$2378(a5), -$266c(a5)
00002D08  70 1A                      moveq      #$1a, d0
00002D0A  D0 6D D9 94                add.w      -$266c(a5), d0
00002D0E  3B 40 D9 98                move.w     d0, -$2668(a5)
00002D12  70 0A                      moveq      #$a, d0
00002D14  D0 6D DC 82                add.w      -$237e(a5), d0
00002D18  3B 40 D9 92                move.w     d0, -$266e(a5)
00002D1C  70 1A                      moveq      #$1a, d0
00002D1E  D0 6D D9 92                add.w      -$266e(a5), d0
00002D22  3B 40 D9 96                move.w     d0, -$266a(a5)
00002D26  2F 2D DE CE                move.l     -$2132(a5), -(a7)
00002D2A  4E B9 00 00 00 90          jsr        $90.l
00002D30  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00002D36  42 2D FF DA                clr.b      -$26(a5)
00002D3A  A9 75                      .byte      0xa9, 0x75
00002D3C  20 1F                      move.l     (a7)+, d0
00002D3E  2B 40 D7 9E                move.l     d0, -$2862(a5)
00002D42  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002D48  4E 5E                      unlk       a6
00002D4A  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball2: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 32

MoveMotaroFireball3: ; 00002D62..00002DB0
00002D62  4E 56 00 00                link.w     a6, #$0
00002D66  3B 6D DC 88 D9 B8          move.w     -$2378(a5), -$2648(a5)
00002D6C  70 1A                      moveq      #$1a, d0
00002D6E  D0 6D D9 B8                add.w      -$2648(a5), d0
00002D72  3B 40 D9 BC                move.w     d0, -$2644(a5)
00002D76  70 0A                      moveq      #$a, d0
00002D78  D0 6D DC 82                add.w      -$237e(a5), d0
00002D7C  3B 40 D9 B6                move.w     d0, -$264a(a5)
00002D80  70 1A                      moveq      #$1a, d0
00002D82  D0 6D D9 B6                add.w      -$264a(a5), d0
00002D86  3B 40 D9 BA                move.w     d0, -$2646(a5)
00002D8A  2F 2D DE CE                move.l     -$2132(a5), -(a7)
00002D8E  4E B9 00 00 00 90          jsr        $90.l
00002D94  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00002D9A  42 2D FF DA                clr.b      -$26(a5)
00002D9E  A9 75                      .byte      0xa9, 0x75
00002DA0  20 1F                      move.l     (a7)+, d0
00002DA2  2B 40 D7 9E                move.l     d0, -$2862(a5)
00002DA6  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002DAC  4E 5E                      unlk       a6
00002DAE  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball3: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 33

MoveMotaroFireball4: ; 00002DC6..00002E14
00002DC6  4E 56 00 00                link.w     a6, #$0
00002DCA  3B 6D DC 5C D9 08          move.w     -$23a4(a5), -$26f8(a5)
00002DD0  70 E6                      moveq      #$e6, d0
00002DD2  D0 6D D9 08                add.w      -$26f8(a5), d0
00002DD6  3B 40 D9 04                move.w     d0, -$26fc(a5)
00002DDA  70 0A                      moveq      #$a, d0
00002DDC  D0 6D DC 56                add.w      -$23aa(a5), d0
00002DE0  3B 40 D9 02                move.w     d0, -$26fe(a5)
00002DE4  70 1A                      moveq      #$1a, d0
00002DE6  D0 6D D9 02                add.w      -$26fe(a5), d0
00002DEA  3B 40 D9 06                move.w     d0, -$26fa(a5)
00002DEE  2F 2D DE CA                move.l     -$2136(a5), -(a7)
00002DF2  4E B9 00 00 00 98          jsr        $98.l
00002DF8  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00002DFE  42 2D FF DC                clr.b      -$24(a5)
00002E02  A9 75                      .byte      0xa9, 0x75
00002E04  20 1F                      move.l     (a7)+, d0
00002E06  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002E0A  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002E10  4E 5E                      unlk       a6
00002E12  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball4: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 34

MoveMotaroFireball5: ; 00002E2A..00002E78
00002E2A  4E 56 00 00                link.w     a6, #$0
00002E2E  3B 6D DC 5C D9 2C          move.w     -$23a4(a5), -$26d4(a5)
00002E34  70 E6                      moveq      #$e6, d0
00002E36  D0 6D D9 2C                add.w      -$26d4(a5), d0
00002E3A  3B 40 D9 28                move.w     d0, -$26d8(a5)
00002E3E  70 0A                      moveq      #$a, d0
00002E40  D0 6D DC 56                add.w      -$23aa(a5), d0
00002E44  3B 40 D9 26                move.w     d0, -$26da(a5)
00002E48  70 1A                      moveq      #$1a, d0
00002E4A  D0 6D D9 26                add.w      -$26da(a5), d0
00002E4E  3B 40 D9 2A                move.w     d0, -$26d6(a5)
00002E52  2F 2D DE CA                move.l     -$2136(a5), -(a7)
00002E56  4E B9 00 00 00 98          jsr        $98.l
00002E5C  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00002E62  42 2D FF DC                clr.b      -$24(a5)
00002E66  A9 75                      .byte      0xa9, 0x75
00002E68  20 1F                      move.l     (a7)+, d0
00002E6A  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002E6E  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002E74  4E 5E                      unlk       a6
00002E76  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball5: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 35

MoveMotaroFireball6: ; 00002E8E..00002EDC
00002E8E  4E 56 00 00                link.w     a6, #$0
00002E92  3B 6D DC 5C D9 50          move.w     -$23a4(a5), -$26b0(a5)
00002E98  70 E6                      moveq      #$e6, d0
00002E9A  D0 6D D9 50                add.w      -$26b0(a5), d0
00002E9E  3B 40 D9 4C                move.w     d0, -$26b4(a5)
00002EA2  70 0A                      moveq      #$a, d0
00002EA4  D0 6D DC 56                add.w      -$23aa(a5), d0
00002EA8  3B 40 D9 4A                move.w     d0, -$26b6(a5)
00002EAC  70 1A                      moveq      #$1a, d0
00002EAE  D0 6D D9 4A                add.w      -$26b6(a5), d0
00002EB2  3B 40 D9 4E                move.w     d0, -$26b2(a5)
00002EB6  2F 2D DE CA                move.l     -$2136(a5), -(a7)
00002EBA  4E B9 00 00 00 98          jsr        $98.l
00002EC0  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00002EC6  42 2D FF DC                clr.b      -$24(a5)
00002ECA  A9 75                      .byte      0xa9, 0x75
00002ECC  20 1F                      move.l     (a7)+, d0
00002ECE  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002ED2  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002ED8  4E 5E                      unlk       a6
00002EDA  4E 75                      rts

; MacsBug symbol trailer for MoveMotaroFireball6: 93 4D 6F 76 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 36

HandleMotaroFireball1: ; 00002EF2..0000304A
00002EF2  4E 56 FF F8                link.w     a6, #$fff8
00002EF6  2B 6D D9 6E D9 76          move.l     -$2692(a5), -$268a(a5)
00002EFC  2B 6D D9 72 D9 7A          move.l     -$268e(a5), -$2686(a5)
00002F02  48 6D D9 6E                pea.l      -$2692(a5)
00002F06  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
00002F0A  42 67                      clr.w      -(a7)
00002F0C  A8 A8                      .byte      0xa8, 0xa8
00002F0E  0C 6D 02 04 D9 70          cmpi.w     #$204, -$2690(a5)
00002F14  6E 1E                      bgt.b      $2f34
00002F16  0C 6D 00 52 D9 6E          cmpi.w     #$52, -$2692(a5)
00002F1C  6F 16                      ble.b      $2f34
00002F1E  55 4F                      subq.w     #$2, a7
00002F20  48 6D D9 6E                pea.l      -$2692(a5)
00002F24  48 6D DC 56                pea.l      -$23aa(a5)
00002F28  48 6E FF F8                pea.l      -$8(a6)
00002F2C  A8 AA                      .byte      0xa8, 0xaa
00002F2E  10 1F                      move.b     (a7)+, d0
00002F30  67 00 01 14                beq.w      $3046
00002F34  55 4F                      subq.w     #$2, a7
00002F36  48 6D D9 6E                pea.l      -$2692(a5)
00002F3A  48 6D DC 56                pea.l      -$23aa(a5)
00002F3E  48 6E FF F8                pea.l      -$8(a6)
00002F42  A8 AA                      .byte      0xa8, 0xaa
00002F44  10 1F                      move.b     (a7)+, d0
00002F46  67 00 00 9A                beq.w      $2fe2
00002F4A  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00002F50  66 54                      bne.b      $2fa6
00002F52  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
00002F58  48 6D CF 92                pea.l      -$306e(a5)
00002F5C  48 78 00 87                pea.l      $87.w
00002F60  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
00002F66  A8 A7                      .byte      0xa8, 0xa7
00002F68  42 6D D7 A8                clr.w      -$2858(a5)
00002F6C  42 2D FF DC                clr.b      -$24(a5)
00002F70  59 4F                      subq.w     #$4, a7
00002F72  A9 75                      .byte      0xa9, 0x75
00002F74  20 1F                      move.l     (a7)+, d0
00002F76  2B 40 D7 9A                move.l     d0, -$2866(a5)
00002F7A  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002F80  2B 6D D9 6E CF 8A          move.l     -$2692(a5), -$3076(a5)
00002F86  2B 6D D9 72 CF 8E          move.l     -$268e(a5), -$3072(a5)
00002F8C  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
00002F92  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
00002F98  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
00002F9E  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
00002FA4  60 3C                      bra.b      $2fe2
00002FA6  30 2D D9 74                move.w     -$268c(a5), d0
00002FAA  5B 40                      subq.w     #$5, d0
00002FAC  3B 40 D7 7C                move.w     d0, -$2884(a5)
00002FB0  70 D8                      moveq      #$d8, d0
00002FB2  D0 6D D7 7C                add.w      -$2884(a5), d0
00002FB6  3B 40 D7 78                move.w     d0, -$2888(a5)
00002FBA  3B 6D D9 6E D7 76          move.w     -$2692(a5), -$288a(a5)
00002FC0  70 28                      moveq      #$28, d0
00002FC2  D0 6D D7 76                add.w      -$288a(a5), d0
00002FC6  3B 40 D7 7A                move.w     d0, -$2886(a5)
00002FCA  4E B9 00 00 05 58          jsr        $558.l
00002FD0  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
00002FD6  2F 2D DE BE                move.l     -$2142(a5), -(a7)
00002FDA  4E B9 00 00 00 98          jsr        $98.l
00002FE0  58 4F                      addq.w     #$4, a7
00002FE2  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00002FE8  42 2D D4 04                clr.b      -$2bfc(a5)
00002FEC  42 2D D9 01                clr.b      -$26ff(a5)
00002FF0  48 6D D9 6E                pea.l      -$2692(a5)
00002FF4  48 6D D9 76                pea.l      -$268a(a5)
00002FF8  48 6E FF F8                pea.l      -$8(a6)
00002FFC  A8 AB                      .byte      0xa8, 0xab
00002FFE  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003002  48 68 00 02                pea.l      $2(a0)
00003006  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000300A  48 68 00 02                pea.l      $2(a0)
0000300E  48 6E FF F8                pea.l      -$8(a6)
00003012  48 6E FF F8                pea.l      -$8(a6)
00003016  42 67                      clr.w      -(a7)
00003018  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000301C  2F 28 00 18                move.l     $18(a0), -(a7)
00003020  A8 EC                      .byte      0xa8, 0xec
00003022  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003026  48 68 00 02                pea.l      $2(a0)
0000302A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000302E  48 68 00 02                pea.l      $2(a0)
00003032  48 6E FF F8                pea.l      -$8(a6)
00003036  48 6E FF F8                pea.l      -$8(a6)
0000303A  42 67                      clr.w      -(a7)
0000303C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003040  2F 28 00 18                move.l     $18(a0), -(a7)
00003044  A8 EC                      .byte      0xa8, 0xec
00003046  4E 5E                      unlk       a6
00003048  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball1: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 31

HandleMotaroFireball2: ; 00003062..000031BE
00003062  4E 56 FF F8                link.w     a6, #$fff8
00003066  2B 6D D9 92 D9 9A          move.l     -$266e(a5), -$2666(a5)
0000306C  2B 6D D9 96 D9 9E          move.l     -$266a(a5), -$2662(a5)
00003072  48 6D D9 92                pea.l      -$266e(a5)
00003076  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
0000307A  3F 3C FF FE                move.w     #$fffe, -(a7)
0000307E  A8 A8                      .byte      0xa8, 0xa8
00003080  0C 6D 02 04 D9 94          cmpi.w     #$204, -$266c(a5)
00003086  6E 1E                      bgt.b      $30a6
00003088  0C 6D 00 52 D9 92          cmpi.w     #$52, -$266e(a5)
0000308E  6F 16                      ble.b      $30a6
00003090  55 4F                      subq.w     #$2, a7
00003092  48 6D D9 92                pea.l      -$266e(a5)
00003096  48 6D DC 56                pea.l      -$23aa(a5)
0000309A  48 6E FF F8                pea.l      -$8(a6)
0000309E  A8 AA                      .byte      0xa8, 0xaa
000030A0  10 1F                      move.b     (a7)+, d0
000030A2  67 00 01 16                beq.w      $31ba
000030A6  55 4F                      subq.w     #$2, a7
000030A8  48 6D D9 92                pea.l      -$266e(a5)
000030AC  48 6D DC 56                pea.l      -$23aa(a5)
000030B0  48 6E FF F8                pea.l      -$8(a6)
000030B4  A8 AA                      .byte      0xa8, 0xaa
000030B6  10 1F                      move.b     (a7)+, d0
000030B8  67 00 00 9C                beq.w      $3156
000030BC  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
000030C2  66 56                      bne.b      $311a
000030C4  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
000030CA  48 6D CF 92                pea.l      -$306e(a5)
000030CE  48 78 00 87                pea.l      $87.w
000030D2  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
000030D8  A8 A7                      .byte      0xa8, 0xa7
000030DA  3B 7C 00 01 D7 A8          move.w     #$1, -$2858(a5)
000030E0  42 2D FF DC                clr.b      -$24(a5)
000030E4  59 4F                      subq.w     #$4, a7
000030E6  A9 75                      .byte      0xa9, 0x75
000030E8  20 1F                      move.l     (a7)+, d0
000030EA  2B 40 D7 9A                move.l     d0, -$2866(a5)
000030EE  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000030F4  2B 6D D9 92 CF 8A          move.l     -$266e(a5), -$3076(a5)
000030FA  2B 6D D9 96 CF 8E          move.l     -$266a(a5), -$3072(a5)
00003100  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
00003106  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
0000310C  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
00003112  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
00003118  60 3C                      bra.b      $3156
0000311A  30 2D D9 98                move.w     -$2668(a5), d0
0000311E  5B 40                      subq.w     #$5, d0
00003120  3B 40 D7 7C                move.w     d0, -$2884(a5)
00003124  70 D8                      moveq      #$d8, d0
00003126  D0 6D D7 7C                add.w      -$2884(a5), d0
0000312A  3B 40 D7 78                move.w     d0, -$2888(a5)
0000312E  3B 6D D9 92 D7 76          move.w     -$266e(a5), -$288a(a5)
00003134  70 28                      moveq      #$28, d0
00003136  D0 6D D7 76                add.w      -$288a(a5), d0
0000313A  3B 40 D7 7A                move.w     d0, -$2886(a5)
0000313E  4E B9 00 00 05 58          jsr        $558.l
00003144  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
0000314A  2F 2D DE BE                move.l     -$2142(a5), -(a7)
0000314E  4E B9 00 00 00 98          jsr        $98.l
00003154  58 4F                      addq.w     #$4, a7
00003156  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
0000315C  42 2D D4 04                clr.b      -$2bfc(a5)
00003160  42 2D D9 00                clr.b      -$2700(a5)
00003164  48 6D D9 92                pea.l      -$266e(a5)
00003168  48 6D D9 9A                pea.l      -$2666(a5)
0000316C  48 6E FF F8                pea.l      -$8(a6)
00003170  A8 AB                      .byte      0xa8, 0xab
00003172  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003176  48 68 00 02                pea.l      $2(a0)
0000317A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000317E  48 68 00 02                pea.l      $2(a0)
00003182  48 6E FF F8                pea.l      -$8(a6)
00003186  48 6E FF F8                pea.l      -$8(a6)
0000318A  42 67                      clr.w      -(a7)
0000318C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003190  2F 28 00 18                move.l     $18(a0), -(a7)
00003194  A8 EC                      .byte      0xa8, 0xec
00003196  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000319A  48 68 00 02                pea.l      $2(a0)
0000319E  20 6D D3 DE                movea.l    -$2c22(a5), a0
000031A2  48 68 00 02                pea.l      $2(a0)
000031A6  48 6E FF F8                pea.l      -$8(a6)
000031AA  48 6E FF F8                pea.l      -$8(a6)
000031AE  42 67                      clr.w      -(a7)
000031B0  20 6D D3 DE                movea.l    -$2c22(a5), a0
000031B4  2F 28 00 18                move.l     $18(a0), -(a7)
000031B8  A8 EC                      .byte      0xa8, 0xec
000031BA  4E 5E                      unlk       a6
000031BC  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball2: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 32

HandleMotaroFireball3: ; 000031D6..00003332
000031D6  4E 56 FF F8                link.w     a6, #$fff8
000031DA  2B 6D D9 B6 D9 BE          move.l     -$264a(a5), -$2642(a5)
000031E0  2B 6D D9 BA D9 C2          move.l     -$2646(a5), -$263e(a5)
000031E6  48 6D D9 B6                pea.l      -$264a(a5)
000031EA  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
000031EE  3F 3C 00 02                move.w     #$2, -(a7)
000031F2  A8 A8                      .byte      0xa8, 0xa8
000031F4  0C 6D 02 04 D9 B8          cmpi.w     #$204, -$2648(a5)
000031FA  6E 1E                      bgt.b      $321a
000031FC  0C 6D 00 52 D9 B6          cmpi.w     #$52, -$264a(a5)
00003202  6F 16                      ble.b      $321a
00003204  55 4F                      subq.w     #$2, a7
00003206  48 6D D9 B6                pea.l      -$264a(a5)
0000320A  48 6D DC 56                pea.l      -$23aa(a5)
0000320E  48 6E FF F8                pea.l      -$8(a6)
00003212  A8 AA                      .byte      0xa8, 0xaa
00003214  10 1F                      move.b     (a7)+, d0
00003216  67 00 01 16                beq.w      $332e
0000321A  55 4F                      subq.w     #$2, a7
0000321C  48 6D D9 B6                pea.l      -$264a(a5)
00003220  48 6D DC 56                pea.l      -$23aa(a5)
00003224  48 6E FF F8                pea.l      -$8(a6)
00003228  A8 AA                      .byte      0xa8, 0xaa
0000322A  10 1F                      move.b     (a7)+, d0
0000322C  67 00 00 9C                beq.w      $32ca
00003230  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00003236  66 56                      bne.b      $328e
00003238  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
0000323E  48 6D CF 92                pea.l      -$306e(a5)
00003242  48 78 00 87                pea.l      $87.w
00003246  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
0000324C  A8 A7                      .byte      0xa8, 0xa7
0000324E  3B 7C 00 02 D7 A8          move.w     #$2, -$2858(a5)
00003254  42 2D FF DC                clr.b      -$24(a5)
00003258  59 4F                      subq.w     #$4, a7
0000325A  A9 75                      .byte      0xa9, 0x75
0000325C  20 1F                      move.l     (a7)+, d0
0000325E  2B 40 D7 9A                move.l     d0, -$2866(a5)
00003262  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00003268  2B 6D D9 B6 CF 8A          move.l     -$264a(a5), -$3076(a5)
0000326E  2B 6D D9 BA CF 8E          move.l     -$2646(a5), -$3072(a5)
00003274  2B 6D CF 8A CF 7A          move.l     -$3076(a5), -$3086(a5)
0000327A  2B 6D CF 8E CF 7E          move.l     -$3072(a5), -$3082(a5)
00003280  2B 6D CF 8A CF 82          move.l     -$3076(a5), -$307e(a5)
00003286  2B 6D CF 8E CF 86          move.l     -$3072(a5), -$307a(a5)
0000328C  60 3C                      bra.b      $32ca
0000328E  30 2D D9 BC                move.w     -$2644(a5), d0
00003292  5B 40                      subq.w     #$5, d0
00003294  3B 40 D7 7C                move.w     d0, -$2884(a5)
00003298  70 D8                      moveq      #$d8, d0
0000329A  D0 6D D7 7C                add.w      -$2884(a5), d0
0000329E  3B 40 D7 78                move.w     d0, -$2888(a5)
000032A2  3B 6D D9 B6 D7 76          move.w     -$264a(a5), -$288a(a5)
000032A8  70 28                      moveq      #$28, d0
000032AA  D0 6D D7 76                add.w      -$288a(a5), d0
000032AE  3B 40 D7 7A                move.w     d0, -$2886(a5)
000032B2  4E B9 00 00 05 58          jsr        $558.l
000032B8  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
000032BE  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000032C2  4E B9 00 00 00 98          jsr        $98.l
000032C8  58 4F                      addq.w     #$4, a7
000032CA  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000032D0  42 2D D4 04                clr.b      -$2bfc(a5)
000032D4  42 2D D8 FF                clr.b      -$2701(a5)
000032D8  48 6D D9 B6                pea.l      -$264a(a5)
000032DC  48 6D D9 BE                pea.l      -$2642(a5)
000032E0  48 6E FF F8                pea.l      -$8(a6)
000032E4  A8 AB                      .byte      0xa8, 0xab
000032E6  20 6D D3 FA                movea.l    -$2c06(a5), a0
000032EA  48 68 00 02                pea.l      $2(a0)
000032EE  20 6D D3 FE                movea.l    -$2c02(a5), a0
000032F2  48 68 00 02                pea.l      $2(a0)
000032F6  48 6E FF F8                pea.l      -$8(a6)
000032FA  48 6E FF F8                pea.l      -$8(a6)
000032FE  42 67                      clr.w      -(a7)
00003300  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003304  2F 28 00 18                move.l     $18(a0), -(a7)
00003308  A8 EC                      .byte      0xa8, 0xec
0000330A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000330E  48 68 00 02                pea.l      $2(a0)
00003312  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003316  48 68 00 02                pea.l      $2(a0)
0000331A  48 6E FF F8                pea.l      -$8(a6)
0000331E  48 6E FF F8                pea.l      -$8(a6)
00003322  42 67                      clr.w      -(a7)
00003324  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003328  2F 28 00 18                move.l     $18(a0), -(a7)
0000332C  A8 EC                      .byte      0xa8, 0xec
0000332E  4E 5E                      unlk       a6
00003330  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball3: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 33

HandleMotaroFireball4: ; 0000334A..000034A4
0000334A  4E 56 FF F8                link.w     a6, #$fff8
0000334E  2B 6D D9 02 D9 0A          move.l     -$26fe(a5), -$26f6(a5)
00003354  2B 6D D9 06 D9 0E          move.l     -$26fa(a5), -$26f2(a5)
0000335A  48 6D D9 02                pea.l      -$26fe(a5)
0000335E  30 2D D8 04                move.w     -$27fc(a5), d0
00003362  44 40                      neg.w      d0
00003364  3F 00                      move.w     d0, -(a7)
00003366  42 67                      clr.w      -(a7)
00003368  A8 A8                      .byte      0xa8, 0xa8
0000336A  4A 6D D9 08                tst.w      -$26f8(a5)
0000336E  6D 1E                      blt.b      $338e
00003370  0C 6D 00 52 D9 02          cmpi.w     #$52, -$26fe(a5)
00003376  6F 16                      ble.b      $338e
00003378  55 4F                      subq.w     #$2, a7
0000337A  48 6D D9 02                pea.l      -$26fe(a5)
0000337E  48 6D DC 82                pea.l      -$237e(a5)
00003382  48 6E FF F8                pea.l      -$8(a6)
00003386  A8 AA                      .byte      0xa8, 0xaa
00003388  10 1F                      move.b     (a7)+, d0
0000338A  67 00 01 14                beq.w      $34a0
0000338E  55 4F                      subq.w     #$2, a7
00003390  48 6D D9 02                pea.l      -$26fe(a5)
00003394  48 6D DC 82                pea.l      -$237e(a5)
00003398  48 6E FF F8                pea.l      -$8(a6)
0000339C  A8 AA                      .byte      0xa8, 0xaa
0000339E  10 1F                      move.b     (a7)+, d0
000033A0  67 00 00 9A                beq.w      $343c
000033A4  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
000033AA  66 54                      bne.b      $3400
000033AC  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
000033B2  42 6D D7 A6                clr.w      -$285a(a5)
000033B6  42 2D FF DA                clr.b      -$26(a5)
000033BA  59 4F                      subq.w     #$4, a7
000033BC  A9 75                      .byte      0xa9, 0x75
000033BE  20 1F                      move.l     (a7)+, d0
000033C0  2B 40 D7 9E                move.l     d0, -$2862(a5)
000033C4  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000033CA  48 6D CF C4                pea.l      -$303c(a5)
000033CE  48 78 00 87                pea.l      $87.w
000033D2  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
000033D8  A8 A7                      .byte      0xa8, 0xa7
000033DA  2B 6D D9 02 CF BC          move.l     -$26fe(a5), -$3044(a5)
000033E0  2B 6D D9 06 CF C0          move.l     -$26fa(a5), -$3040(a5)
000033E6  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
000033EC  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
000033F2  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
000033F8  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
000033FE  60 3C                      bra.b      $343c
00003400  30 2D D9 04                move.w     -$26fc(a5), d0
00003404  5A 40                      addq.w     #$5, d0
00003406  3B 40 D7 70                move.w     d0, -$2890(a5)
0000340A  70 28                      moveq      #$28, d0
0000340C  D0 6D D7 70                add.w      -$2890(a5), d0
00003410  3B 40 D7 74                move.w     d0, -$288c(a5)
00003414  3B 6D D9 02 D7 6E          move.w     -$26fe(a5), -$2892(a5)
0000341A  70 28                      moveq      #$28, d0
0000341C  D0 6D D7 6E                add.w      -$2892(a5), d0
00003420  3B 40 D7 72                move.w     d0, -$288e(a5)
00003424  4E B9 00 00 05 50          jsr        $550.l
0000342A  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00003430  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00003434  4E B9 00 00 00 90          jsr        $90.l
0000343A  58 4F                      addq.w     #$4, a7
0000343C  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00003442  42 2D D4 02                clr.b      -$2bfe(a5)
00003446  42 2D D8 FE                clr.b      -$2702(a5)
0000344A  48 6D D9 02                pea.l      -$26fe(a5)
0000344E  48 6D D9 0A                pea.l      -$26f6(a5)
00003452  48 6E FF F8                pea.l      -$8(a6)
00003456  A8 AB                      .byte      0xa8, 0xab
00003458  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000345C  48 68 00 02                pea.l      $2(a0)
00003460  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003464  48 68 00 02                pea.l      $2(a0)
00003468  48 6E FF F8                pea.l      -$8(a6)
0000346C  48 6E FF F8                pea.l      -$8(a6)
00003470  42 67                      clr.w      -(a7)
00003472  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003476  2F 28 00 18                move.l     $18(a0), -(a7)
0000347A  A8 EC                      .byte      0xa8, 0xec
0000347C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003480  48 68 00 02                pea.l      $2(a0)
00003484  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003488  48 68 00 02                pea.l      $2(a0)
0000348C  48 6E FF F8                pea.l      -$8(a6)
00003490  48 6E FF F8                pea.l      -$8(a6)
00003494  42 67                      clr.w      -(a7)
00003496  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000349A  2F 28 00 18                move.l     $18(a0), -(a7)
0000349E  A8 EC                      .byte      0xa8, 0xec
000034A0  4E 5E                      unlk       a6
000034A2  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball4: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 34

HandleMotaroFireball5: ; 000034BC..0000361A
000034BC  4E 56 FF F8                link.w     a6, #$fff8
000034C0  2B 6D D9 26 D9 2E          move.l     -$26da(a5), -$26d2(a5)
000034C6  2B 6D D9 2A D9 32          move.l     -$26d6(a5), -$26ce(a5)
000034CC  48 6D D9 26                pea.l      -$26da(a5)
000034D0  30 2D D8 04                move.w     -$27fc(a5), d0
000034D4  44 40                      neg.w      d0
000034D6  3F 00                      move.w     d0, -(a7)
000034D8  3F 3C FF FE                move.w     #$fffe, -(a7)
000034DC  A8 A8                      .byte      0xa8, 0xa8
000034DE  4A 6D D9 2C                tst.w      -$26d4(a5)
000034E2  6D 1E                      blt.b      $3502
000034E4  0C 6D 00 52 D9 26          cmpi.w     #$52, -$26da(a5)
000034EA  6F 16                      ble.b      $3502
000034EC  55 4F                      subq.w     #$2, a7
000034EE  48 6D D9 26                pea.l      -$26da(a5)
000034F2  48 6D DC 82                pea.l      -$237e(a5)
000034F6  48 6E FF F8                pea.l      -$8(a6)
000034FA  A8 AA                      .byte      0xa8, 0xaa
000034FC  10 1F                      move.b     (a7)+, d0
000034FE  67 00 01 16                beq.w      $3616
00003502  55 4F                      subq.w     #$2, a7
00003504  48 6D D9 26                pea.l      -$26da(a5)
00003508  48 6D DC 82                pea.l      -$237e(a5)
0000350C  48 6E FF F8                pea.l      -$8(a6)
00003510  A8 AA                      .byte      0xa8, 0xaa
00003512  10 1F                      move.b     (a7)+, d0
00003514  67 00 00 9C                beq.w      $35b2
00003518  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
0000351E  66 56                      bne.b      $3576
00003520  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
00003526  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
0000352C  42 2D FF DA                clr.b      -$26(a5)
00003530  59 4F                      subq.w     #$4, a7
00003532  A9 75                      .byte      0xa9, 0x75
00003534  20 1F                      move.l     (a7)+, d0
00003536  2B 40 D7 9E                move.l     d0, -$2862(a5)
0000353A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00003540  48 6D CF C4                pea.l      -$303c(a5)
00003544  48 78 00 87                pea.l      $87.w
00003548  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
0000354E  A8 A7                      .byte      0xa8, 0xa7
00003550  2B 6D D9 26 CF BC          move.l     -$26da(a5), -$3044(a5)
00003556  2B 6D D9 2A CF C0          move.l     -$26d6(a5), -$3040(a5)
0000355C  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
00003562  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
00003568  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
0000356E  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
00003574  60 3C                      bra.b      $35b2
00003576  30 2D D9 28                move.w     -$26d8(a5), d0
0000357A  5A 40                      addq.w     #$5, d0
0000357C  3B 40 D7 70                move.w     d0, -$2890(a5)
00003580  70 28                      moveq      #$28, d0
00003582  D0 6D D7 70                add.w      -$2890(a5), d0
00003586  3B 40 D7 74                move.w     d0, -$288c(a5)
0000358A  3B 6D D9 26 D7 6E          move.w     -$26da(a5), -$2892(a5)
00003590  70 28                      moveq      #$28, d0
00003592  D0 6D D7 6E                add.w      -$2892(a5), d0
00003596  3B 40 D7 72                move.w     d0, -$288e(a5)
0000359A  4E B9 00 00 05 50          jsr        $550.l
000035A0  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
000035A6  2F 2D DE C2                move.l     -$213e(a5), -(a7)
000035AA  4E B9 00 00 00 90          jsr        $90.l
000035B0  58 4F                      addq.w     #$4, a7
000035B2  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000035B8  42 2D D4 02                clr.b      -$2bfe(a5)
000035BC  42 2D D8 FD                clr.b      -$2703(a5)
000035C0  48 6D D9 26                pea.l      -$26da(a5)
000035C4  48 6D D9 2E                pea.l      -$26d2(a5)
000035C8  48 6E FF F8                pea.l      -$8(a6)
000035CC  A8 AB                      .byte      0xa8, 0xab
000035CE  20 6D D3 FA                movea.l    -$2c06(a5), a0
000035D2  48 68 00 02                pea.l      $2(a0)
000035D6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000035DA  48 68 00 02                pea.l      $2(a0)
000035DE  48 6E FF F8                pea.l      -$8(a6)
000035E2  48 6E FF F8                pea.l      -$8(a6)
000035E6  42 67                      clr.w      -(a7)
000035E8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000035EC  2F 28 00 18                move.l     $18(a0), -(a7)
000035F0  A8 EC                      .byte      0xa8, 0xec
000035F2  20 6D D3 FE                movea.l    -$2c02(a5), a0
000035F6  48 68 00 02                pea.l      $2(a0)
000035FA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000035FE  48 68 00 02                pea.l      $2(a0)
00003602  48 6E FF F8                pea.l      -$8(a6)
00003606  48 6E FF F8                pea.l      -$8(a6)
0000360A  42 67                      clr.w      -(a7)
0000360C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003610  2F 28 00 18                move.l     $18(a0), -(a7)
00003614  A8 EC                      .byte      0xa8, 0xec
00003616  4E 5E                      unlk       a6
00003618  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball5: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 35

HandleMotaroFireball6: ; 00003632..00003790
00003632  4E 56 FF F8                link.w     a6, #$fff8
00003636  2B 6D D9 4A D9 52          move.l     -$26b6(a5), -$26ae(a5)
0000363C  2B 6D D9 4E D9 56          move.l     -$26b2(a5), -$26aa(a5)
00003642  48 6D D9 4A                pea.l      -$26b6(a5)
00003646  30 2D D8 04                move.w     -$27fc(a5), d0
0000364A  44 40                      neg.w      d0
0000364C  3F 00                      move.w     d0, -(a7)
0000364E  3F 3C 00 02                move.w     #$2, -(a7)
00003652  A8 A8                      .byte      0xa8, 0xa8
00003654  4A 6D D9 50                tst.w      -$26b0(a5)
00003658  6D 1E                      blt.b      $3678
0000365A  0C 6D 00 52 D9 4A          cmpi.w     #$52, -$26b6(a5)
00003660  6F 16                      ble.b      $3678
00003662  55 4F                      subq.w     #$2, a7
00003664  48 6D D9 4A                pea.l      -$26b6(a5)
00003668  48 6D DC 82                pea.l      -$237e(a5)
0000366C  48 6E FF F8                pea.l      -$8(a6)
00003670  A8 AA                      .byte      0xa8, 0xaa
00003672  10 1F                      move.b     (a7)+, d0
00003674  67 00 01 16                beq.w      $378c
00003678  55 4F                      subq.w     #$2, a7
0000367A  48 6D D9 4A                pea.l      -$26b6(a5)
0000367E  48 6D DC 82                pea.l      -$237e(a5)
00003682  48 6E FF F8                pea.l      -$8(a6)
00003686  A8 AA                      .byte      0xa8, 0xaa
00003688  10 1F                      move.b     (a7)+, d0
0000368A  67 00 00 9C                beq.w      $3728
0000368E  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00003694  66 56                      bne.b      $36ec
00003696  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
0000369C  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
000036A2  42 2D FF DA                clr.b      -$26(a5)
000036A6  59 4F                      subq.w     #$4, a7
000036A8  A9 75                      .byte      0xa9, 0x75
000036AA  20 1F                      move.l     (a7)+, d0
000036AC  2B 40 D7 9E                move.l     d0, -$2862(a5)
000036B0  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000036B6  48 6D CF C4                pea.l      -$303c(a5)
000036BA  48 78 00 87                pea.l      $87.w
000036BE  2F 3C 00 1A 00 A1          move.l     #$1a00a1, -(a7)
000036C4  A8 A7                      .byte      0xa8, 0xa7
000036C6  2B 6D D9 4A CF BC          move.l     -$26b6(a5), -$3044(a5)
000036CC  2B 6D D9 4E CF C0          move.l     -$26b2(a5), -$3040(a5)
000036D2  2B 6D CF BC CF AC          move.l     -$3044(a5), -$3054(a5)
000036D8  2B 6D CF C0 CF B0          move.l     -$3040(a5), -$3050(a5)
000036DE  2B 6D CF BC CF B4          move.l     -$3044(a5), -$304c(a5)
000036E4  2B 6D CF C0 CF B8          move.l     -$3040(a5), -$3048(a5)
000036EA  60 3C                      bra.b      $3728
000036EC  30 2D D9 4C                move.w     -$26b4(a5), d0
000036F0  5A 40                      addq.w     #$5, d0
000036F2  3B 40 D7 70                move.w     d0, -$2890(a5)
000036F6  70 28                      moveq      #$28, d0
000036F8  D0 6D D7 70                add.w      -$2890(a5), d0
000036FC  3B 40 D7 74                move.w     d0, -$288c(a5)
00003700  3B 6D D9 4A D7 6E          move.w     -$26b6(a5), -$2892(a5)
00003706  70 28                      moveq      #$28, d0
00003708  D0 6D D7 6E                add.w      -$2892(a5), d0
0000370C  3B 40 D7 72                move.w     d0, -$288e(a5)
00003710  4E B9 00 00 05 50          jsr        $550.l
00003716  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
0000371C  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00003720  4E B9 00 00 00 90          jsr        $90.l
00003726  58 4F                      addq.w     #$4, a7
00003728  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
0000372E  42 2D D4 02                clr.b      -$2bfe(a5)
00003732  42 2D D8 FC                clr.b      -$2704(a5)
00003736  48 6D D9 4A                pea.l      -$26b6(a5)
0000373A  48 6D D9 52                pea.l      -$26ae(a5)
0000373E  48 6E FF F8                pea.l      -$8(a6)
00003742  A8 AB                      .byte      0xa8, 0xab
00003744  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003748  48 68 00 02                pea.l      $2(a0)
0000374C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003750  48 68 00 02                pea.l      $2(a0)
00003754  48 6E FF F8                pea.l      -$8(a6)
00003758  48 6E FF F8                pea.l      -$8(a6)
0000375C  42 67                      clr.w      -(a7)
0000375E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003762  2F 28 00 18                move.l     $18(a0), -(a7)
00003766  A8 EC                      .byte      0xa8, 0xec
00003768  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000376C  48 68 00 02                pea.l      $2(a0)
00003770  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003774  48 68 00 02                pea.l      $2(a0)
00003778  48 6E FF F8                pea.l      -$8(a6)
0000377C  48 6E FF F8                pea.l      -$8(a6)
00003780  42 67                      clr.w      -(a7)
00003782  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003786  2F 28 00 18                move.l     $18(a0), -(a7)
0000378A  A8 EC                      .byte      0xa8, 0xec
0000378C  4E 5E                      unlk       a6
0000378E  4E 75                      rts

; MacsBug symbol trailer for HandleMotaroFireball6: 95 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 46 69 72 65 62 61 6C 6C 36

MoveKungFire1: ; 000037A8..00003812
000037A8  4E 56 00 00                link.w     a6, #$0
000037AC  30 2D DC 88                move.w     -$2378(a5), d0
000037B0  54 40                      addq.w     #$2, d0
000037B2  3B 40 DA A4                move.w     d0, -$255c(a5)
000037B6  70 3E                      moveq      #$3e, d0
000037B8  D0 6D DA A4                add.w      -$255c(a5), d0
000037BC  3B 40 DA A8                move.w     d0, -$2558(a5)
000037C0  70 10                      moveq      #$10, d0
000037C2  D0 6D DC 82                add.w      -$237e(a5), d0
000037C6  3B 40 DA A2                move.w     d0, -$255e(a5)
000037CA  70 0F                      moveq      #$f, d0
000037CC  D0 6D DA A2                add.w      -$255e(a5), d0
000037D0  3B 40 DA A6                move.w     d0, -$255a(a5)
000037D4  2B 6D DA A2 DA C2          move.l     -$255e(a5), -$253e(a5)
000037DA  2B 6D DA A6 DA C6          move.l     -$255a(a5), -$253a(a5)
000037E0  2B 6D DA A2 DA AA          move.l     -$255e(a5), -$2556(a5)
000037E6  2B 6D DA A6 DA AE          move.l     -$255a(a5), -$2552(a5)
000037EC  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
000037F2  2F 2D DE CE                move.l     -$2132(a5), -(a7)
000037F6  4E B9 00 00 00 90          jsr        $90.l
000037FC  42 2D FF DA                clr.b      -$26(a5)
00003800  A9 75                      .byte      0xa9, 0x75
00003802  20 1F                      move.l     (a7)+, d0
00003804  2B 40 D7 9E                move.l     d0, -$2862(a5)
00003808  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
0000380E  4E 5E                      unlk       a6
00003810  4E 75                      rts

; MacsBug symbol trailer for MoveKungFire1: 8D 4D 6F 76 65 4B 75 6E 67 46 69 72 65 31

MoveKungFire2: ; 00003822..0000388C
00003822  4E 56 00 00                link.w     a6, #$0
00003826  30 2D DC 5C                move.w     -$23a4(a5), d0
0000382A  54 40                      addq.w     #$2, d0
0000382C  3B 40 DA 7C                move.w     d0, -$2584(a5)
00003830  70 C2                      moveq      #$c2, d0
00003832  D0 6D DA 7C                add.w      -$2584(a5), d0
00003836  3B 40 DA 78                move.w     d0, -$2588(a5)
0000383A  70 10                      moveq      #$10, d0
0000383C  D0 6D DC 56                add.w      -$23aa(a5), d0
00003840  3B 40 DA 76                move.w     d0, -$258a(a5)
00003844  70 0F                      moveq      #$f, d0
00003846  D0 6D DA 76                add.w      -$258a(a5), d0
0000384A  3B 40 DA 7A                move.w     d0, -$2586(a5)
0000384E  2B 6D DA 76 DA 96          move.l     -$258a(a5), -$256a(a5)
00003854  2B 6D DA 7A DA 9A          move.l     -$2586(a5), -$2566(a5)
0000385A  2B 6D DA 76 DA 7E          move.l     -$258a(a5), -$2582(a5)
00003860  2B 6D DA 7A DA 82          move.l     -$2586(a5), -$257e(a5)
00003866  2F 2D DE CA                move.l     -$2136(a5), -(a7)
0000386A  4E B9 00 00 00 98          jsr        $98.l
00003870  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00003876  42 2D FF DC                clr.b      -$24(a5)
0000387A  A9 75                      .byte      0xa9, 0x75
0000387C  20 1F                      move.l     (a7)+, d0
0000387E  2B 40 D7 9A                move.l     d0, -$2866(a5)
00003882  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00003888  4E 5E                      unlk       a6
0000388A  4E 75                      rts

; MacsBug symbol trailer for MoveKungFire2: 8D 4D 6F 76 65 4B 75 6E 67 46 69 72 65 32

HandleKungFire1: ; 0000389C..00003A20
0000389C  4E 56 FF F8                link.w     a6, #$fff8
000038A0  2B 6D DA A2 DA AA          move.l     -$255e(a5), -$2556(a5)
000038A6  2B 6D DA A6 DA AE          move.l     -$255a(a5), -$2552(a5)
000038AC  30 2D DA A8                move.w     -$2558(a5), d0
000038B0  90 6D DA A4                sub.w      -$255c(a5), d0
000038B4  0C 40 00 1E                cmpi.w     #$1e, d0
000038B8  6C 0A                      bge.b      $38c4
000038BA  48 6D DA A2                pea.l      -$255e(a5)
000038BE  42 A7                      clr.l      -(a7)
000038C0  A8 A8                      .byte      0xa8, 0xa8
000038C2  60 60                      bra.b      $3924
000038C4  0C 6D 00 01 D7 A8          cmpi.w     #$1, -$2858(a5)
000038CA  66 0C                      bne.b      $38d8
000038CC  48 6D DA A2                pea.l      -$255e(a5)
000038D0  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
000038D4  42 67                      clr.w      -(a7)
000038D6  A8 A8                      .byte      0xa8, 0xa8
000038D8  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
000038DE  67 08                      beq.b      $38e8
000038E0  0C 6D 00 03 D7 A8          cmpi.w     #$3, -$2858(a5)
000038E6  66 3C                      bne.b      $3924
000038E8  0C 6D 01 2C DA A8          cmpi.w     #$12c, -$2558(a5)
000038EE  6C 0E                      bge.b      $38fe
000038F0  48 6D DA A2                pea.l      -$255e(a5)
000038F4  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
000038F8  42 67                      clr.w      -(a7)
000038FA  A8 A8                      .byte      0xa8, 0xa8
000038FC  60 26                      bra.b      $3924
000038FE  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
00003904  66 10                      bne.b      $3916
00003906  48 6D DA A2                pea.l      -$255e(a5)
0000390A  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
0000390E  3F 3C FF FD                move.w     #$fffd, -(a7)
00003912  A8 A8                      .byte      0xa8, 0xa8
00003914  60 0E                      bra.b      $3924
00003916  48 6D DA A2                pea.l      -$255e(a5)
0000391A  3F 2D D8 04                move.w     -$27fc(a5), -(a7)
0000391E  3F 3C 00 03                move.w     #$3, -(a7)
00003922  A8 A8                      .byte      0xa8, 0xa8
00003924  0C 6D 02 04 DA A4          cmpi.w     #$204, -$255c(a5)
0000392A  6E 1E                      bgt.b      $394a
0000392C  0C 6D 00 52 DA A2          cmpi.w     #$52, -$255e(a5)
00003932  6F 16                      ble.b      $394a
00003934  55 4F                      subq.w     #$2, a7
00003936  48 6D DA A2                pea.l      -$255e(a5)
0000393A  48 6D DC 56                pea.l      -$23aa(a5)
0000393E  48 6E FF F8                pea.l      -$8(a6)
00003942  A8 AA                      .byte      0xa8, 0xaa
00003944  10 1F                      move.b     (a7)+, d0
00003946  67 00 00 D4                beq.w      $3a1c
0000394A  55 4F                      subq.w     #$2, a7
0000394C  48 6D DA A2                pea.l      -$255e(a5)
00003950  48 6D DC 56                pea.l      -$23aa(a5)
00003954  48 6E FF F8                pea.l      -$8(a6)
00003958  A8 AA                      .byte      0xa8, 0xaa
0000395A  10 1F                      move.b     (a7)+, d0
0000395C  67 68                      beq.b      $39c6
0000395E  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00003964  66 24                      bne.b      $398a
00003966  1B 7C 00 01 CF A8          move.b     #$1, -$3058(a5)
0000396C  2B 6D DA A2 CF 8A          move.l     -$255e(a5), -$3076(a5)
00003972  2B 6D DA A6 CF 8E          move.l     -$255a(a5), -$3072(a5)
00003978  70 C2                      moveq      #$c2, d0
0000397A  D0 6D CF 90                add.w      -$3070(a5), d0
0000397E  3B 40 CF 8C                move.w     d0, -$3074(a5)
00003982  4E B9 00 00 1E DA          jsr        $1eda.l
00003988  60 3C                      bra.b      $39c6
0000398A  30 2D DA A8                move.w     -$2558(a5), d0
0000398E  5B 40                      subq.w     #$5, d0
00003990  3B 40 D7 7C                move.w     d0, -$2884(a5)
00003994  70 D8                      moveq      #$d8, d0
00003996  D0 6D D7 7C                add.w      -$2884(a5), d0
0000399A  3B 40 D7 78                move.w     d0, -$2888(a5)
0000399E  3B 6D DA A2 D7 76          move.w     -$255e(a5), -$288a(a5)
000039A4  70 28                      moveq      #$28, d0
000039A6  D0 6D D7 76                add.w      -$288a(a5), d0
000039AA  3B 40 D7 7A                move.w     d0, -$2886(a5)
000039AE  4E B9 00 00 05 58          jsr        $558.l
000039B4  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
000039BA  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000039BE  4E B9 00 00 00 98          jsr        $98.l
000039C4  58 4F                      addq.w     #$4, a7
000039C6  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000039CC  42 2D D4 04                clr.b      -$2bfc(a5)
000039D0  42 2D D7 AA                clr.b      -$2856(a5)
000039D4  20 6D D3 FA                movea.l    -$2c06(a5), a0
000039D8  48 68 00 02                pea.l      $2(a0)
000039DC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000039E0  48 68 00 02                pea.l      $2(a0)
000039E4  48 6D DA C2                pea.l      -$253e(a5)
000039E8  48 6D DA C2                pea.l      -$253e(a5)
000039EC  42 67                      clr.w      -(a7)
000039EE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000039F2  2F 28 00 18                move.l     $18(a0), -(a7)
000039F6  A8 EC                      .byte      0xa8, 0xec
000039F8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000039FC  48 68 00 02                pea.l      $2(a0)
00003A00  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003A04  48 68 00 02                pea.l      $2(a0)
00003A08  48 6D DA C2                pea.l      -$253e(a5)
00003A0C  48 6D DA C2                pea.l      -$253e(a5)
00003A10  42 67                      clr.w      -(a7)
00003A12  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003A16  2F 28 00 18                move.l     $18(a0), -(a7)
00003A1A  A8 EC                      .byte      0xa8, 0xec
00003A1C  4E 5E                      unlk       a6
00003A1E  4E 75                      rts

; MacsBug symbol trailer for HandleKungFire1: 8F 48 61 6E 64 6C 65 4B 75 6E 67 46 69 72 65 31

HandleKungFire2: ; 00003A32..00003BAC
00003A32  4E 56 FF F8                link.w     a6, #$fff8
00003A36  2B 6D DA 76 DA 7E          move.l     -$258a(a5), -$2582(a5)
00003A3C  2B 6D DA 7A DA 82          move.l     -$2586(a5), -$257e(a5)
00003A42  0C 6D 00 01 D7 A6          cmpi.w     #$1, -$285a(a5)
00003A48  66 10                      bne.b      $3a5a
00003A4A  48 6D DA 76                pea.l      -$258a(a5)
00003A4E  30 2D D8 04                move.w     -$27fc(a5), d0
00003A52  44 40                      neg.w      d0
00003A54  3F 00                      move.w     d0, -(a7)
00003A56  42 67                      clr.w      -(a7)
00003A58  A8 A8                      .byte      0xa8, 0xa8
00003A5A  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
00003A60  67 08                      beq.b      $3a6a
00003A62  0C 6D 00 03 D7 A6          cmpi.w     #$3, -$285a(a5)
00003A68  66 48                      bne.b      $3ab2
00003A6A  0C 6D 00 D8 DA 78          cmpi.w     #$d8, -$2588(a5)
00003A70  6F 12                      ble.b      $3a84
00003A72  48 6D DA 76                pea.l      -$258a(a5)
00003A76  30 2D D8 04                move.w     -$27fc(a5), d0
00003A7A  44 40                      neg.w      d0
00003A7C  3F 00                      move.w     d0, -(a7)
00003A7E  42 67                      clr.w      -(a7)
00003A80  A8 A8                      .byte      0xa8, 0xa8
00003A82  60 2E                      bra.b      $3ab2
00003A84  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
00003A8A  66 14                      bne.b      $3aa0
00003A8C  48 6D DA 76                pea.l      -$258a(a5)
00003A90  30 2D D8 04                move.w     -$27fc(a5), d0
00003A94  44 40                      neg.w      d0
00003A96  3F 00                      move.w     d0, -(a7)
00003A98  3F 3C FF FD                move.w     #$fffd, -(a7)
00003A9C  A8 A8                      .byte      0xa8, 0xa8
00003A9E  60 12                      bra.b      $3ab2
00003AA0  48 6D DA 76                pea.l      -$258a(a5)
00003AA4  30 2D D8 04                move.w     -$27fc(a5), d0
00003AA8  44 40                      neg.w      d0
00003AAA  3F 00                      move.w     d0, -(a7)
00003AAC  3F 3C 00 03                move.w     #$3, -(a7)
00003AB0  A8 A8                      .byte      0xa8, 0xa8
00003AB2  4A 6D DA 7C                tst.w      -$2584(a5)
00003AB6  6D 1E                      blt.b      $3ad6
00003AB8  0C 6D 00 52 DA 76          cmpi.w     #$52, -$258a(a5)
00003ABE  6F 16                      ble.b      $3ad6
00003AC0  55 4F                      subq.w     #$2, a7
00003AC2  48 6D DA 76                pea.l      -$258a(a5)
00003AC6  48 6D DC 82                pea.l      -$237e(a5)
00003ACA  48 6E FF F8                pea.l      -$8(a6)
00003ACE  A8 AA                      .byte      0xa8, 0xaa
00003AD0  10 1F                      move.b     (a7)+, d0
00003AD2  67 00 00 D4                beq.w      $3ba8
00003AD6  55 4F                      subq.w     #$2, a7
00003AD8  48 6D DA 76                pea.l      -$258a(a5)
00003ADC  48 6D DC 82                pea.l      -$237e(a5)
00003AE0  48 6E FF F8                pea.l      -$8(a6)
00003AE4  A8 AA                      .byte      0xa8, 0xaa
00003AE6  10 1F                      move.b     (a7)+, d0
00003AE8  67 68                      beq.b      $3b52
00003AEA  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00003AF0  66 24                      bne.b      $3b16
00003AF2  1B 7C 00 01 CF E4          move.b     #$1, -$301c(a5)
00003AF8  2B 6D DA 76 CF BC          move.l     -$258a(a5), -$3044(a5)
00003AFE  2B 6D DA 7A CF C0          move.l     -$2586(a5), -$3040(a5)
00003B04  70 3E                      moveq      #$3e, d0
00003B06  D0 6D CF BE                add.w      -$3042(a5), d0
00003B0A  3B 40 CF C2                move.w     d0, -$303e(a5)
00003B0E  4E B9 00 00 1C F8          jsr        $1cf8.l
00003B14  60 3C                      bra.b      $3b52
00003B16  30 2D DA 78                move.w     -$2588(a5), d0
00003B1A  5A 40                      addq.w     #$5, d0
00003B1C  3B 40 D7 70                move.w     d0, -$2890(a5)
00003B20  70 28                      moveq      #$28, d0
00003B22  D0 6D D7 70                add.w      -$2890(a5), d0
00003B26  3B 40 D7 74                move.w     d0, -$288c(a5)
00003B2A  3B 6D DA 76 D7 6E          move.w     -$258a(a5), -$2892(a5)
00003B30  70 28                      moveq      #$28, d0
00003B32  D0 6D D7 6E                add.w      -$2892(a5), d0
00003B36  3B 40 D7 72                move.w     d0, -$288e(a5)
00003B3A  4E B9 00 00 05 50          jsr        $550.l
00003B40  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00003B46  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00003B4A  4E B9 00 00 00 90          jsr        $90.l
00003B50  58 4F                      addq.w     #$4, a7
00003B52  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00003B58  42 2D D4 02                clr.b      -$2bfe(a5)
00003B5C  42 2D D7 A2                clr.b      -$285e(a5)
00003B60  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003B64  48 68 00 02                pea.l      $2(a0)
00003B68  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003B6C  48 68 00 02                pea.l      $2(a0)
00003B70  48 6D DA 96                pea.l      -$256a(a5)
00003B74  48 6D DA 96                pea.l      -$256a(a5)
00003B78  42 67                      clr.w      -(a7)
00003B7A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003B7E  2F 28 00 18                move.l     $18(a0), -(a7)
00003B82  A8 EC                      .byte      0xa8, 0xec
00003B84  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003B88  48 68 00 02                pea.l      $2(a0)
00003B8C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003B90  48 68 00 02                pea.l      $2(a0)
00003B94  48 6D DA 96                pea.l      -$256a(a5)
00003B98  48 6D DA 96                pea.l      -$256a(a5)
00003B9C  42 67                      clr.w      -(a7)
00003B9E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003BA2  2F 28 00 18                move.l     $18(a0), -(a7)
00003BA6  A8 EC                      .byte      0xa8, 0xec
00003BA8  4E 5E                      unlk       a6
00003BAA  4E 75                      rts

; MacsBug symbol trailer for HandleKungFire2: 8F 48 61 6E 64 6C 65 4B 75 6E 67 46 69 72 65 32

HandleShootKey: ; 00003BBE..000084C8
00003BBE  4E 56 00 00                link.w     a6, #$0
00003BC2  0C 2D 00 01 FF DA          cmpi.b     #$1, -$26(a5)
00003BC8  66 00 24 AA                bne.w      $6074
00003BCC  4A 2D D7 DC                tst.b      -$2824(a5)
00003BD0  66 00 24 A2                bne.w      $6074
00003BD4  0C 6D 00 01 FF E0          cmpi.w     #$1, -$20(a5)
00003BDA  66 00 0E 0C                bne.w      $49e8
00003BDE  10 2D D7 5D                move.b     -$28a3(a5), d0
00003BE2  48 80                      ext.w      d0
00003BE4  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00003BE8  66 00 00 E4                bne.w      $3cce
00003BEC  4A 6D D7 B8                tst.w      -$2848(a5)
00003BF0  66 14                      bne.b      $3c06
00003BF2  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00003BF8  59 4F                      subq.w     #$4, a7
00003BFA  A9 75                      .byte      0xa9, 0x75
00003BFC  20 1F                      move.l     (a7)+, d0
00003BFE  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003C02  60 00 00 CA                bra.w      $3cce
00003C06  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00003C0C  66 2C                      bne.b      $3c3a
00003C0E  59 4F                      subq.w     #$4, a7
00003C10  A9 75                      .byte      0xa9, 0x75
00003C12  20 1F                      move.l     (a7)+, d0
00003C14  90 AD D7 B2                sub.l      -$284e(a5), d0
00003C18  72 3C                      moveq      #$3c, d1
00003C1A  B0 81                      cmp.l      d1, d0
00003C1C  64 14                      bcc.b      $3c32
00003C1E  3B 7C 00 0F D7 B8          move.w     #$f, -$2848(a5)
00003C24  59 4F                      subq.w     #$4, a7
00003C26  A9 75                      .byte      0xa9, 0x75
00003C28  20 1F                      move.l     (a7)+, d0
00003C2A  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003C2E  60 00 00 9E                bra.w      $3cce
00003C32  42 6D D7 B8                clr.w      -$2848(a5)
00003C36  60 00 00 96                bra.w      $3cce
00003C3A  0C 6D 00 14 D7 B8          cmpi.w     #$14, -$2848(a5)
00003C40  66 28                      bne.b      $3c6a
00003C42  59 4F                      subq.w     #$4, a7
00003C44  A9 75                      .byte      0xa9, 0x75
00003C46  20 1F                      move.l     (a7)+, d0
00003C48  90 AD D7 B2                sub.l      -$284e(a5), d0
00003C4C  72 3C                      moveq      #$3c, d1
00003C4E  B0 81                      cmp.l      d1, d0
00003C50  64 12                      bcc.b      $3c64
00003C52  3B 7C 00 15 D7 B8          move.w     #$15, -$2848(a5)
00003C58  59 4F                      subq.w     #$4, a7
00003C5A  A9 75                      .byte      0xa9, 0x75
00003C5C  20 1F                      move.l     (a7)+, d0
00003C5E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003C62  60 6A                      bra.b      $3cce
00003C64  42 6D D7 B8                clr.w      -$2848(a5)
00003C68  60 64                      bra.b      $3cce
00003C6A  0C 6D 00 19 D7 B8          cmpi.w     #$19, -$2848(a5)
00003C70  66 28                      bne.b      $3c9a
00003C72  59 4F                      subq.w     #$4, a7
00003C74  A9 75                      .byte      0xa9, 0x75
00003C76  20 1F                      move.l     (a7)+, d0
00003C78  90 AD D7 B2                sub.l      -$284e(a5), d0
00003C7C  72 3C                      moveq      #$3c, d1
00003C7E  B0 81                      cmp.l      d1, d0
00003C80  64 12                      bcc.b      $3c94
00003C82  3B 7C 00 23 D7 B8          move.w     #$23, -$2848(a5)
00003C88  59 4F                      subq.w     #$4, a7
00003C8A  A9 75                      .byte      0xa9, 0x75
00003C8C  20 1F                      move.l     (a7)+, d0
00003C8E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003C92  60 3A                      bra.b      $3cce
00003C94  42 6D D7 B8                clr.w      -$2848(a5)
00003C98  60 34                      bra.b      $3cce
00003C9A  0C 6D 00 23 D7 B8          cmpi.w     #$23, -$2848(a5)
00003CA0  66 28                      bne.b      $3cca
00003CA2  59 4F                      subq.w     #$4, a7
00003CA4  A9 75                      .byte      0xa9, 0x75
00003CA6  20 1F                      move.l     (a7)+, d0
00003CA8  90 AD D7 B2                sub.l      -$284e(a5), d0
00003CAC  72 3C                      moveq      #$3c, d1
00003CAE  B0 81                      cmp.l      d1, d0
00003CB0  64 12                      bcc.b      $3cc4
00003CB2  3B 7C 00 24 D7 B8          move.w     #$24, -$2848(a5)
00003CB8  59 4F                      subq.w     #$4, a7
00003CBA  A9 75                      .byte      0xa9, 0x75
00003CBC  20 1F                      move.l     (a7)+, d0
00003CBE  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003CC2  60 0A                      bra.b      $3cce
00003CC4  42 6D D7 B8                clr.w      -$2848(a5)
00003CC8  60 04                      bra.b      $3cce
00003CCA  42 6D D7 B8                clr.w      -$2848(a5)
00003CCE  10 2D D7 5D                move.b     -$28a3(a5), d0
00003CD2  48 80                      ext.w      d0
00003CD4  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00003CD8  66 00 00 B8                bne.w      $3d92
00003CDC  4A 6D D7 B8                tst.w      -$2848(a5)
00003CE0  66 14                      bne.b      $3cf6
00003CE2  3B 7C 00 19 D7 B8          move.w     #$19, -$2848(a5)
00003CE8  59 4F                      subq.w     #$4, a7
00003CEA  A9 75                      .byte      0xa9, 0x75
00003CEC  20 1F                      move.l     (a7)+, d0
00003CEE  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003CF2  60 00 00 9E                bra.w      $3d92
00003CF6  0C 6D 00 0F D7 B8          cmpi.w     #$f, -$2848(a5)
00003CFC  66 28                      bne.b      $3d26
00003CFE  59 4F                      subq.w     #$4, a7
00003D00  A9 75                      .byte      0xa9, 0x75
00003D02  20 1F                      move.l     (a7)+, d0
00003D04  90 AD D7 B2                sub.l      -$284e(a5), d0
00003D08  72 3C                      moveq      #$3c, d1
00003D0A  B0 81                      cmp.l      d1, d0
00003D0C  64 12                      bcc.b      $3d20
00003D0E  3B 7C 00 3C D7 B8          move.w     #$3c, -$2848(a5)
00003D14  59 4F                      subq.w     #$4, a7
00003D16  A9 75                      .byte      0xa9, 0x75
00003D18  20 1F                      move.l     (a7)+, d0
00003D1A  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003D1E  60 72                      bra.b      $3d92
00003D20  42 6D D7 B8                clr.w      -$2848(a5)
00003D24  60 6C                      bra.b      $3d92
00003D26  0C 6D 00 19 D7 B8          cmpi.w     #$19, -$2848(a5)
00003D2C  66 28                      bne.b      $3d56
00003D2E  59 4F                      subq.w     #$4, a7
00003D30  A9 75                      .byte      0xa9, 0x75
00003D32  20 1F                      move.l     (a7)+, d0
00003D34  90 AD D7 B2                sub.l      -$284e(a5), d0
00003D38  72 3C                      moveq      #$3c, d1
00003D3A  B0 81                      cmp.l      d1, d0
00003D3C  64 12                      bcc.b      $3d50
00003D3E  3B 7C 00 1A D7 B8          move.w     #$1a, -$2848(a5)
00003D44  59 4F                      subq.w     #$4, a7
00003D46  A9 75                      .byte      0xa9, 0x75
00003D48  20 1F                      move.l     (a7)+, d0
00003D4A  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003D4E  60 42                      bra.b      $3d92
00003D50  42 6D D7 B8                clr.w      -$2848(a5)
00003D54  60 3C                      bra.b      $3d92
00003D56  0C 6D 00 1A D7 B8          cmpi.w     #$1a, -$2848(a5)
00003D5C  67 08                      beq.b      $3d66
00003D5E  0C 6D 00 37 D7 B8          cmpi.w     #$37, -$2848(a5)
00003D64  66 28                      bne.b      $3d8e
00003D66  59 4F                      subq.w     #$4, a7
00003D68  A9 75                      .byte      0xa9, 0x75
00003D6A  20 1F                      move.l     (a7)+, d0
00003D6C  90 AD D7 B2                sub.l      -$284e(a5), d0
00003D70  72 3C                      moveq      #$3c, d1
00003D72  B0 81                      cmp.l      d1, d0
00003D74  64 12                      bcc.b      $3d88
00003D76  3B 7C 00 37 D7 B8          move.w     #$37, -$2848(a5)
00003D7C  59 4F                      subq.w     #$4, a7
00003D7E  A9 75                      .byte      0xa9, 0x75
00003D80  20 1F                      move.l     (a7)+, d0
00003D82  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003D86  60 0A                      bra.b      $3d92
00003D88  42 6D D7 B8                clr.w      -$2848(a5)
00003D8C  60 04                      bra.b      $3d92
00003D8E  42 6D D7 B8                clr.w      -$2848(a5)
00003D92  10 2D D7 5D                move.b     -$28a3(a5), d0
00003D96  48 80                      ext.w      d0
00003D98  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00003D9C  66 00 00 CA                bne.w      $3e68
00003DA0  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00003DA6  66 2C                      bne.b      $3dd4
00003DA8  59 4F                      subq.w     #$4, a7
00003DAA  A9 75                      .byte      0xa9, 0x75
00003DAC  20 1F                      move.l     (a7)+, d0
00003DAE  90 AD D7 B2                sub.l      -$284e(a5), d0
00003DB2  72 3C                      moveq      #$3c, d1
00003DB4  B0 81                      cmp.l      d1, d0
00003DB6  64 14                      bcc.b      $3dcc
00003DB8  3B 7C 00 0A D7 B8          move.w     #$a, -$2848(a5)
00003DBE  59 4F                      subq.w     #$4, a7
00003DC0  A9 75                      .byte      0xa9, 0x75
00003DC2  20 1F                      move.l     (a7)+, d0
00003DC4  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003DC8  60 00 00 9E                bra.w      $3e68
00003DCC  42 6D D7 B8                clr.w      -$2848(a5)
00003DD0  60 00 00 96                bra.w      $3e68
00003DD4  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00003DDA  66 28                      bne.b      $3e04
00003DDC  59 4F                      subq.w     #$4, a7
00003DDE  A9 75                      .byte      0xa9, 0x75
00003DE0  20 1F                      move.l     (a7)+, d0
00003DE2  90 AD D7 B2                sub.l      -$284e(a5), d0
00003DE6  72 3C                      moveq      #$3c, d1
00003DE8  B0 81                      cmp.l      d1, d0
00003DEA  64 12                      bcc.b      $3dfe
00003DEC  3B 7C 00 14 D7 B8          move.w     #$14, -$2848(a5)
00003DF2  59 4F                      subq.w     #$4, a7
00003DF4  A9 75                      .byte      0xa9, 0x75
00003DF6  20 1F                      move.l     (a7)+, d0
00003DF8  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003DFC  60 6A                      bra.b      $3e68
00003DFE  42 6D D7 B8                clr.w      -$2848(a5)
00003E02  60 64                      bra.b      $3e68
00003E04  0C 6D 00 0F D7 B8          cmpi.w     #$f, -$2848(a5)
00003E0A  66 28                      bne.b      $3e34
00003E0C  59 4F                      subq.w     #$4, a7
00003E0E  A9 75                      .byte      0xa9, 0x75
00003E10  20 1F                      move.l     (a7)+, d0
00003E12  90 AD D7 B2                sub.l      -$284e(a5), d0
00003E16  72 3C                      moveq      #$3c, d1
00003E18  B0 81                      cmp.l      d1, d0
00003E1A  64 12                      bcc.b      $3e2e
00003E1C  3B 7C 00 32 D7 B8          move.w     #$32, -$2848(a5)
00003E22  59 4F                      subq.w     #$4, a7
00003E24  A9 75                      .byte      0xa9, 0x75
00003E26  20 1F                      move.l     (a7)+, d0
00003E28  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003E2C  60 3A                      bra.b      $3e68
00003E2E  42 6D D7 B8                clr.w      -$2848(a5)
00003E32  60 34                      bra.b      $3e68
00003E34  0C 6D 00 1A D7 B8          cmpi.w     #$1a, -$2848(a5)
00003E3A  66 28                      bne.b      $3e64
00003E3C  59 4F                      subq.w     #$4, a7
00003E3E  A9 75                      .byte      0xa9, 0x75
00003E40  20 1F                      move.l     (a7)+, d0
00003E42  90 AD D7 B2                sub.l      -$284e(a5), d0
00003E46  72 3C                      moveq      #$3c, d1
00003E48  B0 81                      cmp.l      d1, d0
00003E4A  64 12                      bcc.b      $3e5e
00003E4C  3B 7C 00 1B D7 B8          move.w     #$1b, -$2848(a5)
00003E52  59 4F                      subq.w     #$4, a7
00003E54  A9 75                      .byte      0xa9, 0x75
00003E56  20 1F                      move.l     (a7)+, d0
00003E58  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003E5C  60 0A                      bra.b      $3e68
00003E5E  42 6D D7 B8                clr.w      -$2848(a5)
00003E62  60 04                      bra.b      $3e68
00003E64  42 6D D7 B8                clr.w      -$2848(a5)
00003E68  10 2D D7 5D                move.b     -$28a3(a5), d0
00003E6C  48 80                      ext.w      d0
00003E6E  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00003E72  66 00 01 54                bne.w      $3fc8
00003E76  4A 6D D7 B8                tst.w      -$2848(a5)
00003E7A  66 14                      bne.b      $3e90
00003E7C  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00003E82  59 4F                      subq.w     #$4, a7
00003E84  A9 75                      .byte      0xa9, 0x75
00003E86  20 1F                      move.l     (a7)+, d0
00003E88  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003E8C  60 00 01 3A                bra.w      $3fc8
00003E90  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00003E96  66 2C                      bne.b      $3ec4
00003E98  59 4F                      subq.w     #$4, a7
00003E9A  A9 75                      .byte      0xa9, 0x75
00003E9C  20 1F                      move.l     (a7)+, d0
00003E9E  90 AD D7 B2                sub.l      -$284e(a5), d0
00003EA2  72 3C                      moveq      #$3c, d1
00003EA4  B0 81                      cmp.l      d1, d0
00003EA6  64 14                      bcc.b      $3ebc
00003EA8  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00003EAE  59 4F                      subq.w     #$4, a7
00003EB0  A9 75                      .byte      0xa9, 0x75
00003EB2  20 1F                      move.l     (a7)+, d0
00003EB4  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003EB8  60 00 01 0E                bra.w      $3fc8
00003EBC  42 6D D7 B8                clr.w      -$2848(a5)
00003EC0  60 00 01 06                bra.w      $3fc8
00003EC4  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00003ECA  67 08                      beq.b      $3ed4
00003ECC  0C 6D 00 03 D7 B8          cmpi.w     #$3, -$2848(a5)
00003ED2  66 2C                      bne.b      $3f00
00003ED4  59 4F                      subq.w     #$4, a7
00003ED6  A9 75                      .byte      0xa9, 0x75
00003ED8  20 1F                      move.l     (a7)+, d0
00003EDA  90 AD D7 B2                sub.l      -$284e(a5), d0
00003EDE  72 3C                      moveq      #$3c, d1
00003EE0  B0 81                      cmp.l      d1, d0
00003EE2  64 14                      bcc.b      $3ef8
00003EE4  3B 7C 00 03 D7 B8          move.w     #$3, -$2848(a5)
00003EEA  59 4F                      subq.w     #$4, a7
00003EEC  A9 75                      .byte      0xa9, 0x75
00003EEE  20 1F                      move.l     (a7)+, d0
00003EF0  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003EF4  60 00 00 D2                bra.w      $3fc8
00003EF8  42 6D D7 B8                clr.w      -$2848(a5)
00003EFC  60 00 00 CA                bra.w      $3fc8
00003F00  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00003F06  66 2C                      bne.b      $3f34
00003F08  59 4F                      subq.w     #$4, a7
00003F0A  A9 75                      .byte      0xa9, 0x75
00003F0C  20 1F                      move.l     (a7)+, d0
00003F0E  90 AD D7 B2                sub.l      -$284e(a5), d0
00003F12  72 3C                      moveq      #$3c, d1
00003F14  B0 81                      cmp.l      d1, d0
00003F16  64 14                      bcc.b      $3f2c
00003F18  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00003F1E  59 4F                      subq.w     #$4, a7
00003F20  A9 75                      .byte      0xa9, 0x75
00003F22  20 1F                      move.l     (a7)+, d0
00003F24  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003F28  60 00 00 9E                bra.w      $3fc8
00003F2C  42 6D D7 B8                clr.w      -$2848(a5)
00003F30  60 00 00 96                bra.w      $3fc8
00003F34  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00003F3A  66 28                      bne.b      $3f64
00003F3C  59 4F                      subq.w     #$4, a7
00003F3E  A9 75                      .byte      0xa9, 0x75
00003F40  20 1F                      move.l     (a7)+, d0
00003F42  90 AD D7 B2                sub.l      -$284e(a5), d0
00003F46  72 3C                      moveq      #$3c, d1
00003F48  B0 81                      cmp.l      d1, d0
00003F4A  64 12                      bcc.b      $3f5e
00003F4C  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
00003F52  59 4F                      subq.w     #$4, a7
00003F54  A9 75                      .byte      0xa9, 0x75
00003F56  20 1F                      move.l     (a7)+, d0
00003F58  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003F5C  60 6A                      bra.b      $3fc8
00003F5E  42 6D D7 B8                clr.w      -$2848(a5)
00003F62  60 64                      bra.b      $3fc8
00003F64  0C 6D 00 0A D7 B8          cmpi.w     #$a, -$2848(a5)
00003F6A  66 28                      bne.b      $3f94
00003F6C  59 4F                      subq.w     #$4, a7
00003F6E  A9 75                      .byte      0xa9, 0x75
00003F70  20 1F                      move.l     (a7)+, d0
00003F72  90 AD D7 B2                sub.l      -$284e(a5), d0
00003F76  72 3C                      moveq      #$3c, d1
00003F78  B0 81                      cmp.l      d1, d0
00003F7A  64 12                      bcc.b      $3f8e
00003F7C  3B 7C 00 0B D7 B8          move.w     #$b, -$2848(a5)
00003F82  59 4F                      subq.w     #$4, a7
00003F84  A9 75                      .byte      0xa9, 0x75
00003F86  20 1F                      move.l     (a7)+, d0
00003F88  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003F8C  60 3A                      bra.b      $3fc8
00003F8E  42 6D D7 B8                clr.w      -$2848(a5)
00003F92  60 34                      bra.b      $3fc8
00003F94  0C 6D 00 0F D7 B8          cmpi.w     #$f, -$2848(a5)
00003F9A  66 28                      bne.b      $3fc4
00003F9C  59 4F                      subq.w     #$4, a7
00003F9E  A9 75                      .byte      0xa9, 0x75
00003FA0  20 1F                      move.l     (a7)+, d0
00003FA2  90 AD D7 B2                sub.l      -$284e(a5), d0
00003FA6  72 3C                      moveq      #$3c, d1
00003FA8  B0 81                      cmp.l      d1, d0
00003FAA  64 12                      bcc.b      $3fbe
00003FAC  3B 7C 00 10 D7 B8          move.w     #$10, -$2848(a5)
00003FB2  59 4F                      subq.w     #$4, a7
00003FB4  A9 75                      .byte      0xa9, 0x75
00003FB6  20 1F                      move.l     (a7)+, d0
00003FB8  2B 40 D7 B2                move.l     d0, -$284e(a5)
00003FBC  60 0A                      bra.b      $3fc8
00003FBE  42 6D D7 B8                clr.w      -$2848(a5)
00003FC2  60 04                      bra.b      $3fc8
00003FC4  42 6D D7 B8                clr.w      -$2848(a5)
00003FC8  10 2D D7 5D                move.b     -$28a3(a5), d0
00003FCC  48 80                      ext.w      d0
00003FCE  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00003FD2  66 00 03 98                bne.w      $436c
00003FD6  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00003FDC  67 08                      beq.b      $3fe6
00003FDE  0C 6D 00 03 D7 B8          cmpi.w     #$3, -$2848(a5)
00003FE4  66 1E                      bne.b      $4004
00003FE6  59 4F                      subq.w     #$4, a7
00003FE8  A9 75                      .byte      0xa9, 0x75
00003FEA  20 1F                      move.l     (a7)+, d0
00003FEC  90 AD D7 B2                sub.l      -$284e(a5), d0
00003FF0  72 3C                      moveq      #$3c, d1
00003FF2  B0 81                      cmp.l      d1, d0
00003FF4  64 06                      bcc.b      $3ffc
00003FF6  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00003FFC  42 6D D7 B8                clr.w      -$2848(a5)
00004000  60 00 03 6A                bra.w      $436c
00004004  0C 6D 00 0B D7 B8          cmpi.w     #$b, -$2848(a5)
0000400A  66 00 00 A2                bne.w      $40ae
0000400E  59 4F                      subq.w     #$4, a7
00004010  A9 75                      .byte      0xa9, 0x75
00004012  20 1F                      move.l     (a7)+, d0
00004014  90 AD D7 B2                sub.l      -$284e(a5), d0
00004018  72 3C                      moveq      #$3c, d1
0000401A  B0 81                      cmp.l      d1, d0
0000401C  64 00 00 88                bcc.w      $40a6
00004020  3B 7C 00 07 FF E0          move.w     #$7, -$20(a5)
00004026  48 6D D7 FC                pea.l      -$2804(a5)
0000402A  48 6D D3 F6                pea.l      -$2c0a(a5)
0000402E  3F 3C 03 EE                move.w     #$3ee, -(a7)
00004032  4E B9 00 00 7E E0          jsr        $7ee0.l
00004038  48 6D D7 FC                pea.l      -$2804(a5)
0000403C  48 6D D3 EA                pea.l      -$2c16(a5)
00004040  3F 3C 05 E2                move.w     #$5e2, -(a7)
00004044  4E B9 00 00 7E E0          jsr        $7ee0.l
0000404A  48 6D DC 42                pea.l      -$23be(a5)
0000404E  48 78 00 10                pea.l      $10.w
00004052  2F 3C 00 07 00 3C          move.l     #$7003c, -(a7)
00004058  A8 A7                      .byte      0xa8, 0xa7
0000405A  3B 7C 00 2C D8 0E          move.w     #$2c, -$27f2(a5)
00004060  3B 7C 00 07 D8 0C          move.w     #$7, -$27f4(a5)
00004066  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000406A  4E B9 00 00 00 90          jsr        $90.l
00004070  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004076  3F 3C 0B BE                move.w     #$bbe, -(a7)
0000407A  A8 1F                      .byte      0xa8, 0x1f
0000407C  20 5F                      movea.l    (a7)+, a0
0000407E  2B 48 DE CE                move.l     a0, -$2132(a5)
00004082  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004088  3F 3C 0B C4                move.w     #$bc4, -(a7)
0000408C  A8 1F                      .byte      0xa8, 0x1f
0000408E  20 5F                      movea.l    (a7)+, a0
00004090  2B 48 DE D2                move.l     a0, -$212e(a5)
00004094  A9 75                      .byte      0xa9, 0x75
00004096  20 1F                      move.l     (a7)+, d0
00004098  2B 40 D7 C2                move.l     d0, -$283e(a5)
0000409C  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000040A2  4F EF 00 0C                lea.l      $c(a7), a7
000040A6  42 6D D7 B8                clr.w      -$2848(a5)
000040AA  60 00 02 C0                bra.w      $436c
000040AE  0C 6D 00 10 D7 B8          cmpi.w     #$10, -$2848(a5)
000040B4  66 00 00 8E                bne.w      $4144
000040B8  59 4F                      subq.w     #$4, a7
000040BA  A9 75                      .byte      0xa9, 0x75
000040BC  20 1F                      move.l     (a7)+, d0
000040BE  90 AD D7 B2                sub.l      -$284e(a5), d0
000040C2  72 3C                      moveq      #$3c, d1
000040C4  B0 81                      cmp.l      d1, d0
000040C6  64 74                      bcc.b      $413c
000040C8  3B 7C 00 03 FF E0          move.w     #$3, -$20(a5)
000040CE  48 6D D7 FC                pea.l      -$2804(a5)
000040D2  48 6D D3 F6                pea.l      -$2c0a(a5)
000040D6  3F 3C 03 EA                move.w     #$3ea, -(a7)
000040DA  4E B9 00 00 7E E0          jsr        $7ee0.l
000040E0  48 6D D7 FC                pea.l      -$2804(a5)
000040E4  48 6D D3 EA                pea.l      -$2c16(a5)
000040E8  3F 3C 05 DE                move.w     #$5de, -(a7)
000040EC  4E B9 00 00 7E E0          jsr        $7ee0.l
000040F2  48 6D DC 42                pea.l      -$23be(a5)
000040F6  48 78 00 10                pea.l      $10.w
000040FA  2F 3C 00 0A 00 48          move.l     #$a0048, -(a7)
00004100  A8 A7                      .byte      0xa8, 0xa7
00004102  3B 7C 00 38 D8 0E          move.w     #$38, -$27f2(a5)
00004108  3B 7C 00 0A D8 0C          move.w     #$a, -$27f4(a5)
0000410E  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004112  4E B9 00 00 00 90          jsr        $90.l
00004118  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000411E  3F 3C 0B BA                move.w     #$bba, -(a7)
00004122  A8 1F                      .byte      0xa8, 0x1f
00004124  20 5F                      movea.l    (a7)+, a0
00004126  2B 48 DE CE                move.l     a0, -$2132(a5)
0000412A  A9 75                      .byte      0xa9, 0x75
0000412C  20 1F                      move.l     (a7)+, d0
0000412E  2B 40 D7 C2                move.l     d0, -$283e(a5)
00004132  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
00004138  4F EF 00 10                lea.l      $10(a7), a7
0000413C  42 6D D7 B8                clr.w      -$2848(a5)
00004140  60 00 02 2A                bra.w      $436c
00004144  0C 6D 00 15 D7 B8          cmpi.w     #$15, -$2848(a5)
0000414A  66 00 00 A2                bne.w      $41ee
0000414E  59 4F                      subq.w     #$4, a7
00004150  A9 75                      .byte      0xa9, 0x75
00004152  20 1F                      move.l     (a7)+, d0
00004154  90 AD D7 B2                sub.l      -$284e(a5), d0
00004158  72 3C                      moveq      #$3c, d1
0000415A  B0 81                      cmp.l      d1, d0
0000415C  64 00 00 88                bcc.w      $41e6
00004160  3B 7C 00 04 FF E0          move.w     #$4, -$20(a5)
00004166  48 6D D7 FC                pea.l      -$2804(a5)
0000416A  48 6D D3 F6                pea.l      -$2c0a(a5)
0000416E  3F 3C 03 EB                move.w     #$3eb, -(a7)
00004172  4E B9 00 00 7E E0          jsr        $7ee0.l
00004178  48 6D D7 FC                pea.l      -$2804(a5)
0000417C  48 6D D3 EA                pea.l      -$2c16(a5)
00004180  3F 3C 05 DF                move.w     #$5df, -(a7)
00004184  4E B9 00 00 7E E0          jsr        $7ee0.l
0000418A  48 6D DC 42                pea.l      -$23be(a5)
0000418E  48 78 00 10                pea.l      $10.w
00004192  2F 3C 00 0B 00 40          move.l     #$b0040, -(a7)
00004198  A8 A7                      .byte      0xa8, 0xa7
0000419A  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
000041A0  3B 7C 00 0B D8 0C          move.w     #$b, -$27f4(a5)
000041A6  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000041AA  4E B9 00 00 00 90          jsr        $90.l
000041B0  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000041B6  3F 3C 0B BB                move.w     #$bbb, -(a7)
000041BA  A8 1F                      .byte      0xa8, 0x1f
000041BC  20 5F                      movea.l    (a7)+, a0
000041BE  2B 48 DE CE                move.l     a0, -$2132(a5)
000041C2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000041C8  3F 3C 0D AD                move.w     #$dad, -(a7)
000041CC  A8 1F                      .byte      0xa8, 0x1f
000041CE  20 5F                      movea.l    (a7)+, a0
000041D0  2B 48 DE D2                move.l     a0, -$212e(a5)
000041D4  A9 75                      .byte      0xa9, 0x75
000041D6  20 1F                      move.l     (a7)+, d0
000041D8  2B 40 D7 C2                move.l     d0, -$283e(a5)
000041DC  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000041E2  4F EF 00 0C                lea.l      $c(a7), a7
000041E6  42 6D D7 B8                clr.w      -$2848(a5)
000041EA  60 00 01 80                bra.w      $436c
000041EE  0C 6D 00 1E D7 B8          cmpi.w     #$1e, -$2848(a5)
000041F4  67 08                      beq.b      $41fe
000041F6  0C 6D 00 1F D7 B8          cmpi.w     #$1f, -$2848(a5)
000041FC  66 2C                      bne.b      $422a
000041FE  59 4F                      subq.w     #$4, a7
00004200  A9 75                      .byte      0xa9, 0x75
00004202  20 1F                      move.l     (a7)+, d0
00004204  90 AD D7 B2                sub.l      -$284e(a5), d0
00004208  72 3C                      moveq      #$3c, d1
0000420A  B0 81                      cmp.l      d1, d0
0000420C  64 14                      bcc.b      $4222
0000420E  3B 7C 00 28 D7 B8          move.w     #$28, -$2848(a5)
00004214  59 4F                      subq.w     #$4, a7
00004216  A9 75                      .byte      0xa9, 0x75
00004218  20 1F                      move.l     (a7)+, d0
0000421A  2B 40 D7 B2                move.l     d0, -$284e(a5)
0000421E  60 00 01 4C                bra.w      $436c
00004222  42 6D D7 B8                clr.w      -$2848(a5)
00004226  60 00 01 44                bra.w      $436c
0000422A  0C 6D 00 32 D7 B8          cmpi.w     #$32, -$2848(a5)
00004230  66 00 00 98                bne.w      $42ca
00004234  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000423A  66 00 00 8E                bne.w      $42ca
0000423E  59 4F                      subq.w     #$4, a7
00004240  A9 75                      .byte      0xa9, 0x75
00004242  20 1F                      move.l     (a7)+, d0
00004244  90 AD D7 B2                sub.l      -$284e(a5), d0
00004248  72 3C                      moveq      #$3c, d1
0000424A  B0 81                      cmp.l      d1, d0
0000424C  64 74                      bcc.b      $42c2
0000424E  3B 7C 00 0A FF E0          move.w     #$a, -$20(a5)
00004254  48 6D D7 FC                pea.l      -$2804(a5)
00004258  48 6D D3 F6                pea.l      -$2c0a(a5)
0000425C  3F 3C 03 F1                move.w     #$3f1, -(a7)
00004260  4E B9 00 00 7E E0          jsr        $7ee0.l
00004266  48 6D D7 FC                pea.l      -$2804(a5)
0000426A  48 6D D3 EA                pea.l      -$2c16(a5)
0000426E  3F 3C 05 E5                move.w     #$5e5, -(a7)
00004272  4E B9 00 00 7E E0          jsr        $7ee0.l
00004278  48 6D DC 42                pea.l      -$23be(a5)
0000427C  48 78 00 10                pea.l      $10.w
00004280  2F 3C 00 2D 00 3A          move.l     #$2d003a, -(a7)
00004286  A8 A7                      .byte      0xa8, 0xa7
00004288  3B 7C 00 2A D8 0E          move.w     #$2a, -$27f2(a5)
0000428E  3B 7C 00 2D D8 0C          move.w     #$2d, -$27f4(a5)
00004294  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004298  4E B9 00 00 00 90          jsr        $90.l
0000429E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000042A4  3F 3C 0B C0                move.w     #$bc0, -(a7)
000042A8  A8 1F                      .byte      0xa8, 0x1f
000042AA  20 5F                      movea.l    (a7)+, a0
000042AC  2B 48 DE CE                move.l     a0, -$2132(a5)
000042B0  A9 75                      .byte      0xa9, 0x75
000042B2  20 1F                      move.l     (a7)+, d0
000042B4  2B 40 D7 C2                move.l     d0, -$283e(a5)
000042B8  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000042BE  4F EF 00 10                lea.l      $10(a7), a7
000042C2  42 6D D7 B8                clr.w      -$2848(a5)
000042C6  60 00 00 A4                bra.w      $436c
000042CA  0C 6D 00 37 D7 B8          cmpi.w     #$37, -$2848(a5)
000042D0  66 00 00 96                bne.w      $4368
000042D4  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
000042DA  66 00 00 8C                bne.w      $4368
000042DE  59 4F                      subq.w     #$4, a7
000042E0  A9 75                      .byte      0xa9, 0x75
000042E2  20 1F                      move.l     (a7)+, d0
000042E4  90 AD D7 B2                sub.l      -$284e(a5), d0
000042E8  72 3C                      moveq      #$3c, d1
000042EA  B0 81                      cmp.l      d1, d0
000042EC  64 74                      bcc.b      $4362
000042EE  3B 7C 00 0C FF E0          move.w     #$c, -$20(a5)
000042F4  48 6D D7 FC                pea.l      -$2804(a5)
000042F8  48 6D D3 F6                pea.l      -$2c0a(a5)
000042FC  3F 3C 03 F3                move.w     #$3f3, -(a7)
00004300  4E B9 00 00 7E E0          jsr        $7ee0.l
00004306  48 6D D7 FC                pea.l      -$2804(a5)
0000430A  48 6D D3 EA                pea.l      -$2c16(a5)
0000430E  3F 3C 05 E7                move.w     #$5e7, -(a7)
00004312  4E B9 00 00 7E E0          jsr        $7ee0.l
00004318  48 6D DC 42                pea.l      -$23be(a5)
0000431C  48 78 00 10                pea.l      $10.w
00004320  2F 3C 00 0C 00 1C          move.l     #$c001c, -(a7)
00004326  A8 A7                      .byte      0xa8, 0xa7
00004328  3B 7C 00 0C D8 0E          move.w     #$c, -$27f2(a5)
0000432E  3B 7C 00 0C D8 0C          move.w     #$c, -$27f4(a5)
00004334  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004338  4E B9 00 00 00 90          jsr        $90.l
0000433E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004344  3F 3C 13 8D                move.w     #$138d, -(a7)
00004348  A8 1F                      .byte      0xa8, 0x1f
0000434A  20 5F                      movea.l    (a7)+, a0
0000434C  2B 48 DE CE                move.l     a0, -$2132(a5)
00004350  A9 75                      .byte      0xa9, 0x75
00004352  20 1F                      move.l     (a7)+, d0
00004354  2B 40 D7 C2                move.l     d0, -$283e(a5)
00004358  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
0000435E  4F EF 00 10                lea.l      $10(a7), a7
00004362  42 6D D7 B8                clr.w      -$2848(a5)
00004366  60 04                      bra.b      $436c
00004368  42 6D D7 B8                clr.w      -$2848(a5)
0000436C  10 2D D7 5D                move.b     -$28a3(a5), d0
00004370  48 80                      ext.w      d0
00004372  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00004376  66 00 16 E6                bne.w      $5a5e
0000437A  4A 6D D7 B8                tst.w      -$2848(a5)
0000437E  66 14                      bne.b      $4394
00004380  3B 7C 00 1E D7 B8          move.w     #$1e, -$2848(a5)
00004386  59 4F                      subq.w     #$4, a7
00004388  A9 75                      .byte      0xa9, 0x75
0000438A  20 1F                      move.l     (a7)+, d0
0000438C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004390  60 00 16 CC                bra.w      $5a5e
00004394  0C 6D 00 03 D7 B8          cmpi.w     #$3, -$2848(a5)
0000439A  66 00 00 98                bne.w      $4434
0000439E  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
000043A4  66 00 00 8E                bne.w      $4434
000043A8  59 4F                      subq.w     #$4, a7
000043AA  A9 75                      .byte      0xa9, 0x75
000043AC  20 1F                      move.l     (a7)+, d0
000043AE  90 AD D7 B2                sub.l      -$284e(a5), d0
000043B2  72 3C                      moveq      #$3c, d1
000043B4  B0 81                      cmp.l      d1, d0
000043B6  64 74                      bcc.b      $442c
000043B8  3B 7C 00 10 FF E0          move.w     #$10, -$20(a5)
000043BE  48 6D D7 FC                pea.l      -$2804(a5)
000043C2  48 6D D3 F6                pea.l      -$2c0a(a5)
000043C6  3F 3C 03 F7                move.w     #$3f7, -(a7)
000043CA  4E B9 00 00 7E E0          jsr        $7ee0.l
000043D0  48 6D D7 FC                pea.l      -$2804(a5)
000043D4  48 6D D3 EA                pea.l      -$2c16(a5)
000043D8  3F 3C 05 EB                move.w     #$5eb, -(a7)
000043DC  4E B9 00 00 7E E0          jsr        $7ee0.l
000043E2  48 6D DC 42                pea.l      -$23be(a5)
000043E6  48 78 00 10                pea.l      $10.w
000043EA  2F 3C 00 0C 00 37          move.l     #$c0037, -(a7)
000043F0  A8 A7                      .byte      0xa8, 0xa7
000043F2  3B 7C 00 27 D8 0E          move.w     #$27, -$27f2(a5)
000043F8  3B 7C 00 0C D8 0C          move.w     #$c, -$27f4(a5)
000043FE  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004402  4E B9 00 00 00 90          jsr        $90.l
00004408  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000440E  3F 3C 0B B9                move.w     #$bb9, -(a7)
00004412  A8 1F                      .byte      0xa8, 0x1f
00004414  20 5F                      movea.l    (a7)+, a0
00004416  2B 48 DE CE                move.l     a0, -$2132(a5)
0000441A  A9 75                      .byte      0xa9, 0x75
0000441C  20 1F                      move.l     (a7)+, d0
0000441E  2B 40 D7 C2                move.l     d0, -$283e(a5)
00004422  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
00004428  4F EF 00 10                lea.l      $10(a7), a7
0000442C  42 6D D7 B8                clr.w      -$2848(a5)
00004430  60 00 16 2C                bra.w      $5a5e
00004434  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
0000443A  66 2A                      bne.b      $4466
0000443C  59 4F                      subq.w     #$4, a7
0000443E  A9 75                      .byte      0xa9, 0x75
00004440  20 1F                      move.l     (a7)+, d0
00004442  90 AD D7 B2                sub.l      -$284e(a5), d0
00004446  72 3C                      moveq      #$3c, d1
00004448  B0 81                      cmp.l      d1, d0
0000444A  64 12                      bcc.b      $445e
0000444C  4E B9 00 00 84 DA          jsr        $84da.l
00004452  1B 7C 00 01 D7 5A          move.b     #$1, -$28a6(a5)
00004458  1B 7C 00 01 D7 58          move.b     #$1, -$28a8(a5)
0000445E  42 6D D7 B8                clr.w      -$2848(a5)
00004462  60 00 15 FA                bra.w      $5a5e
00004466  0C 6D 00 0B D7 B8          cmpi.w     #$b, -$2848(a5)
0000446C  66 00 00 8E                bne.w      $44fc
00004470  59 4F                      subq.w     #$4, a7
00004472  A9 75                      .byte      0xa9, 0x75
00004474  20 1F                      move.l     (a7)+, d0
00004476  90 AD D7 B2                sub.l      -$284e(a5), d0
0000447A  72 3C                      moveq      #$3c, d1
0000447C  B0 81                      cmp.l      d1, d0
0000447E  64 74                      bcc.b      $44f4
00004480  3B 7C 00 02 FF E0          move.w     #$2, -$20(a5)
00004486  48 6D D7 FC                pea.l      -$2804(a5)
0000448A  48 6D D3 F6                pea.l      -$2c0a(a5)
0000448E  3F 3C 03 E9                move.w     #$3e9, -(a7)
00004492  4E B9 00 00 7E E0          jsr        $7ee0.l
00004498  48 6D D7 FC                pea.l      -$2804(a5)
0000449C  48 6D D3 EA                pea.l      -$2c16(a5)
000044A0  3F 3C 05 DD                move.w     #$5dd, -(a7)
000044A4  4E B9 00 00 7E E0          jsr        $7ee0.l
000044AA  48 6D DC 42                pea.l      -$23be(a5)
000044AE  48 78 00 10                pea.l      $10.w
000044B2  2F 3C 00 14 00 40          move.l     #$140040, -(a7)
000044B8  A8 A7                      .byte      0xa8, 0xa7
000044BA  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
000044C0  3B 7C 00 14 D8 0C          move.w     #$14, -$27f4(a5)
000044C6  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000044CA  4E B9 00 00 00 90          jsr        $90.l
000044D0  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000044D6  3F 3C 0B B9                move.w     #$bb9, -(a7)
000044DA  A8 1F                      .byte      0xa8, 0x1f
000044DC  20 5F                      movea.l    (a7)+, a0
000044DE  2B 48 DE CE                move.l     a0, -$2132(a5)
000044E2  A9 75                      .byte      0xa9, 0x75
000044E4  20 1F                      move.l     (a7)+, d0
000044E6  2B 40 D7 C2                move.l     d0, -$283e(a5)
000044EA  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000044F0  4F EF 00 10                lea.l      $10(a7), a7
000044F4  42 6D D7 B8                clr.w      -$2848(a5)
000044F8  60 00 15 64                bra.w      $5a5e
000044FC  0C 6D 00 1B D7 B8          cmpi.w     #$1b, -$2848(a5)
00004502  66 00 00 AC                bne.w      $45b0
00004506  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000450C  66 00 00 A2                bne.w      $45b0
00004510  59 4F                      subq.w     #$4, a7
00004512  A9 75                      .byte      0xa9, 0x75
00004514  20 1F                      move.l     (a7)+, d0
00004516  90 AD D7 B2                sub.l      -$284e(a5), d0
0000451A  72 3C                      moveq      #$3c, d1
0000451C  B0 81                      cmp.l      d1, d0
0000451E  64 00 00 88                bcc.w      $45a8
00004522  3B 7C 00 05 FF E0          move.w     #$5, -$20(a5)
00004528  48 6D D7 FC                pea.l      -$2804(a5)
0000452C  48 6D D3 F6                pea.l      -$2c0a(a5)
00004530  3F 3C 03 EC                move.w     #$3ec, -(a7)
00004534  4E B9 00 00 7E E0          jsr        $7ee0.l
0000453A  48 6D D7 FC                pea.l      -$2804(a5)
0000453E  48 6D D3 EA                pea.l      -$2c16(a5)
00004542  3F 3C 05 E0                move.w     #$5e0, -(a7)
00004546  4E B9 00 00 7E E0          jsr        $7ee0.l
0000454C  48 6D DC 42                pea.l      -$23be(a5)
00004550  48 78 00 10                pea.l      $10.w
00004554  2F 3C 00 0B 00 45          move.l     #$b0045, -(a7)
0000455A  A8 A7                      .byte      0xa8, 0xa7
0000455C  3B 7C 00 35 D8 0E          move.w     #$35, -$27f2(a5)
00004562  3B 7C 00 0B D8 0C          move.w     #$b, -$27f4(a5)
00004568  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000456C  4E B9 00 00 00 90          jsr        $90.l
00004572  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004578  3F 3C 0D AC                move.w     #$dac, -(a7)
0000457C  A8 1F                      .byte      0xa8, 0x1f
0000457E  20 5F                      movea.l    (a7)+, a0
00004580  2B 48 DE CE                move.l     a0, -$2132(a5)
00004584  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000458A  3F 3C 0B BC                move.w     #$bbc, -(a7)
0000458E  A8 1F                      .byte      0xa8, 0x1f
00004590  20 5F                      movea.l    (a7)+, a0
00004592  2B 48 DE D2                move.l     a0, -$212e(a5)
00004596  A9 75                      .byte      0xa9, 0x75
00004598  20 1F                      move.l     (a7)+, d0
0000459A  2B 40 D7 C2                move.l     d0, -$283e(a5)
0000459E  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000045A4  4F EF 00 0C                lea.l      $c(a7), a7
000045A8  42 6D D7 B8                clr.w      -$2848(a5)
000045AC  60 00 14 B0                bra.w      $5a5e
000045B0  0C 6D 00 1E D7 B8          cmpi.w     #$1e, -$2848(a5)
000045B6  66 2C                      bne.b      $45e4
000045B8  59 4F                      subq.w     #$4, a7
000045BA  A9 75                      .byte      0xa9, 0x75
000045BC  20 1F                      move.l     (a7)+, d0
000045BE  90 AD D7 B2                sub.l      -$284e(a5), d0
000045C2  72 3C                      moveq      #$3c, d1
000045C4  B0 81                      cmp.l      d1, d0
000045C6  64 14                      bcc.b      $45dc
000045C8  3B 7C 00 1F D7 B8          move.w     #$1f, -$2848(a5)
000045CE  59 4F                      subq.w     #$4, a7
000045D0  A9 75                      .byte      0xa9, 0x75
000045D2  20 1F                      move.l     (a7)+, d0
000045D4  2B 40 D7 B2                move.l     d0, -$284e(a5)
000045D8  60 00 14 84                bra.w      $5a5e
000045DC  42 6D D7 B8                clr.w      -$2848(a5)
000045E0  60 00 14 7C                bra.w      $5a5e
000045E4  0C 6D 00 1F D7 B8          cmpi.w     #$1f, -$2848(a5)
000045EA  66 00 00 A6                bne.w      $4692
000045EE  59 4F                      subq.w     #$4, a7
000045F0  A9 75                      .byte      0xa9, 0x75
000045F2  20 1F                      move.l     (a7)+, d0
000045F4  90 AD D7 B2                sub.l      -$284e(a5), d0
000045F8  72 3C                      moveq      #$3c, d1
000045FA  B0 81                      cmp.l      d1, d0
000045FC  64 00 00 8C                bcc.w      $468a
00004600  3B 7C 00 06 FF E0          move.w     #$6, -$20(a5)
00004606  48 6D D7 FC                pea.l      -$2804(a5)
0000460A  48 6D D3 F6                pea.l      -$2c0a(a5)
0000460E  3F 3C 03 ED                move.w     #$3ed, -(a7)
00004612  4E B9 00 00 7E E0          jsr        $7ee0.l
00004618  48 6D D7 FC                pea.l      -$2804(a5)
0000461C  48 6D D3 EA                pea.l      -$2c16(a5)
00004620  3F 3C 05 E1                move.w     #$5e1, -(a7)
00004624  4E B9 00 00 7E E0          jsr        $7ee0.l
0000462A  48 6D DC 42                pea.l      -$23be(a5)
0000462E  48 78 00 A7                pea.l      $a7.w
00004632  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
00004638  A8 A7                      .byte      0xa8, 0xa7
0000463A  3B 7C 00 21 D8 0E          move.w     #$21, -$27f2(a5)
00004640  3B 7C 00 53 D8 0C          move.w     #$53, -$27f4(a5)
00004646  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000464A  4E B9 00 00 00 90          jsr        $90.l
00004650  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004656  3F 3C 0B BD                move.w     #$bbd, -(a7)
0000465A  A8 1F                      .byte      0xa8, 0x1f
0000465C  20 5F                      movea.l    (a7)+, a0
0000465E  2B 48 DE CE                move.l     a0, -$2132(a5)
00004662  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004668  3F 3C 13 8D                move.w     #$138d, -(a7)
0000466C  A8 1F                      .byte      0xa8, 0x1f
0000466E  20 5F                      movea.l    (a7)+, a0
00004670  2B 48 DE D2                move.l     a0, -$212e(a5)
00004674  A9 75                      .byte      0xa9, 0x75
00004676  20 1F                      move.l     (a7)+, d0
00004678  2B 40 D7 C2                move.l     d0, -$283e(a5)
0000467C  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
00004682  4F EF 00 0C                lea.l      $c(a7), a7
00004686  60 00 13 D6                bra.w      $5a5e
0000468A  42 6D D7 B8                clr.w      -$2848(a5)
0000468E  60 00 13 CE                bra.w      $5a5e
00004692  0C 6D 00 24 D7 B8          cmpi.w     #$24, -$2848(a5)
00004698  66 00 00 94                bne.w      $472e
0000469C  59 4F                      subq.w     #$4, a7
0000469E  A9 75                      .byte      0xa9, 0x75
000046A0  20 1F                      move.l     (a7)+, d0
000046A2  90 AD D7 B2                sub.l      -$284e(a5), d0
000046A6  72 3C                      moveq      #$3c, d1
000046A8  B0 81                      cmp.l      d1, d0
000046AA  64 7A                      bcc.b      $4726
000046AC  3B 7C 00 08 FF E0          move.w     #$8, -$20(a5)
000046B2  3B 7C 00 08 FF E0          move.w     #$8, -$20(a5)
000046B8  48 6D D7 FC                pea.l      -$2804(a5)
000046BC  48 6D D3 F6                pea.l      -$2c0a(a5)
000046C0  3F 3C 03 EF                move.w     #$3ef, -(a7)
000046C4  4E B9 00 00 7E E0          jsr        $7ee0.l
000046CA  48 6D D7 FC                pea.l      -$2804(a5)
000046CE  48 6D D3 EA                pea.l      -$2c16(a5)
000046D2  3F 3C 05 E3                move.w     #$5e3, -(a7)
000046D6  4E B9 00 00 7E E0          jsr        $7ee0.l
000046DC  48 6D DC 42                pea.l      -$23be(a5)
000046E0  48 78 00 10                pea.l      $10.w
000046E4  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
000046EA  A8 A7                      .byte      0xa8, 0xa7
000046EC  3B 7C 00 3E D8 0E          move.w     #$3e, -$27f2(a5)
000046F2  3B 7C 00 0F D8 0C          move.w     #$f, -$27f4(a5)
000046F8  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000046FC  4E B9 00 00 00 90          jsr        $90.l
00004702  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004708  3F 3C 0B BF                move.w     #$bbf, -(a7)
0000470C  A8 1F                      .byte      0xa8, 0x1f
0000470E  20 5F                      movea.l    (a7)+, a0
00004710  2B 48 DE CE                move.l     a0, -$2132(a5)
00004714  A9 75                      .byte      0xa9, 0x75
00004716  20 1F                      move.l     (a7)+, d0
00004718  2B 40 D7 C2                move.l     d0, -$283e(a5)
0000471C  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
00004722  4F EF 00 10                lea.l      $10(a7), a7
00004726  42 6D D7 B8                clr.w      -$2848(a5)
0000472A  60 00 13 32                bra.w      $5a5e
0000472E  0C 6D 00 28 D7 B8          cmpi.w     #$28, -$2848(a5)
00004734  66 00 00 A2                bne.w      $47d8
00004738  59 4F                      subq.w     #$4, a7
0000473A  A9 75                      .byte      0xa9, 0x75
0000473C  20 1F                      move.l     (a7)+, d0
0000473E  90 AD D7 B2                sub.l      -$284e(a5), d0
00004742  72 3C                      moveq      #$3c, d1
00004744  B0 81                      cmp.l      d1, d0
00004746  64 00 00 88                bcc.w      $47d0
0000474A  3B 7C 00 09 FF E0          move.w     #$9, -$20(a5)
00004750  48 6D D7 FC                pea.l      -$2804(a5)
00004754  48 6D D3 F6                pea.l      -$2c0a(a5)
00004758  3F 3C 03 F0                move.w     #$3f0, -(a7)
0000475C  4E B9 00 00 7E E0          jsr        $7ee0.l
00004762  48 6D D7 FC                pea.l      -$2804(a5)
00004766  48 6D D3 EA                pea.l      -$2c16(a5)
0000476A  3F 3C 05 E4                move.w     #$5e4, -(a7)
0000476E  4E B9 00 00 7E E0          jsr        $7ee0.l
00004774  48 6D DC 42                pea.l      -$23be(a5)
00004778  48 78 00 10                pea.l      $10.w
0000477C  2F 3C 00 19 00 2C          move.l     #$19002c, -(a7)
00004782  A8 A7                      .byte      0xa8, 0xa7
00004784  3B 7C 00 1C D8 0E          move.w     #$1c, -$27f2(a5)
0000478A  3B 7C 00 19 D8 0C          move.w     #$19, -$27f4(a5)
00004790  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004794  4E B9 00 00 00 90          jsr        $90.l
0000479A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000047A0  3F 3C 0B C0                move.w     #$bc0, -(a7)
000047A4  A8 1F                      .byte      0xa8, 0x1f
000047A6  20 5F                      movea.l    (a7)+, a0
000047A8  2B 48 DE CE                move.l     a0, -$2132(a5)
000047AC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000047B2  3F 3C 0B C5                move.w     #$bc5, -(a7)
000047B6  A8 1F                      .byte      0xa8, 0x1f
000047B8  20 5F                      movea.l    (a7)+, a0
000047BA  2B 48 DE D2                move.l     a0, -$212e(a5)
000047BE  A9 75                      .byte      0xa9, 0x75
000047C0  20 1F                      move.l     (a7)+, d0
000047C2  2B 40 D7 C2                move.l     d0, -$283e(a5)
000047C6  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000047CC  4F EF 00 0C                lea.l      $c(a7), a7
000047D0  42 6D D7 B8                clr.w      -$2848(a5)
000047D4  60 00 12 88                bra.w      $5a5e
000047D8  0C 6D 00 32 D7 B8          cmpi.w     #$32, -$2848(a5)
000047DE  66 00 00 98                bne.w      $4878
000047E2  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
000047E8  66 00 00 8E                bne.w      $4878
000047EC  59 4F                      subq.w     #$4, a7
000047EE  A9 75                      .byte      0xa9, 0x75
000047F0  20 1F                      move.l     (a7)+, d0
000047F2  90 AD D7 B2                sub.l      -$284e(a5), d0
000047F6  72 3C                      moveq      #$3c, d1
000047F8  B0 81                      cmp.l      d1, d0
000047FA  64 74                      bcc.b      $4870
000047FC  3B 7C 00 0B FF E0          move.w     #$b, -$20(a5)
00004802  48 6D D7 FC                pea.l      -$2804(a5)
00004806  48 6D D3 F6                pea.l      -$2c0a(a5)
0000480A  3F 3C 03 F2                move.w     #$3f2, -(a7)
0000480E  4E B9 00 00 7E E0          jsr        $7ee0.l
00004814  48 6D D7 FC                pea.l      -$2804(a5)
00004818  48 6D D3 EA                pea.l      -$2c16(a5)
0000481C  3F 3C 05 E6                move.w     #$5e6, -(a7)
00004820  4E B9 00 00 7E E0          jsr        $7ee0.l
00004826  48 6D DC 42                pea.l      -$23be(a5)
0000482A  48 78 00 10                pea.l      $10.w
0000482E  2F 3C 00 20 00 31          move.l     #$200031, -(a7)
00004834  A8 A7                      .byte      0xa8, 0xa7
00004836  3B 7C 00 20 D8 0E          move.w     #$20, -$27f2(a5)
0000483C  3B 7C 00 20 D8 0C          move.w     #$20, -$27f4(a5)
00004842  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00004846  4E B9 00 00 00 90          jsr        $90.l
0000484C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004852  3F 3C 0B C0                move.w     #$bc0, -(a7)
00004856  A8 1F                      .byte      0xa8, 0x1f
00004858  20 5F                      movea.l    (a7)+, a0
0000485A  2B 48 DE CE                move.l     a0, -$2132(a5)
0000485E  A9 75                      .byte      0xa9, 0x75
00004860  20 1F                      move.l     (a7)+, d0
00004862  2B 40 D7 C2                move.l     d0, -$283e(a5)
00004866  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
0000486C  4F EF 00 10                lea.l      $10(a7), a7
00004870  42 6D D7 B8                clr.w      -$2848(a5)
00004874  60 00 11 E8                bra.w      $5a5e
00004878  0C 6D 00 37 D7 B8          cmpi.w     #$37, -$2848(a5)
0000487E  66 00 00 AC                bne.w      $492c
00004882  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00004888  66 00 00 A2                bne.w      $492c
0000488C  59 4F                      subq.w     #$4, a7
0000488E  A9 75                      .byte      0xa9, 0x75
00004890  20 1F                      move.l     (a7)+, d0
00004892  90 AD D7 B2                sub.l      -$284e(a5), d0
00004896  72 3C                      moveq      #$3c, d1
00004898  B0 81                      cmp.l      d1, d0
0000489A  64 00 00 88                bcc.w      $4924
0000489E  3B 7C 00 0E FF E0          move.w     #$e, -$20(a5)
000048A4  48 6D D7 FC                pea.l      -$2804(a5)
000048A8  48 6D D3 F6                pea.l      -$2c0a(a5)
000048AC  3F 3C 03 F5                move.w     #$3f5, -(a7)
000048B0  4E B9 00 00 7E E0          jsr        $7ee0.l
000048B6  48 6D D7 FC                pea.l      -$2804(a5)
000048BA  48 6D D3 EA                pea.l      -$2c16(a5)
000048BE  3F 3C 05 E9                move.w     #$5e9, -(a7)
000048C2  4E B9 00 00 7E E0          jsr        $7ee0.l
000048C8  48 6D DC 42                pea.l      -$23be(a5)
000048CC  48 78 00 10                pea.l      $10.w
000048D0  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
000048D6  A8 A7                      .byte      0xa8, 0xa7
000048D8  3B 7C 00 2B D8 0E          move.w     #$2b, -$27f2(a5)
000048DE  3B 7C 00 09 D8 0C          move.w     #$9, -$27f4(a5)
000048E4  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000048E8  4E B9 00 00 00 90          jsr        $90.l
000048EE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000048F4  3F 3C 0B C7                move.w     #$bc7, -(a7)
000048F8  A8 1F                      .byte      0xa8, 0x1f
000048FA  20 5F                      movea.l    (a7)+, a0
000048FC  2B 48 DE CE                move.l     a0, -$2132(a5)
00004900  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00004906  3F 3C 0B C5                move.w     #$bc5, -(a7)
0000490A  A8 1F                      .byte      0xa8, 0x1f
0000490C  20 5F                      movea.l    (a7)+, a0
0000490E  2B 48 DE D2                move.l     a0, -$212e(a5)
00004912  A9 75                      .byte      0xa9, 0x75
00004914  20 1F                      move.l     (a7)+, d0
00004916  2B 40 D7 C2                move.l     d0, -$283e(a5)
0000491A  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
00004920  4F EF 00 0C                lea.l      $c(a7), a7
00004924  42 6D D7 B8                clr.w      -$2848(a5)
00004928  60 00 11 34                bra.w      $5a5e
0000492C  0C 6D 00 3C D7 B8          cmpi.w     #$3c, -$2848(a5)
00004932  66 00 00 AC                bne.w      $49e0
00004936  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000493C  66 00 00 A2                bne.w      $49e0
00004940  59 4F                      subq.w     #$4, a7
00004942  A9 75                      .byte      0xa9, 0x75
00004944  20 1F                      move.l     (a7)+, d0
00004946  90 AD D7 B2                sub.l      -$284e(a5), d0
0000494A  72 3C                      moveq      #$3c, d1
0000494C  B0 81                      cmp.l      d1, d0
0000494E  64 00 00 88                bcc.w      $49d8
00004952  3B 7C 00 0F FF E0          move.w     #$f, -$20(a5)
00004958  48 6D D7 FC                pea.l      -$2804(a5)
0000495C  48 6D D3 F6                pea.l      -$2c0a(a5)
00004960  3F 3C 03 F6                move.w     #$3f6, -(a7)
00004964  4E B9 00 00 7E E0          jsr        $7ee0.l
0000496A  48 6D D7 FC                pea.l      -$2804(a5)
0000496E  48 6D D3 EA                pea.l      -$2c16(a5)
00004972  3F 3C 05 EA                move.w     #$5ea, -(a7)
00004976  4E B9 00 00 7E E0          jsr        $7ee0.l
0000497C  48 6D DC 42                pea.l      -$23be(a5)
00004980  48 78 00 10                pea.l      $10.w
00004984  2F 3C 00 0F 00 35          move.l     #$f0035, -(a7)
0000498A  A8 A7                      .byte      0xa8, 0xa7
0000498C  3B 7C 00 25 D8 0E          move.w     #$25, -$27f2(a5)
00004992  3B 7C 00 0F D8 0C          move.w     #$f, -$27f4(a5)
00004998  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000499C  4E B9 00 00 00 90          jsr        $90.l
000049A2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000049A8  3F 3C 0B C2                move.w     #$bc2, -(a7)
000049AC  A8 1F                      .byte      0xa8, 0x1f
000049AE  20 5F                      movea.l    (a7)+, a0
000049B0  2B 48 DE CE                move.l     a0, -$2132(a5)
000049B4  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000049BA  3F 3C 0B C3                move.w     #$bc3, -(a7)
000049BE  A8 1F                      .byte      0xa8, 0x1f
000049C0  20 5F                      movea.l    (a7)+, a0
000049C2  2B 48 DE D2                move.l     a0, -$212e(a5)
000049C6  A9 75                      .byte      0xa9, 0x75
000049C8  20 1F                      move.l     (a7)+, d0
000049CA  2B 40 D7 C2                move.l     d0, -$283e(a5)
000049CE  1B 7C 00 01 D7 C7          move.b     #$1, -$2839(a5)
000049D4  4F EF 00 0C                lea.l      $c(a7), a7
000049D8  42 6D D7 B8                clr.w      -$2848(a5)
000049DC  60 00 10 80                bra.w      $5a5e
000049E0  42 6D D7 B8                clr.w      -$2848(a5)
000049E4  60 00 10 78                bra.w      $5a5e
000049E8  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
000049EE  66 00 01 BA                bne.w      $4baa
000049F2  10 2D D7 5D                move.b     -$28a3(a5), d0
000049F6  48 80                      ext.w      d0
000049F8  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
000049FC  66 04                      bne.b      $4a02
000049FE  42 6D D7 B8                clr.w      -$2848(a5)
00004A02  10 2D D7 5D                move.b     -$28a3(a5), d0
00004A06  48 80                      ext.w      d0
00004A08  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00004A0C  66 00 00 86                bne.w      $4a94
00004A10  4A 6D D7 B8                tst.w      -$2848(a5)
00004A14  66 12                      bne.b      $4a28
00004A16  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00004A1C  59 4F                      subq.w     #$4, a7
00004A1E  A9 75                      .byte      0xa9, 0x75
00004A20  20 1F                      move.l     (a7)+, d0
00004A22  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004A26  60 6C                      bra.b      $4a94
00004A28  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00004A2E  67 08                      beq.b      $4a38
00004A30  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004A36  66 28                      bne.b      $4a60
00004A38  59 4F                      subq.w     #$4, a7
00004A3A  A9 75                      .byte      0xa9, 0x75
00004A3C  20 1F                      move.l     (a7)+, d0
00004A3E  90 AD D7 B2                sub.l      -$284e(a5), d0
00004A42  72 3C                      moveq      #$3c, d1
00004A44  B0 81                      cmp.l      d1, d0
00004A46  64 12                      bcc.b      $4a5a
00004A48  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00004A4E  59 4F                      subq.w     #$4, a7
00004A50  A9 75                      .byte      0xa9, 0x75
00004A52  20 1F                      move.l     (a7)+, d0
00004A54  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004A58  60 3A                      bra.b      $4a94
00004A5A  42 6D D7 B8                clr.w      -$2848(a5)
00004A5E  60 34                      bra.b      $4a94
00004A60  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004A66  66 28                      bne.b      $4a90
00004A68  59 4F                      subq.w     #$4, a7
00004A6A  A9 75                      .byte      0xa9, 0x75
00004A6C  20 1F                      move.l     (a7)+, d0
00004A6E  90 AD D7 B2                sub.l      -$284e(a5), d0
00004A72  72 3C                      moveq      #$3c, d1
00004A74  B0 81                      cmp.l      d1, d0
00004A76  64 12                      bcc.b      $4a8a
00004A78  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00004A7E  59 4F                      subq.w     #$4, a7
00004A80  A9 75                      .byte      0xa9, 0x75
00004A82  20 1F                      move.l     (a7)+, d0
00004A84  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004A88  60 0A                      bra.b      $4a94
00004A8A  42 6D D7 B8                clr.w      -$2848(a5)
00004A8E  60 04                      bra.b      $4a94
00004A90  42 6D D7 B8                clr.w      -$2848(a5)
00004A94  10 2D D7 5D                move.b     -$28a3(a5), d0
00004A98  48 80                      ext.w      d0
00004A9A  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00004A9E  66 24                      bne.b      $4ac4
00004AA0  4A 6D D7 B8                tst.w      -$2848(a5)
00004AA4  67 08                      beq.b      $4aae
00004AA6  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004AAC  66 12                      bne.b      $4ac0
00004AAE  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00004AB4  59 4F                      subq.w     #$4, a7
00004AB6  A9 75                      .byte      0xa9, 0x75
00004AB8  20 1F                      move.l     (a7)+, d0
00004ABA  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004ABE  60 04                      bra.b      $4ac4
00004AC0  42 6D D7 B8                clr.w      -$2848(a5)
00004AC4  10 2D D7 5D                move.b     -$28a3(a5), d0
00004AC8  48 80                      ext.w      d0
00004ACA  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00004ACE  66 34                      bne.b      $4b04
00004AD0  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004AD6  66 28                      bne.b      $4b00
00004AD8  59 4F                      subq.w     #$4, a7
00004ADA  A9 75                      .byte      0xa9, 0x75
00004ADC  20 1F                      move.l     (a7)+, d0
00004ADE  90 AD D7 B2                sub.l      -$284e(a5), d0
00004AE2  72 3C                      moveq      #$3c, d1
00004AE4  B0 81                      cmp.l      d1, d0
00004AE6  64 12                      bcc.b      $4afa
00004AE8  3B 7C 00 08 D7 B8          move.w     #$8, -$2848(a5)
00004AEE  59 4F                      subq.w     #$4, a7
00004AF0  A9 75                      .byte      0xa9, 0x75
00004AF2  20 1F                      move.l     (a7)+, d0
00004AF4  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004AF8  60 0A                      bra.b      $4b04
00004AFA  42 6D D7 B8                clr.w      -$2848(a5)
00004AFE  60 04                      bra.b      $4b04
00004B00  42 6D D7 B8                clr.w      -$2848(a5)
00004B04  10 2D D7 5D                move.b     -$28a3(a5), d0
00004B08  48 80                      ext.w      d0
00004B0A  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00004B0E  66 2C                      bne.b      $4b3c
00004B10  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004B16  66 20                      bne.b      $4b38
00004B18  59 4F                      subq.w     #$4, a7
00004B1A  A9 75                      .byte      0xa9, 0x75
00004B1C  20 1F                      move.l     (a7)+, d0
00004B1E  90 AD D7 B2                sub.l      -$284e(a5), d0
00004B22  72 3C                      moveq      #$3c, d1
00004B24  B0 81                      cmp.l      d1, d0
00004B26  64 0A                      bcc.b      $4b32
00004B28  42 6D D7 A8                clr.w      -$2858(a5)
00004B2C  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00004B32  42 6D D7 B8                clr.w      -$2848(a5)
00004B36  60 04                      bra.b      $4b3c
00004B38  42 6D D7 B8                clr.w      -$2848(a5)
00004B3C  10 2D D7 5D                move.b     -$28a3(a5), d0
00004B40  48 80                      ext.w      d0
00004B42  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00004B46  66 00 0F 16                bne.w      $5a5e
00004B4A  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00004B50  66 24                      bne.b      $4b76
00004B52  59 4F                      subq.w     #$4, a7
00004B54  A9 75                      .byte      0xa9, 0x75
00004B56  20 1F                      move.l     (a7)+, d0
00004B58  90 AD D7 B2                sub.l      -$284e(a5), d0
00004B5C  72 3C                      moveq      #$3c, d1
00004B5E  B0 81                      cmp.l      d1, d0
00004B60  64 0C                      bcc.b      $4b6e
00004B62  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00004B68  3B 7C 00 01 D7 A8          move.w     #$1, -$2858(a5)
00004B6E  42 6D D7 B8                clr.w      -$2848(a5)
00004B72  60 00 0E EA                bra.w      $5a5e
00004B76  0C 6D 00 08 D7 B8          cmpi.w     #$8, -$2848(a5)
00004B7C  66 24                      bne.b      $4ba2
00004B7E  59 4F                      subq.w     #$4, a7
00004B80  A9 75                      .byte      0xa9, 0x75
00004B82  20 1F                      move.l     (a7)+, d0
00004B84  90 AD D7 B2                sub.l      -$284e(a5), d0
00004B88  72 3C                      moveq      #$3c, d1
00004B8A  B0 81                      cmp.l      d1, d0
00004B8C  64 0C                      bcc.b      $4b9a
00004B8E  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00004B94  3B 7C 00 02 D7 A8          move.w     #$2, -$2858(a5)
00004B9A  42 6D D7 B8                clr.w      -$2848(a5)
00004B9E  60 00 0E BE                bra.w      $5a5e
00004BA2  42 6D D7 B8                clr.w      -$2848(a5)
00004BA6  60 00 0E B6                bra.w      $5a5e
00004BAA  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
00004BB0  66 00 01 92                bne.w      $4d44
00004BB4  10 2D D7 5D                move.b     -$28a3(a5), d0
00004BB8  48 80                      ext.w      d0
00004BBA  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00004BBE  66 04                      bne.b      $4bc4
00004BC0  42 6D D7 B8                clr.w      -$2848(a5)
00004BC4  10 2D D7 5D                move.b     -$28a3(a5), d0
00004BC8  48 80                      ext.w      d0
00004BCA  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00004BCE  66 04                      bne.b      $4bd4
00004BD0  42 6D D7 B8                clr.w      -$2848(a5)
00004BD4  10 2D D7 5D                move.b     -$28a3(a5), d0
00004BD8  48 80                      ext.w      d0
00004BDA  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00004BDE  66 04                      bne.b      $4be4
00004BE0  42 6D D7 B8                clr.w      -$2848(a5)
00004BE4  10 2D D7 5D                move.b     -$28a3(a5), d0
00004BE8  48 80                      ext.w      d0
00004BEA  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00004BEE  66 34                      bne.b      $4c24
00004BF0  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004BF6  66 28                      bne.b      $4c20
00004BF8  59 4F                      subq.w     #$4, a7
00004BFA  A9 75                      .byte      0xa9, 0x75
00004BFC  20 1F                      move.l     (a7)+, d0
00004BFE  90 AD D7 B2                sub.l      -$284e(a5), d0
00004C02  72 3C                      moveq      #$3c, d1
00004C04  B0 81                      cmp.l      d1, d0
00004C06  64 12                      bcc.b      $4c1a
00004C08  3B 7C 00 0A D7 B8          move.w     #$a, -$2848(a5)
00004C0E  59 4F                      subq.w     #$4, a7
00004C10  A9 75                      .byte      0xa9, 0x75
00004C12  20 1F                      move.l     (a7)+, d0
00004C14  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004C18  60 0A                      bra.b      $4c24
00004C1A  42 6D D7 B8                clr.w      -$2848(a5)
00004C1E  60 04                      bra.b      $4c24
00004C20  42 6D D7 B8                clr.w      -$2848(a5)
00004C24  10 2D D7 5D                move.b     -$28a3(a5), d0
00004C28  48 80                      ext.w      d0
00004C2A  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00004C2E  66 7C                      bne.b      $4cac
00004C30  4A 6D D7 B8                tst.w      -$2848(a5)
00004C34  66 12                      bne.b      $4c48
00004C36  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00004C3C  59 4F                      subq.w     #$4, a7
00004C3E  A9 75                      .byte      0xa9, 0x75
00004C40  20 1F                      move.l     (a7)+, d0
00004C42  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004C46  60 64                      bra.b      $4cac
00004C48  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00004C4E  66 28                      bne.b      $4c78
00004C50  59 4F                      subq.w     #$4, a7
00004C52  A9 75                      .byte      0xa9, 0x75
00004C54  20 1F                      move.l     (a7)+, d0
00004C56  90 AD D7 B2                sub.l      -$284e(a5), d0
00004C5A  72 3C                      moveq      #$3c, d1
00004C5C  B0 81                      cmp.l      d1, d0
00004C5E  64 12                      bcc.b      $4c72
00004C60  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00004C66  59 4F                      subq.w     #$4, a7
00004C68  A9 75                      .byte      0xa9, 0x75
00004C6A  20 1F                      move.l     (a7)+, d0
00004C6C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004C70  60 3A                      bra.b      $4cac
00004C72  42 6D D7 B8                clr.w      -$2848(a5)
00004C76  60 34                      bra.b      $4cac
00004C78  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004C7E  66 28                      bne.b      $4ca8
00004C80  59 4F                      subq.w     #$4, a7
00004C82  A9 75                      .byte      0xa9, 0x75
00004C84  20 1F                      move.l     (a7)+, d0
00004C86  90 AD D7 B2                sub.l      -$284e(a5), d0
00004C8A  72 3C                      moveq      #$3c, d1
00004C8C  B0 81                      cmp.l      d1, d0
00004C8E  64 12                      bcc.b      $4ca2
00004C90  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00004C96  59 4F                      subq.w     #$4, a7
00004C98  A9 75                      .byte      0xa9, 0x75
00004C9A  20 1F                      move.l     (a7)+, d0
00004C9C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004CA0  60 0A                      bra.b      $4cac
00004CA2  42 6D D7 B8                clr.w      -$2848(a5)
00004CA6  60 04                      bra.b      $4cac
00004CA8  42 6D D7 B8                clr.w      -$2848(a5)
00004CAC  10 2D D7 5D                move.b     -$28a3(a5), d0
00004CB0  48 80                      ext.w      d0
00004CB2  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00004CB6  66 00 0D A6                bne.w      $5a5e
00004CBA  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004CC0  66 22                      bne.b      $4ce4
00004CC2  59 4F                      subq.w     #$4, a7
00004CC4  A9 75                      .byte      0xa9, 0x75
00004CC6  20 1F                      move.l     (a7)+, d0
00004CC8  90 AD D7 B2                sub.l      -$284e(a5), d0
00004CCC  72 3C                      moveq      #$3c, d1
00004CCE  B0 81                      cmp.l      d1, d0
00004CD0  64 0A                      bcc.b      $4cdc
00004CD2  42 6D D7 BA                clr.w      -$2846(a5)
00004CD6  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00004CDC  42 6D D7 B8                clr.w      -$2848(a5)
00004CE0  60 00 0D 7C                bra.w      $5a5e
00004CE4  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004CEA  66 24                      bne.b      $4d10
00004CEC  59 4F                      subq.w     #$4, a7
00004CEE  A9 75                      .byte      0xa9, 0x75
00004CF0  20 1F                      move.l     (a7)+, d0
00004CF2  90 AD D7 B2                sub.l      -$284e(a5), d0
00004CF6  72 3C                      moveq      #$3c, d1
00004CF8  B0 81                      cmp.l      d1, d0
00004CFA  64 0C                      bcc.b      $4d08
00004CFC  3B 7C 00 01 D7 BA          move.w     #$1, -$2846(a5)
00004D02  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00004D08  42 6D D7 B8                clr.w      -$2848(a5)
00004D0C  60 00 0D 50                bra.w      $5a5e
00004D10  0C 6D 00 0A D7 B8          cmpi.w     #$a, -$2848(a5)
00004D16  66 24                      bne.b      $4d3c
00004D18  59 4F                      subq.w     #$4, a7
00004D1A  A9 75                      .byte      0xa9, 0x75
00004D1C  20 1F                      move.l     (a7)+, d0
00004D1E  90 AD D7 B2                sub.l      -$284e(a5), d0
00004D22  72 3C                      moveq      #$3c, d1
00004D24  B0 81                      cmp.l      d1, d0
00004D26  64 0C                      bcc.b      $4d34
00004D28  3B 7C 00 02 D7 BA          move.w     #$2, -$2846(a5)
00004D2E  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00004D34  42 6D D7 B8                clr.w      -$2848(a5)
00004D38  60 00 0D 24                bra.w      $5a5e
00004D3C  42 6D D7 B8                clr.w      -$2848(a5)
00004D40  60 00 0D 1C                bra.w      $5a5e
00004D44  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
00004D4A  66 00 01 E6                bne.w      $4f32
00004D4E  10 2D D7 5D                move.b     -$28a3(a5), d0
00004D52  48 80                      ext.w      d0
00004D54  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00004D58  66 04                      bne.b      $4d5e
00004D5A  42 6D D7 B8                clr.w      -$2848(a5)
00004D5E  10 2D D7 5D                move.b     -$28a3(a5), d0
00004D62  48 80                      ext.w      d0
00004D64  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00004D68  66 1C                      bne.b      $4d86
00004D6A  4A 6D D7 B8                tst.w      -$2848(a5)
00004D6E  66 12                      bne.b      $4d82
00004D70  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00004D76  59 4F                      subq.w     #$4, a7
00004D78  A9 75                      .byte      0xa9, 0x75
00004D7A  20 1F                      move.l     (a7)+, d0
00004D7C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004D80  60 04                      bra.b      $4d86
00004D82  42 6D D7 B8                clr.w      -$2848(a5)
00004D86  10 2D D7 5D                move.b     -$28a3(a5), d0
00004D8A  48 80                      ext.w      d0
00004D8C  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00004D90  66 64                      bne.b      $4df6
00004D92  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00004D98  66 28                      bne.b      $4dc2
00004D9A  59 4F                      subq.w     #$4, a7
00004D9C  A9 75                      .byte      0xa9, 0x75
00004D9E  20 1F                      move.l     (a7)+, d0
00004DA0  90 AD D7 B2                sub.l      -$284e(a5), d0
00004DA4  72 3C                      moveq      #$3c, d1
00004DA6  B0 81                      cmp.l      d1, d0
00004DA8  64 12                      bcc.b      $4dbc
00004DAA  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00004DB0  59 4F                      subq.w     #$4, a7
00004DB2  A9 75                      .byte      0xa9, 0x75
00004DB4  20 1F                      move.l     (a7)+, d0
00004DB6  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004DBA  60 3A                      bra.b      $4df6
00004DBC  42 6D D7 B8                clr.w      -$2848(a5)
00004DC0  60 34                      bra.b      $4df6
00004DC2  0C 6D 00 08 D7 B8          cmpi.w     #$8, -$2848(a5)
00004DC8  66 28                      bne.b      $4df2
00004DCA  59 4F                      subq.w     #$4, a7
00004DCC  A9 75                      .byte      0xa9, 0x75
00004DCE  20 1F                      move.l     (a7)+, d0
00004DD0  90 AD D7 B2                sub.l      -$284e(a5), d0
00004DD4  72 3C                      moveq      #$3c, d1
00004DD6  B0 81                      cmp.l      d1, d0
00004DD8  64 12                      bcc.b      $4dec
00004DDA  3B 7C 00 09 D7 B8          move.w     #$9, -$2848(a5)
00004DE0  59 4F                      subq.w     #$4, a7
00004DE2  A9 75                      .byte      0xa9, 0x75
00004DE4  20 1F                      move.l     (a7)+, d0
00004DE6  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004DEA  60 0A                      bra.b      $4df6
00004DEC  42 6D D7 B8                clr.w      -$2848(a5)
00004DF0  60 04                      bra.b      $4df6
00004DF2  42 6D D7 B8                clr.w      -$2848(a5)
00004DF6  10 2D D7 5D                move.b     -$28a3(a5), d0
00004DFA  48 80                      ext.w      d0
00004DFC  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00004E00  66 64                      bne.b      $4e66
00004E02  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00004E08  66 28                      bne.b      $4e32
00004E0A  59 4F                      subq.w     #$4, a7
00004E0C  A9 75                      .byte      0xa9, 0x75
00004E0E  20 1F                      move.l     (a7)+, d0
00004E10  90 AD D7 B2                sub.l      -$284e(a5), d0
00004E14  72 3C                      moveq      #$3c, d1
00004E16  B0 81                      cmp.l      d1, d0
00004E18  64 12                      bcc.b      $4e2c
00004E1A  3B 7C 00 08 D7 B8          move.w     #$8, -$2848(a5)
00004E20  59 4F                      subq.w     #$4, a7
00004E22  A9 75                      .byte      0xa9, 0x75
00004E24  20 1F                      move.l     (a7)+, d0
00004E26  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004E2A  60 3A                      bra.b      $4e66
00004E2C  42 6D D7 B8                clr.w      -$2848(a5)
00004E30  60 34                      bra.b      $4e66
00004E32  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004E38  66 28                      bne.b      $4e62
00004E3A  59 4F                      subq.w     #$4, a7
00004E3C  A9 75                      .byte      0xa9, 0x75
00004E3E  20 1F                      move.l     (a7)+, d0
00004E40  90 AD D7 B2                sub.l      -$284e(a5), d0
00004E44  72 3C                      moveq      #$3c, d1
00004E46  B0 81                      cmp.l      d1, d0
00004E48  64 12                      bcc.b      $4e5c
00004E4A  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00004E50  59 4F                      subq.w     #$4, a7
00004E52  A9 75                      .byte      0xa9, 0x75
00004E54  20 1F                      move.l     (a7)+, d0
00004E56  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004E5A  60 0A                      bra.b      $4e66
00004E5C  42 6D D7 B8                clr.w      -$2848(a5)
00004E60  60 04                      bra.b      $4e66
00004E62  42 6D D7 B8                clr.w      -$2848(a5)
00004E66  10 2D D7 5D                move.b     -$28a3(a5), d0
00004E6A  48 80                      ext.w      d0
00004E6C  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00004E70  66 00 00 84                bne.w      $4ef6
00004E74  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004E7A  66 22                      bne.b      $4e9e
00004E7C  59 4F                      subq.w     #$4, a7
00004E7E  A9 75                      .byte      0xa9, 0x75
00004E80  20 1F                      move.l     (a7)+, d0
00004E82  90 AD D7 B2                sub.l      -$284e(a5), d0
00004E86  72 3C                      moveq      #$3c, d1
00004E88  B0 81                      cmp.l      d1, d0
00004E8A  64 0C                      bcc.b      $4e98
00004E8C  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00004E92  3B 7C 00 02 D7 A8          move.w     #$2, -$2858(a5)
00004E98  42 6D D7 B8                clr.w      -$2848(a5)
00004E9C  60 58                      bra.b      $4ef6
00004E9E  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004EA4  66 22                      bne.b      $4ec8
00004EA6  59 4F                      subq.w     #$4, a7
00004EA8  A9 75                      .byte      0xa9, 0x75
00004EAA  20 1F                      move.l     (a7)+, d0
00004EAC  90 AD D7 B2                sub.l      -$284e(a5), d0
00004EB0  72 3C                      moveq      #$3c, d1
00004EB2  B0 81                      cmp.l      d1, d0
00004EB4  64 0C                      bcc.b      $4ec2
00004EB6  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00004EBC  3B 7C 00 01 D7 A8          move.w     #$1, -$2858(a5)
00004EC2  42 6D D7 B8                clr.w      -$2848(a5)
00004EC6  60 2E                      bra.b      $4ef6
00004EC8  0C 6D 00 09 D7 B8          cmpi.w     #$9, -$2848(a5)
00004ECE  66 22                      bne.b      $4ef2
00004ED0  59 4F                      subq.w     #$4, a7
00004ED2  A9 75                      .byte      0xa9, 0x75
00004ED4  20 1F                      move.l     (a7)+, d0
00004ED6  90 AD D7 B2                sub.l      -$284e(a5), d0
00004EDA  72 3C                      moveq      #$3c, d1
00004EDC  B0 81                      cmp.l      d1, d0
00004EDE  64 0C                      bcc.b      $4eec
00004EE0  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00004EE6  3B 7C 00 03 D7 A8          move.w     #$3, -$2858(a5)
00004EEC  42 6D D7 B8                clr.w      -$2848(a5)
00004EF0  60 04                      bra.b      $4ef6
00004EF2  42 6D D7 B8                clr.w      -$2848(a5)
00004EF6  10 2D D7 5D                move.b     -$28a3(a5), d0
00004EFA  48 80                      ext.w      d0
00004EFC  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00004F00  66 00 0B 5C                bne.w      $5a5e
00004F04  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00004F0A  66 1E                      bne.b      $4f2a
00004F0C  59 4F                      subq.w     #$4, a7
00004F0E  A9 75                      .byte      0xa9, 0x75
00004F10  20 1F                      move.l     (a7)+, d0
00004F12  90 AD D7 B2                sub.l      -$284e(a5), d0
00004F16  72 3C                      moveq      #$3c, d1
00004F18  B0 81                      cmp.l      d1, d0
00004F1A  64 06                      bcc.b      $4f22
00004F1C  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00004F22  42 6D D7 B8                clr.w      -$2848(a5)
00004F26  60 00 0B 36                bra.w      $5a5e
00004F2A  42 6D D7 B8                clr.w      -$2848(a5)
00004F2E  60 00 0B 2E                bra.w      $5a5e
00004F32  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00004F38  66 00 02 5A                bne.w      $5194
00004F3C  10 2D D7 5D                move.b     -$28a3(a5), d0
00004F40  48 80                      ext.w      d0
00004F42  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00004F46  66 64                      bne.b      $4fac
00004F48  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00004F4E  66 28                      bne.b      $4f78
00004F50  59 4F                      subq.w     #$4, a7
00004F52  A9 75                      .byte      0xa9, 0x75
00004F54  20 1F                      move.l     (a7)+, d0
00004F56  90 AD D7 B2                sub.l      -$284e(a5), d0
00004F5A  72 3C                      moveq      #$3c, d1
00004F5C  B0 81                      cmp.l      d1, d0
00004F5E  64 12                      bcc.b      $4f72
00004F60  3B 7C 00 0F D7 B8          move.w     #$f, -$2848(a5)
00004F66  59 4F                      subq.w     #$4, a7
00004F68  A9 75                      .byte      0xa9, 0x75
00004F6A  20 1F                      move.l     (a7)+, d0
00004F6C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004F70  60 3A                      bra.b      $4fac
00004F72  42 6D D7 B8                clr.w      -$2848(a5)
00004F76  60 34                      bra.b      $4fac
00004F78  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00004F7E  66 28                      bne.b      $4fa8
00004F80  59 4F                      subq.w     #$4, a7
00004F82  A9 75                      .byte      0xa9, 0x75
00004F84  20 1F                      move.l     (a7)+, d0
00004F86  90 AD D7 B2                sub.l      -$284e(a5), d0
00004F8A  72 3C                      moveq      #$3c, d1
00004F8C  B0 81                      cmp.l      d1, d0
00004F8E  64 12                      bcc.b      $4fa2
00004F90  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00004F96  59 4F                      subq.w     #$4, a7
00004F98  A9 75                      .byte      0xa9, 0x75
00004F9A  20 1F                      move.l     (a7)+, d0
00004F9C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004FA0  60 0A                      bra.b      $4fac
00004FA2  42 6D D7 B8                clr.w      -$2848(a5)
00004FA6  60 04                      bra.b      $4fac
00004FA8  42 6D D7 B8                clr.w      -$2848(a5)
00004FAC  10 2D D7 5D                move.b     -$28a3(a5), d0
00004FB0  48 80                      ext.w      d0
00004FB2  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00004FB6  66 4C                      bne.b      $5004
00004FB8  4A 6D D7 B8                tst.w      -$2848(a5)
00004FBC  66 12                      bne.b      $4fd0
00004FBE  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00004FC4  59 4F                      subq.w     #$4, a7
00004FC6  A9 75                      .byte      0xa9, 0x75
00004FC8  20 1F                      move.l     (a7)+, d0
00004FCA  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004FCE  60 34                      bra.b      $5004
00004FD0  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00004FD6  66 28                      bne.b      $5000
00004FD8  59 4F                      subq.w     #$4, a7
00004FDA  A9 75                      .byte      0xa9, 0x75
00004FDC  20 1F                      move.l     (a7)+, d0
00004FDE  90 AD D7 B2                sub.l      -$284e(a5), d0
00004FE2  72 3C                      moveq      #$3c, d1
00004FE4  B0 81                      cmp.l      d1, d0
00004FE6  64 12                      bcc.b      $4ffa
00004FE8  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
00004FEE  59 4F                      subq.w     #$4, a7
00004FF0  A9 75                      .byte      0xa9, 0x75
00004FF2  20 1F                      move.l     (a7)+, d0
00004FF4  2B 40 D7 B2                move.l     d0, -$284e(a5)
00004FF8  60 0A                      bra.b      $5004
00004FFA  42 6D D7 B8                clr.w      -$2848(a5)
00004FFE  60 04                      bra.b      $5004
00005000  42 6D D7 B8                clr.w      -$2848(a5)
00005004  10 2D D7 5D                move.b     -$28a3(a5), d0
00005008  48 80                      ext.w      d0
0000500A  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
0000500E  66 7C                      bne.b      $508c
00005010  4A 6D D7 B8                tst.w      -$2848(a5)
00005014  66 12                      bne.b      $5028
00005016  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
0000501C  59 4F                      subq.w     #$4, a7
0000501E  A9 75                      .byte      0xa9, 0x75
00005020  20 1F                      move.l     (a7)+, d0
00005022  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005026  60 64                      bra.b      $508c
00005028  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
0000502E  66 28                      bne.b      $5058
00005030  59 4F                      subq.w     #$4, a7
00005032  A9 75                      .byte      0xa9, 0x75
00005034  20 1F                      move.l     (a7)+, d0
00005036  90 AD D7 B2                sub.l      -$284e(a5), d0
0000503A  72 3C                      moveq      #$3c, d1
0000503C  B0 81                      cmp.l      d1, d0
0000503E  64 12                      bcc.b      $5052
00005040  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005046  59 4F                      subq.w     #$4, a7
00005048  A9 75                      .byte      0xa9, 0x75
0000504A  20 1F                      move.l     (a7)+, d0
0000504C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005050  60 3A                      bra.b      $508c
00005052  42 6D D7 B8                clr.w      -$2848(a5)
00005056  60 34                      bra.b      $508c
00005058  0C 6D 00 0F D7 B8          cmpi.w     #$f, -$2848(a5)
0000505E  66 28                      bne.b      $5088
00005060  59 4F                      subq.w     #$4, a7
00005062  A9 75                      .byte      0xa9, 0x75
00005064  20 1F                      move.l     (a7)+, d0
00005066  90 AD D7 B2                sub.l      -$284e(a5), d0
0000506A  72 3C                      moveq      #$3c, d1
0000506C  B0 81                      cmp.l      d1, d0
0000506E  64 12                      bcc.b      $5082
00005070  3B 7C 00 10 D7 B8          move.w     #$10, -$2848(a5)
00005076  59 4F                      subq.w     #$4, a7
00005078  A9 75                      .byte      0xa9, 0x75
0000507A  20 1F                      move.l     (a7)+, d0
0000507C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005080  60 0A                      bra.b      $508c
00005082  42 6D D7 B8                clr.w      -$2848(a5)
00005086  60 04                      bra.b      $508c
00005088  42 6D D7 B8                clr.w      -$2848(a5)
0000508C  10 2D D7 5D                move.b     -$28a3(a5), d0
00005090  48 80                      ext.w      d0
00005092  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005096  66 66                      bne.b      $50fe
00005098  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
0000509E  66 1C                      bne.b      $50bc
000050A0  59 4F                      subq.w     #$4, a7
000050A2  A9 75                      .byte      0xa9, 0x75
000050A4  20 1F                      move.l     (a7)+, d0
000050A6  90 AD D7 B2                sub.l      -$284e(a5), d0
000050AA  72 3C                      moveq      #$3c, d1
000050AC  B0 81                      cmp.l      d1, d0
000050AE  64 06                      bcc.b      $50b6
000050B0  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
000050B6  42 6D D7 B8                clr.w      -$2848(a5)
000050BA  60 42                      bra.b      $50fe
000050BC  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
000050C2  66 36                      bne.b      $50fa
000050C4  59 4F                      subq.w     #$4, a7
000050C6  A9 75                      .byte      0xa9, 0x75
000050C8  20 1F                      move.l     (a7)+, d0
000050CA  90 AD D7 B2                sub.l      -$284e(a5), d0
000050CE  72 3C                      moveq      #$3c, d1
000050D0  B0 81                      cmp.l      d1, d0
000050D2  64 20                      bcc.b      $50f4
000050D4  4E B9 00 00 0B AA          jsr        $baa.l
000050DA  1B 7C 00 01 CF 6E          move.b     #$1, -$3092(a5)
000050E0  3B 7C 00 01 CF 72          move.w     #$1, -$308e(a5)
000050E6  2F 3C 0B BC 00 0A          move.l     #$bbc000a, -(a7)
000050EC  4E B9 00 00 00 A8          jsr        $a8.l
000050F2  58 4F                      addq.w     #$4, a7
000050F4  42 6D D7 B8                clr.w      -$2848(a5)
000050F8  60 04                      bra.b      $50fe
000050FA  42 6D D7 B8                clr.w      -$2848(a5)
000050FE  10 2D D7 5D                move.b     -$28a3(a5), d0
00005102  48 80                      ext.w      d0
00005104  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005108  66 00 09 54                bne.w      $5a5e
0000510C  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
00005112  66 38                      bne.b      $514c
00005114  59 4F                      subq.w     #$4, a7
00005116  A9 75                      .byte      0xa9, 0x75
00005118  20 1F                      move.l     (a7)+, d0
0000511A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000511E  72 3C                      moveq      #$3c, d1
00005120  B0 81                      cmp.l      d1, d0
00005122  64 20                      bcc.b      $5144
00005124  4E B9 00 00 0B AA          jsr        $baa.l
0000512A  1B 7C 00 01 CF 6E          move.b     #$1, -$3092(a5)
00005130  3B 7C 00 03 CF 72          move.w     #$3, -$308e(a5)
00005136  2F 3C 0B BC 00 0A          move.l     #$bbc000a, -(a7)
0000513C  4E B9 00 00 00 A8          jsr        $a8.l
00005142  58 4F                      addq.w     #$4, a7
00005144  42 6D D7 B8                clr.w      -$2848(a5)
00005148  60 00 09 14                bra.w      $5a5e
0000514C  0C 6D 00 10 D7 B8          cmpi.w     #$10, -$2848(a5)
00005152  66 38                      bne.b      $518c
00005154  59 4F                      subq.w     #$4, a7
00005156  A9 75                      .byte      0xa9, 0x75
00005158  20 1F                      move.l     (a7)+, d0
0000515A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000515E  72 3C                      moveq      #$3c, d1
00005160  B0 81                      cmp.l      d1, d0
00005162  64 20                      bcc.b      $5184
00005164  4E B9 00 00 0B AA          jsr        $baa.l
0000516A  1B 7C 00 01 CF 6E          move.b     #$1, -$3092(a5)
00005170  3B 7C 00 02 CF 72          move.w     #$2, -$308e(a5)
00005176  2F 3C 0B BC 00 0A          move.l     #$bbc000a, -(a7)
0000517C  4E B9 00 00 00 A8          jsr        $a8.l
00005182  58 4F                      addq.w     #$4, a7
00005184  42 6D D7 B8                clr.w      -$2848(a5)
00005188  60 00 08 D4                bra.w      $5a5e
0000518C  42 6D D7 B8                clr.w      -$2848(a5)
00005190  60 00 08 CC                bra.w      $5a5e
00005194  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
0000519A  66 00 01 50                bne.w      $52ec
0000519E  10 2D D7 5D                move.b     -$28a3(a5), d0
000051A2  48 80                      ext.w      d0
000051A4  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
000051A8  66 04                      bne.b      $51ae
000051AA  42 6D D7 B8                clr.w      -$2848(a5)
000051AE  10 2D D7 5D                move.b     -$28a3(a5), d0
000051B2  48 80                      ext.w      d0
000051B4  B0 6D E3 52                cmp.w      -$1cae(a5), d0
000051B8  66 04                      bne.b      $51be
000051BA  42 6D D7 B8                clr.w      -$2848(a5)
000051BE  10 2D D7 5D                move.b     -$28a3(a5), d0
000051C2  48 80                      ext.w      d0
000051C4  B0 6D E3 56                cmp.w      -$1caa(a5), d0
000051C8  66 04                      bne.b      $51ce
000051CA  42 6D D7 B8                clr.w      -$2848(a5)
000051CE  10 2D D7 5D                move.b     -$28a3(a5), d0
000051D2  48 80                      ext.w      d0
000051D4  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
000051D8  66 54                      bne.b      $522e
000051DA  4A 6D D7 B8                tst.w      -$2848(a5)
000051DE  66 12                      bne.b      $51f2
000051E0  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
000051E6  59 4F                      subq.w     #$4, a7
000051E8  A9 75                      .byte      0xa9, 0x75
000051EA  20 1F                      move.l     (a7)+, d0
000051EC  2B 40 D7 B2                move.l     d0, -$284e(a5)
000051F0  60 3C                      bra.b      $522e
000051F2  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
000051F8  67 08                      beq.b      $5202
000051FA  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005200  66 28                      bne.b      $522a
00005202  59 4F                      subq.w     #$4, a7
00005204  A9 75                      .byte      0xa9, 0x75
00005206  20 1F                      move.l     (a7)+, d0
00005208  90 AD D7 B2                sub.l      -$284e(a5), d0
0000520C  72 3C                      moveq      #$3c, d1
0000520E  B0 81                      cmp.l      d1, d0
00005210  64 12                      bcc.b      $5224
00005212  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005218  59 4F                      subq.w     #$4, a7
0000521A  A9 75                      .byte      0xa9, 0x75
0000521C  20 1F                      move.l     (a7)+, d0
0000521E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005222  60 0A                      bra.b      $522e
00005224  42 6D D7 B8                clr.w      -$2848(a5)
00005228  60 04                      bra.b      $522e
0000522A  42 6D D7 B8                clr.w      -$2848(a5)
0000522E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005232  48 80                      ext.w      d0
00005234  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005238  66 3E                      bne.b      $5278
0000523A  4A 6D D7 B8                tst.w      -$2848(a5)
0000523E  66 12                      bne.b      $5252
00005240  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00005246  59 4F                      subq.w     #$4, a7
00005248  A9 75                      .byte      0xa9, 0x75
0000524A  20 1F                      move.l     (a7)+, d0
0000524C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005250  60 26                      bra.b      $5278
00005252  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005258  67 08                      beq.b      $5262
0000525A  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00005260  66 12                      bne.b      $5274
00005262  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00005268  59 4F                      subq.w     #$4, a7
0000526A  A9 75                      .byte      0xa9, 0x75
0000526C  20 1F                      move.l     (a7)+, d0
0000526E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005272  60 04                      bra.b      $5278
00005274  42 6D D7 B8                clr.w      -$2848(a5)
00005278  10 2D D7 5D                move.b     -$28a3(a5), d0
0000527C  48 80                      ext.w      d0
0000527E  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005282  66 00 07 DA                bne.w      $5a5e
00005286  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
0000528C  66 24                      bne.b      $52b2
0000528E  59 4F                      subq.w     #$4, a7
00005290  A9 75                      .byte      0xa9, 0x75
00005292  20 1F                      move.l     (a7)+, d0
00005294  90 AD D7 B2                sub.l      -$284e(a5), d0
00005298  72 3C                      moveq      #$3c, d1
0000529A  B0 81                      cmp.l      d1, d0
0000529C  64 0C                      bcc.b      $52aa
0000529E  4A 2D D7 7E                tst.b      -$2882(a5)
000052A2  66 06                      bne.b      $52aa
000052A4  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
000052AA  42 6D D7 B8                clr.w      -$2848(a5)
000052AE  60 00 07 AE                bra.w      $5a5e
000052B2  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
000052B8  66 2A                      bne.b      $52e4
000052BA  59 4F                      subq.w     #$4, a7
000052BC  A9 75                      .byte      0xa9, 0x75
000052BE  20 1F                      move.l     (a7)+, d0
000052C0  90 AD D7 B2                sub.l      -$284e(a5), d0
000052C4  72 3C                      moveq      #$3c, d1
000052C6  B0 81                      cmp.l      d1, d0
000052C8  64 12                      bcc.b      $52dc
000052CA  4A 2D D7 7E                tst.b      -$2882(a5)
000052CE  66 0C                      bne.b      $52dc
000052D0  4A 2D D7 80                tst.b      -$2880(a5)
000052D4  66 06                      bne.b      $52dc
000052D6  1B 7C 00 01 D7 CE          move.b     #$1, -$2832(a5)
000052DC  42 6D D7 B8                clr.w      -$2848(a5)
000052E0  60 00 07 7C                bra.w      $5a5e
000052E4  42 6D D7 B8                clr.w      -$2848(a5)
000052E8  60 00 07 74                bra.w      $5a5e
000052EC  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
000052F2  66 00 01 62                bne.w      $5456
000052F6  10 2D D7 5D                move.b     -$28a3(a5), d0
000052FA  48 80                      ext.w      d0
000052FC  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005300  66 04                      bne.b      $5306
00005302  42 6D D7 B8                clr.w      -$2848(a5)
00005306  10 2D D7 5D                move.b     -$28a3(a5), d0
0000530A  48 80                      ext.w      d0
0000530C  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005310  66 04                      bne.b      $5316
00005312  42 6D D7 B8                clr.w      -$2848(a5)
00005316  10 2D D7 5D                move.b     -$28a3(a5), d0
0000531A  48 80                      ext.w      d0
0000531C  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005320  66 4C                      bne.b      $536e
00005322  4A 6D D7 B8                tst.w      -$2848(a5)
00005326  66 12                      bne.b      $533a
00005328  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
0000532E  59 4F                      subq.w     #$4, a7
00005330  A9 75                      .byte      0xa9, 0x75
00005332  20 1F                      move.l     (a7)+, d0
00005334  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005338  60 34                      bra.b      $536e
0000533A  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005340  66 28                      bne.b      $536a
00005342  59 4F                      subq.w     #$4, a7
00005344  A9 75                      .byte      0xa9, 0x75
00005346  20 1F                      move.l     (a7)+, d0
00005348  90 AD D7 B2                sub.l      -$284e(a5), d0
0000534C  72 3C                      moveq      #$3c, d1
0000534E  B0 81                      cmp.l      d1, d0
00005350  64 12                      bcc.b      $5364
00005352  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005358  59 4F                      subq.w     #$4, a7
0000535A  A9 75                      .byte      0xa9, 0x75
0000535C  20 1F                      move.l     (a7)+, d0
0000535E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005362  60 0A                      bra.b      $536e
00005364  42 6D D7 B8                clr.w      -$2848(a5)
00005368  60 04                      bra.b      $536e
0000536A  42 6D D7 B8                clr.w      -$2848(a5)
0000536E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005372  48 80                      ext.w      d0
00005374  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005378  66 34                      bne.b      $53ae
0000537A  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005380  66 28                      bne.b      $53aa
00005382  59 4F                      subq.w     #$4, a7
00005384  A9 75                      .byte      0xa9, 0x75
00005386  20 1F                      move.l     (a7)+, d0
00005388  90 AD D7 B2                sub.l      -$284e(a5), d0
0000538C  72 3C                      moveq      #$3c, d1
0000538E  B0 81                      cmp.l      d1, d0
00005390  64 12                      bcc.b      $53a4
00005392  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00005398  59 4F                      subq.w     #$4, a7
0000539A  A9 75                      .byte      0xa9, 0x75
0000539C  20 1F                      move.l     (a7)+, d0
0000539E  2B 40 D7 B2                move.l     d0, -$284e(a5)
000053A2  60 0A                      bra.b      $53ae
000053A4  42 6D D7 B8                clr.w      -$2848(a5)
000053A8  60 04                      bra.b      $53ae
000053AA  42 6D D7 B8                clr.w      -$2848(a5)
000053AE  10 2D D7 5D                move.b     -$28a3(a5), d0
000053B2  48 80                      ext.w      d0
000053B4  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
000053B8  66 34                      bne.b      $53ee
000053BA  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
000053C0  66 28                      bne.b      $53ea
000053C2  59 4F                      subq.w     #$4, a7
000053C4  A9 75                      .byte      0xa9, 0x75
000053C6  20 1F                      move.l     (a7)+, d0
000053C8  90 AD D7 B2                sub.l      -$284e(a5), d0
000053CC  72 3C                      moveq      #$3c, d1
000053CE  B0 81                      cmp.l      d1, d0
000053D0  64 12                      bcc.b      $53e4
000053D2  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
000053D8  59 4F                      subq.w     #$4, a7
000053DA  A9 75                      .byte      0xa9, 0x75
000053DC  20 1F                      move.l     (a7)+, d0
000053DE  2B 40 D7 B2                move.l     d0, -$284e(a5)
000053E2  60 0A                      bra.b      $53ee
000053E4  42 6D D7 B8                clr.w      -$2848(a5)
000053E8  60 04                      bra.b      $53ee
000053EA  42 6D D7 B8                clr.w      -$2848(a5)
000053EE  10 2D D7 5D                move.b     -$28a3(a5), d0
000053F2  48 80                      ext.w      d0
000053F4  B0 6D E3 56                cmp.w      -$1caa(a5), d0
000053F8  66 00 06 64                bne.w      $5a5e
000053FC  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005402  66 1E                      bne.b      $5422
00005404  59 4F                      subq.w     #$4, a7
00005406  A9 75                      .byte      0xa9, 0x75
00005408  20 1F                      move.l     (a7)+, d0
0000540A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000540E  72 3C                      moveq      #$3c, d1
00005410  B0 81                      cmp.l      d1, d0
00005412  64 06                      bcc.b      $541a
00005414  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
0000541A  42 6D D7 B8                clr.w      -$2848(a5)
0000541E  60 00 06 3E                bra.w      $5a5e
00005422  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00005428  66 24                      bne.b      $544e
0000542A  59 4F                      subq.w     #$4, a7
0000542C  A9 75                      .byte      0xa9, 0x75
0000542E  20 1F                      move.l     (a7)+, d0
00005430  90 AD D7 B2                sub.l      -$284e(a5), d0
00005434  72 3C                      moveq      #$3c, d1
00005436  B0 81                      cmp.l      d1, d0
00005438  64 0C                      bcc.b      $5446
0000543A  4E B9 00 00 25 CE          jsr        $25ce.l
00005440  1B 7C 00 01 CF EA          move.b     #$1, -$3016(a5)
00005446  42 6D D7 B8                clr.w      -$2848(a5)
0000544A  60 00 06 12                bra.w      $5a5e
0000544E  42 6D D7 B8                clr.w      -$2848(a5)
00005452  60 00 06 0A                bra.w      $5a5e
00005456  0C 6D 00 08 FF E0          cmpi.w     #$8, -$20(a5)
0000545C  66 00 01 BC                bne.w      $561a
00005460  10 2D D7 5D                move.b     -$28a3(a5), d0
00005464  48 80                      ext.w      d0
00005466  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
0000546A  66 04                      bne.b      $5470
0000546C  42 6D D7 B8                clr.w      -$2848(a5)
00005470  10 2D D7 5D                move.b     -$28a3(a5), d0
00005474  48 80                      ext.w      d0
00005476  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
0000547A  66 24                      bne.b      $54a0
0000547C  4A 6D D7 B8                tst.w      -$2848(a5)
00005480  67 08                      beq.b      $548a
00005482  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005488  66 12                      bne.b      $549c
0000548A  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00005490  59 4F                      subq.w     #$4, a7
00005492  A9 75                      .byte      0xa9, 0x75
00005494  20 1F                      move.l     (a7)+, d0
00005496  2B 40 D7 B2                move.l     d0, -$284e(a5)
0000549A  60 04                      bra.b      $54a0
0000549C  42 6D D7 B8                clr.w      -$2848(a5)
000054A0  10 2D D7 5D                move.b     -$28a3(a5), d0
000054A4  48 80                      ext.w      d0
000054A6  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
000054AA  66 54                      bne.b      $5500
000054AC  4A 6D D7 B8                tst.w      -$2848(a5)
000054B0  67 08                      beq.b      $54ba
000054B2  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
000054B8  66 12                      bne.b      $54cc
000054BA  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
000054C0  59 4F                      subq.w     #$4, a7
000054C2  A9 75                      .byte      0xa9, 0x75
000054C4  20 1F                      move.l     (a7)+, d0
000054C6  2B 40 D7 B2                move.l     d0, -$284e(a5)
000054CA  60 34                      bra.b      $5500
000054CC  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
000054D2  66 28                      bne.b      $54fc
000054D4  59 4F                      subq.w     #$4, a7
000054D6  A9 75                      .byte      0xa9, 0x75
000054D8  20 1F                      move.l     (a7)+, d0
000054DA  90 AD D7 B2                sub.l      -$284e(a5), d0
000054DE  72 3C                      moveq      #$3c, d1
000054E0  B0 81                      cmp.l      d1, d0
000054E2  64 12                      bcc.b      $54f6
000054E4  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
000054EA  59 4F                      subq.w     #$4, a7
000054EC  A9 75                      .byte      0xa9, 0x75
000054EE  20 1F                      move.l     (a7)+, d0
000054F0  2B 40 D7 B2                move.l     d0, -$284e(a5)
000054F4  60 0A                      bra.b      $5500
000054F6  42 6D D7 B8                clr.w      -$2848(a5)
000054FA  60 04                      bra.b      $5500
000054FC  42 6D D7 B8                clr.w      -$2848(a5)
00005500  10 2D D7 5D                move.b     -$28a3(a5), d0
00005504  48 80                      ext.w      d0
00005506  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
0000550A  66 34                      bne.b      $5540
0000550C  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005512  66 28                      bne.b      $553c
00005514  59 4F                      subq.w     #$4, a7
00005516  A9 75                      .byte      0xa9, 0x75
00005518  20 1F                      move.l     (a7)+, d0
0000551A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000551E  72 3C                      moveq      #$3c, d1
00005520  B0 81                      cmp.l      d1, d0
00005522  64 12                      bcc.b      $5536
00005524  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
0000552A  59 4F                      subq.w     #$4, a7
0000552C  A9 75                      .byte      0xa9, 0x75
0000552E  20 1F                      move.l     (a7)+, d0
00005530  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005534  60 0A                      bra.b      $5540
00005536  42 6D D7 B8                clr.w      -$2848(a5)
0000553A  60 04                      bra.b      $5540
0000553C  42 6D D7 B8                clr.w      -$2848(a5)
00005540  10 2D D7 5D                move.b     -$28a3(a5), d0
00005544  48 80                      ext.w      d0
00005546  B0 6D E3 52                cmp.w      -$1cae(a5), d0
0000554A  66 34                      bne.b      $5580
0000554C  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005552  66 28                      bne.b      $557c
00005554  59 4F                      subq.w     #$4, a7
00005556  A9 75                      .byte      0xa9, 0x75
00005558  20 1F                      move.l     (a7)+, d0
0000555A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000555E  72 3C                      moveq      #$3c, d1
00005560  B0 81                      cmp.l      d1, d0
00005562  64 12                      bcc.b      $5576
00005564  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
0000556A  59 4F                      subq.w     #$4, a7
0000556C  A9 75                      .byte      0xa9, 0x75
0000556E  20 1F                      move.l     (a7)+, d0
00005570  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005574  60 0A                      bra.b      $5580
00005576  42 6D D7 B8                clr.w      -$2848(a5)
0000557A  60 04                      bra.b      $5580
0000557C  42 6D D7 B8                clr.w      -$2848(a5)
00005580  10 2D D7 5D                move.b     -$28a3(a5), d0
00005584  48 80                      ext.w      d0
00005586  B0 6D E3 56                cmp.w      -$1caa(a5), d0
0000558A  66 00 04 D2                bne.w      $5a5e
0000558E  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005594  66 24                      bne.b      $55ba
00005596  59 4F                      subq.w     #$4, a7
00005598  A9 75                      .byte      0xa9, 0x75
0000559A  20 1F                      move.l     (a7)+, d0
0000559C  90 AD D7 B2                sub.l      -$284e(a5), d0
000055A0  72 3C                      moveq      #$3c, d1
000055A2  B0 81                      cmp.l      d1, d0
000055A4  64 0C                      bcc.b      $55b2
000055A6  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
000055AC  3B 7C 00 01 D7 A8          move.w     #$1, -$2858(a5)
000055B2  42 6D D7 B8                clr.w      -$2848(a5)
000055B6  60 00 04 A6                bra.w      $5a5e
000055BA  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
000055C0  66 24                      bne.b      $55e6
000055C2  59 4F                      subq.w     #$4, a7
000055C4  A9 75                      .byte      0xa9, 0x75
000055C6  20 1F                      move.l     (a7)+, d0
000055C8  90 AD D7 B2                sub.l      -$284e(a5), d0
000055CC  72 3C                      moveq      #$3c, d1
000055CE  B0 81                      cmp.l      d1, d0
000055D0  64 0C                      bcc.b      $55de
000055D2  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
000055D8  3B 7C 00 02 D7 A8          move.w     #$2, -$2858(a5)
000055DE  42 6D D7 B8                clr.w      -$2848(a5)
000055E2  60 00 04 7A                bra.w      $5a5e
000055E6  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
000055EC  66 24                      bne.b      $5612
000055EE  59 4F                      subq.w     #$4, a7
000055F0  A9 75                      .byte      0xa9, 0x75
000055F2  20 1F                      move.l     (a7)+, d0
000055F4  90 AD D7 B2                sub.l      -$284e(a5), d0
000055F8  72 3C                      moveq      #$3c, d1
000055FA  B0 81                      cmp.l      d1, d0
000055FC  64 0C                      bcc.b      $560a
000055FE  1B 7C 00 01 D7 AA          move.b     #$1, -$2856(a5)
00005604  3B 7C 00 03 D7 A8          move.w     #$3, -$2858(a5)
0000560A  42 6D D7 B8                clr.w      -$2848(a5)
0000560E  60 00 04 4E                bra.w      $5a5e
00005612  42 6D D7 B8                clr.w      -$2848(a5)
00005616  60 00 04 46                bra.w      $5a5e
0000561A  0C 6D 00 09 FF E0          cmpi.w     #$9, -$20(a5)
00005620  66 00 01 42                bne.w      $5764
00005624  10 2D D7 5D                move.b     -$28a3(a5), d0
00005628  48 80                      ext.w      d0
0000562A  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
0000562E  66 04                      bne.b      $5634
00005630  42 6D D7 B8                clr.w      -$2848(a5)
00005634  10 2D D7 5D                move.b     -$28a3(a5), d0
00005638  48 80                      ext.w      d0
0000563A  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
0000563E  66 04                      bne.b      $5644
00005640  42 6D D7 B8                clr.w      -$2848(a5)
00005644  10 2D D7 5D                move.b     -$28a3(a5), d0
00005648  48 80                      ext.w      d0
0000564A  B0 6D E3 52                cmp.w      -$1cae(a5), d0
0000564E  66 04                      bne.b      $5654
00005650  42 6D D7 B8                clr.w      -$2848(a5)
00005654  10 2D D7 5D                move.b     -$28a3(a5), d0
00005658  48 80                      ext.w      d0
0000565A  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
0000565E  66 2E                      bne.b      $568e
00005660  0C 6D 00 0A D7 B8          cmpi.w     #$a, -$2848(a5)
00005666  66 22                      bne.b      $568a
00005668  59 4F                      subq.w     #$4, a7
0000566A  A9 75                      .byte      0xa9, 0x75
0000566C  20 1F                      move.l     (a7)+, d0
0000566E  90 AD D7 B2                sub.l      -$284e(a5), d0
00005672  72 3C                      moveq      #$3c, d1
00005674  B0 81                      cmp.l      d1, d0
00005676  64 0C                      bcc.b      $5684
00005678  4E B9 00 00 89 F2          jsr        $89f2.l
0000567E  1B 7C 00 01 D0 62          move.b     #$1, -$2f9e(a5)
00005684  42 6D D7 B8                clr.w      -$2848(a5)
00005688  60 04                      bra.b      $568e
0000568A  42 6D D7 B8                clr.w      -$2848(a5)
0000568E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005692  48 80                      ext.w      d0
00005694  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00005698  66 00 00 86                bne.w      $5720
0000569C  4A 6D D7 B8                tst.w      -$2848(a5)
000056A0  66 12                      bne.b      $56b4
000056A2  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
000056A8  59 4F                      subq.w     #$4, a7
000056AA  A9 75                      .byte      0xa9, 0x75
000056AC  20 1F                      move.l     (a7)+, d0
000056AE  2B 40 D7 B2                move.l     d0, -$284e(a5)
000056B2  60 6C                      bra.b      $5720
000056B4  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
000056BA  66 28                      bne.b      $56e4
000056BC  59 4F                      subq.w     #$4, a7
000056BE  A9 75                      .byte      0xa9, 0x75
000056C0  20 1F                      move.l     (a7)+, d0
000056C2  90 AD D7 B2                sub.l      -$284e(a5), d0
000056C6  72 3C                      moveq      #$3c, d1
000056C8  B0 81                      cmp.l      d1, d0
000056CA  64 12                      bcc.b      $56de
000056CC  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
000056D2  59 4F                      subq.w     #$4, a7
000056D4  A9 75                      .byte      0xa9, 0x75
000056D6  20 1F                      move.l     (a7)+, d0
000056D8  2B 40 D7 B2                move.l     d0, -$284e(a5)
000056DC  60 42                      bra.b      $5720
000056DE  42 6D D7 B8                clr.w      -$2848(a5)
000056E2  60 3C                      bra.b      $5720
000056E4  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
000056EA  67 08                      beq.b      $56f4
000056EC  0C 6D 00 0A D7 B8          cmpi.w     #$a, -$2848(a5)
000056F2  66 28                      bne.b      $571c
000056F4  59 4F                      subq.w     #$4, a7
000056F6  A9 75                      .byte      0xa9, 0x75
000056F8  20 1F                      move.l     (a7)+, d0
000056FA  90 AD D7 B2                sub.l      -$284e(a5), d0
000056FE  72 3C                      moveq      #$3c, d1
00005700  B0 81                      cmp.l      d1, d0
00005702  64 12                      bcc.b      $5716
00005704  3B 7C 00 0A D7 B8          move.w     #$a, -$2848(a5)
0000570A  59 4F                      subq.w     #$4, a7
0000570C  A9 75                      .byte      0xa9, 0x75
0000570E  20 1F                      move.l     (a7)+, d0
00005710  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005714  60 0A                      bra.b      $5720
00005716  42 6D D7 B8                clr.w      -$2848(a5)
0000571A  60 04                      bra.b      $5720
0000571C  42 6D D7 B8                clr.w      -$2848(a5)
00005720  10 2D D7 5D                move.b     -$28a3(a5), d0
00005724  48 80                      ext.w      d0
00005726  B0 6D E3 56                cmp.w      -$1caa(a5), d0
0000572A  66 00 03 32                bne.w      $5a5e
0000572E  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005734  67 08                      beq.b      $573e
00005736  0C 6D 00 0A D7 B8          cmpi.w     #$a, -$2848(a5)
0000573C  66 1E                      bne.b      $575c
0000573E  59 4F                      subq.w     #$4, a7
00005740  A9 75                      .byte      0xa9, 0x75
00005742  20 1F                      move.l     (a7)+, d0
00005744  90 AD D7 B2                sub.l      -$284e(a5), d0
00005748  72 3C                      moveq      #$3c, d1
0000574A  B0 81                      cmp.l      d1, d0
0000574C  64 06                      bcc.b      $5754
0000574E  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005754  42 6D D7 B8                clr.w      -$2848(a5)
00005758  60 00 03 04                bra.w      $5a5e
0000575C  42 6D D7 B8                clr.w      -$2848(a5)
00005760  60 00 02 FC                bra.w      $5a5e
00005764  0C 6D 00 0A FF E0          cmpi.w     #$a, -$20(a5)
0000576A  66 00 01 30                bne.w      $589c
0000576E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005772  48 80                      ext.w      d0
00005774  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005778  66 04                      bne.b      $577e
0000577A  42 6D D7 B8                clr.w      -$2848(a5)
0000577E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005782  48 80                      ext.w      d0
00005784  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005788  66 04                      bne.b      $578e
0000578A  42 6D D7 B8                clr.w      -$2848(a5)
0000578E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005792  48 80                      ext.w      d0
00005794  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005798  66 04                      bne.b      $579e
0000579A  42 6D D7 B8                clr.w      -$2848(a5)
0000579E  10 2D D7 5D                move.b     -$28a3(a5), d0
000057A2  48 80                      ext.w      d0
000057A4  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
000057A8  66 7C                      bne.b      $5826
000057AA  4A 6D D7 B8                tst.w      -$2848(a5)
000057AE  66 12                      bne.b      $57c2
000057B0  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
000057B6  59 4F                      subq.w     #$4, a7
000057B8  A9 75                      .byte      0xa9, 0x75
000057BA  20 1F                      move.l     (a7)+, d0
000057BC  2B 40 D7 B2                move.l     d0, -$284e(a5)
000057C0  60 64                      bra.b      $5826
000057C2  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
000057C8  66 28                      bne.b      $57f2
000057CA  59 4F                      subq.w     #$4, a7
000057CC  A9 75                      .byte      0xa9, 0x75
000057CE  20 1F                      move.l     (a7)+, d0
000057D0  90 AD D7 B2                sub.l      -$284e(a5), d0
000057D4  72 3C                      moveq      #$3c, d1
000057D6  B0 81                      cmp.l      d1, d0
000057D8  64 12                      bcc.b      $57ec
000057DA  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
000057E0  59 4F                      subq.w     #$4, a7
000057E2  A9 75                      .byte      0xa9, 0x75
000057E4  20 1F                      move.l     (a7)+, d0
000057E6  2B 40 D7 B2                move.l     d0, -$284e(a5)
000057EA  60 3A                      bra.b      $5826
000057EC  42 6D D7 B8                clr.w      -$2848(a5)
000057F0  60 34                      bra.b      $5826
000057F2  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
000057F8  66 28                      bne.b      $5822
000057FA  59 4F                      subq.w     #$4, a7
000057FC  A9 75                      .byte      0xa9, 0x75
000057FE  20 1F                      move.l     (a7)+, d0
00005800  90 AD D7 B2                sub.l      -$284e(a5), d0
00005804  72 3C                      moveq      #$3c, d1
00005806  B0 81                      cmp.l      d1, d0
00005808  64 12                      bcc.b      $581c
0000580A  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005810  59 4F                      subq.w     #$4, a7
00005812  A9 75                      .byte      0xa9, 0x75
00005814  20 1F                      move.l     (a7)+, d0
00005816  2B 40 D7 B2                move.l     d0, -$284e(a5)
0000581A  60 0A                      bra.b      $5826
0000581C  42 6D D7 B8                clr.w      -$2848(a5)
00005820  60 04                      bra.b      $5826
00005822  42 6D D7 B8                clr.w      -$2848(a5)
00005826  10 2D D7 5D                move.b     -$28a3(a5), d0
0000582A  48 80                      ext.w      d0
0000582C  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005830  66 28                      bne.b      $585a
00005832  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005838  66 1C                      bne.b      $5856
0000583A  59 4F                      subq.w     #$4, a7
0000583C  A9 75                      .byte      0xa9, 0x75
0000583E  20 1F                      move.l     (a7)+, d0
00005840  90 AD D7 B2                sub.l      -$284e(a5), d0
00005844  72 3C                      moveq      #$3c, d1
00005846  B0 81                      cmp.l      d1, d0
00005848  64 06                      bcc.b      $5850
0000584A  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005850  42 6D D7 B8                clr.w      -$2848(a5)
00005854  60 04                      bra.b      $585a
00005856  42 6D D7 B8                clr.w      -$2848(a5)
0000585A  10 2D D7 5D                move.b     -$28a3(a5), d0
0000585E  48 80                      ext.w      d0
00005860  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005864  66 00 01 F8                bne.w      $5a5e
00005868  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
0000586E  66 24                      bne.b      $5894
00005870  59 4F                      subq.w     #$4, a7
00005872  A9 75                      .byte      0xa9, 0x75
00005874  20 1F                      move.l     (a7)+, d0
00005876  90 AD D7 B2                sub.l      -$284e(a5), d0
0000587A  72 3C                      moveq      #$3c, d1
0000587C  B0 81                      cmp.l      d1, d0
0000587E  64 0C                      bcc.b      $588c
00005880  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005886  1B 7C 00 01 D7 C8          move.b     #$1, -$2838(a5)
0000588C  42 6D D7 B8                clr.w      -$2848(a5)
00005890  60 00 01 CC                bra.w      $5a5e
00005894  42 6D D7 B8                clr.w      -$2848(a5)
00005898  60 00 01 C4                bra.w      $5a5e
0000589C  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
000058A2  66 00 01 BA                bne.w      $5a5e
000058A6  10 2D D7 5D                move.b     -$28a3(a5), d0
000058AA  48 80                      ext.w      d0
000058AC  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
000058B0  66 04                      bne.b      $58b6
000058B2  42 6D D7 B8                clr.w      -$2848(a5)
000058B6  10 2D D7 5D                move.b     -$28a3(a5), d0
000058BA  48 80                      ext.w      d0
000058BC  B0 6D E3 56                cmp.w      -$1caa(a5), d0
000058C0  66 04                      bne.b      $58c6
000058C2  42 6D D7 B8                clr.w      -$2848(a5)
000058C6  10 2D D7 5D                move.b     -$28a3(a5), d0
000058CA  48 80                      ext.w      d0
000058CC  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
000058D0  66 4C                      bne.b      $591e
000058D2  4A 6D D7 B8                tst.w      -$2848(a5)
000058D6  66 12                      bne.b      $58ea
000058D8  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
000058DE  59 4F                      subq.w     #$4, a7
000058E0  A9 75                      .byte      0xa9, 0x75
000058E2  20 1F                      move.l     (a7)+, d0
000058E4  2B 40 D7 B2                move.l     d0, -$284e(a5)
000058E8  60 34                      bra.b      $591e
000058EA  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
000058F0  66 28                      bne.b      $591a
000058F2  59 4F                      subq.w     #$4, a7
000058F4  A9 75                      .byte      0xa9, 0x75
000058F6  20 1F                      move.l     (a7)+, d0
000058F8  90 AD D7 B2                sub.l      -$284e(a5), d0
000058FC  72 3C                      moveq      #$3c, d1
000058FE  B0 81                      cmp.l      d1, d0
00005900  64 12                      bcc.b      $5914
00005902  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005908  59 4F                      subq.w     #$4, a7
0000590A  A9 75                      .byte      0xa9, 0x75
0000590C  20 1F                      move.l     (a7)+, d0
0000590E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005912  60 0A                      bra.b      $591e
00005914  42 6D D7 B8                clr.w      -$2848(a5)
00005918  60 04                      bra.b      $591e
0000591A  42 6D D7 B8                clr.w      -$2848(a5)
0000591E  10 2D D7 5D                move.b     -$28a3(a5), d0
00005922  48 80                      ext.w      d0
00005924  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005928  66 4C                      bne.b      $5976
0000592A  4A 6D D7 B8                tst.w      -$2848(a5)
0000592E  66 12                      bne.b      $5942
00005930  3B 7C 00 03 D7 B8          move.w     #$3, -$2848(a5)
00005936  59 4F                      subq.w     #$4, a7
00005938  A9 75                      .byte      0xa9, 0x75
0000593A  20 1F                      move.l     (a7)+, d0
0000593C  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005940  60 34                      bra.b      $5976
00005942  0C 6D 00 03 D7 B8          cmpi.w     #$3, -$2848(a5)
00005948  66 28                      bne.b      $5972
0000594A  59 4F                      subq.w     #$4, a7
0000594C  A9 75                      .byte      0xa9, 0x75
0000594E  20 1F                      move.l     (a7)+, d0
00005950  90 AD D7 B2                sub.l      -$284e(a5), d0
00005954  72 3C                      moveq      #$3c, d1
00005956  B0 81                      cmp.l      d1, d0
00005958  64 12                      bcc.b      $596c
0000595A  3B 7C 00 04 D7 B8          move.w     #$4, -$2848(a5)
00005960  59 4F                      subq.w     #$4, a7
00005962  A9 75                      .byte      0xa9, 0x75
00005964  20 1F                      move.l     (a7)+, d0
00005966  2B 40 D7 B2                move.l     d0, -$284e(a5)
0000596A  60 0A                      bra.b      $5976
0000596C  42 6D D7 B8                clr.w      -$2848(a5)
00005970  60 04                      bra.b      $5976
00005972  42 6D D7 B8                clr.w      -$2848(a5)
00005976  10 2D D7 5D                move.b     -$28a3(a5), d0
0000597A  48 80                      ext.w      d0
0000597C  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005980  66 4C                      bne.b      $59ce
00005982  4A 6D D7 B8                tst.w      -$2848(a5)
00005986  66 12                      bne.b      $599a
00005988  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
0000598E  59 4F                      subq.w     #$4, a7
00005990  A9 75                      .byte      0xa9, 0x75
00005992  20 1F                      move.l     (a7)+, d0
00005994  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005998  60 34                      bra.b      $59ce
0000599A  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
000059A0  66 28                      bne.b      $59ca
000059A2  59 4F                      subq.w     #$4, a7
000059A4  A9 75                      .byte      0xa9, 0x75
000059A6  20 1F                      move.l     (a7)+, d0
000059A8  90 AD D7 B2                sub.l      -$284e(a5), d0
000059AC  72 3C                      moveq      #$3c, d1
000059AE  B0 81                      cmp.l      d1, d0
000059B0  64 12                      bcc.b      $59c4
000059B2  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
000059B8  59 4F                      subq.w     #$4, a7
000059BA  A9 75                      .byte      0xa9, 0x75
000059BC  20 1F                      move.l     (a7)+, d0
000059BE  2B 40 D7 B2                move.l     d0, -$284e(a5)
000059C2  60 0A                      bra.b      $59ce
000059C4  42 6D D7 B8                clr.w      -$2848(a5)
000059C8  60 04                      bra.b      $59ce
000059CA  42 6D D7 B8                clr.w      -$2848(a5)
000059CE  10 2D D7 5D                move.b     -$28a3(a5), d0
000059D2  48 80                      ext.w      d0
000059D4  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
000059D8  66 00 00 84                bne.w      $5a5e
000059DC  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
000059E2  66 22                      bne.b      $5a06
000059E4  59 4F                      subq.w     #$4, a7
000059E6  A9 75                      .byte      0xa9, 0x75
000059E8  20 1F                      move.l     (a7)+, d0
000059EA  90 AD D7 B2                sub.l      -$284e(a5), d0
000059EE  72 3C                      moveq      #$3c, d1
000059F0  B0 81                      cmp.l      d1, d0
000059F2  64 0C                      bcc.b      $5a00
000059F4  4E B9 00 00 2C 9A          jsr        $2c9a.l
000059FA  1B 7C 00 01 D9 01          move.b     #$1, -$26ff(a5)
00005A00  42 6D D7 B8                clr.w      -$2848(a5)
00005A04  60 58                      bra.b      $5a5e
00005A06  0C 6D 00 04 D7 B8          cmpi.w     #$4, -$2848(a5)
00005A0C  66 22                      bne.b      $5a30
00005A0E  59 4F                      subq.w     #$4, a7
00005A10  A9 75                      .byte      0xa9, 0x75
00005A12  20 1F                      move.l     (a7)+, d0
00005A14  90 AD D7 B2                sub.l      -$284e(a5), d0
00005A18  72 3C                      moveq      #$3c, d1
00005A1A  B0 81                      cmp.l      d1, d0
00005A1C  64 0C                      bcc.b      $5a2a
00005A1E  4E B9 00 00 2C FE          jsr        $2cfe.l
00005A24  1B 7C 00 01 D9 00          move.b     #$1, -$2700(a5)
00005A2A  42 6D D7 B8                clr.w      -$2848(a5)
00005A2E  60 2E                      bra.b      $5a5e
00005A30  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00005A36  66 22                      bne.b      $5a5a
00005A38  59 4F                      subq.w     #$4, a7
00005A3A  A9 75                      .byte      0xa9, 0x75
00005A3C  20 1F                      move.l     (a7)+, d0
00005A3E  90 AD D7 B2                sub.l      -$284e(a5), d0
00005A42  72 3C                      moveq      #$3c, d1
00005A44  B0 81                      cmp.l      d1, d0
00005A46  64 0C                      bcc.b      $5a54
00005A48  4E B9 00 00 2D 62          jsr        $2d62.l
00005A4E  1B 7C 00 01 D8 FF          move.b     #$1, -$2701(a5)
00005A54  42 6D D7 B8                clr.w      -$2848(a5)
00005A58  60 04                      bra.b      $5a5e
00005A5A  42 6D D7 B8                clr.w      -$2848(a5)
00005A5E  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
00005A64  66 00 01 D0                bne.w      $5c36
00005A68  10 2D D7 5D                move.b     -$28a3(a5), d0
00005A6C  48 80                      ext.w      d0
00005A6E  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005A72  66 04                      bne.b      $5a78
00005A74  42 6D D7 B8                clr.w      -$2848(a5)
00005A78  10 2D D7 5D                move.b     -$28a3(a5), d0
00005A7C  48 80                      ext.w      d0
00005A7E  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005A82  66 04                      bne.b      $5a88
00005A84  42 6D D7 B8                clr.w      -$2848(a5)
00005A88  10 2D D7 5D                move.b     -$28a3(a5), d0
00005A8C  48 80                      ext.w      d0
00005A8E  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00005A92  66 7C                      bne.b      $5b10
00005A94  4A 6D D7 B8                tst.w      -$2848(a5)
00005A98  66 12                      bne.b      $5aac
00005A9A  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00005AA0  59 4F                      subq.w     #$4, a7
00005AA2  A9 75                      .byte      0xa9, 0x75
00005AA4  20 1F                      move.l     (a7)+, d0
00005AA6  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005AAA  60 64                      bra.b      $5b10
00005AAC  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005AB2  66 28                      bne.b      $5adc
00005AB4  59 4F                      subq.w     #$4, a7
00005AB6  A9 75                      .byte      0xa9, 0x75
00005AB8  20 1F                      move.l     (a7)+, d0
00005ABA  90 AD D7 B2                sub.l      -$284e(a5), d0
00005ABE  72 3C                      moveq      #$3c, d1
00005AC0  B0 81                      cmp.l      d1, d0
00005AC2  64 12                      bcc.b      $5ad6
00005AC4  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005ACA  59 4F                      subq.w     #$4, a7
00005ACC  A9 75                      .byte      0xa9, 0x75
00005ACE  20 1F                      move.l     (a7)+, d0
00005AD0  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005AD4  60 3A                      bra.b      $5b10
00005AD6  42 6D D7 B8                clr.w      -$2848(a5)
00005ADA  60 34                      bra.b      $5b10
00005ADC  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005AE2  66 28                      bne.b      $5b0c
00005AE4  59 4F                      subq.w     #$4, a7
00005AE6  A9 75                      .byte      0xa9, 0x75
00005AE8  20 1F                      move.l     (a7)+, d0
00005AEA  90 AD D7 B2                sub.l      -$284e(a5), d0
00005AEE  72 3C                      moveq      #$3c, d1
00005AF0  B0 81                      cmp.l      d1, d0
00005AF2  64 12                      bcc.b      $5b06
00005AF4  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005AFA  59 4F                      subq.w     #$4, a7
00005AFC  A9 75                      .byte      0xa9, 0x75
00005AFE  20 1F                      move.l     (a7)+, d0
00005B00  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005B04  60 0A                      bra.b      $5b10
00005B06  42 6D D7 B8                clr.w      -$2848(a5)
00005B0A  60 04                      bra.b      $5b10
00005B0C  42 6D D7 B8                clr.w      -$2848(a5)
00005B10  10 2D D7 5D                move.b     -$28a3(a5), d0
00005B14  48 80                      ext.w      d0
00005B16  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005B1A  66 34                      bne.b      $5b50
00005B1C  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005B22  66 28                      bne.b      $5b4c
00005B24  59 4F                      subq.w     #$4, a7
00005B26  A9 75                      .byte      0xa9, 0x75
00005B28  20 1F                      move.l     (a7)+, d0
00005B2A  90 AD D7 B2                sub.l      -$284e(a5), d0
00005B2E  72 3C                      moveq      #$3c, d1
00005B30  B0 81                      cmp.l      d1, d0
00005B32  64 12                      bcc.b      $5b46
00005B34  3B 7C 00 03 D7 B8          move.w     #$3, -$2848(a5)
00005B3A  59 4F                      subq.w     #$4, a7
00005B3C  A9 75                      .byte      0xa9, 0x75
00005B3E  20 1F                      move.l     (a7)+, d0
00005B40  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005B44  60 0A                      bra.b      $5b50
00005B46  42 6D D7 B8                clr.w      -$2848(a5)
00005B4A  60 04                      bra.b      $5b50
00005B4C  42 6D D7 B8                clr.w      -$2848(a5)
00005B50  10 2D D7 5D                move.b     -$28a3(a5), d0
00005B54  48 80                      ext.w      d0
00005B56  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005B5A  66 34                      bne.b      $5b90
00005B5C  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005B62  66 28                      bne.b      $5b8c
00005B64  59 4F                      subq.w     #$4, a7
00005B66  A9 75                      .byte      0xa9, 0x75
00005B68  20 1F                      move.l     (a7)+, d0
00005B6A  90 AD D7 B2                sub.l      -$284e(a5), d0
00005B6E  72 3C                      moveq      #$3c, d1
00005B70  B0 81                      cmp.l      d1, d0
00005B72  64 12                      bcc.b      $5b86
00005B74  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00005B7A  59 4F                      subq.w     #$4, a7
00005B7C  A9 75                      .byte      0xa9, 0x75
00005B7E  20 1F                      move.l     (a7)+, d0
00005B80  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005B84  60 0A                      bra.b      $5b90
00005B86  42 6D D7 B8                clr.w      -$2848(a5)
00005B8A  60 04                      bra.b      $5b90
00005B8C  42 6D D7 B8                clr.w      -$2848(a5)
00005B90  10 2D D7 5D                move.b     -$28a3(a5), d0
00005B94  48 80                      ext.w      d0
00005B96  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005B9A  66 00 00 9A                bne.w      $5c36
00005B9E  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005BA4  66 1C                      bne.b      $5bc2
00005BA6  59 4F                      subq.w     #$4, a7
00005BA8  A9 75                      .byte      0xa9, 0x75
00005BAA  20 1F                      move.l     (a7)+, d0
00005BAC  90 AD D7 B2                sub.l      -$284e(a5), d0
00005BB0  72 3C                      moveq      #$3c, d1
00005BB2  B0 81                      cmp.l      d1, d0
00005BB4  64 06                      bcc.b      $5bbc
00005BB6  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005BBC  42 6D D7 B8                clr.w      -$2848(a5)
00005BC0  60 74                      bra.b      $5c36
00005BC2  0C 6D 00 03 D7 B8          cmpi.w     #$3, -$2848(a5)
00005BC8  66 30                      bne.b      $5bfa
00005BCA  59 4F                      subq.w     #$4, a7
00005BCC  A9 75                      .byte      0xa9, 0x75
00005BCE  20 1F                      move.l     (a7)+, d0
00005BD0  90 AD D7 B2                sub.l      -$284e(a5), d0
00005BD4  72 3C                      moveq      #$3c, d1
00005BD6  B0 81                      cmp.l      d1, d0
00005BD8  64 1A                      bcc.b      $5bf4
00005BDA  4A 2D CF 5C                tst.b      -$30a4(a5)
00005BDE  66 0E                      bne.b      $5bee
00005BE0  4E B9 00 00 04 BA          jsr        $4ba.l
00005BE6  1B 7C 00 01 CF 5C          move.b     #$1, -$30a4(a5)
00005BEC  60 48                      bra.b      $5c36
00005BEE  42 6D D7 B8                clr.w      -$2848(a5)
00005BF2  60 42                      bra.b      $5c36
00005BF4  42 6D D7 B8                clr.w      -$2848(a5)
00005BF8  60 3C                      bra.b      $5c36
00005BFA  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005C00  66 30                      bne.b      $5c32
00005C02  59 4F                      subq.w     #$4, a7
00005C04  A9 75                      .byte      0xa9, 0x75
00005C06  20 1F                      move.l     (a7)+, d0
00005C08  90 AD D7 B2                sub.l      -$284e(a5), d0
00005C0C  72 3C                      moveq      #$3c, d1
00005C0E  B0 81                      cmp.l      d1, d0
00005C10  64 1A                      bcc.b      $5c2c
00005C12  4A 2D CF 5E                tst.b      -$30a2(a5)
00005C16  66 0E                      bne.b      $5c26
00005C18  4E B9 00 00 04 6A          jsr        $46a.l
00005C1E  1B 7C 00 01 CF 5E          move.b     #$1, -$30a2(a5)
00005C24  60 10                      bra.b      $5c36
00005C26  42 6D D7 B8                clr.w      -$2848(a5)
00005C2A  60 0A                      bra.b      $5c36
00005C2C  42 6D D7 B8                clr.w      -$2848(a5)
00005C30  60 04                      bra.b      $5c36
00005C32  42 6D D7 B8                clr.w      -$2848(a5)
00005C36  0C 6D 00 0E FF E0          cmpi.w     #$e, -$20(a5)
00005C3C  66 00 01 E0                bne.w      $5e1e
00005C40  10 2D D7 5D                move.b     -$28a3(a5), d0
00005C44  48 80                      ext.w      d0
00005C46  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005C4A  66 04                      bne.b      $5c50
00005C4C  42 6D D7 B8                clr.w      -$2848(a5)
00005C50  10 2D D7 5D                move.b     -$28a3(a5), d0
00005C54  48 80                      ext.w      d0
00005C56  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005C5A  66 04                      bne.b      $5c60
00005C5C  42 6D D7 B8                clr.w      -$2848(a5)
00005C60  10 2D D7 5D                move.b     -$28a3(a5), d0
00005C64  48 80                      ext.w      d0
00005C66  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005C6A  66 1C                      bne.b      $5c88
00005C6C  4A 6D D7 B8                tst.w      -$2848(a5)
00005C70  66 12                      bne.b      $5c84
00005C72  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00005C78  59 4F                      subq.w     #$4, a7
00005C7A  A9 75                      .byte      0xa9, 0x75
00005C7C  20 1F                      move.l     (a7)+, d0
00005C7E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005C82  60 04                      bra.b      $5c88
00005C84  42 6D D7 B8                clr.w      -$2848(a5)
00005C88  10 2D D7 5D                move.b     -$28a3(a5), d0
00005C8C  48 80                      ext.w      d0
00005C8E  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00005C92  66 00 00 E4                bne.w      $5d78
00005C96  4A 6D D7 B8                tst.w      -$2848(a5)
00005C9A  66 14                      bne.b      $5cb0
00005C9C  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00005CA2  59 4F                      subq.w     #$4, a7
00005CA4  A9 75                      .byte      0xa9, 0x75
00005CA6  20 1F                      move.l     (a7)+, d0
00005CA8  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005CAC  60 00 00 CA                bra.w      $5d78
00005CB0  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005CB6  66 2C                      bne.b      $5ce4
00005CB8  59 4F                      subq.w     #$4, a7
00005CBA  A9 75                      .byte      0xa9, 0x75
00005CBC  20 1F                      move.l     (a7)+, d0
00005CBE  90 AD D7 B2                sub.l      -$284e(a5), d0
00005CC2  72 3C                      moveq      #$3c, d1
00005CC4  B0 81                      cmp.l      d1, d0
00005CC6  64 14                      bcc.b      $5cdc
00005CC8  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005CCE  59 4F                      subq.w     #$4, a7
00005CD0  A9 75                      .byte      0xa9, 0x75
00005CD2  20 1F                      move.l     (a7)+, d0
00005CD4  2B 40 D7 AE                move.l     d0, -$2852(a5)
00005CD8  60 00 00 9E                bra.w      $5d78
00005CDC  42 6D D7 B8                clr.w      -$2848(a5)
00005CE0  60 00 00 96                bra.w      $5d78
00005CE4  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005CEA  66 28                      bne.b      $5d14
00005CEC  59 4F                      subq.w     #$4, a7
00005CEE  A9 75                      .byte      0xa9, 0x75
00005CF0  20 1F                      move.l     (a7)+, d0
00005CF2  90 AD D7 B2                sub.l      -$284e(a5), d0
00005CF6  72 3C                      moveq      #$3c, d1
00005CF8  B0 81                      cmp.l      d1, d0
00005CFA  64 12                      bcc.b      $5d0e
00005CFC  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00005D02  59 4F                      subq.w     #$4, a7
00005D04  A9 75                      .byte      0xa9, 0x75
00005D06  20 1F                      move.l     (a7)+, d0
00005D08  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005D0C  60 6A                      bra.b      $5d78
00005D0E  42 6D D7 B8                clr.w      -$2848(a5)
00005D12  60 64                      bra.b      $5d78
00005D14  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00005D1A  66 28                      bne.b      $5d44
00005D1C  59 4F                      subq.w     #$4, a7
00005D1E  A9 75                      .byte      0xa9, 0x75
00005D20  20 1F                      move.l     (a7)+, d0
00005D22  90 AD D7 B2                sub.l      -$284e(a5), d0
00005D26  72 3C                      moveq      #$3c, d1
00005D28  B0 81                      cmp.l      d1, d0
00005D2A  64 12                      bcc.b      $5d3e
00005D2C  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
00005D32  59 4F                      subq.w     #$4, a7
00005D34  A9 75                      .byte      0xa9, 0x75
00005D36  20 1F                      move.l     (a7)+, d0
00005D38  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005D3C  60 3A                      bra.b      $5d78
00005D3E  42 6D D7 B8                clr.w      -$2848(a5)
00005D42  60 34                      bra.b      $5d78
00005D44  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
00005D4A  66 28                      bne.b      $5d74
00005D4C  59 4F                      subq.w     #$4, a7
00005D4E  A9 75                      .byte      0xa9, 0x75
00005D50  20 1F                      move.l     (a7)+, d0
00005D52  90 AD D7 B2                sub.l      -$284e(a5), d0
00005D56  72 3C                      moveq      #$3c, d1
00005D58  B0 81                      cmp.l      d1, d0
00005D5A  64 12                      bcc.b      $5d6e
00005D5C  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
00005D62  59 4F                      subq.w     #$4, a7
00005D64  A9 75                      .byte      0xa9, 0x75
00005D66  20 1F                      move.l     (a7)+, d0
00005D68  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005D6C  60 0A                      bra.b      $5d78
00005D6E  42 6D D7 B8                clr.w      -$2848(a5)
00005D72  60 04                      bra.b      $5d78
00005D74  42 6D D7 B8                clr.w      -$2848(a5)
00005D78  10 2D D7 5D                move.b     -$28a3(a5), d0
00005D7C  48 80                      ext.w      d0
00005D7E  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005D82  66 66                      bne.b      $5dea
00005D84  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
00005D8A  66 5A                      bne.b      $5de6
00005D8C  59 4F                      subq.w     #$4, a7
00005D8E  A9 75                      .byte      0xa9, 0x75
00005D90  20 1F                      move.l     (a7)+, d0
00005D92  90 AD D7 B2                sub.l      -$284e(a5), d0
00005D96  72 3C                      moveq      #$3c, d1
00005D98  B0 81                      cmp.l      d1, d0
00005D9A  64 44                      bcc.b      $5de0
00005D9C  2F 2D DE D2                move.l     -$212e(a5), -(a7)
00005DA0  4E B9 00 00 00 90          jsr        $90.l
00005DA6  30 2D DC 84                move.w     -$237c(a5), d0
00005DAA  57 40                      subq.w     #$3, d0
00005DAC  3B 40 CF D6                move.w     d0, -$302a(a5)
00005DB0  70 16                      moveq      #$16, d0
00005DB2  D0 6D CF D6                add.w      -$302a(a5), d0
00005DB6  3B 40 CF DA                move.w     d0, -$3026(a5)
00005DBA  30 2D DC 82                move.w     -$237e(a5), d0
00005DBE  57 40                      subq.w     #$3, d0
00005DC0  3B 40 CF D4                move.w     d0, -$302c(a5)
00005DC4  70 36                      moveq      #$36, d0
00005DC6  D0 6D CF D4                add.w      -$302c(a5), d0
00005DCA  3B 40 CF D8                move.w     d0, -$3028(a5)
00005DCE  1B 7C 00 01 CF E6          move.b     #$1, -$301a(a5)
00005DD4  42 2D FF DA                clr.b      -$26(a5)
00005DD8  A9 75                      .byte      0xa9, 0x75
00005DDA  20 1F                      move.l     (a7)+, d0
00005DDC  2B 40 CF D0                move.l     d0, -$3030(a5)
00005DE0  42 6D D7 B8                clr.w      -$2848(a5)
00005DE4  60 04                      bra.b      $5dea
00005DE6  42 6D D7 B8                clr.w      -$2848(a5)
00005DEA  10 2D D7 5D                move.b     -$28a3(a5), d0
00005DEE  48 80                      ext.w      d0
00005DF0  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005DF4  66 28                      bne.b      $5e1e
00005DF6  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005DFC  66 1C                      bne.b      $5e1a
00005DFE  59 4F                      subq.w     #$4, a7
00005E00  A9 75                      .byte      0xa9, 0x75
00005E02  20 1F                      move.l     (a7)+, d0
00005E04  90 AD D7 B2                sub.l      -$284e(a5), d0
00005E08  72 3C                      moveq      #$3c, d1
00005E0A  B0 81                      cmp.l      d1, d0
00005E0C  64 06                      bcc.b      $5e14
00005E0E  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005E14  42 6D D7 B8                clr.w      -$2848(a5)
00005E18  60 04                      bra.b      $5e1e
00005E1A  42 6D D7 B8                clr.w      -$2848(a5)
00005E1E  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00005E24  66 00 01 70                bne.w      $5f96
00005E28  10 2D D7 5D                move.b     -$28a3(a5), d0
00005E2C  48 80                      ext.w      d0
00005E2E  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005E32  66 04                      bne.b      $5e38
00005E34  42 6D D7 B8                clr.w      -$2848(a5)
00005E38  10 2D D7 5D                move.b     -$28a3(a5), d0
00005E3C  48 80                      ext.w      d0
00005E3E  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005E42  66 1C                      bne.b      $5e60
00005E44  4A 6D D7 B8                tst.w      -$2848(a5)
00005E48  66 12                      bne.b      $5e5c
00005E4A  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00005E50  59 4F                      subq.w     #$4, a7
00005E52  A9 75                      .byte      0xa9, 0x75
00005E54  20 1F                      move.l     (a7)+, d0
00005E56  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005E5A  60 04                      bra.b      $5e60
00005E5C  42 6D D7 B8                clr.w      -$2848(a5)
00005E60  10 2D D7 5D                move.b     -$28a3(a5), d0
00005E64  48 80                      ext.w      d0
00005E66  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00005E6A  66 4C                      bne.b      $5eb8
00005E6C  4A 6D D7 B8                tst.w      -$2848(a5)
00005E70  66 12                      bne.b      $5e84
00005E72  3B 7C 00 05 D7 B8          move.w     #$5, -$2848(a5)
00005E78  59 4F                      subq.w     #$4, a7
00005E7A  A9 75                      .byte      0xa9, 0x75
00005E7C  20 1F                      move.l     (a7)+, d0
00005E7E  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005E82  60 34                      bra.b      $5eb8
00005E84  0C 6D 00 05 D7 B8          cmpi.w     #$5, -$2848(a5)
00005E8A  66 28                      bne.b      $5eb4
00005E8C  59 4F                      subq.w     #$4, a7
00005E8E  A9 75                      .byte      0xa9, 0x75
00005E90  20 1F                      move.l     (a7)+, d0
00005E92  90 AD D7 B2                sub.l      -$284e(a5), d0
00005E96  72 3C                      moveq      #$3c, d1
00005E98  B0 81                      cmp.l      d1, d0
00005E9A  64 12                      bcc.b      $5eae
00005E9C  3B 7C 00 06 D7 B8          move.w     #$6, -$2848(a5)
00005EA2  59 4F                      subq.w     #$4, a7
00005EA4  A9 75                      .byte      0xa9, 0x75
00005EA6  20 1F                      move.l     (a7)+, d0
00005EA8  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005EAC  60 0A                      bra.b      $5eb8
00005EAE  42 6D D7 B8                clr.w      -$2848(a5)
00005EB2  60 04                      bra.b      $5eb8
00005EB4  42 6D D7 B8                clr.w      -$2848(a5)
00005EB8  10 2D D7 5D                move.b     -$28a3(a5), d0
00005EBC  48 80                      ext.w      d0
00005EBE  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005EC2  66 64                      bne.b      $5f28
00005EC4  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
00005ECA  66 28                      bne.b      $5ef4
00005ECC  59 4F                      subq.w     #$4, a7
00005ECE  A9 75                      .byte      0xa9, 0x75
00005ED0  20 1F                      move.l     (a7)+, d0
00005ED2  90 AD D7 B2                sub.l      -$284e(a5), d0
00005ED6  72 3C                      moveq      #$3c, d1
00005ED8  B0 81                      cmp.l      d1, d0
00005EDA  64 12                      bcc.b      $5eee
00005EDC  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
00005EE2  59 4F                      subq.w     #$4, a7
00005EE4  A9 75                      .byte      0xa9, 0x75
00005EE6  20 1F                      move.l     (a7)+, d0
00005EE8  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005EEC  60 3A                      bra.b      $5f28
00005EEE  42 6D D7 B8                clr.w      -$2848(a5)
00005EF2  60 34                      bra.b      $5f28
00005EF4  0C 6D 00 06 D7 B8          cmpi.w     #$6, -$2848(a5)
00005EFA  66 28                      bne.b      $5f24
00005EFC  59 4F                      subq.w     #$4, a7
00005EFE  A9 75                      .byte      0xa9, 0x75
00005F00  20 1F                      move.l     (a7)+, d0
00005F02  90 AD D7 B2                sub.l      -$284e(a5), d0
00005F06  72 3C                      moveq      #$3c, d1
00005F08  B0 81                      cmp.l      d1, d0
00005F0A  64 12                      bcc.b      $5f1e
00005F0C  3B 7C 00 07 D7 B8          move.w     #$7, -$2848(a5)
00005F12  59 4F                      subq.w     #$4, a7
00005F14  A9 75                      .byte      0xa9, 0x75
00005F16  20 1F                      move.l     (a7)+, d0
00005F18  2B 40 D7 B2                move.l     d0, -$284e(a5)
00005F1C  60 0A                      bra.b      $5f28
00005F1E  42 6D D7 B8                clr.w      -$2848(a5)
00005F22  60 04                      bra.b      $5f28
00005F24  42 6D D7 B8                clr.w      -$2848(a5)
00005F28  10 2D D7 5D                move.b     -$28a3(a5), d0
00005F2C  48 80                      ext.w      d0
00005F2E  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005F32  66 2E                      bne.b      $5f62
00005F34  0C 6D 00 07 D7 B8          cmpi.w     #$7, -$2848(a5)
00005F3A  66 22                      bne.b      $5f5e
00005F3C  59 4F                      subq.w     #$4, a7
00005F3E  A9 75                      .byte      0xa9, 0x75
00005F40  20 1F                      move.l     (a7)+, d0
00005F42  90 AD D7 B2                sub.l      -$284e(a5), d0
00005F46  72 3C                      moveq      #$3c, d1
00005F48  B0 81                      cmp.l      d1, d0
00005F4A  64 0C                      bcc.b      $5f58
00005F4C  4E B9 00 00 29 CE          jsr        $29ce.l
00005F52  1B 7C 00 01 D0 0C          move.b     #$1, -$2ff4(a5)
00005F58  42 6D D7 B8                clr.w      -$2848(a5)
00005F5C  60 04                      bra.b      $5f62
00005F5E  42 6D D7 B8                clr.w      -$2848(a5)
00005F62  10 2D D7 5D                move.b     -$28a3(a5), d0
00005F66  48 80                      ext.w      d0
00005F68  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
00005F6C  66 28                      bne.b      $5f96
00005F6E  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00005F74  66 1C                      bne.b      $5f92
00005F76  59 4F                      subq.w     #$4, a7
00005F78  A9 75                      .byte      0xa9, 0x75
00005F7A  20 1F                      move.l     (a7)+, d0
00005F7C  90 AD D7 B2                sub.l      -$284e(a5), d0
00005F80  72 3C                      moveq      #$3c, d1
00005F82  B0 81                      cmp.l      d1, d0
00005F84  64 06                      bcc.b      $5f8c
00005F86  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
00005F8C  42 6D D7 B8                clr.w      -$2848(a5)
00005F90  60 04                      bra.b      $5f96
00005F92  42 6D D7 B8                clr.w      -$2848(a5)
00005F96  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
00005F9C  66 00 00 D6                bne.w      $6074
00005FA0  10 2D D7 5D                move.b     -$28a3(a5), d0
00005FA4  48 80                      ext.w      d0
00005FA6  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
00005FAA  66 04                      bne.b      $5fb0
00005FAC  42 6D D7 B8                clr.w      -$2848(a5)
00005FB0  10 2D D7 5D                move.b     -$28a3(a5), d0
00005FB4  48 80                      ext.w      d0
00005FB6  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00005FBA  66 04                      bne.b      $5fc0
00005FBC  42 6D D7 B8                clr.w      -$2848(a5)
00005FC0  10 2D D7 5D                move.b     -$28a3(a5), d0
00005FC4  48 80                      ext.w      d0
00005FC6  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00005FCA  66 04                      bne.b      $5fd0
00005FCC  42 6D D7 B8                clr.w      -$2848(a5)
00005FD0  10 2D D7 5D                move.b     -$28a3(a5), d0
00005FD4  48 80                      ext.w      d0
00005FD6  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00005FDA  66 04                      bne.b      $5fe0
00005FDC  42 6D D7 B8                clr.w      -$2848(a5)
00005FE0  10 2D D7 5D                move.b     -$28a3(a5), d0
00005FE4  48 80                      ext.w      d0
00005FE6  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00005FEA  66 54                      bne.b      $6040
00005FEC  4A 6D D7 B8                tst.w      -$2848(a5)
00005FF0  66 12                      bne.b      $6004
00005FF2  3B 7C 00 01 D7 B8          move.w     #$1, -$2848(a5)
00005FF8  59 4F                      subq.w     #$4, a7
00005FFA  A9 75                      .byte      0xa9, 0x75
00005FFC  20 1F                      move.l     (a7)+, d0
00005FFE  2B 40 D7 B2                move.l     d0, -$284e(a5)
00006002  60 3C                      bra.b      $6040
00006004  0C 6D 00 01 D7 B8          cmpi.w     #$1, -$2848(a5)
0000600A  67 08                      beq.b      $6014
0000600C  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00006012  66 28                      bne.b      $603c
00006014  59 4F                      subq.w     #$4, a7
00006016  A9 75                      .byte      0xa9, 0x75
00006018  20 1F                      move.l     (a7)+, d0
0000601A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000601E  72 3C                      moveq      #$3c, d1
00006020  B0 81                      cmp.l      d1, d0
00006022  64 12                      bcc.b      $6036
00006024  3B 7C 00 02 D7 B8          move.w     #$2, -$2848(a5)
0000602A  59 4F                      subq.w     #$4, a7
0000602C  A9 75                      .byte      0xa9, 0x75
0000602E  20 1F                      move.l     (a7)+, d0
00006030  2B 40 D7 B2                move.l     d0, -$284e(a5)
00006034  60 0A                      bra.b      $6040
00006036  42 6D D7 B8                clr.w      -$2848(a5)
0000603A  60 04                      bra.b      $6040
0000603C  42 6D D7 B8                clr.w      -$2848(a5)
00006040  10 2D D7 5D                move.b     -$28a3(a5), d0
00006044  48 80                      ext.w      d0
00006046  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
0000604A  66 28                      bne.b      $6074
0000604C  0C 6D 00 02 D7 B8          cmpi.w     #$2, -$2848(a5)
00006052  66 1C                      bne.b      $6070
00006054  59 4F                      subq.w     #$4, a7
00006056  A9 75                      .byte      0xa9, 0x75
00006058  20 1F                      move.l     (a7)+, d0
0000605A  90 AD D7 B2                sub.l      -$284e(a5), d0
0000605E  72 3C                      moveq      #$3c, d1
00006060  B0 81                      cmp.l      d1, d0
00006062  64 06                      bcc.b      $606a
00006064  1B 7C 00 01 D7 AC          move.b     #$1, -$2854(a5)
0000606A  42 6D D7 B8                clr.w      -$2848(a5)
0000606E  60 04                      bra.b      $6074
00006070  42 6D D7 B8                clr.w      -$2848(a5)
00006074  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
0000607A  66 00 24 48                bne.w      $84c4
0000607E  4A 2D D7 DA                tst.b      -$2826(a5)
00006082  66 00 24 40                bne.w      $84c4
00006086  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
0000608C  66 00 0E 0A                bne.w      $6e98
00006090  10 2D D7 5D                move.b     -$28a3(a5), d0
00006094  48 80                      ext.w      d0
00006096  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
0000609A  66 00 00 E4                bne.w      $6180
0000609E  4A 6D D7 B6                tst.w      -$284a(a5)
000060A2  66 14                      bne.b      $60b8
000060A4  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
000060AA  59 4F                      subq.w     #$4, a7
000060AC  A9 75                      .byte      0xa9, 0x75
000060AE  20 1F                      move.l     (a7)+, d0
000060B0  2B 40 D7 AE                move.l     d0, -$2852(a5)
000060B4  60 00 00 CA                bra.w      $6180
000060B8  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
000060BE  66 2C                      bne.b      $60ec
000060C0  59 4F                      subq.w     #$4, a7
000060C2  A9 75                      .byte      0xa9, 0x75
000060C4  20 1F                      move.l     (a7)+, d0
000060C6  90 AD D7 AE                sub.l      -$2852(a5), d0
000060CA  72 3C                      moveq      #$3c, d1
000060CC  B0 81                      cmp.l      d1, d0
000060CE  64 14                      bcc.b      $60e4
000060D0  3B 7C 00 0F D7 B6          move.w     #$f, -$284a(a5)
000060D6  59 4F                      subq.w     #$4, a7
000060D8  A9 75                      .byte      0xa9, 0x75
000060DA  20 1F                      move.l     (a7)+, d0
000060DC  2B 40 D7 AE                move.l     d0, -$2852(a5)
000060E0  60 00 00 9E                bra.w      $6180
000060E4  42 6D D7 B6                clr.w      -$284a(a5)
000060E8  60 00 00 96                bra.w      $6180
000060EC  0C 6D 00 14 D7 B6          cmpi.w     #$14, -$284a(a5)
000060F2  66 28                      bne.b      $611c
000060F4  59 4F                      subq.w     #$4, a7
000060F6  A9 75                      .byte      0xa9, 0x75
000060F8  20 1F                      move.l     (a7)+, d0
000060FA  90 AD D7 AE                sub.l      -$2852(a5), d0
000060FE  72 3C                      moveq      #$3c, d1
00006100  B0 81                      cmp.l      d1, d0
00006102  64 12                      bcc.b      $6116
00006104  3B 7C 00 15 D7 B6          move.w     #$15, -$284a(a5)
0000610A  59 4F                      subq.w     #$4, a7
0000610C  A9 75                      .byte      0xa9, 0x75
0000610E  20 1F                      move.l     (a7)+, d0
00006110  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006114  60 6A                      bra.b      $6180
00006116  42 6D D7 B6                clr.w      -$284a(a5)
0000611A  60 64                      bra.b      $6180
0000611C  0C 6D 00 19 D7 B6          cmpi.w     #$19, -$284a(a5)
00006122  66 28                      bne.b      $614c
00006124  59 4F                      subq.w     #$4, a7
00006126  A9 75                      .byte      0xa9, 0x75
00006128  20 1F                      move.l     (a7)+, d0
0000612A  90 AD D7 AE                sub.l      -$2852(a5), d0
0000612E  72 3C                      moveq      #$3c, d1
00006130  B0 81                      cmp.l      d1, d0
00006132  64 12                      bcc.b      $6146
00006134  3B 7C 00 23 D7 B6          move.w     #$23, -$284a(a5)
0000613A  59 4F                      subq.w     #$4, a7
0000613C  A9 75                      .byte      0xa9, 0x75
0000613E  20 1F                      move.l     (a7)+, d0
00006140  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006144  60 3A                      bra.b      $6180
00006146  42 6D D7 B6                clr.w      -$284a(a5)
0000614A  60 34                      bra.b      $6180
0000614C  0C 6D 00 23 D7 B6          cmpi.w     #$23, -$284a(a5)
00006152  66 28                      bne.b      $617c
00006154  59 4F                      subq.w     #$4, a7
00006156  A9 75                      .byte      0xa9, 0x75
00006158  20 1F                      move.l     (a7)+, d0
0000615A  90 AD D7 AE                sub.l      -$2852(a5), d0
0000615E  72 3C                      moveq      #$3c, d1
00006160  B0 81                      cmp.l      d1, d0
00006162  64 12                      bcc.b      $6176
00006164  3B 7C 00 24 D7 B6          move.w     #$24, -$284a(a5)
0000616A  59 4F                      subq.w     #$4, a7
0000616C  A9 75                      .byte      0xa9, 0x75
0000616E  20 1F                      move.l     (a7)+, d0
00006170  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006174  60 0A                      bra.b      $6180
00006176  42 6D D7 B6                clr.w      -$284a(a5)
0000617A  60 04                      bra.b      $6180
0000617C  42 6D D7 B6                clr.w      -$284a(a5)
00006180  10 2D D7 5D                move.b     -$28a3(a5), d0
00006184  48 80                      ext.w      d0
00006186  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
0000618A  66 00 00 B8                bne.w      $6244
0000618E  4A 6D D7 B6                tst.w      -$284a(a5)
00006192  66 14                      bne.b      $61a8
00006194  3B 7C 00 19 D7 B6          move.w     #$19, -$284a(a5)
0000619A  59 4F                      subq.w     #$4, a7
0000619C  A9 75                      .byte      0xa9, 0x75
0000619E  20 1F                      move.l     (a7)+, d0
000061A0  2B 40 D7 AE                move.l     d0, -$2852(a5)
000061A4  60 00 00 9E                bra.w      $6244
000061A8  0C 6D 00 0F D7 B6          cmpi.w     #$f, -$284a(a5)
000061AE  66 28                      bne.b      $61d8
000061B0  59 4F                      subq.w     #$4, a7
000061B2  A9 75                      .byte      0xa9, 0x75
000061B4  20 1F                      move.l     (a7)+, d0
000061B6  90 AD D7 AE                sub.l      -$2852(a5), d0
000061BA  72 3C                      moveq      #$3c, d1
000061BC  B0 81                      cmp.l      d1, d0
000061BE  64 12                      bcc.b      $61d2
000061C0  3B 7C 00 3C D7 B6          move.w     #$3c, -$284a(a5)
000061C6  59 4F                      subq.w     #$4, a7
000061C8  A9 75                      .byte      0xa9, 0x75
000061CA  20 1F                      move.l     (a7)+, d0
000061CC  2B 40 D7 AE                move.l     d0, -$2852(a5)
000061D0  60 72                      bra.b      $6244
000061D2  42 6D D7 B6                clr.w      -$284a(a5)
000061D6  60 6C                      bra.b      $6244
000061D8  0C 6D 00 19 D7 B6          cmpi.w     #$19, -$284a(a5)
000061DE  66 28                      bne.b      $6208
000061E0  59 4F                      subq.w     #$4, a7
000061E2  A9 75                      .byte      0xa9, 0x75
000061E4  20 1F                      move.l     (a7)+, d0
000061E6  90 AD D7 AE                sub.l      -$2852(a5), d0
000061EA  72 3C                      moveq      #$3c, d1
000061EC  B0 81                      cmp.l      d1, d0
000061EE  64 12                      bcc.b      $6202
000061F0  3B 7C 00 1A D7 B6          move.w     #$1a, -$284a(a5)
000061F6  59 4F                      subq.w     #$4, a7
000061F8  A9 75                      .byte      0xa9, 0x75
000061FA  20 1F                      move.l     (a7)+, d0
000061FC  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006200  60 42                      bra.b      $6244
00006202  42 6D D7 B6                clr.w      -$284a(a5)
00006206  60 3C                      bra.b      $6244
00006208  0C 6D 00 1A D7 B6          cmpi.w     #$1a, -$284a(a5)
0000620E  67 08                      beq.b      $6218
00006210  0C 6D 00 37 D7 B6          cmpi.w     #$37, -$284a(a5)
00006216  66 28                      bne.b      $6240
00006218  59 4F                      subq.w     #$4, a7
0000621A  A9 75                      .byte      0xa9, 0x75
0000621C  20 1F                      move.l     (a7)+, d0
0000621E  90 AD D7 AE                sub.l      -$2852(a5), d0
00006222  72 3C                      moveq      #$3c, d1
00006224  B0 81                      cmp.l      d1, d0
00006226  64 12                      bcc.b      $623a
00006228  3B 7C 00 37 D7 B6          move.w     #$37, -$284a(a5)
0000622E  59 4F                      subq.w     #$4, a7
00006230  A9 75                      .byte      0xa9, 0x75
00006232  20 1F                      move.l     (a7)+, d0
00006234  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006238  60 0A                      bra.b      $6244
0000623A  42 6D D7 B6                clr.w      -$284a(a5)
0000623E  60 04                      bra.b      $6244
00006240  42 6D D7 B6                clr.w      -$284a(a5)
00006244  10 2D D7 5D                move.b     -$28a3(a5), d0
00006248  48 80                      ext.w      d0
0000624A  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000624E  66 00 00 CA                bne.w      $631a
00006252  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00006258  66 2C                      bne.b      $6286
0000625A  59 4F                      subq.w     #$4, a7
0000625C  A9 75                      .byte      0xa9, 0x75
0000625E  20 1F                      move.l     (a7)+, d0
00006260  90 AD D7 AE                sub.l      -$2852(a5), d0
00006264  72 3C                      moveq      #$3c, d1
00006266  B0 81                      cmp.l      d1, d0
00006268  64 14                      bcc.b      $627e
0000626A  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
00006270  59 4F                      subq.w     #$4, a7
00006272  A9 75                      .byte      0xa9, 0x75
00006274  20 1F                      move.l     (a7)+, d0
00006276  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000627A  60 00 00 9E                bra.w      $631a
0000627E  42 6D D7 B6                clr.w      -$284a(a5)
00006282  60 00 00 96                bra.w      $631a
00006286  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
0000628C  66 28                      bne.b      $62b6
0000628E  59 4F                      subq.w     #$4, a7
00006290  A9 75                      .byte      0xa9, 0x75
00006292  20 1F                      move.l     (a7)+, d0
00006294  90 AD D7 AE                sub.l      -$2852(a5), d0
00006298  72 3C                      moveq      #$3c, d1
0000629A  B0 81                      cmp.l      d1, d0
0000629C  64 12                      bcc.b      $62b0
0000629E  3B 7C 00 14 D7 B6          move.w     #$14, -$284a(a5)
000062A4  59 4F                      subq.w     #$4, a7
000062A6  A9 75                      .byte      0xa9, 0x75
000062A8  20 1F                      move.l     (a7)+, d0
000062AA  2B 40 D7 AE                move.l     d0, -$2852(a5)
000062AE  60 6A                      bra.b      $631a
000062B0  42 6D D7 B6                clr.w      -$284a(a5)
000062B4  60 64                      bra.b      $631a
000062B6  0C 6D 00 0F D7 B6          cmpi.w     #$f, -$284a(a5)
000062BC  66 28                      bne.b      $62e6
000062BE  59 4F                      subq.w     #$4, a7
000062C0  A9 75                      .byte      0xa9, 0x75
000062C2  20 1F                      move.l     (a7)+, d0
000062C4  90 AD D7 AE                sub.l      -$2852(a5), d0
000062C8  72 3C                      moveq      #$3c, d1
000062CA  B0 81                      cmp.l      d1, d0
000062CC  64 12                      bcc.b      $62e0
000062CE  3B 7C 00 32 D7 B6          move.w     #$32, -$284a(a5)
000062D4  59 4F                      subq.w     #$4, a7
000062D6  A9 75                      .byte      0xa9, 0x75
000062D8  20 1F                      move.l     (a7)+, d0
000062DA  2B 40 D7 AE                move.l     d0, -$2852(a5)
000062DE  60 3A                      bra.b      $631a
000062E0  42 6D D7 B6                clr.w      -$284a(a5)
000062E4  60 34                      bra.b      $631a
000062E6  0C 6D 00 1A D7 B6          cmpi.w     #$1a, -$284a(a5)
000062EC  66 28                      bne.b      $6316
000062EE  59 4F                      subq.w     #$4, a7
000062F0  A9 75                      .byte      0xa9, 0x75
000062F2  20 1F                      move.l     (a7)+, d0
000062F4  90 AD D7 AE                sub.l      -$2852(a5), d0
000062F8  72 3C                      moveq      #$3c, d1
000062FA  B0 81                      cmp.l      d1, d0
000062FC  64 12                      bcc.b      $6310
000062FE  3B 7C 00 1B D7 B6          move.w     #$1b, -$284a(a5)
00006304  59 4F                      subq.w     #$4, a7
00006306  A9 75                      .byte      0xa9, 0x75
00006308  20 1F                      move.l     (a7)+, d0
0000630A  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000630E  60 0A                      bra.b      $631a
00006310  42 6D D7 B6                clr.w      -$284a(a5)
00006314  60 04                      bra.b      $631a
00006316  42 6D D7 B6                clr.w      -$284a(a5)
0000631A  10 2D D7 5D                move.b     -$28a3(a5), d0
0000631E  48 80                      ext.w      d0
00006320  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00006324  66 00 01 54                bne.w      $647a
00006328  4A 6D D7 B6                tst.w      -$284a(a5)
0000632C  66 14                      bne.b      $6342
0000632E  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00006334  59 4F                      subq.w     #$4, a7
00006336  A9 75                      .byte      0xa9, 0x75
00006338  20 1F                      move.l     (a7)+, d0
0000633A  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000633E  60 00 01 3A                bra.w      $647a
00006342  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00006348  66 2C                      bne.b      $6376
0000634A  59 4F                      subq.w     #$4, a7
0000634C  A9 75                      .byte      0xa9, 0x75
0000634E  20 1F                      move.l     (a7)+, d0
00006350  90 AD D7 AE                sub.l      -$2852(a5), d0
00006354  72 3C                      moveq      #$3c, d1
00006356  B0 81                      cmp.l      d1, d0
00006358  64 14                      bcc.b      $636e
0000635A  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00006360  59 4F                      subq.w     #$4, a7
00006362  A9 75                      .byte      0xa9, 0x75
00006364  20 1F                      move.l     (a7)+, d0
00006366  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000636A  60 00 01 0E                bra.w      $647a
0000636E  42 6D D7 B6                clr.w      -$284a(a5)
00006372  60 00 01 06                bra.w      $647a
00006376  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000637C  67 08                      beq.b      $6386
0000637E  0C 6D 00 03 D7 B6          cmpi.w     #$3, -$284a(a5)
00006384  66 2C                      bne.b      $63b2
00006386  59 4F                      subq.w     #$4, a7
00006388  A9 75                      .byte      0xa9, 0x75
0000638A  20 1F                      move.l     (a7)+, d0
0000638C  90 AD D7 AE                sub.l      -$2852(a5), d0
00006390  72 3C                      moveq      #$3c, d1
00006392  B0 81                      cmp.l      d1, d0
00006394  64 14                      bcc.b      $63aa
00006396  3B 7C 00 03 D7 B6          move.w     #$3, -$284a(a5)
0000639C  59 4F                      subq.w     #$4, a7
0000639E  A9 75                      .byte      0xa9, 0x75
000063A0  20 1F                      move.l     (a7)+, d0
000063A2  2B 40 D7 AE                move.l     d0, -$2852(a5)
000063A6  60 00 00 D2                bra.w      $647a
000063AA  42 6D D7 B6                clr.w      -$284a(a5)
000063AE  60 00 00 CA                bra.w      $647a
000063B2  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
000063B8  66 2C                      bne.b      $63e6
000063BA  59 4F                      subq.w     #$4, a7
000063BC  A9 75                      .byte      0xa9, 0x75
000063BE  20 1F                      move.l     (a7)+, d0
000063C0  90 AD D7 AE                sub.l      -$2852(a5), d0
000063C4  72 3C                      moveq      #$3c, d1
000063C6  B0 81                      cmp.l      d1, d0
000063C8  64 14                      bcc.b      $63de
000063CA  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
000063D0  59 4F                      subq.w     #$4, a7
000063D2  A9 75                      .byte      0xa9, 0x75
000063D4  20 1F                      move.l     (a7)+, d0
000063D6  2B 40 D7 AE                move.l     d0, -$2852(a5)
000063DA  60 00 00 9E                bra.w      $647a
000063DE  42 6D D7 B6                clr.w      -$284a(a5)
000063E2  60 00 00 96                bra.w      $647a
000063E6  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
000063EC  66 28                      bne.b      $6416
000063EE  59 4F                      subq.w     #$4, a7
000063F0  A9 75                      .byte      0xa9, 0x75
000063F2  20 1F                      move.l     (a7)+, d0
000063F4  90 AD D7 AE                sub.l      -$2852(a5), d0
000063F8  72 3C                      moveq      #$3c, d1
000063FA  B0 81                      cmp.l      d1, d0
000063FC  64 12                      bcc.b      $6410
000063FE  3B 7C 00 07 D7 B6          move.w     #$7, -$284a(a5)
00006404  59 4F                      subq.w     #$4, a7
00006406  A9 75                      .byte      0xa9, 0x75
00006408  20 1F                      move.l     (a7)+, d0
0000640A  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000640E  60 6A                      bra.b      $647a
00006410  42 6D D7 B6                clr.w      -$284a(a5)
00006414  60 64                      bra.b      $647a
00006416  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
0000641C  66 28                      bne.b      $6446
0000641E  59 4F                      subq.w     #$4, a7
00006420  A9 75                      .byte      0xa9, 0x75
00006422  20 1F                      move.l     (a7)+, d0
00006424  90 AD D7 AE                sub.l      -$2852(a5), d0
00006428  72 3C                      moveq      #$3c, d1
0000642A  B0 81                      cmp.l      d1, d0
0000642C  64 12                      bcc.b      $6440
0000642E  3B 7C 00 0B D7 B6          move.w     #$b, -$284a(a5)
00006434  59 4F                      subq.w     #$4, a7
00006436  A9 75                      .byte      0xa9, 0x75
00006438  20 1F                      move.l     (a7)+, d0
0000643A  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000643E  60 3A                      bra.b      $647a
00006440  42 6D D7 B6                clr.w      -$284a(a5)
00006444  60 34                      bra.b      $647a
00006446  0C 6D 00 0F D7 B6          cmpi.w     #$f, -$284a(a5)
0000644C  66 28                      bne.b      $6476
0000644E  59 4F                      subq.w     #$4, a7
00006450  A9 75                      .byte      0xa9, 0x75
00006452  20 1F                      move.l     (a7)+, d0
00006454  90 AD D7 AE                sub.l      -$2852(a5), d0
00006458  72 3C                      moveq      #$3c, d1
0000645A  B0 81                      cmp.l      d1, d0
0000645C  64 12                      bcc.b      $6470
0000645E  3B 7C 00 10 D7 B6          move.w     #$10, -$284a(a5)
00006464  59 4F                      subq.w     #$4, a7
00006466  A9 75                      .byte      0xa9, 0x75
00006468  20 1F                      move.l     (a7)+, d0
0000646A  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000646E  60 0A                      bra.b      $647a
00006470  42 6D D7 B6                clr.w      -$284a(a5)
00006474  60 04                      bra.b      $647a
00006476  42 6D D7 B6                clr.w      -$284a(a5)
0000647A  10 2D D7 5D                move.b     -$28a3(a5), d0
0000647E  48 80                      ext.w      d0
00006480  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00006484  66 00 03 98                bne.w      $681e
00006488  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000648E  67 08                      beq.b      $6498
00006490  0C 6D 00 03 D7 B6          cmpi.w     #$3, -$284a(a5)
00006496  66 1E                      bne.b      $64b6
00006498  59 4F                      subq.w     #$4, a7
0000649A  A9 75                      .byte      0xa9, 0x75
0000649C  20 1F                      move.l     (a7)+, d0
0000649E  90 AD D7 AE                sub.l      -$2852(a5), d0
000064A2  72 3C                      moveq      #$3c, d1
000064A4  B0 81                      cmp.l      d1, d0
000064A6  64 06                      bcc.b      $64ae
000064A8  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000064AE  42 6D D7 B6                clr.w      -$284a(a5)
000064B2  60 00 03 6A                bra.w      $681e
000064B6  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
000064BC  66 00 00 A2                bne.w      $6560
000064C0  59 4F                      subq.w     #$4, a7
000064C2  A9 75                      .byte      0xa9, 0x75
000064C4  20 1F                      move.l     (a7)+, d0
000064C6  90 AD D7 AE                sub.l      -$2852(a5), d0
000064CA  72 3C                      moveq      #$3c, d1
000064CC  B0 81                      cmp.l      d1, d0
000064CE  64 00 00 88                bcc.w      $6558
000064D2  3B 7C 00 07 FF E2          move.w     #$7, -$1e(a5)
000064D8  48 6D D7 FC                pea.l      -$2804(a5)
000064DC  48 6D D3 F2                pea.l      -$2c0e(a5)
000064E0  3F 3C 07 D6                move.w     #$7d6, -(a7)
000064E4  4E B9 00 00 7E E0          jsr        $7ee0.l
000064EA  48 6D D7 FC                pea.l      -$2804(a5)
000064EE  48 6D D3 E6                pea.l      -$2c1a(a5)
000064F2  3F 3C 09 CA                move.w     #$9ca, -(a7)
000064F6  4E B9 00 00 7E E0          jsr        $7ee0.l
000064FC  48 6D DC 1E                pea.l      -$23e2(a5)
00006500  48 78 00 10                pea.l      $10.w
00006504  2F 3C 00 07 00 3C          move.l     #$7003c, -(a7)
0000650A  A8 A7                      .byte      0xa8, 0xa7
0000650C  3B 7C 00 2C D8 0A          move.w     #$2c, -$27f6(a5)
00006512  3B 7C 00 07 D8 08          move.w     #$7, -$27f8(a5)
00006518  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000651C  4E B9 00 00 00 98          jsr        $98.l
00006522  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006528  3F 3C 0B BE                move.w     #$bbe, -(a7)
0000652C  A8 1F                      .byte      0xa8, 0x1f
0000652E  20 5F                      movea.l    (a7)+, a0
00006530  2B 48 DE CA                move.l     a0, -$2136(a5)
00006534  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000653A  3F 3C 0B C4                move.w     #$bc4, -(a7)
0000653E  A8 1F                      .byte      0xa8, 0x1f
00006540  20 5F                      movea.l    (a7)+, a0
00006542  2B 48 DE C6                move.l     a0, -$213a(a5)
00006546  A9 75                      .byte      0xa9, 0x75
00006548  20 1F                      move.l     (a7)+, d0
0000654A  2B 40 D7 BC                move.l     d0, -$2844(a5)
0000654E  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006554  4F EF 00 0C                lea.l      $c(a7), a7
00006558  42 6D D7 B6                clr.w      -$284a(a5)
0000655C  60 00 02 C0                bra.w      $681e
00006560  0C 6D 00 10 D7 B6          cmpi.w     #$10, -$284a(a5)
00006566  66 00 00 8E                bne.w      $65f6
0000656A  59 4F                      subq.w     #$4, a7
0000656C  A9 75                      .byte      0xa9, 0x75
0000656E  20 1F                      move.l     (a7)+, d0
00006570  90 AD D7 AE                sub.l      -$2852(a5), d0
00006574  72 3C                      moveq      #$3c, d1
00006576  B0 81                      cmp.l      d1, d0
00006578  64 74                      bcc.b      $65ee
0000657A  3B 7C 00 03 FF E2          move.w     #$3, -$1e(a5)
00006580  48 6D D7 FC                pea.l      -$2804(a5)
00006584  48 6D D3 F2                pea.l      -$2c0e(a5)
00006588  3F 3C 07 D2                move.w     #$7d2, -(a7)
0000658C  4E B9 00 00 7E E0          jsr        $7ee0.l
00006592  48 6D D7 FC                pea.l      -$2804(a5)
00006596  48 6D D3 E6                pea.l      -$2c1a(a5)
0000659A  3F 3C 09 C6                move.w     #$9c6, -(a7)
0000659E  4E B9 00 00 7E E0          jsr        $7ee0.l
000065A4  48 6D DC 1E                pea.l      -$23e2(a5)
000065A8  48 78 00 10                pea.l      $10.w
000065AC  2F 3C 00 0A 00 48          move.l     #$a0048, -(a7)
000065B2  A8 A7                      .byte      0xa8, 0xa7
000065B4  3B 7C 00 38 D8 0A          move.w     #$38, -$27f6(a5)
000065BA  3B 7C 00 0A D8 08          move.w     #$a, -$27f8(a5)
000065C0  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000065C4  4E B9 00 00 00 98          jsr        $98.l
000065CA  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000065D0  3F 3C 0B BA                move.w     #$bba, -(a7)
000065D4  A8 1F                      .byte      0xa8, 0x1f
000065D6  20 5F                      movea.l    (a7)+, a0
000065D8  2B 48 DE CA                move.l     a0, -$2136(a5)
000065DC  A9 75                      .byte      0xa9, 0x75
000065DE  20 1F                      move.l     (a7)+, d0
000065E0  2B 40 D7 BC                move.l     d0, -$2844(a5)
000065E4  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
000065EA  4F EF 00 10                lea.l      $10(a7), a7
000065EE  42 6D D7 B6                clr.w      -$284a(a5)
000065F2  60 00 02 2A                bra.w      $681e
000065F6  0C 6D 00 15 D7 B6          cmpi.w     #$15, -$284a(a5)
000065FC  66 00 00 A2                bne.w      $66a0
00006600  59 4F                      subq.w     #$4, a7
00006602  A9 75                      .byte      0xa9, 0x75
00006604  20 1F                      move.l     (a7)+, d0
00006606  90 AD D7 AE                sub.l      -$2852(a5), d0
0000660A  72 3C                      moveq      #$3c, d1
0000660C  B0 81                      cmp.l      d1, d0
0000660E  64 00 00 88                bcc.w      $6698
00006612  3B 7C 00 04 FF E2          move.w     #$4, -$1e(a5)
00006618  48 6D D7 FC                pea.l      -$2804(a5)
0000661C  48 6D D3 F2                pea.l      -$2c0e(a5)
00006620  3F 3C 07 D3                move.w     #$7d3, -(a7)
00006624  4E B9 00 00 7E E0          jsr        $7ee0.l
0000662A  48 6D D7 FC                pea.l      -$2804(a5)
0000662E  48 6D D3 E6                pea.l      -$2c1a(a5)
00006632  3F 3C 09 C7                move.w     #$9c7, -(a7)
00006636  4E B9 00 00 7E E0          jsr        $7ee0.l
0000663C  48 6D DC 1E                pea.l      -$23e2(a5)
00006640  48 78 00 10                pea.l      $10.w
00006644  2F 3C 00 0B 00 40          move.l     #$b0040, -(a7)
0000664A  A8 A7                      .byte      0xa8, 0xa7
0000664C  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
00006652  3B 7C 00 0B D8 08          move.w     #$b, -$27f8(a5)
00006658  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000665C  4E B9 00 00 00 98          jsr        $98.l
00006662  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006668  3F 3C 0B BB                move.w     #$bbb, -(a7)
0000666C  A8 1F                      .byte      0xa8, 0x1f
0000666E  20 5F                      movea.l    (a7)+, a0
00006670  2B 48 DE CA                move.l     a0, -$2136(a5)
00006674  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000667A  3F 3C 0D AD                move.w     #$dad, -(a7)
0000667E  A8 1F                      .byte      0xa8, 0x1f
00006680  20 5F                      movea.l    (a7)+, a0
00006682  2B 48 DE C6                move.l     a0, -$213a(a5)
00006686  A9 75                      .byte      0xa9, 0x75
00006688  20 1F                      move.l     (a7)+, d0
0000668A  2B 40 D7 BC                move.l     d0, -$2844(a5)
0000668E  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006694  4F EF 00 0C                lea.l      $c(a7), a7
00006698  42 6D D7 B6                clr.w      -$284a(a5)
0000669C  60 00 01 80                bra.w      $681e
000066A0  0C 6D 00 1E D7 B6          cmpi.w     #$1e, -$284a(a5)
000066A6  67 08                      beq.b      $66b0
000066A8  0C 6D 00 1F D7 B6          cmpi.w     #$1f, -$284a(a5)
000066AE  66 2C                      bne.b      $66dc
000066B0  59 4F                      subq.w     #$4, a7
000066B2  A9 75                      .byte      0xa9, 0x75
000066B4  20 1F                      move.l     (a7)+, d0
000066B6  90 AD D7 AE                sub.l      -$2852(a5), d0
000066BA  72 3C                      moveq      #$3c, d1
000066BC  B0 81                      cmp.l      d1, d0
000066BE  64 14                      bcc.b      $66d4
000066C0  3B 7C 00 28 D7 B6          move.w     #$28, -$284a(a5)
000066C6  59 4F                      subq.w     #$4, a7
000066C8  A9 75                      .byte      0xa9, 0x75
000066CA  20 1F                      move.l     (a7)+, d0
000066CC  2B 40 D7 AE                move.l     d0, -$2852(a5)
000066D0  60 00 01 4C                bra.w      $681e
000066D4  42 6D D7 B6                clr.w      -$284a(a5)
000066D8  60 00 01 44                bra.w      $681e
000066DC  0C 6D 00 32 D7 B6          cmpi.w     #$32, -$284a(a5)
000066E2  66 00 00 98                bne.w      $677c
000066E6  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
000066EC  66 00 00 8E                bne.w      $677c
000066F0  59 4F                      subq.w     #$4, a7
000066F2  A9 75                      .byte      0xa9, 0x75
000066F4  20 1F                      move.l     (a7)+, d0
000066F6  90 AD D7 AE                sub.l      -$2852(a5), d0
000066FA  72 3C                      moveq      #$3c, d1
000066FC  B0 81                      cmp.l      d1, d0
000066FE  64 74                      bcc.b      $6774
00006700  3B 7C 00 0A FF E2          move.w     #$a, -$1e(a5)
00006706  48 6D D7 FC                pea.l      -$2804(a5)
0000670A  48 6D D3 F2                pea.l      -$2c0e(a5)
0000670E  3F 3C 07 D9                move.w     #$7d9, -(a7)
00006712  4E B9 00 00 7E E0          jsr        $7ee0.l
00006718  48 6D D7 FC                pea.l      -$2804(a5)
0000671C  48 6D D3 E6                pea.l      -$2c1a(a5)
00006720  3F 3C 09 CD                move.w     #$9cd, -(a7)
00006724  4E B9 00 00 7E E0          jsr        $7ee0.l
0000672A  48 6D DC 1E                pea.l      -$23e2(a5)
0000672E  48 78 00 10                pea.l      $10.w
00006732  2F 3C 00 2D 00 3A          move.l     #$2d003a, -(a7)
00006738  A8 A7                      .byte      0xa8, 0xa7
0000673A  3B 7C 00 2A D8 0A          move.w     #$2a, -$27f6(a5)
00006740  3B 7C 00 2D D8 08          move.w     #$2d, -$27f8(a5)
00006746  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000674A  4E B9 00 00 00 98          jsr        $98.l
00006750  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006756  3F 3C 0B C0                move.w     #$bc0, -(a7)
0000675A  A8 1F                      .byte      0xa8, 0x1f
0000675C  20 5F                      movea.l    (a7)+, a0
0000675E  2B 48 DE CA                move.l     a0, -$2136(a5)
00006762  A9 75                      .byte      0xa9, 0x75
00006764  20 1F                      move.l     (a7)+, d0
00006766  2B 40 D7 BC                move.l     d0, -$2844(a5)
0000676A  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006770  4F EF 00 10                lea.l      $10(a7), a7
00006774  42 6D D7 B6                clr.w      -$284a(a5)
00006778  60 00 00 A4                bra.w      $681e
0000677C  0C 6D 00 37 D7 B6          cmpi.w     #$37, -$284a(a5)
00006782  66 00 00 96                bne.w      $681a
00006786  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000678C  66 00 00 8C                bne.w      $681a
00006790  59 4F                      subq.w     #$4, a7
00006792  A9 75                      .byte      0xa9, 0x75
00006794  20 1F                      move.l     (a7)+, d0
00006796  90 AD D7 AE                sub.l      -$2852(a5), d0
0000679A  72 3C                      moveq      #$3c, d1
0000679C  B0 81                      cmp.l      d1, d0
0000679E  64 74                      bcc.b      $6814
000067A0  3B 7C 00 0C FF E2          move.w     #$c, -$1e(a5)
000067A6  48 6D D7 FC                pea.l      -$2804(a5)
000067AA  48 6D D3 F2                pea.l      -$2c0e(a5)
000067AE  3F 3C 07 DB                move.w     #$7db, -(a7)
000067B2  4E B9 00 00 7E E0          jsr        $7ee0.l
000067B8  48 6D D7 FC                pea.l      -$2804(a5)
000067BC  48 6D D3 E6                pea.l      -$2c1a(a5)
000067C0  3F 3C 09 CF                move.w     #$9cf, -(a7)
000067C4  4E B9 00 00 7E E0          jsr        $7ee0.l
000067CA  48 6D DC 1E                pea.l      -$23e2(a5)
000067CE  48 78 00 10                pea.l      $10.w
000067D2  2F 3C 00 0C 00 1C          move.l     #$c001c, -(a7)
000067D8  A8 A7                      .byte      0xa8, 0xa7
000067DA  3B 7C 00 0C D8 0A          move.w     #$c, -$27f6(a5)
000067E0  3B 7C 00 0C D8 08          move.w     #$c, -$27f8(a5)
000067E6  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000067EA  4E B9 00 00 00 98          jsr        $98.l
000067F0  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000067F6  3F 3C 13 8D                move.w     #$138d, -(a7)
000067FA  A8 1F                      .byte      0xa8, 0x1f
000067FC  20 5F                      movea.l    (a7)+, a0
000067FE  2B 48 DE CA                move.l     a0, -$2136(a5)
00006802  A9 75                      .byte      0xa9, 0x75
00006804  20 1F                      move.l     (a7)+, d0
00006806  2B 40 D7 BC                move.l     d0, -$2844(a5)
0000680A  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006810  4F EF 00 10                lea.l      $10(a7), a7
00006814  42 6D D7 B6                clr.w      -$284a(a5)
00006818  60 04                      bra.b      $681e
0000681A  42 6D D7 B6                clr.w      -$284a(a5)
0000681E  10 2D D7 5D                move.b     -$28a3(a5), d0
00006822  48 80                      ext.w      d0
00006824  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00006828  66 00 16 AE                bne.w      $7ed8
0000682C  4A 6D D7 B6                tst.w      -$284a(a5)
00006830  66 1C                      bne.b      $684e
00006832  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00006838  66 14                      bne.b      $684e
0000683A  3B 7C 00 1E D7 B6          move.w     #$1e, -$284a(a5)
00006840  59 4F                      subq.w     #$4, a7
00006842  A9 75                      .byte      0xa9, 0x75
00006844  20 1F                      move.l     (a7)+, d0
00006846  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000684A  60 00 16 8C                bra.w      $7ed8
0000684E  0C 6D 00 03 D7 B6          cmpi.w     #$3, -$284a(a5)
00006854  66 00 00 8E                bne.w      $68e4
00006858  59 4F                      subq.w     #$4, a7
0000685A  A9 75                      .byte      0xa9, 0x75
0000685C  20 1F                      move.l     (a7)+, d0
0000685E  90 AD D7 AE                sub.l      -$2852(a5), d0
00006862  72 3C                      moveq      #$3c, d1
00006864  B0 81                      cmp.l      d1, d0
00006866  64 74                      bcc.b      $68dc
00006868  3B 7C 00 10 FF E2          move.w     #$10, -$1e(a5)
0000686E  48 6D D7 FC                pea.l      -$2804(a5)
00006872  48 6D D3 F2                pea.l      -$2c0e(a5)
00006876  3F 3C 07 DF                move.w     #$7df, -(a7)
0000687A  4E B9 00 00 7E E0          jsr        $7ee0.l
00006880  48 6D D7 FC                pea.l      -$2804(a5)
00006884  48 6D D3 E6                pea.l      -$2c1a(a5)
00006888  3F 3C 09 D3                move.w     #$9d3, -(a7)
0000688C  4E B9 00 00 7E E0          jsr        $7ee0.l
00006892  48 6D DC 1E                pea.l      -$23e2(a5)
00006896  48 78 00 10                pea.l      $10.w
0000689A  2F 3C 00 0C 00 37          move.l     #$c0037, -(a7)
000068A0  A8 A7                      .byte      0xa8, 0xa7
000068A2  3B 7C 00 27 D8 0A          move.w     #$27, -$27f6(a5)
000068A8  3B 7C 00 0C D8 08          move.w     #$c, -$27f8(a5)
000068AE  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000068B2  4E B9 00 00 00 98          jsr        $98.l
000068B8  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000068BE  3F 3C 0B B9                move.w     #$bb9, -(a7)
000068C2  A8 1F                      .byte      0xa8, 0x1f
000068C4  20 5F                      movea.l    (a7)+, a0
000068C6  2B 48 DE CA                move.l     a0, -$2136(a5)
000068CA  A9 75                      .byte      0xa9, 0x75
000068CC  20 1F                      move.l     (a7)+, d0
000068CE  2B 40 D7 BC                move.l     d0, -$2844(a5)
000068D2  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
000068D8  4F EF 00 10                lea.l      $10(a7), a7
000068DC  42 6D D7 B6                clr.w      -$284a(a5)
000068E0  60 00 15 F6                bra.w      $7ed8
000068E4  0C 6D 00 07 D7 B6          cmpi.w     #$7, -$284a(a5)
000068EA  66 2A                      bne.b      $6916
000068EC  59 4F                      subq.w     #$4, a7
000068EE  A9 75                      .byte      0xa9, 0x75
000068F0  20 1F                      move.l     (a7)+, d0
000068F2  90 AD D7 AE                sub.l      -$2852(a5), d0
000068F6  72 3C                      moveq      #$3c, d1
000068F8  B0 81                      cmp.l      d1, d0
000068FA  64 12                      bcc.b      $690e
000068FC  4E B9 00 00 85 5C          jsr        $855c.l
00006902  1B 7C 00 01 D7 56          move.b     #$1, -$28aa(a5)
00006908  1B 7C 00 01 D7 54          move.b     #$1, -$28ac(a5)
0000690E  42 6D D7 B6                clr.w      -$284a(a5)
00006912  60 00 15 C4                bra.w      $7ed8
00006916  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
0000691C  66 00 00 8E                bne.w      $69ac
00006920  59 4F                      subq.w     #$4, a7
00006922  A9 75                      .byte      0xa9, 0x75
00006924  20 1F                      move.l     (a7)+, d0
00006926  90 AD D7 AE                sub.l      -$2852(a5), d0
0000692A  72 3C                      moveq      #$3c, d1
0000692C  B0 81                      cmp.l      d1, d0
0000692E  64 74                      bcc.b      $69a4
00006930  3B 7C 00 02 FF E2          move.w     #$2, -$1e(a5)
00006936  48 6D D7 FC                pea.l      -$2804(a5)
0000693A  48 6D D3 F2                pea.l      -$2c0e(a5)
0000693E  3F 3C 07 D1                move.w     #$7d1, -(a7)
00006942  4E B9 00 00 7E E0          jsr        $7ee0.l
00006948  48 6D D7 FC                pea.l      -$2804(a5)
0000694C  48 6D D3 E6                pea.l      -$2c1a(a5)
00006950  3F 3C 09 C5                move.w     #$9c5, -(a7)
00006954  4E B9 00 00 7E E0          jsr        $7ee0.l
0000695A  48 6D DC 1E                pea.l      -$23e2(a5)
0000695E  48 78 00 10                pea.l      $10.w
00006962  2F 3C 00 14 00 40          move.l     #$140040, -(a7)
00006968  A8 A7                      .byte      0xa8, 0xa7
0000696A  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
00006970  3B 7C 00 14 D8 08          move.w     #$14, -$27f8(a5)
00006976  2F 2D DE AA                move.l     -$2156(a5), -(a7)
0000697A  4E B9 00 00 00 98          jsr        $98.l
00006980  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006986  3F 3C 0B B9                move.w     #$bb9, -(a7)
0000698A  A8 1F                      .byte      0xa8, 0x1f
0000698C  20 5F                      movea.l    (a7)+, a0
0000698E  2B 48 DE CA                move.l     a0, -$2136(a5)
00006992  A9 75                      .byte      0xa9, 0x75
00006994  20 1F                      move.l     (a7)+, d0
00006996  2B 40 D7 BC                move.l     d0, -$2844(a5)
0000699A  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
000069A0  4F EF 00 10                lea.l      $10(a7), a7
000069A4  42 6D D7 B6                clr.w      -$284a(a5)
000069A8  60 00 15 2E                bra.w      $7ed8
000069AC  0C 6D 00 1B D7 B6          cmpi.w     #$1b, -$284a(a5)
000069B2  66 00 00 AC                bne.w      $6a60
000069B6  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
000069BC  66 00 00 A2                bne.w      $6a60
000069C0  59 4F                      subq.w     #$4, a7
000069C2  A9 75                      .byte      0xa9, 0x75
000069C4  20 1F                      move.l     (a7)+, d0
000069C6  90 AD D7 AE                sub.l      -$2852(a5), d0
000069CA  72 3C                      moveq      #$3c, d1
000069CC  B0 81                      cmp.l      d1, d0
000069CE  64 00 00 88                bcc.w      $6a58
000069D2  3B 7C 00 05 FF E2          move.w     #$5, -$1e(a5)
000069D8  48 6D D7 FC                pea.l      -$2804(a5)
000069DC  48 6D D3 F2                pea.l      -$2c0e(a5)
000069E0  3F 3C 07 D4                move.w     #$7d4, -(a7)
000069E4  4E B9 00 00 7E E0          jsr        $7ee0.l
000069EA  48 6D D7 FC                pea.l      -$2804(a5)
000069EE  48 6D D3 E6                pea.l      -$2c1a(a5)
000069F2  3F 3C 09 C8                move.w     #$9c8, -(a7)
000069F6  4E B9 00 00 7E E0          jsr        $7ee0.l
000069FC  48 6D DC 1E                pea.l      -$23e2(a5)
00006A00  48 78 00 10                pea.l      $10.w
00006A04  2F 3C 00 0B 00 45          move.l     #$b0045, -(a7)
00006A0A  A8 A7                      .byte      0xa8, 0xa7
00006A0C  3B 7C 00 35 D8 0A          move.w     #$35, -$27f6(a5)
00006A12  3B 7C 00 0B D8 08          move.w     #$b, -$27f8(a5)
00006A18  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006A1C  4E B9 00 00 00 98          jsr        $98.l
00006A22  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006A28  3F 3C 0D AC                move.w     #$dac, -(a7)
00006A2C  A8 1F                      .byte      0xa8, 0x1f
00006A2E  20 5F                      movea.l    (a7)+, a0
00006A30  2B 48 DE CA                move.l     a0, -$2136(a5)
00006A34  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006A3A  3F 3C 0B BC                move.w     #$bbc, -(a7)
00006A3E  A8 1F                      .byte      0xa8, 0x1f
00006A40  20 5F                      movea.l    (a7)+, a0
00006A42  2B 48 DE C6                move.l     a0, -$213a(a5)
00006A46  A9 75                      .byte      0xa9, 0x75
00006A48  20 1F                      move.l     (a7)+, d0
00006A4A  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006A4E  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006A54  4F EF 00 0C                lea.l      $c(a7), a7
00006A58  42 6D D7 B6                clr.w      -$284a(a5)
00006A5C  60 00 14 7A                bra.w      $7ed8
00006A60  0C 6D 00 1E D7 B6          cmpi.w     #$1e, -$284a(a5)
00006A66  66 2C                      bne.b      $6a94
00006A68  59 4F                      subq.w     #$4, a7
00006A6A  A9 75                      .byte      0xa9, 0x75
00006A6C  20 1F                      move.l     (a7)+, d0
00006A6E  90 AD D7 AE                sub.l      -$2852(a5), d0
00006A72  72 3C                      moveq      #$3c, d1
00006A74  B0 81                      cmp.l      d1, d0
00006A76  64 14                      bcc.b      $6a8c
00006A78  3B 7C 00 1F D7 B6          move.w     #$1f, -$284a(a5)
00006A7E  59 4F                      subq.w     #$4, a7
00006A80  A9 75                      .byte      0xa9, 0x75
00006A82  20 1F                      move.l     (a7)+, d0
00006A84  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006A88  60 00 14 4E                bra.w      $7ed8
00006A8C  42 6D D7 B6                clr.w      -$284a(a5)
00006A90  60 00 14 46                bra.w      $7ed8
00006A94  0C 6D 00 1F D7 B6          cmpi.w     #$1f, -$284a(a5)
00006A9A  66 00 00 A6                bne.w      $6b42
00006A9E  59 4F                      subq.w     #$4, a7
00006AA0  A9 75                      .byte      0xa9, 0x75
00006AA2  20 1F                      move.l     (a7)+, d0
00006AA4  90 AD D7 AE                sub.l      -$2852(a5), d0
00006AA8  72 3C                      moveq      #$3c, d1
00006AAA  B0 81                      cmp.l      d1, d0
00006AAC  64 00 00 8C                bcc.w      $6b3a
00006AB0  3B 7C 00 06 FF E2          move.w     #$6, -$1e(a5)
00006AB6  48 6D D7 FC                pea.l      -$2804(a5)
00006ABA  48 6D D3 F2                pea.l      -$2c0e(a5)
00006ABE  3F 3C 07 D5                move.w     #$7d5, -(a7)
00006AC2  4E B9 00 00 7E E0          jsr        $7ee0.l
00006AC8  48 6D D7 FC                pea.l      -$2804(a5)
00006ACC  48 6D D3 E6                pea.l      -$2c1a(a5)
00006AD0  3F 3C 09 C9                move.w     #$9c9, -(a7)
00006AD4  4E B9 00 00 7E E0          jsr        $7ee0.l
00006ADA  48 6D DC 1E                pea.l      -$23e2(a5)
00006ADE  48 78 00 A7                pea.l      $a7.w
00006AE2  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
00006AE8  A8 A7                      .byte      0xa8, 0xa7
00006AEA  3B 7C 00 21 D8 0A          move.w     #$21, -$27f6(a5)
00006AF0  3B 7C 00 53 D8 08          move.w     #$53, -$27f8(a5)
00006AF6  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006AFA  4E B9 00 00 00 98          jsr        $98.l
00006B00  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006B06  3F 3C 0B BD                move.w     #$bbd, -(a7)
00006B0A  A8 1F                      .byte      0xa8, 0x1f
00006B0C  20 5F                      movea.l    (a7)+, a0
00006B0E  2B 48 DE CA                move.l     a0, -$2136(a5)
00006B12  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006B18  3F 3C 13 8D                move.w     #$138d, -(a7)
00006B1C  A8 1F                      .byte      0xa8, 0x1f
00006B1E  20 5F                      movea.l    (a7)+, a0
00006B20  2B 48 DE C6                move.l     a0, -$213a(a5)
00006B24  A9 75                      .byte      0xa9, 0x75
00006B26  20 1F                      move.l     (a7)+, d0
00006B28  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006B2C  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006B32  4F EF 00 0C                lea.l      $c(a7), a7
00006B36  60 00 13 A0                bra.w      $7ed8
00006B3A  42 6D D7 B6                clr.w      -$284a(a5)
00006B3E  60 00 13 98                bra.w      $7ed8
00006B42  0C 6D 00 24 D7 B6          cmpi.w     #$24, -$284a(a5)
00006B48  66 00 00 94                bne.w      $6bde
00006B4C  59 4F                      subq.w     #$4, a7
00006B4E  A9 75                      .byte      0xa9, 0x75
00006B50  20 1F                      move.l     (a7)+, d0
00006B52  90 AD D7 AE                sub.l      -$2852(a5), d0
00006B56  72 3C                      moveq      #$3c, d1
00006B58  B0 81                      cmp.l      d1, d0
00006B5A  64 7A                      bcc.b      $6bd6
00006B5C  3B 7C 00 08 FF E2          move.w     #$8, -$1e(a5)
00006B62  3B 7C 00 08 FF E2          move.w     #$8, -$1e(a5)
00006B68  48 6D D7 FC                pea.l      -$2804(a5)
00006B6C  48 6D D3 F2                pea.l      -$2c0e(a5)
00006B70  3F 3C 07 D7                move.w     #$7d7, -(a7)
00006B74  4E B9 00 00 7E E0          jsr        $7ee0.l
00006B7A  48 6D D7 FC                pea.l      -$2804(a5)
00006B7E  48 6D D3 E6                pea.l      -$2c1a(a5)
00006B82  3F 3C 09 CB                move.w     #$9cb, -(a7)
00006B86  4E B9 00 00 7E E0          jsr        $7ee0.l
00006B8C  48 6D DC 1E                pea.l      -$23e2(a5)
00006B90  48 78 00 10                pea.l      $10.w
00006B94  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
00006B9A  A8 A7                      .byte      0xa8, 0xa7
00006B9C  3B 7C 00 3E D8 0A          move.w     #$3e, -$27f6(a5)
00006BA2  3B 7C 00 0F D8 08          move.w     #$f, -$27f8(a5)
00006BA8  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006BAC  4E B9 00 00 00 98          jsr        $98.l
00006BB2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006BB8  3F 3C 0B BF                move.w     #$bbf, -(a7)
00006BBC  A8 1F                      .byte      0xa8, 0x1f
00006BBE  20 5F                      movea.l    (a7)+, a0
00006BC0  2B 48 DE CA                move.l     a0, -$2136(a5)
00006BC4  A9 75                      .byte      0xa9, 0x75
00006BC6  20 1F                      move.l     (a7)+, d0
00006BC8  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006BCC  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006BD2  4F EF 00 10                lea.l      $10(a7), a7
00006BD6  42 6D D7 B6                clr.w      -$284a(a5)
00006BDA  60 00 12 FC                bra.w      $7ed8
00006BDE  0C 6D 00 28 D7 B6          cmpi.w     #$28, -$284a(a5)
00006BE4  66 00 00 A2                bne.w      $6c88
00006BE8  59 4F                      subq.w     #$4, a7
00006BEA  A9 75                      .byte      0xa9, 0x75
00006BEC  20 1F                      move.l     (a7)+, d0
00006BEE  90 AD D7 AE                sub.l      -$2852(a5), d0
00006BF2  72 3C                      moveq      #$3c, d1
00006BF4  B0 81                      cmp.l      d1, d0
00006BF6  64 00 00 88                bcc.w      $6c80
00006BFA  3B 7C 00 09 FF E2          move.w     #$9, -$1e(a5)
00006C00  48 6D D7 FC                pea.l      -$2804(a5)
00006C04  48 6D D3 F2                pea.l      -$2c0e(a5)
00006C08  3F 3C 07 D8                move.w     #$7d8, -(a7)
00006C0C  4E B9 00 00 7E E0          jsr        $7ee0.l
00006C12  48 6D D7 FC                pea.l      -$2804(a5)
00006C16  48 6D D3 E6                pea.l      -$2c1a(a5)
00006C1A  3F 3C 09 CC                move.w     #$9cc, -(a7)
00006C1E  4E B9 00 00 7E E0          jsr        $7ee0.l
00006C24  48 6D DC 1E                pea.l      -$23e2(a5)
00006C28  48 78 00 10                pea.l      $10.w
00006C2C  2F 3C 00 19 00 2C          move.l     #$19002c, -(a7)
00006C32  A8 A7                      .byte      0xa8, 0xa7
00006C34  3B 7C 00 1C D8 0A          move.w     #$1c, -$27f6(a5)
00006C3A  3B 7C 00 19 D8 08          move.w     #$19, -$27f8(a5)
00006C40  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006C44  4E B9 00 00 00 98          jsr        $98.l
00006C4A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006C50  3F 3C 0B C0                move.w     #$bc0, -(a7)
00006C54  A8 1F                      .byte      0xa8, 0x1f
00006C56  20 5F                      movea.l    (a7)+, a0
00006C58  2B 48 DE CA                move.l     a0, -$2136(a5)
00006C5C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006C62  3F 3C 0B C5                move.w     #$bc5, -(a7)
00006C66  A8 1F                      .byte      0xa8, 0x1f
00006C68  20 5F                      movea.l    (a7)+, a0
00006C6A  2B 48 DE C6                move.l     a0, -$213a(a5)
00006C6E  A9 75                      .byte      0xa9, 0x75
00006C70  20 1F                      move.l     (a7)+, d0
00006C72  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006C76  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006C7C  4F EF 00 0C                lea.l      $c(a7), a7
00006C80  42 6D D7 B6                clr.w      -$284a(a5)
00006C84  60 00 12 52                bra.w      $7ed8
00006C88  0C 6D 00 32 D7 B6          cmpi.w     #$32, -$284a(a5)
00006C8E  66 00 00 98                bne.w      $6d28
00006C92  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00006C98  66 00 00 8E                bne.w      $6d28
00006C9C  59 4F                      subq.w     #$4, a7
00006C9E  A9 75                      .byte      0xa9, 0x75
00006CA0  20 1F                      move.l     (a7)+, d0
00006CA2  90 AD D7 AE                sub.l      -$2852(a5), d0
00006CA6  72 3C                      moveq      #$3c, d1
00006CA8  B0 81                      cmp.l      d1, d0
00006CAA  64 74                      bcc.b      $6d20
00006CAC  3B 7C 00 0B FF E2          move.w     #$b, -$1e(a5)
00006CB2  48 6D D7 FC                pea.l      -$2804(a5)
00006CB6  48 6D D3 F2                pea.l      -$2c0e(a5)
00006CBA  3F 3C 07 DA                move.w     #$7da, -(a7)
00006CBE  4E B9 00 00 7E E0          jsr        $7ee0.l
00006CC4  48 6D D7 FC                pea.l      -$2804(a5)
00006CC8  48 6D D3 E6                pea.l      -$2c1a(a5)
00006CCC  3F 3C 09 CE                move.w     #$9ce, -(a7)
00006CD0  4E B9 00 00 7E E0          jsr        $7ee0.l
00006CD6  48 6D DC 1E                pea.l      -$23e2(a5)
00006CDA  48 78 00 10                pea.l      $10.w
00006CDE  2F 3C 00 20 00 31          move.l     #$200031, -(a7)
00006CE4  A8 A7                      .byte      0xa8, 0xa7
00006CE6  3B 7C 00 20 D8 0A          move.w     #$20, -$27f6(a5)
00006CEC  3B 7C 00 20 D8 08          move.w     #$20, -$27f8(a5)
00006CF2  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006CF6  4E B9 00 00 00 98          jsr        $98.l
00006CFC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006D02  3F 3C 0B C0                move.w     #$bc0, -(a7)
00006D06  A8 1F                      .byte      0xa8, 0x1f
00006D08  20 5F                      movea.l    (a7)+, a0
00006D0A  2B 48 DE CA                move.l     a0, -$2136(a5)
00006D0E  A9 75                      .byte      0xa9, 0x75
00006D10  20 1F                      move.l     (a7)+, d0
00006D12  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006D16  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006D1C  4F EF 00 10                lea.l      $10(a7), a7
00006D20  42 6D D7 B6                clr.w      -$284a(a5)
00006D24  60 00 11 B2                bra.w      $7ed8
00006D28  0C 6D 00 37 D7 B6          cmpi.w     #$37, -$284a(a5)
00006D2E  66 00 00 AC                bne.w      $6ddc
00006D32  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00006D38  66 00 00 A2                bne.w      $6ddc
00006D3C  59 4F                      subq.w     #$4, a7
00006D3E  A9 75                      .byte      0xa9, 0x75
00006D40  20 1F                      move.l     (a7)+, d0
00006D42  90 AD D7 AE                sub.l      -$2852(a5), d0
00006D46  72 3C                      moveq      #$3c, d1
00006D48  B0 81                      cmp.l      d1, d0
00006D4A  64 00 00 88                bcc.w      $6dd4
00006D4E  3B 7C 00 0E FF E2          move.w     #$e, -$1e(a5)
00006D54  48 6D D7 FC                pea.l      -$2804(a5)
00006D58  48 6D D3 F2                pea.l      -$2c0e(a5)
00006D5C  3F 3C 07 DD                move.w     #$7dd, -(a7)
00006D60  4E B9 00 00 7E E0          jsr        $7ee0.l
00006D66  48 6D D7 FC                pea.l      -$2804(a5)
00006D6A  48 6D D3 E6                pea.l      -$2c1a(a5)
00006D6E  3F 3C 09 D1                move.w     #$9d1, -(a7)
00006D72  4E B9 00 00 7E E0          jsr        $7ee0.l
00006D78  48 6D DC 1E                pea.l      -$23e2(a5)
00006D7C  48 78 00 10                pea.l      $10.w
00006D80  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
00006D86  A8 A7                      .byte      0xa8, 0xa7
00006D88  3B 7C 00 2B D8 0A          move.w     #$2b, -$27f6(a5)
00006D8E  3B 7C 00 09 D8 08          move.w     #$9, -$27f8(a5)
00006D94  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006D98  4E B9 00 00 00 98          jsr        $98.l
00006D9E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006DA4  3F 3C 0B C7                move.w     #$bc7, -(a7)
00006DA8  A8 1F                      .byte      0xa8, 0x1f
00006DAA  20 5F                      movea.l    (a7)+, a0
00006DAC  2B 48 DE CA                move.l     a0, -$2136(a5)
00006DB0  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006DB6  3F 3C 0B C5                move.w     #$bc5, -(a7)
00006DBA  A8 1F                      .byte      0xa8, 0x1f
00006DBC  20 5F                      movea.l    (a7)+, a0
00006DBE  2B 48 DE C6                move.l     a0, -$213a(a5)
00006DC2  A9 75                      .byte      0xa9, 0x75
00006DC4  20 1F                      move.l     (a7)+, d0
00006DC6  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006DCA  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006DD0  4F EF 00 0C                lea.l      $c(a7), a7
00006DD4  42 6D D7 B6                clr.w      -$284a(a5)
00006DD8  60 00 10 FE                bra.w      $7ed8
00006DDC  0C 6D 00 3C D7 B6          cmpi.w     #$3c, -$284a(a5)
00006DE2  66 00 00 AC                bne.w      $6e90
00006DE6  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00006DEC  66 00 00 A2                bne.w      $6e90
00006DF0  59 4F                      subq.w     #$4, a7
00006DF2  A9 75                      .byte      0xa9, 0x75
00006DF4  20 1F                      move.l     (a7)+, d0
00006DF6  90 AD D7 AE                sub.l      -$2852(a5), d0
00006DFA  72 3C                      moveq      #$3c, d1
00006DFC  B0 81                      cmp.l      d1, d0
00006DFE  64 00 00 88                bcc.w      $6e88
00006E02  3B 7C 00 0F FF E2          move.w     #$f, -$1e(a5)
00006E08  48 6D D7 FC                pea.l      -$2804(a5)
00006E0C  48 6D D3 F2                pea.l      -$2c0e(a5)
00006E10  3F 3C 07 DE                move.w     #$7de, -(a7)
00006E14  4E B9 00 00 7E E0          jsr        $7ee0.l
00006E1A  48 6D D7 FC                pea.l      -$2804(a5)
00006E1E  48 6D D3 E6                pea.l      -$2c1a(a5)
00006E22  3F 3C 09 D2                move.w     #$9d2, -(a7)
00006E26  4E B9 00 00 7E E0          jsr        $7ee0.l
00006E2C  48 6D DC 1E                pea.l      -$23e2(a5)
00006E30  48 78 00 10                pea.l      $10.w
00006E34  2F 3C 00 0F 00 35          move.l     #$f0035, -(a7)
00006E3A  A8 A7                      .byte      0xa8, 0xa7
00006E3C  3B 7C 00 25 D8 0A          move.w     #$25, -$27f6(a5)
00006E42  3B 7C 00 0F D8 08          move.w     #$f, -$27f8(a5)
00006E48  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00006E4C  4E B9 00 00 00 98          jsr        $98.l
00006E52  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006E58  3F 3C 0B C2                move.w     #$bc2, -(a7)
00006E5C  A8 1F                      .byte      0xa8, 0x1f
00006E5E  20 5F                      movea.l    (a7)+, a0
00006E60  2B 48 DE CA                move.l     a0, -$2136(a5)
00006E64  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00006E6A  3F 3C 0B C3                move.w     #$bc3, -(a7)
00006E6E  A8 1F                      .byte      0xa8, 0x1f
00006E70  20 5F                      movea.l    (a7)+, a0
00006E72  2B 48 DE C6                move.l     a0, -$213a(a5)
00006E76  A9 75                      .byte      0xa9, 0x75
00006E78  20 1F                      move.l     (a7)+, d0
00006E7A  2B 40 D7 BC                move.l     d0, -$2844(a5)
00006E7E  1B 7C 00 01 D7 C1          move.b     #$1, -$283f(a5)
00006E84  4F EF 00 0C                lea.l      $c(a7), a7
00006E88  42 6D D7 B6                clr.w      -$284a(a5)
00006E8C  60 00 10 4A                bra.w      $7ed8
00006E90  42 6D D7 B6                clr.w      -$284a(a5)
00006E94  60 00 10 42                bra.w      $7ed8
00006E98  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
00006E9E  66 00 01 BA                bne.w      $705a
00006EA2  10 2D D7 5D                move.b     -$28a3(a5), d0
00006EA6  48 80                      ext.w      d0
00006EA8  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00006EAC  66 04                      bne.b      $6eb2
00006EAE  42 6D D7 B6                clr.w      -$284a(a5)
00006EB2  10 2D D7 5D                move.b     -$28a3(a5), d0
00006EB6  48 80                      ext.w      d0
00006EB8  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00006EBC  66 24                      bne.b      $6ee2
00006EBE  4A 6D D7 B6                tst.w      -$284a(a5)
00006EC2  67 08                      beq.b      $6ecc
00006EC4  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00006ECA  66 12                      bne.b      $6ede
00006ECC  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00006ED2  59 4F                      subq.w     #$4, a7
00006ED4  A9 75                      .byte      0xa9, 0x75
00006ED6  20 1F                      move.l     (a7)+, d0
00006ED8  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006EDC  60 04                      bra.b      $6ee2
00006EDE  42 6D D7 B6                clr.w      -$284a(a5)
00006EE2  10 2D D7 5D                move.b     -$28a3(a5), d0
00006EE6  48 80                      ext.w      d0
00006EE8  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00006EEC  66 34                      bne.b      $6f22
00006EEE  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00006EF4  66 28                      bne.b      $6f1e
00006EF6  59 4F                      subq.w     #$4, a7
00006EF8  A9 75                      .byte      0xa9, 0x75
00006EFA  20 1F                      move.l     (a7)+, d0
00006EFC  90 AD D7 AE                sub.l      -$2852(a5), d0
00006F00  72 3C                      moveq      #$3c, d1
00006F02  B0 81                      cmp.l      d1, d0
00006F04  64 12                      bcc.b      $6f18
00006F06  3B 7C 00 08 D7 B6          move.w     #$8, -$284a(a5)
00006F0C  59 4F                      subq.w     #$4, a7
00006F0E  A9 75                      .byte      0xa9, 0x75
00006F10  20 1F                      move.l     (a7)+, d0
00006F12  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006F16  60 0A                      bra.b      $6f22
00006F18  42 6D D7 B6                clr.w      -$284a(a5)
00006F1C  60 04                      bra.b      $6f22
00006F1E  42 6D D7 B6                clr.w      -$284a(a5)
00006F22  10 2D D7 5D                move.b     -$28a3(a5), d0
00006F26  48 80                      ext.w      d0
00006F28  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00006F2C  66 00 00 86                bne.w      $6fb4
00006F30  4A 6D D7 B6                tst.w      -$284a(a5)
00006F34  66 12                      bne.b      $6f48
00006F36  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00006F3C  59 4F                      subq.w     #$4, a7
00006F3E  A9 75                      .byte      0xa9, 0x75
00006F40  20 1F                      move.l     (a7)+, d0
00006F42  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006F46  60 6C                      bra.b      $6fb4
00006F48  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00006F4E  67 08                      beq.b      $6f58
00006F50  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00006F56  66 28                      bne.b      $6f80
00006F58  59 4F                      subq.w     #$4, a7
00006F5A  A9 75                      .byte      0xa9, 0x75
00006F5C  20 1F                      move.l     (a7)+, d0
00006F5E  90 AD D7 AE                sub.l      -$2852(a5), d0
00006F62  72 3C                      moveq      #$3c, d1
00006F64  B0 81                      cmp.l      d1, d0
00006F66  64 12                      bcc.b      $6f7a
00006F68  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00006F6E  59 4F                      subq.w     #$4, a7
00006F70  A9 75                      .byte      0xa9, 0x75
00006F72  20 1F                      move.l     (a7)+, d0
00006F74  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006F78  60 3A                      bra.b      $6fb4
00006F7A  42 6D D7 B6                clr.w      -$284a(a5)
00006F7E  60 34                      bra.b      $6fb4
00006F80  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00006F86  66 28                      bne.b      $6fb0
00006F88  59 4F                      subq.w     #$4, a7
00006F8A  A9 75                      .byte      0xa9, 0x75
00006F8C  20 1F                      move.l     (a7)+, d0
00006F8E  90 AD D7 AE                sub.l      -$2852(a5), d0
00006F92  72 3C                      moveq      #$3c, d1
00006F94  B0 81                      cmp.l      d1, d0
00006F96  64 12                      bcc.b      $6faa
00006F98  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
00006F9E  59 4F                      subq.w     #$4, a7
00006FA0  A9 75                      .byte      0xa9, 0x75
00006FA2  20 1F                      move.l     (a7)+, d0
00006FA4  2B 40 D7 AE                move.l     d0, -$2852(a5)
00006FA8  60 0A                      bra.b      $6fb4
00006FAA  42 6D D7 B6                clr.w      -$284a(a5)
00006FAE  60 04                      bra.b      $6fb4
00006FB0  42 6D D7 B6                clr.w      -$284a(a5)
00006FB4  10 2D D7 5D                move.b     -$28a3(a5), d0
00006FB8  48 80                      ext.w      d0
00006FBA  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00006FBE  66 2C                      bne.b      $6fec
00006FC0  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00006FC6  66 20                      bne.b      $6fe8
00006FC8  59 4F                      subq.w     #$4, a7
00006FCA  A9 75                      .byte      0xa9, 0x75
00006FCC  20 1F                      move.l     (a7)+, d0
00006FCE  90 AD D7 AE                sub.l      -$2852(a5), d0
00006FD2  72 3C                      moveq      #$3c, d1
00006FD4  B0 81                      cmp.l      d1, d0
00006FD6  64 0A                      bcc.b      $6fe2
00006FD8  42 6D D7 A6                clr.w      -$285a(a5)
00006FDC  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00006FE2  42 6D D7 B6                clr.w      -$284a(a5)
00006FE6  60 04                      bra.b      $6fec
00006FE8  42 6D D7 B6                clr.w      -$284a(a5)
00006FEC  10 2D D7 5D                move.b     -$28a3(a5), d0
00006FF0  48 80                      ext.w      d0
00006FF2  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00006FF6  66 00 0E E0                bne.w      $7ed8
00006FFA  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
00007000  66 24                      bne.b      $7026
00007002  59 4F                      subq.w     #$4, a7
00007004  A9 75                      .byte      0xa9, 0x75
00007006  20 1F                      move.l     (a7)+, d0
00007008  90 AD D7 AE                sub.l      -$2852(a5), d0
0000700C  72 3C                      moveq      #$3c, d1
0000700E  B0 81                      cmp.l      d1, d0
00007010  64 0C                      bcc.b      $701e
00007012  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007018  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
0000701E  42 6D D7 B6                clr.w      -$284a(a5)
00007022  60 00 0E B4                bra.w      $7ed8
00007026  0C 6D 00 08 D7 B6          cmpi.w     #$8, -$284a(a5)
0000702C  66 24                      bne.b      $7052
0000702E  59 4F                      subq.w     #$4, a7
00007030  A9 75                      .byte      0xa9, 0x75
00007032  20 1F                      move.l     (a7)+, d0
00007034  90 AD D7 AE                sub.l      -$2852(a5), d0
00007038  72 3C                      moveq      #$3c, d1
0000703A  B0 81                      cmp.l      d1, d0
0000703C  64 0C                      bcc.b      $704a
0000703E  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007044  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
0000704A  42 6D D7 B6                clr.w      -$284a(a5)
0000704E  60 00 0E 88                bra.w      $7ed8
00007052  42 6D D7 B6                clr.w      -$284a(a5)
00007056  60 00 0E 80                bra.w      $7ed8
0000705A  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00007060  66 00 01 8C                bne.w      $71ee
00007064  10 2D D7 5D                move.b     -$28a3(a5), d0
00007068  48 80                      ext.w      d0
0000706A  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
0000706E  66 04                      bne.b      $7074
00007070  42 6D D7 B6                clr.w      -$284a(a5)
00007074  10 2D D7 5D                move.b     -$28a3(a5), d0
00007078  48 80                      ext.w      d0
0000707A  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000707E  66 04                      bne.b      $7084
00007080  42 6D D7 B6                clr.w      -$284a(a5)
00007084  10 2D D7 5D                move.b     -$28a3(a5), d0
00007088  48 80                      ext.w      d0
0000708A  B0 6D CF 18                cmp.w      -$30e8(a5), d0
0000708E  66 04                      bne.b      $7094
00007090  42 6D D7 B6                clr.w      -$284a(a5)
00007094  10 2D D7 5D                move.b     -$28a3(a5), d0
00007098  48 80                      ext.w      d0
0000709A  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
0000709E  66 7C                      bne.b      $711c
000070A0  4A 6D D7 B6                tst.w      -$284a(a5)
000070A4  66 12                      bne.b      $70b8
000070A6  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
000070AC  59 4F                      subq.w     #$4, a7
000070AE  A9 75                      .byte      0xa9, 0x75
000070B0  20 1F                      move.l     (a7)+, d0
000070B2  2B 40 D7 AE                move.l     d0, -$2852(a5)
000070B6  60 64                      bra.b      $711c
000070B8  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
000070BE  66 28                      bne.b      $70e8
000070C0  59 4F                      subq.w     #$4, a7
000070C2  A9 75                      .byte      0xa9, 0x75
000070C4  20 1F                      move.l     (a7)+, d0
000070C6  90 AD D7 AE                sub.l      -$2852(a5), d0
000070CA  72 3C                      moveq      #$3c, d1
000070CC  B0 81                      cmp.l      d1, d0
000070CE  64 12                      bcc.b      $70e2
000070D0  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
000070D6  59 4F                      subq.w     #$4, a7
000070D8  A9 75                      .byte      0xa9, 0x75
000070DA  20 1F                      move.l     (a7)+, d0
000070DC  2B 40 D7 AE                move.l     d0, -$2852(a5)
000070E0  60 3A                      bra.b      $711c
000070E2  42 6D D7 B6                clr.w      -$284a(a5)
000070E6  60 34                      bra.b      $711c
000070E8  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000070EE  66 28                      bne.b      $7118
000070F0  59 4F                      subq.w     #$4, a7
000070F2  A9 75                      .byte      0xa9, 0x75
000070F4  20 1F                      move.l     (a7)+, d0
000070F6  90 AD D7 AE                sub.l      -$2852(a5), d0
000070FA  72 3C                      moveq      #$3c, d1
000070FC  B0 81                      cmp.l      d1, d0
000070FE  64 12                      bcc.b      $7112
00007100  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00007106  59 4F                      subq.w     #$4, a7
00007108  A9 75                      .byte      0xa9, 0x75
0000710A  20 1F                      move.l     (a7)+, d0
0000710C  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007110  60 0A                      bra.b      $711c
00007112  42 6D D7 B6                clr.w      -$284a(a5)
00007116  60 04                      bra.b      $711c
00007118  42 6D D7 B6                clr.w      -$284a(a5)
0000711C  10 2D D7 5D                move.b     -$28a3(a5), d0
00007120  48 80                      ext.w      d0
00007122  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007126  66 2E                      bne.b      $7156
00007128  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000712E  66 26                      bne.b      $7156
00007130  59 4F                      subq.w     #$4, a7
00007132  A9 75                      .byte      0xa9, 0x75
00007134  20 1F                      move.l     (a7)+, d0
00007136  90 AD D7 AE                sub.l      -$2852(a5), d0
0000713A  72 3C                      moveq      #$3c, d1
0000713C  B0 81                      cmp.l      d1, d0
0000713E  64 12                      bcc.b      $7152
00007140  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
00007146  59 4F                      subq.w     #$4, a7
00007148  A9 75                      .byte      0xa9, 0x75
0000714A  20 1F                      move.l     (a7)+, d0
0000714C  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007150  60 04                      bra.b      $7156
00007152  42 6D D7 B6                clr.w      -$284a(a5)
00007156  10 2D D7 5D                move.b     -$28a3(a5), d0
0000715A  48 80                      ext.w      d0
0000715C  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007160  66 00 0D 76                bne.w      $7ed8
00007164  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000716A  66 22                      bne.b      $718e
0000716C  59 4F                      subq.w     #$4, a7
0000716E  A9 75                      .byte      0xa9, 0x75
00007170  20 1F                      move.l     (a7)+, d0
00007172  90 AD D7 AE                sub.l      -$2852(a5), d0
00007176  72 3C                      moveq      #$3c, d1
00007178  B0 81                      cmp.l      d1, d0
0000717A  64 0A                      bcc.b      $7186
0000717C  42 6D CF 74                clr.w      -$308c(a5)
00007180  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00007186  42 6D D7 B6                clr.w      -$284a(a5)
0000718A  60 00 0D 4C                bra.w      $7ed8
0000718E  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00007194  66 24                      bne.b      $71ba
00007196  59 4F                      subq.w     #$4, a7
00007198  A9 75                      .byte      0xa9, 0x75
0000719A  20 1F                      move.l     (a7)+, d0
0000719C  90 AD D7 AE                sub.l      -$2852(a5), d0
000071A0  72 3C                      moveq      #$3c, d1
000071A2  B0 81                      cmp.l      d1, d0
000071A4  64 0C                      bcc.b      $71b2
000071A6  3B 7C 00 01 CF 74          move.w     #$1, -$308c(a5)
000071AC  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000071B2  42 6D D7 B6                clr.w      -$284a(a5)
000071B6  60 00 0D 20                bra.w      $7ed8
000071BA  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
000071C0  66 24                      bne.b      $71e6
000071C2  59 4F                      subq.w     #$4, a7
000071C4  A9 75                      .byte      0xa9, 0x75
000071C6  20 1F                      move.l     (a7)+, d0
000071C8  90 AD D7 AE                sub.l      -$2852(a5), d0
000071CC  72 3C                      moveq      #$3c, d1
000071CE  B0 81                      cmp.l      d1, d0
000071D0  64 0C                      bcc.b      $71de
000071D2  3B 7C 00 02 CF 74          move.w     #$2, -$308c(a5)
000071D8  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000071DE  42 6D D7 B6                clr.w      -$284a(a5)
000071E2  60 00 0C F4                bra.w      $7ed8
000071E6  42 6D D7 B6                clr.w      -$284a(a5)
000071EA  60 00 0C EC                bra.w      $7ed8
000071EE  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
000071F4  66 00 01 EE                bne.w      $73e4
000071F8  10 2D D7 5D                move.b     -$28a3(a5), d0
000071FC  48 80                      ext.w      d0
000071FE  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007202  66 04                      bne.b      $7208
00007204  42 6D D7 B6                clr.w      -$284a(a5)
00007208  10 2D D7 5D                move.b     -$28a3(a5), d0
0000720C  48 80                      ext.w      d0
0000720E  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007212  66 24                      bne.b      $7238
00007214  4A 6D D7 B6                tst.w      -$284a(a5)
00007218  67 08                      beq.b      $7222
0000721A  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007220  66 12                      bne.b      $7234
00007222  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007228  59 4F                      subq.w     #$4, a7
0000722A  A9 75                      .byte      0xa9, 0x75
0000722C  20 1F                      move.l     (a7)+, d0
0000722E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007232  60 04                      bra.b      $7238
00007234  42 6D D7 B6                clr.w      -$284a(a5)
00007238  10 2D D7 5D                move.b     -$28a3(a5), d0
0000723C  48 80                      ext.w      d0
0000723E  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007242  66 64                      bne.b      $72a8
00007244  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
0000724A  66 28                      bne.b      $7274
0000724C  59 4F                      subq.w     #$4, a7
0000724E  A9 75                      .byte      0xa9, 0x75
00007250  20 1F                      move.l     (a7)+, d0
00007252  90 AD D7 AE                sub.l      -$2852(a5), d0
00007256  72 3C                      moveq      #$3c, d1
00007258  B0 81                      cmp.l      d1, d0
0000725A  64 12                      bcc.b      $726e
0000725C  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007262  59 4F                      subq.w     #$4, a7
00007264  A9 75                      .byte      0xa9, 0x75
00007266  20 1F                      move.l     (a7)+, d0
00007268  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000726C  60 3A                      bra.b      $72a8
0000726E  42 6D D7 B6                clr.w      -$284a(a5)
00007272  60 34                      bra.b      $72a8
00007274  0C 6D 00 07 D7 B6          cmpi.w     #$7, -$284a(a5)
0000727A  66 28                      bne.b      $72a4
0000727C  59 4F                      subq.w     #$4, a7
0000727E  A9 75                      .byte      0xa9, 0x75
00007280  20 1F                      move.l     (a7)+, d0
00007282  90 AD D7 AE                sub.l      -$2852(a5), d0
00007286  72 3C                      moveq      #$3c, d1
00007288  B0 81                      cmp.l      d1, d0
0000728A  64 12                      bcc.b      $729e
0000728C  3B 7C 00 08 D7 B6          move.w     #$8, -$284a(a5)
00007292  59 4F                      subq.w     #$4, a7
00007294  A9 75                      .byte      0xa9, 0x75
00007296  20 1F                      move.l     (a7)+, d0
00007298  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000729C  60 0A                      bra.b      $72a8
0000729E  42 6D D7 B6                clr.w      -$284a(a5)
000072A2  60 04                      bra.b      $72a8
000072A4  42 6D D7 B6                clr.w      -$284a(a5)
000072A8  10 2D D7 5D                move.b     -$28a3(a5), d0
000072AC  48 80                      ext.w      d0
000072AE  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
000072B2  66 64                      bne.b      $7318
000072B4  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
000072BA  66 28                      bne.b      $72e4
000072BC  59 4F                      subq.w     #$4, a7
000072BE  A9 75                      .byte      0xa9, 0x75
000072C0  20 1F                      move.l     (a7)+, d0
000072C2  90 AD D7 AE                sub.l      -$2852(a5), d0
000072C6  72 3C                      moveq      #$3c, d1
000072C8  B0 81                      cmp.l      d1, d0
000072CA  64 12                      bcc.b      $72de
000072CC  3B 7C 00 07 D7 B6          move.w     #$7, -$284a(a5)
000072D2  59 4F                      subq.w     #$4, a7
000072D4  A9 75                      .byte      0xa9, 0x75
000072D6  20 1F                      move.l     (a7)+, d0
000072D8  2B 40 D7 AE                move.l     d0, -$2852(a5)
000072DC  60 3A                      bra.b      $7318
000072DE  42 6D D7 B6                clr.w      -$284a(a5)
000072E2  60 34                      bra.b      $7318
000072E4  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000072EA  66 28                      bne.b      $7314
000072EC  59 4F                      subq.w     #$4, a7
000072EE  A9 75                      .byte      0xa9, 0x75
000072F0  20 1F                      move.l     (a7)+, d0
000072F2  90 AD D7 AE                sub.l      -$2852(a5), d0
000072F6  72 3C                      moveq      #$3c, d1
000072F8  B0 81                      cmp.l      d1, d0
000072FA  64 12                      bcc.b      $730e
000072FC  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00007302  59 4F                      subq.w     #$4, a7
00007304  A9 75                      .byte      0xa9, 0x75
00007306  20 1F                      move.l     (a7)+, d0
00007308  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000730C  60 0A                      bra.b      $7318
0000730E  42 6D D7 B6                clr.w      -$284a(a5)
00007312  60 04                      bra.b      $7318
00007314  42 6D D7 B6                clr.w      -$284a(a5)
00007318  10 2D D7 5D                move.b     -$28a3(a5), d0
0000731C  48 80                      ext.w      d0
0000731E  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007322  66 00 00 84                bne.w      $73a8
00007326  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000732C  66 22                      bne.b      $7350
0000732E  59 4F                      subq.w     #$4, a7
00007330  A9 75                      .byte      0xa9, 0x75
00007332  20 1F                      move.l     (a7)+, d0
00007334  90 AD D7 AE                sub.l      -$2852(a5), d0
00007338  72 3C                      moveq      #$3c, d1
0000733A  B0 81                      cmp.l      d1, d0
0000733C  64 0C                      bcc.b      $734a
0000733E  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007344  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
0000734A  42 6D D7 B6                clr.w      -$284a(a5)
0000734E  60 58                      bra.b      $73a8
00007350  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00007356  66 22                      bne.b      $737a
00007358  59 4F                      subq.w     #$4, a7
0000735A  A9 75                      .byte      0xa9, 0x75
0000735C  20 1F                      move.l     (a7)+, d0
0000735E  90 AD D7 AE                sub.l      -$2852(a5), d0
00007362  72 3C                      moveq      #$3c, d1
00007364  B0 81                      cmp.l      d1, d0
00007366  64 0C                      bcc.b      $7374
00007368  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
0000736E  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
00007374  42 6D D7 B6                clr.w      -$284a(a5)
00007378  60 2E                      bra.b      $73a8
0000737A  0C 6D 00 08 D7 B6          cmpi.w     #$8, -$284a(a5)
00007380  66 22                      bne.b      $73a4
00007382  59 4F                      subq.w     #$4, a7
00007384  A9 75                      .byte      0xa9, 0x75
00007386  20 1F                      move.l     (a7)+, d0
00007388  90 AD D7 AE                sub.l      -$2852(a5), d0
0000738C  72 3C                      moveq      #$3c, d1
0000738E  B0 81                      cmp.l      d1, d0
00007390  64 0C                      bcc.b      $739e
00007392  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007398  3B 7C 00 03 D7 A6          move.w     #$3, -$285a(a5)
0000739E  42 6D D7 B6                clr.w      -$284a(a5)
000073A2  60 04                      bra.b      $73a8
000073A4  42 6D D7 B6                clr.w      -$284a(a5)
000073A8  10 2D D7 5D                move.b     -$28a3(a5), d0
000073AC  48 80                      ext.w      d0
000073AE  B0 6D E3 68                cmp.w      -$1c98(a5), d0
000073B2  66 00 0B 24                bne.w      $7ed8
000073B6  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000073BC  66 1E                      bne.b      $73dc
000073BE  59 4F                      subq.w     #$4, a7
000073C0  A9 75                      .byte      0xa9, 0x75
000073C2  20 1F                      move.l     (a7)+, d0
000073C4  90 AD D7 AE                sub.l      -$2852(a5), d0
000073C8  72 3C                      moveq      #$3c, d1
000073CA  B0 81                      cmp.l      d1, d0
000073CC  64 06                      bcc.b      $73d4
000073CE  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000073D4  42 6D D7 B6                clr.w      -$284a(a5)
000073D8  60 00 0A FE                bra.w      $7ed8
000073DC  42 6D D7 B6                clr.w      -$284a(a5)
000073E0  60 00 0A F6                bra.w      $7ed8
000073E4  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
000073EA  66 00 02 40                bne.w      $762c
000073EE  10 2D D7 5D                move.b     -$28a3(a5), d0
000073F2  48 80                      ext.w      d0
000073F4  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
000073F8  66 04                      bne.b      $73fe
000073FA  42 6D D7 B6                clr.w      -$284a(a5)
000073FE  10 2D D7 5D                move.b     -$28a3(a5), d0
00007402  48 80                      ext.w      d0
00007404  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007408  66 4C                      bne.b      $7456
0000740A  4A 6D D7 B6                tst.w      -$284a(a5)
0000740E  66 12                      bne.b      $7422
00007410  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007416  59 4F                      subq.w     #$4, a7
00007418  A9 75                      .byte      0xa9, 0x75
0000741A  20 1F                      move.l     (a7)+, d0
0000741C  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007420  60 34                      bra.b      $7456
00007422  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
00007428  66 28                      bne.b      $7452
0000742A  59 4F                      subq.w     #$4, a7
0000742C  A9 75                      .byte      0xa9, 0x75
0000742E  20 1F                      move.l     (a7)+, d0
00007430  90 AD D7 AE                sub.l      -$2852(a5), d0
00007434  72 3C                      moveq      #$3c, d1
00007436  B0 81                      cmp.l      d1, d0
00007438  64 12                      bcc.b      $744c
0000743A  3B 7C 00 0C D7 B6          move.w     #$c, -$284a(a5)
00007440  59 4F                      subq.w     #$4, a7
00007442  A9 75                      .byte      0xa9, 0x75
00007444  20 1F                      move.l     (a7)+, d0
00007446  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000744A  60 0A                      bra.b      $7456
0000744C  42 6D D7 B6                clr.w      -$284a(a5)
00007450  60 04                      bra.b      $7456
00007452  42 6D D7 B6                clr.w      -$284a(a5)
00007456  10 2D D7 5D                move.b     -$28a3(a5), d0
0000745A  48 80                      ext.w      d0
0000745C  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007460  66 64                      bne.b      $74c6
00007462  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007468  66 28                      bne.b      $7492
0000746A  59 4F                      subq.w     #$4, a7
0000746C  A9 75                      .byte      0xa9, 0x75
0000746E  20 1F                      move.l     (a7)+, d0
00007470  90 AD D7 AE                sub.l      -$2852(a5), d0
00007474  72 3C                      moveq      #$3c, d1
00007476  B0 81                      cmp.l      d1, d0
00007478  64 12                      bcc.b      $748c
0000747A  3B 7C 00 0F D7 B6          move.w     #$f, -$284a(a5)
00007480  59 4F                      subq.w     #$4, a7
00007482  A9 75                      .byte      0xa9, 0x75
00007484  20 1F                      move.l     (a7)+, d0
00007486  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000748A  60 3A                      bra.b      $74c6
0000748C  42 6D D7 B6                clr.w      -$284a(a5)
00007490  60 34                      bra.b      $74c6
00007492  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
00007498  66 28                      bne.b      $74c2
0000749A  59 4F                      subq.w     #$4, a7
0000749C  A9 75                      .byte      0xa9, 0x75
0000749E  20 1F                      move.l     (a7)+, d0
000074A0  90 AD D7 AE                sub.l      -$2852(a5), d0
000074A4  72 3C                      moveq      #$3c, d1
000074A6  B0 81                      cmp.l      d1, d0
000074A8  64 12                      bcc.b      $74bc
000074AA  3B 7C 00 0B D7 B6          move.w     #$b, -$284a(a5)
000074B0  59 4F                      subq.w     #$4, a7
000074B2  A9 75                      .byte      0xa9, 0x75
000074B4  20 1F                      move.l     (a7)+, d0
000074B6  2B 40 D7 AE                move.l     d0, -$2852(a5)
000074BA  60 0A                      bra.b      $74c6
000074BC  42 6D D7 B6                clr.w      -$284a(a5)
000074C0  60 04                      bra.b      $74c6
000074C2  42 6D D7 B6                clr.w      -$284a(a5)
000074C6  10 2D D7 5D                move.b     -$28a3(a5), d0
000074CA  48 80                      ext.w      d0
000074CC  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
000074D0  66 7C                      bne.b      $754e
000074D2  4A 6D D7 B6                tst.w      -$284a(a5)
000074D6  66 12                      bne.b      $74ea
000074D8  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
000074DE  59 4F                      subq.w     #$4, a7
000074E0  A9 75                      .byte      0xa9, 0x75
000074E2  20 1F                      move.l     (a7)+, d0
000074E4  2B 40 D7 AE                move.l     d0, -$2852(a5)
000074E8  60 64                      bra.b      $754e
000074EA  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
000074F0  66 28                      bne.b      $751a
000074F2  59 4F                      subq.w     #$4, a7
000074F4  A9 75                      .byte      0xa9, 0x75
000074F6  20 1F                      move.l     (a7)+, d0
000074F8  90 AD D7 AE                sub.l      -$2852(a5), d0
000074FC  72 3C                      moveq      #$3c, d1
000074FE  B0 81                      cmp.l      d1, d0
00007500  64 12                      bcc.b      $7514
00007502  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007508  59 4F                      subq.w     #$4, a7
0000750A  A9 75                      .byte      0xa9, 0x75
0000750C  20 1F                      move.l     (a7)+, d0
0000750E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007512  60 3A                      bra.b      $754e
00007514  42 6D D7 B6                clr.w      -$284a(a5)
00007518  60 34                      bra.b      $754e
0000751A  0C 6D 00 0F D7 B6          cmpi.w     #$f, -$284a(a5)
00007520  66 28                      bne.b      $754a
00007522  59 4F                      subq.w     #$4, a7
00007524  A9 75                      .byte      0xa9, 0x75
00007526  20 1F                      move.l     (a7)+, d0
00007528  90 AD D7 AE                sub.l      -$2852(a5), d0
0000752C  72 3C                      moveq      #$3c, d1
0000752E  B0 81                      cmp.l      d1, d0
00007530  64 12                      bcc.b      $7544
00007532  3B 7C 00 10 D7 B6          move.w     #$10, -$284a(a5)
00007538  59 4F                      subq.w     #$4, a7
0000753A  A9 75                      .byte      0xa9, 0x75
0000753C  20 1F                      move.l     (a7)+, d0
0000753E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007542  60 0A                      bra.b      $754e
00007544  42 6D D7 B6                clr.w      -$284a(a5)
00007548  60 04                      bra.b      $754e
0000754A  42 6D D7 B6                clr.w      -$284a(a5)
0000754E  10 2D D7 5D                move.b     -$28a3(a5), d0
00007552  48 80                      ext.w      d0
00007554  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007558  66 64                      bne.b      $75be
0000755A  0C 6D 00 0C D7 B6          cmpi.w     #$c, -$284a(a5)
00007560  66 28                      bne.b      $758a
00007562  59 4F                      subq.w     #$4, a7
00007564  A9 75                      .byte      0xa9, 0x75
00007566  20 1F                      move.l     (a7)+, d0
00007568  90 AD D7 AE                sub.l      -$2852(a5), d0
0000756C  72 3C                      moveq      #$3c, d1
0000756E  B0 81                      cmp.l      d1, d0
00007570  64 12                      bcc.b      $7584
00007572  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00007578  3B 7C 00 03 CF 70          move.w     #$3, -$3090(a5)
0000757E  4E B9 00 00 0C 0E          jsr        $c0e.l
00007584  42 6D D7 B6                clr.w      -$284a(a5)
00007588  60 34                      bra.b      $75be
0000758A  0C 6D 00 10 D7 B6          cmpi.w     #$10, -$284a(a5)
00007590  66 28                      bne.b      $75ba
00007592  59 4F                      subq.w     #$4, a7
00007594  A9 75                      .byte      0xa9, 0x75
00007596  20 1F                      move.l     (a7)+, d0
00007598  90 AD D7 AE                sub.l      -$2852(a5), d0
0000759C  72 3C                      moveq      #$3c, d1
0000759E  B0 81                      cmp.l      d1, d0
000075A0  64 12                      bcc.b      $75b4
000075A2  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
000075A8  3B 7C 00 02 CF 70          move.w     #$2, -$3090(a5)
000075AE  4E B9 00 00 0C 0E          jsr        $c0e.l
000075B4  42 6D D7 B6                clr.w      -$284a(a5)
000075B8  60 04                      bra.b      $75be
000075BA  42 6D D7 B6                clr.w      -$284a(a5)
000075BE  10 2D D7 5D                move.b     -$28a3(a5), d0
000075C2  48 80                      ext.w      d0
000075C4  B0 6D E3 68                cmp.w      -$1c98(a5), d0
000075C8  66 00 09 0E                bne.w      $7ed8
000075CC  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000075D2  66 1E                      bne.b      $75f2
000075D4  59 4F                      subq.w     #$4, a7
000075D6  A9 75                      .byte      0xa9, 0x75
000075D8  20 1F                      move.l     (a7)+, d0
000075DA  90 AD D7 AE                sub.l      -$2852(a5), d0
000075DE  72 3C                      moveq      #$3c, d1
000075E0  B0 81                      cmp.l      d1, d0
000075E2  64 06                      bcc.b      $75ea
000075E4  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000075EA  42 6D D7 B6                clr.w      -$284a(a5)
000075EE  60 00 08 E8                bra.w      $7ed8
000075F2  0C 6D 00 0C D7 B6          cmpi.w     #$c, -$284a(a5)
000075F8  66 2A                      bne.b      $7624
000075FA  59 4F                      subq.w     #$4, a7
000075FC  A9 75                      .byte      0xa9, 0x75
000075FE  20 1F                      move.l     (a7)+, d0
00007600  90 AD D7 AE                sub.l      -$2852(a5), d0
00007604  72 3C                      moveq      #$3c, d1
00007606  B0 81                      cmp.l      d1, d0
00007608  64 12                      bcc.b      $761c
0000760A  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00007610  3B 7C 00 01 CF 70          move.w     #$1, -$3090(a5)
00007616  4E B9 00 00 0C 0E          jsr        $c0e.l
0000761C  42 6D D7 B6                clr.w      -$284a(a5)
00007620  60 00 08 B6                bra.w      $7ed8
00007624  42 6D D7 B6                clr.w      -$284a(a5)
00007628  60 00 08 AE                bra.w      $7ed8
0000762C  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00007632  66 00 01 66                bne.w      $779a
00007636  10 2D D7 5D                move.b     -$28a3(a5), d0
0000763A  48 80                      ext.w      d0
0000763C  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007640  66 04                      bne.b      $7646
00007642  42 6D D7 B6                clr.w      -$284a(a5)
00007646  10 2D D7 5D                move.b     -$28a3(a5), d0
0000764A  48 80                      ext.w      d0
0000764C  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007650  66 04                      bne.b      $7656
00007652  42 6D D7 B6                clr.w      -$284a(a5)
00007656  10 2D D7 5D                move.b     -$28a3(a5), d0
0000765A  48 80                      ext.w      d0
0000765C  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007660  66 04                      bne.b      $7666
00007662  42 6D D7 B6                clr.w      -$284a(a5)
00007666  10 2D D7 5D                move.b     -$28a3(a5), d0
0000766A  48 80                      ext.w      d0
0000766C  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007670  66 54                      bne.b      $76c6
00007672  4A 6D D7 B6                tst.w      -$284a(a5)
00007676  66 12                      bne.b      $768a
00007678  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
0000767E  59 4F                      subq.w     #$4, a7
00007680  A9 75                      .byte      0xa9, 0x75
00007682  20 1F                      move.l     (a7)+, d0
00007684  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007688  60 3C                      bra.b      $76c6
0000768A  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007690  67 08                      beq.b      $769a
00007692  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007698  66 28                      bne.b      $76c2
0000769A  59 4F                      subq.w     #$4, a7
0000769C  A9 75                      .byte      0xa9, 0x75
0000769E  20 1F                      move.l     (a7)+, d0
000076A0  90 AD D7 AE                sub.l      -$2852(a5), d0
000076A4  72 3C                      moveq      #$3c, d1
000076A6  B0 81                      cmp.l      d1, d0
000076A8  64 12                      bcc.b      $76bc
000076AA  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
000076B0  59 4F                      subq.w     #$4, a7
000076B2  A9 75                      .byte      0xa9, 0x75
000076B4  20 1F                      move.l     (a7)+, d0
000076B6  2B 40 D7 AE                move.l     d0, -$2852(a5)
000076BA  60 0A                      bra.b      $76c6
000076BC  42 6D D7 B6                clr.w      -$284a(a5)
000076C0  60 04                      bra.b      $76c6
000076C2  42 6D D7 B6                clr.w      -$284a(a5)
000076C6  10 2D D7 5D                move.b     -$28a3(a5), d0
000076CA  48 80                      ext.w      d0
000076CC  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
000076D0  66 54                      bne.b      $7726
000076D2  4A 6D D7 B6                tst.w      -$284a(a5)
000076D6  66 12                      bne.b      $76ea
000076D8  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
000076DE  59 4F                      subq.w     #$4, a7
000076E0  A9 75                      .byte      0xa9, 0x75
000076E2  20 1F                      move.l     (a7)+, d0
000076E4  2B 40 D7 AE                move.l     d0, -$2852(a5)
000076E8  60 3C                      bra.b      $7726
000076EA  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
000076F0  67 08                      beq.b      $76fa
000076F2  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
000076F8  66 28                      bne.b      $7722
000076FA  59 4F                      subq.w     #$4, a7
000076FC  A9 75                      .byte      0xa9, 0x75
000076FE  20 1F                      move.l     (a7)+, d0
00007700  90 AD D7 AE                sub.l      -$2852(a5), d0
00007704  72 3C                      moveq      #$3c, d1
00007706  B0 81                      cmp.l      d1, d0
00007708  64 12                      bcc.b      $771c
0000770A  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
00007710  59 4F                      subq.w     #$4, a7
00007712  A9 75                      .byte      0xa9, 0x75
00007714  20 1F                      move.l     (a7)+, d0
00007716  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000771A  60 0A                      bra.b      $7726
0000771C  42 6D D7 B6                clr.w      -$284a(a5)
00007720  60 04                      bra.b      $7726
00007722  42 6D D7 B6                clr.w      -$284a(a5)
00007726  10 2D D7 5D                move.b     -$28a3(a5), d0
0000772A  48 80                      ext.w      d0
0000772C  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007730  66 00 07 A6                bne.w      $7ed8
00007734  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000773A  66 2A                      bne.b      $7766
0000773C  59 4F                      subq.w     #$4, a7
0000773E  A9 75                      .byte      0xa9, 0x75
00007740  20 1F                      move.l     (a7)+, d0
00007742  90 AD D7 AE                sub.l      -$2852(a5), d0
00007746  72 3C                      moveq      #$3c, d1
00007748  B0 81                      cmp.l      d1, d0
0000774A  64 12                      bcc.b      $775e
0000774C  4A 2D D7 80                tst.b      -$2880(a5)
00007750  66 0C                      bne.b      $775e
00007752  4A 2D D7 7E                tst.b      -$2882(a5)
00007756  66 06                      bne.b      $775e
00007758  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
0000775E  42 6D D7 B6                clr.w      -$284a(a5)
00007762  60 00 07 74                bra.w      $7ed8
00007766  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
0000776C  66 24                      bne.b      $7792
0000776E  59 4F                      subq.w     #$4, a7
00007770  A9 75                      .byte      0xa9, 0x75
00007772  20 1F                      move.l     (a7)+, d0
00007774  90 AD D7 AE                sub.l      -$2852(a5), d0
00007778  72 3C                      moveq      #$3c, d1
0000777A  B0 81                      cmp.l      d1, d0
0000777C  64 0C                      bcc.b      $778a
0000777E  4A 2D D7 80                tst.b      -$2880(a5)
00007782  66 06                      bne.b      $778a
00007784  1B 7C 00 01 D7 CC          move.b     #$1, -$2834(a5)
0000778A  42 6D D7 B6                clr.w      -$284a(a5)
0000778E  60 00 07 48                bra.w      $7ed8
00007792  42 6D D7 B6                clr.w      -$284a(a5)
00007796  60 00 07 40                bra.w      $7ed8
0000779A  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
000077A0  66 00 01 6A                bne.w      $790c
000077A4  10 2D D7 5D                move.b     -$28a3(a5), d0
000077A8  48 80                      ext.w      d0
000077AA  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
000077AE  66 04                      bne.b      $77b4
000077B0  42 6D D7 B6                clr.w      -$284a(a5)
000077B4  10 2D D7 5D                move.b     -$28a3(a5), d0
000077B8  48 80                      ext.w      d0
000077BA  B0 6D CF 18                cmp.w      -$30e8(a5), d0
000077BE  66 04                      bne.b      $77c4
000077C0  42 6D D7 B6                clr.w      -$284a(a5)
000077C4  10 2D D7 5D                move.b     -$28a3(a5), d0
000077C8  48 80                      ext.w      d0
000077CA  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
000077CE  66 54                      bne.b      $7824
000077D0  4A 6D D7 B6                tst.w      -$284a(a5)
000077D4  66 12                      bne.b      $77e8
000077D6  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
000077DC  59 4F                      subq.w     #$4, a7
000077DE  A9 75                      .byte      0xa9, 0x75
000077E0  20 1F                      move.l     (a7)+, d0
000077E2  2B 40 D7 AE                move.l     d0, -$2852(a5)
000077E6  60 3C                      bra.b      $7824
000077E8  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
000077EE  67 08                      beq.b      $77f8
000077F0  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000077F6  66 28                      bne.b      $7820
000077F8  59 4F                      subq.w     #$4, a7
000077FA  A9 75                      .byte      0xa9, 0x75
000077FC  20 1F                      move.l     (a7)+, d0
000077FE  90 AD D7 AE                sub.l      -$2852(a5), d0
00007802  72 3C                      moveq      #$3c, d1
00007804  B0 81                      cmp.l      d1, d0
00007806  64 12                      bcc.b      $781a
00007808  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
0000780E  59 4F                      subq.w     #$4, a7
00007810  A9 75                      .byte      0xa9, 0x75
00007812  20 1F                      move.l     (a7)+, d0
00007814  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007818  60 0A                      bra.b      $7824
0000781A  42 6D D7 B6                clr.w      -$284a(a5)
0000781E  60 04                      bra.b      $7824
00007820  42 6D D7 B6                clr.w      -$284a(a5)
00007824  10 2D D7 5D                move.b     -$28a3(a5), d0
00007828  48 80                      ext.w      d0
0000782A  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000782E  66 34                      bne.b      $7864
00007830  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007836  66 28                      bne.b      $7860
00007838  59 4F                      subq.w     #$4, a7
0000783A  A9 75                      .byte      0xa9, 0x75
0000783C  20 1F                      move.l     (a7)+, d0
0000783E  90 AD D7 AE                sub.l      -$2852(a5), d0
00007842  72 3C                      moveq      #$3c, d1
00007844  B0 81                      cmp.l      d1, d0
00007846  64 12                      bcc.b      $785a
00007848  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
0000784E  59 4F                      subq.w     #$4, a7
00007850  A9 75                      .byte      0xa9, 0x75
00007852  20 1F                      move.l     (a7)+, d0
00007854  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007858  60 0A                      bra.b      $7864
0000785A  42 6D D7 B6                clr.w      -$284a(a5)
0000785E  60 04                      bra.b      $7864
00007860  42 6D D7 B6                clr.w      -$284a(a5)
00007864  10 2D D7 5D                move.b     -$28a3(a5), d0
00007868  48 80                      ext.w      d0
0000786A  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
0000786E  66 34                      bne.b      $78a4
00007870  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00007876  66 28                      bne.b      $78a0
00007878  59 4F                      subq.w     #$4, a7
0000787A  A9 75                      .byte      0xa9, 0x75
0000787C  20 1F                      move.l     (a7)+, d0
0000787E  90 AD D7 AE                sub.l      -$2852(a5), d0
00007882  72 3C                      moveq      #$3c, d1
00007884  B0 81                      cmp.l      d1, d0
00007886  64 12                      bcc.b      $789a
00007888  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
0000788E  59 4F                      subq.w     #$4, a7
00007890  A9 75                      .byte      0xa9, 0x75
00007892  20 1F                      move.l     (a7)+, d0
00007894  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007898  60 0A                      bra.b      $78a4
0000789A  42 6D D7 B6                clr.w      -$284a(a5)
0000789E  60 04                      bra.b      $78a4
000078A0  42 6D D7 B6                clr.w      -$284a(a5)
000078A4  10 2D D7 5D                move.b     -$28a3(a5), d0
000078A8  48 80                      ext.w      d0
000078AA  B0 6D E3 68                cmp.w      -$1c98(a5), d0
000078AE  66 00 06 28                bne.w      $7ed8
000078B2  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000078B8  66 1E                      bne.b      $78d8
000078BA  59 4F                      subq.w     #$4, a7
000078BC  A9 75                      .byte      0xa9, 0x75
000078BE  20 1F                      move.l     (a7)+, d0
000078C0  90 AD D7 AE                sub.l      -$2852(a5), d0
000078C4  72 3C                      moveq      #$3c, d1
000078C6  B0 81                      cmp.l      d1, d0
000078C8  64 06                      bcc.b      $78d0
000078CA  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000078D0  42 6D D7 B6                clr.w      -$284a(a5)
000078D4  60 00 06 02                bra.w      $7ed8
000078D8  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
000078DE  66 24                      bne.b      $7904
000078E0  59 4F                      subq.w     #$4, a7
000078E2  A9 75                      .byte      0xa9, 0x75
000078E4  20 1F                      move.l     (a7)+, d0
000078E6  90 AD D7 AE                sub.l      -$2852(a5), d0
000078EA  72 3C                      moveq      #$3c, d1
000078EC  B0 81                      cmp.l      d1, d0
000078EE  64 0C                      bcc.b      $78fc
000078F0  4E B9 00 00 26 52          jsr        $2652.l
000078F6  1B 7C 00 01 CF E8          move.b     #$1, -$3018(a5)
000078FC  42 6D D7 B6                clr.w      -$284a(a5)
00007900  60 00 05 D6                bra.w      $7ed8
00007904  42 6D D7 B6                clr.w      -$284a(a5)
00007908  60 00 05 CE                bra.w      $7ed8
0000790C  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
00007912  66 00 01 AC                bne.w      $7ac0
00007916  10 2D D7 5D                move.b     -$28a3(a5), d0
0000791A  48 80                      ext.w      d0
0000791C  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007920  66 04                      bne.b      $7926
00007922  42 6D D7 B6                clr.w      -$284a(a5)
00007926  10 2D D7 5D                move.b     -$28a3(a5), d0
0000792A  48 80                      ext.w      d0
0000792C  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007930  66 1C                      bne.b      $794e
00007932  4A 6D D7 B6                tst.w      -$284a(a5)
00007936  66 12                      bne.b      $794a
00007938  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
0000793E  59 4F                      subq.w     #$4, a7
00007940  A9 75                      .byte      0xa9, 0x75
00007942  20 1F                      move.l     (a7)+, d0
00007944  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007948  60 04                      bra.b      $794e
0000794A  42 6D D7 B6                clr.w      -$284a(a5)
0000794E  10 2D D7 5D                move.b     -$28a3(a5), d0
00007952  48 80                      ext.w      d0
00007954  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007958  66 4C                      bne.b      $79a6
0000795A  4A 6D D7 B6                tst.w      -$284a(a5)
0000795E  66 12                      bne.b      $7972
00007960  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00007966  59 4F                      subq.w     #$4, a7
00007968  A9 75                      .byte      0xa9, 0x75
0000796A  20 1F                      move.l     (a7)+, d0
0000796C  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007970  60 34                      bra.b      $79a6
00007972  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007978  66 28                      bne.b      $79a2
0000797A  59 4F                      subq.w     #$4, a7
0000797C  A9 75                      .byte      0xa9, 0x75
0000797E  20 1F                      move.l     (a7)+, d0
00007980  90 AD D7 AE                sub.l      -$2852(a5), d0
00007984  72 3C                      moveq      #$3c, d1
00007986  B0 81                      cmp.l      d1, d0
00007988  64 12                      bcc.b      $799c
0000798A  3B 7C 00 03 D7 B6          move.w     #$3, -$284a(a5)
00007990  59 4F                      subq.w     #$4, a7
00007992  A9 75                      .byte      0xa9, 0x75
00007994  20 1F                      move.l     (a7)+, d0
00007996  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000799A  60 0A                      bra.b      $79a6
0000799C  42 6D D7 B6                clr.w      -$284a(a5)
000079A0  60 04                      bra.b      $79a6
000079A2  42 6D D7 B6                clr.w      -$284a(a5)
000079A6  10 2D D7 5D                move.b     -$28a3(a5), d0
000079AA  48 80                      ext.w      d0
000079AC  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
000079B0  66 34                      bne.b      $79e6
000079B2  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
000079B8  66 28                      bne.b      $79e2
000079BA  59 4F                      subq.w     #$4, a7
000079BC  A9 75                      .byte      0xa9, 0x75
000079BE  20 1F                      move.l     (a7)+, d0
000079C0  90 AD D7 AE                sub.l      -$2852(a5), d0
000079C4  72 3C                      moveq      #$3c, d1
000079C6  B0 81                      cmp.l      d1, d0
000079C8  64 12                      bcc.b      $79dc
000079CA  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
000079D0  59 4F                      subq.w     #$4, a7
000079D2  A9 75                      .byte      0xa9, 0x75
000079D4  20 1F                      move.l     (a7)+, d0
000079D6  2B 40 D7 AE                move.l     d0, -$2852(a5)
000079DA  60 0A                      bra.b      $79e6
000079DC  42 6D D7 B6                clr.w      -$284a(a5)
000079E0  60 04                      bra.b      $79e6
000079E2  42 6D D7 B6                clr.w      -$284a(a5)
000079E6  10 2D D7 5D                move.b     -$28a3(a5), d0
000079EA  48 80                      ext.w      d0
000079EC  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
000079F0  66 34                      bne.b      $7a26
000079F2  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
000079F8  66 28                      bne.b      $7a22
000079FA  59 4F                      subq.w     #$4, a7
000079FC  A9 75                      .byte      0xa9, 0x75
000079FE  20 1F                      move.l     (a7)+, d0
00007A00  90 AD D7 AE                sub.l      -$2852(a5), d0
00007A04  72 3C                      moveq      #$3c, d1
00007A06  B0 81                      cmp.l      d1, d0
00007A08  64 12                      bcc.b      $7a1c
00007A0A  3B 7C 00 0B D7 B6          move.w     #$b, -$284a(a5)
00007A10  59 4F                      subq.w     #$4, a7
00007A12  A9 75                      .byte      0xa9, 0x75
00007A14  20 1F                      move.l     (a7)+, d0
00007A16  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007A1A  60 0A                      bra.b      $7a26
00007A1C  42 6D D7 B6                clr.w      -$284a(a5)
00007A20  60 04                      bra.b      $7a26
00007A22  42 6D D7 B6                clr.w      -$284a(a5)
00007A26  10 2D D7 5D                move.b     -$28a3(a5), d0
00007A2A  48 80                      ext.w      d0
00007A2C  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007A30  66 00 04 A6                bne.w      $7ed8
00007A34  0C 6D 00 03 D7 B6          cmpi.w     #$3, -$284a(a5)
00007A3A  66 24                      bne.b      $7a60
00007A3C  59 4F                      subq.w     #$4, a7
00007A3E  A9 75                      .byte      0xa9, 0x75
00007A40  20 1F                      move.l     (a7)+, d0
00007A42  90 AD D7 AE                sub.l      -$2852(a5), d0
00007A46  72 3C                      moveq      #$3c, d1
00007A48  B0 81                      cmp.l      d1, d0
00007A4A  64 0C                      bcc.b      $7a58
00007A4C  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007A52  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
00007A58  42 6D D7 B6                clr.w      -$284a(a5)
00007A5C  60 00 04 7A                bra.w      $7ed8
00007A60  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
00007A66  66 24                      bne.b      $7a8c
00007A68  59 4F                      subq.w     #$4, a7
00007A6A  A9 75                      .byte      0xa9, 0x75
00007A6C  20 1F                      move.l     (a7)+, d0
00007A6E  90 AD D7 AE                sub.l      -$2852(a5), d0
00007A72  72 3C                      moveq      #$3c, d1
00007A74  B0 81                      cmp.l      d1, d0
00007A76  64 0C                      bcc.b      $7a84
00007A78  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007A7E  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
00007A84  42 6D D7 B6                clr.w      -$284a(a5)
00007A88  60 00 04 4E                bra.w      $7ed8
00007A8C  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
00007A92  66 24                      bne.b      $7ab8
00007A94  59 4F                      subq.w     #$4, a7
00007A96  A9 75                      .byte      0xa9, 0x75
00007A98  20 1F                      move.l     (a7)+, d0
00007A9A  90 AD D7 AE                sub.l      -$2852(a5), d0
00007A9E  72 3C                      moveq      #$3c, d1
00007AA0  B0 81                      cmp.l      d1, d0
00007AA2  64 0C                      bcc.b      $7ab0
00007AA4  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00007AAA  3B 7C 00 03 D7 A6          move.w     #$3, -$285a(a5)
00007AB0  42 6D D7 B6                clr.w      -$284a(a5)
00007AB4  60 00 04 22                bra.w      $7ed8
00007AB8  42 6D D7 B6                clr.w      -$284a(a5)
00007ABC  60 00 04 1A                bra.w      $7ed8
00007AC0  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
00007AC6  66 00 01 3E                bne.w      $7c06
00007ACA  10 2D D7 5D                move.b     -$28a3(a5), d0
00007ACE  48 80                      ext.w      d0
00007AD0  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007AD4  66 04                      bne.b      $7ada
00007AD6  42 6D D7 B6                clr.w      -$284a(a5)
00007ADA  10 2D D7 5D                move.b     -$28a3(a5), d0
00007ADE  48 80                      ext.w      d0
00007AE0  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007AE4  67 0C                      beq.b      $7af2
00007AE6  10 2D D7 5D                move.b     -$28a3(a5), d0
00007AEA  48 80                      ext.w      d0
00007AEC  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007AF0  66 04                      bne.b      $7af6
00007AF2  42 6D D7 B6                clr.w      -$284a(a5)
00007AF6  10 2D D7 5D                move.b     -$28a3(a5), d0
00007AFA  48 80                      ext.w      d0
00007AFC  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007B00  66 2E                      bne.b      $7b30
00007B02  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
00007B08  66 22                      bne.b      $7b2c
00007B0A  59 4F                      subq.w     #$4, a7
00007B0C  A9 75                      .byte      0xa9, 0x75
00007B0E  20 1F                      move.l     (a7)+, d0
00007B10  90 AD D7 AE                sub.l      -$2852(a5), d0
00007B14  72 3C                      moveq      #$3c, d1
00007B16  B0 81                      cmp.l      d1, d0
00007B18  64 0C                      bcc.b      $7b26
00007B1A  4E B9 00 00 8A 5E          jsr        $8a5e.l
00007B20  1B 7C 00 01 D0 60          move.b     #$1, -$2fa0(a5)
00007B26  42 6D D7 B6                clr.w      -$284a(a5)
00007B2A  60 04                      bra.b      $7b30
00007B2C  42 6D D7 B6                clr.w      -$284a(a5)
00007B30  10 2D D7 5D                move.b     -$28a3(a5), d0
00007B34  48 80                      ext.w      d0
00007B36  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007B3A  66 00 00 86                bne.w      $7bc2
00007B3E  4A 6D D7 B6                tst.w      -$284a(a5)
00007B42  66 12                      bne.b      $7b56
00007B44  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007B4A  59 4F                      subq.w     #$4, a7
00007B4C  A9 75                      .byte      0xa9, 0x75
00007B4E  20 1F                      move.l     (a7)+, d0
00007B50  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007B54  60 6C                      bra.b      $7bc2
00007B56  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007B5C  66 28                      bne.b      $7b86
00007B5E  59 4F                      subq.w     #$4, a7
00007B60  A9 75                      .byte      0xa9, 0x75
00007B62  20 1F                      move.l     (a7)+, d0
00007B64  90 AD D7 AE                sub.l      -$2852(a5), d0
00007B68  72 3C                      moveq      #$3c, d1
00007B6A  B0 81                      cmp.l      d1, d0
00007B6C  64 12                      bcc.b      $7b80
00007B6E  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007B74  59 4F                      subq.w     #$4, a7
00007B76  A9 75                      .byte      0xa9, 0x75
00007B78  20 1F                      move.l     (a7)+, d0
00007B7A  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007B7E  60 42                      bra.b      $7bc2
00007B80  42 6D D7 B6                clr.w      -$284a(a5)
00007B84  60 3C                      bra.b      $7bc2
00007B86  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007B8C  67 08                      beq.b      $7b96
00007B8E  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
00007B94  66 28                      bne.b      $7bbe
00007B96  59 4F                      subq.w     #$4, a7
00007B98  A9 75                      .byte      0xa9, 0x75
00007B9A  20 1F                      move.l     (a7)+, d0
00007B9C  90 AD D7 AE                sub.l      -$2852(a5), d0
00007BA0  72 3C                      moveq      #$3c, d1
00007BA2  B0 81                      cmp.l      d1, d0
00007BA4  64 12                      bcc.b      $7bb8
00007BA6  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
00007BAC  59 4F                      subq.w     #$4, a7
00007BAE  A9 75                      .byte      0xa9, 0x75
00007BB0  20 1F                      move.l     (a7)+, d0
00007BB2  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007BB6  60 0A                      bra.b      $7bc2
00007BB8  42 6D D7 B6                clr.w      -$284a(a5)
00007BBC  60 04                      bra.b      $7bc2
00007BBE  42 6D D7 B6                clr.w      -$284a(a5)
00007BC2  10 2D D7 5D                move.b     -$28a3(a5), d0
00007BC6  48 80                      ext.w      d0
00007BC8  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007BCC  66 00 03 0A                bne.w      $7ed8
00007BD0  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007BD6  67 08                      beq.b      $7be0
00007BD8  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
00007BDE  66 1E                      bne.b      $7bfe
00007BE0  59 4F                      subq.w     #$4, a7
00007BE2  A9 75                      .byte      0xa9, 0x75
00007BE4  20 1F                      move.l     (a7)+, d0
00007BE6  90 AD D7 AE                sub.l      -$2852(a5), d0
00007BEA  72 3C                      moveq      #$3c, d1
00007BEC  B0 81                      cmp.l      d1, d0
00007BEE  64 06                      bcc.b      $7bf6
00007BF0  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00007BF6  42 6D D7 B6                clr.w      -$284a(a5)
00007BFA  60 00 02 DC                bra.w      $7ed8
00007BFE  42 6D D7 B6                clr.w      -$284a(a5)
00007C02  60 00 02 D4                bra.w      $7ed8
00007C06  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
00007C0C  66 00 01 08                bne.w      $7d16
00007C10  10 2D D7 5D                move.b     -$28a3(a5), d0
00007C14  48 80                      ext.w      d0
00007C16  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007C1A  66 04                      bne.b      $7c20
00007C1C  42 6D D7 B6                clr.w      -$284a(a5)
00007C20  10 2D D7 5D                move.b     -$28a3(a5), d0
00007C24  48 80                      ext.w      d0
00007C26  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007C2A  66 04                      bne.b      $7c30
00007C2C  42 6D D7 B6                clr.w      -$284a(a5)
00007C30  10 2D D7 5D                move.b     -$28a3(a5), d0
00007C34  48 80                      ext.w      d0
00007C36  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007C3A  66 04                      bne.b      $7c40
00007C3C  42 6D D7 B6                clr.w      -$284a(a5)
00007C40  10 2D D7 5D                move.b     -$28a3(a5), d0
00007C44  48 80                      ext.w      d0
00007C46  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007C4A  66 54                      bne.b      $7ca0
00007C4C  4A 6D D7 B6                tst.w      -$284a(a5)
00007C50  66 12                      bne.b      $7c64
00007C52  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007C58  59 4F                      subq.w     #$4, a7
00007C5A  A9 75                      .byte      0xa9, 0x75
00007C5C  20 1F                      move.l     (a7)+, d0
00007C5E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007C62  60 3C                      bra.b      $7ca0
00007C64  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007C6A  67 08                      beq.b      $7c74
00007C6C  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007C72  66 28                      bne.b      $7c9c
00007C74  59 4F                      subq.w     #$4, a7
00007C76  A9 75                      .byte      0xa9, 0x75
00007C78  20 1F                      move.l     (a7)+, d0
00007C7A  90 AD D7 AE                sub.l      -$2852(a5), d0
00007C7E  72 3C                      moveq      #$3c, d1
00007C80  B0 81                      cmp.l      d1, d0
00007C82  64 12                      bcc.b      $7c96
00007C84  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007C8A  59 4F                      subq.w     #$4, a7
00007C8C  A9 75                      .byte      0xa9, 0x75
00007C8E  20 1F                      move.l     (a7)+, d0
00007C90  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007C94  60 0A                      bra.b      $7ca0
00007C96  42 6D D7 B6                clr.w      -$284a(a5)
00007C9A  60 04                      bra.b      $7ca0
00007C9C  42 6D D7 B6                clr.w      -$284a(a5)
00007CA0  10 2D D7 5D                move.b     -$28a3(a5), d0
00007CA4  48 80                      ext.w      d0
00007CA6  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007CAA  66 28                      bne.b      $7cd4
00007CAC  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007CB2  66 1C                      bne.b      $7cd0
00007CB4  59 4F                      subq.w     #$4, a7
00007CB6  A9 75                      .byte      0xa9, 0x75
00007CB8  20 1F                      move.l     (a7)+, d0
00007CBA  90 AD D7 AE                sub.l      -$2852(a5), d0
00007CBE  72 3C                      moveq      #$3c, d1
00007CC0  B0 81                      cmp.l      d1, d0
00007CC2  64 06                      bcc.b      $7cca
00007CC4  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00007CCA  42 6D D7 B6                clr.w      -$284a(a5)
00007CCE  60 04                      bra.b      $7cd4
00007CD0  42 6D D7 B6                clr.w      -$284a(a5)
00007CD4  10 2D D7 5D                move.b     -$28a3(a5), d0
00007CD8  48 80                      ext.w      d0
00007CDA  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007CDE  66 00 01 F8                bne.w      $7ed8
00007CE2  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007CE8  66 24                      bne.b      $7d0e
00007CEA  59 4F                      subq.w     #$4, a7
00007CEC  A9 75                      .byte      0xa9, 0x75
00007CEE  20 1F                      move.l     (a7)+, d0
00007CF0  90 AD D7 AE                sub.l      -$2852(a5), d0
00007CF4  72 3C                      moveq      #$3c, d1
00007CF6  B0 81                      cmp.l      d1, d0
00007CF8  64 0C                      bcc.b      $7d06
00007CFA  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00007D00  1B 7C 00 01 D7 CA          move.b     #$1, -$2836(a5)
00007D06  42 6D D7 B6                clr.w      -$284a(a5)
00007D0A  60 00 01 CC                bra.w      $7ed8
00007D0E  42 6D D7 B6                clr.w      -$284a(a5)
00007D12  60 00 01 C4                bra.w      $7ed8
00007D16  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
00007D1C  66 00 01 BA                bne.w      $7ed8
00007D20  10 2D D7 5D                move.b     -$28a3(a5), d0
00007D24  48 80                      ext.w      d0
00007D26  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007D2A  66 04                      bne.b      $7d30
00007D2C  42 6D D7 B6                clr.w      -$284a(a5)
00007D30  10 2D D7 5D                move.b     -$28a3(a5), d0
00007D34  48 80                      ext.w      d0
00007D36  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007D3A  66 04                      bne.b      $7d40
00007D3C  42 6D D7 B6                clr.w      -$284a(a5)
00007D40  10 2D D7 5D                move.b     -$28a3(a5), d0
00007D44  48 80                      ext.w      d0
00007D46  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007D4A  66 4C                      bne.b      $7d98
00007D4C  4A 6D D7 B6                tst.w      -$284a(a5)
00007D50  66 12                      bne.b      $7d64
00007D52  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007D58  59 4F                      subq.w     #$4, a7
00007D5A  A9 75                      .byte      0xa9, 0x75
00007D5C  20 1F                      move.l     (a7)+, d0
00007D5E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007D62  60 34                      bra.b      $7d98
00007D64  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007D6A  66 28                      bne.b      $7d94
00007D6C  59 4F                      subq.w     #$4, a7
00007D6E  A9 75                      .byte      0xa9, 0x75
00007D70  20 1F                      move.l     (a7)+, d0
00007D72  90 AD D7 AE                sub.l      -$2852(a5), d0
00007D76  72 3C                      moveq      #$3c, d1
00007D78  B0 81                      cmp.l      d1, d0
00007D7A  64 12                      bcc.b      $7d8e
00007D7C  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007D82  59 4F                      subq.w     #$4, a7
00007D84  A9 75                      .byte      0xa9, 0x75
00007D86  20 1F                      move.l     (a7)+, d0
00007D88  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007D8C  60 0A                      bra.b      $7d98
00007D8E  42 6D D7 B6                clr.w      -$284a(a5)
00007D92  60 04                      bra.b      $7d98
00007D94  42 6D D7 B6                clr.w      -$284a(a5)
00007D98  10 2D D7 5D                move.b     -$28a3(a5), d0
00007D9C  48 80                      ext.w      d0
00007D9E  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007DA2  66 4C                      bne.b      $7df0
00007DA4  4A 6D D7 B6                tst.w      -$284a(a5)
00007DA8  66 12                      bne.b      $7dbc
00007DAA  3B 7C 00 03 D7 B6          move.w     #$3, -$284a(a5)
00007DB0  59 4F                      subq.w     #$4, a7
00007DB2  A9 75                      .byte      0xa9, 0x75
00007DB4  20 1F                      move.l     (a7)+, d0
00007DB6  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007DBA  60 34                      bra.b      $7df0
00007DBC  0C 6D 00 03 D7 B6          cmpi.w     #$3, -$284a(a5)
00007DC2  66 28                      bne.b      $7dec
00007DC4  59 4F                      subq.w     #$4, a7
00007DC6  A9 75                      .byte      0xa9, 0x75
00007DC8  20 1F                      move.l     (a7)+, d0
00007DCA  90 AD D7 AE                sub.l      -$2852(a5), d0
00007DCE  72 3C                      moveq      #$3c, d1
00007DD0  B0 81                      cmp.l      d1, d0
00007DD2  64 12                      bcc.b      $7de6
00007DD4  3B 7C 00 04 D7 B6          move.w     #$4, -$284a(a5)
00007DDA  59 4F                      subq.w     #$4, a7
00007DDC  A9 75                      .byte      0xa9, 0x75
00007DDE  20 1F                      move.l     (a7)+, d0
00007DE0  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007DE4  60 0A                      bra.b      $7df0
00007DE6  42 6D D7 B6                clr.w      -$284a(a5)
00007DEA  60 04                      bra.b      $7df0
00007DEC  42 6D D7 B6                clr.w      -$284a(a5)
00007DF0  10 2D D7 5D                move.b     -$28a3(a5), d0
00007DF4  48 80                      ext.w      d0
00007DF6  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007DFA  66 4C                      bne.b      $7e48
00007DFC  4A 6D D7 B6                tst.w      -$284a(a5)
00007E00  66 12                      bne.b      $7e14
00007E02  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00007E08  59 4F                      subq.w     #$4, a7
00007E0A  A9 75                      .byte      0xa9, 0x75
00007E0C  20 1F                      move.l     (a7)+, d0
00007E0E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007E12  60 34                      bra.b      $7e48
00007E14  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00007E1A  66 28                      bne.b      $7e44
00007E1C  59 4F                      subq.w     #$4, a7
00007E1E  A9 75                      .byte      0xa9, 0x75
00007E20  20 1F                      move.l     (a7)+, d0
00007E22  90 AD D7 AE                sub.l      -$2852(a5), d0
00007E26  72 3C                      moveq      #$3c, d1
00007E28  B0 81                      cmp.l      d1, d0
00007E2A  64 12                      bcc.b      $7e3e
00007E2C  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
00007E32  59 4F                      subq.w     #$4, a7
00007E34  A9 75                      .byte      0xa9, 0x75
00007E36  20 1F                      move.l     (a7)+, d0
00007E38  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007E3C  60 0A                      bra.b      $7e48
00007E3E  42 6D D7 B6                clr.w      -$284a(a5)
00007E42  60 04                      bra.b      $7e48
00007E44  42 6D D7 B6                clr.w      -$284a(a5)
00007E48  10 2D D7 5D                move.b     -$28a3(a5), d0
00007E4C  48 80                      ext.w      d0
00007E4E  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007E52  66 00 00 84                bne.w      $7ed8
00007E56  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007E5C  66 22                      bne.b      $7e80
00007E5E  59 4F                      subq.w     #$4, a7
00007E60  A9 75                      .byte      0xa9, 0x75
00007E62  20 1F                      move.l     (a7)+, d0
00007E64  90 AD D7 AE                sub.l      -$2852(a5), d0
00007E68  72 3C                      moveq      #$3c, d1
00007E6A  B0 81                      cmp.l      d1, d0
00007E6C  64 0C                      bcc.b      $7e7a
00007E6E  4E B9 00 00 2D C6          jsr        $2dc6.l
00007E74  1B 7C 00 01 D8 FE          move.b     #$1, -$2702(a5)
00007E7A  42 6D D7 B6                clr.w      -$284a(a5)
00007E7E  60 58                      bra.b      $7ed8
00007E80  0C 6D 00 04 D7 B6          cmpi.w     #$4, -$284a(a5)
00007E86  66 22                      bne.b      $7eaa
00007E88  59 4F                      subq.w     #$4, a7
00007E8A  A9 75                      .byte      0xa9, 0x75
00007E8C  20 1F                      move.l     (a7)+, d0
00007E8E  90 AD D7 AE                sub.l      -$2852(a5), d0
00007E92  72 3C                      moveq      #$3c, d1
00007E94  B0 81                      cmp.l      d1, d0
00007E96  64 0C                      bcc.b      $7ea4
00007E98  4E B9 00 00 2E 2A          jsr        $2e2a.l
00007E9E  1B 7C 00 01 D8 FD          move.b     #$1, -$2703(a5)
00007EA4  42 6D D7 B6                clr.w      -$284a(a5)
00007EA8  60 2E                      bra.b      $7ed8
00007EAA  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
00007EB0  66 22                      bne.b      $7ed4
00007EB2  59 4F                      subq.w     #$4, a7
00007EB4  A9 75                      .byte      0xa9, 0x75
00007EB6  20 1F                      move.l     (a7)+, d0
00007EB8  90 AD D7 AE                sub.l      -$2852(a5), d0
00007EBC  72 3C                      moveq      #$3c, d1
00007EBE  B0 81                      cmp.l      d1, d0
00007EC0  64 0C                      bcc.b      $7ece
00007EC2  4E B9 00 00 2E 8E          jsr        $2e8e.l
00007EC8  1B 7C 00 01 D8 FC          move.b     #$1, -$2704(a5)
00007ECE  42 6D D7 B6                clr.w      -$284a(a5)
00007ED2  60 04                      bra.b      $7ed8
00007ED4  42 6D D7 B6                clr.w      -$284a(a5)
00007ED8  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00007EDE  66 00 01 90                bne.w      $8070
00007EE2  10 2D D7 5D                move.b     -$28a3(a5), d0
00007EE6  48 80                      ext.w      d0
00007EE8  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00007EEC  66 04                      bne.b      $7ef2
00007EEE  42 6D D7 B6                clr.w      -$284a(a5)
00007EF2  10 2D D7 5D                move.b     -$28a3(a5), d0
00007EF6  48 80                      ext.w      d0
00007EF8  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007EFC  66 04                      bne.b      $7f02
00007EFE  42 6D D7 B6                clr.w      -$284a(a5)
00007F02  10 2D D7 5D                move.b     -$28a3(a5), d0
00007F06  48 80                      ext.w      d0
00007F08  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007F0C  66 54                      bne.b      $7f62
00007F0E  4A 6D D7 B6                tst.w      -$284a(a5)
00007F12  66 12                      bne.b      $7f26
00007F14  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00007F1A  59 4F                      subq.w     #$4, a7
00007F1C  A9 75                      .byte      0xa9, 0x75
00007F1E  20 1F                      move.l     (a7)+, d0
00007F20  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007F24  60 3C                      bra.b      $7f62
00007F26  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00007F2C  67 08                      beq.b      $7f36
00007F2E  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007F34  66 28                      bne.b      $7f5e
00007F36  59 4F                      subq.w     #$4, a7
00007F38  A9 75                      .byte      0xa9, 0x75
00007F3A  20 1F                      move.l     (a7)+, d0
00007F3C  90 AD D7 AE                sub.l      -$2852(a5), d0
00007F40  72 3C                      moveq      #$3c, d1
00007F42  B0 81                      cmp.l      d1, d0
00007F44  64 12                      bcc.b      $7f58
00007F46  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00007F4C  59 4F                      subq.w     #$4, a7
00007F4E  A9 75                      .byte      0xa9, 0x75
00007F50  20 1F                      move.l     (a7)+, d0
00007F52  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007F56  60 0A                      bra.b      $7f62
00007F58  42 6D D7 B6                clr.w      -$284a(a5)
00007F5C  60 04                      bra.b      $7f62
00007F5E  42 6D D7 B6                clr.w      -$284a(a5)
00007F62  10 2D D7 5D                move.b     -$28a3(a5), d0
00007F66  48 80                      ext.w      d0
00007F68  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00007F6C  66 2E                      bne.b      $7f9c
00007F6E  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007F74  66 26                      bne.b      $7f9c
00007F76  59 4F                      subq.w     #$4, a7
00007F78  A9 75                      .byte      0xa9, 0x75
00007F7A  20 1F                      move.l     (a7)+, d0
00007F7C  90 AD D7 AE                sub.l      -$2852(a5), d0
00007F80  72 3C                      moveq      #$3c, d1
00007F82  B0 81                      cmp.l      d1, d0
00007F84  64 12                      bcc.b      $7f98
00007F86  3B 7C 00 05 D7 B6          move.w     #$5, -$284a(a5)
00007F8C  59 4F                      subq.w     #$4, a7
00007F8E  A9 75                      .byte      0xa9, 0x75
00007F90  20 1F                      move.l     (a7)+, d0
00007F92  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007F96  60 04                      bra.b      $7f9c
00007F98  42 6D D7 B6                clr.w      -$284a(a5)
00007F9C  10 2D D7 5D                move.b     -$28a3(a5), d0
00007FA0  48 80                      ext.w      d0
00007FA2  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007FA6  66 26                      bne.b      $7fce
00007FA8  59 4F                      subq.w     #$4, a7
00007FAA  A9 75                      .byte      0xa9, 0x75
00007FAC  20 1F                      move.l     (a7)+, d0
00007FAE  90 AD D7 AE                sub.l      -$2852(a5), d0
00007FB2  72 3C                      moveq      #$3c, d1
00007FB4  B0 81                      cmp.l      d1, d0
00007FB6  64 12                      bcc.b      $7fca
00007FB8  3B 7C 00 06 D7 B6          move.w     #$6, -$284a(a5)
00007FBE  59 4F                      subq.w     #$4, a7
00007FC0  A9 75                      .byte      0xa9, 0x75
00007FC2  20 1F                      move.l     (a7)+, d0
00007FC4  2B 40 D7 AE                move.l     d0, -$2852(a5)
00007FC8  60 04                      bra.b      $7fce
00007FCA  42 6D D7 B6                clr.w      -$284a(a5)
00007FCE  10 2D D7 5D                move.b     -$28a3(a5), d0
00007FD2  48 80                      ext.w      d0
00007FD4  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00007FD8  66 00 00 96                bne.w      $8070
00007FDC  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00007FE2  66 1C                      bne.b      $8000
00007FE4  59 4F                      subq.w     #$4, a7
00007FE6  A9 75                      .byte      0xa9, 0x75
00007FE8  20 1F                      move.l     (a7)+, d0
00007FEA  90 AD D7 AE                sub.l      -$2852(a5), d0
00007FEE  72 3C                      moveq      #$3c, d1
00007FF0  B0 81                      cmp.l      d1, d0
00007FF2  64 06                      bcc.b      $7ffa
00007FF4  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00007FFA  42 6D D7 B6                clr.w      -$284a(a5)
00007FFE  60 70                      bra.b      $8070
00008000  0C 6D 00 05 D7 B6          cmpi.w     #$5, -$284a(a5)
00008006  66 2E                      bne.b      $8036
00008008  59 4F                      subq.w     #$4, a7
0000800A  A9 75                      .byte      0xa9, 0x75
0000800C  20 1F                      move.l     (a7)+, d0
0000800E  90 AD D7 AE                sub.l      -$2852(a5), d0
00008012  72 3C                      moveq      #$3c, d1
00008014  B0 81                      cmp.l      d1, d0
00008016  64 18                      bcc.b      $8030
00008018  4A 2D CF 58                tst.b      -$30a8(a5)
0000801C  66 0E                      bne.b      $802c
0000801E  4E B9 00 00 05 5A          jsr        $55a.l
00008024  1B 7C 00 01 CF 58          move.b     #$1, -$30a8(a5)
0000802A  60 04                      bra.b      $8030
0000802C  42 6D D7 B6                clr.w      -$284a(a5)
00008030  42 6D D7 B6                clr.w      -$284a(a5)
00008034  60 3A                      bra.b      $8070
00008036  0C 6D 00 06 D7 B6          cmpi.w     #$6, -$284a(a5)
0000803C  66 2E                      bne.b      $806c
0000803E  59 4F                      subq.w     #$4, a7
00008040  A9 75                      .byte      0xa9, 0x75
00008042  20 1F                      move.l     (a7)+, d0
00008044  90 AD D7 AE                sub.l      -$2852(a5), d0
00008048  72 3C                      moveq      #$3c, d1
0000804A  B0 81                      cmp.l      d1, d0
0000804C  64 18                      bcc.b      $8066
0000804E  4A 2D CF 5A                tst.b      -$30a6(a5)
00008052  66 0E                      bne.b      $8062
00008054  4E B9 00 00 05 0A          jsr        $50a.l
0000805A  1B 7C 00 01 CF 5A          move.b     #$1, -$30a6(a5)
00008060  60 04                      bra.b      $8066
00008062  42 6D D7 B6                clr.w      -$284a(a5)
00008066  42 6D D7 B6                clr.w      -$284a(a5)
0000806A  60 04                      bra.b      $8070
0000806C  42 6D D7 B6                clr.w      -$284a(a5)
00008070  0C 6D 00 0D FF E2          cmpi.w     #$d, -$1e(a5)
00008076  66 0E                      bne.b      $8086
00008078  0C 2D 00 31 D7 5D          cmpi.b     #$31, -$28a3(a5)
0000807E  66 06                      bne.b      $8086
00008080  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00008086  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
0000808C  66 00 01 E0                bne.w      $826e
00008090  10 2D D7 5D                move.b     -$28a3(a5), d0
00008094  48 80                      ext.w      d0
00008096  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
0000809A  66 04                      bne.b      $80a0
0000809C  42 6D D7 B6                clr.w      -$284a(a5)
000080A0  10 2D D7 5D                move.b     -$28a3(a5), d0
000080A4  48 80                      ext.w      d0
000080A6  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
000080AA  66 04                      bne.b      $80b0
000080AC  42 6D D7 B6                clr.w      -$284a(a5)
000080B0  10 2D D7 5D                move.b     -$28a3(a5), d0
000080B4  48 80                      ext.w      d0
000080B6  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
000080BA  66 1C                      bne.b      $80d8
000080BC  4A 6D D7 B6                tst.w      -$284a(a5)
000080C0  66 12                      bne.b      $80d4
000080C2  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
000080C8  59 4F                      subq.w     #$4, a7
000080CA  A9 75                      .byte      0xa9, 0x75
000080CC  20 1F                      move.l     (a7)+, d0
000080CE  2B 40 D7 AE                move.l     d0, -$2852(a5)
000080D2  60 04                      bra.b      $80d8
000080D4  42 6D D7 B6                clr.w      -$284a(a5)
000080D8  10 2D D7 5D                move.b     -$28a3(a5), d0
000080DC  48 80                      ext.w      d0
000080DE  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
000080E2  66 00 00 E4                bne.w      $81c8
000080E6  4A 6D D7 B6                tst.w      -$284a(a5)
000080EA  66 14                      bne.b      $8100
000080EC  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
000080F2  59 4F                      subq.w     #$4, a7
000080F4  A9 75                      .byte      0xa9, 0x75
000080F6  20 1F                      move.l     (a7)+, d0
000080F8  2B 40 D7 AE                move.l     d0, -$2852(a5)
000080FC  60 00 00 CA                bra.w      $81c8
00008100  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
00008106  66 2C                      bne.b      $8134
00008108  59 4F                      subq.w     #$4, a7
0000810A  A9 75                      .byte      0xa9, 0x75
0000810C  20 1F                      move.l     (a7)+, d0
0000810E  90 AD D7 AE                sub.l      -$2852(a5), d0
00008112  72 3C                      moveq      #$3c, d1
00008114  B0 81                      cmp.l      d1, d0
00008116  64 14                      bcc.b      $812c
00008118  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
0000811E  59 4F                      subq.w     #$4, a7
00008120  A9 75                      .byte      0xa9, 0x75
00008122  20 1F                      move.l     (a7)+, d0
00008124  2B 40 D7 AE                move.l     d0, -$2852(a5)
00008128  60 00 00 9E                bra.w      $81c8
0000812C  42 6D D7 B6                clr.w      -$284a(a5)
00008130  60 00 00 96                bra.w      $81c8
00008134  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
0000813A  66 28                      bne.b      $8164
0000813C  59 4F                      subq.w     #$4, a7
0000813E  A9 75                      .byte      0xa9, 0x75
00008140  20 1F                      move.l     (a7)+, d0
00008142  90 AD D7 AE                sub.l      -$2852(a5), d0
00008146  72 3C                      moveq      #$3c, d1
00008148  B0 81                      cmp.l      d1, d0
0000814A  64 12                      bcc.b      $815e
0000814C  3B 7C 00 0B D7 B6          move.w     #$b, -$284a(a5)
00008152  59 4F                      subq.w     #$4, a7
00008154  A9 75                      .byte      0xa9, 0x75
00008156  20 1F                      move.l     (a7)+, d0
00008158  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000815C  60 6A                      bra.b      $81c8
0000815E  42 6D D7 B6                clr.w      -$284a(a5)
00008162  60 64                      bra.b      $81c8
00008164  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
0000816A  66 28                      bne.b      $8194
0000816C  59 4F                      subq.w     #$4, a7
0000816E  A9 75                      .byte      0xa9, 0x75
00008170  20 1F                      move.l     (a7)+, d0
00008172  90 AD D7 AE                sub.l      -$2852(a5), d0
00008176  72 3C                      moveq      #$3c, d1
00008178  B0 81                      cmp.l      d1, d0
0000817A  64 12                      bcc.b      $818e
0000817C  3B 7C 00 0C D7 B6          move.w     #$c, -$284a(a5)
00008182  59 4F                      subq.w     #$4, a7
00008184  A9 75                      .byte      0xa9, 0x75
00008186  20 1F                      move.l     (a7)+, d0
00008188  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000818C  60 3A                      bra.b      $81c8
0000818E  42 6D D7 B6                clr.w      -$284a(a5)
00008192  60 34                      bra.b      $81c8
00008194  0C 6D 00 0C D7 B6          cmpi.w     #$c, -$284a(a5)
0000819A  66 28                      bne.b      $81c4
0000819C  59 4F                      subq.w     #$4, a7
0000819E  A9 75                      .byte      0xa9, 0x75
000081A0  20 1F                      move.l     (a7)+, d0
000081A2  90 AD D7 AE                sub.l      -$2852(a5), d0
000081A6  72 3C                      moveq      #$3c, d1
000081A8  B0 81                      cmp.l      d1, d0
000081AA  64 12                      bcc.b      $81be
000081AC  3B 7C 00 0C D7 B6          move.w     #$c, -$284a(a5)
000081B2  59 4F                      subq.w     #$4, a7
000081B4  A9 75                      .byte      0xa9, 0x75
000081B6  20 1F                      move.l     (a7)+, d0
000081B8  2B 40 D7 AE                move.l     d0, -$2852(a5)
000081BC  60 0A                      bra.b      $81c8
000081BE  42 6D D7 B6                clr.w      -$284a(a5)
000081C2  60 04                      bra.b      $81c8
000081C4  42 6D D7 B6                clr.w      -$284a(a5)
000081C8  10 2D D7 5D                move.b     -$28a3(a5), d0
000081CC  48 80                      ext.w      d0
000081CE  B0 6D E3 68                cmp.w      -$1c98(a5), d0
000081D2  66 28                      bne.b      $81fc
000081D4  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000081DA  66 1C                      bne.b      $81f8
000081DC  59 4F                      subq.w     #$4, a7
000081DE  A9 75                      .byte      0xa9, 0x75
000081E0  20 1F                      move.l     (a7)+, d0
000081E2  90 AD D7 AE                sub.l      -$2852(a5), d0
000081E6  72 3C                      moveq      #$3c, d1
000081E8  B0 81                      cmp.l      d1, d0
000081EA  64 06                      bcc.b      $81f2
000081EC  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000081F2  42 6D D7 B6                clr.w      -$284a(a5)
000081F6  60 04                      bra.b      $81fc
000081F8  42 6D D7 B6                clr.w      -$284a(a5)
000081FC  10 2D D7 5D                move.b     -$28a3(a5), d0
00008200  48 80                      ext.w      d0
00008202  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00008206  66 66                      bne.b      $826e
00008208  0C 6D 00 0C D7 B6          cmpi.w     #$c, -$284a(a5)
0000820E  66 5A                      bne.b      $826a
00008210  59 4F                      subq.w     #$4, a7
00008212  A9 75                      .byte      0xa9, 0x75
00008214  20 1F                      move.l     (a7)+, d0
00008216  90 AD D7 AE                sub.l      -$2852(a5), d0
0000821A  72 3C                      moveq      #$3c, d1
0000821C  B0 81                      cmp.l      d1, d0
0000821E  64 44                      bcc.b      $8264
00008220  2F 2D DE C6                move.l     -$213a(a5), -(a7)
00008224  4E B9 00 00 00 98          jsr        $98.l
0000822A  30 2D DC 58                move.w     -$23a8(a5), d0
0000822E  57 40                      subq.w     #$3, d0
00008230  3B 40 CF A2                move.w     d0, -$305e(a5)
00008234  70 16                      moveq      #$16, d0
00008236  D0 6D CF A2                add.w      -$305e(a5), d0
0000823A  3B 40 CF A6                move.w     d0, -$305a(a5)
0000823E  30 2D DC 56                move.w     -$23aa(a5), d0
00008242  57 40                      subq.w     #$3, d0
00008244  3B 40 CF A0                move.w     d0, -$3060(a5)
00008248  70 36                      moveq      #$36, d0
0000824A  D0 6D CF A0                add.w      -$3060(a5), d0
0000824E  3B 40 CF A4                move.w     d0, -$305c(a5)
00008252  1B 7C 00 01 CF AA          move.b     #$1, -$3056(a5)
00008258  42 2D FF DC                clr.b      -$24(a5)
0000825C  A9 75                      .byte      0xa9, 0x75
0000825E  20 1F                      move.l     (a7)+, d0
00008260  2B 40 CF 9C                move.l     d0, -$3064(a5)
00008264  42 6D D7 B6                clr.w      -$284a(a5)
00008268  60 04                      bra.b      $826e
0000826A  42 6D D7 B6                clr.w      -$284a(a5)
0000826E  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00008274  66 00 01 70                bne.w      $83e6
00008278  10 2D D7 5D                move.b     -$28a3(a5), d0
0000827C  48 80                      ext.w      d0
0000827E  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00008282  66 04                      bne.b      $8288
00008284  42 6D D7 B6                clr.w      -$284a(a5)
00008288  10 2D D7 5D                move.b     -$28a3(a5), d0
0000828C  48 80                      ext.w      d0
0000828E  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00008292  66 4C                      bne.b      $82e0
00008294  4A 6D D7 B6                tst.w      -$284a(a5)
00008298  66 12                      bne.b      $82ac
0000829A  3B 7C 00 0A D7 B6          move.w     #$a, -$284a(a5)
000082A0  59 4F                      subq.w     #$4, a7
000082A2  A9 75                      .byte      0xa9, 0x75
000082A4  20 1F                      move.l     (a7)+, d0
000082A6  2B 40 D7 AE                move.l     d0, -$2852(a5)
000082AA  60 34                      bra.b      $82e0
000082AC  0C 6D 00 0A D7 B6          cmpi.w     #$a, -$284a(a5)
000082B2  66 28                      bne.b      $82dc
000082B4  59 4F                      subq.w     #$4, a7
000082B6  A9 75                      .byte      0xa9, 0x75
000082B8  20 1F                      move.l     (a7)+, d0
000082BA  90 AD D7 AE                sub.l      -$2852(a5), d0
000082BE  72 3C                      moveq      #$3c, d1
000082C0  B0 81                      cmp.l      d1, d0
000082C2  64 12                      bcc.b      $82d6
000082C4  3B 7C 00 0B D7 B6          move.w     #$b, -$284a(a5)
000082CA  59 4F                      subq.w     #$4, a7
000082CC  A9 75                      .byte      0xa9, 0x75
000082CE  20 1F                      move.l     (a7)+, d0
000082D0  2B 40 D7 AE                move.l     d0, -$2852(a5)
000082D4  60 0A                      bra.b      $82e0
000082D6  42 6D D7 B6                clr.w      -$284a(a5)
000082DA  60 04                      bra.b      $82e0
000082DC  42 6D D7 B6                clr.w      -$284a(a5)
000082E0  10 2D D7 5D                move.b     -$28a3(a5), d0
000082E4  48 80                      ext.w      d0
000082E6  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
000082EA  66 1C                      bne.b      $8308
000082EC  4A 6D D7 B6                tst.w      -$284a(a5)
000082F0  66 12                      bne.b      $8304
000082F2  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
000082F8  59 4F                      subq.w     #$4, a7
000082FA  A9 75                      .byte      0xa9, 0x75
000082FC  20 1F                      move.l     (a7)+, d0
000082FE  2B 40 D7 AE                move.l     d0, -$2852(a5)
00008302  60 04                      bra.b      $8308
00008304  42 6D D7 B6                clr.w      -$284a(a5)
00008308  10 2D D7 5D                move.b     -$28a3(a5), d0
0000830C  48 80                      ext.w      d0
0000830E  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00008312  66 64                      bne.b      $8378
00008314  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
0000831A  66 28                      bne.b      $8344
0000831C  59 4F                      subq.w     #$4, a7
0000831E  A9 75                      .byte      0xa9, 0x75
00008320  20 1F                      move.l     (a7)+, d0
00008322  90 AD D7 AE                sub.l      -$2852(a5), d0
00008326  72 3C                      moveq      #$3c, d1
00008328  B0 81                      cmp.l      d1, d0
0000832A  64 12                      bcc.b      $833e
0000832C  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
00008332  59 4F                      subq.w     #$4, a7
00008334  A9 75                      .byte      0xa9, 0x75
00008336  20 1F                      move.l     (a7)+, d0
00008338  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000833C  60 3A                      bra.b      $8378
0000833E  42 6D D7 B6                clr.w      -$284a(a5)
00008342  60 34                      bra.b      $8378
00008344  0C 6D 00 0B D7 B6          cmpi.w     #$b, -$284a(a5)
0000834A  66 28                      bne.b      $8374
0000834C  59 4F                      subq.w     #$4, a7
0000834E  A9 75                      .byte      0xa9, 0x75
00008350  20 1F                      move.l     (a7)+, d0
00008352  90 AD D7 AE                sub.l      -$2852(a5), d0
00008356  72 3C                      moveq      #$3c, d1
00008358  B0 81                      cmp.l      d1, d0
0000835A  64 12                      bcc.b      $836e
0000835C  3B 7C 00 0C D7 B6          move.w     #$c, -$284a(a5)
00008362  59 4F                      subq.w     #$4, a7
00008364  A9 75                      .byte      0xa9, 0x75
00008366  20 1F                      move.l     (a7)+, d0
00008368  2B 40 D7 AE                move.l     d0, -$2852(a5)
0000836C  60 0A                      bra.b      $8378
0000836E  42 6D D7 B6                clr.w      -$284a(a5)
00008372  60 04                      bra.b      $8378
00008374  42 6D D7 B6                clr.w      -$284a(a5)
00008378  10 2D D7 5D                move.b     -$28a3(a5), d0
0000837C  48 80                      ext.w      d0
0000837E  B0 6D CF 18                cmp.w      -$30e8(a5), d0
00008382  66 28                      bne.b      $83ac
00008384  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
0000838A  66 1C                      bne.b      $83a8
0000838C  59 4F                      subq.w     #$4, a7
0000838E  A9 75                      .byte      0xa9, 0x75
00008390  20 1F                      move.l     (a7)+, d0
00008392  90 AD D7 AE                sub.l      -$2852(a5), d0
00008396  72 3C                      moveq      #$3c, d1
00008398  B0 81                      cmp.l      d1, d0
0000839A  64 06                      bcc.b      $83a2
0000839C  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000083A2  42 6D D7 B6                clr.w      -$284a(a5)
000083A6  60 04                      bra.b      $83ac
000083A8  42 6D D7 B6                clr.w      -$284a(a5)
000083AC  10 2D D7 5D                move.b     -$28a3(a5), d0
000083B0  48 80                      ext.w      d0
000083B2  B0 6D E3 68                cmp.w      -$1c98(a5), d0
000083B6  66 2E                      bne.b      $83e6
000083B8  0C 6D 00 0C D7 B6          cmpi.w     #$c, -$284a(a5)
000083BE  66 22                      bne.b      $83e2
000083C0  59 4F                      subq.w     #$4, a7
000083C2  A9 75                      .byte      0xa9, 0x75
000083C4  20 1F                      move.l     (a7)+, d0
000083C6  90 AD D7 AE                sub.l      -$2852(a5), d0
000083CA  72 3C                      moveq      #$3c, d1
000083CC  B0 81                      cmp.l      d1, d0
000083CE  64 0C                      bcc.b      $83dc
000083D0  4E B9 00 00 2A 5E          jsr        $2a5e.l
000083D6  1B 7C 00 01 CF EC          move.b     #$1, -$3014(a5)
000083DC  42 6D D7 B6                clr.w      -$284a(a5)
000083E0  60 04                      bra.b      $83e6
000083E2  42 6D D7 B6                clr.w      -$284a(a5)
000083E6  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
000083EC  66 00 00 D6                bne.w      $84c4
000083F0  10 2D D7 5D                move.b     -$28a3(a5), d0
000083F4  48 80                      ext.w      d0
000083F6  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
000083FA  66 04                      bne.b      $8400
000083FC  42 6D D7 B6                clr.w      -$284a(a5)
00008400  10 2D D7 5D                move.b     -$28a3(a5), d0
00008404  48 80                      ext.w      d0
00008406  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000840A  66 04                      bne.b      $8410
0000840C  42 6D D7 B6                clr.w      -$284a(a5)
00008410  10 2D D7 5D                move.b     -$28a3(a5), d0
00008414  48 80                      ext.w      d0
00008416  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
0000841A  66 04                      bne.b      $8420
0000841C  42 6D D7 B6                clr.w      -$284a(a5)
00008420  10 2D D7 5D                move.b     -$28a3(a5), d0
00008424  48 80                      ext.w      d0
00008426  B0 6D E3 68                cmp.w      -$1c98(a5), d0
0000842A  66 04                      bne.b      $8430
0000842C  42 6D D7 B6                clr.w      -$284a(a5)
00008430  10 2D D7 5D                move.b     -$28a3(a5), d0
00008434  48 80                      ext.w      d0
00008436  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
0000843A  66 54                      bne.b      $8490
0000843C  4A 6D D7 B6                tst.w      -$284a(a5)
00008440  66 12                      bne.b      $8454
00008442  3B 7C 00 01 D7 B6          move.w     #$1, -$284a(a5)
00008448  59 4F                      subq.w     #$4, a7
0000844A  A9 75                      .byte      0xa9, 0x75
0000844C  20 1F                      move.l     (a7)+, d0
0000844E  2B 40 D7 AE                move.l     d0, -$2852(a5)
00008452  60 3C                      bra.b      $8490
00008454  0C 6D 00 01 D7 B6          cmpi.w     #$1, -$284a(a5)
0000845A  67 08                      beq.b      $8464
0000845C  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
00008462  66 28                      bne.b      $848c
00008464  59 4F                      subq.w     #$4, a7
00008466  A9 75                      .byte      0xa9, 0x75
00008468  20 1F                      move.l     (a7)+, d0
0000846A  90 AD D7 AE                sub.l      -$2852(a5), d0
0000846E  72 3C                      moveq      #$3c, d1
00008470  B0 81                      cmp.l      d1, d0
00008472  64 12                      bcc.b      $8486
00008474  3B 7C 00 02 D7 B6          move.w     #$2, -$284a(a5)
0000847A  59 4F                      subq.w     #$4, a7
0000847C  A9 75                      .byte      0xa9, 0x75
0000847E  20 1F                      move.l     (a7)+, d0
00008480  2B 40 D7 AE                move.l     d0, -$2852(a5)
00008484  60 0A                      bra.b      $8490
00008486  42 6D D7 B6                clr.w      -$284a(a5)
0000848A  60 04                      bra.b      $8490
0000848C  42 6D D7 B6                clr.w      -$284a(a5)
00008490  10 2D D7 5D                move.b     -$28a3(a5), d0
00008494  48 80                      ext.w      d0
00008496  B0 6D CF 18                cmp.w      -$30e8(a5), d0
0000849A  66 28                      bne.b      $84c4
0000849C  0C 6D 00 02 D7 B6          cmpi.w     #$2, -$284a(a5)
000084A2  66 1C                      bne.b      $84c0
000084A4  59 4F                      subq.w     #$4, a7
000084A6  A9 75                      .byte      0xa9, 0x75
000084A8  20 1F                      move.l     (a7)+, d0
000084AA  90 AD D7 AE                sub.l      -$2852(a5), d0
000084AE  72 3C                      moveq      #$3c, d1
000084B0  B0 81                      cmp.l      d1, d0
000084B2  64 06                      bcc.b      $84ba
000084B4  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000084BA  42 6D D7 B6                clr.w      -$284a(a5)
000084BE  60 04                      bra.b      $84c4
000084C0  42 6D D7 B6                clr.w      -$284a(a5)
000084C4  4E 5E                      unlk       a6
000084C6  4E 75                      rts

; MacsBug symbol trailer for HandleShootKey: 8E 48 61 6E 64 6C 65 53 68 6F 6F 74 4B 65 79

MoveGroundFireball1: ; 000084DA..00008546
000084DA  4E 56 00 00                link.w     a6, #$0
000084DE  3B 7C 01 F5 DB CC          move.w     #$1f5, -$2434(a5)
000084E4  70 F0                      moveq      #$f0, d0
000084E6  D0 6D DB CC                add.w      -$2434(a5), d0
000084EA  3B 40 DB C8                move.w     d0, -$2438(a5)
000084EE  3B 7C 01 B0 DB C6          move.w     #$1b0, -$243a(a5)
000084F4  70 3C                      moveq      #$3c, d0
000084F6  D0 6D DB C6                add.w      -$243a(a5), d0
000084FA  3B 40 DB CA                move.w     d0, -$2436(a5)
000084FE  3B 7C 01 D2 DB F0          move.w     #$1d2, -$2410(a5)
00008504  70 F0                      moveq      #$f0, d0
00008506  D0 6D DB F0                add.w      -$2410(a5), d0
0000850A  3B 40 DB EC                move.w     d0, -$2414(a5)
0000850E  3B 7C 01 F6 DB EA          move.w     #$1f6, -$2416(a5)
00008514  70 3C                      moveq      #$3c, d0
00008516  D0 6D DB EA                add.w      -$2416(a5), d0
0000851A  3B 40 DB EE                move.w     d0, -$2412(a5)
0000851E  42 2D FF DA                clr.b      -$26(a5)
00008522  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00008528  59 4F                      subq.w     #$4, a7
0000852A  A9 75                      .byte      0xa9, 0x75
0000852C  20 1F                      move.l     (a7)+, d0
0000852E  2B 40 D7 9E                move.l     d0, -$2862(a5)
00008532  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00008538  2F 2D DE CE                move.l     -$2132(a5), -(a7)
0000853C  4E B9 00 00 00 90          jsr        $90.l
00008542  4E 5E                      unlk       a6
00008544  4E 75                      rts

; MacsBug symbol trailer for MoveGroundFireball1: 93 4D 6F 76 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 31

MoveGroundFireball2: ; 0000855C..000085C8
0000855C  4E 56 00 00                link.w     a6, #$0
00008560  3B 7C 00 0F DB 80          move.w     #$f, -$2480(a5)
00008566  70 10                      moveq      #$10, d0
00008568  D0 6D DB 80                add.w      -$2480(a5), d0
0000856C  3B 40 DB 84                move.w     d0, -$247c(a5)
00008570  3B 7C 01 B0 DB 7E          move.w     #$1b0, -$2482(a5)
00008576  70 3C                      moveq      #$3c, d0
00008578  D0 6D DB 7E                add.w      -$2482(a5), d0
0000857C  3B 40 DB 82                move.w     d0, -$247e(a5)
00008580  3B 7C 00 32 DB A4          move.w     #$32, -$245c(a5)
00008586  70 10                      moveq      #$10, d0
00008588  D0 6D DB A4                add.w      -$245c(a5), d0
0000858C  3B 40 DB A8                move.w     d0, -$2458(a5)
00008590  3B 7C 01 F6 DB A2          move.w     #$1f6, -$245e(a5)
00008596  70 3C                      moveq      #$3c, d0
00008598  D0 6D DB A2                add.w      -$245e(a5), d0
0000859C  3B 40 DB A6                move.w     d0, -$245a(a5)
000085A0  42 2D FF DC                clr.b      -$24(a5)
000085A4  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
000085AA  59 4F                      subq.w     #$4, a7
000085AC  A9 75                      .byte      0xa9, 0x75
000085AE  20 1F                      move.l     (a7)+, d0
000085B0  2B 40 D7 9A                move.l     d0, -$2866(a5)
000085B4  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000085BA  2F 2D DE CA                move.l     -$2136(a5), -(a7)
000085BE  4E B9 00 00 00 98          jsr        $98.l
000085C4  4E 5E                      unlk       a6
000085C6  4E 75                      rts

; MacsBug symbol trailer for MoveGroundFireball2: 93 4D 6F 76 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 32

HandleGroundFireball1Far: ; 000085DE..000086C6
000085DE  4E 56 FF F8                link.w     a6, #$fff8
000085E2  2B 6D DB C6 DB CE          move.l     -$243a(a5), -$2432(a5)
000085E8  2B 6D DB CA DB D2          move.l     -$2436(a5), -$242e(a5)
000085EE  0C 6D 00 52 DB C6          cmpi.w     #$52, -$243a(a5)
000085F4  6F 16                      ble.b      $860c
000085F6  55 4F                      subq.w     #$2, a7
000085F8  48 6D DB C6                pea.l      -$243a(a5)
000085FC  48 6D DC 56                pea.l      -$23aa(a5)
00008600  48 6E FF F8                pea.l      -$8(a6)
00008604  A8 AA                      .byte      0xa8, 0xaa
00008606  10 1F                      move.b     (a7)+, d0
00008608  67 00 00 AC                beq.w      $86b6
0000860C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008610  48 68 00 02                pea.l      $2(a0)
00008614  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008618  48 68 00 02                pea.l      $2(a0)
0000861C  48 6D DB DE                pea.l      -$2422(a5)
00008620  48 6D DB DE                pea.l      -$2422(a5)
00008624  42 67                      clr.w      -(a7)
00008626  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000862A  2F 28 00 18                move.l     $18(a0), -(a7)
0000862E  A8 EC                      .byte      0xa8, 0xec
00008630  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008634  48 68 00 02                pea.l      $2(a0)
00008638  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000863C  48 68 00 02                pea.l      $2(a0)
00008640  48 6D DB DE                pea.l      -$2422(a5)
00008644  48 6D DB DE                pea.l      -$2422(a5)
00008648  42 67                      clr.w      -(a7)
0000864A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000864E  2F 28 00 18                move.l     $18(a0), -(a7)
00008652  A8 EC                      .byte      0xa8, 0xec
00008654  55 4F                      subq.w     #$2, a7
00008656  48 6D DB C6                pea.l      -$243a(a5)
0000865A  48 6D DC 56                pea.l      -$23aa(a5)
0000865E  48 6E FF F8                pea.l      -$8(a6)
00008662  A8 AA                      .byte      0xa8, 0xaa
00008664  10 1F                      move.b     (a7)+, d0
00008666  67 38                      beq.b      $86a0
00008668  3B 6D DB CC D7 7C          move.w     -$2434(a5), -$2884(a5)
0000866E  70 D8                      moveq      #$d8, d0
00008670  D0 6D D7 7C                add.w      -$2884(a5), d0
00008674  3B 40 D7 78                move.w     d0, -$2888(a5)
00008678  3B 6D DB C6 D7 76          move.w     -$243a(a5), -$288a(a5)
0000867E  70 28                      moveq      #$28, d0
00008680  D0 6D D7 76                add.w      -$288a(a5), d0
00008684  3B 40 D7 7A                move.w     d0, -$2886(a5)
00008688  4E B9 00 00 05 58          jsr        $558.l
0000868E  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
00008694  2F 2D DE BE                move.l     -$2142(a5), -(a7)
00008698  4E B9 00 00 00 98          jsr        $98.l
0000869E  58 4F                      addq.w     #$4, a7
000086A0  42 2D D7 5A                clr.b      -$28a6(a5)
000086A4  4A 2D D7 58                tst.b      -$28a8(a5)
000086A8  66 18                      bne.b      $86c2
000086AA  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000086B0  42 2D D4 04                clr.b      -$2bfc(a5)
000086B4  60 0C                      bra.b      $86c2
000086B6  48 6D DB C6                pea.l      -$243a(a5)
000086BA  2F 3C FF FB 00 00          move.l     #$fffb0000, -(a7)
000086C0  A8 A8                      .byte      0xa8, 0xa8
000086C2  4E 5E                      unlk       a6
000086C4  4E 75                      rts

; MacsBug symbol trailer for HandleGroundFireball1Far: 98 48 61 6E 64 6C 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 31 46 61 72

HandleGroundFireball2Far: ; 000086E2..000087CA
000086E2  4E 56 FF F8                link.w     a6, #$fff8
000086E6  2B 6D DB 7E DB 86          move.l     -$2482(a5), -$247a(a5)
000086EC  2B 6D DB 82 DB 8A          move.l     -$247e(a5), -$2476(a5)
000086F2  0C 6D 00 52 DB 7E          cmpi.w     #$52, -$2482(a5)
000086F8  6F 16                      ble.b      $8710
000086FA  55 4F                      subq.w     #$2, a7
000086FC  48 6D DB 7E                pea.l      -$2482(a5)
00008700  48 6D DC 82                pea.l      -$237e(a5)
00008704  48 6E FF F8                pea.l      -$8(a6)
00008708  A8 AA                      .byte      0xa8, 0xaa
0000870A  10 1F                      move.b     (a7)+, d0
0000870C  67 00 00 AC                beq.w      $87ba
00008710  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008714  48 68 00 02                pea.l      $2(a0)
00008718  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000871C  48 68 00 02                pea.l      $2(a0)
00008720  48 6D DB 96                pea.l      -$246a(a5)
00008724  48 6D DB 96                pea.l      -$246a(a5)
00008728  42 67                      clr.w      -(a7)
0000872A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000872E  2F 28 00 18                move.l     $18(a0), -(a7)
00008732  A8 EC                      .byte      0xa8, 0xec
00008734  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008738  48 68 00 02                pea.l      $2(a0)
0000873C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008740  48 68 00 02                pea.l      $2(a0)
00008744  48 6D DB 96                pea.l      -$246a(a5)
00008748  48 6D DB 96                pea.l      -$246a(a5)
0000874C  42 67                      clr.w      -(a7)
0000874E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008752  2F 28 00 18                move.l     $18(a0), -(a7)
00008756  A8 EC                      .byte      0xa8, 0xec
00008758  55 4F                      subq.w     #$2, a7
0000875A  48 6D DB 7E                pea.l      -$2482(a5)
0000875E  48 6D DC 82                pea.l      -$237e(a5)
00008762  48 6E FF F8                pea.l      -$8(a6)
00008766  A8 AA                      .byte      0xa8, 0xaa
00008768  10 1F                      move.b     (a7)+, d0
0000876A  67 38                      beq.b      $87a4
0000876C  3B 6D DB 84 D7 74          move.w     -$247c(a5), -$288c(a5)
00008772  70 D8                      moveq      #$d8, d0
00008774  D0 6D D7 74                add.w      -$288c(a5), d0
00008778  3B 40 D7 70                move.w     d0, -$2890(a5)
0000877C  3B 6D DB 7E D7 6E          move.w     -$2482(a5), -$2892(a5)
00008782  70 28                      moveq      #$28, d0
00008784  D0 6D D7 6E                add.w      -$2892(a5), d0
00008788  3B 40 D7 72                move.w     d0, -$288e(a5)
0000878C  4E B9 00 00 05 50          jsr        $550.l
00008792  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00008798  2F 2D DE C2                move.l     -$213e(a5), -(a7)
0000879C  4E B9 00 00 00 90          jsr        $90.l
000087A2  58 4F                      addq.w     #$4, a7
000087A4  42 2D D7 56                clr.b      -$28aa(a5)
000087A8  4A 2D D7 54                tst.b      -$28ac(a5)
000087AC  66 18                      bne.b      $87c6
000087AE  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000087B4  42 2D D4 02                clr.b      -$2bfe(a5)
000087B8  60 0C                      bra.b      $87c6
000087BA  48 6D DB 7E                pea.l      -$2482(a5)
000087BE  2F 3C FF FB 00 00          move.l     #$fffb0000, -(a7)
000087C4  A8 A8                      .byte      0xa8, 0xa8
000087C6  4E 5E                      unlk       a6
000087C8  4E 75                      rts

; MacsBug symbol trailer for HandleGroundFireball2Far: 98 48 61 6E 64 6C 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 32 46 61 72

HandleGroundFireball1Close: ; 000087E6..000088CE
000087E6  4E 56 FF F8                link.w     a6, #$fff8
000087EA  2B 6D DB EA DB F2          move.l     -$2416(a5), -$240e(a5)
000087F0  2B 6D DB EE DB F6          move.l     -$2412(a5), -$240a(a5)
000087F6  0C 6D 00 52 DB EA          cmpi.w     #$52, -$2416(a5)
000087FC  6F 16                      ble.b      $8814
000087FE  55 4F                      subq.w     #$2, a7
00008800  48 6D DB EA                pea.l      -$2416(a5)
00008804  48 6D DC 56                pea.l      -$23aa(a5)
00008808  48 6E FF F8                pea.l      -$8(a6)
0000880C  A8 AA                      .byte      0xa8, 0xaa
0000880E  10 1F                      move.b     (a7)+, d0
00008810  67 00 00 AC                beq.w      $88be
00008814  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008818  48 68 00 02                pea.l      $2(a0)
0000881C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008820  48 68 00 02                pea.l      $2(a0)
00008824  48 6D DC 02                pea.l      -$23fe(a5)
00008828  48 6D DC 02                pea.l      -$23fe(a5)
0000882C  42 67                      clr.w      -(a7)
0000882E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008832  2F 28 00 18                move.l     $18(a0), -(a7)
00008836  A8 EC                      .byte      0xa8, 0xec
00008838  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000883C  48 68 00 02                pea.l      $2(a0)
00008840  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008844  48 68 00 02                pea.l      $2(a0)
00008848  48 6D DC 02                pea.l      -$23fe(a5)
0000884C  48 6D DC 02                pea.l      -$23fe(a5)
00008850  42 67                      clr.w      -(a7)
00008852  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008856  2F 28 00 18                move.l     $18(a0), -(a7)
0000885A  A8 EC                      .byte      0xa8, 0xec
0000885C  55 4F                      subq.w     #$2, a7
0000885E  48 6D DB EA                pea.l      -$2416(a5)
00008862  48 6D DC 56                pea.l      -$23aa(a5)
00008866  48 6E FF F8                pea.l      -$8(a6)
0000886A  A8 AA                      .byte      0xa8, 0xaa
0000886C  10 1F                      move.b     (a7)+, d0
0000886E  67 38                      beq.b      $88a8
00008870  3B 6D DB F0 D7 7C          move.w     -$2410(a5), -$2884(a5)
00008876  70 D8                      moveq      #$d8, d0
00008878  D0 6D D7 7C                add.w      -$2884(a5), d0
0000887C  3B 40 D7 78                move.w     d0, -$2888(a5)
00008880  3B 6D DB EA D7 76          move.w     -$2416(a5), -$288a(a5)
00008886  70 28                      moveq      #$28, d0
00008888  D0 6D D7 76                add.w      -$288a(a5), d0
0000888C  3B 40 D7 7A                move.w     d0, -$2886(a5)
00008890  4E B9 00 00 05 58          jsr        $558.l
00008896  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
0000889C  2F 2D DE BE                move.l     -$2142(a5), -(a7)
000088A0  4E B9 00 00 00 98          jsr        $98.l
000088A6  58 4F                      addq.w     #$4, a7
000088A8  42 2D D7 58                clr.b      -$28a8(a5)
000088AC  4A 2D D7 5A                tst.b      -$28a6(a5)
000088B0  66 18                      bne.b      $88ca
000088B2  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000088B8  42 2D D4 04                clr.b      -$2bfc(a5)
000088BC  60 0C                      bra.b      $88ca
000088BE  48 6D DB EA                pea.l      -$2416(a5)
000088C2  2F 3C FF FB 00 00          move.l     #$fffb0000, -(a7)
000088C8  A8 A8                      .byte      0xa8, 0xa8
000088CA  4E 5E                      unlk       a6
000088CC  4E 75                      rts

; MacsBug symbol trailer for HandleGroundFireball1Close: 9A 48 61 6E 64 6C 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 31 43 6C 6F 73 65

HandleGroundFireball2Close: ; 000088EC..000089D4
000088EC  4E 56 FF F8                link.w     a6, #$fff8
000088F0  2B 6D DB A2 DB AA          move.l     -$245e(a5), -$2456(a5)
000088F6  2B 6D DB A6 DB AE          move.l     -$245a(a5), -$2452(a5)
000088FC  0C 6D 00 52 DB A2          cmpi.w     #$52, -$245e(a5)
00008902  6F 16                      ble.b      $891a
00008904  55 4F                      subq.w     #$2, a7
00008906  48 6D DB A2                pea.l      -$245e(a5)
0000890A  48 6D DC 82                pea.l      -$237e(a5)
0000890E  48 6E FF F8                pea.l      -$8(a6)
00008912  A8 AA                      .byte      0xa8, 0xaa
00008914  10 1F                      move.b     (a7)+, d0
00008916  67 00 00 AC                beq.w      $89c4
0000891A  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000891E  48 68 00 02                pea.l      $2(a0)
00008922  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008926  48 68 00 02                pea.l      $2(a0)
0000892A  48 6D DB BA                pea.l      -$2446(a5)
0000892E  48 6D DB BA                pea.l      -$2446(a5)
00008932  42 67                      clr.w      -(a7)
00008934  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008938  2F 28 00 18                move.l     $18(a0), -(a7)
0000893C  A8 EC                      .byte      0xa8, 0xec
0000893E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008942  48 68 00 02                pea.l      $2(a0)
00008946  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000894A  48 68 00 02                pea.l      $2(a0)
0000894E  48 6D DB BA                pea.l      -$2446(a5)
00008952  48 6D DB BA                pea.l      -$2446(a5)
00008956  42 67                      clr.w      -(a7)
00008958  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000895C  2F 28 00 18                move.l     $18(a0), -(a7)
00008960  A8 EC                      .byte      0xa8, 0xec
00008962  55 4F                      subq.w     #$2, a7
00008964  48 6D DB A2                pea.l      -$245e(a5)
00008968  48 6D DC 82                pea.l      -$237e(a5)
0000896C  48 6E FF F8                pea.l      -$8(a6)
00008970  A8 AA                      .byte      0xa8, 0xaa
00008972  10 1F                      move.b     (a7)+, d0
00008974  67 38                      beq.b      $89ae
00008976  3B 6D DB A8 D7 74          move.w     -$2458(a5), -$288c(a5)
0000897C  70 D8                      moveq      #$d8, d0
0000897E  D0 6D D7 74                add.w      -$288c(a5), d0
00008982  3B 40 D7 70                move.w     d0, -$2890(a5)
00008986  3B 6D DB A2 D7 6E          move.w     -$245e(a5), -$2892(a5)
0000898C  70 28                      moveq      #$28, d0
0000898E  D0 6D D7 6E                add.w      -$2892(a5), d0
00008992  3B 40 D7 72                move.w     d0, -$288e(a5)
00008996  4E B9 00 00 05 50          jsr        $550.l
0000899C  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
000089A2  2F 2D DE C2                move.l     -$213e(a5), -(a7)
000089A6  4E B9 00 00 00 90          jsr        $90.l
000089AC  58 4F                      addq.w     #$4, a7
000089AE  42 2D D7 54                clr.b      -$28ac(a5)
000089B2  4A 2D D7 56                tst.b      -$28aa(a5)
000089B6  66 18                      bne.b      $89d0
000089B8  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000089BE  42 2D D4 02                clr.b      -$2bfe(a5)
000089C2  60 0C                      bra.b      $89d0
000089C4  48 6D DB A2                pea.l      -$245e(a5)
000089C8  2F 3C FF FB 00 00          move.l     #$fffb0000, -(a7)
000089CE  A8 A8                      .byte      0xa8, 0xa8
000089D0  4E 5E                      unlk       a6
000089D2  4E 75                      rts

; MacsBug symbol trailer for HandleGroundFireball2Close: 9A 48 61 6E 64 6C 65 47 72 6F 75 6E 64 46 69 72 65 62 61 6C 6C 32 43 6C 6F 73 65

MoveKabalRazor: ; 000089F2..00008A4C
000089F2  4E 56 00 00                link.w     a6, #$0
000089F6  48 6D DD EA                pea.l      -$2216(a5)
000089FA  2F 3C 01 B0 01 CF          move.l     #$1b001cf, -(a7)
00008A00  2F 3C 02 18 02 04          move.l     #$2180204, -(a7)
00008A06  A8 A7                      .byte      0xa8, 0xa7
00008A08  2B 6D DD EA DE 0A          move.l     -$2216(a5), -$21f6(a5)
00008A0E  2B 6D DD EE DE 0E          move.l     -$2212(a5), -$21f2(a5)
00008A14  2B 6D DD EA DD F2          move.l     -$2216(a5), -$220e(a5)
00008A1A  2B 6D DD EE DD F6          move.l     -$2212(a5), -$220a(a5)
00008A20  42 2D D0 57                clr.b      -$2fa9(a5)
00008A24  42 6D D0 5A                clr.w      -$2fa6(a5)
00008A28  42 6D D0 5E                clr.w      -$2fa2(a5)
00008A2C  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00008A32  42 2D FF DA                clr.b      -$26(a5)
00008A36  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00008A3C  2F 3C 0B C5 00 0A          move.l     #$bc5000a, -(a7)
00008A42  4E B9 00 00 00 A8          jsr        $a8.l
00008A48  4E 5E                      unlk       a6
00008A4A  4E 75                      rts

; MacsBug symbol trailer for MoveKabalRazor: 8E 4D 6F 76 65 4B 61 62 61 6C 52 61 7A 6F 72

MoveKabalRazor2: ; 00008A5E..00008AB8
00008A5E  4E 56 00 00                link.w     a6, #$0
00008A62  48 6D DD BE                pea.l      -$2242(a5)
00008A66  2F 3C 01 B0 00 00          move.l     #$1b00000, -(a7)
00008A6C  2F 3C 02 18 00 35          move.l     #$2180035, -(a7)
00008A72  A8 A7                      .byte      0xa8, 0xa7
00008A74  2B 6D DD BE DD DE          move.l     -$2242(a5), -$2222(a5)
00008A7A  2B 6D DD C2 DD E2          move.l     -$223e(a5), -$221e(a5)
00008A80  2B 6D DD BE DD C6          move.l     -$2242(a5), -$223a(a5)
00008A86  2B 6D DD C2 DD CA          move.l     -$223e(a5), -$2236(a5)
00008A8C  42 2D D0 56                clr.b      -$2faa(a5)
00008A90  42 6D D0 58                clr.w      -$2fa8(a5)
00008A94  42 6D D0 5C                clr.w      -$2fa4(a5)
00008A98  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00008A9E  42 2D FF DC                clr.b      -$24(a5)
00008AA2  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00008AA8  2F 3C 0B C5 00 0A          move.l     #$bc5000a, -(a7)
00008AAE  4E B9 00 00 00 B0          jsr        $b0.l
00008AB4  4E 5E                      unlk       a6
00008AB6  4E 75                      rts

; MacsBug symbol trailer for MoveKabalRazor2: 8F 4D 6F 76 65 4B 61 62 61 6C 52 61 7A 6F 72 32

HandleKabalRazor: ; 00008ACA..00008DB4
00008ACA  4E 56 FF F8                link.w     a6, #$fff8
00008ACE  2B 6D DD EA DD F2          move.l     -$2216(a5), -$220e(a5)
00008AD4  2B 6D DD EE DD F6          move.l     -$2212(a5), -$220a(a5)
00008ADA  48 6D DD EA                pea.l      -$2216(a5)
00008ADE  2F 3C FF FA 00 00          move.l     #$fffa0000, -(a7)
00008AE4  A8 A8                      .byte      0xa8, 0xa8
00008AE6  4A 2D D0 57                tst.b      -$2fa9(a5)
00008AEA  66 70                      bne.b      $8b5c
00008AEC  55 4F                      subq.w     #$2, a7
00008AEE  48 6D DC 56                pea.l      -$23aa(a5)
00008AF2  48 6D DD EA                pea.l      -$2216(a5)
00008AF6  48 6E FF F8                pea.l      -$8(a6)
00008AFA  A8 AA                      .byte      0xa8, 0xaa
00008AFC  10 1F                      move.b     (a7)+, d0
00008AFE  67 00 02 08                beq.w      $8d08
00008B02  2F 3C 0B C6 00 0A          move.l     #$bc6000a, -(a7)
00008B08  4E B9 00 00 00 A8          jsr        $a8.l
00008B0E  4E B9 00 00 05 58          jsr        $558.l
00008B14  A9 75                      .byte      0xa9, 0x75
00008B16  20 1F                      move.l     (a7)+, d0
00008B18  2B 40 D7 9A                move.l     d0, -$2866(a5)
00008B1C  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00008B22  1B 7C 00 01 D0 57          move.b     #$1, -$2fa9(a5)
00008B28  70 14                      moveq      #$14, d0
00008B2A  D0 6D DC 5C                add.w      -$23a4(a5), d0
00008B2E  3B 40 D0 3C                move.w     d0, -$2fc4(a5)
00008B32  70 BA                      moveq      #$ba, d0
00008B34  D0 6D D0 3C                add.w      -$2fc4(a5), d0
00008B38  3B 40 D0 38                move.w     d0, -$2fc8(a5)
00008B3C  3B 6D DC 56 D0 36          move.w     -$23aa(a5), -$2fca(a5)
00008B42  70 2E                      moveq      #$2e, d0
00008B44  D0 6D D0 36                add.w      -$2fca(a5), d0
00008B48  3B 40 D0 3A                move.w     d0, -$2fc6(a5)
00008B4C  2F 2D DE BE                move.l     -$2142(a5), -(a7)
00008B50  4E B9 00 00 00 98          jsr        $98.l
00008B56  58 4F                      addq.w     #$4, a7
00008B58  60 00 01 AE                bra.w      $8d08
00008B5C  52 6D D0 5A                addq.w     #$1, -$2fa6(a5)
00008B60  4A 6D D0 5A                tst.w      -$2fa6(a5)
00008B64  6D 32                      blt.b      $8b98
00008B66  0C 6D 00 03 D0 5A          cmpi.w     #$3, -$2fa6(a5)
00008B6C  6C 2A                      bge.b      $8b98
00008B6E  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008B72  48 68 00 02                pea.l      $2(a0)
00008B76  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008B7A  48 68 00 02                pea.l      $2(a0)
00008B7E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008B82  48 68 00 02                pea.l      $2(a0)
00008B86  48 6D D0 3E                pea.l      -$2fc2(a5)
00008B8A  48 6D D0 3E                pea.l      -$2fc2(a5)
00008B8E  48 6D D0 36                pea.l      -$2fca(a5)
00008B92  A8 17                      .byte      0xa8, 0x17
00008B94  60 00 01 72                bra.w      $8d08
00008B98  0C 6D 00 03 D0 5A          cmpi.w     #$3, -$2fa6(a5)
00008B9E  6D 32                      blt.b      $8bd2
00008BA0  0C 6D 00 06 D0 5A          cmpi.w     #$6, -$2fa6(a5)
00008BA6  6C 2A                      bge.b      $8bd2
00008BA8  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008BAC  48 68 00 02                pea.l      $2(a0)
00008BB0  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008BB4  48 68 00 02                pea.l      $2(a0)
00008BB8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008BBC  48 68 00 02                pea.l      $2(a0)
00008BC0  48 6D D0 46                pea.l      -$2fba(a5)
00008BC4  48 6D D0 46                pea.l      -$2fba(a5)
00008BC8  48 6D D0 36                pea.l      -$2fca(a5)
00008BCC  A8 17                      .byte      0xa8, 0x17
00008BCE  60 00 01 38                bra.w      $8d08
00008BD2  0C 6D 00 06 D0 5A          cmpi.w     #$6, -$2fa6(a5)
00008BD8  6D 32                      blt.b      $8c0c
00008BDA  0C 6D 00 09 D0 5A          cmpi.w     #$9, -$2fa6(a5)
00008BE0  6C 2A                      bge.b      $8c0c
00008BE2  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008BE6  48 68 00 02                pea.l      $2(a0)
00008BEA  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008BEE  48 68 00 02                pea.l      $2(a0)
00008BF2  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008BF6  48 68 00 02                pea.l      $2(a0)
00008BFA  48 6D D0 4E                pea.l      -$2fb2(a5)
00008BFE  48 6D D0 4E                pea.l      -$2fb2(a5)
00008C02  48 6D D0 36                pea.l      -$2fca(a5)
00008C06  A8 17                      .byte      0xa8, 0x17
00008C08  60 00 00 FE                bra.w      $8d08
00008C0C  0C 6D 00 09 D0 5A          cmpi.w     #$9, -$2fa6(a5)
00008C12  6D 32                      blt.b      $8c46
00008C14  0C 6D 00 0C D0 5A          cmpi.w     #$c, -$2fa6(a5)
00008C1A  6C 2A                      bge.b      $8c46
00008C1C  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008C20  48 68 00 02                pea.l      $2(a0)
00008C24  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C28  48 68 00 02                pea.l      $2(a0)
00008C2C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008C30  48 68 00 02                pea.l      $2(a0)
00008C34  48 6D D0 3E                pea.l      -$2fc2(a5)
00008C38  48 6D D0 3E                pea.l      -$2fc2(a5)
00008C3C  48 6D D0 36                pea.l      -$2fca(a5)
00008C40  A8 17                      .byte      0xa8, 0x17
00008C42  60 00 00 C4                bra.w      $8d08
00008C46  0C 6D 00 0C D0 5A          cmpi.w     #$c, -$2fa6(a5)
00008C4C  6D 32                      blt.b      $8c80
00008C4E  0C 6D 00 0F D0 5A          cmpi.w     #$f, -$2fa6(a5)
00008C54  6C 2A                      bge.b      $8c80
00008C56  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008C5A  48 68 00 02                pea.l      $2(a0)
00008C5E  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C62  48 68 00 02                pea.l      $2(a0)
00008C66  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008C6A  48 68 00 02                pea.l      $2(a0)
00008C6E  48 6D D0 46                pea.l      -$2fba(a5)
00008C72  48 6D D0 46                pea.l      -$2fba(a5)
00008C76  48 6D D0 36                pea.l      -$2fca(a5)
00008C7A  A8 17                      .byte      0xa8, 0x17
00008C7C  60 00 00 8A                bra.w      $8d08
00008C80  0C 6D 00 0F D0 5A          cmpi.w     #$f, -$2fa6(a5)
00008C86  6D 30                      blt.b      $8cb8
00008C88  0C 6D 00 12 D0 5A          cmpi.w     #$12, -$2fa6(a5)
00008C8E  6C 28                      bge.b      $8cb8
00008C90  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008C94  48 68 00 02                pea.l      $2(a0)
00008C98  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C9C  48 68 00 02                pea.l      $2(a0)
00008CA0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008CA4  48 68 00 02                pea.l      $2(a0)
00008CA8  48 6D D0 4E                pea.l      -$2fb2(a5)
00008CAC  48 6D D0 4E                pea.l      -$2fb2(a5)
00008CB0  48 6D D0 36                pea.l      -$2fca(a5)
00008CB4  A8 17                      .byte      0xa8, 0x17
00008CB6  60 50                      bra.b      $8d08
00008CB8  0C 6D 00 12 D0 5A          cmpi.w     #$12, -$2fa6(a5)
00008CBE  66 48                      bne.b      $8d08
00008CC0  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008CC4  48 68 00 02                pea.l      $2(a0)
00008CC8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008CCC  48 68 00 02                pea.l      $2(a0)
00008CD0  48 6D D0 36                pea.l      -$2fca(a5)
00008CD4  48 6D D0 36                pea.l      -$2fca(a5)
00008CD8  42 67                      clr.w      -(a7)
00008CDA  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008CDE  2F 28 00 18                move.l     $18(a0), -(a7)
00008CE2  A8 EC                      .byte      0xa8, 0xec
00008CE4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008CE8  48 68 00 02                pea.l      $2(a0)
00008CEC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008CF0  48 68 00 02                pea.l      $2(a0)
00008CF4  48 6D D0 36                pea.l      -$2fca(a5)
00008CF8  48 6D D0 36                pea.l      -$2fca(a5)
00008CFC  42 67                      clr.w      -(a7)
00008CFE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D02  2F 28 00 18                move.l     $18(a0), -(a7)
00008D06  A8 EC                      .byte      0xa8, 0xec
00008D08  0C 6D 00 50 DD EA          cmpi.w     #$50, -$2216(a5)
00008D0E  6C 00 00 A0                bge.w      $8db0
00008D12  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D16  48 68 00 02                pea.l      $2(a0)
00008D1A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D1E  48 68 00 02                pea.l      $2(a0)
00008D22  48 6D DE 0A                pea.l      -$21f6(a5)
00008D26  48 6D DE 0A                pea.l      -$21f6(a5)
00008D2A  42 67                      clr.w      -(a7)
00008D2C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D30  2F 28 00 18                move.l     $18(a0), -(a7)
00008D34  A8 EC                      .byte      0xa8, 0xec
00008D36  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008D3A  48 68 00 02                pea.l      $2(a0)
00008D3E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D42  48 68 00 02                pea.l      $2(a0)
00008D46  48 6D DE 0A                pea.l      -$21f6(a5)
00008D4A  48 6D DE 0A                pea.l      -$21f6(a5)
00008D4E  42 67                      clr.w      -(a7)
00008D50  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D54  2F 28 00 18                move.l     $18(a0), -(a7)
00008D58  A8 EC                      .byte      0xa8, 0xec
00008D5A  42 2D D0 62                clr.b      -$2f9e(a5)
00008D5E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008D62  48 68 00 02                pea.l      $2(a0)
00008D66  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D6A  48 68 00 02                pea.l      $2(a0)
00008D6E  48 6D D0 36                pea.l      -$2fca(a5)
00008D72  48 6D D0 36                pea.l      -$2fca(a5)
00008D76  42 67                      clr.w      -(a7)
00008D78  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D7C  2F 28 00 18                move.l     $18(a0), -(a7)
00008D80  A8 EC                      .byte      0xa8, 0xec
00008D82  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D86  48 68 00 02                pea.l      $2(a0)
00008D8A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D8E  48 68 00 02                pea.l      $2(a0)
00008D92  48 6D D0 36                pea.l      -$2fca(a5)
00008D96  48 6D D0 36                pea.l      -$2fca(a5)
00008D9A  42 67                      clr.w      -(a7)
00008D9C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008DA0  2F 28 00 18                move.l     $18(a0), -(a7)
00008DA4  A8 EC                      .byte      0xa8, 0xec
00008DA6  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00008DAC  42 2D D4 04                clr.b      -$2bfc(a5)
00008DB0  4E 5E                      unlk       a6
00008DB2  4E 75                      rts

; MacsBug symbol trailer for HandleKabalRazor: 90 48 61 6E 64 6C 65 4B 61 62 61 6C 52 61 7A 6F 72

HandleKabalRazor2: ; 00008DC8..000090B4
00008DC8  4E 56 FF F8                link.w     a6, #$fff8
00008DCC  2B 6D DD BE DD C6          move.l     -$2242(a5), -$223a(a5)
00008DD2  2B 6D DD C2 DD CA          move.l     -$223e(a5), -$2236(a5)
00008DD8  48 6D DD BE                pea.l      -$2242(a5)
00008DDC  2F 3C FF FA 00 00          move.l     #$fffa0000, -(a7)
00008DE2  A8 A8                      .byte      0xa8, 0xa8
00008DE4  4A 2D D0 56                tst.b      -$2faa(a5)
00008DE8  66 72                      bne.b      $8e5c
00008DEA  55 4F                      subq.w     #$2, a7
00008DEC  48 6D DC 82                pea.l      -$237e(a5)
00008DF0  48 6D DD BE                pea.l      -$2242(a5)
00008DF4  48 6E FF F8                pea.l      -$8(a6)
00008DF8  A8 AA                      .byte      0xa8, 0xaa
00008DFA  10 1F                      move.b     (a7)+, d0
00008DFC  67 00 02 0A                beq.w      $9008
00008E00  59 4F                      subq.w     #$4, a7
00008E02  A9 75                      .byte      0xa9, 0x75
00008E04  20 1F                      move.l     (a7)+, d0
00008E06  2B 40 D7 9E                move.l     d0, -$2862(a5)
00008E0A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00008E10  2F 3C 0B C6 00 0A          move.l     #$bc6000a, -(a7)
00008E16  4E B9 00 00 00 B0          jsr        $b0.l
00008E1C  4E B9 00 00 05 50          jsr        $550.l
00008E22  1B 7C 00 01 D0 56          move.b     #$1, -$2faa(a5)
00008E28  70 14                      moveq      #$14, d0
00008E2A  D0 6D DC 88                add.w      -$2378(a5), d0
00008E2E  3B 40 D0 34                move.w     d0, -$2fcc(a5)
00008E32  70 BA                      moveq      #$ba, d0
00008E34  D0 6D D0 34                add.w      -$2fcc(a5), d0
00008E38  3B 40 D0 30                move.w     d0, -$2fd0(a5)
00008E3C  3B 6D DC 82 D0 2E          move.w     -$237e(a5), -$2fd2(a5)
00008E42  70 2E                      moveq      #$2e, d0
00008E44  D0 6D D0 2E                add.w      -$2fd2(a5), d0
00008E48  3B 40 D0 32                move.w     d0, -$2fce(a5)
00008E4C  2F 2D DE C2                move.l     -$213e(a5), -(a7)
00008E50  4E B9 00 00 00 90          jsr        $90.l
00008E56  50 4F                      addq.w     #$8, a7
00008E58  60 00 01 AE                bra.w      $9008
00008E5C  52 6D D0 58                addq.w     #$1, -$2fa8(a5)
00008E60  4A 6D D0 58                tst.w      -$2fa8(a5)
00008E64  6D 32                      blt.b      $8e98
00008E66  0C 6D 00 03 D0 58          cmpi.w     #$3, -$2fa8(a5)
00008E6C  6C 2A                      bge.b      $8e98
00008E6E  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008E72  48 68 00 02                pea.l      $2(a0)
00008E76  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008E7A  48 68 00 02                pea.l      $2(a0)
00008E7E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008E82  48 68 00 02                pea.l      $2(a0)
00008E86  48 6D D0 3E                pea.l      -$2fc2(a5)
00008E8A  48 6D D0 3E                pea.l      -$2fc2(a5)
00008E8E  48 6D D0 2E                pea.l      -$2fd2(a5)
00008E92  A8 17                      .byte      0xa8, 0x17
00008E94  60 00 01 72                bra.w      $9008
00008E98  0C 6D 00 03 D0 58          cmpi.w     #$3, -$2fa8(a5)
00008E9E  6D 32                      blt.b      $8ed2
00008EA0  0C 6D 00 06 D0 58          cmpi.w     #$6, -$2fa8(a5)
00008EA6  6C 2A                      bge.b      $8ed2
00008EA8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008EAC  48 68 00 02                pea.l      $2(a0)
00008EB0  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008EB4  48 68 00 02                pea.l      $2(a0)
00008EB8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008EBC  48 68 00 02                pea.l      $2(a0)
00008EC0  48 6D D0 46                pea.l      -$2fba(a5)
00008EC4  48 6D D0 46                pea.l      -$2fba(a5)
00008EC8  48 6D D0 2E                pea.l      -$2fd2(a5)
00008ECC  A8 17                      .byte      0xa8, 0x17
00008ECE  60 00 01 38                bra.w      $9008
00008ED2  0C 6D 00 06 D0 58          cmpi.w     #$6, -$2fa8(a5)
00008ED8  6D 32                      blt.b      $8f0c
00008EDA  0C 6D 00 09 D0 58          cmpi.w     #$9, -$2fa8(a5)
00008EE0  6C 2A                      bge.b      $8f0c
00008EE2  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008EE6  48 68 00 02                pea.l      $2(a0)
00008EEA  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008EEE  48 68 00 02                pea.l      $2(a0)
00008EF2  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008EF6  48 68 00 02                pea.l      $2(a0)
00008EFA  48 6D D0 4E                pea.l      -$2fb2(a5)
00008EFE  48 6D D0 4E                pea.l      -$2fb2(a5)
00008F02  48 6D D0 2E                pea.l      -$2fd2(a5)
00008F06  A8 17                      .byte      0xa8, 0x17
00008F08  60 00 00 FE                bra.w      $9008
00008F0C  0C 6D 00 09 D0 58          cmpi.w     #$9, -$2fa8(a5)
00008F12  6D 32                      blt.b      $8f46
00008F14  0C 6D 00 0C D0 58          cmpi.w     #$c, -$2fa8(a5)
00008F1A  6C 2A                      bge.b      $8f46
00008F1C  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008F20  48 68 00 02                pea.l      $2(a0)
00008F24  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008F28  48 68 00 02                pea.l      $2(a0)
00008F2C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008F30  48 68 00 02                pea.l      $2(a0)
00008F34  48 6D D0 3E                pea.l      -$2fc2(a5)
00008F38  48 6D D0 3E                pea.l      -$2fc2(a5)
00008F3C  48 6D D0 2E                pea.l      -$2fd2(a5)
00008F40  A8 17                      .byte      0xa8, 0x17
00008F42  60 00 00 C4                bra.w      $9008
00008F46  0C 6D 00 0C D0 58          cmpi.w     #$c, -$2fa8(a5)
00008F4C  6D 32                      blt.b      $8f80
00008F4E  0C 6D 00 0F D0 58          cmpi.w     #$f, -$2fa8(a5)
00008F54  6C 2A                      bge.b      $8f80
00008F56  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008F5A  48 68 00 02                pea.l      $2(a0)
00008F5E  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008F62  48 68 00 02                pea.l      $2(a0)
00008F66  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008F6A  48 68 00 02                pea.l      $2(a0)
00008F6E  48 6D D0 46                pea.l      -$2fba(a5)
00008F72  48 6D D0 46                pea.l      -$2fba(a5)
00008F76  48 6D D0 2E                pea.l      -$2fd2(a5)
00008F7A  A8 17                      .byte      0xa8, 0x17
00008F7C  60 00 00 8A                bra.w      $9008
00008F80  0C 6D 00 0F D0 58          cmpi.w     #$f, -$2fa8(a5)
00008F86  6D 30                      blt.b      $8fb8
00008F88  0C 6D 00 12 D0 58          cmpi.w     #$12, -$2fa8(a5)
00008F8E  6C 28                      bge.b      $8fb8
00008F90  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008F94  48 68 00 02                pea.l      $2(a0)
00008F98  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00008F9C  48 68 00 02                pea.l      $2(a0)
00008FA0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008FA4  48 68 00 02                pea.l      $2(a0)
00008FA8  48 6D D0 4E                pea.l      -$2fb2(a5)
00008FAC  48 6D D0 4E                pea.l      -$2fb2(a5)
00008FB0  48 6D D0 2E                pea.l      -$2fd2(a5)
00008FB4  A8 17                      .byte      0xa8, 0x17
00008FB6  60 50                      bra.b      $9008
00008FB8  0C 6D 00 12 D0 58          cmpi.w     #$12, -$2fa8(a5)
00008FBE  66 48                      bne.b      $9008
00008FC0  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008FC4  48 68 00 02                pea.l      $2(a0)
00008FC8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008FCC  48 68 00 02                pea.l      $2(a0)
00008FD0  48 6D D0 2E                pea.l      -$2fd2(a5)
00008FD4  48 6D D0 2E                pea.l      -$2fd2(a5)
00008FD8  42 67                      clr.w      -(a7)
00008FDA  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008FDE  2F 28 00 18                move.l     $18(a0), -(a7)
00008FE2  A8 EC                      .byte      0xa8, 0xec
00008FE4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008FE8  48 68 00 02                pea.l      $2(a0)
00008FEC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008FF0  48 68 00 02                pea.l      $2(a0)
00008FF4  48 6D D0 2E                pea.l      -$2fd2(a5)
00008FF8  48 6D D0 2E                pea.l      -$2fd2(a5)
00008FFC  42 67                      clr.w      -(a7)
00008FFE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009002  2F 28 00 18                move.l     $18(a0), -(a7)
00009006  A8 EC                      .byte      0xa8, 0xec
00009008  0C 6D 00 50 DD BE          cmpi.w     #$50, -$2242(a5)
0000900E  6C 00 00 A0                bge.w      $90b0
00009012  20 6D D3 FE                movea.l    -$2c02(a5), a0
00009016  48 68 00 02                pea.l      $2(a0)
0000901A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000901E  48 68 00 02                pea.l      $2(a0)
00009022  48 6D DD DE                pea.l      -$2222(a5)
00009026  48 6D DD DE                pea.l      -$2222(a5)
0000902A  42 67                      clr.w      -(a7)
0000902C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009030  2F 28 00 18                move.l     $18(a0), -(a7)
00009034  A8 EC                      .byte      0xa8, 0xec
00009036  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000903A  48 68 00 02                pea.l      $2(a0)
0000903E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00009042  48 68 00 02                pea.l      $2(a0)
00009046  48 6D DD DE                pea.l      -$2222(a5)
0000904A  48 6D DD DE                pea.l      -$2222(a5)
0000904E  42 67                      clr.w      -(a7)
00009050  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009054  2F 28 00 18                move.l     $18(a0), -(a7)
00009058  A8 EC                      .byte      0xa8, 0xec
0000905A  42 2D D0 60                clr.b      -$2fa0(a5)
0000905E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00009062  48 68 00 02                pea.l      $2(a0)
00009066  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000906A  48 68 00 02                pea.l      $2(a0)
0000906E  48 6D D0 2E                pea.l      -$2fd2(a5)
00009072  48 6D D0 2E                pea.l      -$2fd2(a5)
00009076  42 67                      clr.w      -(a7)
00009078  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000907C  2F 28 00 18                move.l     $18(a0), -(a7)
00009080  A8 EC                      .byte      0xa8, 0xec
00009082  20 6D D3 FE                movea.l    -$2c02(a5), a0
00009086  48 68 00 02                pea.l      $2(a0)
0000908A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000908E  48 68 00 02                pea.l      $2(a0)
00009092  48 6D D0 2E                pea.l      -$2fd2(a5)
00009096  48 6D D0 2E                pea.l      -$2fd2(a5)
0000909A  42 67                      clr.w      -(a7)
0000909C  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090A0  2F 28 00 18                move.l     $18(a0), -(a7)
000090A4  A8 EC                      .byte      0xa8, 0xec
000090A6  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000090AC  42 2D D4 02                clr.b      -$2bfe(a5)
000090B0  4E 5E                      unlk       a6
000090B2  4E 75                      rts

; MacsBug symbol trailer for HandleKabalRazor2: 91 48 61 6E 64 6C 65 4B 61 62 61 6C 52 61 7A 6F 72 32

MoveCyraxBomb1: ; 000090C8..00009132
000090C8  4E 56 00 00                link.w     a6, #$0
000090CC  3B 6D DC 88 DA 18          move.w     -$2378(a5), -$25e8(a5)
000090D2  70 0F                      moveq      #$f, d0
000090D4  D0 6D DA 18                add.w      -$25e8(a5), d0
000090D8  3B 40 DA 1C                move.w     d0, -$25e4(a5)
000090DC  70 0A                      moveq      #$a, d0
000090DE  D0 6D DC 82                add.w      -$237e(a5), d0
000090E2  3B 40 DA 16                move.w     d0, -$25ea(a5)
000090E6  70 0F                      moveq      #$f, d0
000090E8  D0 6D DA 16                add.w      -$25ea(a5), d0
000090EC  3B 40 DA 1A                move.w     d0, -$25e6(a5)
000090F0  70 E1                      moveq      #$e1, d0
000090F2  D0 6D DA 16                add.w      -$25ea(a5), d0
000090F6  3B 40 D8 8E                move.w     d0, -$2772(a5)
000090FA  70 1F                      moveq      #$1f, d0
000090FC  D0 6D DA 1A                add.w      -$25e6(a5), d0
00009100  3B 40 D8 92                move.w     d0, -$276e(a5)
00009104  3B 7C 02 04 D8 94          move.w     #$204, -$276c(a5)
0000910A  70 A1                      moveq      #$a1, d0
0000910C  D0 6D D8 94                add.w      -$276c(a5), d0
00009110  3B 40 D8 90                move.w     d0, -$2770(a5)
00009114  2F 2D DE D2                move.l     -$212e(a5), -(a7)
00009118  4E B9 00 00 00 90          jsr        $90.l
0000911E  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
00009124  42 2D FF DA                clr.b      -$26(a5)
00009128  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
0000912E  4E 5E                      unlk       a6
00009130  4E 75                      rts

; MacsBug symbol trailer for MoveCyraxBomb1: 8E 4D 6F 76 65 43 79 72 61 78 42 6F 6D 62 31

MoveCyraxBomb2: ; 00009144..000091A8
00009144  4E 56 00 00                link.w     a6, #$0
00009148  3B 6D DC 58 D9 E0          move.w     -$23a8(a5), -$2620(a5)
0000914E  70 F1                      moveq      #$f1, d0
00009150  D0 6D D9 E0                add.w      -$2620(a5), d0
00009154  3B 40 D9 DC                move.w     d0, -$2624(a5)
00009158  70 0A                      moveq      #$a, d0
0000915A  D0 6D DC 56                add.w      -$23aa(a5), d0
0000915E  3B 40 D9 DA                move.w     d0, -$2626(a5)
00009162  70 0F                      moveq      #$f, d0
00009164  D0 6D D9 DA                add.w      -$2626(a5), d0
00009168  3B 40 D9 DE                move.w     d0, -$2622(a5)
0000916C  70 E1                      moveq      #$e1, d0
0000916E  D0 6D D9 DA                add.w      -$2626(a5), d0
00009172  3B 40 D8 86                move.w     d0, -$277a(a5)
00009176  70 1F                      moveq      #$1f, d0
00009178  D0 6D D9 DE                add.w      -$2622(a5), d0
0000917C  3B 40 D8 8A                move.w     d0, -$2776(a5)
00009180  3B 7C 00 5F D8 8C          move.w     #$5f, -$2774(a5)
00009186  42 6D D8 88                clr.w      -$2778(a5)
0000918A  2F 2D DE C6                move.l     -$213a(a5), -(a7)
0000918E  4E B9 00 00 00 98          jsr        $98.l
00009194  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
0000919A  42 2D FF DC                clr.b      -$24(a5)
0000919E  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000091A4  4E 5E                      unlk       a6
000091A6  4E 75                      rts

; MacsBug symbol trailer for MoveCyraxBomb2: 8E 4D 6F 76 65 43 79 72 61 78 42 6F 6D 62 32

HandleCyraxBomb1: ; 000091BA..00009228
000091BA  4E 56 00 00                link.w     a6, #$0
000091BE  2B 6D DA 16 DA 1E          move.l     -$25ea(a5), -$25e2(a5)
000091C4  2B 6D DA 1A DA 22          move.l     -$25e6(a5), -$25de(a5)
000091CA  0C 6D 02 04 DA 1C          cmpi.w     #$204, -$25e4(a5)
000091D0  6C 16                      bge.b      $91e8
000091D2  59 4F                      subq.w     #$4, a7
000091D4  A9 75                      .byte      0xa9, 0x75
000091D6  20 1F                      move.l     (a7)+, d0
000091D8  2B 40 D7 D4                move.l     d0, -$282c(a5)
000091DC  48 6D DA 16                pea.l      -$25ea(a5)
000091E0  48 78 00 05                pea.l      $5.w
000091E4  A8 A8                      .byte      0xa8, 0xa8
000091E6  60 10                      bra.b      $91f8
000091E8  0C 6D 02 04 DA 1C          cmpi.w     #$204, -$25e4(a5)
000091EE  66 08                      bne.b      $91f8
000091F0  48 6D DA 16                pea.l      -$25ea(a5)
000091F4  42 A7                      clr.l      -(a7)
000091F6  A8 A8                      .byte      0xa8, 0xa8
000091F8  0C 6D 02 04 DA 1C          cmpi.w     #$204, -$25e4(a5)
000091FE  6F 24                      ble.b      $9224
00009200  2F 3C 0D AE 00 0A          move.l     #$dae000a, -(a7)
00009206  4E B9 00 00 00 A8          jsr        $a8.l
0000920C  A9 75                      .byte      0xa9, 0x75
0000920E  20 1F                      move.l     (a7)+, d0
00009210  2B 40 D7 D4                move.l     d0, -$282c(a5)
00009214  3B 7C 02 04 DA 1C          move.w     #$204, -$25e4(a5)
0000921A  70 F1                      moveq      #$f1, d0
0000921C  D0 6D DA 1C                add.w      -$25e4(a5), d0
00009220  3B 40 DA 18                move.w     d0, -$25e8(a5)
00009224  4E 5E                      unlk       a6
00009226  4E 75                      rts

; MacsBug symbol trailer for HandleCyraxBomb1: 90 48 61 6E 64 6C 65 43 79 72 61 78 42 6F 6D 62 31

HandleCyraxBomb2: ; 0000923C..000092A0
0000923C  4E 56 00 00                link.w     a6, #$0
00009240  2B 6D D9 DA D9 E2          move.l     -$2626(a5), -$261e(a5)
00009246  2B 6D D9 DE D9 E6          move.l     -$2622(a5), -$261a(a5)
0000924C  4A 6D D9 DC                tst.w      -$2624(a5)
00009250  6F 18                      ble.b      $926a
00009252  59 4F                      subq.w     #$4, a7
00009254  A9 75                      .byte      0xa9, 0x75
00009256  20 1F                      move.l     (a7)+, d0
00009258  2B 40 D7 D0                move.l     d0, -$2830(a5)
0000925C  48 6D D9 DA                pea.l      -$2626(a5)
00009260  2F 3C 00 00 FF FB          move.l     #$fffb, -(a7)
00009266  A8 A8                      .byte      0xa8, 0xa8
00009268  60 0E                      bra.b      $9278
0000926A  4A 6D D9 DC                tst.w      -$2624(a5)
0000926E  66 08                      bne.b      $9278
00009270  48 6D D9 DA                pea.l      -$2626(a5)
00009274  42 A7                      clr.l      -(a7)
00009276  A8 A8                      .byte      0xa8, 0xa8
00009278  4A 6D D9 DC                tst.w      -$2624(a5)
0000927C  6C 1E                      bge.b      $929c
0000927E  2F 3C 0D AE 00 0A          move.l     #$dae000a, -(a7)
00009284  4E B9 00 00 00 B0          jsr        $b0.l
0000928A  A9 75                      .byte      0xa9, 0x75
0000928C  20 1F                      move.l     (a7)+, d0
0000928E  2B 40 D7 D0                move.l     d0, -$2830(a5)
00009292  3B 7C 00 0F D9 E0          move.w     #$f, -$2620(a5)
00009298  42 6D D9 DC                clr.w      -$2624(a5)
0000929C  4E 5E                      unlk       a6
0000929E  4E 75                      rts

; MacsBug symbol trailer for HandleCyraxBomb2: 90 48 61 6E 64 6C 65 43 79 72 61 78 42 6F 6D 62 32

MoveShowerFreeze1: ; 000092B4..000092FE
000092B4  4E 56 00 00                link.w     a6, #$0
000092B8  3B 6D DC 88 DB 58          move.w     -$2378(a5), -$24a8(a5)
000092BE  70 F1                      moveq      #$f1, d0
000092C0  D0 6D DB 58                add.w      -$24a8(a5), d0
000092C4  3B 40 DB 54                move.w     d0, -$24ac(a5)
000092C8  3B 6D DC 82 DB 52          move.w     -$237e(a5), -$24ae(a5)
000092CE  70 35                      moveq      #$35, d0
000092D0  D0 6D DB 52                add.w      -$24ae(a5), d0
000092D4  3B 40 DB 56                move.w     d0, -$24aa(a5)
000092D8  2F 2D DE D2                move.l     -$212e(a5), -(a7)
000092DC  4E B9 00 00 00 90          jsr        $90.l
000092E2  1B 7C 00 01 D4 04          move.b     #$1, -$2bfc(a5)
000092E8  42 2D FF DA                clr.b      -$26(a5)
000092EC  A9 75                      .byte      0xa9, 0x75
000092EE  20 1F                      move.l     (a7)+, d0
000092F0  2B 40 D7 9E                move.l     d0, -$2862(a5)
000092F4  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000092FA  4E 5E                      unlk       a6
000092FC  4E 75                      rts

; MacsBug symbol trailer for MoveShowerFreeze1: 91 4D 6F 76 65 53 68 6F 77 65 72 46 72 65 65 7A 65 31

MoveShowerFreeze2: ; 00009312..0000935C
00009312  4E 56 00 00                link.w     a6, #$0
00009316  3B 6D DC 5C DB 2C          move.w     -$23a4(a5), -$24d4(a5)
0000931C  70 F1                      moveq      #$f1, d0
0000931E  D0 6D DB 2C                add.w      -$24d4(a5), d0
00009322  3B 40 DB 28                move.w     d0, -$24d8(a5)
00009326  3B 6D DC 56 DB 26          move.w     -$23aa(a5), -$24da(a5)
0000932C  70 35                      moveq      #$35, d0
0000932E  D0 6D DB 26                add.w      -$24da(a5), d0
00009332  3B 40 DB 2A                move.w     d0, -$24d6(a5)
00009336  2F 2D DE C6                move.l     -$213a(a5), -(a7)
0000933A  4E B9 00 00 00 98          jsr        $98.l
00009340  1B 7C 00 01 D4 02          move.b     #$1, -$2bfe(a5)
00009346  42 2D FF DC                clr.b      -$24(a5)
0000934A  A9 75                      .byte      0xa9, 0x75
0000934C  20 1F                      move.l     (a7)+, d0
0000934E  2B 40 D7 9A                move.l     d0, -$2866(a5)
00009352  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00009358  4E 5E                      unlk       a6
0000935A  4E 75                      rts

; MacsBug symbol trailer for MoveShowerFreeze2: 91 4D 6F 76 65 53 68 6F 77 65 72 46 72 65 65 7A 65 32

HandleShowerFreeze1: ; 00009370..000094FC
00009370  4E 56 FF F8                link.w     a6, #$fff8
00009374  2B 6D DB 52 DB 5A          move.l     -$24ae(a5), -$24a6(a5)
0000937A  2B 6D DB 56 DB 5E          move.l     -$24aa(a5), -$24a2(a5)
00009380  0C 6D 00 52 DB 52          cmpi.w     #$52, -$24ae(a5)
00009386  6F 74                      ble.b      $93fc
00009388  0C 6D 00 C8 DB 58          cmpi.w     #$c8, -$24a8(a5)
0000938E  6C 6C                      bge.b      $93fc
00009390  48 6D DB 52                pea.l      -$24ae(a5)
00009394  2F 3C FF F8 00 00          move.l     #$fff80000, -(a7)
0000939A  A8 A8                      .byte      0xa8, 0xa8
0000939C  0C 6D 00 52 DB 52          cmpi.w     #$52, -$24ae(a5)
000093A2  6E 58                      bgt.b      $93fc
000093A4  0C 6D 00 01 D7 A8          cmpi.w     #$1, -$2858(a5)
000093AA  66 10                      bne.b      $93bc
000093AC  3B 7C 01 B2 DB 58          move.w     #$1b2, -$24a8(a5)
000093B2  70 F1                      moveq      #$f1, d0
000093B4  D0 6D DB 58                add.w      -$24a8(a5), d0
000093B8  3B 40 DB 54                move.w     d0, -$24ac(a5)
000093BC  0C 6D 00 02 D7 A8          cmpi.w     #$2, -$2858(a5)
000093C2  66 10                      bne.b      $93d4
000093C4  3B 7C 01 D2 DB 58          move.w     #$1d2, -$24a8(a5)
000093CA  70 F1                      moveq      #$f1, d0
000093CC  D0 6D DB 58                add.w      -$24a8(a5), d0
000093D0  3B 40 DB 54                move.w     d0, -$24ac(a5)
000093D4  0C 6D 00 03 D7 A8          cmpi.w     #$3, -$2858(a5)
000093DA  66 10                      bne.b      $93ec
000093DC  3B 7C 01 F5 DB 58          move.w     #$1f5, -$24a8(a5)
000093E2  70 F1                      moveq      #$f1, d0
000093E4  D0 6D DB 58                add.w      -$24a8(a5), d0
000093E8  3B 40 DB 54                move.w     d0, -$24ac(a5)
000093EC  3B 7C 00 52 DB 52          move.w     #$52, -$24ae(a5)
000093F2  70 35                      moveq      #$35, d0
000093F4  D0 6D DB 52                add.w      -$24ae(a5), d0
000093F8  3B 40 DB 56                move.w     d0, -$24aa(a5)
000093FC  0C 6D 00 52 DB 52          cmpi.w     #$52, -$24ae(a5)
00009402  6D 00 00 F4                blt.w      $94f8
00009406  0C 6D 01 2C DB 58          cmpi.w     #$12c, -$24a8(a5)
0000940C  6F 00 00 EA                ble.w      $94f8
00009410  48 6D DB 52                pea.l      -$24ae(a5)
00009414  2F 3C 00 05 00 00          move.l     #$50000, -(a7)
0000941A  A8 A8                      .byte      0xa8, 0xa8
0000941C  0C 6D 01 BA DB 52          cmpi.w     #$1ba, -$24ae(a5)
00009422  6E 16                      bgt.b      $943a
00009424  55 4F                      subq.w     #$2, a7
00009426  48 6D DB 52                pea.l      -$24ae(a5)
0000942A  48 6D DC 56                pea.l      -$23aa(a5)
0000942E  48 6E FF F8                pea.l      -$8(a6)
00009432  A8 AA                      .byte      0xa8, 0xaa
00009434  10 1F                      move.b     (a7)+, d0
00009436  67 00 00 C0                beq.w      $94f8
0000943A  55 4F                      subq.w     #$2, a7
0000943C  48 6D DB 52                pea.l      -$24ae(a5)
00009440  48 6D DC 56                pea.l      -$23aa(a5)
00009444  48 6E FF F8                pea.l      -$8(a6)
00009448  A8 AA                      .byte      0xa8, 0xaa
0000944A  10 1F                      move.b     (a7)+, d0
0000944C  67 00 00 9C                beq.w      $94ea
00009450  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
00009456  66 20                      bne.b      $9478
00009458  42 2D D7 DA                clr.b      -$2826(a5)
0000945C  1B 7C 00 01 D7 DC          move.b     #$1, -$2824(a5)
00009462  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00009468  42 2D FF F0                clr.b      -$10(a5)
0000946C  59 4F                      subq.w     #$4, a7
0000946E  A9 75                      .byte      0xa9, 0x75
00009470  20 1F                      move.l     (a7)+, d0
00009472  2B 40 D7 86                move.l     d0, -$287a(a5)
00009476  60 1C                      bra.b      $9494
00009478  4A 2D D7 DA                tst.b      -$2826(a5)
0000947C  66 16                      bne.b      $9494
0000947E  1B 7C 00 01 D7 DA          move.b     #$1, -$2826(a5)
00009484  59 4F                      subq.w     #$4, a7
00009486  A9 75                      .byte      0xa9, 0x75
00009488  20 1F                      move.l     (a7)+, d0
0000948A  2B 40 D7 82                move.l     d0, -$287e(a5)
0000948E  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00009494  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
0000949A  4E B9 00 00 00 A8          jsr        $a8.l
000094A0  20 6D D3 FA                movea.l    -$2c06(a5), a0
000094A4  48 68 00 02                pea.l      $2(a0)
000094A8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000094AC  48 68 00 02                pea.l      $2(a0)
000094B0  48 6D DB 72                pea.l      -$248e(a5)
000094B4  48 6D DB 72                pea.l      -$248e(a5)
000094B8  42 67                      clr.w      -(a7)
000094BA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000094BE  2F 28 00 18                move.l     $18(a0), -(a7)
000094C2  A8 EC                      .byte      0xa8, 0xec
000094C4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000094C8  48 68 00 02                pea.l      $2(a0)
000094CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000094D0  48 68 00 02                pea.l      $2(a0)
000094D4  48 6D DB 72                pea.l      -$248e(a5)
000094D8  48 6D DB 72                pea.l      -$248e(a5)
000094DC  42 67                      clr.w      -(a7)
000094DE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000094E2  2F 28 00 18                move.l     $18(a0), -(a7)
000094E6  A8 EC                      .byte      0xa8, 0xec
000094E8  58 4F                      addq.w     #$4, a7
000094EA  42 2D D7 AA                clr.b      -$2856(a5)
000094EE  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000094F4  42 2D D4 04                clr.b      -$2bfc(a5)
000094F8  4E 5E                      unlk       a6
000094FA  4E 75                      rts

; MacsBug symbol trailer for HandleShowerFreeze1: 93 48 61 6E 64 6C 65 53 68 6F 77 65 72 46 72 65 65 7A 65 31

HandleShowerFreeze2: ; 00009512..0000969E
00009512  4E 56 FF F8                link.w     a6, #$fff8
00009516  2B 6D DB 26 DB 2E          move.l     -$24da(a5), -$24d2(a5)
0000951C  2B 6D DB 2A DB 32          move.l     -$24d6(a5), -$24ce(a5)
00009522  0C 6D 00 52 DB 26          cmpi.w     #$52, -$24da(a5)
00009528  6F 74                      ble.b      $959e
0000952A  0C 6D 01 3C DB 2C          cmpi.w     #$13c, -$24d4(a5)
00009530  6F 6C                      ble.b      $959e
00009532  48 6D DB 26                pea.l      -$24da(a5)
00009536  2F 3C FF F8 00 00          move.l     #$fff80000, -(a7)
0000953C  A8 A8                      .byte      0xa8, 0xa8
0000953E  0C 6D 00 52 DB 26          cmpi.w     #$52, -$24da(a5)
00009544  6E 58                      bgt.b      $959e
00009546  0C 6D 00 01 D7 A6          cmpi.w     #$1, -$285a(a5)
0000954C  66 10                      bne.b      $955e
0000954E  3B 7C 00 52 DB 28          move.w     #$52, -$24d8(a5)
00009554  70 0F                      moveq      #$f, d0
00009556  D0 6D DB 28                add.w      -$24d8(a5), d0
0000955A  3B 40 DB 2C                move.w     d0, -$24d4(a5)
0000955E  0C 6D 00 02 D7 A6          cmpi.w     #$2, -$285a(a5)
00009564  66 10                      bne.b      $9576
00009566  3B 7C 00 32 DB 28          move.w     #$32, -$24d8(a5)
0000956C  70 0F                      moveq      #$f, d0
0000956E  D0 6D DB 28                add.w      -$24d8(a5), d0
00009572  3B 40 DB 2C                move.w     d0, -$24d4(a5)
00009576  0C 6D 00 03 D7 A6          cmpi.w     #$3, -$285a(a5)
0000957C  66 10                      bne.b      $958e
0000957E  3B 7C 00 0F DB 28          move.w     #$f, -$24d8(a5)
00009584  70 0F                      moveq      #$f, d0
00009586  D0 6D DB 28                add.w      -$24d8(a5), d0
0000958A  3B 40 DB 2C                move.w     d0, -$24d4(a5)
0000958E  3B 7C 00 52 DB 26          move.w     #$52, -$24da(a5)
00009594  70 35                      moveq      #$35, d0
00009596  D0 6D DB 26                add.w      -$24da(a5), d0
0000959A  3B 40 DB 2A                move.w     d0, -$24d6(a5)
0000959E  0C 6D 00 52 DB 26          cmpi.w     #$52, -$24da(a5)
000095A4  6D 00 00 F4                blt.w      $969a
000095A8  0C 6D 00 D8 DB 2C          cmpi.w     #$d8, -$24d4(a5)
000095AE  6C 00 00 EA                bge.w      $969a
000095B2  48 6D DB 26                pea.l      -$24da(a5)
000095B6  2F 3C 00 05 00 00          move.l     #$50000, -(a7)
000095BC  A8 A8                      .byte      0xa8, 0xa8
000095BE  0C 6D 01 BA DB 26          cmpi.w     #$1ba, -$24da(a5)
000095C4  6E 16                      bgt.b      $95dc
000095C6  55 4F                      subq.w     #$2, a7
000095C8  48 6D DB 26                pea.l      -$24da(a5)
000095CC  48 6D DC 82                pea.l      -$237e(a5)
000095D0  48 6E FF F8                pea.l      -$8(a6)
000095D4  A8 AA                      .byte      0xa8, 0xaa
000095D6  10 1F                      move.b     (a7)+, d0
000095D8  67 00 00 C0                beq.w      $969a
000095DC  55 4F                      subq.w     #$2, a7
000095DE  48 6D DB 26                pea.l      -$24da(a5)
000095E2  48 6D DC 82                pea.l      -$237e(a5)
000095E6  48 6E FF F8                pea.l      -$8(a6)
000095EA  A8 AA                      .byte      0xa8, 0xaa
000095EC  10 1F                      move.b     (a7)+, d0
000095EE  67 00 00 9C                beq.w      $968c
000095F2  0C 2D 00 01 D7 DC          cmpi.b     #$1, -$2824(a5)
000095F8  66 20                      bne.b      $961a
000095FA  42 2D D7 DC                clr.b      -$2824(a5)
000095FE  1B 7C 00 01 D7 DA          move.b     #$1, -$2826(a5)
00009604  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
0000960A  42 2D FF EE                clr.b      -$12(a5)
0000960E  59 4F                      subq.w     #$4, a7
00009610  A9 75                      .byte      0xa9, 0x75
00009612  20 1F                      move.l     (a7)+, d0
00009614  2B 40 D7 82                move.l     d0, -$287e(a5)
00009618  60 1C                      bra.b      $9636
0000961A  4A 2D D7 DC                tst.b      -$2824(a5)
0000961E  66 16                      bne.b      $9636
00009620  1B 7C 00 01 D7 DC          move.b     #$1, -$2824(a5)
00009626  59 4F                      subq.w     #$4, a7
00009628  A9 75                      .byte      0xa9, 0x75
0000962A  20 1F                      move.l     (a7)+, d0
0000962C  2B 40 D7 86                move.l     d0, -$287a(a5)
00009630  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00009636  2F 3C 0D AC 00 0A          move.l     #$dac000a, -(a7)
0000963C  4E B9 00 00 00 A8          jsr        $a8.l
00009642  20 6D D3 FA                movea.l    -$2c06(a5), a0
00009646  48 68 00 02                pea.l      $2(a0)
0000964A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000964E  48 68 00 02                pea.l      $2(a0)
00009652  48 6D DB 46                pea.l      -$24ba(a5)
00009656  48 6D DB 46                pea.l      -$24ba(a5)
0000965A  42 67                      clr.w      -(a7)
0000965C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009660  2F 28 00 18                move.l     $18(a0), -(a7)
00009664  A8 EC                      .byte      0xa8, 0xec
00009666  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000966A  48 68 00 02                pea.l      $2(a0)
0000966E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009672  48 68 00 02                pea.l      $2(a0)
00009676  48 6D DB 46                pea.l      -$24ba(a5)
0000967A  48 6D DB 46                pea.l      -$24ba(a5)
0000967E  42 67                      clr.w      -(a7)
00009680  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009684  2F 28 00 18                move.l     $18(a0), -(a7)
00009688  A8 EC                      .byte      0xa8, 0xec
0000968A  58 4F                      addq.w     #$4, a7
0000968C  42 2D D7 A2                clr.b      -$285e(a5)
00009690  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00009696  42 2D D4 02                clr.b      -$2bfe(a5)
0000969A  4E 5E                      unlk       a6
0000969C  4E 75                      rts

; MacsBug symbol trailer for HandleShowerFreeze2: 93 48 61 6E 64 6C 65 53 68 6F 77 65 72 46 72 65 65 7A 65 32

