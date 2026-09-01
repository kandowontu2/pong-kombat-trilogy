; CODE 2 — GENERIC SPRITES
; resource size: 8214 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 05 28 00 0E 00 00 05 28

HandleBall: ; 00000008..00000386
00000008  4E 56 FF F8                link.w     a6, #$fff8
0000000C  2B 6D DC AE DC B6          move.l     -$2352(a5), -$234a(a5)
00000012  2B 6D DC B2 DC BA          move.l     -$234e(a5), -$2346(a5)
00000018  48 6D DC AE                pea.l      -$2352(a5)
0000001C  3F 2D DD 0E                move.w     -$22f2(a5), -(a7)
00000020  3F 2D DD 10                move.w     -$22f0(a5), -(a7)
00000024  A8 A8                      .byte      0xa8, 0xa8
00000026  0C 6D 01 B0 DC B2          cmpi.w     #$1b0, -$234e(a5)
0000002C  6F 00 00 9E                ble.w      $cc
00000030  0C 6D 00 09 D4 1C          cmpi.w     #$9, -$2be4(a5)
00000036  66 4C                      bne.b      $84
00000038  55 4F                      subq.w     #$2, a7
0000003A  A8 61                      .byte      0xa8, 0x61
0000003C  30 1F                      move.w     (a7)+, d0
0000003E  02 40 7F FF                andi.w     #$7fff, d0
00000042  48 C0                      ext.l      d0
00000044  81 FC 00 06                divs.w     #$6, d0
00000048  48 40                      swap       d0
0000004A  52 40                      addq.w     #$1, d0
0000004C  4A 40                      tst.w      d0
0000004E  6E 18                      bgt.b      $68
00000050  55 4F                      subq.w     #$2, a7
00000052  A8 61                      .byte      0xa8, 0x61
00000054  30 1F                      move.w     (a7)+, d0
00000056  02 40 7F FF                andi.w     #$7fff, d0
0000005A  44 40                      neg.w      d0
0000005C  48 C0                      ext.l      d0
0000005E  81 FC 00 06                divs.w     #$6, d0
00000062  48 40                      swap       d0
00000064  52 40                      addq.w     #$1, d0
00000066  60 14                      bra.b      $7c
00000068  55 4F                      subq.w     #$2, a7
0000006A  A8 61                      .byte      0xa8, 0x61
0000006C  30 1F                      move.w     (a7)+, d0
0000006E  02 40 7F FF                andi.w     #$7fff, d0
00000072  48 C0                      ext.l      d0
00000074  81 FC 00 06                divs.w     #$6, d0
00000078  48 40                      swap       d0
0000007A  52 40                      addq.w     #$1, d0
0000007C  44 40                      neg.w      d0
0000007E  3B 40 DD 10                move.w     d0, -$22f0(a5)
00000082  60 3C                      bra.b      $c0
00000084  0C 6D 00 0E D4 1C          cmpi.w     #$e, -$2be4(a5)
0000008A  66 1C                      bne.b      $a8
0000008C  55 4F                      subq.w     #$2, a7
0000008E  A8 61                      .byte      0xa8, 0x61
00000090  30 1F                      move.w     (a7)+, d0
00000092  02 40 7F FF                andi.w     #$7fff, d0
00000096  48 C0                      ext.l      d0
00000098  81 FC 00 06                divs.w     #$6, d0
0000009C  48 40                      swap       d0
0000009E  5E 40                      addq.w     #$7, d0
000000A0  44 40                      neg.w      d0
000000A2  3B 40 DD 10                move.w     d0, -$22f0(a5)
000000A6  60 18                      bra.b      $c0
000000A8  4A 6D DD 10                tst.w      -$22f0(a5)
000000AC  6E 08                      bgt.b      $b6
000000AE  30 2D DD 10                move.w     -$22f0(a5), d0
000000B2  44 40                      neg.w      d0
000000B4  60 04                      bra.b      $ba
000000B6  30 2D DD 10                move.w     -$22f0(a5), d0
000000BA  44 40                      neg.w      d0
000000BC  3B 40 DD 10                move.w     d0, -$22f0(a5)
000000C0  2F 2D DE B2                move.l     -$214e(a5), -(a7)
000000C4  4E B9 00 00 00 A0          jsr        $a0.l
000000CA  58 4F                      addq.w     #$4, a7
000000CC  0C 6D 00 54 DC AE          cmpi.w     #$54, -$2352(a5)
000000D2  6C 00 00 98                bge.w      $16c
000000D6  0C 6D 00 09 D4 1C          cmpi.w     #$9, -$2be4(a5)
000000DC  66 4A                      bne.b      $128
000000DE  55 4F                      subq.w     #$2, a7
000000E0  A8 61                      .byte      0xa8, 0x61
000000E2  30 1F                      move.w     (a7)+, d0
000000E4  02 40 7F FF                andi.w     #$7fff, d0
000000E8  48 C0                      ext.l      d0
000000EA  81 FC 00 06                divs.w     #$6, d0
000000EE  48 40                      swap       d0
000000F0  52 40                      addq.w     #$1, d0
000000F2  4A 40                      tst.w      d0
000000F4  6E 18                      bgt.b      $10e
000000F6  55 4F                      subq.w     #$2, a7
000000F8  A8 61                      .byte      0xa8, 0x61
000000FA  30 1F                      move.w     (a7)+, d0
000000FC  02 40 7F FF                andi.w     #$7fff, d0
00000100  48 C0                      ext.l      d0
00000102  81 FC 00 06                divs.w     #$6, d0
00000106  48 40                      swap       d0
00000108  52 40                      addq.w     #$1, d0
0000010A  44 40                      neg.w      d0
0000010C  60 14                      bra.b      $122
0000010E  55 4F                      subq.w     #$2, a7
00000110  A8 61                      .byte      0xa8, 0x61
00000112  30 1F                      move.w     (a7)+, d0
00000114  02 40 7F FF                andi.w     #$7fff, d0
00000118  48 C0                      ext.l      d0
0000011A  81 FC 00 06                divs.w     #$6, d0
0000011E  48 40                      swap       d0
00000120  52 40                      addq.w     #$1, d0
00000122  3B 40 DD 10                move.w     d0, -$22f0(a5)
00000126  60 38                      bra.b      $160
00000128  0C 6D 00 0E D4 1C          cmpi.w     #$e, -$2be4(a5)
0000012E  66 1A                      bne.b      $14a
00000130  55 4F                      subq.w     #$2, a7
00000132  A8 61                      .byte      0xa8, 0x61
00000134  30 1F                      move.w     (a7)+, d0
00000136  02 40 7F FF                andi.w     #$7fff, d0
0000013A  48 C0                      ext.l      d0
0000013C  81 FC 00 06                divs.w     #$6, d0
00000140  48 40                      swap       d0
00000142  5E 40                      addq.w     #$7, d0
00000144  3B 40 DD 10                move.w     d0, -$22f0(a5)
00000148  60 16                      bra.b      $160
0000014A  4A 6D DD 10                tst.w      -$22f0(a5)
0000014E  6E 08                      bgt.b      $158
00000150  30 2D DD 10                move.w     -$22f0(a5), d0
00000154  44 40                      neg.w      d0
00000156  60 04                      bra.b      $15c
00000158  30 2D DD 10                move.w     -$22f0(a5), d0
0000015C  3B 40 DD 10                move.w     d0, -$22f0(a5)
00000160  2F 2D DE B2                move.l     -$214e(a5), -(a7)
00000164  4E B9 00 00 00 A0          jsr        $a0.l
0000016A  58 4F                      addq.w     #$4, a7
0000016C  0C 6D 02 04 DC B4          cmpi.w     #$204, -$234c(a5)
00000172  6E 16                      bgt.b      $18a
00000174  55 4F                      subq.w     #$2, a7
00000176  48 6D DC AE                pea.l      -$2352(a5)
0000017A  48 6D DC 56                pea.l      -$23aa(a5)
0000017E  48 6E FF F8                pea.l      -$8(a6)
00000182  A8 AA                      .byte      0xa8, 0xaa
00000184  10 1F                      move.b     (a7)+, d0
00000186  67 00 00 F2                beq.w      $27a
0000018A  55 4F                      subq.w     #$2, a7
0000018C  48 6D DC AE                pea.l      -$2352(a5)
00000190  48 6D DC 56                pea.l      -$23aa(a5)
00000194  48 6E FF F8                pea.l      -$8(a6)
00000198  A8 AA                      .byte      0xa8, 0xaa
0000019A  10 1F                      move.b     (a7)+, d0
0000019C  67 14                      beq.b      $1b2
0000019E  4A 6D DD 0E                tst.w      -$22f2(a5)
000001A2  6F 26                      ble.b      $1ca
000001A4  2F 2D DE AE                move.l     -$2152(a5), -(a7)
000001A8  4E B9 00 00 00 98          jsr        $98.l
000001AE  58 4F                      addq.w     #$4, a7
000001B0  60 18                      bra.b      $1ca
000001B2  4A 6D FF FA                tst.w      -$6(a5)
000001B6  6F 0C                      ble.b      $1c4
000001B8  2F 2D DE B6                move.l     -$214a(a5), -(a7)
000001BC  4E B9 00 00 00 98          jsr        $98.l
000001C2  58 4F                      addq.w     #$4, a7
000001C4  4E B9 00 00 04 94          jsr        $494.l
000001CA  4A 6D FF FA                tst.w      -$6(a5)
000001CE  6F 00 00 94                ble.w      $264
000001D2  0C 6D 00 09 D4 1C          cmpi.w     #$9, -$2be4(a5)
000001D8  66 4C                      bne.b      $226
000001DA  55 4F                      subq.w     #$2, a7
000001DC  A8 61                      .byte      0xa8, 0x61
000001DE  30 1F                      move.w     (a7)+, d0
000001E0  02 40 7F FF                andi.w     #$7fff, d0
000001E4  48 C0                      ext.l      d0
000001E6  81 FC 00 06                divs.w     #$6, d0
000001EA  48 40                      swap       d0
000001EC  52 40                      addq.w     #$1, d0
000001EE  4A 40                      tst.w      d0
000001F0  6E 18                      bgt.b      $20a
000001F2  55 4F                      subq.w     #$2, a7
000001F4  A8 61                      .byte      0xa8, 0x61
000001F6  30 1F                      move.w     (a7)+, d0
000001F8  02 40 7F FF                andi.w     #$7fff, d0
000001FC  44 40                      neg.w      d0
000001FE  48 C0                      ext.l      d0
00000200  81 FC 00 06                divs.w     #$6, d0
00000204  48 40                      swap       d0
00000206  52 40                      addq.w     #$1, d0
00000208  60 14                      bra.b      $21e
0000020A  55 4F                      subq.w     #$2, a7
0000020C  A8 61                      .byte      0xa8, 0x61
0000020E  30 1F                      move.w     (a7)+, d0
00000210  02 40 7F FF                andi.w     #$7fff, d0
00000214  48 C0                      ext.l      d0
00000216  81 FC 00 06                divs.w     #$6, d0
0000021A  48 40                      swap       d0
0000021C  52 40                      addq.w     #$1, d0
0000021E  44 40                      neg.w      d0
00000220  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000224  60 54                      bra.b      $27a
00000226  0C 6D 00 0E D4 1C          cmpi.w     #$e, -$2be4(a5)
0000022C  66 1C                      bne.b      $24a
0000022E  55 4F                      subq.w     #$2, a7
00000230  A8 61                      .byte      0xa8, 0x61
00000232  30 1F                      move.w     (a7)+, d0
00000234  02 40 7F FF                andi.w     #$7fff, d0
00000238  48 C0                      ext.l      d0
0000023A  81 FC 00 06                divs.w     #$6, d0
0000023E  48 40                      swap       d0
00000240  5E 40                      addq.w     #$7, d0
00000242  44 40                      neg.w      d0
00000244  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000248  60 30                      bra.b      $27a
0000024A  4A 6D DD 0E                tst.w      -$22f2(a5)
0000024E  6E 08                      bgt.b      $258
00000250  30 2D DD 0E                move.w     -$22f2(a5), d0
00000254  44 40                      neg.w      d0
00000256  60 04                      bra.b      $25c
00000258  30 2D DD 0E                move.w     -$22f2(a5), d0
0000025C  44 40                      neg.w      d0
0000025E  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000262  60 16                      bra.b      $27a
00000264  4A 6D DD 0E                tst.w      -$22f2(a5)
00000268  6E 08                      bgt.b      $272
0000026A  30 2D DD 0E                move.w     -$22f2(a5), d0
0000026E  44 40                      neg.w      d0
00000270  60 04                      bra.b      $276
00000272  30 2D DD 0E                move.w     -$22f2(a5), d0
00000276  3B 40 DD 0E                move.w     d0, -$22f2(a5)
0000027A  4A 6D DC B0                tst.w      -$2350(a5)
0000027E  6D 16                      blt.b      $296
00000280  55 4F                      subq.w     #$2, a7
00000282  48 6D DC AE                pea.l      -$2352(a5)
00000286  48 6D DC 82                pea.l      -$237e(a5)
0000028A  48 6E FF F8                pea.l      -$8(a6)
0000028E  A8 AA                      .byte      0xa8, 0xaa
00000290  10 1F                      move.b     (a7)+, d0
00000292  67 00 00 EE                beq.w      $382
00000296  55 4F                      subq.w     #$2, a7
00000298  48 6D DC AE                pea.l      -$2352(a5)
0000029C  48 6D DC 82                pea.l      -$237e(a5)
000002A0  48 6E FF F8                pea.l      -$8(a6)
000002A4  A8 AA                      .byte      0xa8, 0xaa
000002A6  10 1F                      move.b     (a7)+, d0
000002A8  67 14                      beq.b      $2be
000002AA  4A 6D DD 0E                tst.w      -$22f2(a5)
000002AE  6C 26                      bge.b      $2d6
000002B0  2F 2D DE AE                move.l     -$2152(a5), -(a7)
000002B4  4E B9 00 00 00 90          jsr        $90.l
000002BA  58 4F                      addq.w     #$4, a7
000002BC  60 18                      bra.b      $2d6
000002BE  4A 6D FF F6                tst.w      -$a(a5)
000002C2  6F 0C                      ble.b      $2d0
000002C4  2F 2D DE BA                move.l     -$2146(a5), -(a7)
000002C8  4E B9 00 00 00 90          jsr        $90.l
000002CE  58 4F                      addq.w     #$4, a7
000002D0  4E B9 00 00 04 42          jsr        $442.l
000002D6  4A 6D FF F6                tst.w      -$a(a5)
000002DA  6F 00 00 8E                ble.w      $36a
000002DE  0C 6D 00 09 D4 1C          cmpi.w     #$9, -$2be4(a5)
000002E4  66 4A                      bne.b      $330
000002E6  55 4F                      subq.w     #$2, a7
000002E8  A8 61                      .byte      0xa8, 0x61
000002EA  30 1F                      move.w     (a7)+, d0
000002EC  02 40 7F FF                andi.w     #$7fff, d0
000002F0  48 C0                      ext.l      d0
000002F2  81 FC 00 06                divs.w     #$6, d0
000002F6  48 40                      swap       d0
000002F8  52 40                      addq.w     #$1, d0
000002FA  4A 40                      tst.w      d0
000002FC  6E 18                      bgt.b      $316
000002FE  55 4F                      subq.w     #$2, a7
00000300  A8 61                      .byte      0xa8, 0x61
00000302  30 1F                      move.w     (a7)+, d0
00000304  02 40 7F FF                andi.w     #$7fff, d0
00000308  44 40                      neg.w      d0
0000030A  48 C0                      ext.l      d0
0000030C  81 FC 00 06                divs.w     #$6, d0
00000310  48 40                      swap       d0
00000312  52 40                      addq.w     #$1, d0
00000314  60 14                      bra.b      $32a
00000316  55 4F                      subq.w     #$2, a7
00000318  A8 61                      .byte      0xa8, 0x61
0000031A  30 1F                      move.w     (a7)+, d0
0000031C  02 40 7F FF                andi.w     #$7fff, d0
00000320  48 C0                      ext.l      d0
00000322  81 FC 00 06                divs.w     #$6, d0
00000326  48 40                      swap       d0
00000328  52 40                      addq.w     #$1, d0
0000032A  3B 40 DD 0E                move.w     d0, -$22f2(a5)
0000032E  60 52                      bra.b      $382
00000330  0C 6D 00 0E D4 1C          cmpi.w     #$e, -$2be4(a5)
00000336  66 1A                      bne.b      $352
00000338  55 4F                      subq.w     #$2, a7
0000033A  A8 61                      .byte      0xa8, 0x61
0000033C  30 1F                      move.w     (a7)+, d0
0000033E  02 40 7F FF                andi.w     #$7fff, d0
00000342  48 C0                      ext.l      d0
00000344  81 FC 00 06                divs.w     #$6, d0
00000348  48 40                      swap       d0
0000034A  5E 40                      addq.w     #$7, d0
0000034C  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000350  60 30                      bra.b      $382
00000352  4A 6D DD 0E                tst.w      -$22f2(a5)
00000356  6E 08                      bgt.b      $360
00000358  30 2D DD 0E                move.w     -$22f2(a5), d0
0000035C  44 40                      neg.w      d0
0000035E  60 04                      bra.b      $364
00000360  30 2D DD 0E                move.w     -$22f2(a5), d0
00000364  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000368  60 18                      bra.b      $382
0000036A  4A 6D DD 0E                tst.w      -$22f2(a5)
0000036E  6E 08                      bgt.b      $378
00000370  30 2D DD 0E                move.w     -$22f2(a5), d0
00000374  44 40                      neg.w      d0
00000376  60 04                      bra.b      $37c
00000378  30 2D DD 0E                move.w     -$22f2(a5), d0
0000037C  44 40                      neg.w      d0
0000037E  3B 40 DD 0E                move.w     d0, -$22f2(a5)
00000382  4E 5E                      unlk       a6
00000384  4E 75                      rts

