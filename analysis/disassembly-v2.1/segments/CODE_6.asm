; CODE 6 — CRAP
; resource size: 5094 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 00 68 00 13 00 00 00 68

CloseDownTheSoundOne: ; 00000008..00000032
00000008  4E 56 00 00                link.w     a6, #$0
0000000C  2F 03                      move.l     d3, -(a7)
0000000E  76 00                      moveq      #$0, d3
00000010  4A AD DE E8                tst.l      -$2118(a5)
00000014  67 14                      beq.b      $2a
00000016  55 4F                      subq.w     #$2, a7
00000018  2F 2D DE E8                move.l     -$2118(a5), -(a7)
0000001C  1F 3C 00 01                move.b     #$1, -(a7)
00000020  A8 01                      .byte      0xa8, 0x01
00000022  30 1F                      move.w     (a7)+, d0
00000024  36 00                      move.w     d0, d3
00000026  42 AD DE E8                clr.l      -$2118(a5)
0000002A  30 03                      move.w     d3, d0
0000002C  26 1F                      move.l     (a7)+, d3
0000002E  4E 5E                      unlk       a6
00000030  4E 75                      rts

; MacsBug symbol trailer for CloseDownTheSoundOne: 94 43 6C 6F 73 65 44 6F 77 6E 54 68 65 53 6F 75 6E 64 4F 6E 65

CloseDownTheSoundTwo: ; 0000004A..00000074
0000004A  4E 56 00 00                link.w     a6, #$0
0000004E  2F 03                      move.l     d3, -(a7)
00000050  76 00                      moveq      #$0, d3
00000052  4A AD DE E4                tst.l      -$211c(a5)
00000056  67 14                      beq.b      $6c
00000058  55 4F                      subq.w     #$2, a7
0000005A  2F 2D DE E4                move.l     -$211c(a5), -(a7)
0000005E  1F 3C 00 01                move.b     #$1, -(a7)
00000062  A8 01                      .byte      0xa8, 0x01
00000064  30 1F                      move.w     (a7)+, d0
00000066  36 00                      move.w     d0, d3
00000068  42 AD DE E4                clr.l      -$211c(a5)
0000006C  30 03                      move.w     d3, d0
0000006E  26 1F                      move.l     (a7)+, d3
00000070  4E 5E                      unlk       a6
00000072  4E 75                      rts

; MacsBug symbol trailer for CloseDownTheSoundTwo: 94 43 6C 6F 73 65 44 6F 77 6E 54 68 65 53 6F 75 6E 64 54 77 6F

CloseDownTheSoundThree: ; 0000008C..000000B6
0000008C  4E 56 00 00                link.w     a6, #$0
00000090  2F 03                      move.l     d3, -(a7)
00000092  76 00                      moveq      #$0, d3
00000094  4A AD DE E0                tst.l      -$2120(a5)
00000098  67 14                      beq.b      $ae
0000009A  55 4F                      subq.w     #$2, a7
0000009C  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000000A0  1F 3C 00 01                move.b     #$1, -(a7)
000000A4  A8 01                      .byte      0xa8, 0x01
000000A6  30 1F                      move.w     (a7)+, d0
000000A8  36 00                      move.w     d0, d3
000000AA  42 AD DE E0                clr.l      -$2120(a5)
000000AE  30 03                      move.w     d3, d0
000000B0  26 1F                      move.l     (a7)+, d3
000000B2  4E 5E                      unlk       a6
000000B4  4E 75                      rts

; MacsBug symbol trailer for CloseDownTheSoundThree: 96 43 6C 6F 73 65 44 6F 77 6E 54 68 65 53 6F 75 6E 64 54 68 72 65 65

InitializeForSound: ; 000000D0..00000122
000000D0  4E 56 FF F0                link.w     a6, #$fff0
000000D4  1B 7C 00 01 DE ED          move.b     #$1, -$2113(a5)
000000DA  42 AD DE E0                clr.l      -$2120(a5)
000000DE  42 AD DE E4                clr.l      -$211c(a5)
000000E2  42 AD DE E8                clr.l      -$2118(a5)
000000E6  42 6D DE DA                clr.w      -$2126(a5)
000000EA  42 6D DE DC                clr.w      -$2124(a5)
000000EE  42 6D DE DE                clr.w      -$2122(a5)
000000F2  55 4F                      subq.w     #$2, a7
000000F4  3F 3C 00 01                move.w     #$1, -(a7)
000000F8  48 6E FF F0                pea.l      -$10(a6)
000000FC  4E B9 00 00 00 40          jsr        $40.l
00000102  30 1F                      move.w     (a7)+, d0
00000104  0C 6E 00 04 FF F2          cmpi.w     #$4, -$e(a6)
0000010A  6D 08                      blt.b      $114
0000010C  0C 6E 06 05 FF F4          cmpi.w     #$605, -$c(a6)
00000112  6C 04                      bge.b      $118
00000114  70 00                      moveq      #$0, d0
00000116  60 02                      bra.b      $11a
00000118  70 01                      moveq      #$1, d0
0000011A  1B 40 DE D7                move.b     d0, -$2129(a5)
0000011E  4E 5E                      unlk       a6
00000120  4E 75                      rts

; MacsBug symbol trailer for InitializeForSound: 92 49 6E 69 74 69 61 6C 69 7A 65 46 6F 72 53 6F 75 6E 64

FlushSoundNowThree: ; 00000138..000001C8
00000138  4E 56 FF F8                link.w     a6, #$fff8
0000013C  2F 03                      move.l     d3, -(a7)
0000013E  20 6E 00 08                movea.l    $8(a6), a0
00000142  2D 50 FF F8                move.l     (a0), -$8(a6)
00000146  2D 68 00 04 FF FC          move.l     $4(a0), -$4(a6)
0000014C  0C 6E 03 8F FF FA          cmpi.w     #$38f, -$6(a6)
00000152  66 12                      bne.b      $166
00000154  20 2E FF FC                move.l     -$4(a6), d0
00000158  C1 8D                      exg.l      d0, a5
0000015A  26 00                      move.l     d0, d3
0000015C  42 6D DE D8                clr.w      -$2128(a5)
00000160  20 03                      move.l     d3, d0
00000162  C1 8D                      exg.l      d0, a5
00000164  26 00                      move.l     d0, d3
00000166  26 1F                      move.l     (a7)+, d3
00000168  4E 5E                      unlk       a6
0000016A  20 5F                      movea.l    (a7)+, a0
0000016C  50 4F                      addq.w     #$8, a7
0000016E  4E D0                      jmp        (a0)
00000170  8D 53                      or.w       d6, (a3)
00000172  4F 55                      .byte      0x4f, 0x55
00000174  4E 44                      trap       #$4
00000176  43 41                      .byte      0x43, 0x41
00000178  4C 4C                      .byte      0x4c, 0x4c
0000017A  42 41                      clr.w      d1
0000017C  43 4B                      .byte      0x43, 0x4b
0000017E  00 00 4E 56                ori.b      #$56, d0
00000182  FF F6                      .byte      0xff, 0xf6
00000184  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
0000018A  42 6E FF FA                clr.w      -$6(a6)
0000018E  42 AE FF FC                clr.l      -$4(a6)
00000192  55 4F                      subq.w     #$2, a7
00000194  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000198  48 6E FF F8                pea.l      -$8(a6)
0000019C  A8 04                      .byte      0xa8, 0x04
0000019E  30 1F                      move.w     (a7)+, d0
000001A0  3D 40 FF F6                move.w     d0, -$a(a6)
000001A4  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
000001AA  42 6E FF FA                clr.w      -$6(a6)
000001AE  42 AE FF FC                clr.l      -$4(a6)
000001B2  55 4F                      subq.w     #$2, a7
000001B4  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000001B8  48 6E FF F8                pea.l      -$8(a6)
000001BC  A8 04                      .byte      0xa8, 0x04
000001BE  30 1F                      move.w     (a7)+, d0
000001C0  3D 40 FF F6                move.w     d0, -$a(a6)
000001C4  4E 5E                      unlk       a6
000001C6  4E 75                      rts

; MacsBug symbol trailer for FlushSoundNowThree: 92 46 6C 75 73 68 53 6F 75 6E 64 4E 6F 77 54 68 72 65 65

PlayASoundOneHandle: ; 000001DE..0000028A
000001DE  4E 56 FF F0                link.w     a6, #$fff0
000001E2  2F 03                      move.l     d3, -(a7)
000001E4  20 2D DE E8                move.l     -$2118(a5), d0
000001E8  57 C0                      seq.b      d0
000001EA  44 00                      neg.b      d0
000001EC  66 3E                      bne.b      $22c
000001EE  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
000001F4  42 6E FF FA                clr.w      -$6(a6)
000001F8  42 AE FF FC                clr.l      -$4(a6)
000001FC  55 4F                      subq.w     #$2, a7
000001FE  2F 2D DE E8                move.l     -$2118(a5), -(a7)
00000202  48 6E FF F8                pea.l      -$8(a6)
00000206  A8 04                      .byte      0xa8, 0x04
00000208  30 1F                      move.w     (a7)+, d0
0000020A  36 00                      move.w     d0, d3
0000020C  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
00000212  42 6E FF FA                clr.w      -$6(a6)
00000216  42 AE FF FC                clr.l      -$4(a6)
0000021A  55 4F                      subq.w     #$2, a7
0000021C  2F 2D DE E8                move.l     -$2118(a5), -(a7)
00000220  48 6E FF F8                pea.l      -$8(a6)
00000224  A8 04                      .byte      0xa8, 0x04
00000226  30 1F                      move.w     (a7)+, d0
00000228  36 00                      move.w     d0, d3
0000022A  60 1A                      bra.b      $246
0000022C  55 4F                      subq.w     #$2, a7
0000022E  48 6D DE E8                pea.l      -$2118(a5)
00000232  42 67                      clr.w      -(a7)
00000234  48 78 00 80                pea.l      $80.w
00000238  48 7A FE FE                pea.l      $138(pc)
0000023C  A8 07                      .byte      0xa8, 0x07
0000023E  30 1F                      move.w     (a7)+, d0
00000240  36 00                      move.w     d0, d3
00000242  4A 43                      tst.w      d3
00000244  66 3E                      bne.b      $284
00000246  55 4F                      subq.w     #$2, a7
00000248  2F 2D DE E8                move.l     -$2118(a5), -(a7)
0000024C  2F 2E 00 08                move.l     $8(a6), -(a7)
00000250  1F 3C 00 01                move.b     #$1, -(a7)
00000254  A8 05                      .byte      0xa8, 0x05
00000256  30 1F                      move.w     (a7)+, d0
00000258  36 00                      move.w     d0, d3
0000025A  4A 43                      tst.w      d3
0000025C  66 26                      bne.b      $284
0000025E  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
00000264  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
0000026A  20 0D                      move.l     a5, d0
0000026C  2A 78 09 04                movea.l    $904.w, a5
00000270  2D 40 FF F4                move.l     d0, -$c(a6)
00000274  55 4F                      subq.w     #$2, a7
00000276  2F 2D DE E8                move.l     -$2118(a5), -(a7)
0000027A  48 6E FF F0                pea.l      -$10(a6)
0000027E  42 27                      clr.b      -(a7)
00000280  A8 03                      .byte      0xa8, 0x03
00000282  30 1F                      move.w     (a7)+, d0
00000284  26 1F                      move.l     (a7)+, d3
00000286  4E 5E                      unlk       a6
00000288  4E 75                      rts

