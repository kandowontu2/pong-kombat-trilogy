; CODE 5 — CODE 5
; resource size: 2160 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 01 00 00 01 00 00 01 00

DoNewRegistration: ; 00000008..0000005E
00000008  4E 56 FF F8                link.w     a6, #$fff8
0000000C  4E B9 00 00 71 62          jsr        $7162.l
00000012  4E B9 00 00 A7 24          jsr        $a724.l
00000018  60 0C                      bra.b      $26
0000001A  4E B9 00 00 78 38          jsr        $7838.l
00000020  4E B9 00 00 4A 90          jsr        $4a90.l
00000026  59 4F                      subq.w     #$4, a7
00000028  A9 75                      .byte      0xa9, 0x75
0000002A  20 1F                      move.l     (a7)+, d0
0000002C  90 AD D3 BA                sub.l      -$2c46(a5), d0
00000030  0C 80 00 00 01 2C          cmpi.l     #$12c, d0
00000036  65 E2                      bcs.b      $1a
00000038  4E B9 00 00 79 9C          jsr        $799c.l
0000003E  48 6E FF F8                pea.l      -$8(a6)
00000042  42 A7                      clr.l      -(a7)
00000044  2F 3C 01 04 00 CE          move.l     #$10400ce, -(a7)
0000004A  A8 A7                      .byte      0xa8, 0xa7
0000004C  48 6E FF F8                pea.l      -$8(a6)
00000050  3F 3C 00 81                move.w     #$81, -(a7)
00000054  4E B9 00 00 7C BE          jsr        $7cbe.l
0000005A  4E 5E                      unlk       a6
0000005C  4E 75                      rts

; MacsBug symbol trailer for DoNewRegistration: 91 44 6F 4E 65 77 52 65 67 69 73 74 72 61 74 69 6F 6E