; MacsBug symbol trailer for HandleBall: 8A 48 61 6E 64 6C 65 42 61 6C 6C

HandleDecoyBall: ; 00000394..00000430
00000394  4E 56 00 00                link.w     a6, #$0
00000398  2B 6D DD 12 DD 1A          move.l     -$22ee(a5), -$22e6(a5)
0000039E  2B 6D DD 16 DD 1E          move.l     -$22ea(a5), -$22e2(a5)
000003A4  48 6D DD 12                pea.l      -$22ee(a5)
000003A8  3F 2D DD 72                move.w     -$228e(a5), -(a7)
000003AC  3F 2D DD 74                move.w     -$228c(a5), -(a7)
000003B0  A8 A8                      .byte      0xa8, 0xa8
000003B2  0C 6D 01 B0 DD 16          cmpi.w     #$1b0, -$22ea(a5)
000003B8  6F 18                      ble.b      $3d2
000003BA  4A 6D DD 74                tst.w      -$228c(a5)
000003BE  6E 08                      bgt.b      $3c8
000003C0  30 2D DD 74                move.w     -$228c(a5), d0
000003C4  44 40                      neg.w      d0
000003C6  60 04                      bra.b      $3cc
000003C8  30 2D DD 74                move.w     -$228c(a5), d0
000003CC  44 40                      neg.w      d0
000003CE  3B 40 DD 74                move.w     d0, -$228c(a5)
000003D2  0C 6D 00 54 DD 12          cmpi.w     #$54, -$22ee(a5)
000003D8  6C 16                      bge.b      $3f0
000003DA  4A 6D DD 74                tst.w      -$228c(a5)
000003DE  6E 08                      bgt.b      $3e8
000003E0  30 2D DD 74                move.w     -$228c(a5), d0
000003E4  44 40                      neg.w      d0
000003E6  60 04                      bra.b      $3ec
000003E8  30 2D DD 74                move.w     -$228c(a5), d0
000003EC  3B 40 DD 74                move.w     d0, -$228c(a5)
000003F0  0C 6D 02 04 DD 18          cmpi.w     #$204, -$22e8(a5)
000003F6  6F 18                      ble.b      $410
000003F8  4A 6D DD 72                tst.w      -$228e(a5)
000003FC  6E 08                      bgt.b      $406
000003FE  30 2D DD 72                move.w     -$228e(a5), d0
00000402  44 40                      neg.w      d0
00000404  60 04                      bra.b      $40a
00000406  30 2D DD 72                move.w     -$228e(a5), d0
0000040A  44 40                      neg.w      d0
0000040C  3B 40 DD 72                move.w     d0, -$228e(a5)
00000410  4A 6D DD 14                tst.w      -$22ec(a5)
00000414  6C 16                      bge.b      $42c
00000416  4A 6D DD 72                tst.w      -$228e(a5)
0000041A  6E 08                      bgt.b      $424
0000041C  30 2D DD 72                move.w     -$228e(a5), d0
00000420  44 40                      neg.w      d0
00000422  60 04                      bra.b      $428
00000424  30 2D DD 72                move.w     -$228e(a5), d0
00000428  3B 40 DD 72                move.w     d0, -$228e(a5)
0000042C  4E 5E                      unlk       a6
0000042E  4E 75                      rts

; MacsBug symbol trailer for HandleDecoyBall: 8F 48 61 6E 64 6C 65 44 65 63 6F 79 42 61 6C 6C

Player1BallEnergyOff: ; 00000442..0000047C
00000442  4E 56 00 00                link.w     a6, #$0
00000446  4A 6D FF FA                tst.w      -$6(a5)
0000044A  6F 22                      ble.b      $46e
0000044C  04 6D 00 14 FF F6          subi.w     #$14, -$a(a5)
00000452  0C 6D 00 0F D4 1C          cmpi.w     #$f, -$2be4(a5)
00000458  66 06                      bne.b      $460
0000045A  06 6D 00 0A FF F6          addi.w     #$a, -$a(a5)
00000460  0C 6D 00 10 D4 1C          cmpi.w     #$10, -$2be4(a5)
00000466  66 06                      bne.b      $46e
00000468  04 6D 00 14 FF F6          subi.w     #$14, -$a(a5)
0000046E  4A 6D FF F6                tst.w      -$a(a5)
00000472  6C 04                      bge.b      $478
00000474  42 6D FF F6                clr.w      -$a(a5)
00000478  4E 5E                      unlk       a6
0000047A  4E 75                      rts

; MacsBug symbol trailer for Player1BallEnergyOff: 94 50 6C 61 79 65 72 31 42 61 6C 6C 45 6E 65 72 67 79 4F 66 66

Player2BallEnergyOff: ; 00000494..000004CE
00000494  4E 56 00 00                link.w     a6, #$0
00000498  4A 6D FF F6                tst.w      -$a(a5)
0000049C  6F 22                      ble.b      $4c0
0000049E  04 6D 00 14 FF FA          subi.w     #$14, -$6(a5)
000004A4  0C 6D 00 0F D4 1C          cmpi.w     #$f, -$2be4(a5)
000004AA  66 06                      bne.b      $4b2
000004AC  06 6D 00 0A FF FA          addi.w     #$a, -$6(a5)
000004B2  0C 6D 00 10 D4 1C          cmpi.w     #$10, -$2be4(a5)
000004B8  66 06                      bne.b      $4c0
000004BA  04 6D 00 14 FF FA          subi.w     #$14, -$6(a5)
000004C0  4A 6D FF FA                tst.w      -$6(a5)
000004C4  6C 04                      bge.b      $4ca
000004C6  42 6D FF FA                clr.w      -$6(a5)
000004CA  4E 5E                      unlk       a6
000004CC  4E 75                      rts

; MacsBug symbol trailer for Player2BallEnergyOff: 94 50 6C 61 79 65 72 32 42 61 6C 6C 45 6E 65 72 67 79 4F 66 66