; MacsBug symbol trailer for PlayASoundOneHandle: 93 50 6C 61 79 41 53 6F 75 6E 64 4F 6E 65 48 61 6E 64 6C 65

PlayASoundTwoHandle: ; 000002A0..0000034C
000002A0  4E 56 FF F0                link.w     a6, #$fff0
000002A4  2F 03                      move.l     d3, -(a7)
000002A6  20 2D DE E4                move.l     -$211c(a5), d0
000002AA  57 C0                      seq.b      d0
000002AC  44 00                      neg.b      d0
000002AE  66 3E                      bne.b      $2ee
000002B0  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
000002B6  42 6E FF FA                clr.w      -$6(a6)
000002BA  42 AE FF FC                clr.l      -$4(a6)
000002BE  55 4F                      subq.w     #$2, a7
000002C0  2F 2D DE E4                move.l     -$211c(a5), -(a7)
000002C4  48 6E FF F8                pea.l      -$8(a6)
000002C8  A8 04                      .byte      0xa8, 0x04
000002CA  30 1F                      move.w     (a7)+, d0
000002CC  36 00                      move.w     d0, d3
000002CE  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
000002D4  42 6E FF FA                clr.w      -$6(a6)
000002D8  42 AE FF FC                clr.l      -$4(a6)
000002DC  55 4F                      subq.w     #$2, a7
000002DE  2F 2D DE E4                move.l     -$211c(a5), -(a7)
000002E2  48 6E FF F8                pea.l      -$8(a6)
000002E6  A8 04                      .byte      0xa8, 0x04
000002E8  30 1F                      move.w     (a7)+, d0
000002EA  36 00                      move.w     d0, d3
000002EC  60 1A                      bra.b      $308
000002EE  55 4F                      subq.w     #$2, a7
000002F0  48 6D DE E4                pea.l      -$211c(a5)
000002F4  42 67                      clr.w      -(a7)
000002F6  48 78 00 80                pea.l      $80.w
000002FA  48 7A FE 3C                pea.l      $138(pc)
000002FE  A8 07                      .byte      0xa8, 0x07
00000300  30 1F                      move.w     (a7)+, d0
00000302  36 00                      move.w     d0, d3
00000304  4A 43                      tst.w      d3
00000306  66 3E                      bne.b      $346
00000308  55 4F                      subq.w     #$2, a7
0000030A  2F 2D DE E4                move.l     -$211c(a5), -(a7)
0000030E  2F 2E 00 08                move.l     $8(a6), -(a7)
00000312  1F 3C 00 01                move.b     #$1, -(a7)
00000316  A8 05                      .byte      0xa8, 0x05
00000318  30 1F                      move.w     (a7)+, d0
0000031A  36 00                      move.w     d0, d3
0000031C  4A 43                      tst.w      d3
0000031E  66 26                      bne.b      $346
00000320  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
00000326  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
0000032C  20 0D                      move.l     a5, d0
0000032E  2A 78 09 04                movea.l    $904.w, a5
00000332  2D 40 FF F4                move.l     d0, -$c(a6)
00000336  55 4F                      subq.w     #$2, a7
00000338  2F 2D DE E4                move.l     -$211c(a5), -(a7)
0000033C  48 6E FF F0                pea.l      -$10(a6)
00000340  42 27                      clr.b      -(a7)
00000342  A8 03                      .byte      0xa8, 0x03
00000344  30 1F                      move.w     (a7)+, d0
00000346  26 1F                      move.l     (a7)+, d3
00000348  4E 5E                      unlk       a6
0000034A  4E 75                      rts

; MacsBug symbol trailer for PlayASoundTwoHandle: 93 50 6C 61 79 41 53 6F 75 6E 64 54 77 6F 48 61 6E 64 6C 65

PlayASoundThreeHandle: ; 00000362..0000040E
00000362  4E 56 FF F0                link.w     a6, #$fff0
00000366  2F 03                      move.l     d3, -(a7)
00000368  20 2D DE E0                move.l     -$2120(a5), d0
0000036C  57 C0                      seq.b      d0
0000036E  44 00                      neg.b      d0
00000370  66 3E                      bne.b      $3b0
00000372  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
00000378  42 6E FF FA                clr.w      -$6(a6)
0000037C  42 AE FF FC                clr.l      -$4(a6)
00000380  55 4F                      subq.w     #$2, a7
00000382  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000386  48 6E FF F8                pea.l      -$8(a6)
0000038A  A8 04                      .byte      0xa8, 0x04
0000038C  30 1F                      move.w     (a7)+, d0
0000038E  36 00                      move.w     d0, d3
00000390  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
00000396  42 6E FF FA                clr.w      -$6(a6)
0000039A  42 AE FF FC                clr.l      -$4(a6)
0000039E  55 4F                      subq.w     #$2, a7
000003A0  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000003A4  48 6E FF F8                pea.l      -$8(a6)
000003A8  A8 04                      .byte      0xa8, 0x04
000003AA  30 1F                      move.w     (a7)+, d0
000003AC  36 00                      move.w     d0, d3
000003AE  60 1A                      bra.b      $3ca
000003B0  55 4F                      subq.w     #$2, a7
000003B2  48 6D DE E0                pea.l      -$2120(a5)
000003B6  42 67                      clr.w      -(a7)
000003B8  48 78 00 80                pea.l      $80.w
000003BC  48 7A FD 7A                pea.l      $138(pc)
000003C0  A8 07                      .byte      0xa8, 0x07
000003C2  30 1F                      move.w     (a7)+, d0
000003C4  36 00                      move.w     d0, d3
000003C6  4A 43                      tst.w      d3
000003C8  66 3E                      bne.b      $408
000003CA  55 4F                      subq.w     #$2, a7
000003CC  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000003D0  2F 2E 00 08                move.l     $8(a6), -(a7)
000003D4  1F 3C 00 01                move.b     #$1, -(a7)
000003D8  A8 05                      .byte      0xa8, 0x05
000003DA  30 1F                      move.w     (a7)+, d0
000003DC  36 00                      move.w     d0, d3
000003DE  4A 43                      tst.w      d3
000003E0  66 26                      bne.b      $408
000003E2  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
000003E8  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
000003EE  20 0D                      move.l     a5, d0
000003F0  2A 78 09 04                movea.l    $904.w, a5
000003F4  2D 40 FF F4                move.l     d0, -$c(a6)
000003F8  55 4F                      subq.w     #$2, a7
000003FA  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000003FE  48 6E FF F0                pea.l      -$10(a6)
00000402  42 27                      clr.b      -(a7)
00000404  A8 03                      .byte      0xa8, 0x03
00000406  30 1F                      move.w     (a7)+, d0
00000408  26 1F                      move.l     (a7)+, d3
0000040A  4E 5E                      unlk       a6
0000040C  4E 75                      rts

; MacsBug symbol trailer for PlayASoundThreeHandle: 95 50 6C 61 79 41 53 6F 75 6E 64 54 68 72 65 65 48 61 6E 64 6C 65

PlayASoundOne: ; 00000426..000004EC
00000426  4E 56 FF F0                link.w     a6, #$fff0
0000042A  48 E7 10 20                movem.l    d3/a2, -(a7)
0000042E  59 4F                      subq.w     #$4, a7
00000430  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00000436  3F 2E 00 08                move.w     $8(a6), -(a7)
0000043A  A8 1F                      .byte      0xa8, 0x1f
0000043C  20 5F                      movea.l    (a7)+, a0
0000043E  24 48                      movea.l    a0, a2
00000440  20 0A                      move.l     a2, d0
00000442  67 00 00 A0                beq.w      $4e4
00000446  20 2D DE E8                move.l     -$2118(a5), d0
0000044A  57 C0                      seq.b      d0
0000044C  44 00                      neg.b      d0
0000044E  66 3E                      bne.b      $48e
00000450  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
00000456  42 6E FF FA                clr.w      -$6(a6)
0000045A  42 AE FF FC                clr.l      -$4(a6)
0000045E  55 4F                      subq.w     #$2, a7
00000460  2F 2D DE E8                move.l     -$2118(a5), -(a7)
00000464  48 6E FF F8                pea.l      -$8(a6)
00000468  A8 04                      .byte      0xa8, 0x04
0000046A  30 1F                      move.w     (a7)+, d0
0000046C  36 00                      move.w     d0, d3
0000046E  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
00000474  42 6E FF FA                clr.w      -$6(a6)
00000478  42 AE FF FC                clr.l      -$4(a6)
0000047C  55 4F                      subq.w     #$2, a7
0000047E  2F 2D DE E8                move.l     -$2118(a5), -(a7)
00000482  48 6E FF F8                pea.l      -$8(a6)
00000486  A8 04                      .byte      0xa8, 0x04
00000488  30 1F                      move.w     (a7)+, d0
0000048A  36 00                      move.w     d0, d3
0000048C  60 1A                      bra.b      $4a8
0000048E  55 4F                      subq.w     #$2, a7
00000490  48 6D DE E8                pea.l      -$2118(a5)
00000494  42 67                      clr.w      -(a7)
00000496  48 78 00 80                pea.l      $80.w
0000049A  48 7A FC 9C                pea.l      $138(pc)
0000049E  A8 07                      .byte      0xa8, 0x07
000004A0  30 1F                      move.w     (a7)+, d0
000004A2  36 00                      move.w     d0, d3
000004A4  4A 43                      tst.w      d3
000004A6  66 3C                      bne.b      $4e4
000004A8  55 4F                      subq.w     #$2, a7
000004AA  2F 2D DE E8                move.l     -$2118(a5), -(a7)
000004AE  2F 0A                      move.l     a2, -(a7)
000004B0  1F 3C 00 01                move.b     #$1, -(a7)
000004B4  A8 05                      .byte      0xa8, 0x05
000004B6  30 1F                      move.w     (a7)+, d0
000004B8  36 00                      move.w     d0, d3
000004BA  4A 43                      tst.w      d3
000004BC  66 26                      bne.b      $4e4
000004BE  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
000004C4  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
000004CA  20 0D                      move.l     a5, d0
000004CC  2A 78 09 04                movea.l    $904.w, a5
000004D0  2D 40 FF F4                move.l     d0, -$c(a6)
000004D4  55 4F                      subq.w     #$2, a7
000004D6  2F 2D DE E8                move.l     -$2118(a5), -(a7)
000004DA  48 6E FF F0                pea.l      -$10(a6)
000004DE  42 27                      clr.b      -(a7)
000004E0  A8 03                      .byte      0xa8, 0x03
000004E2  30 1F                      move.w     (a7)+, d0
000004E4  4C DF 04 08                movem.l    (a7)+, d3/a2
000004E8  4E 5E                      unlk       a6
000004EA  4E 75                      rts

; MacsBug symbol trailer for PlayASoundOne: 8D 50 6C 61 79 41 53 6F 75 6E 64 4F 6E 65