DoMenus: ; 00000072..00000208
00000072  4E 56 FF C4                link.w     a6, #$ffc4
00000076  59 4F                      subq.w     #$4, a7
00000078  3F 3C 00 96                move.w     #$96, -(a7)
0000007C  A9 BC                      .byte      0xa9, 0xbc
0000007E  20 5F                      movea.l    (a7)+, a0
00000080  2D 48 FF F8                move.l     a0, -$8(a6)
00000084  59 4F                      subq.w     #$4, a7
00000086  3F 3C 00 A0                move.w     #$a0, -(a7)
0000008A  A9 BC                      .byte      0xa9, 0xbc
0000008C  20 5F                      movea.l    (a7)+, a0
0000008E  2D 48 FF FC                move.l     a0, -$4(a6)
00000092  59 4F                      subq.w     #$4, a7
00000094  3F 3C 00 97                move.w     #$97, -(a7)
00000098  A9 BC                      .byte      0xa9, 0xbc
0000009A  20 5F                      movea.l    (a7)+, a0
0000009C  2D 48 FF F0                move.l     a0, -$10(a6)
000000A0  59 4F                      subq.w     #$4, a7
000000A2  3F 3C 00 A1                move.w     #$a1, -(a7)
000000A6  A9 BC                      .byte      0xa9, 0xbc
000000A8  20 5F                      movea.l    (a7)+, a0
000000AA  2D 48 FF F4                move.l     a0, -$c(a6)
000000AE  59 4F                      subq.w     #$4, a7
000000B0  3F 3C 00 98                move.w     #$98, -(a7)
000000B4  A9 BC                      .byte      0xa9, 0xbc
000000B6  20 5F                      movea.l    (a7)+, a0
000000B8  2D 48 FF E8                move.l     a0, -$18(a6)
000000BC  59 4F                      subq.w     #$4, a7
000000BE  3F 3C 00 A2                move.w     #$a2, -(a7)
000000C2  A9 BC                      .byte      0xa9, 0xbc
000000C4  20 5F                      movea.l    (a7)+, a0
000000C6  2D 48 FF EC                move.l     a0, -$14(a6)
000000CA  48 6E FF E0                pea.l      -$20(a6)
000000CE  2F 3C 00 37 00 53          move.l     #$370053, -(a7)
000000D4  2F 3C 00 50 00 96          move.l     #$500096, -(a7)
000000DA  A8 A7                      .byte      0xa8, 0xa7
000000DC  48 6E FF D8                pea.l      -$28(a6)
000000E0  2F 3C 00 37 00 C0          move.l     #$3700c0, -(a7)
000000E6  2F 3C 00 50 01 44          move.l     #$500144, -(a7)
000000EC  A8 A7                      .byte      0xa8, 0xa7
000000EE  48 6E FF D0                pea.l      -$30(a6)
000000F2  2F 3C 00 37 01 69          move.l     #$370169, -(a7)
000000F8  2F 3C 00 50 01 AF          move.l     #$5001af, -(a7)
000000FE  A8 A7                      .byte      0xa8, 0xa7
00000100  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
00000104  A8 73                      .byte      0xa8, 0x73
00000106  48 6D D3 B6                pea.l      -$2c4a(a5)
0000010A  A9 72                      .byte      0xa9, 0x72
0000010C  3B 6D D3 B8 D3 B4          move.w     -$2c48(a5), -$2c4c(a5)
00000112  70 F6                      moveq      #$f6, d0
00000114  D0 6D D3 B4                add.w      -$2c4c(a5), d0
00000118  3B 40 D3 B0                move.w     d0, -$2c50(a5)
0000011C  3B 6D D3 B6 D3 AE          move.w     -$2c4a(a5), -$2c52(a5)
00000122  70 0A                      moveq      #$a, d0
00000124  D0 6D D3 AE                add.w      -$2c52(a5), d0
00000128  3B 40 D3 B2                move.w     d0, -$2c4e(a5)
0000012C  48 6E FF C4                pea.l      -$3c(a6)
00000130  A8 74                      .byte      0xa8, 0x74
00000132  2F 2D D3 FA                move.l     -$2c06(a5), -(a7)
00000136  A8 73                      .byte      0xa8, 0x73
00000138  55 4F                      subq.w     #$2, a7
0000013A  48 6D D3 AE                pea.l      -$2c52(a5)
0000013E  48 6E FF E0                pea.l      -$20(a6)
00000142  48 6E FF C8                pea.l      -$38(a6)
00000146  A8 AA                      .byte      0xa8, 0xaa
00000148  10 1F                      move.b     (a7)+, d0
0000014A  67 12                      beq.b      $15e
0000014C  1B 7C 00 01 D3 C2          move.b     #$1, -$2c3e(a5)
00000152  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000156  48 6E FF E0                pea.l      -$20(a6)
0000015A  A8 F6                      .byte      0xa8, 0xf6
0000015C  60 0E                      bra.b      $16c
0000015E  42 2D D3 C2                clr.b      -$2c3e(a5)
00000162  2F 2E FF F8                move.l     -$8(a6), -(a7)
00000166  48 6E FF E0                pea.l      -$20(a6)
0000016A  A8 F6                      .byte      0xa8, 0xf6
0000016C  4A 2D D7 E0                tst.b      -$2820(a5)
00000170  66 34                      bne.b      $1a6
00000172  55 4F                      subq.w     #$2, a7
00000174  48 6D D3 AE                pea.l      -$2c52(a5)
00000178  48 6E FF D8                pea.l      -$28(a6)
0000017C  48 6E FF C8                pea.l      -$38(a6)
00000180  A8 AA                      .byte      0xa8, 0xaa
00000182  10 1F                      move.b     (a7)+, d0
00000184  67 12                      beq.b      $198
00000186  1B 7C 00 01 D3 C0          move.b     #$1, -$2c40(a5)
0000018C  2F 2E FF F4                move.l     -$c(a6), -(a7)
00000190  48 6E FF D8                pea.l      -$28(a6)
00000194  A8 F6                      .byte      0xa8, 0xf6
00000196  60 0E                      bra.b      $1a6
00000198  42 2D D3 C0                clr.b      -$2c40(a5)
0000019C  2F 2E FF F0                move.l     -$10(a6), -(a7)
000001A0  48 6E FF D8                pea.l      -$28(a6)
000001A4  A8 F6                      .byte      0xa8, 0xf6
000001A6  55 4F                      subq.w     #$2, a7
000001A8  48 6D D3 AE                pea.l      -$2c52(a5)
000001AC  48 6E FF D0                pea.l      -$30(a6)
000001B0  48 6E FF C8                pea.l      -$38(a6)
000001B4  A8 AA                      .byte      0xa8, 0xaa
000001B6  10 1F                      move.b     (a7)+, d0
000001B8  67 12                      beq.b      $1cc
000001BA  1B 7C 00 01 D3 BE          move.b     #$1, -$2c42(a5)
000001C0  2F 2E FF EC                move.l     -$14(a6), -(a7)
000001C4  48 6E FF D0                pea.l      -$30(a6)
000001C8  A8 F6                      .byte      0xa8, 0xf6
000001CA  60 0E                      bra.b      $1da
000001CC  42 2D D3 BE                clr.b      -$2c42(a5)
000001D0  2F 2E FF E8                move.l     -$18(a6), -(a7)
000001D4  48 6E FF D0                pea.l      -$30(a6)
000001D8  A8 F6                      .byte      0xa8, 0xf6
000001DA  2F 2E FF C4                move.l     -$3c(a6), -(a7)
000001DE  A8 73                      .byte      0xa8, 0x73
000001E0  20 6D D3 FA                movea.l    -$2c06(a5), a0
000001E4  48 68 00 02                pea.l      $2(a0)
000001E8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000001EC  48 68 00 02                pea.l      $2(a0)
000001F0  48 6D D7 F4                pea.l      -$280c(a5)
000001F4  48 6D D7 F4                pea.l      -$280c(a5)
000001F8  42 67                      clr.w      -(a7)
000001FA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000001FE  2F 28 00 18                move.l     $18(a0), -(a7)
00000202  A8 EC                      .byte      0xa8, 0xec
00000204  4E 5E                      unlk       a6
00000206  4E 75                      rts

; MacsBug symbol trailer for DoMenus: 87 44 6F 4D 65 6E 75 73