PrintSpecialMessages: ; 000004E6..00000B30
000004E6  4E 56 00 00                link.w     a6, #$0
000004EA  30 2D D4 1C                move.w     -$2be4(a5), d0
000004EE  0C 40 00 4B                cmpi.w     #$4b, d0
000004F2  62 00 06 38                bhi.w      $b2c
000004F6  D0 40                      add.w      d0, d0
000004F8  30 3B 00 06                move.w     $500(pc, d0.w), d0
000004FC  4E FB 00 02                jmp        $500(pc, d0.w)
00000500  06 2C 00 98 00 B4          addi.b     #$98, $b4(a4)
00000506  00 D0                      .byte      0x00, 0xd0
00000508  00 EC                      .byte      0x00, 0xec
0000050A  01 08 01 24                movep.w    $124(a0), d0
0000050E  01 40                      bchg.b     d0, d0
00000510  01 5C                      bchg.b     d0, (a4)+
00000512  01 78 01 94                bchg.b     d0, $194.w
00000516  01 B0 01 CC                bclr.b     d0, (invalid.w)
0000051A  01 E8 02 04                bset.b     d0, $204(a0)
0000051E  02 20 02 3C                andi.b     #$3c, -(a0)
00000522  02 58 02 74                andi.w     #$274, (a0)+
00000526  02 90 02 AC 02 C8          andi.l     #$2ac02c8, (a0)
0000052C  02 E4                      .byte      0x02, 0xe4
0000052E  06 2C 03 1C 03 00          addi.b     #$1c, $300(a4)
00000534  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
0000053A  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
00000540  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
00000546  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
0000054C  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
00000552  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
00000558  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
0000055E  06 2C 06 2C 06 2C          addi.b     #$2c, $62c(a4)
00000564  03 4C 03 68                movep.l    $368(a4), d1
00000568  03 84                      bclr.b     d1, d4
0000056A  03 A0                      bclr.b     d1, -(a0)
0000056C  03 BC                      .byte      0x03, 0xbc
0000056E  03 D8                      bset.b     d1, (a0)+
00000570  03 F4 04 10                bset.b     d1, $10(a4, d0.w)
00000574  04 2C 04 48 04 64          subi.b     #$48, $464(a4)
0000057A  04 80 04 9C 04 B8          subi.l     #$49c04b8, d0
00000580  04 D4                      .byte      0x04, 0xd4
00000582  04 F0                      .byte      0x04, 0xf0
00000584  05 0C 05 28                movep.w    $528(a4), d2
00000588  05 44                      bchg.b     d2, d4
0000058A  05 60                      bchg.b     d2, -(a0)
0000058C  05 7C                      .byte      0x05, 0x7c
0000058E  05 98                      bclr.b     d2, (a0)+
00000590  05 B2 05 CC                bclr.b     d2, (invalid.w)
00000594  05 FA                      .byte      0x05, 0xfa
00000596  06 14 3F 3C                addi.b     #$3c, (a4)
0000059A  00 0F                      .byte      0x00, 0x0f
0000059C  2F 3C 00 D0 01 92          move.l     #$d00192, -(a7)
000005A2  48 6D FC 90                pea.l      -$370(a5)
000005A6  4E B9 00 00 00 F8          jsr        $f8.l
000005AC  4F EF 00 0A                lea.l      $a(a7), a7
000005B0  60 00 05 7A                bra.w      $b2c
000005B4  3F 3C 00 0F                move.w     #$f, -(a7)
000005B8  2F 3C 00 D5 01 92          move.l     #$d50192, -(a7)
000005BE  48 6D FC 9B                pea.l      -$365(a5)
000005C2  4E B9 00 00 00 F8          jsr        $f8.l
000005C8  4F EF 00 0A                lea.l      $a(a7), a7
000005CC  60 00 05 5E                bra.w      $b2c
000005D0  3F 3C 00 0F                move.w     #$f, -(a7)
000005D4  2F 3C 00 C5 01 92          move.l     #$c50192, -(a7)
000005DA  48 6D FC A4                pea.l      -$35c(a5)
000005DE  4E B9 00 00 00 F8          jsr        $f8.l
000005E4  4F EF 00 0A                lea.l      $a(a7), a7
000005E8  60 00 05 42                bra.w      $b2c
000005EC  3F 3C 00 0F                move.w     #$f, -(a7)
000005F0  2F 3C 00 C7 01 92          move.l     #$c70192, -(a7)
000005F6  48 6D FC AF                pea.l      -$351(a5)
000005FA  4E B9 00 00 00 F8          jsr        $f8.l
00000600  4F EF 00 0A                lea.l      $a(a7), a7
00000604  60 00 05 26                bra.w      $b2c
00000608  3F 3C 00 0F                move.w     #$f, -(a7)
0000060C  2F 3C 00 BE 01 92          move.l     #$be0192, -(a7)
00000612  48 6D FC BA                pea.l      -$346(a5)
00000616  4E B9 00 00 00 F8          jsr        $f8.l
0000061C  4F EF 00 0A                lea.l      $a(a7), a7
00000620  60 00 05 0A                bra.w      $b2c
00000624  3F 3C 00 0F                move.w     #$f, -(a7)
00000628  2F 3C 00 B3 01 92          move.l     #$b30192, -(a7)
0000062E  48 6D FC C6                pea.l      -$33a(a5)
00000632  4E B9 00 00 00 F8          jsr        $f8.l
00000638  4F EF 00 0A                lea.l      $a(a7), a7
0000063C  60 00 04 EE                bra.w      $b2c
00000640  3F 3C 00 0F                move.w     #$f, -(a7)
00000644  2F 3C 00 C7 01 92          move.l     #$c70192, -(a7)
0000064A  48 6D FC D5                pea.l      -$32b(a5)
0000064E  4E B9 00 00 00 F8          jsr        $f8.l
00000654  4F EF 00 0A                lea.l      $a(a7), a7
00000658  60 00 04 D2                bra.w      $b2c
0000065C  3F 3C 00 0F                move.w     #$f, -(a7)
00000660  2F 3C 00 A3 01 92          move.l     #$a30192, -(a7)
00000666  48 6D FC E0                pea.l      -$320(a5)
0000066A  4E B9 00 00 00 F8          jsr        $f8.l
00000670  4F EF 00 0A                lea.l      $a(a7), a7
00000674  60 00 04 B6                bra.w      $b2c
00000678  3F 3C 00 0F                move.w     #$f, -(a7)
0000067C  2F 3C 00 C6 01 92          move.l     #$c60192, -(a7)
00000682  48 6D FC F1                pea.l      -$30f(a5)
00000686  4E B9 00 00 00 F8          jsr        $f8.l
0000068C  4F EF 00 0A                lea.l      $a(a7), a7
00000690  60 00 04 9A                bra.w      $b2c
00000694  3F 3C 00 0F                move.w     #$f, -(a7)
00000698  2F 3C 00 CB 01 92          move.l     #$cb0192, -(a7)
0000069E  48 6D FC FC                pea.l      -$304(a5)
000006A2  4E B9 00 00 00 F8          jsr        $f8.l
000006A8  4F EF 00 0A                lea.l      $a(a7), a7
000006AC  60 00 04 7E                bra.w      $b2c
000006B0  3F 3C 00 0F                move.w     #$f, -(a7)
000006B4  2F 3C 00 96 01 92          move.l     #$960192, -(a7)
000006BA  48 6D FD 06                pea.l      -$2fa(a5)
000006BE  4E B9 00 00 00 F8          jsr        $f8.l
000006C4  4F EF 00 0A                lea.l      $a(a7), a7
000006C8  60 00 04 62                bra.w      $b2c
000006CC  3F 3C 00 0F                move.w     #$f, -(a7)
000006D0  2F 3C 00 9E 01 92          move.l     #$9e0192, -(a7)
000006D6  48 6D FD 18                pea.l      -$2e8(a5)
000006DA  4E B9 00 00 00 F8          jsr        $f8.l
000006E0  4F EF 00 0A                lea.l      $a(a7), a7
000006E4  60 00 04 46                bra.w      $b2c
000006E8  3F 3C 00 0F                move.w     #$f, -(a7)
000006EC  2F 3C 00 89 01 92          move.l     #$890192, -(a7)
000006F2  48 6D FD 2B                pea.l      -$2d5(a5)
000006F6  4E B9 00 00 00 F8          jsr        $f8.l
000006FC  4F EF 00 0A                lea.l      $a(a7), a7
00000700  60 00 04 2A                bra.w      $b2c
00000704  3F 3C 00 0F                move.w     #$f, -(a7)
00000708  2F 3C 00 B8 01 92          move.l     #$b80192, -(a7)
0000070E  48 6D FD 40                pea.l      -$2c0(a5)
00000712  4E B9 00 00 00 F8          jsr        $f8.l
00000718  4F EF 00 0A                lea.l      $a(a7), a7
0000071C  60 00 04 0E                bra.w      $b2c
00000720  3F 3C 00 0F                move.w     #$f, -(a7)
00000724  2F 3C 00 BB 01 92          move.l     #$bb0192, -(a7)
0000072A  48 6D FD 4E                pea.l      -$2b2(a5)
0000072E  4E B9 00 00 00 F8          jsr        $f8.l
00000734  4F EF 00 0A                lea.l      $a(a7), a7
00000738  60 00 03 F2                bra.w      $b2c
0000073C  3F 3C 00 0F                move.w     #$f, -(a7)
00000740  2F 3C 00 AC 01 92          move.l     #$ac0192, -(a7)
00000746  48 6D FD 5A                pea.l      -$2a6(a5)
0000074A  4E B9 00 00 00 F8          jsr        $f8.l
00000750  4F EF 00 0A                lea.l      $a(a7), a7
00000754  60 00 03 D6                bra.w      $b2c
00000758  3F 3C 00 0F                move.w     #$f, -(a7)
0000075C  2F 3C 00 7F 01 92          move.l     #$7f0192, -(a7)
00000762  48 6D FD 69                pea.l      -$297(a5)
00000766  4E B9 00 00 00 F8          jsr        $f8.l
0000076C  4F EF 00 0A                lea.l      $a(a7), a7
00000770  60 00 03 BA                bra.w      $b2c
00000774  3F 3C 00 0F                move.w     #$f, -(a7)
00000778  2F 3C 00 7B 01 92          move.l     #$7b0192, -(a7)
0000077E  48 6D FD 80                pea.l      -$280(a5)
00000782  4E B9 00 00 00 F8          jsr        $f8.l
00000788  4F EF 00 0A                lea.l      $a(a7), a7
0000078C  60 00 03 9E                bra.w      $b2c
00000790  3F 3C 00 0F                move.w     #$f, -(a7)
00000794  2F 3C 00 73 01 92          move.l     #$730192, -(a7)
0000079A  48 6D FD 97                pea.l      -$269(a5)
0000079E  4E B9 00 00 00 F8          jsr        $f8.l
000007A4  4F EF 00 0A                lea.l      $a(a7), a7
000007A8  60 00 03 82                bra.w      $b2c
000007AC  3F 3C 00 0F                move.w     #$f, -(a7)
000007B0  2F 3C 00 6A 01 92          move.l     #$6a0192, -(a7)
000007B6  48 6D FD B0                pea.l      -$250(a5)
000007BA  4E B9 00 00 00 F8          jsr        $f8.l
000007C0  4F EF 00 0A                lea.l      $a(a7), a7
000007C4  60 00 03 66                bra.w      $b2c
000007C8  3F 3C 00 0F                move.w     #$f, -(a7)
000007CC  2F 3C 00 66 01 92          move.l     #$660192, -(a7)
000007D2  48 6D FD CA                pea.l      -$236(a5)
000007D6  4E B9 00 00 00 F8          jsr        $f8.l
000007DC  4F EF 00 0A                lea.l      $a(a7), a7
000007E0  60 00 03 4A                bra.w      $b2c
000007E4  3F 3C 00 0F                move.w     #$f, -(a7)
000007E8  2F 3C 00 5E 01 92          move.l     #$5e0192, -(a7)
000007EE  48 6D FD E4                pea.l      -$21c(a5)
000007F2  4E B9 00 00 00 F8          jsr        $f8.l
000007F8  4F EF 00 0A                lea.l      $a(a7), a7
000007FC  60 00 03 2E                bra.w      $b2c
00000800  3F 3C 00 0F                move.w     #$f, -(a7)
00000804  2F 3C 00 C3 01 92          move.l     #$c30192, -(a7)
0000080A  48 6D FE 01                pea.l      -$1ff(a5)
0000080E  4E B9 00 00 00 F8          jsr        $f8.l
00000814  4F EF 00 0A                lea.l      $a(a7), a7
00000818  60 00 03 12                bra.w      $b2c
0000081C  3F 3C 00 0F                move.w     #$f, -(a7)
00000820  2F 3C 00 82 01 7E          move.l     #$82017e, -(a7)
00000826  48 6D FE 0C                pea.l      -$1f4(a5)
0000082A  4E B9 00 00 00 F8          jsr        $f8.l
00000830  3F 3C 00 0F                move.w     #$f, -(a7)
00000834  2F 3C 00 9B 01 92          move.l     #$9b0192, -(a7)
0000083A  48 6D FE 22                pea.l      -$1de(a5)
0000083E  4E B9 00 00 00 F8          jsr        $f8.l
00000844  4F EF 00 14                lea.l      $14(a7), a7
00000848  60 00 02 E2                bra.w      $b2c
0000084C  3F 3C 00 0F                move.w     #$f, -(a7)
00000850  2F 3C 00 C3 01 92          move.l     #$c30192, -(a7)
00000856  48 6D FE 34                pea.l      -$1cc(a5)
0000085A  4E B9 00 00 00 F8          jsr        $f8.l
00000860  4F EF 00 0A                lea.l      $a(a7), a7
00000864  60 00 02 C6                bra.w      $b2c
00000868  3F 3C 00 0F                move.w     #$f, -(a7)
0000086C  2F 3C 00 CB 01 92          move.l     #$cb0192, -(a7)
00000872  48 6D FE 40                pea.l      -$1c0(a5)
00000876  4E B9 00 00 00 F8          jsr        $f8.l
0000087C  4F EF 00 0A                lea.l      $a(a7), a7
00000880  60 00 02 AA                bra.w      $b2c
00000884  3F 3C 00 0F                move.w     #$f, -(a7)
00000888  2F 3C 00 B1 01 92          move.l     #$b10192, -(a7)
0000088E  48 6D FE 4B                pea.l      -$1b5(a5)
00000892  4E B9 00 00 00 F8          jsr        $f8.l
00000898  4F EF 00 0A                lea.l      $a(a7), a7
0000089C  60 00 02 8E                bra.w      $b2c
000008A0  3F 3C 00 0F                move.w     #$f, -(a7)
000008A4  2F 3C 00 CF 01 92          move.l     #$cf0192, -(a7)
000008AA  48 6D FE 58                pea.l      -$1a8(a5)
000008AE  4E B9 00 00 00 F8          jsr        $f8.l
000008B4  4F EF 00 0A                lea.l      $a(a7), a7
000008B8  60 00 02 72                bra.w      $b2c
000008BC  3F 3C 00 0F                move.w     #$f, -(a7)
000008C0  2F 3C 00 B0 01 92          move.l     #$b00192, -(a7)
000008C6  48 6D FE 63                pea.l      -$19d(a5)
000008CA  4E B9 00 00 00 F8          jsr        $f8.l
000008D0  4F EF 00 0A                lea.l      $a(a7), a7
000008D4  60 00 02 56                bra.w      $b2c
000008D8  3F 3C 00 0F                move.w     #$f, -(a7)
000008DC  2F 3C 00 B5 01 92          move.l     #$b50192, -(a7)
000008E2  48 6D FE 72                pea.l      -$18e(a5)
000008E6  4E B9 00 00 00 F8          jsr        $f8.l
000008EC  4F EF 00 0A                lea.l      $a(a7), a7
000008F0  60 00 02 3A                bra.w      $b2c
000008F4  3F 3C 00 0F                move.w     #$f, -(a7)
000008F8  2F 3C 00 A5 01 92          move.l     #$a50192, -(a7)
000008FE  48 6D FE 80                pea.l      -$180(a5)
00000902  4E B9 00 00 00 F8          jsr        $f8.l
00000908  4F EF 00 0A                lea.l      $a(a7), a7
0000090C  60 00 02 1E                bra.w      $b2c
00000910  3F 3C 00 0F                move.w     #$f, -(a7)
00000914  2F 3C 00 A7 01 92          move.l     #$a70192, -(a7)
0000091A  48 6D FE 90                pea.l      -$170(a5)
0000091E  4E B9 00 00 00 F8          jsr        $f8.l
00000924  4F EF 00 0A                lea.l      $a(a7), a7
00000928  60 00 02 02                bra.w      $b2c
0000092C  3F 3C 00 0F                move.w     #$f, -(a7)
00000930  2F 3C 00 9E 01 92          move.l     #$9e0192, -(a7)
00000936  48 6D FE A0                pea.l      -$160(a5)
0000093A  4E B9 00 00 00 F8          jsr        $f8.l
00000940  4F EF 00 0A                lea.l      $a(a7), a7
00000944  60 00 01 E6                bra.w      $b2c
00000948  3F 3C 00 0F                move.w     #$f, -(a7)
0000094C  2F 3C 00 A3 01 92          move.l     #$a30192, -(a7)
00000952  48 6D FE B1                pea.l      -$14f(a5)
00000956  4E B9 00 00 00 F8          jsr        $f8.l
0000095C  4F EF 00 0A                lea.l      $a(a7), a7
00000960  60 00 01 CA                bra.w      $b2c
00000964  3F 3C 00 0F                move.w     #$f, -(a7)
00000968  2F 3C 00 AC 01 92          move.l     #$ac0192, -(a7)
0000096E  48 6D FE C2                pea.l      -$13e(a5)
00000972  4E B9 00 00 00 F8          jsr        $f8.l
00000978  4F EF 00 0A                lea.l      $a(a7), a7
0000097C  60 00 01 AE                bra.w      $b2c
00000980  3F 3C 00 0F                move.w     #$f, -(a7)
00000984  2F 3C 00 C5 01 92          move.l     #$c50192, -(a7)
0000098A  48 6D FE D2                pea.l      -$12e(a5)
0000098E  4E B9 00 00 00 F8          jsr        $f8.l
00000994  4F EF 00 0A                lea.l      $a(a7), a7
00000998  60 00 01 92                bra.w      $b2c
0000099C  3F 3C 00 0F                move.w     #$f, -(a7)
000009A0  2F 3C 00 91 01 92          move.l     #$910192, -(a7)
000009A6  48 6D FE DD                pea.l      -$123(a5)
000009AA  4E B9 00 00 00 F8          jsr        $f8.l
000009B0  4F EF 00 0A                lea.l      $a(a7), a7
000009B4  60 00 01 76                bra.w      $b2c
000009B8  3F 3C 00 0F                move.w     #$f, -(a7)
000009BC  2F 3C 00 B1 01 92          move.l     #$b10192, -(a7)
000009C2  48 6D FE F2                pea.l      -$10e(a5)
000009C6  4E B9 00 00 00 F8          jsr        $f8.l
000009CC  4F EF 00 0A                lea.l      $a(a7), a7
000009D0  60 00 01 5A                bra.w      $b2c
000009D4  3F 3C 00 0F                move.w     #$f, -(a7)
000009D8  2F 3C 00 BA 01 92          move.l     #$ba0192, -(a7)
000009DE  48 6D FF 01                pea.l      -$ff(a5)
000009E2  4E B9 00 00 00 F8          jsr        $f8.l
000009E8  4F EF 00 0A                lea.l      $a(a7), a7
000009EC  60 00 01 3E                bra.w      $b2c
000009F0  3F 3C 00 0F                move.w     #$f, -(a7)
000009F4  2F 3C 00 C4 01 92          move.l     #$c40192, -(a7)
000009FA  48 6D FF 0E                pea.l      -$f2(a5)
000009FE  4E B9 00 00 00 F8          jsr        $f8.l
00000A04  4F EF 00 0A                lea.l      $a(a7), a7
00000A08  60 00 01 22                bra.w      $b2c
00000A0C  3F 3C 00 0F                move.w     #$f, -(a7)
00000A10  2F 3C 00 D6 01 92          move.l     #$d60192, -(a7)
00000A16  48 6D FF 1A                pea.l      -$e6(a5)
00000A1A  4E B9 00 00 00 F8          jsr        $f8.l
00000A20  4F EF 00 0A                lea.l      $a(a7), a7
00000A24  60 00 01 06                bra.w      $b2c
00000A28  3F 3C 00 0F                move.w     #$f, -(a7)
00000A2C  2F 3C 00 CF 01 92          move.l     #$cf0192, -(a7)
00000A32  48 6D FF 22                pea.l      -$de(a5)
00000A36  4E B9 00 00 00 F8          jsr        $f8.l
00000A3C  4F EF 00 0A                lea.l      $a(a7), a7
00000A40  60 00 00 EA                bra.w      $b2c
00000A44  3F 3C 00 0F                move.w     #$f, -(a7)
00000A48  2F 3C 00 DD 01 92          move.l     #$dd0192, -(a7)
00000A4E  48 6D FF 2D                pea.l      -$d3(a5)
00000A52  4E B9 00 00 00 F8          jsr        $f8.l
00000A58  4F EF 00 0A                lea.l      $a(a7), a7
00000A5C  60 00 00 CE                bra.w      $b2c
00000A60  3F 3C 00 0F                move.w     #$f, -(a7)
00000A64  2F 3C 00 E3 01 92          move.l     #$e30192, -(a7)
00000A6A  48 6D FF 34                pea.l      -$cc(a5)
00000A6E  4E B9 00 00 00 F8          jsr        $f8.l
00000A74  4F EF 00 0A                lea.l      $a(a7), a7
00000A78  60 00 00 B2                bra.w      $b2c
00000A7C  3F 3C 00 0F                move.w     #$f, -(a7)
00000A80  2F 3C 00 66 01 92          move.l     #$660192, -(a7)
00000A86  48 6D FF 3B                pea.l      -$c5(a5)
00000A8A  4E B9 00 00 00 F8          jsr        $f8.l
00000A90  4F EF 00 0A                lea.l      $a(a7), a7
00000A94  60 00 00 96                bra.w      $b2c
00000A98  3F 3C 00 0F                move.w     #$f, -(a7)
00000A9C  2F 3C 00 58 01 92          move.l     #$580192, -(a7)
00000AA2  48 6D FF 56                pea.l      -$aa(a5)
00000AA6  4E B9 00 00 00 F8          jsr        $f8.l
00000AAC  4F EF 00 0A                lea.l      $a(a7), a7
00000AB0  60 7A                      bra.b      $b2c
00000AB2  3F 3C 00 0F                move.w     #$f, -(a7)
00000AB6  2F 3C 00 80 01 92          move.l     #$800192, -(a7)
00000ABC  48 6D FF 75                pea.l      -$8b(a5)
00000AC0  4E B9 00 00 00 F8          jsr        $f8.l
00000AC6  4F EF 00 0A                lea.l      $a(a7), a7
00000ACA  60 60                      bra.b      $b2c
00000ACC  3F 3C 00 0F                move.w     #$f, -(a7)
00000AD0  2F 3C 00 AD 01 88          move.l     #$ad0188, -(a7)
00000AD6  48 6D FF 8A                pea.l      -$76(a5)
00000ADA  4E B9 00 00 00 F8          jsr        $f8.l
00000AE0  3F 3C 00 0F                move.w     #$f, -(a7)
00000AE4  2F 3C 00 8D 01 9C          move.l     #$8d019c, -(a7)
00000AEA  48 6D FF 9A                pea.l      -$66(a5)
00000AEE  4E B9 00 00 00 F8          jsr        $f8.l
00000AF4  4F EF 00 14                lea.l      $14(a7), a7
00000AF8  60 32                      bra.b      $b2c
00000AFA  3F 3C 00 0F                move.w     #$f, -(a7)
00000AFE  2F 3C 00 87 01 92          move.l     #$870192, -(a7)
00000B04  48 6D FF AE                pea.l      -$52(a5)
00000B08  4E B9 00 00 00 F8          jsr        $f8.l
00000B0E  4F EF 00 0A                lea.l      $a(a7), a7
00000B12  60 18                      bra.b      $b2c
00000B14  3F 3C 00 0F                move.w     #$f, -(a7)
00000B18  2F 3C 00 8A 01 92          move.l     #$8a0192, -(a7)
00000B1E  48 6D FF C4                pea.l      -$3c(a5)
00000B22  4E B9 00 00 00 F8          jsr        $f8.l
00000B28  4F EF 00 0A                lea.l      $a(a7), a7
00000B2C  4E 5E                      unlk       a6
00000B2E  4E 75                      rts

; MacsBug symbol trailer for PrintSpecialMessages: 94 50 72 69 6E 74 53 70 65 63 69 61 6C 4D 65 73 73 61 67 65 73