PlayASoundTwo: ; 000004FC..000005C2
000004FC  4E 56 FF F0                link.w     a6, #$fff0
00000500  48 E7 10 20                movem.l    d3/a2, -(a7)
00000504  59 4F                      subq.w     #$4, a7
00000506  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000050C  3F 2E 00 08                move.w     $8(a6), -(a7)
00000510  A8 1F                      .byte      0xa8, 0x1f
00000512  20 5F                      movea.l    (a7)+, a0
00000514  24 48                      movea.l    a0, a2
00000516  20 0A                      move.l     a2, d0
00000518  67 00 00 A0                beq.w      $5ba
0000051C  20 2D DE E4                move.l     -$211c(a5), d0
00000520  57 C0                      seq.b      d0
00000522  44 00                      neg.b      d0
00000524  66 3E                      bne.b      $564
00000526  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
0000052C  42 6E FF FA                clr.w      -$6(a6)
00000530  42 AE FF FC                clr.l      -$4(a6)
00000534  55 4F                      subq.w     #$2, a7
00000536  2F 2D DE E4                move.l     -$211c(a5), -(a7)
0000053A  48 6E FF F8                pea.l      -$8(a6)
0000053E  A8 04                      .byte      0xa8, 0x04
00000540  30 1F                      move.w     (a7)+, d0
00000542  36 00                      move.w     d0, d3
00000544  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
0000054A  42 6E FF FA                clr.w      -$6(a6)
0000054E  42 AE FF FC                clr.l      -$4(a6)
00000552  55 4F                      subq.w     #$2, a7
00000554  2F 2D DE E4                move.l     -$211c(a5), -(a7)
00000558  48 6E FF F8                pea.l      -$8(a6)
0000055C  A8 04                      .byte      0xa8, 0x04
0000055E  30 1F                      move.w     (a7)+, d0
00000560  36 00                      move.w     d0, d3
00000562  60 1A                      bra.b      $57e
00000564  55 4F                      subq.w     #$2, a7
00000566  48 6D DE E4                pea.l      -$211c(a5)
0000056A  42 67                      clr.w      -(a7)
0000056C  48 78 00 80                pea.l      $80.w
00000570  48 7A FB C6                pea.l      $138(pc)
00000574  A8 07                      .byte      0xa8, 0x07
00000576  30 1F                      move.w     (a7)+, d0
00000578  36 00                      move.w     d0, d3
0000057A  4A 43                      tst.w      d3
0000057C  66 3C                      bne.b      $5ba
0000057E  55 4F                      subq.w     #$2, a7
00000580  2F 2D DE E4                move.l     -$211c(a5), -(a7)
00000584  2F 0A                      move.l     a2, -(a7)
00000586  1F 3C 00 01                move.b     #$1, -(a7)
0000058A  A8 05                      .byte      0xa8, 0x05
0000058C  30 1F                      move.w     (a7)+, d0
0000058E  36 00                      move.w     d0, d3
00000590  4A 43                      tst.w      d3
00000592  66 26                      bne.b      $5ba
00000594  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
0000059A  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
000005A0  20 0D                      move.l     a5, d0
000005A2  2A 78 09 04                movea.l    $904.w, a5
000005A6  2D 40 FF F4                move.l     d0, -$c(a6)
000005AA  55 4F                      subq.w     #$2, a7
000005AC  2F 2D DE E4                move.l     -$211c(a5), -(a7)
000005B0  48 6E FF F0                pea.l      -$10(a6)
000005B4  42 27                      clr.b      -(a7)
000005B6  A8 03                      .byte      0xa8, 0x03
000005B8  30 1F                      move.w     (a7)+, d0
000005BA  4C DF 04 08                movem.l    (a7)+, d3/a2
000005BE  4E 5E                      unlk       a6
000005C0  4E 75                      rts

; MacsBug symbol trailer for PlayASoundTwo: 8D 50 6C 61 79 41 53 6F 75 6E 64 54 77 6F

PlayASoundThree: ; 000005D2..00000698
000005D2  4E 56 FF F0                link.w     a6, #$fff0
000005D6  48 E7 10 20                movem.l    d3/a2, -(a7)
000005DA  59 4F                      subq.w     #$4, a7
000005DC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000005E2  3F 2E 00 08                move.w     $8(a6), -(a7)
000005E6  A8 1F                      .byte      0xa8, 0x1f
000005E8  20 5F                      movea.l    (a7)+, a0
000005EA  24 48                      movea.l    a0, a2
000005EC  20 0A                      move.l     a2, d0
000005EE  67 00 00 A0                beq.w      $690
000005F2  20 2D DE E0                move.l     -$2120(a5), d0
000005F6  57 C0                      seq.b      d0
000005F8  44 00                      neg.b      d0
000005FA  66 3E                      bne.b      $63a
000005FC  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
00000602  42 6E FF FA                clr.w      -$6(a6)
00000606  42 AE FF FC                clr.l      -$4(a6)
0000060A  55 4F                      subq.w     #$2, a7
0000060C  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000610  48 6E FF F8                pea.l      -$8(a6)
00000614  A8 04                      .byte      0xa8, 0x04
00000616  30 1F                      move.w     (a7)+, d0
00000618  36 00                      move.w     d0, d3
0000061A  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
00000620  42 6E FF FA                clr.w      -$6(a6)
00000624  42 AE FF FC                clr.l      -$4(a6)
00000628  55 4F                      subq.w     #$2, a7
0000062A  2F 2D DE E0                move.l     -$2120(a5), -(a7)
0000062E  48 6E FF F8                pea.l      -$8(a6)
00000632  A8 04                      .byte      0xa8, 0x04
00000634  30 1F                      move.w     (a7)+, d0
00000636  36 00                      move.w     d0, d3
00000638  60 1A                      bra.b      $654
0000063A  55 4F                      subq.w     #$2, a7
0000063C  48 6D DE E0                pea.l      -$2120(a5)
00000640  42 67                      clr.w      -(a7)
00000642  48 78 00 80                pea.l      $80.w
00000646  48 7A FA F0                pea.l      $138(pc)
0000064A  A8 07                      .byte      0xa8, 0x07
0000064C  30 1F                      move.w     (a7)+, d0
0000064E  36 00                      move.w     d0, d3
00000650  4A 43                      tst.w      d3
00000652  66 3C                      bne.b      $690
00000654  55 4F                      subq.w     #$2, a7
00000656  2F 2D DE E0                move.l     -$2120(a5), -(a7)
0000065A  2F 0A                      move.l     a2, -(a7)
0000065C  1F 3C 00 01                move.b     #$1, -(a7)
00000660  A8 05                      .byte      0xa8, 0x05
00000662  30 1F                      move.w     (a7)+, d0
00000664  36 00                      move.w     d0, d3
00000666  4A 43                      tst.w      d3
00000668  66 26                      bne.b      $690
0000066A  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
00000670  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
00000676  20 0D                      move.l     a5, d0
00000678  2A 78 09 04                movea.l    $904.w, a5
0000067C  2D 40 FF F4                move.l     d0, -$c(a6)
00000680  55 4F                      subq.w     #$2, a7
00000682  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000686  48 6E FF F0                pea.l      -$10(a6)
0000068A  42 27                      clr.b      -(a7)
0000068C  A8 03                      .byte      0xa8, 0x03
0000068E  30 1F                      move.w     (a7)+, d0
00000690  4C DF 04 08                movem.l    (a7)+, d3/a2
00000694  4E 5E                      unlk       a6
00000696  4E 75                      rts

; MacsBug symbol trailer for PlayASoundThree: 8F 50 6C 61 79 41 53 6F 75 6E 64 54 68 72 65 65

PlaySynchSound: ; 000006AA..0000074C
000006AA  4E 56 FF F8                link.w     a6, #$fff8
000006AE  48 E7 10 20                movem.l    d3/a2, -(a7)
000006B2  59 4F                      subq.w     #$4, a7
000006B4  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000006BA  3F 2E 00 08                move.w     $8(a6), -(a7)
000006BE  A8 1F                      .byte      0xa8, 0x1f
000006C0  20 5F                      movea.l    (a7)+, a0
000006C2  24 48                      movea.l    a0, a2
000006C4  20 0A                      move.l     a2, d0
000006C6  67 7C                      beq.b      $744
000006C8  20 2D DE E0                move.l     -$2120(a5), d0
000006CC  57 C0                      seq.b      d0
000006CE  44 00                      neg.b      d0
000006D0  66 3E                      bne.b      $710
000006D2  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
000006D8  42 6E FF FA                clr.w      -$6(a6)
000006DC  42 AE FF FC                clr.l      -$4(a6)
000006E0  55 4F                      subq.w     #$2, a7
000006E2  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000006E6  48 6E FF F8                pea.l      -$8(a6)
000006EA  A8 04                      .byte      0xa8, 0x04
000006EC  30 1F                      move.w     (a7)+, d0
000006EE  36 00                      move.w     d0, d3
000006F0  3D 7C 00 03 FF F8          move.w     #$3, -$8(a6)
000006F6  42 6E FF FA                clr.w      -$6(a6)
000006FA  42 AE FF FC                clr.l      -$4(a6)
000006FE  55 4F                      subq.w     #$2, a7
00000700  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000704  48 6E FF F8                pea.l      -$8(a6)
00000708  A8 04                      .byte      0xa8, 0x04
0000070A  30 1F                      move.w     (a7)+, d0
0000070C  36 00                      move.w     d0, d3
0000070E  60 1A                      bra.b      $72a
00000710  55 4F                      subq.w     #$2, a7
00000712  48 6D DE E0                pea.l      -$2120(a5)
00000716  42 67                      clr.w      -(a7)
00000718  48 78 00 80                pea.l      $80.w
0000071C  48 7A FA 1A                pea.l      $138(pc)
00000720  A8 07                      .byte      0xa8, 0x07
00000722  30 1F                      move.w     (a7)+, d0
00000724  36 00                      move.w     d0, d3
00000726  4A 43                      tst.w      d3
00000728  66 1A                      bne.b      $744
0000072A  55 4F                      subq.w     #$2, a7
0000072C  2F 2D DE E0                move.l     -$2120(a5), -(a7)
00000730  2F 0A                      move.l     a2, -(a7)
00000732  42 27                      clr.b      -(a7)
00000734  A8 05                      .byte      0xa8, 0x05
00000736  30 1F                      move.w     (a7)+, d0
00000738  36 00                      move.w     d0, d3
0000073A  4A 43                      tst.w      d3
0000073C  66 06                      bne.b      $744
0000073E  42 6D DE DA                clr.w      -$2126(a5)
00000742  30 03                      move.w     d3, d0
00000744  4C DF 04 08                movem.l    (a7)+, d3/a2
00000748  4E 5E                      unlk       a6
0000074A  4E 75                      rts

; MacsBug symbol trailer for PlaySynchSound: 8E 50 6C 61 79 53 79 6E 63 68 53 6F 75 6E 64