DoIntro: ; 00000212..00000866
00000212  4E 56 FF B0                link.w     a6, #$ffb0
00000216  48 E7 1F 00                movem.l    d3-d7, -(a7)
0000021A  7A 00                      moveq      #$0, d5
0000021C  7C 01                      moveq      #$1, d6
0000021E  38 3C 00 81                move.w     #$81, d4
00000222  48 6E FF C0                pea.l      -$40(a6)
00000226  42 A7                      clr.l      -(a7)
00000228  2F 3C 01 04 00 CE          move.l     #$10400ce, -(a7)
0000022E  A8 A7                      .byte      0xa8, 0xa7
00000230  48 6E FF C8                pea.l      -$38(a6)
00000234  42 A7                      clr.l      -(a7)
00000236  2F 3C 00 23 01 6C          move.l     #$23016c, -(a7)
0000023C  A8 A7                      .byte      0xa8, 0xa7
0000023E  48 6E FF D0                pea.l      -$30(a6)
00000242  42 A7                      clr.l      -(a7)
00000244  2F 3C 01 2C 01 2C          move.l     #$12c012c, -(a7)
0000024A  A8 A7                      .byte      0xa8, 0xa7
0000024C  48 6E FF D8                pea.l      -$28(a6)
00000250  42 A7                      clr.l      -(a7)
00000252  2F 3C 00 84 01 8F          move.l     #$84018f, -(a7)
00000258  A8 A7                      .byte      0xa8, 0xa7
0000025A  48 6E FF E0                pea.l      -$20(a6)
0000025E  42 A7                      clr.l      -(a7)
00000260  2F 3C 00 45 01 4D          move.l     #$45014d, -(a7)
00000266  A8 A7                      .byte      0xa8, 0xa7
00000268  48 6E FF E8                pea.l      -$18(a6)
0000026C  42 A7                      clr.l      -(a7)
0000026E  2F 3C 00 1D 01 0D          move.l     #$1d010d, -(a7)
00000274  A8 A7                      .byte      0xa8, 0xa7
00000276  48 6E FF B8                pea.l      -$48(a6)
0000027A  42 A7                      clr.l      -(a7)
0000027C  2F 3C 00 0A 00 0A          move.l     #$a000a, -(a7)
00000282  A8 A7                      .byte      0xa8, 0xa7
00000284  48 6E FF B0                pea.l      -$50(a6)
00000288  42 A7                      clr.l      -(a7)
0000028A  2F 3C 00 32 01 C2          move.l     #$3201c2, -(a7)
00000290  A8 A7                      .byte      0xa8, 0xa7
00000292  48 6E FF C0                pea.l      -$40(a6)
00000296  3F 3C 00 81                move.w     #$81, -(a7)
0000029A  4E B9 00 00 7C BE          jsr        $7cbe.l
000002A0  A9 75                      .byte      0xa9, 0x75
000002A2  20 1F                      move.l     (a7)+, d0
000002A4  2E 00                      move.l     d0, d7
000002A6  42 6D D7 36                clr.w      -$28ca(a5)
000002AA  A8 61                      .byte      0xa8, 0x61
000002AC  30 1F                      move.w     (a7)+, d0
000002AE  02 40 7F FF                andi.w     #$7fff, d0
000002B2  48 C0                      ext.l      d0
000002B4  81 FC 00 06                divs.w     #$6, d0
000002B8  48 40                      swap       d0
000002BA  52 40                      addq.w     #$1, d0
000002BC  36 00                      move.w     d0, d3
000002BE  30 03                      move.w     d3, d0
000002C0  0C 40 00 06                cmpi.w     #$6, d0
000002C4  62 00 05 7E                bhi.w      $844
000002C8  D0 40                      add.w      d0, d0
000002CA  30 3B 00 06                move.w     $2d2(pc, d0.w), d0
000002CE  4E FB 00 02                jmp        $2d2(pc, d0.w)
000002D2  05 72 00 0E                bchg.b     d2, $e(a2, d0.w)
000002D6  00 60 00 0E                ori.w      #$e, -(a0)
000002DA  00 B2 00 60 00 B2 3B 7C 00 01 D7 38 ori.l      #$6000b2, $1d738(a2, invalid.w)
000002E6  3B 7C 00 03 D7 3A          move.w     #$3, -$28c6(a5)
000002EC  3B 7C 00 06 D7 3C          move.w     #$6, -$28c4(a5)
000002F2  3B 7C 00 05 D7 3E          move.w     #$5, -$28c2(a5)
000002F8  3B 7C 00 09 D7 40          move.w     #$9, -$28c0(a5)
000002FE  3B 7C 00 0E D7 42          move.w     #$e, -$28be(a5)
00000304  3B 7C 00 02 D7 44          move.w     #$2, -$28bc(a5)
0000030A  3B 7C 00 07 D7 46          move.w     #$7, -$28ba(a5)
00000310  3B 7C 00 04 D7 48          move.w     #$4, -$28b8(a5)
00000316  3B 7C 00 08 D7 4A          move.w     #$8, -$28b6(a5)
0000031C  3B 7C 00 0F D7 4C          move.w     #$f, -$28b4(a5)
00000322  3B 7C 00 0B D7 4E          move.w     #$b, -$28b2(a5)
00000328  3B 7C 00 0A D7 50          move.w     #$a, -$28b0(a5)
0000032E  60 00 05 14                bra.w      $844
00000332  3B 7C 00 09 D7 38          move.w     #$9, -$28c8(a5)
00000338  3B 7C 00 03 D7 3A          move.w     #$3, -$28c6(a5)
0000033E  3B 7C 00 04 D7 3C          move.w     #$4, -$28c4(a5)
00000344  3B 7C 00 01 D7 3E          move.w     #$1, -$28c2(a5)
0000034A  3B 7C 00 02 D7 40          move.w     #$2, -$28c0(a5)
00000350  3B 7C 00 05 D7 42          move.w     #$5, -$28be(a5)
00000356  3B 7C 00 08 D7 44          move.w     #$8, -$28bc(a5)
0000035C  3B 7C 00 0E D7 46          move.w     #$e, -$28ba(a5)
00000362  3B 7C 00 07 D7 48          move.w     #$7, -$28b8(a5)
00000368  3B 7C 00 06 D7 4A          move.w     #$6, -$28b6(a5)
0000036E  3B 7C 00 0F D7 4C          move.w     #$f, -$28b4(a5)
00000374  3B 7C 00 0B D7 4E          move.w     #$b, -$28b2(a5)
0000037A  3B 7C 00 0A D7 50          move.w     #$a, -$28b0(a5)
00000380  60 00 04 C2                bra.w      $844
00000384  3B 7C 00 02 D7 38          move.w     #$2, -$28c8(a5)
0000038A  3B 7C 00 05 D7 3A          move.w     #$5, -$28c6(a5)
00000390  3B 7C 00 01 D7 3C          move.w     #$1, -$28c4(a5)
00000396  3B 7C 00 09 D7 3E          move.w     #$9, -$28c2(a5)
0000039C  3B 7C 00 03 D7 40          move.w     #$3, -$28c0(a5)
000003A2  3B 7C 00 06 D7 42          move.w     #$6, -$28be(a5)
000003A8  3B 7C 00 0E D7 44          move.w     #$e, -$28bc(a5)
000003AE  3B 7C 00 07 D7 46          move.w     #$7, -$28ba(a5)
000003B4  3B 7C 00 08 D7 48          move.w     #$8, -$28b8(a5)
000003BA  3B 7C 00 04 D7 4A          move.w     #$4, -$28b6(a5)
000003C0  3B 7C 00 0F D7 4C          move.w     #$f, -$28b4(a5)
000003C6  3B 7C 00 0B D7 4E          move.w     #$b, -$28b2(a5)
000003CC  3B 7C 00 0A D7 50          move.w     #$a, -$28b0(a5)
000003D2  60 00 04 70                bra.w      $844
000003D6  2F 3C 1F 40 00 01          move.l     #$1f400001, -(a7)
000003DC  4E B9 00 00 00 C8          jsr        $c8.l
000003E2  3F 3C FF FF                move.w     #$ffff, -(a7)
000003E6  48 6E FF F0                pea.l      -$10(a6)
000003EA  A9 70                      .byte      0xa9, 0x70
000003EC  10 1F                      move.b     (a7)+, d0
000003EE  0C 6E 00 01 FF F0          cmpi.w     #$1, -$10(a6)
000003F4  54 4F                      addq.w     #$2, a7
000003F6  66 3C                      bne.b      $434
000003F8  0C 2D 00 01 D3 C2          cmpi.b     #$1, -$2c3e(a5)
000003FE  66 0A                      bne.b      $40a
00000400  7A 01                      moveq      #$1, d5
00000402  7C 00                      moveq      #$0, d6
00000404  1B 7C 00 01 D7 DE          move.b     #$1, -$2822(a5)
0000040A  0C 2D 00 01 D3 C0          cmpi.b     #$1, -$2c40(a5)
00000410  66 14                      bne.b      $426
00000412  4A 2D D7 E0                tst.b      -$2820(a5)
00000416  66 0E                      bne.b      $426
00000418  59 4F                      subq.w     #$4, a7
0000041A  A9 75                      .byte      0xa9, 0x75
0000041C  20 1F                      move.l     (a7)+, d0
0000041E  2B 40 D3 BA                move.l     d0, -$2c46(a5)
00000422  4E BA FB E4                jsr        $8(pc)
00000426  0C 2D 00 01 D3 BE          cmpi.b     #$1, -$2c42(a5)
0000042C  66 06                      bne.b      $434
0000042E  4E B9 00 00 6E 08          jsr        $6e08.l
00000434  0C 6E 00 03 FF F0          cmpi.w     #$3, -$10(a6)
0000043A  66 00 03 0A                bne.w      $746
0000043E  26 2E FF F2                move.l     -$e(a6), d3
00000442  02 83 00 00 00 FF          andi.l     #$ff, d3
00000448  0C 03 00 20                cmpi.b     #$20, d3
0000044C  66 04                      bne.b      $452
0000044E  7A 01                      moveq      #$1, d5
00000450  7C 00                      moveq      #$0, d6
00000452  0C 03 00 77                cmpi.b     #$77, d3
00000456  66 1C                      bne.b      $474
00000458  4A 6D D3 D6                tst.w      -$2c2a(a5)
0000045C  66 12                      bne.b      $470
0000045E  3B 7C 00 19 D3 D6          move.w     #$19, -$2c2a(a5)
00000464  59 4F                      subq.w     #$4, a7
00000466  A9 75                      .byte      0xa9, 0x75
00000468  20 1F                      move.l     (a7)+, d0
0000046A  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
0000046E  60 04                      bra.b      $474
00000470  42 6D D3 D6                clr.w      -$2c2a(a5)
00000474  0C 03 00 68                cmpi.b     #$68, d3
00000478  66 34                      bne.b      $4ae
0000047A  0C 6D 00 19 D3 D6          cmpi.w     #$19, -$2c2a(a5)
00000480  66 28                      bne.b      $4aa
00000482  59 4F                      subq.w     #$4, a7
00000484  A9 75                      .byte      0xa9, 0x75
00000486  20 1F                      move.l     (a7)+, d0
00000488  90 AD D3 D2                sub.l      -$2c2e(a5), d0
0000048C  72 3C                      moveq      #$3c, d1
0000048E  B0 81                      cmp.l      d1, d0
00000490  64 12                      bcc.b      $4a4
00000492  3B 7C 00 1A D3 D6          move.w     #$1a, -$2c2a(a5)
00000498  59 4F                      subq.w     #$4, a7
0000049A  A9 75                      .byte      0xa9, 0x75
0000049C  20 1F                      move.l     (a7)+, d0
0000049E  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
000004A2  60 0A                      bra.b      $4ae
000004A4  42 6D D3 D6                clr.w      -$2c2a(a5)
000004A8  60 04                      bra.b      $4ae
000004AA  42 6D D3 D6                clr.w      -$2c2a(a5)
000004AE  0C 03 00 6F                cmpi.b     #$6f, d3
000004B2  66 28                      bne.b      $4dc
000004B4  0C 6D 00 1A D3 D6          cmpi.w     #$1a, -$2c2a(a5)
000004BA  66 1C                      bne.b      $4d8
000004BC  59 4F                      subq.w     #$4, a7
000004BE  A9 75                      .byte      0xa9, 0x75
000004C0  20 1F                      move.l     (a7)+, d0
000004C2  90 AD D3 D2                sub.l      -$2c2e(a5), d0
000004C6  72 3C                      moveq      #$3c, d1
000004C8  B0 81                      cmp.l      d1, d0
000004CA  64 06                      bcc.b      $4d2
000004CC  4E B9 00 00 0A 0E          jsr        $a0e.l
000004D2  42 6D D3 D6                clr.w      -$2c2a(a5)
000004D6  60 04                      bra.b      $4dc
000004D8  42 6D D3 D6                clr.w      -$2c2a(a5)
000004DC  0C 03 00 6E                cmpi.b     #$6e, d3
000004E0  66 1C                      bne.b      $4fe
000004E2  4A 6D D3 D6                tst.w      -$2c2a(a5)
000004E6  66 12                      bne.b      $4fa
000004E8  3B 7C 00 14 D3 D6          move.w     #$14, -$2c2a(a5)
000004EE  59 4F                      subq.w     #$4, a7
000004F0  A9 75                      .byte      0xa9, 0x75
000004F2  20 1F                      move.l     (a7)+, d0
000004F4  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
000004F8  60 04                      bra.b      $4fe
000004FA  42 6D D3 D6                clr.w      -$2c2a(a5)
000004FE  0C 03 00 75                cmpi.b     #$75, d3
00000502  66 34                      bne.b      $538
00000504  0C 6D 00 14 D3 D6          cmpi.w     #$14, -$2c2a(a5)
0000050A  66 28                      bne.b      $534
0000050C  59 4F                      subq.w     #$4, a7
0000050E  A9 75                      .byte      0xa9, 0x75
00000510  20 1F                      move.l     (a7)+, d0
00000512  90 AD D3 D2                sub.l      -$2c2e(a5), d0
00000516  72 3C                      moveq      #$3c, d1
00000518  B0 81                      cmp.l      d1, d0
0000051A  64 12                      bcc.b      $52e
0000051C  3B 7C 00 15 D3 D6          move.w     #$15, -$2c2a(a5)
00000522  59 4F                      subq.w     #$4, a7
00000524  A9 75                      .byte      0xa9, 0x75
00000526  20 1F                      move.l     (a7)+, d0
00000528  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
0000052C  60 0A                      bra.b      $538
0000052E  42 6D D3 D6                clr.w      -$2c2a(a5)
00000532  60 04                      bra.b      $538
00000534  42 6D D3 D6                clr.w      -$2c2a(a5)
00000538  0C 03 00 69                cmpi.b     #$69, d3
0000053C  66 1C                      bne.b      $55a
0000053E  4A 6D D3 D6                tst.w      -$2c2a(a5)
00000542  66 12                      bne.b      $556
00000544  3B 7C 00 01 D3 D6          move.w     #$1, -$2c2a(a5)
0000054A  59 4F                      subq.w     #$4, a7
0000054C  A9 75                      .byte      0xa9, 0x75
0000054E  20 1F                      move.l     (a7)+, d0
00000550  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
00000554  60 04                      bra.b      $55a
00000556  42 6D D3 D6                clr.w      -$2c2a(a5)
0000055A  0C 03 00 6D                cmpi.b     #$6d, d3
0000055E  66 64                      bne.b      $5c4
00000560  0C 6D 00 01 D3 D6          cmpi.w     #$1, -$2c2a(a5)
00000566  66 28                      bne.b      $590
00000568  59 4F                      subq.w     #$4, a7
0000056A  A9 75                      .byte      0xa9, 0x75
0000056C  20 1F                      move.l     (a7)+, d0
0000056E  90 AD D3 D2                sub.l      -$2c2e(a5), d0
00000572  72 3C                      moveq      #$3c, d1
00000574  B0 81                      cmp.l      d1, d0
00000576  64 12                      bcc.b      $58a
00000578  3B 7C 00 02 D3 D6          move.w     #$2, -$2c2a(a5)
0000057E  59 4F                      subq.w     #$4, a7
00000580  A9 75                      .byte      0xa9, 0x75
00000582  20 1F                      move.l     (a7)+, d0
00000584  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
00000588  60 3A                      bra.b      $5c4
0000058A  42 6D D3 D6                clr.w      -$2c2a(a5)
0000058E  60 34                      bra.b      $5c4
00000590  0C 6D 00 04 D3 D6          cmpi.w     #$4, -$2c2a(a5)
00000596  66 28                      bne.b      $5c0
00000598  59 4F                      subq.w     #$4, a7
0000059A  A9 75                      .byte      0xa9, 0x75
0000059C  20 1F                      move.l     (a7)+, d0
0000059E  90 AD D3 D2                sub.l      -$2c2e(a5), d0
000005A2  72 3C                      moveq      #$3c, d1
000005A4  B0 81                      cmp.l      d1, d0
000005A6  64 12                      bcc.b      $5ba
000005A8  3B 7C 00 05 D3 D6          move.w     #$5, -$2c2a(a5)
000005AE  59 4F                      subq.w     #$4, a7
000005B0  A9 75                      .byte      0xa9, 0x75
000005B2  20 1F                      move.l     (a7)+, d0
000005B4  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
000005B8  60 0A                      bra.b      $5c4
000005BA  42 6D D3 D6                clr.w      -$2c2a(a5)
000005BE  60 04                      bra.b      $5c4
000005C0  42 6D D3 D6                clr.w      -$2c2a(a5)
000005C4  0C 03 00 6C                cmpi.b     #$6c, d3
000005C8  66 00 00 9C                bne.w      $666
000005CC  0C 6D 00 02 D3 D6          cmpi.w     #$2, -$2c2a(a5)
000005D2  66 28                      bne.b      $5fc
000005D4  59 4F                      subq.w     #$4, a7
000005D6  A9 75                      .byte      0xa9, 0x75
000005D8  20 1F                      move.l     (a7)+, d0
000005DA  90 AD D3 D2                sub.l      -$2c2e(a5), d0
000005DE  72 3C                      moveq      #$3c, d1
000005E0  B0 81                      cmp.l      d1, d0
000005E2  64 12                      bcc.b      $5f6
000005E4  3B 7C 00 03 D3 D6          move.w     #$3, -$2c2a(a5)
000005EA  59 4F                      subq.w     #$4, a7
000005EC  A9 75                      .byte      0xa9, 0x75
000005EE  20 1F                      move.l     (a7)+, d0
000005F0  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
000005F4  60 70                      bra.b      $666
000005F6  42 6D D3 D6                clr.w      -$2c2a(a5)
000005FA  60 6A                      bra.b      $666
000005FC  0C 6D 00 15 D3 D6          cmpi.w     #$15, -$2c2a(a5)
00000602  66 28                      bne.b      $62c
00000604  59 4F                      subq.w     #$4, a7
00000606  A9 75                      .byte      0xa9, 0x75
00000608  20 1F                      move.l     (a7)+, d0
0000060A  90 AD D3 D2                sub.l      -$2c2e(a5), d0
0000060E  72 3C                      moveq      #$3c, d1
00000610  B0 81                      cmp.l      d1, d0
00000612  64 12                      bcc.b      $626
00000614  3B 7C 00 16 D3 D6          move.w     #$16, -$2c2a(a5)
0000061A  59 4F                      subq.w     #$4, a7
0000061C  A9 75                      .byte      0xa9, 0x75
0000061E  20 1F                      move.l     (a7)+, d0
00000620  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
00000624  60 40                      bra.b      $666
00000626  42 6D D3 D6                clr.w      -$2c2a(a5)
0000062A  60 3A                      bra.b      $666
0000062C  0C 6D 00 16 D3 D6          cmpi.w     #$16, -$2c2a(a5)
00000632  66 2E                      bne.b      $662
00000634  59 4F                      subq.w     #$4, a7
00000636  A9 75                      .byte      0xa9, 0x75
00000638  20 1F                      move.l     (a7)+, d0
0000063A  90 AD D3 D2                sub.l      -$2c2e(a5), d0
0000063E  72 3C                      moveq      #$3c, d1
00000640  B0 81                      cmp.l      d1, d0
00000642  64 18                      bcc.b      $65c
00000644  2F 3C 00 F4 00 0A          move.l     #$f4000a, -(a7)
0000064A  4E B9 00 00 00 A8          jsr        $a8.l
00000650  42 2D D7 E0                clr.b      -$2820(a5)
00000654  4E B9 00 00 6C D6          jsr        $6cd6.l
0000065A  58 4F                      addq.w     #$4, a7
0000065C  42 6D D3 D6                clr.w      -$2c2a(a5)
00000660  60 04                      bra.b      $666
00000662  42 6D D3 D6                clr.w      -$2c2a(a5)
00000666  0C 03 00 61                cmpi.b     #$61, d3
0000066A  66 34                      bne.b      $6a0
0000066C  0C 6D 00 03 D3 D6          cmpi.w     #$3, -$2c2a(a5)
00000672  66 28                      bne.b      $69c
00000674  59 4F                      subq.w     #$4, a7
00000676  A9 75                      .byte      0xa9, 0x75
00000678  20 1F                      move.l     (a7)+, d0
0000067A  90 AD D3 D2                sub.l      -$2c2e(a5), d0
0000067E  72 3C                      moveq      #$3c, d1
00000680  B0 81                      cmp.l      d1, d0
00000682  64 12                      bcc.b      $696
00000684  3B 7C 00 04 D3 D6          move.w     #$4, -$2c2a(a5)
0000068A  59 4F                      subq.w     #$4, a7
0000068C  A9 75                      .byte      0xa9, 0x75
0000068E  20 1F                      move.l     (a7)+, d0
00000690  2B 40 D3 D2                move.l     d0, -$2c2e(a5)
00000694  60 0A                      bra.b      $6a0
00000696  42 6D D3 D6                clr.w      -$2c2a(a5)
0000069A  60 04                      bra.b      $6a0
0000069C  42 6D D3 D6                clr.w      -$2c2a(a5)
000006A0  0C 03 00 65                cmpi.b     #$65, d3
000006A4  66 34                      bne.b      $6da
000006A6  0C 6D 00 05 D3 D6          cmpi.w     #$5, -$2c2a(a5)
000006AC  66 28                      bne.b      $6d6
000006AE  59 4F                      subq.w     #$4, a7
000006B0  A9 75                      .byte      0xa9, 0x75
000006B2  20 1F                      move.l     (a7)+, d0
000006B4  90 AD D3 D2                sub.l      -$2c2e(a5), d0
000006B8  72 3C                      moveq      #$3c, d1
000006BA  B0 81                      cmp.l      d1, d0
000006BC  64 12                      bcc.b      $6d0
000006BE  2F 3C 13 88 00 0A          move.l     #$1388000a, -(a7)
000006C4  4E B9 00 00 00 B0          jsr        $b0.l
000006CA  52 6D DE FE                addq.w     #$1, -$2102(a5)
000006CE  58 4F                      addq.w     #$4, a7
000006D0  42 6D D3 D6                clr.w      -$2c2a(a5)
000006D4  60 04                      bra.b      $6da
000006D6  42 6D D3 D6                clr.w      -$2c2a(a5)
000006DA  0C 03 00 71                cmpi.b     #$71, d3
000006DE  66 16                      bne.b      $6f6
000006E0  30 2E FF FE                move.w     -$2(a6), d0
000006E4  02 80 00 00 01 00          andi.l     #$100, d0
000006EA  67 0A                      beq.b      $6f6
000006EC  7A 01                      moveq      #$1, d5
000006EE  7C 00                      moveq      #$0, d6
000006F0  1B 7C 00 01 D7 DE          move.b     #$1, -$2822(a5)
000006F6  0C 03 00 6B                cmpi.b     #$6b, d3
000006FA  66 12                      bne.b      $70e
000006FC  30 2E FF FE                move.w     -$2(a6), d0
00000700  02 80 00 00 01 00          andi.l     #$100, d0
00000706  67 06                      beq.b      $70e
00000708  4E B9 00 00 6E 08          jsr        $6e08.l
0000070E  0C 03 00 73                cmpi.b     #$73, d3
00000712  66 32                      bne.b      $746
00000714  30 2E FF FE                move.w     -$2(a6), d0
00000718  02 80 00 00 01 00          andi.l     #$100, d0
0000071E  67 26                      beq.b      $746
00000720  0C 2D 00 01 DE FC          cmpi.b     #$1, -$2104(a5)
00000726  66 0E                      bne.b      $736
00000728  42 67                      clr.w      -(a7)
0000072A  4E B9 00 00 00 58          jsr        $58.l
00000730  42 2D DE FC                clr.b      -$2104(a5)
00000734  60 10                      bra.b      $746
00000736  1B 7C 00 01 DE FC          move.b     #$1, -$2104(a5)
0000073C  3F 2D CE BC                move.w     -$3144(a5), -(a7)
00000740  4E B9 00 00 00 58          jsr        $58.l
00000746  4A 2D D3 C4                tst.b      -$2c3c(a5)
0000074A  66 48                      bne.b      $794
0000074C  48 6D D3 CE                pea.l      -$2c32(a5)
00000750  A9 72                      .byte      0xa9, 0x72
00000752  30 2D D3 D0                move.w     -$2c30(a5), d0
00000756  B0 6D D3 CC                cmp.w      -$2c34(a5), d0
0000075A  66 0A                      bne.b      $766
0000075C  30 2D D3 CE                move.w     -$2c32(a5), d0
00000760  B0 6D D3 CA                cmp.w      -$2c36(a5), d0
00000764  67 2E                      beq.b      $794
00000766  3B 6D D3 D0 D3 CC          move.w     -$2c30(a5), -$2c34(a5)
0000076C  3B 6D D3 CE D3 CA          move.w     -$2c32(a5), -$2c36(a5)
00000772  1B 7C 00 01 D3 C4          move.b     #$1, -$2c3c(a5)
00000778  59 4F                      subq.w     #$4, a7
0000077A  A9 75                      .byte      0xa9, 0x75
0000077C  20 1F                      move.l     (a7)+, d0
0000077E  2B 40 D3 C6                move.l     d0, -$2c3a(a5)
00000782  A8 53                      .byte      0xa8, 0x53
00000784  48 6E FF C0                pea.l      -$40(a6)
00000788  3F 3C 00 81                move.w     #$81, -(a7)
0000078C  4E B9 00 00 7C BE          jsr        $7cbe.l
00000792  5C 4F                      addq.w     #$6, a7
00000794  0C 2D 00 01 D3 C4          cmpi.b     #$1, -$2c3c(a5)
0000079A  66 64                      bne.b      $800
0000079C  48 6D D3 CE                pea.l      -$2c32(a5)
000007A0  A9 72                      .byte      0xa9, 0x72
000007A2  59 4F                      subq.w     #$4, a7
000007A4  A9 75                      .byte      0xa9, 0x75
000007A6  20 1F                      move.l     (a7)+, d0
000007A8  90 AD D3 C6                sub.l      -$2c3a(a5), d0
000007AC  72 64                      moveq      #$64, d1
000007AE  B0 81                      cmp.l      d1, d0
000007B0  63 18                      bls.b      $7ca
000007B2  30 2D D3 D0                move.w     -$2c30(a5), d0
000007B6  B0 6D D3 CC                cmp.w      -$2c34(a5), d0
000007BA  66 0E                      bne.b      $7ca
000007BC  30 2D D3 CE                move.w     -$2c32(a5), d0
000007C0  B0 6D D3 CA                cmp.w      -$2c36(a5), d0
000007C4  66 04                      bne.b      $7ca
000007C6  42 2D D3 C4                clr.b      -$2c3c(a5)
000007CA  30 2D D3 D0                move.w     -$2c30(a5), d0
000007CE  B0 6D D3 CC                cmp.w      -$2c34(a5), d0
000007D2  66 0A                      bne.b      $7de
000007D4  30 2D D3 CE                move.w     -$2c32(a5), d0
000007D8  B0 6D D3 CA                cmp.w      -$2c36(a5), d0
000007DC  67 66                      beq.b      $844
000007DE  3B 6D D3 D0 D3 CC          move.w     -$2c30(a5), -$2c34(a5)
000007E4  3B 6D D3 CE D3 CA          move.w     -$2c32(a5), -$2c36(a5)
000007EA  1B 7C 00 01 D3 C4          move.b     #$1, -$2c3c(a5)
000007F0  59 4F                      subq.w     #$4, a7
000007F2  A9 75                      .byte      0xa9, 0x75
000007F4  20 1F                      move.l     (a7)+, d0
000007F6  2B 40 D3 C6                move.l     d0, -$2c3a(a5)
000007FA  4E BA F8 76                jsr        $72(pc)
000007FE  60 44                      bra.b      $844
00000800  4A 2D D3 C4                tst.b      -$2c3c(a5)
00000804  66 3E                      bne.b      $844
00000806  59 4F                      subq.w     #$4, a7
00000808  A9 75                      .byte      0xa9, 0x75
0000080A  20 1F                      move.l     (a7)+, d0
0000080C  90 87                      sub.l      d7, d0
0000080E  0C 80 00 00 01 90          cmpi.l     #$190, d0
00000814  63 2E                      bls.b      $844
00000816  52 44                      addq.w     #$1, d4
00000818  0C 44 00 86                cmpi.w     #$86, d4
0000081C  6F 04                      ble.b      $822
0000081E  38 3C 00 81                move.w     #$81, d4
00000822  30 04                      move.w     d4, d0
00000824  06 40 FF 7F                addi.w     #$ff7f, d0
00000828  48 C0                      ext.l      d0
0000082A  E7 88                      lsl.l      #$3, d0
0000082C  41 EE FF C0                lea.l      -$40(a6), a0
00000830  D1 C0                      adda.l     d0, a0
00000832  48 50                      pea.l      (a0)
00000834  3F 04                      move.w     d4, -(a7)
00000836  4E B9 00 00 7C BE          jsr        $7cbe.l
0000083C  A9 75                      .byte      0xa9, 0x75
0000083E  20 1F                      move.l     (a7)+, d0
00000840  2E 00                      move.l     d0, d7
00000842  54 4F                      addq.w     #$2, a7
00000844  4A 05                      tst.b      d5
00000846  67 00 FB 8E                beq.w      $3d6
0000084A  4E B9 00 00 00 88          jsr        $88.l
00000850  4A 2D D7 DE                tst.b      -$2822(a5)
00000854  66 08                      bne.b      $85e
00000856  A8 52                      .byte      0xa8, 0x52
00000858  4E B9 00 00 07 CA          jsr        $7ca.l
0000085E  4C DF 00 F8                movem.l    (a7)+, d3-d7
00000862  4E 5E                      unlk       a6
00000864  4E 75                      rts

; MacsBug symbol trailer for DoIntro: 87 44 6F 49 6E 74 72 6F