HandleFight: ; 00000B48..00000D72
00000B48  4E 56 FF F4                link.w     a6, #$fff4
00000B4C  48 6E FF F4                pea.l      -$c(a6)
00000B50  2F 3C 01 7E 00 58          move.l     #$17e0058, -(a7)
00000B56  2F 3C 01 AB 01 AC          move.l     #$1ab01ac, -(a7)
00000B5C  A8 A7                      .byte      0xa8, 0xa7
00000B5E  2B 6D D6 E6 D6 DE          move.l     -$291a(a5), -$2922(a5)
00000B64  2B 6D D6 EA D6 E2          move.l     -$2916(a5), -$291e(a5)
00000B6A  4A 2D D4 0E                tst.b      -$2bf2(a5)
00000B6E  66 00 01 5E                bne.w      $cce
00000B72  4E B9 00 00 2C 94          jsr        $2c94.l
00000B78  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000B7C  48 68 00 02                pea.l      $2(a0)
00000B80  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000B84  48 68 00 02                pea.l      $2(a0)
00000B88  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000B8C  48 68 00 02                pea.l      $2(a0)
00000B90  48 6D D7 2E                pea.l      -$28d2(a5)
00000B94  48 6D D7 2E                pea.l      -$28d2(a5)
00000B98  48 6D D7 26                pea.l      -$28da(a5)
00000B9C  A8 17                      .byte      0xa8, 0x17
00000B9E  30 2D FF E4                move.w     -$1c(a5), d0
00000BA2  53 40                      subq.w     #$1, d0
00000BA4  67 0A                      beq.b      $bb0
00000BA6  53 40                      subq.w     #$1, d0
00000BA8  67 2E                      beq.b      $bd8
00000BAA  53 40                      subq.w     #$1, d0
00000BAC  67 52                      beq.b      $c00
00000BAE  60 76                      bra.b      $c26
00000BB0  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000BB4  48 68 00 02                pea.l      $2(a0)
00000BB8  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000BBC  48 68 00 02                pea.l      $2(a0)
00000BC0  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000BC4  48 68 00 02                pea.l      $2(a0)
00000BC8  48 6D D7 1E                pea.l      -$28e2(a5)
00000BCC  48 6D D7 1E                pea.l      -$28e2(a5)
00000BD0  48 6D D7 16                pea.l      -$28ea(a5)
00000BD4  A8 17                      .byte      0xa8, 0x17
00000BD6  60 4E                      bra.b      $c26
00000BD8  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000BDC  48 68 00 02                pea.l      $2(a0)
00000BE0  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000BE4  48 68 00 02                pea.l      $2(a0)
00000BE8  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000BEC  48 68 00 02                pea.l      $2(a0)
00000BF0  48 6D D7 0E                pea.l      -$28f2(a5)
00000BF4  48 6D D7 0E                pea.l      -$28f2(a5)
00000BF8  48 6D D7 06                pea.l      -$28fa(a5)
00000BFC  A8 17                      .byte      0xa8, 0x17
00000BFE  60 26                      bra.b      $c26
00000C00  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000C04  48 68 00 02                pea.l      $2(a0)
00000C08  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00000C0C  48 68 00 02                pea.l      $2(a0)
00000C10  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000C14  48 68 00 02                pea.l      $2(a0)
00000C18  48 6D D6 FE                pea.l      -$2902(a5)
00000C1C  48 6D D6 FE                pea.l      -$2902(a5)
00000C20  48 6D D6 F6                pea.l      -$290a(a5)
00000C24  A8 17                      .byte      0xa8, 0x17
00000C26  4E BA F8 BE                jsr        $4e6(pc)
00000C2A  2F 3C 03 E8 00 0A          move.l     #$3e8000a, -(a7)
00000C30  4E B9 00 00 00 C0          jsr        $c0.l
00000C36  20 7C 00 00 00 0A          movea.l    #$a, a0
00000C3C  43 EE FF FC                lea.l      -$4(a6), a1
00000C40  A0 3B                      .byte      0xa0, 0x3b
00000C42  22 80                      move.l     d0, (a1)
00000C44  3F 3C 00 0A                move.w     #$a, -(a7)
00000C48  30 2D FF E4                move.w     -$1c(a5), d0
00000C4C  06 40 03 E8                addi.w     #$3e8, d0
00000C50  3F 00                      move.w     d0, -(a7)
00000C52  4E B9 00 00 00 C0          jsr        $c0.l
00000C58  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000C5C  48 68 00 02                pea.l      $2(a0)
00000C60  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000C64  48 68 00 02                pea.l      $2(a0)
00000C68  48 6D D7 26                pea.l      -$28da(a5)
00000C6C  48 6D D7 26                pea.l      -$28da(a5)
00000C70  42 67                      clr.w      -(a7)
00000C72  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000C76  2F 28 00 18                move.l     $18(a0), -(a7)
00000C7A  A8 EC                      .byte      0xa8, 0xec
00000C7C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000C80  48 68 00 02                pea.l      $2(a0)
00000C84  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000C88  48 68 00 02                pea.l      $2(a0)
00000C8C  48 6D D7 06                pea.l      -$28fa(a5)
00000C90  48 6D D7 06                pea.l      -$28fa(a5)
00000C94  42 67                      clr.w      -(a7)
00000C96  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000C9A  2F 28 00 18                move.l     $18(a0), -(a7)
00000C9E  A8 EC                      .byte      0xa8, 0xec
00000CA0  1B 7C 00 01 D4 0E          move.b     #$1, -$2bf2(a5)
00000CA6  A9 75                      .byte      0xa9, 0x75
00000CA8  20 1F                      move.l     (a7)+, d0
00000CAA  2D 40 FF FC                move.l     d0, -$4(a6)
00000CAE  58 4F                      addq.w     #$4, a7
00000CB0  59 4F                      subq.w     #$4, a7
00000CB2  A9 75                      .byte      0xa9, 0x75
00000CB4  20 1F                      move.l     (a7)+, d0
00000CB6  90 AE FF FC                sub.l      -$4(a6), d0
00000CBA  72 32                      moveq      #$32, d1
00000CBC  B0 81                      cmp.l      d1, d0
00000CBE  65 F0                      bcs.b      $cb0
00000CC0  2F 3C 03 ED 00 0A          move.l     #$3ed000a, -(a7)
00000CC6  4E B9 00 00 00 B8          jsr        $b8.l
00000CCC  58 4F                      addq.w     #$4, a7
00000CCE  0C 2D 00 01 D4 0E          cmpi.b     #$1, -$2bf2(a5)
00000CD4  66 50                      bne.b      $d26
00000CD6  30 2D D6 EC                move.w     -$2914(a5), d0
00000CDA  90 6D D6 E8                sub.w      -$2918(a5), d0
00000CDE  0C 40 00 64                cmpi.w     #$64, d0
00000CE2  6C 16                      bge.b      $cfa
00000CE4  30 2D D6 EC                move.w     -$2914(a5), d0
00000CE8  90 6D D6 E8                sub.w      -$2918(a5), d0
00000CEC  4A 40                      tst.w      d0
00000CEE  6F 0A                      ble.b      $cfa
00000CF0  59 6D D6 EC                subq.w     #$4, -$2914(a5)
00000CF4  58 6D D6 E8                addq.w     #$4, -$2918(a5)
00000CF8  60 08                      bra.b      $d02
00000CFA  5D 6D D6 EC                subq.w     #$6, -$2914(a5)
00000CFE  5C 6D D6 E8                addq.w     #$6, -$2918(a5)
00000D02  54 6D D6 E6                addq.w     #$2, -$291a(a5)
00000D06  55 6D D6 EA                subq.w     #$2, -$2916(a5)
00000D0A  30 2D D6 EC                move.w     -$2914(a5), d0
00000D0E  90 6D D6 E8                sub.w      -$2918(a5), d0
00000D12  4A 40                      tst.w      d0
00000D14  6E 10                      bgt.b      $d26
00000D16  42 2D FF F4                clr.b      -$c(a5)
00000D1A  42 2D FF EE                clr.b      -$12(a5)
00000D1E  42 2D FF F0                clr.b      -$10(a5)
00000D22  42 2D FF F2                clr.b      -$e(a5)
00000D26  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000D2A  48 68 00 02                pea.l      $2(a0)
00000D2E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000D32  48 68 00 02                pea.l      $2(a0)
00000D36  48 6E FF F4                pea.l      -$c(a6)
00000D3A  48 6E FF F4                pea.l      -$c(a6)
00000D3E  42 67                      clr.w      -(a7)
00000D40  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000D44  2F 28 00 18                move.l     $18(a0), -(a7)
00000D48  A8 EC                      .byte      0xa8, 0xec
00000D4A  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000D4E  48 68 00 02                pea.l      $2(a0)
00000D52  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000D56  48 68 00 02                pea.l      $2(a0)
00000D5A  48 6E FF F4                pea.l      -$c(a6)
00000D5E  48 6E FF F4                pea.l      -$c(a6)
00000D62  42 67                      clr.w      -(a7)
00000D64  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000D68  2F 28 00 18                move.l     $18(a0), -(a7)
00000D6C  A8 EC                      .byte      0xa8, 0xec
00000D6E  4E 5E                      unlk       a6
00000D70  4E 75                      rts

; MacsBug symbol trailer for HandleFight: 8B 48 61 6E 64 6C 65 46 69 67 68 74

HandlePlayer1: ; 00000D80..00000F8C
00000D80  4E 56 FF F8                link.w     a6, #$fff8
00000D84  2B 6D DC 82 DC 8A          move.l     -$237e(a5), -$2376(a5)
00000D8A  2B 6D DC 86 DC 8E          move.l     -$237a(a5), -$2372(a5)
00000D90  59 4F                      subq.w     #$4, a7
00000D92  A9 75                      .byte      0xa9, 0x75
00000D94  20 1F                      move.l     (a7)+, d0
00000D96  90 AD D7 9E                sub.l      -$2862(a5), d0
00000D9A  72 1E                      moveq      #$1e, d1
00000D9C  B0 81                      cmp.l      d1, d0
00000D9E  63 04                      bls.b      $da4
00000DA0  42 2D FF EE                clr.b      -$12(a5)
00000DA4  0C 2D 00 01 D7 80          cmpi.b     #$1, -$2880(a5)
00000DAA  67 08                      beq.b      $db4
00000DAC  0C 2D 00 01 D7 DC          cmpi.b     #$1, -$2824(a5)
00000DB2  66 06                      bne.b      $dba
00000DB4  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000DBA  0C 2D 00 01 D7 8A          cmpi.b     #$1, -$2876(a5)
00000DC0  66 2A                      bne.b      $dec
00000DC2  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00000DC8  66 1C                      bne.b      $de6
00000DCA  55 4F                      subq.w     #$2, a7
00000DCC  48 6D DC 82                pea.l      -$237e(a5)
00000DD0  48 6D D8 86                pea.l      -$277a(a5)
00000DD4  48 6E FF F8                pea.l      -$8(a6)
00000DD8  A8 AA                      .byte      0xa8, 0xaa
00000DDA  10 1F                      move.b     (a7)+, d0
00000DDC  67 0E                      beq.b      $dec
00000DDE  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000DE4  60 06                      bra.b      $dec
00000DE6  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000DEC  4A 6D FF F6                tst.w      -$a(a5)
00000DF0  6E 06                      bgt.b      $df8
00000DF2  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000DF8  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00000DFE  66 06                      bne.b      $e06
00000E00  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000E06  0C 2D 00 01 D7 52          cmpi.b     #$1, -$28ae(a5)
00000E0C  66 06                      bne.b      $e14
00000E0E  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00000E14  4A 2D FF EE                tst.b      -$12(a5)
00000E18  66 00 00 DA                bne.w      $ef4
00000E1C  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00000E20  4E B9 00 00 13 38          jsr        $1338.l
00000E26  53 00                      subq.b     #$1, d0
00000E28  54 4F                      addq.w     #$2, a7
00000E2A  66 0A                      bne.b      $e36
00000E2C  30 2D D8 06                move.w     -$27fa(a5), d0
00000E30  44 40                      neg.w      d0
00000E32  3B 40 DC AC                move.w     d0, -$2354(a5)
00000E36  3F 2D E3 54                move.w     -$1cac(a5), -(a7)
00000E3A  4E B9 00 00 13 38          jsr        $1338.l
00000E40  53 00                      subq.b     #$1, d0
00000E42  54 4F                      addq.w     #$2, a7
00000E44  66 06                      bne.b      $e4c
00000E46  3B 6D D8 06 DC AC          move.w     -$27fa(a5), -$2354(a5)
00000E4C  3F 2D E3 4A                move.w     -$1cb6(a5), -(a7)
00000E50  4E B9 00 00 13 38          jsr        $1338.l
00000E56  53 00                      subq.b     #$1, d0
00000E58  54 4F                      addq.w     #$2, a7
00000E5A  66 06                      bne.b      $e62
00000E5C  3B 6D D8 06 DC AA          move.w     -$27fa(a5), -$2356(a5)
00000E62  3F 2D CF 20                move.w     -$30e0(a5), -(a7)
00000E66  4E B9 00 00 13 38          jsr        $1338.l
00000E6C  53 00                      subq.b     #$1, d0
00000E6E  54 4F                      addq.w     #$2, a7
00000E70  66 0A                      bne.b      $e7c
00000E72  30 2D D8 06                move.w     -$27fa(a5), d0
00000E76  44 40                      neg.w      d0
00000E78  3B 40 DC AA                move.w     d0, -$2356(a5)
00000E7C  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00000E80  4E B9 00 00 13 38          jsr        $1338.l
00000E86  4A 00                      tst.b      d0
00000E88  54 4F                      addq.w     #$2, a7
00000E8A  66 14                      bne.b      $ea0
00000E8C  3F 2D E3 54                move.w     -$1cac(a5), -(a7)
00000E90  4E B9 00 00 13 38          jsr        $1338.l
00000E96  4A 00                      tst.b      d0
00000E98  54 4F                      addq.w     #$2, a7
00000E9A  66 04                      bne.b      $ea0
00000E9C  42 6D DC AC                clr.w      -$2354(a5)
00000EA0  3F 2D E3 4A                move.w     -$1cb6(a5), -(a7)
00000EA4  4E B9 00 00 13 38          jsr        $1338.l
00000EAA  4A 00                      tst.b      d0
00000EAC  54 4F                      addq.w     #$2, a7
00000EAE  66 14                      bne.b      $ec4
00000EB0  3F 2D CF 20                move.w     -$30e0(a5), -(a7)
00000EB4  4E B9 00 00 13 38          jsr        $1338.l
00000EBA  4A 00                      tst.b      d0
00000EBC  54 4F                      addq.w     #$2, a7
00000EBE  66 04                      bne.b      $ec4
00000EC0  42 6D DC AA                clr.w      -$2356(a5)
00000EC4  0C 6D 00 0B D4 1C          cmpi.w     #$b, -$2be4(a5)
00000ECA  66 18                      bne.b      $ee4
00000ECC  48 6D DC 82                pea.l      -$237e(a5)
00000ED0  30 2D DC AA                move.w     -$2356(a5), d0
00000ED4  44 40                      neg.w      d0
00000ED6  3F 00                      move.w     d0, -(a7)
00000ED8  30 2D DC AC                move.w     -$2354(a5), d0
00000EDC  44 40                      neg.w      d0
00000EDE  3F 00                      move.w     d0, -(a7)
00000EE0  A8 A8                      .byte      0xa8, 0xa8
00000EE2  60 20                      bra.b      $f04
00000EE4  48 6D DC 82                pea.l      -$237e(a5)
00000EE8  3F 2D DC AA                move.w     -$2356(a5), -(a7)
00000EEC  3F 2D DC AC                move.w     -$2354(a5), -(a7)
00000EF0  A8 A8                      .byte      0xa8, 0xa8
00000EF2  60 10                      bra.b      $f04
00000EF4  0C 2D 00 01 FF EE          cmpi.b     #$1, -$12(a5)
00000EFA  66 08                      bne.b      $f04
00000EFC  48 6D DC 82                pea.l      -$237e(a5)
00000F00  42 A7                      clr.l      -(a7)
00000F02  A8 A8                      .byte      0xa8, 0xa8
00000F04  0C 6D 00 3C D4 1C          cmpi.w     #$3c, -$2be4(a5)
00000F0A  66 0C                      bne.b      $f18
00000F0C  48 6D DC 82                pea.l      -$237e(a5)
00000F10  2F 3C 00 04 00 00          move.l     #$40000, -(a7)
00000F16  A8 A8                      .byte      0xa8, 0xa8
00000F18  0C 6D 00 3E D4 1C          cmpi.w     #$3e, -$2be4(a5)
00000F1E  66 0C                      bne.b      $f2c
00000F20  48 6D DC 82                pea.l      -$237e(a5)
00000F24  2F 3C FF FC 00 00          move.l     #$fffc0000, -(a7)
00000F2A  A8 A8                      .byte      0xa8, 0xa8
00000F2C  0C 6D 01 B0 DC 86          cmpi.w     #$1b0, -$237a(a5)
00000F32  6F 10                      ble.b      $f44
00000F34  3B 7C 01 B0 DC 86          move.w     #$1b0, -$237a(a5)
00000F3A  70 D0                      moveq      #$d0, d0
00000F3C  D0 6D DC 86                add.w      -$237a(a5), d0
00000F40  3B 40 DC 82                move.w     d0, -$237e(a5)
00000F44  0C 6D 00 54 DC 82          cmpi.w     #$54, -$237e(a5)
00000F4A  6C 10                      bge.b      $f5c
00000F4C  3B 7C 00 54 DC 82          move.w     #$54, -$237e(a5)
00000F52  70 30                      moveq      #$30, d0
00000F54  D0 6D DC 82                add.w      -$237e(a5), d0
00000F58  3B 40 DC 86                move.w     d0, -$237a(a5)
00000F5C  0C 6D 00 70 DC 88          cmpi.w     #$70, -$2378(a5)
00000F62  6F 10                      ble.b      $f74
00000F64  30 2D D8 06                move.w     -$27fa(a5), d0
00000F68  91 6D DC 88                sub.w      d0, -$2378(a5)
00000F6C  30 2D D8 06                move.w     -$27fa(a5), d0
00000F70  91 6D DC 84                sub.w      d0, -$237c(a5)
00000F74  4A 6D DC 84                tst.w      -$237c(a5)
00000F78  6C 0E                      bge.b      $f88
00000F7A  42 6D DC 84                clr.w      -$237c(a5)
00000F7E  70 10                      moveq      #$10, d0
00000F80  D0 6D DC 84                add.w      -$237c(a5), d0
00000F84  3B 40 DC 88                move.w     d0, -$2378(a5)
00000F88  4E 5E                      unlk       a6
00000F8A  4E 75                      rts

; MacsBug symbol trailer for HandlePlayer1: 8D 48 61 6E 64 6C 65 50 6C 61 79 65 72 31