PlayLoopSoundOne: ; 0000075E..00000806
0000075E  4E 56 FF F0                link.w     a6, #$fff0
00000762  48 E7 10 20                movem.l    d3/a2, -(a7)
00000766  59 4F                      subq.w     #$4, a7
00000768  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000076E  3F 2E 00 08                move.w     $8(a6), -(a7)
00000772  A8 1F                      .byte      0xa8, 0x1f
00000774  20 5F                      movea.l    (a7)+, a0
00000776  24 48                      movea.l    a0, a2
00000778  20 0A                      move.l     a2, d0
0000077A  67 00 00 82                beq.w      $7fe
0000077E  20 2D DE E0                move.l     -$2120(a5), d0
00000782  57 C0                      seq.b      d0
00000784  44 00                      neg.b      d0
00000786  66 20                      bne.b      $7a8
00000788  3D 7C 00 04 FF F8          move.w     #$4, -$8(a6)
0000078E  42 6E FF FA                clr.w      -$6(a6)
00000792  42 AE FF FC                clr.l      -$4(a6)
00000796  55 4F                      subq.w     #$2, a7
00000798  2F 2D DE E0                move.l     -$2120(a5), -(a7)
0000079C  48 6E FF F8                pea.l      -$8(a6)
000007A0  A8 04                      .byte      0xa8, 0x04
000007A2  30 1F                      move.w     (a7)+, d0
000007A4  36 00                      move.w     d0, d3
000007A6  60 1A                      bra.b      $7c2
000007A8  55 4F                      subq.w     #$2, a7
000007AA  48 6D DE E0                pea.l      -$2120(a5)
000007AE  42 67                      clr.w      -(a7)
000007B0  48 78 00 80                pea.l      $80.w
000007B4  48 7A F9 82                pea.l      $138(pc)
000007B8  A8 07                      .byte      0xa8, 0x07
000007BA  30 1F                      move.w     (a7)+, d0
000007BC  36 00                      move.w     d0, d3
000007BE  4A 43                      tst.w      d3
000007C0  66 3C                      bne.b      $7fe
000007C2  55 4F                      subq.w     #$2, a7
000007C4  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000007C8  2F 0A                      move.l     a2, -(a7)
000007CA  1F 3C 00 01                move.b     #$1, -(a7)
000007CE  A8 05                      .byte      0xa8, 0x05
000007D0  30 1F                      move.w     (a7)+, d0
000007D2  36 00                      move.w     d0, d3
000007D4  4A 43                      tst.w      d3
000007D6  66 26                      bne.b      $7fe
000007D8  3D 7C 00 0D FF F0          move.w     #$d, -$10(a6)
000007DE  3D 7C 03 8F FF F2          move.w     #$38f, -$e(a6)
000007E4  20 0D                      move.l     a5, d0
000007E6  2A 78 09 04                movea.l    $904.w, a5
000007EA  2D 40 FF F4                move.l     d0, -$c(a6)
000007EE  55 4F                      subq.w     #$2, a7
000007F0  2F 2D DE E0                move.l     -$2120(a5), -(a7)
000007F4  48 6E FF F0                pea.l      -$10(a6)
000007F8  42 27                      clr.b      -(a7)
000007FA  A8 03                      .byte      0xa8, 0x03
000007FC  30 1F                      move.w     (a7)+, d0
000007FE  4C DF 04 08                movem.l    (a7)+, d3/a2
00000802  4E 5E                      unlk       a6
00000804  4E 75                      rts

; MacsBug symbol trailer for PlayLoopSoundOne: 90 50 6C 61 79 4C 6F 6F 70 53 6F 75 6E 64 4F 6E 65

RedAlert: ; 0000081A..0000086C
0000081A  4E 56 FE 00                link.w     a6, #$fe00
0000081E  2F 03                      move.l     d3, -(a7)
00000820  36 2E 00 08                move.w     $8(a6), d3
00000824  48 6E FF 00                pea.l      -$100(a6)
00000828  3F 3C 03 E8                move.w     #$3e8, -(a7)
0000082C  3F 03                      move.w     d3, -(a7)
0000082E  4E B9 00 00 00 48          jsr        $48.l
00000834  30 43                      movea.w    d3, a0
00000836  2F 08                      move.l     a0, -(a7)
00000838  48 6E FE 00                pea.l      -$200(a6)
0000083C  4E B9 00 00 00 38          jsr        $38.l
00000842  48 6E FF 00                pea.l      -$100(a6)
00000846  48 6D FF FF                pea.l      -$1(a5)
0000084A  48 6D FF FF                pea.l      -$1(a5)
0000084E  48 6D FF FF                pea.l      -$1(a5)
00000852  A9 8B                      .byte      0xa9, 0x8b
00000854  A8 50                      .byte      0xa8, 0x50
00000856  55 4F                      subq.w     #$2, a7
00000858  3F 3C 03 E8                move.w     #$3e8, -(a7)
0000085C  42 A7                      clr.l      -(a7)
0000085E  A9 85                      .byte      0xa9, 0x85
00000860  30 1F                      move.w     (a7)+, d0
00000862  36 00                      move.w     d0, d3
00000864  A9 F4                      .byte      0xa9, 0xf4
00000866  26 1F                      move.l     (a7)+, d3
00000868  4E 5E                      unlk       a6
0000086A  4E 75                      rts

; MacsBug symbol trailer for RedAlert: 88 52 65 64 41 6C 65 72 74

MacHasSystem7: ; 00000878..000008A6
00000878  4E 56 FF F0                link.w     a6, #$fff0
0000087C  2F 03                      move.l     d3, -(a7)
0000087E  55 4F                      subq.w     #$2, a7
00000880  3F 3C 00 02                move.w     #$2, -(a7)
00000884  48 6E FF F0                pea.l      -$10(a6)
00000888  4E B9 00 00 00 40          jsr        $40.l
0000088E  30 1F                      move.w     (a7)+, d0
00000890  0C 6E 07 00 FF F4          cmpi.w     #$700, -$c(a6)
00000896  6D 04                      blt.b      $89c
00000898  76 01                      moveq      #$1, d3
0000089A  60 02                      bra.b      $89e
0000089C  76 00                      moveq      #$0, d3
0000089E  10 03                      move.b     d3, d0
000008A0  26 1F                      move.l     (a7)+, d3
000008A2  4E 5E                      unlk       a6
000008A4  4E 75                      rts

; MacsBug symbol trailer for MacHasSystem7: 8D 4D 61 63 48 61 73 53 79 73 74 65 6D 37

ChangeTheDepth: ; 000008B6..000008FC
000008B6  4E 56 FF FE                link.w     a6, #$fffe
000008BA  59 4F                      subq.w     #$4, a7
000008BC  AA 2A                      .byte      0xaa, 0x2a
000008BE  20 5F                      movea.l    (a7)+, a0
000008C0  2B 48 DE F0                move.l     a0, -$2110(a5)
000008C4  20 6D DE F0                movea.l    -$2110(a5), a0
000008C8  20 50                      movea.l    (a0), a0
000008CA  20 68 00 16                movea.l    $16(a0), a0
000008CE  20 50                      movea.l    (a0), a0
000008D0  3D 68 00 20 FF FE          move.w     $20(a0), -$2(a6)
000008D6  3B 68 00 20 DE EE          move.w     $20(a0), -$2112(a5)
000008DC  0C 6D 00 08 DE EE          cmpi.w     #$8, -$2112(a5)
000008E2  67 14                      beq.b      $8f8
000008E4  55 4F                      subq.w     #$2, a7
000008E6  2F 2D DE F0                move.l     -$2110(a5), -(a7)
000008EA  48 78 00 08                pea.l      $8.w
000008EE  42 67                      clr.w      -(a7)
000008F0  30 3C 0A 13                move.w     #$a13, d0
000008F4  AA A2                      .byte      0xaa, 0xa2
000008F6  30 1F                      move.w     (a7)+, d0
000008F8  4E 5E                      unlk       a6
000008FA  4E 75                      rts

; MacsBug symbol trailer for ChangeTheDepth: 8E 43 68 61 6E 67 65 54 68 65 44 65 70 74 68

RestoreTheDepth: ; 0000090E..0000093C
0000090E  4E 56 00 00                link.w     a6, #$0
00000912  59 4F                      subq.w     #$4, a7
00000914  AA 2A                      .byte      0xaa, 0x2a
00000916  20 5F                      movea.l    (a7)+, a0
00000918  2B 48 DE F0                move.l     a0, -$2110(a5)
0000091C  0C 6D 00 08 DE EE          cmpi.w     #$8, -$2112(a5)
00000922  67 14                      beq.b      $938
00000924  55 4F                      subq.w     #$2, a7
00000926  2F 2D DE F0                move.l     -$2110(a5), -(a7)
0000092A  3F 2D DE EE                move.w     -$2112(a5), -(a7)
0000092E  42 A7                      clr.l      -(a7)
00000930  30 3C 0A 13                move.w     #$a13, d0
00000934  AA A2                      .byte      0xaa, 0xa2
00000936  30 1F                      move.w     (a7)+, d0
00000938  4E 5E                      unlk       a6
0000093A  4E 75                      rts

; MacsBug symbol trailer for RestoreTheDepth: 8F 52 65 73 74 6F 72 65 54 68 65 44 65 70 74 68

CheckEnvironment: ; 0000094E..0000096E
0000094E  4E 56 00 00                link.w     a6, #$0
00000952  4E BA FF 24                jsr        $878(pc)
00000956  4A 00                      tst.b      d0
00000958  66 0C                      bne.b      $966
0000095A  3F 3C 00 01                move.w     #$1, -(a7)
0000095E  4E B9 00 00 09 82          jsr        $982.l
00000964  54 4F                      addq.w     #$2, a7
00000966  4E BA FF 4E                jsr        $8b6(pc)
0000096A  4E 5E                      unlk       a6
0000096C  4E 75                      rts

; MacsBug symbol trailer for CheckEnvironment: 90 43 68 65 63 6B 45 6E 76 69 72 6F 6E 6D 65 6E 74

ErrorAlert: ; 00000982..000009D2
00000982  4E 56 FE 00                link.w     a6, #$fe00
00000986  2F 03                      move.l     d3, -(a7)
00000988  36 2E 00 08                move.w     $8(a6), d3
0000098C  48 6E FF 00                pea.l      -$100(a6)
00000990  3F 3C 00 80                move.w     #$80, -(a7)
00000994  3F 03                      move.w     d3, -(a7)
00000996  4E B9 00 00 00 48          jsr        $48.l
0000099C  30 43                      movea.w    d3, a0
0000099E  2F 08                      move.l     a0, -(a7)
000009A0  48 6E FE 00                pea.l      -$200(a6)
000009A4  4E B9 00 00 00 38          jsr        $38.l
000009AA  48 6E FF 00                pea.l      -$100(a6)
000009AE  48 6D FF FF                pea.l      -$1(a5)
000009B2  48 6D FF FF                pea.l      -$1(a5)
000009B6  48 6D FF FF                pea.l      -$1(a5)
000009BA  A9 8B                      .byte      0xa9, 0x8b
000009BC  55 4F                      subq.w     #$2, a7
000009BE  3F 3C 00 80                move.w     #$80, -(a7)
000009C2  42 A7                      clr.l      -(a7)
000009C4  A9 85                      .byte      0xa9, 0x85
000009C6  30 1F                      move.w     (a7)+, d0
000009C8  36 00                      move.w     d0, d3
000009CA  A9 F4                      .byte      0xa9, 0xf4
000009CC  26 1F                      move.l     (a7)+, d3
000009CE  4E 5E                      unlk       a6
000009D0  4E 75                      rts