HandlePlayer2: ; 00000F9C..0000118E
00000F9C  4E 56 FF F8                link.w     a6, #$fff8
00000FA0  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
00000FA6  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
00000FAC  59 4F                      subq.w     #$4, a7
00000FAE  A9 75                      .byte      0xa9, 0x75
00000FB0  20 1F                      move.l     (a7)+, d0
00000FB2  90 AD D7 9A                sub.l      -$2866(a5), d0
00000FB6  72 1E                      moveq      #$1e, d1
00000FB8  B0 81                      cmp.l      d1, d0
00000FBA  63 04                      bls.b      $fc0
00000FBC  42 2D FF F0                clr.b      -$10(a5)
00000FC0  0C 2D 00 01 D7 7E          cmpi.b     #$1, -$2882(a5)
00000FC6  67 08                      beq.b      $fd0
00000FC8  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
00000FCE  66 06                      bne.b      $fd6
00000FD0  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00000FD6  0C 2D 00 01 D7 8C          cmpi.b     #$1, -$2874(a5)
00000FDC  66 2A                      bne.b      $1008
00000FDE  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00000FE4  66 1C                      bne.b      $1002
00000FE6  55 4F                      subq.w     #$2, a7
00000FE8  48 6D DC 56                pea.l      -$23aa(a5)
00000FEC  48 6D D8 8E                pea.l      -$2772(a5)
00000FF0  48 6E FF F8                pea.l      -$8(a6)
00000FF4  A8 AA                      .byte      0xa8, 0xaa
00000FF6  10 1F                      move.b     (a7)+, d0
00000FF8  67 0E                      beq.b      $1008
00000FFA  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001000  60 06                      bra.b      $1008
00001002  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001008  4A 6D FF FA                tst.w      -$6(a5)
0000100C  6E 06                      bgt.b      $1014
0000100E  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001014  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
0000101A  66 06                      bne.b      $1022
0000101C  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001022  4A 2D FF F0                tst.b      -$10(a5)
00001026  66 00 00 DA                bne.w      $1102
0000102A  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000102E  4E B9 00 00 13 38          jsr        $1338.l
00001034  53 00                      subq.b     #$1, d0
00001036  54 4F                      addq.w     #$2, a7
00001038  66 0A                      bne.b      $1044
0000103A  30 2D D8 06                move.w     -$27fa(a5), d0
0000103E  44 40                      neg.w      d0
00001040  3B 40 DC 80                move.w     d0, -$2380(a5)
00001044  3F 2D E3 66                move.w     -$1c9a(a5), -(a7)
00001048  4E B9 00 00 13 38          jsr        $1338.l
0000104E  53 00                      subq.b     #$1, d0
00001050  54 4F                      addq.w     #$2, a7
00001052  66 06                      bne.b      $105a
00001054  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
0000105A  3F 2D E3 5C                move.w     -$1ca4(a5), -(a7)
0000105E  4E B9 00 00 13 38          jsr        $1338.l
00001064  53 00                      subq.b     #$1, d0
00001066  54 4F                      addq.w     #$2, a7
00001068  66 06                      bne.b      $1070
0000106A  3B 6D D8 06 DC 7E          move.w     -$27fa(a5), -$2382(a5)
00001070  3F 2D CF 1A                move.w     -$30e6(a5), -(a7)
00001074  4E B9 00 00 13 38          jsr        $1338.l
0000107A  53 00                      subq.b     #$1, d0
0000107C  54 4F                      addq.w     #$2, a7
0000107E  66 0A                      bne.b      $108a
00001080  30 2D D8 06                move.w     -$27fa(a5), d0
00001084  44 40                      neg.w      d0
00001086  3B 40 DC 7E                move.w     d0, -$2382(a5)
0000108A  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000108E  4E B9 00 00 13 38          jsr        $1338.l
00001094  4A 00                      tst.b      d0
00001096  54 4F                      addq.w     #$2, a7
00001098  66 14                      bne.b      $10ae
0000109A  3F 2D E3 66                move.w     -$1c9a(a5), -(a7)
0000109E  4E B9 00 00 13 38          jsr        $1338.l
000010A4  4A 00                      tst.b      d0
000010A6  54 4F                      addq.w     #$2, a7
000010A8  66 04                      bne.b      $10ae
000010AA  42 6D DC 80                clr.w      -$2380(a5)
000010AE  3F 2D CF 1A                move.w     -$30e6(a5), -(a7)
000010B2  4E B9 00 00 13 38          jsr        $1338.l
000010B8  4A 00                      tst.b      d0
000010BA  54 4F                      addq.w     #$2, a7
000010BC  66 14                      bne.b      $10d2
000010BE  3F 2D E3 5C                move.w     -$1ca4(a5), -(a7)
000010C2  4E B9 00 00 13 38          jsr        $1338.l
000010C8  4A 00                      tst.b      d0
000010CA  54 4F                      addq.w     #$2, a7
000010CC  66 04                      bne.b      $10d2
000010CE  42 6D DC 7E                clr.w      -$2382(a5)
000010D2  0C 6D 00 0B D4 1C          cmpi.w     #$b, -$2be4(a5)
000010D8  66 18                      bne.b      $10f2
000010DA  48 6D DC 56                pea.l      -$23aa(a5)
000010DE  30 2D DC 7E                move.w     -$2382(a5), d0
000010E2  44 40                      neg.w      d0
000010E4  3F 00                      move.w     d0, -(a7)
000010E6  30 2D DC 80                move.w     -$2380(a5), d0
000010EA  44 40                      neg.w      d0
000010EC  3F 00                      move.w     d0, -(a7)
000010EE  A8 A8                      .byte      0xa8, 0xa8
000010F0  60 18                      bra.b      $110a
000010F2  48 6D DC 56                pea.l      -$23aa(a5)
000010F6  3F 2D DC 7E                move.w     -$2382(a5), -(a7)
000010FA  3F 2D DC 80                move.w     -$2380(a5), -(a7)
000010FE  A8 A8                      .byte      0xa8, 0xa8
00001100  60 08                      bra.b      $110a
00001102  48 6D DC 56                pea.l      -$23aa(a5)
00001106  42 A7                      clr.l      -(a7)
00001108  A8 A8                      .byte      0xa8, 0xa8
0000110A  0C 6D 00 3C D4 1C          cmpi.w     #$3c, -$2be4(a5)
00001110  66 0C                      bne.b      $111e
00001112  48 6D DC 56                pea.l      -$23aa(a5)
00001116  2F 3C 00 04 00 00          move.l     #$40000, -(a7)
0000111C  A8 A8                      .byte      0xa8, 0xa8
0000111E  0C 6D 00 3E D4 1C          cmpi.w     #$3e, -$2be4(a5)
00001124  66 0C                      bne.b      $1132
00001126  48 6D DC 56                pea.l      -$23aa(a5)
0000112A  2F 3C FF FC 00 00          move.l     #$fffc0000, -(a7)
00001130  A8 A8                      .byte      0xa8, 0xa8
00001132  0C 6D 01 B0 DC 5A          cmpi.w     #$1b0, -$23a6(a5)
00001138  6F 10                      ble.b      $114a
0000113A  3B 7C 01 B0 DC 5A          move.w     #$1b0, -$23a6(a5)
00001140  70 D0                      moveq      #$d0, d0
00001142  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001146  3B 40 DC 56                move.w     d0, -$23aa(a5)
0000114A  0C 6D 00 54 DC 56          cmpi.w     #$54, -$23aa(a5)
00001150  6C 10                      bge.b      $1162
00001152  3B 7C 00 54 DC 56          move.w     #$54, -$23aa(a5)
00001158  70 30                      moveq      #$30, d0
0000115A  D0 6D DC 56                add.w      -$23aa(a5), d0
0000115E  3B 40 DC 5A                move.w     d0, -$23a6(a5)
00001162  0C 6D 02 04 DC 5C          cmpi.w     #$204, -$23a4(a5)
00001168  6F 10                      ble.b      $117a
0000116A  3B 7C 02 04 DC 5C          move.w     #$204, -$23a4(a5)
00001170  70 F0                      moveq      #$f0, d0
00001172  D0 6D DC 5C                add.w      -$23a4(a5), d0
00001176  3B 40 DC 58                move.w     d0, -$23a8(a5)
0000117A  0C 6D 01 94 DC 58          cmpi.w     #$194, -$23a8(a5)
00001180  6C 08                      bge.b      $118a
00001182  5C 6D DC 5C                addq.w     #$6, -$23a4(a5)
00001186  5C 6D DC 58                addq.w     #$6, -$23a8(a5)
0000118A  4E 5E                      unlk       a6
0000118C  4E 75                      rts

; MacsBug symbol trailer for HandlePlayer2: 8D 48 61 6E 64 6C 65 50 6C 61 79 65 72 32

Player1EnergyOff: ; 0000119E..000011F8
0000119E  4E 56 00 00                link.w     a6, #$0
000011A2  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
000011A8  66 34                      bne.b      $11de
000011AA  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
000011B0  67 08                      beq.b      $11ba
000011B2  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
000011B8  66 24                      bne.b      $11de
000011BA  4A 6D FF FA                tst.w      -$6(a5)
000011BE  6F 2A                      ble.b      $11ea
000011C0  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
000011C6  66 06                      bne.b      $11ce
000011C8  04 6D 00 0F FF F6          subi.w     #$f, -$a(a5)
000011CE  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
000011D4  66 14                      bne.b      $11ea
000011D6  04 6D 00 14 FF F6          subi.w     #$14, -$a(a5)
000011DC  60 0C                      bra.b      $11ea
000011DE  4A 6D FF FA                tst.w      -$6(a5)
000011E2  6F 06                      ble.b      $11ea
000011E4  04 6D 00 0A FF F6          subi.w     #$a, -$a(a5)
000011EA  4A 6D FF F6                tst.w      -$a(a5)
000011EE  6C 04                      bge.b      $11f4
000011F0  42 6D FF F6                clr.w      -$a(a5)
000011F4  4E 5E                      unlk       a6
000011F6  4E 75                      rts

; MacsBug symbol trailer for Player1EnergyOff: 90 50 6C 61 79 65 72 31 45 6E 65 72 67 79 4F 66 66

Player2EnergyOff: ; 0000120C..0000122A
0000120C  4E 56 00 00                link.w     a6, #$0
00001210  4A 6D FF F6                tst.w      -$a(a5)
00001214  6F 06                      ble.b      $121c
00001216  04 6D 00 0A FF FA          subi.w     #$a, -$6(a5)
0000121C  4A 6D FF FA                tst.w      -$6(a5)
00001220  6C 04                      bge.b      $1226
00001222  42 6D FF FA                clr.w      -$6(a5)
00001226  4E 5E                      unlk       a6
00001228  4E 75                      rts

; MacsBug symbol trailer for Player2EnergyOff: 90 50 6C 61 79 65 72 32 45 6E 65 72 67 79 4F 66 66

FastCounter: ; 0000123E..000012AC
0000123E  4E 56 00 00                link.w     a6, #$0
00001242  3F 2D CF 20                move.w     -$30e0(a5), -(a7)
00001246  4E B9 00 00 13 38          jsr        $1338.l
0000124C  53 00                      subq.b     #$1, d0
0000124E  54 4F                      addq.w     #$2, a7
00001250  67 50                      beq.b      $12a2
00001252  3F 2D E3 54                move.w     -$1cac(a5), -(a7)
00001256  4E B9 00 00 13 38          jsr        $1338.l
0000125C  53 00                      subq.b     #$1, d0
0000125E  54 4F                      addq.w     #$2, a7
00001260  67 40                      beq.b      $12a2
00001262  3F 2D E3 4A                move.w     -$1cb6(a5), -(a7)
00001266  4E B9 00 00 13 38          jsr        $1338.l
0000126C  53 00                      subq.b     #$1, d0
0000126E  54 4F                      addq.w     #$2, a7
00001270  67 30                      beq.b      $12a2
00001272  3F 2D CF 1A                move.w     -$30e6(a5), -(a7)
00001276  4E B9 00 00 13 38          jsr        $1338.l
0000127C  53 00                      subq.b     #$1, d0
0000127E  54 4F                      addq.w     #$2, a7
00001280  67 20                      beq.b      $12a2
00001282  3F 2D E3 66                move.w     -$1c9a(a5), -(a7)
00001286  4E B9 00 00 13 38          jsr        $1338.l
0000128C  53 00                      subq.b     #$1, d0
0000128E  54 4F                      addq.w     #$2, a7
00001290  67 10                      beq.b      $12a2
00001292  3F 2D E3 5C                move.w     -$1ca4(a5), -(a7)
00001296  4E B9 00 00 13 38          jsr        $1338.l
0000129C  53 00                      subq.b     #$1, d0
0000129E  54 4F                      addq.w     #$2, a7
000012A0  66 04                      bne.b      $12a6
000012A2  70 01                      moveq      #$1, d0
000012A4  60 02                      bra.b      $12a8
000012A6  70 00                      moveq      #$0, d0
000012A8  4E 5E                      unlk       a6
000012AA  4E 75                      rts

; MacsBug symbol trailer for FastCounter: 8B 46 61 73 74 43 6F 75 6E 74 65 72

FasterKredits: ; 000012BA..00001328
000012BA  4E 56 00 00                link.w     a6, #$0
000012BE  3F 2D CF 20                move.w     -$30e0(a5), -(a7)
000012C2  4E B9 00 00 13 38          jsr        $1338.l
000012C8  53 00                      subq.b     #$1, d0
000012CA  54 4F                      addq.w     #$2, a7
000012CC  67 50                      beq.b      $131e
000012CE  3F 2D E3 54                move.w     -$1cac(a5), -(a7)
000012D2  4E B9 00 00 13 38          jsr        $1338.l
000012D8  53 00                      subq.b     #$1, d0
000012DA  54 4F                      addq.w     #$2, a7
000012DC  67 40                      beq.b      $131e
000012DE  3F 2D E3 4A                move.w     -$1cb6(a5), -(a7)
000012E2  4E B9 00 00 13 38          jsr        $1338.l
000012E8  53 00                      subq.b     #$1, d0
000012EA  54 4F                      addq.w     #$2, a7
000012EC  67 30                      beq.b      $131e
000012EE  3F 2D CF 1A                move.w     -$30e6(a5), -(a7)
000012F2  4E B9 00 00 13 38          jsr        $1338.l
000012F8  53 00                      subq.b     #$1, d0
000012FA  54 4F                      addq.w     #$2, a7
000012FC  67 20                      beq.b      $131e
000012FE  3F 2D E3 66                move.w     -$1c9a(a5), -(a7)
00001302  4E B9 00 00 13 38          jsr        $1338.l
00001308  53 00                      subq.b     #$1, d0
0000130A  54 4F                      addq.w     #$2, a7
0000130C  67 10                      beq.b      $131e
0000130E  3F 2D E3 5C                move.w     -$1ca4(a5), -(a7)
00001312  4E B9 00 00 13 38          jsr        $1338.l
00001318  53 00                      subq.b     #$1, d0
0000131A  54 4F                      addq.w     #$2, a7
0000131C  66 04                      bne.b      $1322
0000131E  70 01                      moveq      #$1, d0
00001320  60 02                      bra.b      $1324
00001322  70 00                      moveq      #$0, d0
00001324  4E 5E                      unlk       a6
00001326  4E 75                      rts

; MacsBug symbol trailer for FasterKredits: 8D 46 61 73 74 65 72 4B 72 65 64 69 74 73

CheckKey: ; 00001338..0000137A
00001338  4E 56 FF F0                link.w     a6, #$fff0
0000133C  48 E7 1C 20                movem.l    d3-d5/a2, -(a7)
00001340  3A 2E 00 08                move.w     $8(a6), d5
00001344  48 6E FF F0                pea.l      -$10(a6)
00001348  A9 76                      .byte      0xa9, 0x76
0000134A  36 05                      move.w     d5, d3
0000134C  E6 43                      asr.w      #$3, d3
0000134E  45 EE FF F0                lea.l      -$10(a6), a2
00001352  18 32 30 00                move.b     (a2, d3.w), d4
00001356  30 05                      move.w     d5, d0
00001358  02 40 00 07                andi.w     #$7, d0
0000135C  76 01                      moveq      #$1, d3
0000135E  E1 AB                      lsl.l      d0, d3
00001360  10 03                      move.b     d3, d0
00001362  48 80                      ext.w      d0
00001364  12 04                      move.b     d4, d1
00001366  48 81                      ext.w      d1
00001368  C2 40                      and.w      d0, d1
0000136A  56 C1                      sne.b      d1
0000136C  44 01                      neg.b      d1
0000136E  48 81                      ext.w      d1
00001370  10 01                      move.b     d1, d0
00001372  4C DF 04 38                movem.l    (a7)+, d3-d5/a2
00001376  4E 5E                      unlk       a6
00001378  4E 75                      rts

; MacsBug symbol trailer for CheckKey: 88 43 68 65 63 6B 4B 65 79

CPUFireLimits: ; 00001386..0000141C
00001386  4E 56 00 00                link.w     a6, #$0
0000138A  4A 2D D7 7E                tst.b      -$2882(a5)
0000138E  67 06                      beq.b      $1396
00001390  4A 2D D7 DA                tst.b      -$2826(a5)
00001394  66 06                      bne.b      $139c
00001396  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
0000139C  0C 2D 00 01 D4 02          cmpi.b     #$1, -$2bfe(a5)
000013A2  66 04                      bne.b      $13a8
000013A4  42 2D FF DC                clr.b      -$24(a5)
000013A8  4A 6D FF FA                tst.w      -$6(a5)
000013AC  6F 06                      ble.b      $13b4
000013AE  4A 6D FF F6                tst.w      -$a(a5)
000013B2  6E 04                      bgt.b      $13b8
000013B4  42 2D FF DC                clr.b      -$24(a5)
000013B8  0C 2D 00 01 D7 7E          cmpi.b     #$1, -$2882(a5)
000013BE  67 08                      beq.b      $13c8
000013C0  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
000013C6  66 04                      bne.b      $13cc
000013C8  42 2D FF DC                clr.b      -$24(a5)
000013CC  0C 2D 00 01 D7 DC          cmpi.b     #$1, -$2824(a5)
000013D2  67 08                      beq.b      $13dc
000013D4  0C 2D 00 01 D7 80          cmpi.b     #$1, -$2880(a5)
000013DA  66 04                      bne.b      $13e0
000013DC  42 2D FF DC                clr.b      -$24(a5)
000013E0  0C 2D 00 01 CF 6C          cmpi.b     #$1, -$3094(a5)
000013E6  66 04                      bne.b      $13ec
000013E8  42 2D FF DC                clr.b      -$24(a5)
000013EC  0C 2D 00 01 D7 56          cmpi.b     #$1, -$28aa(a5)
000013F2  67 08                      beq.b      $13fc
000013F4  0C 2D 00 01 D7 54          cmpi.b     #$1, -$28ac(a5)
000013FA  66 04                      bne.b      $1400
000013FC  42 2D FF DC                clr.b      -$24(a5)
00001400  0C 2D 00 01 CF E8          cmpi.b     #$1, -$3018(a5)
00001406  66 04                      bne.b      $140c
00001408  42 2D FF DC                clr.b      -$24(a5)
0000140C  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00001412  66 04                      bne.b      $1418
00001414  42 2D FF DC                clr.b      -$24(a5)
00001418  4E 5E                      unlk       a6
0000141A  4E 75                      rts

; MacsBug symbol trailer for CPUFireLimits: 8D 43 50 55 46 69 72 65 4C 69 6D 69 74 73

CPUMoveLimits: ; 0000142C..0000149A
0000142C  4E 56 00 00                link.w     a6, #$0
00001430  59 4F                      subq.w     #$4, a7
00001432  A9 75                      .byte      0xa9, 0x75
00001434  20 1F                      move.l     (a7)+, d0
00001436  90 AD D7 9A                sub.l      -$2866(a5), d0
0000143A  72 1E                      moveq      #$1e, d1
0000143C  B0 81                      cmp.l      d1, d0
0000143E  63 0A                      bls.b      $144a
00001440  4A 2D D7 DA                tst.b      -$2826(a5)
00001444  66 04                      bne.b      $144a
00001446  42 2D FF F0                clr.b      -$10(a5)
0000144A  0C 2D 00 01 D7 7E          cmpi.b     #$1, -$2882(a5)
00001450  67 10                      beq.b      $1462
00001452  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
00001458  67 08                      beq.b      $1462
0000145A  0C 2D 00 01 D7 8C          cmpi.b     #$1, -$2874(a5)
00001460  66 06                      bne.b      $1468
00001462  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001468  4A 6D FF FA                tst.w      -$6(a5)
0000146C  6F 06                      ble.b      $1474
0000146E  4A 6D FF F6                tst.w      -$a(a5)
00001472  6E 06                      bgt.b      $147a
00001474  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
0000147A  0C 2D 00 01 FF F4          cmpi.b     #$1, -$c(a5)
00001480  66 06                      bne.b      $1488
00001482  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001488  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
0000148E  66 06                      bne.b      $1496
00001490  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001496  4E 5E                      unlk       a6
00001498  4E 75                      rts

; MacsBug symbol trailer for CPUMoveLimits: 8D 43 50 55 4D 6F 76 65 4C 69 6D 69 74 73

CPUOffScreen: ; 000014AA..00001502
000014AA  4E 56 00 00                link.w     a6, #$0
000014AE  0C 6D 01 B0 DC 5A          cmpi.w     #$1b0, -$23a6(a5)
000014B4  6F 0C                      ble.b      $14c2
000014B6  42 6D DC 80                clr.w      -$2380(a5)
000014BA  5D 6D DC 5A                subq.w     #$6, -$23a6(a5)
000014BE  5D 6D DC 56                subq.w     #$6, -$23aa(a5)
000014C2  0C 6D 00 54 DC 56          cmpi.w     #$54, -$23aa(a5)
000014C8  6C 0C                      bge.b      $14d6
000014CA  42 6D DC 80                clr.w      -$2380(a5)
000014CE  5C 6D DC 5A                addq.w     #$6, -$23a6(a5)
000014D2  5C 6D DC 56                addq.w     #$6, -$23aa(a5)
000014D6  0C 6D 02 04 DC 5C          cmpi.w     #$204, -$23a4(a5)
000014DC  6F 0C                      ble.b      $14ea
000014DE  42 6D DC 7E                clr.w      -$2382(a5)
000014E2  5D 6D DC 5C                subq.w     #$6, -$23a4(a5)
000014E6  5D 6D DC 58                subq.w     #$6, -$23a8(a5)
000014EA  0C 6D 01 94 DC 58          cmpi.w     #$194, -$23a8(a5)
000014F0  6C 0C                      bge.b      $14fe
000014F2  42 6D DC 7E                clr.w      -$2382(a5)
000014F6  5C 6D DC 5C                addq.w     #$6, -$23a4(a5)
000014FA  5C 6D DC 58                addq.w     #$6, -$23a8(a5)
000014FE  4E 5E                      unlk       a6
00001500  4E 75                      rts

; MacsBug symbol trailer for CPUOffScreen: 8C 43 50 55 4F 66 66 53 63 72 65 65 6E

CPUDodge: ; 00001512..00001654
00001512  4E 56 00 00                link.w     a6, #$0
00001516  4A 2D FF F0                tst.b      -$10(a5)
0000151A  66 00 01 24                bne.w      $1640
0000151E  48 6D DC 56                pea.l      -$23aa(a5)
00001522  3F 2D DC 7E                move.w     -$2382(a5), -(a7)
00001526  3F 2D DC 80                move.w     -$2380(a5), -(a7)
0000152A  A8 A8                      .byte      0xa8, 0xa8
0000152C  0C 6D 00 01 FF E0          cmpi.w     #$1, -$20(a5)
00001532  66 2E                      bne.b      $1562
00001534  0C 2D 00 01 D7 5A          cmpi.b     #$1, -$28a6(a5)
0000153A  66 0E                      bne.b      $154a
0000153C  48 6D DC 56                pea.l      -$23aa(a5)
00001540  2F 3C 00 00 FF FA          move.l     #$fffa, -(a7)
00001546  A8 A8                      .byte      0xa8, 0xa8
00001548  60 18                      bra.b      $1562
0000154A  4A 2D D7 58                tst.b      -$28a8(a5)
0000154E  66 12                      bne.b      $1562
00001550  0C 6D 01 FA DC 5C          cmpi.w     #$1fa, -$23a4(a5)
00001556  6C 0A                      bge.b      $1562
00001558  48 6D DC 56                pea.l      -$23aa(a5)
0000155C  48 78 00 06                pea.l      $6.w
00001560  A8 A8                      .byte      0xa8, 0xa8
00001562  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
00001568  66 36                      bne.b      $15a0
0000156A  0C 2D 00 01 D7 AA          cmpi.b     #$1, -$2856(a5)
00001570  66 16                      bne.b      $1588
00001572  0C 6D 00 03 D7 A8          cmpi.w     #$3, -$2858(a5)
00001578  66 26                      bne.b      $15a0
0000157A  48 6D DC 56                pea.l      -$23aa(a5)
0000157E  2F 3C 00 00 FF FA          move.l     #$fffa, -(a7)
00001584  A8 A8                      .byte      0xa8, 0xa8
00001586  60 18                      bra.b      $15a0
00001588  4A 2D D7 AA                tst.b      -$2856(a5)
0000158C  66 12                      bne.b      $15a0
0000158E  0C 6D 01 FA DC 5C          cmpi.w     #$1fa, -$23a4(a5)
00001594  6C 0A                      bge.b      $15a0
00001596  48 6D DC 56                pea.l      -$23aa(a5)
0000159A  48 78 00 06                pea.l      $6.w
0000159E  A8 A8                      .byte      0xa8, 0xa8
000015A0  0C 6D 00 09 FF E0          cmpi.w     #$9, -$20(a5)
000015A6  66 2E                      bne.b      $15d6
000015A8  0C 2D 00 01 D0 62          cmpi.b     #$1, -$2f9e(a5)
000015AE  66 0E                      bne.b      $15be
000015B0  48 6D DC 56                pea.l      -$23aa(a5)
000015B4  2F 3C 00 00 FF FA          move.l     #$fffa, -(a7)
000015BA  A8 A8                      .byte      0xa8, 0xa8
000015BC  60 18                      bra.b      $15d6
000015BE  4A 2D D0 62                tst.b      -$2f9e(a5)
000015C2  66 12                      bne.b      $15d6
000015C4  0C 6D 01 FA DC 5C          cmpi.w     #$1fa, -$23a4(a5)
000015CA  6C 0A                      bge.b      $15d6
000015CC  48 6D DC 56                pea.l      -$23aa(a5)
000015D0  48 78 00 06                pea.l      $6.w
000015D4  A8 A8                      .byte      0xa8, 0xa8
000015D6  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
000015DC  66 72                      bne.b      $1650
000015DE  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
000015E4  66 6A                      bne.b      $1650
000015E6  30 2D DC 32                move.w     -$23ce(a5), d0
000015EA  B0 6D DC 56                cmp.w      -$23aa(a5), d0
000015EE  6F 60                      ble.b      $1650
000015F0  30 2D DC 36                move.w     -$23ca(a5), d0
000015F4  B0 6D DC 5A                cmp.w      -$23a6(a5), d0
000015F8  6C 56                      bge.b      $1650
000015FA  2F 2D DE C6                move.l     -$213a(a5), -(a7)
000015FE  4E B9 00 00 00 98          jsr        $98.l
00001604  30 2D DC 58                move.w     -$23a8(a5), d0
00001608  57 40                      subq.w     #$3, d0
0000160A  3B 40 CF A2                move.w     d0, -$305e(a5)
0000160E  70 16                      moveq      #$16, d0
00001610  D0 6D CF A2                add.w      -$305e(a5), d0
00001614  3B 40 CF A6                move.w     d0, -$305a(a5)
00001618  30 2D DC 56                move.w     -$23aa(a5), d0
0000161C  57 40                      subq.w     #$3, d0
0000161E  3B 40 CF A0                move.w     d0, -$3060(a5)
00001622  70 36                      moveq      #$36, d0
00001624  D0 6D CF A0                add.w      -$3060(a5), d0
00001628  3B 40 CF A4                move.w     d0, -$305c(a5)
0000162C  1B 7C 00 01 CF AA          move.b     #$1, -$3056(a5)
00001632  42 2D FF DC                clr.b      -$24(a5)
00001636  A9 75                      .byte      0xa9, 0x75
00001638  20 1F                      move.l     (a7)+, d0
0000163A  2B 40 CF 9C                move.l     d0, -$3064(a5)
0000163E  60 10                      bra.b      $1650
00001640  0C 2D 00 01 FF F0          cmpi.b     #$1, -$10(a5)
00001646  66 08                      bne.b      $1650
00001648  48 6D DC 56                pea.l      -$23aa(a5)
0000164C  42 A7                      clr.l      -(a7)
0000164E  A8 A8                      .byte      0xa8, 0xa8
00001650  4E 5E                      unlk       a6
00001652  4E 75                      rts

; MacsBug symbol trailer for CPUDodge: 88 43 50 55 44 6F 64 67 65

HandlePlayer2CPUEasy: ; 00001660..00001784
00001660  4E 56 00 00                link.w     a6, #$0
00001664  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
0000166A  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
00001670  0C 6D 01 90 DC B4          cmpi.w     #$190, -$234c(a5)
00001676  6F 46                      ble.b      $16be
00001678  4A 6D DD 0E                tst.w      -$22f2(a5)
0000167C  6F 32                      ble.b      $16b0
0000167E  70 0F                      moveq      #$f, d0
00001680  D0 6D DC 56                add.w      -$23aa(a5), d0
00001684  B0 6D DC AE                cmp.w      -$2352(a5), d0
00001688  6F 0E                      ble.b      $1698
0000168A  42 6D DC 7E                clr.w      -$2382(a5)
0000168E  30 2D D8 06                move.w     -$27fa(a5), d0
00001692  44 40                      neg.w      d0
00001694  3B 40 DC 80                move.w     d0, -$2380(a5)
00001698  70 F1                      moveq      #$f1, d0
0000169A  D0 6D DC 5A                add.w      -$23a6(a5), d0
0000169E  B0 6D DC B2                cmp.w      -$234e(a5), d0
000016A2  6C 1A                      bge.b      $16be
000016A4  42 6D DC 7E                clr.w      -$2382(a5)
000016A8  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
000016AE  60 0E                      bra.b      $16be
000016B0  4A 6D DD 0E                tst.w      -$22f2(a5)
000016B4  6C 08                      bge.b      $16be
000016B6  42 6D DC 7E                clr.w      -$2382(a5)
000016BA  42 6D DC 80                clr.w      -$2380(a5)
000016BE  4E BA FC C6                jsr        $1386(pc)
000016C2  4A 6D D7 36                tst.w      -$28ca(a5)
000016C6  66 36                      bne.b      $16fe
000016C8  55 4F                      subq.w     #$2, a7
000016CA  A8 61                      .byte      0xa8, 0x61
000016CC  30 1F                      move.w     (a7)+, d0
000016CE  02 40 7F FF                andi.w     #$7fff, d0
000016D2  48 C0                      ext.l      d0
000016D4  81 FC 00 06                divs.w     #$6, d0
000016D8  48 40                      swap       d0
000016DA  52 40                      addq.w     #$1, d0
000016DC  48 C0                      ext.l      d0
000016DE  81 FC 00 04                divs.w     #$4, d0
000016E2  48 40                      swap       d0
000016E4  4A 40                      tst.w      d0
000016E6  66 72                      bne.b      $175a
000016E8  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
000016EE  66 6A                      bne.b      $175a
000016F0  4A 6D DD 0E                tst.w      -$22f2(a5)
000016F4  6C 64                      bge.b      $175a
000016F6  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000016FC  60 5C                      bra.b      $175a
000016FE  0C 6D 00 01 D7 36          cmpi.w     #$1, -$28ca(a5)
00001704  66 54                      bne.b      $175a
00001706  55 4F                      subq.w     #$2, a7
00001708  A8 61                      .byte      0xa8, 0x61
0000170A  30 1F                      move.w     (a7)+, d0
0000170C  02 40 7F FF                andi.w     #$7fff, d0
00001710  48 C0                      ext.l      d0
00001712  81 FC 00 06                divs.w     #$6, d0
00001716  48 40                      swap       d0
00001718  52 40                      addq.w     #$1, d0
0000171A  48 C0                      ext.l      d0
0000171C  81 FC 00 04                divs.w     #$4, d0
00001720  48 40                      swap       d0
00001722  4A 40                      tst.w      d0
00001724  67 20                      beq.b      $1746
00001726  55 4F                      subq.w     #$2, a7
00001728  A8 61                      .byte      0xa8, 0x61
0000172A  30 1F                      move.w     (a7)+, d0
0000172C  02 40 7F FF                andi.w     #$7fff, d0
00001730  48 C0                      ext.l      d0
00001732  81 FC 00 06                divs.w     #$6, d0
00001736  48 40                      swap       d0
00001738  52 40                      addq.w     #$1, d0
0000173A  48 C0                      ext.l      d0
0000173C  81 FC 00 05                divs.w     #$5, d0
00001740  48 40                      swap       d0
00001742  4A 40                      tst.w      d0
00001744  66 14                      bne.b      $175a
00001746  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
0000174C  66 0C                      bne.b      $175a
0000174E  4A 6D DD 0E                tst.w      -$22f2(a5)
00001752  6C 06                      bge.b      $175a
00001754  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
0000175A  4E BA FC D0                jsr        $142c(pc)
0000175E  4A 2D FF F0                tst.b      -$10(a5)
00001762  66 10                      bne.b      $1774
00001764  48 6D DC 56                pea.l      -$23aa(a5)
00001768  3F 2D DC 7E                move.w     -$2382(a5), -(a7)
0000176C  3F 2D DC 80                move.w     -$2380(a5), -(a7)
00001770  A8 A8                      .byte      0xa8, 0xa8
00001772  60 08                      bra.b      $177c
00001774  48 6D DC 56                pea.l      -$23aa(a5)
00001778  42 A7                      clr.l      -(a7)
0000177A  A8 A8                      .byte      0xa8, 0xa8
0000177C  4E BA FD 2C                jsr        $14aa(pc)
00001780  4E 5E                      unlk       a6
00001782  4E 75                      rts

; MacsBug symbol trailer for HandlePlayer2CPUEasy: 94 48 61 6E 64 6C 65 50 6C 61 79 65 72 32 43 50 55 45 61 73 79