; MacsBug symbol trailer for ErrorAlert: 8A 45 72 72 6F 72 41 6C 65 72 74

InitToolbox: ; 000009E0..00000A1E
000009E0  4E 56 00 00                link.w     a6, #$0
000009E4  48 6D CE B8                pea.l      -$3148(a5)
000009E8  A8 6E                      .byte      0xa8, 0x6e
000009EA  A8 FE                      .byte      0xa8, 0xfe
000009EC  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
000009F2  20 1F                      move.l     (a7)+, d0
000009F4  A0 32                      .byte      0xa0, 0x32
000009F6  A9 12                      .byte      0xa9, 0x12
000009F8  A9 30                      .byte      0xa9, 0x30
000009FA  A9 CC                      .byte      0xa9, 0xcc
000009FC  42 A7                      clr.l      -(a7)
000009FE  A9 7B                      .byte      0xa9, 0x7b
00000A00  A8 50                      .byte      0xa8, 0x50
00000A02  A0 63                      .byte      0xa0, 0x63
00000A04  A0 36                      .byte      0xa0, 0x36
00000A06  A0 36                      .byte      0xa0, 0x36
00000A08  A0 36                      .byte      0xa0, 0x36
00000A0A  A0 36                      .byte      0xa0, 0x36
00000A0C  A0 36                      .byte      0xa0, 0x36
00000A0E  41 ED CE 3A                lea.l      -$31c6(a5), a0
00000A12  20 B8 02 0C                move.l     $20c.w, (a0)
00000A16  4E BA FF 36                jsr        $94e(pc)
00000A1A  4E 5E                      unlk       a6
00000A1C  4E 75                      rts

; MacsBug symbol trailer for InitToolbox: 8B 49 6E 69 74 54 6F 6F 6C 62 6F 78

CreateOffScreenBitMap: ; 00000A2C..00000AC2
00000A2C  4E 56 FF F2                link.w     a6, #$fff2
00000A30  48 E7 10 30                movem.l    d3/a2-a3, -(a7)
00000A34  24 6E 00 08                movea.l    $8(a6), a2
00000A38  70 6C                      moveq      #$6c, d0
00000A3A  A1 1E                      .byte      0xa1, 0x1e
00000A3C  26 48                      movea.l    a0, a3
00000A3E  2F 0B                      move.l     a3, -(a7)
00000A40  A8 6F                      .byte      0xa8, 0x6f
00000A42  30 2A 00 06                move.w     $6(a2), d0
00000A46  90 6A 00 02                sub.w      $2(a2), d0
00000A4A  48 C0                      ext.l      d0
00000A4C  72 0F                      moveq      #$f, d1
00000A4E  D0 81                      add.l      d1, d0
00000A50  72 10                      moveq      #$10, d1
00000A52  4E B9 00 00 04 9C          jsr        $49c.l
00000A58  D0 80                      add.l      d0, d0
00000A5A  26 00                      move.l     d0, d3
00000A5C  3D 43 FF F6                move.w     d3, -$a(a6)
00000A60  30 2A 00 04                move.w     $4(a2), d0
00000A64  90 52                      sub.w      (a2), d0
00000A66  C1 EE FF F6                muls.w     -$a(a6), d0
00000A6A  A1 1E                      .byte      0xa1, 0x1e
00000A6C  2D 48 FF F2                move.l     a0, -$e(a6)
00000A70  4A AE FF F2                tst.l      -$e(a6)
00000A74  66 0C                      bne.b      $a82
00000A76  3F 3C 00 03                move.w     #$3, -(a7)
00000A7A  4E B9 00 00 08 1A          jsr        $81a.l
00000A80  54 4F                      addq.w     #$2, a7
00000A82  2D 52 FF F8                move.l     (a2), -$8(a6)
00000A86  2D 6A 00 04 FF FC          move.l     $4(a2), -$4(a6)
00000A8C  4A 78 02 20                tst.w      $220.w
00000A90  67 0C                      beq.b      $a9e
00000A92  3F 3C 00 03                move.w     #$3, -(a7)
00000A96  4E B9 00 00 08 1A          jsr        $81a.l
00000A9C  54 4F                      addq.w     #$2, a7
00000A9E  48 6E FF F2                pea.l      -$e(a6)
00000AA2  A8 75                      .byte      0xa8, 0x75
00000AA4  2F 0A                      move.l     a2, -(a7)
00000AA6  A8 7B                      .byte      0xa8, 0x7b
00000AA8  2F 2B 00 18                move.l     $18(a3), -(a7)
00000AAC  2F 0A                      move.l     a2, -(a7)
00000AAE  A8 DF                      .byte      0xa8, 0xdf
00000AB0  2F 0A                      move.l     a2, -(a7)
00000AB2  A8 A3                      .byte      0xa8, 0xa3
00000AB4  20 6E 00 0C                movea.l    $c(a6), a0
00000AB8  20 8B                      move.l     a3, (a0)
00000ABA  4C DF 0C 08                movem.l    (a7)+, d3/a2-a3
00000ABE  4E 5E                      unlk       a6
00000AC0  4E 75                      rts

; MacsBug symbol trailer for CreateOffScreenBitMap: 95 43 72 65 61 74 65 4F 66 66 53 63 72 65 65 6E 42 69 74 4D 61 70

CreateOffScreenPixMap: ; 00000ADA..00000C04
00000ADA  4E 56 FF FC                link.w     a6, #$fffc
00000ADE  48 E7 1C 38                movem.l    d3-d5/a2-a4, -(a7)
00000AE2  26 6E 00 08                movea.l    $8(a6), a3
00000AE6  59 4F                      subq.w     #$4, a7
00000AE8  AA 2A                      .byte      0xaa, 0x2a
00000AEA  20 5F                      movea.l    (a7)+, a0
00000AEC  2B 48 DE F0                move.l     a0, -$2110(a5)
00000AF0  59 4F                      subq.w     #$4, a7
00000AF2  AA 32                      .byte      0xaa, 0x32
00000AF4  20 5F                      movea.l    (a7)+, a0
00000AF6  28 08                      move.l     a0, d4
00000AF8  2F 2D DE F0                move.l     -$2110(a5), -(a7)
00000AFC  AA 31                      .byte      0xaa, 0x31
00000AFE  95 CA                      suba.l     a2, a2
00000B00  70 6C                      moveq      #$6c, d0
00000B02  A3 1E                      .byte      0xa3, 0x1e
00000B04  24 48                      movea.l    a0, a2
00000B06  20 0A                      move.l     a2, d0
00000B08  67 00 00 DC                beq.w      $be6
00000B0C  2F 0A                      move.l     a2, -(a7)
00000B0E  AA 00                      .byte      0xaa, 0x00
00000B10  20 6A 00 02                movea.l    $2(a2), a0
00000B14  20 50                      movea.l    (a0), a0
00000B16  3A 28 00 20                move.w     $20(a0), d5
00000B1A  36 2B 00 06                move.w     $6(a3), d3
00000B1E  96 6B 00 02                sub.w      $2(a3), d3
00000B22  C7 C5                      muls.w     d5, d3
00000B24  72 0F                      moveq      #$f, d1
00000B26  D6 81                      add.l      d1, d3
00000B28  E8 83                      asr.l      #$4, d3
00000B2A  D6 83                      add.l      d3, d3
00000B2C  30 2B 00 04                move.w     $4(a3), d0
00000B30  90 53                      sub.w      (a3), d0
00000B32  48 C0                      ext.l      d0
00000B34  22 03                      move.l     d3, d1
00000B36  4E B9 00 00 04 30          jsr        $430.l
00000B3C  2A 00                      move.l     d0, d5
00000B3E  2F 0B                      move.l     a3, -(a7)
00000B40  30 2B 00 02                move.w     $2(a3), d0
00000B44  44 40                      neg.w      d0
00000B46  3F 00                      move.w     d0, -(a7)
00000B48  30 13                      move.w     (a3), d0
00000B4A  44 40                      neg.w      d0
00000B4C  3F 00                      move.w     d0, -(a7)
00000B4E  A8 A8                      .byte      0xa8, 0xa8
00000B50  20 05                      move.l     d5, d0
00000B52  A1 1E                      .byte      0xa1, 0x1e
00000B54  28 48                      movea.l    a0, a4
00000B56  20 0C                      move.l     a4, d0
00000B58  67 74                      beq.b      $bce
00000B5A  20 6A 00 02                movea.l    $2(a2), a0
00000B5E  20 50                      movea.l    (a0), a0
00000B60  20 8C                      move.l     a4, (a0)
00000B62  30 03                      move.w     d3, d0
00000B64  06 40 80 00                addi.w     #$8000, d0
00000B68  20 6A 00 02                movea.l    $2(a2), a0
00000B6C  20 50                      movea.l    (a0), a0
00000B6E  31 40 00 04                move.w     d0, $4(a0)
00000B72  20 6A 00 02                movea.l    $2(a2), a0
00000B76  20 50                      movea.l    (a0), a0
00000B78  21 53 00 06                move.l     (a3), $6(a0)
00000B7C  21 6B 00 04 00 0A          move.l     $4(a3), $a(a0)
00000B82  20 6D DE F0                movea.l    -$2110(a5), a0
00000B86  20 50                      movea.l    (a0), a0
00000B88  20 68 00 16                movea.l    $16(a0), a0
00000B8C  20 50                      movea.l    (a0), a0
00000B8E  2D 68 00 2A FF FC          move.l     $2a(a0), -$4(a6)
00000B94  55 4F                      subq.w     #$2, a7
00000B96  48 6E FF FC                pea.l      -$4(a6)
00000B9A  4E B9 00 00 00 50          jsr        $50.l
00000BA0  30 1F                      move.w     (a7)+, d0
00000BA2  36 00                      move.w     d0, d3
00000BA4  20 6A 00 02                movea.l    $2(a2), a0
00000BA8  20 50                      movea.l    (a0), a0
00000BAA  21 6E FF FC 00 2A          move.l     -$4(a6), $2a(a0)
00000BB0  2F 0B                      move.l     a3, -(a7)
00000BB2  A8 7B                      .byte      0xa8, 0x7b
00000BB4  2F 2A 00 18                move.l     $18(a2), -(a7)
00000BB8  2F 0B                      move.l     a3, -(a7)
00000BBA  A8 DF                      .byte      0xa8, 0xdf
00000BBC  48 78 00 21                pea.l      $21.w
00000BC0  A8 62                      .byte      0xa8, 0x62
00000BC2  48 78 00 1E                pea.l      $1e.w
00000BC6  A8 63                      .byte      0xa8, 0x63
00000BC8  2F 0B                      move.l     a3, -(a7)
00000BCA  A8 A3                      .byte      0xa8, 0xa3
00000BCC  60 24                      bra.b      $bf2
00000BCE  2F 0A                      move.l     a2, -(a7)
00000BD0  A8 7D                      .byte      0xa8, 0x7d
00000BD2  20 4A                      movea.l    a2, a0
00000BD4  A0 1F                      .byte      0xa0, 0x1f
00000BD6  95 CA                      suba.l     a2, a2
00000BD8  3F 3C 00 03                move.w     #$3, -(a7)
00000BDC  4E B9 00 00 08 1A          jsr        $81a.l
00000BE2  54 4F                      addq.w     #$2, a7
00000BE4  60 0C                      bra.b      $bf2
00000BE6  3F 3C 00 03                move.w     #$3, -(a7)
00000BEA  4E B9 00 00 08 1A          jsr        $81a.l
00000BF0  54 4F                      addq.w     #$2, a7
00000BF2  20 6E 00 0C                movea.l    $c(a6), a0
00000BF6  20 8A                      move.l     a2, (a0)
00000BF8  2F 04                      move.l     d4, -(a7)
00000BFA  AA 31                      .byte      0xaa, 0x31
00000BFC  4C DF 1C 38                movem.l    (a7)+, d3-d5/a2-a4
00000C00  4E 5E                      unlk       a6
00000C02  4E 75                      rts

; MacsBug symbol trailer for CreateOffScreenPixMap: 95 43 72 65 61 74 65 4F 66 66 53 63 72 65 65 6E 50 69 78 4D 61 70

LoadGraphic: ; 00000C1C..00000C7C
00000C1C  4E 56 FF F8                link.w     a6, #$fff8
00000C20  2F 0A                      move.l     a2, -(a7)
00000C22  59 4F                      subq.w     #$4, a7
00000C24  3F 2E 00 08                move.w     $8(a6), -(a7)
00000C28  A9 BC                      .byte      0xa9, 0xbc
00000C2A  20 5F                      movea.l    (a7)+, a0
00000C2C  24 48                      movea.l    a0, a2
00000C2E  20 0A                      move.l     a2, d0
00000C30  66 0C                      bne.b      $c3e
00000C32  3F 3C 00 04                move.w     #$4, -(a7)
00000C36  4E B9 00 00 08 1A          jsr        $81a.l
00000C3C  54 4F                      addq.w     #$2, a7
00000C3E  20 4A                      movea.l    a2, a0
00000C40  A0 29                      .byte      0xa0, 0x29
00000C42  20 52                      movea.l    (a2), a0
00000C44  2D 68 00 02 FF F8          move.l     $2(a0), -$8(a6)
00000C4A  2D 68 00 06 FF FC          move.l     $6(a0), -$4(a6)
00000C50  20 4A                      movea.l    a2, a0
00000C52  A0 2A                      .byte      0xa0, 0x2a
00000C54  48 6E FF F8                pea.l      -$8(a6)
00000C58  30 2E FF FA                move.w     -$6(a6), d0
00000C5C  44 40                      neg.w      d0
00000C5E  3F 00                      move.w     d0, -(a7)
00000C60  30 2E FF F8                move.w     -$8(a6), d0
00000C64  44 40                      neg.w      d0
00000C66  3F 00                      move.w     d0, -(a7)
00000C68  A8 A8                      .byte      0xa8, 0xa8
00000C6A  2F 0A                      move.l     a2, -(a7)
00000C6C  48 6E FF F8                pea.l      -$8(a6)
00000C70  A8 F6                      .byte      0xa8, 0xf6
00000C72  2F 0A                      move.l     a2, -(a7)
00000C74  A9 A3                      .byte      0xa9, 0xa3
00000C76  24 5F                      movea.l    (a7)+, a2
00000C78  4E 5E                      unlk       a6
00000C7A  4E 75                      rts

; MacsBug symbol trailer for LoadGraphic: 8B 4C 6F 61 64 47 72 61 70 68 69 63