HandlePlayer2CPUMedium: ; 0000179C..00001A20
0000179C  4E 56 FF FE                link.w     a6, #$fffe
000017A0  2F 03                      move.l     d3, -(a7)
000017A2  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
000017A8  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
000017AE  0C 6D 00 FA DC B4          cmpi.w     #$fa, -$234c(a5)
000017B4  6F 36                      ble.b      $17ec
000017B6  4A 6D DD 0E                tst.w      -$22f2(a5)
000017BA  6F 30                      ble.b      $17ec
000017BC  70 0F                      moveq      #$f, d0
000017BE  D0 6D DC 56                add.w      -$23aa(a5), d0
000017C2  B0 6D DC AE                cmp.w      -$2352(a5), d0
000017C6  6F 0E                      ble.b      $17d6
000017C8  42 6D DC 7E                clr.w      -$2382(a5)
000017CC  30 2D D8 06                move.w     -$27fa(a5), d0
000017D0  44 40                      neg.w      d0
000017D2  3B 40 DC 80                move.w     d0, -$2380(a5)
000017D6  70 F1                      moveq      #$f1, d0
000017D8  D0 6D DC 5A                add.w      -$23a6(a5), d0
000017DC  B0 6D DC B2                cmp.w      -$234e(a5), d0
000017E0  6C 0A                      bge.b      $17ec
000017E2  42 6D DC 7E                clr.w      -$2382(a5)
000017E6  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
000017EC  4E BA FB 98                jsr        $1386(pc)
000017F0  4A 6D DD 0E                tst.w      -$22f2(a5)
000017F4  6C 00 01 D0                bge.w      $19c6
000017F8  55 4F                      subq.w     #$2, a7
000017FA  A8 61                      .byte      0xa8, 0x61
000017FC  30 1F                      move.w     (a7)+, d0
000017FE  02 40 7F FF                andi.w     #$7fff, d0
00001802  48 C0                      ext.l      d0
00001804  81 FC 00 06                divs.w     #$6, d0
00001808  48 40                      swap       d0
0000180A  52 40                      addq.w     #$1, d0
0000180C  55 40                      subq.w     #$2, d0
0000180E  66 00 01 9A                bne.w      $19aa
00001812  0C 6D 01 7E DC 5A          cmpi.w     #$17e, -$23a6(a5)
00001818  6C 00 01 90                bge.w      $19aa
0000181C  0C 6D 00 64 DC 56          cmpi.w     #$64, -$23aa(a5)
00001822  6F 00 01 86                ble.w      $19aa
00001826  55 4F                      subq.w     #$2, a7
00001828  A8 61                      .byte      0xa8, 0x61
0000182A  30 1F                      move.w     (a7)+, d0
0000182C  02 40 7F FF                andi.w     #$7fff, d0
00001830  48 C0                      ext.l      d0
00001832  81 FC 00 06                divs.w     #$6, d0
00001836  48 40                      swap       d0
00001838  52 40                      addq.w     #$1, d0
0000183A  36 00                      move.w     d0, d3
0000183C  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
00001842  66 00 01 66                bne.w      $19aa
00001846  4A 2D D7 DC                tst.b      -$2824(a5)
0000184A  66 00 01 5E                bne.w      $19aa
0000184E  4A 2D D7 80                tst.b      -$2880(a5)
00001852  66 00 01 56                bne.w      $19aa
00001856  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
0000185C  66 0A                      bne.b      $1868
0000185E  4E B9 00 00 1E D2          jsr        $1ed2.l
00001864  60 00 01 44                bra.w      $19aa
00001868  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
0000186E  66 0A                      bne.b      $187a
00001870  4E B9 00 00 1F CA          jsr        $1fca.l
00001876  60 00 01 32                bra.w      $19aa
0000187A  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00001880  66 3A                      bne.b      $18bc
00001882  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001888  0C 43 00 01                cmpi.w     #$1, d3
0000188C  67 06                      beq.b      $1894
0000188E  0C 43 00 02                cmpi.w     #$2, d3
00001892  66 08                      bne.b      $189c
00001894  42 6D CF 74                clr.w      -$308c(a5)
00001898  60 00 01 10                bra.w      $19aa
0000189C  0C 43 00 03                cmpi.w     #$3, d3
000018A0  67 06                      beq.b      $18a8
000018A2  0C 43 00 05                cmpi.w     #$5, d3
000018A6  66 0A                      bne.b      $18b2
000018A8  3B 7C 00 01 CF 74          move.w     #$1, -$308c(a5)
000018AE  60 00 00 FA                bra.w      $19aa
000018B2  3B 7C 00 02 CF 74          move.w     #$2, -$308c(a5)
000018B8  60 00 00 F0                bra.w      $19aa
000018BC  0C 43 00 03                cmpi.w     #$3, d3
000018C0  67 0C                      beq.b      $18ce
000018C2  0C 43 00 04                cmpi.w     #$4, d3
000018C6  67 06                      beq.b      $18ce
000018C8  0C 43 00 05                cmpi.w     #$5, d3
000018CC  66 12                      bne.b      $18e0
000018CE  4A 2D D7 DC                tst.b      -$2824(a5)
000018D2  66 00 00 D6                bne.w      $19aa
000018D6  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
000018DC  60 00 00 CC                bra.w      $19aa
000018E0  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
000018E6  66 0A                      bne.b      $18f2
000018E8  4E B9 00 00 1E 9A          jsr        $1e9a.l
000018EE  60 00 00 BA                bra.w      $19aa
000018F2  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
000018F8  66 1A                      bne.b      $1914
000018FA  4A 2D D7 DC                tst.b      -$2824(a5)
000018FE  66 00 00 AA                bne.w      $19aa
00001902  4A 2D FF F2                tst.b      -$e(a5)
00001906  66 00 00 A2                bne.w      $19aa
0000190A  4E B9 00 00 1F 4A          jsr        $1f4a.l
00001910  60 00 00 98                bra.w      $19aa
00001914  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
0000191A  66 48                      bne.b      $1964
0000191C  0C 43 00 01                cmpi.w     #$1, d3
00001920  66 14                      bne.b      $1936
00001922  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00001928  3B 7C 00 01 CF 70          move.w     #$1, -$3090(a5)
0000192E  4E B9 00 00 03 C8          jsr        $3c8.l
00001934  60 74                      bra.b      $19aa
00001936  0C 43 00 02                cmpi.w     #$2, d3
0000193A  66 14                      bne.b      $1950
0000193C  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00001942  3B 7C 00 02 CF 70          move.w     #$2, -$3090(a5)
00001948  4E B9 00 00 03 C8          jsr        $3c8.l
0000194E  60 5A                      bra.b      $19aa
00001950  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00001956  3B 7C 00 03 CF 70          move.w     #$3, -$3090(a5)
0000195C  4E B9 00 00 03 C8          jsr        $3c8.l
00001962  60 46                      bra.b      $19aa
00001964  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
0000196A  66 14                      bne.b      $1980
0000196C  4A 2D D7 80                tst.b      -$2880(a5)
00001970  66 38                      bne.b      $19aa
00001972  4A 2D FF F2                tst.b      -$e(a5)
00001976  66 32                      bne.b      $19aa
00001978  4E B9 00 00 1F AA          jsr        $1faa.l
0000197E  60 2A                      bra.b      $19aa
00001980  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00001986  66 0E                      bne.b      $1996
00001988  4E B9 00 00 04 10          jsr        $410.l
0000198E  1B 7C 00 01 CF E8          move.b     #$1, -$3018(a5)
00001994  60 14                      bra.b      $19aa
00001996  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
0000199C  66 0C                      bne.b      $19aa
0000199E  4E B9 00 00 04 D0          jsr        $4d0.l
000019A4  1B 7C 00 01 D0 60          move.b     #$1, -$2fa0(a5)
000019AA  0C 6D 01 D2 DC 5A          cmpi.w     #$1d2, -$23a6(a5)
000019B0  6F 10                      ble.b      $19c2
000019B2  42 6D DC 7E                clr.w      -$2382(a5)
000019B6  30 2D D8 06                move.w     -$27fa(a5), d0
000019BA  44 40                      neg.w      d0
000019BC  3B 40 DC 80                move.w     d0, -$2380(a5)
000019C0  60 04                      bra.b      $19c6
000019C2  42 6D DC 80                clr.w      -$2380(a5)
000019C6  4E BA FA 64                jsr        $142c(pc)
000019CA  0C 6D 01 FA DC 5C          cmpi.w     #$1fa, -$23a4(a5)
000019D0  66 18                      bne.b      $19ea
000019D2  55 4F                      subq.w     #$2, a7
000019D4  A8 61                      .byte      0xa8, 0x61
000019D6  30 1F                      move.w     (a7)+, d0
000019D8  02 40 7F FF                andi.w     #$7fff, d0
000019DC  48 C0                      ext.l      d0
000019DE  81 FC 00 06                divs.w     #$6, d0
000019E2  48 40                      swap       d0
000019E4  52 40                      addq.w     #$1, d0
000019E6  3D 40 FF FE                move.w     d0, -$2(a6)
000019EA  0C 6E 00 04 FF FE          cmpi.w     #$4, -$2(a6)
000019F0  6D 06                      blt.b      $19f8
000019F2  4E BA FB 1E                jsr        $1512(pc)
000019F6  60 1E                      bra.b      $1a16
000019F8  4A 2D FF F0                tst.b      -$10(a5)
000019FC  66 10                      bne.b      $1a0e
000019FE  48 6D DC 56                pea.l      -$23aa(a5)
00001A02  3F 2D DC 7E                move.w     -$2382(a5), -(a7)
00001A06  3F 2D DC 80                move.w     -$2380(a5), -(a7)
00001A0A  A8 A8                      .byte      0xa8, 0xa8
00001A0C  60 08                      bra.b      $1a16
00001A0E  48 6D DC 56                pea.l      -$23aa(a5)
00001A12  42 A7                      clr.l      -(a7)
00001A14  A8 A8                      .byte      0xa8, 0xa8
00001A16  4E BA FA 92                jsr        $14aa(pc)
00001A1A  26 1F                      move.l     (a7)+, d3
00001A1C  4E 5E                      unlk       a6
00001A1E  4E 75                      rts

; MacsBug symbol trailer for HandlePlayer2CPUMedium: 96 48 61 6E 64 6C 65 50 6C 61 79 65 72 32 43 50 55 4D 65 64 69 75 6D

HandlePlayer2CPUHard: ; 00001A3A..00001C7C
00001A3A  4E 56 00 00                link.w     a6, #$0
00001A3E  2F 03                      move.l     d3, -(a7)
00001A40  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
00001A46  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
00001A4C  70 0F                      moveq      #$f, d0
00001A4E  D0 6D DC 56                add.w      -$23aa(a5), d0
00001A52  B0 6D DC AE                cmp.w      -$2352(a5), d0
00001A56  6F 0E                      ble.b      $1a66
00001A58  42 6D DC 7E                clr.w      -$2382(a5)
00001A5C  30 2D D8 06                move.w     -$27fa(a5), d0
00001A60  44 40                      neg.w      d0
00001A62  3B 40 DC 80                move.w     d0, -$2380(a5)
00001A66  70 F1                      moveq      #$f1, d0
00001A68  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001A6C  B0 6D DC B2                cmp.w      -$234e(a5), d0
00001A70  6C 0A                      bge.b      $1a7c
00001A72  42 6D DC 7E                clr.w      -$2382(a5)
00001A76  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
00001A7C  4E BA F9 08                jsr        $1386(pc)
00001A80  55 4F                      subq.w     #$2, a7
00001A82  A8 61                      .byte      0xa8, 0x61
00001A84  30 1F                      move.w     (a7)+, d0
00001A86  02 40 00 02                andi.w     #$2, d0
00001A8A  36 00                      move.w     d0, d3
00001A8C  0C 43 00 06                cmpi.w     #$6, d3
00001A90  67 00 01 D8                beq.w      $1c6a
00001A94  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
00001A9A  66 00 01 CE                bne.w      $1c6a
00001A9E  4A 6D DD 0E                tst.w      -$22f2(a5)
00001AA2  6C 00 01 C6                bge.w      $1c6a
00001AA6  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
00001AAC  66 0A                      bne.b      $1ab8
00001AAE  4E B9 00 00 1E D2          jsr        $1ed2.l
00001AB4  60 00 01 B4                bra.w      $1c6a
00001AB8  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
00001ABE  66 0A                      bne.b      $1aca
00001AC0  4E B9 00 00 1F CA          jsr        $1fca.l
00001AC6  60 00 01 A2                bra.w      $1c6a
00001ACA  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00001AD0  66 3A                      bne.b      $1b0c
00001AD2  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001AD8  0C 43 00 01                cmpi.w     #$1, d3
00001ADC  67 06                      beq.b      $1ae4
00001ADE  0C 43 00 02                cmpi.w     #$2, d3
00001AE2  66 08                      bne.b      $1aec
00001AE4  42 6D CF 74                clr.w      -$308c(a5)
00001AE8  60 00 01 80                bra.w      $1c6a
00001AEC  0C 43 00 03                cmpi.w     #$3, d3
00001AF0  67 06                      beq.b      $1af8
00001AF2  0C 43 00 05                cmpi.w     #$5, d3
00001AF6  66 0A                      bne.b      $1b02
00001AF8  3B 7C 00 01 CF 74          move.w     #$1, -$308c(a5)
00001AFE  60 00 01 6A                bra.w      $1c6a
00001B02  3B 7C 00 02 CF 74          move.w     #$2, -$308c(a5)
00001B08  60 00 01 60                bra.w      $1c6a
00001B0C  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00001B12  66 56                      bne.b      $1b6a
00001B14  0C 43 00 02                cmpi.w     #$2, d3
00001B18  67 06                      beq.b      $1b20
00001B1A  0C 43 00 05                cmpi.w     #$5, d3
00001B1E  66 06                      bne.b      $1b26
00001B20  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001B26  4A 2D CF 5A                tst.b      -$30a6(a5)
00001B2A  66 18                      bne.b      $1b44
00001B2C  70 EC                      moveq      #$ec, d0
00001B2E  D0 6D DC 58                add.w      -$23a8(a5), d0
00001B32  B0 6D DC B4                cmp.w      -$234c(a5), d0
00001B36  6F 0C                      ble.b      $1b44
00001B38  1B 7C 00 01 CF 5A          move.b     #$1, -$30a6(a5)
00001B3E  4E B9 00 00 03 98          jsr        $398.l
00001B44  4A 2D CF 58                tst.b      -$30a8(a5)
00001B48  66 00 01 20                bne.w      $1c6a
00001B4C  70 EC                      moveq      #$ec, d0
00001B4E  D0 6D DC 58                add.w      -$23a8(a5), d0
00001B52  B0 6D DC B4                cmp.w      -$234c(a5), d0
00001B56  6F 00 01 12                ble.w      $1c6a
00001B5A  1B 7C 00 01 CF 58          move.b     #$1, -$30a8(a5)
00001B60  4E B9 00 00 03 A0          jsr        $3a0.l
00001B66  60 00 01 02                bra.w      $1c6a
00001B6A  0C 43 00 02                cmpi.w     #$2, d3
00001B6E  6C 38                      bge.b      $1ba8
00001B70  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
00001B76  66 1E                      bne.b      $1b96
00001B78  59 4F                      subq.w     #$4, a7
00001B7A  A9 75                      .byte      0xa9, 0x75
00001B7C  20 1F                      move.l     (a7)+, d0
00001B7E  90 AD CF 9C                sub.l      -$3064(a5), d0
00001B82  0C 80 00 00 00 C8          cmpi.l     #$c8, d0
00001B88  63 00 00 E0                bls.w      $1c6a
00001B8C  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001B92  60 00 00 D6                bra.w      $1c6a
00001B96  4A 2D D7 DC                tst.b      -$2824(a5)
00001B9A  66 00 00 CE                bne.w      $1c6a
00001B9E  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001BA4  60 00 00 C4                bra.w      $1c6a
00001BA8  0C 43 00 02                cmpi.w     #$2, d3
00001BAC  6D 00 00 BC                blt.w      $1c6a
00001BB0  0C 43 00 05                cmpi.w     #$5, d3
00001BB4  6C 00 00 B4                bge.w      $1c6a
00001BB8  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
00001BBE  66 0A                      bne.b      $1bca
00001BC0  4E B9 00 00 1E 9A          jsr        $1e9a.l
00001BC6  60 00 00 A2                bra.w      $1c6a
00001BCA  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
00001BD0  66 1A                      bne.b      $1bec
00001BD2  4A 2D D7 DC                tst.b      -$2824(a5)
00001BD6  66 00 00 92                bne.w      $1c6a
00001BDA  4A 2D FF F2                tst.b      -$e(a5)
00001BDE  66 00 00 8A                bne.w      $1c6a
00001BE2  4E B9 00 00 1F 4A          jsr        $1f4a.l
00001BE8  60 00 00 80                bra.w      $1c6a
00001BEC  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00001BF2  66 30                      bne.b      $1c24
00001BF4  0C 43 00 02                cmpi.w     #$2, d3
00001BF8  66 08                      bne.b      $1c02
00001BFA  3B 7C 00 01 CF 70          move.w     #$1, -$3090(a5)
00001C00  60 14                      bra.b      $1c16
00001C02  0C 43 00 03                cmpi.w     #$3, d3
00001C06  66 08                      bne.b      $1c10
00001C08  3B 7C 00 02 CF 70          move.w     #$2, -$3090(a5)
00001C0E  60 06                      bra.b      $1c16
00001C10  3B 7C 00 03 CF 70          move.w     #$3, -$3090(a5)
00001C16  1B 7C 00 01 CF 6C          move.b     #$1, -$3094(a5)
00001C1C  4E B9 00 00 03 C8          jsr        $3c8.l
00001C22  60 46                      bra.b      $1c6a
00001C24  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00001C2A  66 14                      bne.b      $1c40
00001C2C  4A 2D D7 80                tst.b      -$2880(a5)
00001C30  66 38                      bne.b      $1c6a
00001C32  4A 2D FF F2                tst.b      -$e(a5)
00001C36  66 32                      bne.b      $1c6a
00001C38  4E B9 00 00 1F AA          jsr        $1faa.l
00001C3E  60 2A                      bra.b      $1c6a
00001C40  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00001C46  66 0E                      bne.b      $1c56
00001C48  4E B9 00 00 04 10          jsr        $410.l
00001C4E  1B 7C 00 01 CF E8          move.b     #$1, -$3018(a5)
00001C54  60 14                      bra.b      $1c6a
00001C56  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
00001C5C  66 0C                      bne.b      $1c6a
00001C5E  4E B9 00 00 04 D0          jsr        $4d0.l
00001C64  1B 7C 00 01 D0 60          move.b     #$1, -$2fa0(a5)
00001C6A  4E BA F7 C0                jsr        $142c(pc)
00001C6E  4E BA F8 A2                jsr        $1512(pc)
00001C72  4E BA F8 36                jsr        $14aa(pc)
00001C76  26 1F                      move.l     (a7)+, d3
00001C78  4E 5E                      unlk       a6
00001C7A  4E 75                      rts

; MacsBug symbol trailer for HandlePlayer2CPUHard: 94 48 61 6E 64 6C 65 50 6C 61 79 65 72 32 43 50 55 48 61 72 64

HandleMotaro2CPUHard: ; 00001C94..00001DB0
00001C94  4E 56 FF FE                link.w     a6, #$fffe
00001C98  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
00001C9E  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
00001CA4  70 0F                      moveq      #$f, d0
00001CA6  D0 6D DC 56                add.w      -$23aa(a5), d0
00001CAA  B0 6D DC AE                cmp.w      -$2352(a5), d0
00001CAE  6F 0E                      ble.b      $1cbe
00001CB0  42 6D DC 7E                clr.w      -$2382(a5)
00001CB4  30 2D D8 06                move.w     -$27fa(a5), d0
00001CB8  44 40                      neg.w      d0
00001CBA  3B 40 DC 80                move.w     d0, -$2380(a5)
00001CBE  70 F1                      moveq      #$f1, d0
00001CC0  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001CC4  B0 6D DC B2                cmp.w      -$234e(a5), d0
00001CC8  6C 0A                      bge.b      $1cd4
00001CCA  42 6D DC 7E                clr.w      -$2382(a5)
00001CCE  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
00001CD4  55 4F                      subq.w     #$2, a7
00001CD6  A8 61                      .byte      0xa8, 0x61
00001CD8  30 1F                      move.w     (a7)+, d0
00001CDA  02 40 00 02                andi.w     #$2, d0
00001CDE  3D 40 FF FE                move.w     d0, -$2(a6)
00001CE2  4E BA F6 A2                jsr        $1386(pc)
00001CE6  4A 2D D8 FE                tst.b      -$2702(a5)
00001CEA  66 12                      bne.b      $1cfe
00001CEC  4A 2D D8 FD                tst.b      -$2703(a5)
00001CF0  66 0C                      bne.b      $1cfe
00001CF2  4A 2D D8 FC                tst.b      -$2704(a5)
00001CF6  66 06                      bne.b      $1cfe
00001CF8  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00001CFE  4A 6D DD 0E                tst.w      -$22f2(a5)
00001D02  6C 00 00 9C                bge.w      $1da0
00001D06  55 4F                      subq.w     #$2, a7
00001D08  A8 61                      .byte      0xa8, 0x61
00001D0A  30 1F                      move.w     (a7)+, d0
00001D0C  02 40 7F FF                andi.w     #$7fff, d0
00001D10  48 C0                      ext.l      d0
00001D12  81 FC 00 06                divs.w     #$6, d0
00001D16  48 40                      swap       d0
00001D18  52 40                      addq.w     #$1, d0
00001D1A  48 C0                      ext.l      d0
00001D1C  81 FC 00 04                divs.w     #$4, d0
00001D20  48 40                      swap       d0
00001D22  4A 40                      tst.w      d0
00001D24  67 20                      beq.b      $1d46
00001D26  55 4F                      subq.w     #$2, a7
00001D28  A8 61                      .byte      0xa8, 0x61
00001D2A  30 1F                      move.w     (a7)+, d0
00001D2C  02 40 7F FF                andi.w     #$7fff, d0
00001D30  48 C0                      ext.l      d0
00001D32  81 FC 00 06                divs.w     #$6, d0
00001D36  48 40                      swap       d0
00001D38  52 40                      addq.w     #$1, d0
00001D3A  48 C0                      ext.l      d0
00001D3C  81 FC 00 05                divs.w     #$5, d0
00001D40  48 40                      swap       d0
00001D42  4A 40                      tst.w      d0
00001D44  66 5A                      bne.b      $1da0
00001D46  0C 2D 00 01 D8 FE          cmpi.b     #$1, -$2702(a5)
00001D4C  67 10                      beq.b      $1d5e
00001D4E  0C 2D 00 01 D8 FD          cmpi.b     #$1, -$2703(a5)
00001D54  67 08                      beq.b      $1d5e
00001D56  0C 2D 00 01 D8 FC          cmpi.b     #$1, -$2704(a5)
00001D5C  66 04                      bne.b      $1d62
00001D5E  42 2D FF DC                clr.b      -$24(a5)
00001D62  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
00001D68  66 36                      bne.b      $1da0
00001D6A  4A 6D DD 0E                tst.w      -$22f2(a5)
00001D6E  6C 30                      bge.b      $1da0
00001D70  4A 2D D7 DA                tst.b      -$2826(a5)
00001D74  66 2A                      bne.b      $1da0
00001D76  4A 2D D7 7E                tst.b      -$2882(a5)
00001D7A  66 24                      bne.b      $1da0
00001D7C  4E B9 00 00 04 38          jsr        $438.l
00001D82  4E B9 00 00 04 40          jsr        $440.l
00001D88  4E B9 00 00 04 48          jsr        $448.l
00001D8E  1B 7C 00 01 D8 FC          move.b     #$1, -$2704(a5)
00001D94  1B 7C 00 01 D8 FD          move.b     #$1, -$2703(a5)
00001D9A  1B 7C 00 01 D8 FE          move.b     #$1, -$2702(a5)
00001DA0  4E BA F6 8A                jsr        $142c(pc)
00001DA4  4E BA F7 6C                jsr        $1512(pc)
00001DA8  4E BA F7 00                jsr        $14aa(pc)
00001DAC  4E 5E                      unlk       a6
00001DAE  4E 75                      rts

; MacsBug symbol trailer for HandleMotaro2CPUHard: 94 48 61 6E 64 6C 65 4D 6F 74 61 72 6F 32 43 50 55 48 61 72 64

HandleShao2CPUHard: ; 00001DC8..00001E84
00001DC8  4E 56 FF FE                link.w     a6, #$fffe
00001DCC  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
00001DD2  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
00001DD8  70 0F                      moveq      #$f, d0
00001DDA  D0 6D DC 56                add.w      -$23aa(a5), d0
00001DDE  B0 6D DC AE                cmp.w      -$2352(a5), d0
00001DE2  6F 0E                      ble.b      $1df2
00001DE4  42 6D DC 7E                clr.w      -$2382(a5)
00001DE8  30 2D D8 06                move.w     -$27fa(a5), d0
00001DEC  44 40                      neg.w      d0
00001DEE  3B 40 DC 80                move.w     d0, -$2380(a5)
00001DF2  70 F1                      moveq      #$f1, d0
00001DF4  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001DF8  B0 6D DC B2                cmp.w      -$234e(a5), d0
00001DFC  6C 0A                      bge.b      $1e08
00001DFE  42 6D DC 7E                clr.w      -$2382(a5)
00001E02  3B 6D D8 06 DC 80          move.w     -$27fa(a5), -$2380(a5)
00001E08  55 4F                      subq.w     #$2, a7
00001E0A  A8 61                      .byte      0xa8, 0x61
00001E0C  30 1F                      move.w     (a7)+, d0
00001E0E  02 40 00 02                andi.w     #$2, d0
00001E12  3D 40 FF FE                move.w     d0, -$2(a6)
00001E16  4E BA F5 6E                jsr        $1386(pc)
00001E1A  4A 6D DD 0E                tst.w      -$22f2(a5)
00001E1E  6C 54                      bge.b      $1e74
00001E20  55 4F                      subq.w     #$2, a7
00001E22  A8 61                      .byte      0xa8, 0x61
00001E24  30 1F                      move.w     (a7)+, d0
00001E26  02 40 7F FF                andi.w     #$7fff, d0
00001E2A  48 C0                      ext.l      d0
00001E2C  81 FC 00 06                divs.w     #$6, d0
00001E30  48 40                      swap       d0
00001E32  52 40                      addq.w     #$1, d0
00001E34  48 C0                      ext.l      d0
00001E36  81 FC 00 04                divs.w     #$4, d0
00001E3A  48 40                      swap       d0
00001E3C  4A 40                      tst.w      d0
00001E3E  67 20                      beq.b      $1e60
00001E40  55 4F                      subq.w     #$2, a7
00001E42  A8 61                      .byte      0xa8, 0x61
00001E44  30 1F                      move.w     (a7)+, d0
00001E46  02 40 7F FF                andi.w     #$7fff, d0
00001E4A  48 C0                      ext.l      d0
00001E4C  81 FC 00 06                divs.w     #$6, d0
00001E50  48 40                      swap       d0
00001E52  52 40                      addq.w     #$1, d0
00001E54  48 C0                      ext.l      d0
00001E56  81 FC 00 05                divs.w     #$5, d0
00001E5A  48 40                      swap       d0
00001E5C  4A 40                      tst.w      d0
00001E5E  66 14                      bne.b      $1e74
00001E60  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
00001E66  66 0C                      bne.b      $1e74
00001E68  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001E6E  1B 7C 00 01 D7 CA          move.b     #$1, -$2836(a5)
00001E74  4E BA F5 B6                jsr        $142c(pc)
00001E78  4E BA F6 98                jsr        $1512(pc)
00001E7C  4E BA F6 2C                jsr        $14aa(pc)
00001E80  4E 5E                      unlk       a6
00001E82  4E 75                      rts

; MacsBug symbol trailer for HandleShao2CPUHard: 92 48 61 6E 64 6C 65 53 68 61 6F 32 43 50 55 48 61 72 64

HandleShangCPU: ; 00001E9A..00001EC0
00001E9A  4E 56 00 00                link.w     a6, #$0
00001E9E  4A 2D D7 56                tst.b      -$28aa(a5)
00001EA2  66 18                      bne.b      $1ebc
00001EA4  4A 2D D7 54                tst.b      -$28ac(a5)
00001EA8  66 12                      bne.b      $1ebc
00001EAA  4E B9 00 00 04 A8          jsr        $4a8.l
00001EB0  1B 7C 00 01 D7 56          move.b     #$1, -$28aa(a5)
00001EB6  1B 7C 00 01 D7 54          move.b     #$1, -$28ac(a5)
00001EBC  4E 5E                      unlk       a6
00001EBE  4E 75                      rts

; MacsBug symbol trailer for HandleShangCPU: 8E 48 61 6E 64 6C 65 53 68 61 6E 67 43 50 55

HandleSindelCPU: ; 00001ED2..00001F38
00001ED2  4E 56 00 00                link.w     a6, #$0
00001ED6  70 CE                      moveq      #$ce, d0
00001ED8  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001EDC  B0 6D DC 86                cmp.w      -$237a(a5), d0
00001EE0  6F 1A                      ble.b      $1efc
00001EE2  4A 2D D7 A2                tst.b      -$285e(a5)
00001EE6  66 0C                      bne.b      $1ef4
00001EE8  4A 2D D7 A4                tst.b      -$285c(a5)
00001EEC  66 06                      bne.b      $1ef4
00001EEE  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00001EF4  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
00001EFA  60 38                      bra.b      $1f34
00001EFC  30 2D DC 5A                move.w     -$23a6(a5), d0
00001F00  5A 40                      addq.w     #$5, d0
00001F02  B0 6D DC 86                cmp.w      -$237a(a5), d0
00001F06  6C 1A                      bge.b      $1f22
00001F08  4A 2D D7 A2                tst.b      -$285e(a5)
00001F0C  66 0C                      bne.b      $1f1a
00001F0E  4A 2D D7 A4                tst.b      -$285c(a5)
00001F12  66 06                      bne.b      $1f1a
00001F14  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00001F1A  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
00001F20  60 12                      bra.b      $1f34
00001F22  4A 2D D7 A2                tst.b      -$285e(a5)
00001F26  66 0C                      bne.b      $1f34
00001F28  4A 2D D7 A4                tst.b      -$285c(a5)
00001F2C  66 06                      bne.b      $1f34
00001F2E  1B 7C 00 01 D7 A4          move.b     #$1, -$285c(a5)
00001F34  4E 5E                      unlk       a6
00001F36  4E 75                      rts

; MacsBug symbol trailer for HandleSindelCPU: 8F 48 61 6E 64 6C 65 53 69 6E 64 65 6C 43 50 55

HandleSubCPU: ; 00001F4A..00001F9A
00001F4A  4E 56 00 00                link.w     a6, #$0
00001F4E  4A 2D D7 A2                tst.b      -$285e(a5)
00001F52  66 0C                      bne.b      $1f60
00001F54  4A 2D D7 A4                tst.b      -$285c(a5)
00001F58  66 06                      bne.b      $1f60
00001F5A  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00001F60  0C 6D 00 23 DC 88          cmpi.w     #$23, -$2378(a5)
00001F66  6C 08                      bge.b      $1f70
00001F68  3B 7C 00 03 D7 A6          move.w     #$3, -$285a(a5)
00001F6E  60 26                      bra.b      $1f96
00001F70  0C 6D 00 23 DC 88          cmpi.w     #$23, -$2378(a5)
00001F76  6D 10                      blt.b      $1f88
00001F78  0C 6D 00 4B DC 88          cmpi.w     #$4b, -$2378(a5)
00001F7E  6C 08                      bge.b      $1f88
00001F80  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
00001F86  60 0E                      bra.b      $1f96
00001F88  0C 6D 00 4B DC 88          cmpi.w     #$4b, -$2378(a5)
00001F8E  6D 06                      blt.b      $1f96
00001F90  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
00001F96  4E 5E                      unlk       a6
00001F98  4E 75                      rts

; MacsBug symbol trailer for HandleSubCPU: 8C 48 61 6E 64 6C 65 53 75 62 43 50 55

HandleCyraxCPU: ; 00001FAA..00001FB8
00001FAA  4E 56 00 00                link.w     a6, #$0
00001FAE  1B 7C 00 01 D7 CC          move.b     #$1, -$2834(a5)
00001FB4  4E 5E                      unlk       a6
00001FB6  4E 75                      rts

; MacsBug symbol trailer for HandleCyraxCPU: 8E 48 61 6E 64 6C 65 43 79 72 61 78 43 50 55

HandleKungCPU: ; 00001FCA..00002006
00001FCA  4E 56 00 00                link.w     a6, #$0
00001FCE  1B 7C 00 01 D7 A2          move.b     #$1, -$285e(a5)
00001FD4  70 D8                      moveq      #$d8, d0
00001FD6  D0 6D DC 5A                add.w      -$23a6(a5), d0
00001FDA  B0 6D DC 86                cmp.w      -$237a(a5), d0
00001FDE  6F 08                      ble.b      $1fe8
00001FE0  3B 7C 00 02 D7 A6          move.w     #$2, -$285a(a5)
00001FE6  60 1A                      bra.b      $2002
00001FE8  30 2D DC 5A                move.w     -$23a6(a5), d0
00001FEC  5A 40                      addq.w     #$5, d0
00001FEE  B0 6D DC 86                cmp.w      -$237a(a5), d0
00001FF2  6C 08                      bge.b      $1ffc
00001FF4  3B 7C 00 03 D7 A6          move.w     #$3, -$285a(a5)
00001FFA  60 06                      bra.b      $2002
00001FFC  3B 7C 00 01 D7 A6          move.w     #$1, -$285a(a5)
00002002  4E 5E                      unlk       a6
00002004  4E 75                      rts

; MacsBug symbol trailer for HandleKungCPU: 8D 48 61 6E 64 6C 65 4B 75 6E 67 43 50 55