Words: ; 00000C8A..000013DE
00000C8A  4E 56 FF C6                link.w     a6, #$ffc6
00000C8E  48 E7 1F 00                movem.l    d3-d7, -(a7)
00000C92  3E 2E 00 0C                move.w     $c(a6), d7
00000C96  38 2E 00 0E                move.w     $e(a6), d4
00000C9A  3C 2E 00 10                move.w     $10(a6), d6
00000C9E  3D 47 FF C8                move.w     d7, -$38(a6)
00000CA2  3D 44 FF C6                move.w     d4, -$3a(a6)
00000CA6  30 04                      move.w     d4, d0
00000CA8  D0 46                      add.w      d6, d0
00000CAA  3D 40 FF CA                move.w     d0, -$36(a6)
00000CAE  2F 2E 00 08                move.l     $8(a6), -(a7)
00000CB2  48 6E FF CE                pea.l      -$32(a6)
00000CB6  4E B9 00 00 00 28          jsr        $28.l
00000CBC  48 6E FF CE                pea.l      -$32(a6)
00000CC0  4E B9 00 00 00 30          jsr        $30.l
00000CC6  3A 00                      move.w     d0, d5
00000CC8  48 6D DE F4                pea.l      -$210c(a5)
00000CCC  3F 07                      move.w     d7, -(a7)
00000CCE  3F 04                      move.w     d4, -(a7)
00000CD0  42 67                      clr.w      -(a7)
00000CD2  30 04                      move.w     d4, d0
00000CD4  D0 46                      add.w      d6, d0
00000CD6  3F 00                      move.w     d0, -(a7)
00000CD8  A8 A7                      .byte      0xa8, 0xa7
00000CDA  78 00                      moveq      #$0, d4
00000CDC  4F EF 00 0C                lea.l      $c(a7), a7
00000CE0  60 00 06 C4                bra.w      $13a6
00000CE4  41 EE FF CE                lea.l      -$32(a6), a0
00000CE8  10 30 40 00                move.b     (a0, d4.w), d0
00000CEC  48 80                      ext.w      d0
00000CEE  04 40 00 20                subi.w     #$20, d0
00000CF2  67 00 00 B2                beq.w      $da6
00000CF6  04 40 00 0C                subi.w     #$c, d0
00000CFA  67 00 00 C4                beq.w      $dc0
00000CFE  55 40                      subq.w     #$2, d0
00000D00  67 00 00 F4                beq.w      $df6
00000D04  04 40 00 33                subi.w     #$33, d0
00000D08  67 00 01 22                beq.w      $e2c
00000D0C  53 40                      subq.w     #$1, d0
00000D0E  67 00 01 52                beq.w      $e62
00000D12  53 40                      subq.w     #$1, d0
00000D14  67 00 01 82                beq.w      $e98
00000D18  53 40                      subq.w     #$1, d0
00000D1A  67 00 01 B2                beq.w      $ece
00000D1E  53 40                      subq.w     #$1, d0
00000D20  67 00 01 E2                beq.w      $f04
00000D24  53 40                      subq.w     #$1, d0
00000D26  67 00 02 12                beq.w      $f3a
00000D2A  53 40                      subq.w     #$1, d0
00000D2C  67 00 02 42                beq.w      $f70
00000D30  53 40                      subq.w     #$1, d0
00000D32  67 00 02 72                beq.w      $fa6
00000D36  53 40                      subq.w     #$1, d0
00000D38  67 00 02 A2                beq.w      $fdc
00000D3C  53 40                      subq.w     #$1, d0
00000D3E  67 00 02 D2                beq.w      $1012
00000D42  53 40                      subq.w     #$1, d0
00000D44  67 00 03 02                beq.w      $1048
00000D48  53 40                      subq.w     #$1, d0
00000D4A  67 00 03 32                beq.w      $107e
00000D4E  53 40                      subq.w     #$1, d0
00000D50  67 00 03 62                beq.w      $10b4
00000D54  53 40                      subq.w     #$1, d0
00000D56  67 00 03 92                beq.w      $10ea
00000D5A  53 40                      subq.w     #$1, d0
00000D5C  67 00 03 C2                beq.w      $1120
00000D60  53 40                      subq.w     #$1, d0
00000D62  67 00 03 F2                beq.w      $1156
00000D66  53 40                      subq.w     #$1, d0
00000D68  67 00 04 22                beq.w      $118c
00000D6C  53 40                      subq.w     #$1, d0
00000D6E  67 00 04 52                beq.w      $11c2
00000D72  53 40                      subq.w     #$1, d0
00000D74  67 00 04 82                beq.w      $11f8
00000D78  53 40                      subq.w     #$1, d0
00000D7A  67 00 04 B2                beq.w      $122e
00000D7E  53 40                      subq.w     #$1, d0
00000D80  67 00 04 E2                beq.w      $1264
00000D84  53 40                      subq.w     #$1, d0
00000D86  67 00 05 12                beq.w      $129a
00000D8A  53 40                      subq.w     #$1, d0
00000D8C  67 00 05 42                beq.w      $12d0
00000D90  53 40                      subq.w     #$1, d0
00000D92  67 00 05 72                beq.w      $1306
00000D96  53 40                      subq.w     #$1, d0
00000D98  67 00 05 A0                beq.w      $133a
00000D9C  53 40                      subq.w     #$1, d0
00000D9E  67 00 05 CE                beq.w      $136e
00000DA2  60 00 05 FC                bra.w      $13a0
00000DA6  76 08                      moveq      #$8, d3
00000DA8  30 2D DE F6                move.w     -$210a(a5), d0
00000DAC  D0 43                      add.w      d3, d0
00000DAE  3B 40 DE FA                move.w     d0, -$2106(a5)
00000DB2  30 2D DE F6                move.w     -$210a(a5), d0
00000DB6  D0 43                      add.w      d3, d0
00000DB8  3B 40 DE FA                move.w     d0, -$2106(a5)
00000DBC  60 00 05 E2                bra.w      $13a0
00000DC0  76 06                      moveq      #$6, d3
00000DC2  30 2D DE F6                move.w     -$210a(a5), d0
00000DC6  D0 43                      add.w      d3, d0
00000DC8  3B 40 DE FA                move.w     d0, -$2106(a5)
00000DCC  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000DD0  48 68 00 02                pea.l      $2(a0)
00000DD4  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000DD8  48 68 00 02                pea.l      $2(a0)
00000DDC  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000DE0  48 68 00 02                pea.l      $2(a0)
00000DE4  48 6D D5 A6                pea.l      -$2a5a(a5)
00000DE8  48 6D D5 A6                pea.l      -$2a5a(a5)
00000DEC  48 6D DE F4                pea.l      -$210c(a5)
00000DF0  A8 17                      .byte      0xa8, 0x17
00000DF2  60 00 05 AC                bra.w      $13a0
00000DF6  76 05                      moveq      #$5, d3
00000DF8  30 2D DE F6                move.w     -$210a(a5), d0
00000DFC  D0 43                      add.w      d3, d0
00000DFE  3B 40 DE FA                move.w     d0, -$2106(a5)
00000E02  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000E06  48 68 00 02                pea.l      $2(a0)
00000E0A  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000E0E  48 68 00 02                pea.l      $2(a0)
00000E12  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000E16  48 68 00 02                pea.l      $2(a0)
00000E1A  48 6D D5 9E                pea.l      -$2a62(a5)
00000E1E  48 6D D5 9E                pea.l      -$2a62(a5)
00000E22  48 6D DE F4                pea.l      -$210c(a5)
00000E26  A8 17                      .byte      0xa8, 0x17
00000E28  60 00 05 76                bra.w      $13a0
00000E2C  76 0E                      moveq      #$e, d3
00000E2E  30 2D DE F6                move.w     -$210a(a5), d0
00000E32  D0 43                      add.w      d3, d0
00000E34  3B 40 DE FA                move.w     d0, -$2106(a5)
00000E38  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000E3C  48 68 00 02                pea.l      $2(a0)
00000E40  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000E44  48 68 00 02                pea.l      $2(a0)
00000E48  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000E4C  48 68 00 02                pea.l      $2(a0)
00000E50  48 6D D6 76                pea.l      -$298a(a5)
00000E54  48 6D D6 76                pea.l      -$298a(a5)
00000E58  48 6D DE F4                pea.l      -$210c(a5)
00000E5C  A8 17                      .byte      0xa8, 0x17
00000E5E  60 00 05 40                bra.w      $13a0
00000E62  76 0C                      moveq      #$c, d3
00000E64  30 2D DE F6                move.w     -$210a(a5), d0
00000E68  D0 43                      add.w      d3, d0
00000E6A  3B 40 DE FA                move.w     d0, -$2106(a5)
00000E6E  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000E72  48 68 00 02                pea.l      $2(a0)
00000E76  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000E7A  48 68 00 02                pea.l      $2(a0)
00000E7E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000E82  48 68 00 02                pea.l      $2(a0)
00000E86  48 6D D6 6E                pea.l      -$2992(a5)
00000E8A  48 6D D6 6E                pea.l      -$2992(a5)
00000E8E  48 6D DE F4                pea.l      -$210c(a5)
00000E92  A8 17                      .byte      0xa8, 0x17
00000E94  60 00 05 0A                bra.w      $13a0
00000E98  76 0E                      moveq      #$e, d3
00000E9A  30 2D DE F6                move.w     -$210a(a5), d0
00000E9E  D0 43                      add.w      d3, d0
00000EA0  3B 40 DE FA                move.w     d0, -$2106(a5)
00000EA4  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000EA8  48 68 00 02                pea.l      $2(a0)
00000EAC  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000EB0  48 68 00 02                pea.l      $2(a0)
00000EB4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000EB8  48 68 00 02                pea.l      $2(a0)
00000EBC  48 6D D6 66                pea.l      -$299a(a5)
00000EC0  48 6D D6 66                pea.l      -$299a(a5)
00000EC4  48 6D DE F4                pea.l      -$210c(a5)
00000EC8  A8 17                      .byte      0xa8, 0x17
00000ECA  60 00 04 D4                bra.w      $13a0
00000ECE  76 0E                      moveq      #$e, d3
00000ED0  30 2D DE F6                move.w     -$210a(a5), d0
00000ED4  D0 43                      add.w      d3, d0
00000ED6  3B 40 DE FA                move.w     d0, -$2106(a5)
00000EDA  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000EDE  48 68 00 02                pea.l      $2(a0)
00000EE2  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000EE6  48 68 00 02                pea.l      $2(a0)
00000EEA  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000EEE  48 68 00 02                pea.l      $2(a0)
00000EF2  48 6D D6 5E                pea.l      -$29a2(a5)
00000EF6  48 6D D6 5E                pea.l      -$29a2(a5)
00000EFA  48 6D DE F4                pea.l      -$210c(a5)
00000EFE  A8 17                      .byte      0xa8, 0x17
00000F00  60 00 04 9E                bra.w      $13a0
00000F04  76 0B                      moveq      #$b, d3
00000F06  30 2D DE F6                move.w     -$210a(a5), d0
00000F0A  D0 43                      add.w      d3, d0
00000F0C  3B 40 DE FA                move.w     d0, -$2106(a5)
00000F10  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000F14  48 68 00 02                pea.l      $2(a0)
00000F18  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000F1C  48 68 00 02                pea.l      $2(a0)
00000F20  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000F24  48 68 00 02                pea.l      $2(a0)
00000F28  48 6D D6 56                pea.l      -$29aa(a5)
00000F2C  48 6D D6 56                pea.l      -$29aa(a5)
00000F30  48 6D DE F4                pea.l      -$210c(a5)
00000F34  A8 17                      .byte      0xa8, 0x17
00000F36  60 00 04 68                bra.w      $13a0
00000F3A  76 0B                      moveq      #$b, d3
00000F3C  30 2D DE F6                move.w     -$210a(a5), d0
00000F40  D0 43                      add.w      d3, d0
00000F42  3B 40 DE FA                move.w     d0, -$2106(a5)
00000F46  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000F4A  48 68 00 02                pea.l      $2(a0)
00000F4E  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000F52  48 68 00 02                pea.l      $2(a0)
00000F56  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000F5A  48 68 00 02                pea.l      $2(a0)
00000F5E  48 6D D6 4E                pea.l      -$29b2(a5)
00000F62  48 6D D6 4E                pea.l      -$29b2(a5)
00000F66  48 6D DE F4                pea.l      -$210c(a5)
00000F6A  A8 17                      .byte      0xa8, 0x17
00000F6C  60 00 04 32                bra.w      $13a0
00000F70  76 0F                      moveq      #$f, d3
00000F72  30 2D DE F6                move.w     -$210a(a5), d0
00000F76  D0 43                      add.w      d3, d0
00000F78  3B 40 DE FA                move.w     d0, -$2106(a5)
00000F7C  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000F80  48 68 00 02                pea.l      $2(a0)
00000F84  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000F88  48 68 00 02                pea.l      $2(a0)
00000F8C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000F90  48 68 00 02                pea.l      $2(a0)
00000F94  48 6D D6 46                pea.l      -$29ba(a5)
00000F98  48 6D D6 46                pea.l      -$29ba(a5)
00000F9C  48 6D DE F4                pea.l      -$210c(a5)
00000FA0  A8 17                      .byte      0xa8, 0x17
00000FA2  60 00 03 FC                bra.w      $13a0
00000FA6  76 0D                      moveq      #$d, d3
00000FA8  30 2D DE F6                move.w     -$210a(a5), d0
00000FAC  D0 43                      add.w      d3, d0
00000FAE  3B 40 DE FA                move.w     d0, -$2106(a5)
00000FB2  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000FB6  48 68 00 02                pea.l      $2(a0)
00000FBA  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000FBE  48 68 00 02                pea.l      $2(a0)
00000FC2  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000FC6  48 68 00 02                pea.l      $2(a0)
00000FCA  48 6D D6 3E                pea.l      -$29c2(a5)
00000FCE  48 6D D6 3E                pea.l      -$29c2(a5)
00000FD2  48 6D DE F4                pea.l      -$210c(a5)
00000FD6  A8 17                      .byte      0xa8, 0x17
00000FD8  60 00 03 C6                bra.w      $13a0
00000FDC  76 06                      moveq      #$6, d3
00000FDE  30 2D DE F6                move.w     -$210a(a5), d0
00000FE2  D0 43                      add.w      d3, d0
00000FE4  3B 40 DE FA                move.w     d0, -$2106(a5)
00000FE8  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000FEC  48 68 00 02                pea.l      $2(a0)
00000FF0  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000FF4  48 68 00 02                pea.l      $2(a0)
00000FF8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000FFC  48 68 00 02                pea.l      $2(a0)
00001000  48 6D D6 36                pea.l      -$29ca(a5)
00001004  48 6D D6 36                pea.l      -$29ca(a5)
00001008  48 6D DE F4                pea.l      -$210c(a5)
0000100C  A8 17                      .byte      0xa8, 0x17
0000100E  60 00 03 90                bra.w      $13a0
00001012  76 0A                      moveq      #$a, d3
00001014  30 2D DE F6                move.w     -$210a(a5), d0
00001018  D0 43                      add.w      d3, d0
0000101A  3B 40 DE FA                move.w     d0, -$2106(a5)
0000101E  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001022  48 68 00 02                pea.l      $2(a0)
00001026  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000102A  48 68 00 02                pea.l      $2(a0)
0000102E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001032  48 68 00 02                pea.l      $2(a0)
00001036  48 6D D6 2E                pea.l      -$29d2(a5)
0000103A  48 6D D6 2E                pea.l      -$29d2(a5)
0000103E  48 6D DE F4                pea.l      -$210c(a5)
00001042  A8 17                      .byte      0xa8, 0x17
00001044  60 00 03 5A                bra.w      $13a0
00001048  76 0E                      moveq      #$e, d3
0000104A  30 2D DE F6                move.w     -$210a(a5), d0
0000104E  D0 43                      add.w      d3, d0
00001050  3B 40 DE FA                move.w     d0, -$2106(a5)
00001054  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001058  48 68 00 02                pea.l      $2(a0)
0000105C  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001060  48 68 00 02                pea.l      $2(a0)
00001064  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001068  48 68 00 02                pea.l      $2(a0)
0000106C  48 6D D6 26                pea.l      -$29da(a5)
00001070  48 6D D6 26                pea.l      -$29da(a5)
00001074  48 6D DE F4                pea.l      -$210c(a5)
00001078  A8 17                      .byte      0xa8, 0x17
0000107A  60 00 03 24                bra.w      $13a0
0000107E  76 0A                      moveq      #$a, d3
00001080  30 2D DE F6                move.w     -$210a(a5), d0
00001084  D0 43                      add.w      d3, d0
00001086  3B 40 DE FA                move.w     d0, -$2106(a5)
0000108A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000108E  48 68 00 02                pea.l      $2(a0)
00001092  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001096  48 68 00 02                pea.l      $2(a0)
0000109A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000109E  48 68 00 02                pea.l      $2(a0)
000010A2  48 6D D6 1E                pea.l      -$29e2(a5)
000010A6  48 6D D6 1E                pea.l      -$29e2(a5)
000010AA  48 6D DE F4                pea.l      -$210c(a5)
000010AE  A8 17                      .byte      0xa8, 0x17
000010B0  60 00 02 EE                bra.w      $13a0
000010B4  76 12                      moveq      #$12, d3
000010B6  30 2D DE F6                move.w     -$210a(a5), d0
000010BA  D0 43                      add.w      d3, d0
000010BC  3B 40 DE FA                move.w     d0, -$2106(a5)
000010C0  20 6D D3 EE                movea.l    -$2c12(a5), a0
000010C4  48 68 00 02                pea.l      $2(a0)
000010C8  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000010CC  48 68 00 02                pea.l      $2(a0)
000010D0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000010D4  48 68 00 02                pea.l      $2(a0)
000010D8  48 6D D6 16                pea.l      -$29ea(a5)
000010DC  48 6D D6 16                pea.l      -$29ea(a5)
000010E0  48 6D DE F4                pea.l      -$210c(a5)
000010E4  A8 17                      .byte      0xa8, 0x17
000010E6  60 00 02 B8                bra.w      $13a0
000010EA  76 0D                      moveq      #$d, d3
000010EC  30 2D DE F6                move.w     -$210a(a5), d0
000010F0  D0 43                      add.w      d3, d0
000010F2  3B 40 DE FA                move.w     d0, -$2106(a5)
000010F6  20 6D D3 EE                movea.l    -$2c12(a5), a0
000010FA  48 68 00 02                pea.l      $2(a0)
000010FE  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001102  48 68 00 02                pea.l      $2(a0)
00001106  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000110A  48 68 00 02                pea.l      $2(a0)
0000110E  48 6D D6 0E                pea.l      -$29f2(a5)
00001112  48 6D D6 0E                pea.l      -$29f2(a5)
00001116  48 6D DE F4                pea.l      -$210c(a5)
0000111A  A8 17                      .byte      0xa8, 0x17
0000111C  60 00 02 82                bra.w      $13a0
00001120  76 0F                      moveq      #$f, d3
00001122  30 2D DE F6                move.w     -$210a(a5), d0
00001126  D0 43                      add.w      d3, d0
00001128  3B 40 DE FA                move.w     d0, -$2106(a5)
0000112C  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001130  48 68 00 02                pea.l      $2(a0)
00001134  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001138  48 68 00 02                pea.l      $2(a0)
0000113C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001140  48 68 00 02                pea.l      $2(a0)
00001144  48 6D D6 06                pea.l      -$29fa(a5)
00001148  48 6D D6 06                pea.l      -$29fa(a5)
0000114C  48 6D DE F4                pea.l      -$210c(a5)
00001150  A8 17                      .byte      0xa8, 0x17
00001152  60 00 02 4C                bra.w      $13a0
00001156  76 0B                      moveq      #$b, d3
00001158  30 2D DE F6                move.w     -$210a(a5), d0
0000115C  D0 43                      add.w      d3, d0
0000115E  3B 40 DE FA                move.w     d0, -$2106(a5)
00001162  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001166  48 68 00 02                pea.l      $2(a0)
0000116A  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000116E  48 68 00 02                pea.l      $2(a0)
00001172  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001176  48 68 00 02                pea.l      $2(a0)
0000117A  48 6D D5 FE                pea.l      -$2a02(a5)
0000117E  48 6D D5 FE                pea.l      -$2a02(a5)
00001182  48 6D DE F4                pea.l      -$210c(a5)
00001186  A8 17                      .byte      0xa8, 0x17
00001188  60 00 02 16                bra.w      $13a0
0000118C  76 0F                      moveq      #$f, d3
0000118E  30 2D DE F6                move.w     -$210a(a5), d0
00001192  D0 43                      add.w      d3, d0
00001194  3B 40 DE FA                move.w     d0, -$2106(a5)
00001198  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000119C  48 68 00 02                pea.l      $2(a0)
000011A0  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000011A4  48 68 00 02                pea.l      $2(a0)
000011A8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000011AC  48 68 00 02                pea.l      $2(a0)
000011B0  48 6D D5 F6                pea.l      -$2a0a(a5)
000011B4  48 6D D5 F6                pea.l      -$2a0a(a5)
000011B8  48 6D DE F4                pea.l      -$210c(a5)
000011BC  A8 17                      .byte      0xa8, 0x17
000011BE  60 00 01 E0                bra.w      $13a0
000011C2  76 0C                      moveq      #$c, d3
000011C4  30 2D DE F6                move.w     -$210a(a5), d0
000011C8  D0 43                      add.w      d3, d0
000011CA  3B 40 DE FA                move.w     d0, -$2106(a5)
000011CE  20 6D D3 EE                movea.l    -$2c12(a5), a0
000011D2  48 68 00 02                pea.l      $2(a0)
000011D6  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000011DA  48 68 00 02                pea.l      $2(a0)
000011DE  20 6D D3 FE                movea.l    -$2c02(a5), a0
000011E2  48 68 00 02                pea.l      $2(a0)
000011E6  48 6D D5 EE                pea.l      -$2a12(a5)
000011EA  48 6D D5 EE                pea.l      -$2a12(a5)
000011EE  48 6D DE F4                pea.l      -$210c(a5)
000011F2  A8 17                      .byte      0xa8, 0x17
000011F4  60 00 01 AA                bra.w      $13a0
000011F8  76 0C                      moveq      #$c, d3
000011FA  30 2D DE F6                move.w     -$210a(a5), d0
000011FE  D0 43                      add.w      d3, d0
00001200  3B 40 DE FA                move.w     d0, -$2106(a5)
00001204  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001208  48 68 00 02                pea.l      $2(a0)
0000120C  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001210  48 68 00 02                pea.l      $2(a0)
00001214  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001218  48 68 00 02                pea.l      $2(a0)
0000121C  48 6D D5 E6                pea.l      -$2a1a(a5)
00001220  48 6D D5 E6                pea.l      -$2a1a(a5)
00001224  48 6D DE F4                pea.l      -$210c(a5)
00001228  A8 17                      .byte      0xa8, 0x17
0000122A  60 00 01 74                bra.w      $13a0
0000122E  76 0C                      moveq      #$c, d3
00001230  30 2D DE F6                move.w     -$210a(a5), d0
00001234  D0 43                      add.w      d3, d0
00001236  3B 40 DE FA                move.w     d0, -$2106(a5)
0000123A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000123E  48 68 00 02                pea.l      $2(a0)
00001242  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001246  48 68 00 02                pea.l      $2(a0)
0000124A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000124E  48 68 00 02                pea.l      $2(a0)
00001252  48 6D D5 DE                pea.l      -$2a22(a5)
00001256  48 6D D5 DE                pea.l      -$2a22(a5)
0000125A  48 6D DE F4                pea.l      -$210c(a5)
0000125E  A8 17                      .byte      0xa8, 0x17
00001260  60 00 01 3E                bra.w      $13a0
00001264  76 0E                      moveq      #$e, d3
00001266  30 2D DE F6                move.w     -$210a(a5), d0
0000126A  D0 43                      add.w      d3, d0
0000126C  3B 40 DE FA                move.w     d0, -$2106(a5)
00001270  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001274  48 68 00 02                pea.l      $2(a0)
00001278  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000127C  48 68 00 02                pea.l      $2(a0)
00001280  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001284  48 68 00 02                pea.l      $2(a0)
00001288  48 6D D5 D6                pea.l      -$2a2a(a5)
0000128C  48 6D D5 D6                pea.l      -$2a2a(a5)
00001290  48 6D DE F4                pea.l      -$210c(a5)
00001294  A8 17                      .byte      0xa8, 0x17
00001296  60 00 01 08                bra.w      $13a0
0000129A  76 0E                      moveq      #$e, d3
0000129C  30 2D DE F6                move.w     -$210a(a5), d0
000012A0  D0 43                      add.w      d3, d0
000012A2  3B 40 DE FA                move.w     d0, -$2106(a5)
000012A6  20 6D D3 EE                movea.l    -$2c12(a5), a0
000012AA  48 68 00 02                pea.l      $2(a0)
000012AE  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000012B2  48 68 00 02                pea.l      $2(a0)
000012B6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000012BA  48 68 00 02                pea.l      $2(a0)
000012BE  48 6D D5 CE                pea.l      -$2a32(a5)
000012C2  48 6D D5 CE                pea.l      -$2a32(a5)
000012C6  48 6D DE F4                pea.l      -$210c(a5)
000012CA  A8 17                      .byte      0xa8, 0x17
000012CC  60 00 00 D2                bra.w      $13a0
000012D0  76 14                      moveq      #$14, d3
000012D2  30 2D DE F6                move.w     -$210a(a5), d0
000012D6  D0 43                      add.w      d3, d0
000012D8  3B 40 DE FA                move.w     d0, -$2106(a5)
000012DC  20 6D D3 EE                movea.l    -$2c12(a5), a0
000012E0  48 68 00 02                pea.l      $2(a0)
000012E4  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000012E8  48 68 00 02                pea.l      $2(a0)
000012EC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000012F0  48 68 00 02                pea.l      $2(a0)
000012F4  48 6D D5 C6                pea.l      -$2a3a(a5)
000012F8  48 6D D5 C6                pea.l      -$2a3a(a5)
000012FC  48 6D DE F4                pea.l      -$210c(a5)
00001300  A8 17                      .byte      0xa8, 0x17
00001302  60 00 00 9C                bra.w      $13a0
00001306  76 0E                      moveq      #$e, d3
00001308  30 2D DE F6                move.w     -$210a(a5), d0
0000130C  D0 43                      add.w      d3, d0
0000130E  3B 40 DE FA                move.w     d0, -$2106(a5)
00001312  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001316  48 68 00 02                pea.l      $2(a0)
0000131A  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000131E  48 68 00 02                pea.l      $2(a0)
00001322  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001326  48 68 00 02                pea.l      $2(a0)
0000132A  48 6D D5 BE                pea.l      -$2a42(a5)
0000132E  48 6D D5 BE                pea.l      -$2a42(a5)
00001332  48 6D DE F4                pea.l      -$210c(a5)
00001336  A8 17                      .byte      0xa8, 0x17
00001338  60 66                      bra.b      $13a0
0000133A  76 0E                      moveq      #$e, d3
0000133C  30 2D DE F6                move.w     -$210a(a5), d0
00001340  D0 43                      add.w      d3, d0
00001342  3B 40 DE FA                move.w     d0, -$2106(a5)
00001346  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000134A  48 68 00 02                pea.l      $2(a0)
0000134E  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001352  48 68 00 02                pea.l      $2(a0)
00001356  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000135A  48 68 00 02                pea.l      $2(a0)
0000135E  48 6D D5 B6                pea.l      -$2a4a(a5)
00001362  48 6D D5 B6                pea.l      -$2a4a(a5)
00001366  48 6D DE F4                pea.l      -$210c(a5)
0000136A  A8 17                      .byte      0xa8, 0x17
0000136C  60 32                      bra.b      $13a0
0000136E  76 0C                      moveq      #$c, d3
00001370  30 2D DE F6                move.w     -$210a(a5), d0
00001374  D0 43                      add.w      d3, d0
00001376  3B 40 DE FA                move.w     d0, -$2106(a5)
0000137A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000137E  48 68 00 02                pea.l      $2(a0)
00001382  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00001386  48 68 00 02                pea.l      $2(a0)
0000138A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000138E  48 68 00 02                pea.l      $2(a0)
00001392  48 6D D5 AE                pea.l      -$2a52(a5)
00001396  48 6D D5 AE                pea.l      -$2a52(a5)
0000139A  48 6D DE F4                pea.l      -$210c(a5)
0000139E  A8 17                      .byte      0xa8, 0x17
000013A0  D7 6D DE F6                add.w      d3, -$210a(a5)
000013A4  52 44                      addq.w     #$1, d4
000013A6  B8 45                      cmp.w      d5, d4
000013A8  6D 00 F9 3A                blt.w      $ce4
000013AC  3D 6D DE FA FF CC          move.w     -$2106(a5), -$34(a6)
000013B2  20 6D D3 FE                movea.l    -$2c02(a5), a0
000013B6  48 68 00 02                pea.l      $2(a0)
000013BA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000013BE  48 68 00 02                pea.l      $2(a0)
000013C2  48 6E FF C6                pea.l      -$3a(a6)
000013C6  48 6E FF C6                pea.l      -$3a(a6)
000013CA  42 67                      clr.w      -(a7)
000013CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000013D0  2F 28 00 18                move.l     $18(a0), -(a7)
000013D4  A8 EC                      .byte      0xa8, 0xec
000013D6  4C DF 00 F8                movem.l    (a7)+, d3-d7
000013DA  4E 5E                      unlk       a6
000013DC  4E 75                      rts

; MacsBug symbol trailer for Words: 85 57 6F 72 64 73

