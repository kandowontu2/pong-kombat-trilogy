; CODE 1 — __%Main
; resource size: 47236 bytes
; Motorola 68000, big-endian

SegmentBootstrap: ; 00000000..00000118
00000000  00 00 00 01                ori.b      #$1, d0
00000004  59 8F                      subq.l     #$4, a7
00000006  2F 3C 43 4F 44 45          move.l     #$434f4445, -(a7)
0000000C  42 67                      clr.w      -(a7)
0000000E  A9 A0                      .byte      0xa9, 0xa0
00000010  20 17                      move.l     (a7), d0
00000012  67 00 01 02                beq.w      $116
00000016  20 40                      movea.l    d0, a0
00000018  20 50                      movea.l    (a0), a0
0000001A  2E 18                      move.l     (a0)+, d7
0000001C  2C 10                      move.l     (a0), d6
0000001E  A9 A3                      .byte      0xa9, 0xa3
00000020  70 00                      moveq      #$0, d0
00000022  20 4D                      movea.l    a5, a0
00000024  91 C6                      suba.l     d6, a0
00000026  60 02                      bra.b      $2a
00000028  10 C0                      move.b     d0, (a0)+
0000002A  B1 CD                      cmpa.l     a5, a0
0000002C  6D FA                      blt.b      $28
0000002E  41 ED 00 28                lea.l      $28(a5), a0
00000032  43 F5 78 00                lea.l      (a5, d7.l), a1
00000036  60 02                      bra.b      $3a
00000038  10 C0                      move.b     d0, (a0)+
0000003A  B1 C9                      cmpa.l     a1, a0
0000003C  6D FA                      blt.b      $38
0000003E  59 8F                      subq.l     #$4, a7
00000040  2F 3C 44 41 54 41          move.l     #$44415441, -(a7)
00000046  42 67                      clr.w      -(a7)
00000048  A9 A0                      .byte      0xa9, 0xa0
0000004A  20 57                      movea.l    (a7), a0
0000004C  20 08                      move.l     a0, d0
0000004E  67 00 00 C6                beq.w      $116
00000052  2F 0D                      move.l     a5, -(a7)
00000054  2F 10                      move.l     (a0), -(a7)
00000056  4E BA 02 08                jsr        $260(pc)
0000005A  50 8F                      addq.l     #$8, a7
0000005C  A9 A3                      .byte      0xa9, 0xa3
0000005E  41 FA FF A0                lea.l      $0(pc), a0
00000062  2B 48 CD D0                move.l     a0, -$3230(a5)
00000066  20 4D                      movea.l    a5, a0
00000068  70 00                      moveq      #$0, d0
0000006A  4E BA 03 68                jsr        $3d4(pc)
0000006E  20 6D CD D0                movea.l    -$3230(a5), a0
00000072  70 01                      moveq      #$1, d0
00000074  4E BA 03 5E                jsr        $3d4(pc)
00000078  42 2D CD D5                clr.b      -$322b(a5)
0000007C  30 3C A8 9F                move.w     #$a89f, d0
00000080  A7 46                      .byte      0xa7, 0x46
00000082  2F 08                      move.l     a0, -(a7)
00000084  30 3C A1 98                move.w     #$a198, d0
00000088  A3 46                      .byte      0xa3, 0x46
0000008A  B1 DF                      cmpa.l     (a7)+, a0
0000008C  67 0A                      beq.b      $98
0000008E  1B 7C 00 01 CD D5          move.b     #$1, -$322b(a5)
00000094  70 01                      moveq      #$1, d0
00000096  A1 98                      .byte      0xa1, 0x98
00000098  30 3C A9 F0                move.w     #$a9f0, d0
0000009C  A7 46                      .byte      0xa7, 0x46
0000009E  2B 48 CD CC                move.l     a0, -$3234(a5)
000000A2  30 3C A9 F1                move.w     #$a9f1, d0
000000A6  A7 46                      .byte      0xa7, 0x46
000000A8  2B 48 CD C8                move.l     a0, -$3238(a5)
000000AC  30 3C A9 F4                move.w     #$a9f4, d0
000000B0  A7 46                      .byte      0xa7, 0x46
000000B2  2B 48 CD C4                move.l     a0, -$323c(a5)
000000B6  30 3C A9 F0                move.w     #$a9f0, d0
000000BA  41 FA 00 84                lea.l      $140(pc), a0
000000BE  A6 47                      .byte      0xa6, 0x47
000000C0  30 3C A9 F1                move.w     #$a9f1, d0
000000C4  41 FA 01 30                lea.l      $1f6(pc), a0
000000C8  A6 47                      .byte      0xa6, 0x47
000000CA  30 3C A9 F4                move.w     #$a9f4, d0
000000CE  41 FA 00 24                lea.l      $f4(pc), a0
000000D2  A6 47                      .byte      0xa6, 0x47
000000D4  4E B9 00 00 05 06          jsr        $506.l
000000DA  42 A7                      clr.l      -(a7)
000000DC  42 A7                      clr.l      -(a7)
000000DE  4E B9 00 00 16 AA          jsr        $16aa.l
000000E4  50 8F                      addq.l     #$8, a7
000000E6  20 2D CD DA                move.l     -$3226(a5), d0
000000EA  67 04                      beq.b      $f0
000000EC  20 40                      movea.l    d0, a0
000000EE  4E 90                      jsr        (a0)
000000F0  4E BA 00 26                jsr        $118(pc)
000000F4  2A 78 09 04                movea.l    $904.w, a5
000000F8  30 3C A9 F4                move.w     #$a9f4, d0
000000FC  20 6D CD C4                movea.l    -$323c(a5), a0
00000100  A6 47                      .byte      0xa6, 0x47
00000102  30 3C A9 F0                move.w     #$a9f0, d0
00000106  20 6D CD CC                movea.l    -$3234(a5), a0
0000010A  A6 47                      .byte      0xa6, 0x47
0000010C  30 3C A9 F1                move.w     #$a9f1, d0
00000110  20 6D CD C8                movea.l    -$3238(a5), a0
00000114  A6 47                      .byte      0xa6, 0x47
00000116  A9 F4                      .byte      0xa9, 0xf4

RunExitProcedures: ; 00000118..00000140
00000118  20 2D CD D6                move.l     -$322a(a5), d0
0000011C  67 20                      beq.b      $13e
0000011E  22 40                      movea.l    d0, a1
00000120  3F 3C FF FF                move.w     #$ffff, -(a7)
00000124  20 69 00 08                movea.l    $8(a1), a0
00000128  22 69 00 04                movea.l    $4(a1), a1
0000012C  4E 91                      jsr        (a1)
0000012E  54 4F                      addq.w     #$2, a7
00000130  22 6D CD D6                movea.l    -$322a(a5), a1
00000134  22 69 00 00                movea.l    $0(a1), a1
00000138  2B 49 CD D6                move.l     a1, -$322a(a5)
0000013C  66 E2                      bne.b      $120
0000013E  4E 75                      rts

LoadCodeSegment: ; 00000140..000001F6
00000140  48 E7 E0 E0                movem.l    d0-d2/a0-a2, -(a7)
00000144  55 AF 00 18                subq.l     #$2, $18(a7)
00000148  24 6F 00 18                movea.l    $18(a7), a2
0000014C  20 2D CD DE                move.l     -$3222(a5), d0
00000150  67 0A                      beq.b      $15c
00000152  20 40                      movea.l    d0, a0
00000154  3F 2A 00 06                move.w     $6(a2), -(a7)
00000158  4E 90                      jsr        (a0)
0000015A  54 8F                      addq.l     #$2, a7
0000015C  50 F8 0A 5E                st.b       $a5e.w
00000160  59 8F                      subq.l     #$4, a7
00000162  2F 3C 43 4F 44 45          move.l     #$434f4445, -(a7)
00000168  3F 2A 00 06                move.w     $6(a2), -(a7)
0000016C  A9 A0                      .byte      0xa9, 0xa0
0000016E  20 17                      move.l     (a7), d0
00000170  66 16                      bne.b      $188
00000172  20 2D CD EA                move.l     -$3216(a5), d0
00000176  66 04                      bne.b      $17c
00000178  70 0F                      moveq      #$f, d0
0000017A  A9 C9                      .byte      0xa9, 0xc9
0000017C  20 40                      movea.l    d0, a0
0000017E  3F 2A 00 06                move.w     $6(a2), -(a7)
00000182  4E 90                      jsr        (a0)
00000184  54 8F                      addq.l     #$2, a7
00000186  60 DA                      bra.b      $162
00000188  4A 38 0B B2                tst.b      $bb2.w
0000018C  67 04                      beq.b      $192
0000018E  20 40                      movea.l    d0, a0
00000190  A0 64                      .byte      0xa0, 0x64
00000192  20 57                      movea.l    (a7), a0
00000194  A0 29                      .byte      0xa0, 0x29
00000196  20 5F                      movea.l    (a7)+, a0
00000198  20 50                      movea.l    (a0), a0
0000019A  20 08                      move.l     a0, d0
0000019C  A0 55                      .byte      0xa0, 0x55
0000019E  20 40                      movea.l    d0, a0
000001A0  2F 08                      move.l     a0, -(a7)
000001A2  30 2A 00 06                move.w     $6(a2), d0
000001A6  4E BA 02 2C                jsr        $3d4(pc)
000001AA  20 5F                      movea.l    (a7)+, a0
000001AC  22 4D                      movea.l    a5, a1
000001AE  D3 E8 00 04                adda.l     $4(a0), a1
000001B2  30 28 00 02                move.w     $2(a0), d0
000001B6  60 12                      bra.b      $1ca
000001B8  22 29 00 02                move.l     $2(a1), d1
000001BC  D2 88                      add.l      a0, d1
000001BE  33 7C 4E F9 00 00          move.w     #$4ef9, $0(a1)
000001C4  23 41 00 02                move.l     d1, $2(a1)
000001C8  50 49                      addq.w     #$8, a1
000001CA  51 C8 FF EC                dbra       d0, $1b8
000001CE  4A 2D CD D5                tst.b      -$322b(a5)
000001D2  67 04                      beq.b      $1d8
000001D4  70 01                      moveq      #$1, d0
000001D6  A1 98                      .byte      0xa1, 0x98
000001D8  20 2D CD E2                move.l     -$321e(a5), d0
000001DC  67 0A                      beq.b      $1e8
000001DE  20 40                      movea.l    d0, a0
000001E0  3F 2A 00 06                move.w     $6(a2), -(a7)
000001E4  4E 90                      jsr        (a0)
000001E6  54 8F                      addq.l     #$2, a7
000001E8  4C DF 07 07                movem.l    (a7)+, d0-d2/a0-a2
000001EC  4A 38 01 2D                tst.b      $12d.w
000001F0  67 02                      beq.b      $1f4
000001F2  A9 FF                      .byte      0xa9, 0xff
000001F4  4E 75                      rts

UnloadCodeSegment: ; 000001F6..00000260
000001F6  2F 0A                      move.l     a2, -(a7)
000001F8  24 6F 00 08                movea.l    $8(a7), a2
000001FC  0C 6A 4E F9 00 00          cmpi.w     #$4ef9, $0(a2)
00000202  66 56                      bne.b      $25a
00000204  0C 6A 00 02 00 06          cmpi.w     #$2, $6(a2)
0000020A  6D 4E                      blt.b      $25a
0000020C  59 8F                      subq.l     #$4, a7
0000020E  2F 3C 43 4F 44 45          move.l     #$434f4445, -(a7)
00000214  3F 2A 00 06                move.w     $6(a2), -(a7)
00000218  A9 A0                      .byte      0xa9, 0xa0
0000021A  20 17                      move.l     (a7), d0
0000021C  67 2C                      beq.b      $24a
0000021E  20 40                      movea.l    d0, a0
00000220  22 4D                      movea.l    a5, a1
00000222  20 50                      movea.l    (a0), a0
00000224  22 08                      move.l     a0, d1
00000226  D2 D0                      adda.w     (a0), a1
00000228  30 28 00 02                move.w     $2(a0), d0
0000022C  60 0C                      bra.b      $23a
0000022E  33 7C A9 F0 00 00          move.w     #$a9f0, $0(a1)
00000234  93 A9 00 02                sub.l      d1, $2(a1)
00000238  50 49                      addq.w     #$8, a1
0000023A  51 C8 FF F2                dbra       d0, $22e
0000023E  A9 A3                      .byte      0xa9, 0xa3
00000240  4A 2D CD D5                tst.b      -$322b(a5)
00000244  67 04                      beq.b      $24a
00000246  70 01                      moveq      #$1, d0
00000248  A1 98                      .byte      0xa1, 0x98
0000024A  20 2D CD E6                move.l     -$321a(a5), d0
0000024E  67 0A                      beq.b      $25a
00000250  20 40                      movea.l    d0, a0
00000252  3F 2A 00 06                move.w     $6(a2), -(a7)
00000256  4E 90                      jsr        (a0)
00000258  54 8F                      addq.l     #$2, a7
0000025A  24 5F                      movea.l    (a7)+, a2
0000025C  2E 9F                      move.l     (a7)+, (a7)
0000025E  4E 75                      rts

DecodeXref: ; 00000260..00000360
00000260  48 E7 1C 30                movem.l    d3-d5/a2-a3, -(a7)
00000264  59 4F                      subq.w     #$4, a7
00000266  26 6F 00 1C                movea.l    $1c(a7), a3
0000026A  78 00                      moveq      #$0, d4
0000026C  60 00 00 E2                bra.w      $350
00000270  1E 9B                      move.b     (a3)+, (a7)
00000272  1F 5B 00 01                move.b     (a3)+, $1(a7)
00000276  1F 5B 00 02                move.b     (a3)+, $2(a7)
0000027A  1F 5B 00 03                move.b     (a3)+, $3(a7)
0000027E  24 6F 00 20                movea.l    $20(a7), a2
00000282  D5 D7                      adda.l     (a7), a2
00000284  16 1B                      move.b     (a3)+, d3
00000286  48 83                      ext.w      d3
00000288  30 03                      move.w     d3, d0
0000028A  02 40 00 80                andi.w     #$80, d0
0000028E  67 0E                      beq.b      $29e
00000290  02 43 00 7F                andi.w     #$7f, d3
00000294  14 DB                      move.b     (a3)+, (a2)+
00000296  53 43                      subq.w     #$1, d3
00000298  4A 43                      tst.w      d3
0000029A  6C F8                      bge.b      $294
0000029C  60 E6                      bra.b      $284
0000029E  30 03                      move.w     d3, d0
000002A0  02 40 00 40                andi.w     #$40, d0
000002A4  67 0E                      beq.b      $2b4
000002A6  30 03                      move.w     d3, d0
000002A8  02 40 00 3F                andi.w     #$3f, d0
000002AC  52 40                      addq.w     #$1, d0
000002AE  48 C0                      ext.l      d0
000002B0  D5 C0                      adda.l     d0, a2
000002B2  60 D0                      bra.b      $284
000002B4  30 03                      move.w     d3, d0
000002B6  02 40 00 20                andi.w     #$20, d0
000002BA  67 0A                      beq.b      $2c6
000002BC  02 43 00 1F                andi.w     #$1f, d3
000002C0  52 43                      addq.w     #$1, d3
000002C2  1A 1B                      move.b     (a3)+, d5
000002C4  60 0E                      bra.b      $2d4
000002C6  30 03                      move.w     d3, d0
000002C8  02 40 00 10                andi.w     #$10, d0
000002CC  67 10                      beq.b      $2de
000002CE  02 43 00 0F                andi.w     #$f, d3
000002D2  7A FF                      moveq      #$ff, d5
000002D4  14 C5                      move.b     d5, (a2)+
000002D6  53 43                      subq.w     #$1, d3
000002D8  4A 43                      tst.w      d3
000002DA  6C F8                      bge.b      $2d4
000002DC  60 A6                      bra.b      $284
000002DE  30 03                      move.w     d3, d0
000002E0  0C 40 00 04                cmpi.w     #$4, d0
000002E4  62 64                      bhi.b      $34a
000002E6  D0 40                      add.w      d0, d0
000002E8  30 3B 00 06                move.w     $2f0(pc, d0.w), d0
000002EC  4E FB 00 02                jmp        $2f0(pc, d0.w)
000002F0  00 5E 00 0A                ori.w      #$a, (a6)+
000002F4  00 1C 00 2C                ori.b      #$2c, (a4)+
000002F8  00 42 58 8A                ori.w      #$588a, d2
000002FC  14 FC FF FF                move.b     #$ff, (a2)+
00000300  14 FC FF FF                move.b     #$ff, (a2)+
00000304  14 DB                      move.b     (a3)+, (a2)+
00000306  14 DB                      move.b     (a3)+, (a2)+
00000308  60 00 FF 7A                bra.w      $284
0000030C  58 8A                      addq.l     #$4, a2
0000030E  14 FC FF FF                move.b     #$ff, (a2)+
00000312  14 DB                      move.b     (a3)+, (a2)+
00000314  14 DB                      move.b     (a3)+, (a2)+
00000316  14 DB                      move.b     (a3)+, (a2)+
00000318  60 00 FF 6A                bra.w      $284
0000031C  14 FC FF A9                move.b     #$a9, (a2)+
00000320  14 FC FF F0                move.b     #$f0, (a2)+
00000324  54 8A                      addq.l     #$2, a2
00000326  14 DB                      move.b     (a3)+, (a2)+
00000328  14 DB                      move.b     (a3)+, (a2)+
0000032A  52 8A                      addq.l     #$1, a2
0000032C  14 DB                      move.b     (a3)+, (a2)+
0000032E  60 00 FF 54                bra.w      $284
00000332  14 FC FF A9                move.b     #$a9, (a2)+
00000336  14 FC FF F0                move.b     #$f0, (a2)+
0000033A  52 8A                      addq.l     #$1, a2
0000033C  14 DB                      move.b     (a3)+, (a2)+
0000033E  14 DB                      move.b     (a3)+, (a2)+
00000340  14 DB                      move.b     (a3)+, (a2)+
00000342  52 8A                      addq.l     #$1, a2
00000344  14 DB                      move.b     (a3)+, (a2)+
00000346  60 00 FF 3C                bra.w      $284
0000034A  70 0F                      moveq      #$f, d0
0000034C  A9 C9                      .byte      0xa9, 0xc9
0000034E  52 44                      addq.w     #$1, d4
00000350  0C 44 00 03                cmpi.w     #$3, d4
00000354  6D 00 FF 1A                blt.w      $270
00000358  58 4F                      addq.w     #$4, a7
0000035A  4C DF 0C 38                movem.l    (a7)+, d3-d5/a2-a3
0000035E  4E 75                      rts

ApplyXref: ; 00000360..000003D4
00000360  2F 05                      move.l     d5, -(a7)
00000362  59 4F                      subq.w     #$4, a7
00000364  22 6F 00 0C                movea.l    $c(a7), a1
00000368  1E 99                      move.b     (a1)+, (a7)
0000036A  1F 59 00 01                move.b     (a1)+, $1(a7)
0000036E  1F 59 00 02                move.b     (a1)+, $2(a7)
00000372  1F 59 00 03                move.b     (a1)+, $3(a7)
00000376  2A 17                      move.l     (a7), d5
00000378  74 00                      moveq      #$0, d2
0000037A  60 4C                      bra.b      $3c8
0000037C  12 19                      move.b     (a1)+, d1
0000037E  10 01                      move.b     d1, d0
00000380  02 40 00 80                andi.w     #$80, d0
00000384  67 0C                      beq.b      $392
00000386  D2 01                      add.b      d1, d1
00000388  10 01                      move.b     d1, d0
0000038A  48 80                      ext.w      d0
0000038C  48 C0                      ext.l      d0
0000038E  D4 80                      add.l      d0, d2
00000390  60 28                      bra.b      $3ba
00000392  1E 81                      move.b     d1, (a7)
00000394  1F 59 00 01                move.b     (a1)+, $1(a7)
00000398  10 01                      move.b     d1, d0
0000039A  02 40 00 40                andi.w     #$40, d0
0000039E  67 0C                      beq.b      $3ac
000003A0  30 17                      move.w     (a7), d0
000003A2  E5 48                      lsl.w      #$2, d0
000003A4  E2 40                      asr.w      #$1, d0
000003A6  48 C0                      ext.l      d0
000003A8  D4 80                      add.l      d0, d2
000003AA  60 0E                      bra.b      $3ba
000003AC  1F 59 00 02                move.b     (a1)+, $2(a7)
000003B0  1F 59 00 03                move.b     (a1)+, $3(a7)
000003B4  24 17                      move.l     (a7), d2
000003B6  E5 8A                      lsl.l      #$2, d2
000003B8  E2 82                      asr.l      #$1, d2
000003BA  20 6F 00 10                movea.l    $10(a7), a0
000003BE  20 2F 00 14                move.l     $14(a7), d0
000003C2  D1 B0 28 00                add.l      d0, (a0, d2.l)
000003C6  53 85                      subq.l     #$1, d5
000003C8  4A 85                      tst.l      d5
000003CA  6E B0                      bgt.b      $37c
000003CC  20 49                      movea.l    a1, a0
000003CE  58 4F                      addq.w     #$4, a7
000003D0  2A 1F                      move.l     (a7)+, d5
000003D2  4E 75                      rts

SegmentLoader: ; 000003D4..00000430
000003D4  2F 0A                      move.l     a2, -(a7)
000003D6  24 48                      movea.l    a0, a2
000003D8  3F 00                      move.w     d0, -(a7)
000003DA  59 8F                      subq.l     #$4, a7
000003DC  2F 3C 58 52 45 46          move.l     #$58524546, -(a7)
000003E2  3F 00                      move.w     d0, -(a7)
000003E4  A9 A0                      .byte      0xa9, 0xa0
000003E6  20 57                      movea.l    (a7), a0
000003E8  20 08                      move.l     a0, d0
000003EA  66 16                      bne.b      $402
000003EC  20 2D CD EA                move.l     -$3216(a5), d0
000003F0  66 04                      bne.b      $3f6
000003F2  70 0F                      moveq      #$f, d0
000003F4  A9 C9                      .byte      0xa9, 0xc9
000003F6  20 40                      movea.l    d0, a0
000003F8  3F 2F 00 04                move.w     $4(a7), -(a7)
000003FC  4E 90                      jsr        (a0)
000003FE  54 8F                      addq.l     #$2, a7
00000400  60 DA                      bra.b      $3dc
00000402  20 50                      movea.l    (a0), a0
00000404  2F 0D                      move.l     a5, -(a7)
00000406  2F 0A                      move.l     a2, -(a7)
00000408  2F 08                      move.l     a0, -(a7)
0000040A  4E BA FF 54                jsr        $360(pc)
0000040E  2F 2D CD D0                move.l     -$3230(a5), -(a7)
00000412  2F 0A                      move.l     a2, -(a7)
00000414  2F 08                      move.l     a0, -(a7)
00000416  4E BA FF 48                jsr        $360(pc)
0000041A  2F 0A                      move.l     a2, -(a7)
0000041C  2F 0A                      move.l     a2, -(a7)
0000041E  2F 08                      move.l     a0, -(a7)
00000420  4E BA FF 3E                jsr        $360(pc)
00000424  4F EF 00 24                lea.l      $24(a7), a7
00000428  A9 A3                      .byte      0xa9, 0xa3
0000042A  54 8F                      addq.l     #$2, a7
0000042C  24 5F                      movea.l    (a7)+, a2
0000042E  4E 75                      rts

UnsignedMultiply32: ; 00000430..00000450
00000430  48 E7 30 00                movem.l    d2-d3, -(a7)
00000434  24 00                      move.l     d0, d2
00000436  48 42                      swap       d2
00000438  C4 C1                      mulu.w     d1, d2
0000043A  26 01                      move.l     d1, d3
0000043C  48 43                      swap       d3
0000043E  C6 C0                      mulu.w     d0, d3
00000440  D4 43                      add.w      d3, d2
00000442  48 42                      swap       d2
00000444  42 42                      clr.w      d2
00000446  C0 C1                      mulu.w     d1, d0
00000448  D0 82                      add.l      d2, d0
0000044A  4C DF 00 0C                movem.l    (a7)+, d2-d3
0000044E  4E 75                      rts

UnsignedDivide32: ; 00000450..000004BE
00000450  48 E7 30 00                movem.l    d2-d3, -(a7)
00000454  24 01                      move.l     d1, d2
00000456  42 42                      clr.w      d2
00000458  48 42                      swap       d2
0000045A  66 1C                      bne.b      $478
0000045C  36 00                      move.w     d0, d3
0000045E  42 40                      clr.w      d0
00000460  48 40                      swap       d0
00000462  67 06                      beq.b      $46a
00000464  80 C1                      divu.w     d1, d0
00000466  34 00                      move.w     d0, d2
00000468  48 42                      swap       d2
0000046A  30 03                      move.w     d3, d0
0000046C  80 C1                      divu.w     d1, d0
0000046E  34 00                      move.w     d0, d2
00000470  20 02                      move.l     d2, d0
00000472  4C DF 00 0C                movem.l    (a7)+, d2-d3
00000476  4E 75                      rts
00000478  34 00                      move.w     d0, d2
0000047A  42 40                      clr.w      d0
0000047C  48 40                      swap       d0
0000047E  48 42                      swap       d2
00000480  26 01                      move.l     d1, d3
00000482  72 0F                      moveq      #$f, d1
00000484  D4 82                      add.l      d2, d2
00000486  D1 80                      addx.l     d0, d0
00000488  B0 83                      cmp.l      d3, d0
0000048A  65 04                      bcs.b      $490
0000048C  90 83                      sub.l      d3, d0
0000048E  52 02                      addq.b     #$1, d2
00000490  51 C9 FF F2                dbra       d1, $484
00000494  20 02                      move.l     d2, d0
00000496  4C DF 00 0C                movem.l    (a7)+, d2-d3
0000049A  4E 75                      rts
0000049C  4A 80                      tst.l      d0
0000049E  6C 0C                      bge.b      $4ac
000004A0  44 80                      neg.l      d0
000004A2  4A 81                      tst.l      d1
000004A4  6C 10                      bge.b      $4b6
000004A6  44 81                      neg.l      d1
000004A8  4E FA FF A6                jmp        $450(pc)
000004AC  4A 81                      tst.l      d1
000004AE  6D 04                      blt.b      $4b4
000004B0  4E FA FF 9E                jmp        $450(pc)
000004B4  44 81                      neg.l      d1
000004B6  4E BA FF 98                jsr        $450(pc)
000004BA  44 80                      neg.l      d0
000004BC  4E 75                      rts

UnsignedDivide32Remainder: ; 000004BE..000004E6
000004BE  48 E7 30 00                movem.l    d2-d3, -(a7)
000004C2  24 01                      move.l     d1, d2
000004C4  42 42                      clr.w      d2
000004C6  48 42                      swap       d2
000004C8  66 1C                      bne.b      $4e6
000004CA  36 00                      move.w     d0, d3
000004CC  42 40                      clr.w      d0
000004CE  48 40                      swap       d0
000004D0  67 06                      beq.b      $4d8
000004D2  80 C1                      divu.w     d1, d0
000004D4  34 00                      move.w     d0, d2
000004D6  48 42                      swap       d2
000004D8  30 03                      move.w     d3, d0
000004DA  80 C1                      divu.w     d1, d0
000004DC  42 40                      clr.w      d0
000004DE  48 40                      swap       d0
000004E0  4C DF 00 0C                movem.l    (a7)+, d2-d3
000004E4  4E 75                      rts

UnsignedDivide16Step: ; 000004E6..00000506
000004E6  34 00                      move.w     d0, d2
000004E8  42 40                      clr.w      d0
000004EA  48 40                      swap       d0
000004EC  48 42                      swap       d2
000004EE  26 01                      move.l     d1, d3
000004F0  72 0F                      moveq      #$f, d1
000004F2  D4 82                      add.l      d2, d2
000004F4  D1 80                      addx.l     d0, d0
000004F6  B0 83                      cmp.l      d3, d0
000004F8  65 02                      bcs.b      $4fc
000004FA  90 83                      sub.l      d3, d0
000004FC  51 C9 FF F4                dbra       d1, $4f2
00000500  4C DF 00 0C                movem.l    (a7)+, d2-d3
00000504  4E 75                      rts

NoopStub: ; 00000506..00000508
00000506  4E 75                      rts

DoKontinue: ; 00000508..000007BC
00000508  4E 56 FF C4                link.w     a6, #$ffc4
0000050C  48 E7 1C 20                movem.l    d3-d5/a2, -(a7)
00000510  76 00                      moveq      #$0, d3
00000512  7A 00                      moveq      #$0, d5
00000514  76 00                      moveq      #$0, d3
00000516  48 6E FF C8                pea.l      -$38(a6)
0000051A  2F 3C 00 C8 00 B7          move.l     #$c800b7, -(a7)
00000520  2F 3C 01 5E 01 4D          move.l     #$15e014d, -(a7)
00000526  A8 A7                      .byte      0xa8, 0xa7
00000528  48 6E FF D0                pea.l      -$30(a6)
0000052C  2F 3C 01 40 00 FB          move.l     #$14000fb, -(a7)
00000532  2F 3C 01 51 01 09          move.l     #$1510109, -(a7)
00000538  A8 A7                      .byte      0xa8, 0xa7
0000053A  59 4F                      subq.w     #$4, a7
0000053C  3F 3C 00 CC                move.w     #$cc, -(a7)
00000540  A9 BC                      .byte      0xa9, 0xbc
00000542  20 5F                      movea.l    (a7)+, a0
00000544  24 48                      movea.l    a0, a2
00000546  78 00                      moveq      #$0, d4
00000548  60 1E                      bra.b      $568
0000054A  59 4F                      subq.w     #$4, a7
0000054C  30 04                      move.w     d4, d0
0000054E  06 40 17 70                addi.w     #$1770, d0
00000552  3F 00                      move.w     d0, -(a7)
00000554  A9 BC                      .byte      0xa9, 0xbc
00000556  20 5F                      movea.l    (a7)+, a0
00000558  32 44                      movea.w    d4, a1
0000055A  20 09                      move.l     a1, d0
0000055C  E5 88                      lsl.l      #$2, d0
0000055E  43 EE FF D8                lea.l      -$28(a6), a1
00000562  23 88 08 00                move.l     a0, (a1, d0.l)
00000566  52 44                      addq.w     #$1, d4
00000568  0C 44 00 0A                cmpi.w     #$a, d4
0000056C  6D DC                      blt.b      $54a
0000056E  48 6E FF C4                pea.l      -$3c(a6)
00000572  A8 74                      .byte      0xa8, 0x74
00000574  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
00000578  A8 73                      .byte      0xa8, 0x73
0000057A  2F 0A                      move.l     a2, -(a7)
0000057C  48 6E FF C8                pea.l      -$38(a6)
00000580  A8 F6                      .byte      0xa8, 0xf6
00000582  60 00 01 E6                bra.w      $76a
00000586  55 4F                      subq.w     #$2, a7
00000588  3F 3C FF FF                move.w     #$ffff, -(a7)
0000058C  48 6D D7 5E                pea.l      -$28a2(a5)
00000590  A9 70                      .byte      0xa9, 0x70
00000592  10 1F                      move.b     (a7)+, d0
00000594  0C 6D 00 03 D7 5E          cmpi.w     #$3, -$28a2(a5)
0000059A  66 0E                      bne.b      $5aa
0000059C  20 2D D7 60                move.l     -$28a0(a5), d0
000005A0  02 80 00 00 00 FF          andi.l     #$ff, d0
000005A6  1B 40 D7 5D                move.b     d0, -$28a3(a5)
000005AA  0C 2D 00 20 D7 5D          cmpi.b     #$20, -$28a3(a5)
000005B0  66 08                      bne.b      $5ba
000005B2  7A 01                      moveq      #$1, d5
000005B4  1B 7C 00 01 CE D8          move.b     #$1, -$3128(a5)
000005BA  4E B9 00 00 05 60          jsr        $560.l
000005C0  53 40                      subq.w     #$1, d0
000005C2  66 00 00 DA                bne.w      $69e
000005C6  70 00                      moveq      #$0, d0
000005C8  10 03                      move.b     d3, d0
000005CA  0C 40 00 14                cmpi.w     #$14, d0
000005CE  6C 06                      bge.b      $5d6
000005D0  76 14                      moveq      #$14, d3
000005D2  60 00 00 CA                bra.w      $69e
000005D6  70 00                      moveq      #$0, d0
000005D8  10 03                      move.b     d3, d0
000005DA  0C 40 00 14                cmpi.w     #$14, d0
000005DE  6F 10                      ble.b      $5f0
000005E0  70 00                      moveq      #$0, d0
000005E2  10 03                      move.b     d3, d0
000005E4  0C 40 00 28                cmpi.w     #$28, d0
000005E8  6C 06                      bge.b      $5f0
000005EA  76 28                      moveq      #$28, d3
000005EC  60 00 00 B0                bra.w      $69e
000005F0  70 00                      moveq      #$0, d0
000005F2  10 03                      move.b     d3, d0
000005F4  0C 40 00 28                cmpi.w     #$28, d0
000005F8  6F 10                      ble.b      $60a
000005FA  70 00                      moveq      #$0, d0
000005FC  10 03                      move.b     d3, d0
000005FE  0C 40 00 3C                cmpi.w     #$3c, d0
00000602  6C 06                      bge.b      $60a
00000604  76 3C                      moveq      #$3c, d3
00000606  60 00 00 96                bra.w      $69e
0000060A  70 00                      moveq      #$0, d0
0000060C  10 03                      move.b     d3, d0
0000060E  0C 40 00 3C                cmpi.w     #$3c, d0
00000612  6F 0E                      ble.b      $622
00000614  70 00                      moveq      #$0, d0
00000616  10 03                      move.b     d3, d0
00000618  0C 40 00 50                cmpi.w     #$50, d0
0000061C  6C 04                      bge.b      $622
0000061E  76 50                      moveq      #$50, d3
00000620  60 7C                      bra.b      $69e
00000622  70 00                      moveq      #$0, d0
00000624  10 03                      move.b     d3, d0
00000626  0C 40 00 50                cmpi.w     #$50, d0
0000062A  6F 0E                      ble.b      $63a
0000062C  70 00                      moveq      #$0, d0
0000062E  10 03                      move.b     d3, d0
00000630  0C 40 00 64                cmpi.w     #$64, d0
00000634  6C 04                      bge.b      $63a
00000636  76 64                      moveq      #$64, d3
00000638  60 64                      bra.b      $69e
0000063A  70 00                      moveq      #$0, d0
0000063C  10 03                      move.b     d3, d0
0000063E  0C 40 00 64                cmpi.w     #$64, d0
00000642  6F 0E                      ble.b      $652
00000644  70 00                      moveq      #$0, d0
00000646  10 03                      move.b     d3, d0
00000648  0C 40 00 78                cmpi.w     #$78, d0
0000064C  6C 04                      bge.b      $652
0000064E  76 78                      moveq      #$78, d3
00000650  60 4C                      bra.b      $69e
00000652  70 00                      moveq      #$0, d0
00000654  10 03                      move.b     d3, d0
00000656  0C 40 00 78                cmpi.w     #$78, d0
0000065A  6F 10                      ble.b      $66c
0000065C  70 00                      moveq      #$0, d0
0000065E  10 03                      move.b     d3, d0
00000660  0C 40 00 8C                cmpi.w     #$8c, d0
00000664  6C 06                      bge.b      $66c
00000666  16 3C 00 8C                move.b     #$8c, d3
0000066A  60 32                      bra.b      $69e
0000066C  70 00                      moveq      #$0, d0
0000066E  10 03                      move.b     d3, d0
00000670  0C 40 00 8C                cmpi.w     #$8c, d0
00000674  6F 10                      ble.b      $686
00000676  70 00                      moveq      #$0, d0
00000678  10 03                      move.b     d3, d0
0000067A  0C 40 00 A0                cmpi.w     #$a0, d0
0000067E  6C 06                      bge.b      $686
00000680  16 3C 00 A0                move.b     #$a0, d3
00000684  60 18                      bra.b      $69e
00000686  70 00                      moveq      #$0, d0
00000688  10 03                      move.b     d3, d0
0000068A  0C 40 00 A0                cmpi.w     #$a0, d0
0000068E  6F 0E                      ble.b      $69e
00000690  70 00                      moveq      #$0, d0
00000692  10 03                      move.b     d3, d0
00000694  0C 40 00 B4                cmpi.w     #$b4, d0
00000698  6C 04                      bge.b      $69e
0000069A  16 3C 00 B4                move.b     #$b4, d3
0000069E  70 00                      moveq      #$0, d0
000006A0  10 03                      move.b     d3, d0
000006A2  67 40                      beq.b      $6e4
000006A4  04 40 00 14                subi.w     #$14, d0
000006A8  67 46                      beq.b      $6f0
000006AA  04 40 00 14                subi.w     #$14, d0
000006AE  67 4C                      beq.b      $6fc
000006B0  04 40 00 14                subi.w     #$14, d0
000006B4  67 52                      beq.b      $708
000006B6  04 40 00 14                subi.w     #$14, d0
000006BA  67 58                      beq.b      $714
000006BC  04 40 00 14                subi.w     #$14, d0
000006C0  67 5E                      beq.b      $720
000006C2  04 40 00 14                subi.w     #$14, d0
000006C6  67 64                      beq.b      $72c
000006C8  04 40 00 14                subi.w     #$14, d0
000006CC  67 6A                      beq.b      $738
000006CE  04 40 00 14                subi.w     #$14, d0
000006D2  67 70                      beq.b      $744
000006D4  04 40 00 14                subi.w     #$14, d0
000006D8  67 76                      beq.b      $750
000006DA  04 40 00 14                subi.w     #$14, d0
000006DE  67 7C                      beq.b      $75c
000006E0  60 00 00 80                bra.w      $762
000006E4  2F 2E FF D8                move.l     -$28(a6), -(a7)
000006E8  48 6E FF D0                pea.l      -$30(a6)
000006EC  A8 F6                      .byte      0xa8, 0xf6
000006EE  60 72                      bra.b      $762
000006F0  2F 2E FF DC                move.l     -$24(a6), -(a7)
000006F4  48 6E FF D0                pea.l      -$30(a6)
000006F8  A8 F6                      .byte      0xa8, 0xf6
000006FA  60 66                      bra.b      $762
000006FC  2F 2E FF E0                move.l     -$20(a6), -(a7)
00000700  48 6E FF D0                pea.l      -$30(a6)
00000704  A8 F6                      .byte      0xa8, 0xf6
00000706  60 5A                      bra.b      $762
00000708  2F 2E FF E4                move.l     -$1c(a6), -(a7)
0000070C  48 6E FF D0                pea.l      -$30(a6)
00000710  A8 F6                      .byte      0xa8, 0xf6
00000712  60 4E                      bra.b      $762
00000714  2F 2E FF E8                move.l     -$18(a6), -(a7)
00000718  48 6E FF D0                pea.l      -$30(a6)
0000071C  A8 F6                      .byte      0xa8, 0xf6
0000071E  60 42                      bra.b      $762
00000720  2F 2E FF EC                move.l     -$14(a6), -(a7)
00000724  48 6E FF D0                pea.l      -$30(a6)
00000728  A8 F6                      .byte      0xa8, 0xf6
0000072A  60 36                      bra.b      $762
0000072C  2F 2E FF F0                move.l     -$10(a6), -(a7)
00000730  48 6E FF D0                pea.l      -$30(a6)
00000734  A8 F6                      .byte      0xa8, 0xf6
00000736  60 2A                      bra.b      $762
00000738  2F 2E FF F4                move.l     -$c(a6), -(a7)
0000073C  48 6E FF D0                pea.l      -$30(a6)
00000740  A8 F6                      .byte      0xa8, 0xf6
00000742  60 1E                      bra.b      $762
00000744  2F 2E FF F8                move.l     -$8(a6), -(a7)
00000748  48 6E FF D0                pea.l      -$30(a6)
0000074C  A8 F6                      .byte      0xa8, 0xf6
0000074E  60 12                      bra.b      $762
00000750  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000754  48 6E FF D0                pea.l      -$30(a6)
00000758  A8 F6                      .byte      0xa8, 0xf6
0000075A  60 06                      bra.b      $762
0000075C  7A 01                      moveq      #$1, d5
0000075E  42 2D CE D8                clr.b      -$3128(a5)
00000762  52 03                      addq.b     #$1, d3
00000764  4E B9 00 00 4A BA          jsr        $4aba.l
0000076A  4A 05                      tst.b      d5
0000076C  67 00 FE 18                beq.w      $586
00000770  2F 2E FF C4                move.l     -$3c(a6), -(a7)
00000774  A8 73                      .byte      0xa8, 0x73
00000776  0C 2D 00 01 CE D8          cmpi.b     #$1, -$3128(a5)
0000077C  66 1E                      bne.b      $79c
0000077E  4A 2D FF DE                tst.b      -$22(a5)
00000782  66 08                      bne.b      $78c
00000784  4E B9 00 00 07 CA          jsr        $7ca.l
0000078A  60 28                      bra.b      $7b4
0000078C  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
00000792  66 20                      bne.b      $7b4
00000794  4E B9 00 00 07 CA          jsr        $7ca.l
0000079A  60 18                      bra.b      $7b4
0000079C  4A 2D CE D8                tst.b      -$3128(a5)
000007A0  66 12                      bne.b      $7b4
000007A2  1B 7C 00 01 FF DE          move.b     #$1, -$22(a5)
000007A8  4E B9 00 00 15 8E          jsr        $158e.l
000007AE  4E B9 00 00 01 00          jsr        $100.l
000007B4  4C DF 04 38                movem.l    (a7)+, d3-d5/a2
000007B8  4E 5E                      unlk       a6
000007BA  4E 75                      rts

; MacsBug symbol trailer for DoKontinue: 8A 44 6F 4B 6F 6E 74 69 6E 75 65

SelectionScreen: ; 000007CA..00000896
000007CA  4E 56 00 00                link.w     a6, #$0
000007CE  4E B9 00 00 4A E6          jsr        $4ae6.l
000007D4  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
000007DA  20 1F                      move.l     (a7)+, d0
000007DC  A0 32                      .byte      0xa0, 0x32
000007DE  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
000007E4  66 08                      bne.b      $7ee
000007E6  1B 7C 00 01 D4 1E          move.b     #$1, -$2be2(a5)
000007EC  60 4A                      bra.b      $838
000007EE  42 2D D4 1E                clr.b      -$2be2(a5)
000007F2  60 44                      bra.b      $838
000007F4  2F 3C 1F 41 00 01          move.l     #$1f410001, -(a7)
000007FA  4E B9 00 00 00 C8          jsr        $c8.l
00000800  4E B9 00 00 8D 5E          jsr        $8d5e.l
00000806  4E B9 00 00 8F 1A          jsr        $8f1a.l
0000080C  4E B9 00 00 4A 90          jsr        $4a90.l
00000812  A9 75                      .byte      0xa9, 0x75
00000814  20 1F                      move.l     (a7)+, d0
00000816  90 AD D4 06                sub.l      -$2bfa(a5), d0
0000081A  0C 80 00 00 00 FA          cmpi.l     #$fa, d0
00000820  63 16                      bls.b      $838
00000822  0C 2D 00 01 D4 20          cmpi.b     #$1, -$2be0(a5)
00000828  66 0E                      bne.b      $838
0000082A  0C 2D 00 01 D4 1E          cmpi.b     #$1, -$2be2(a5)
00000830  66 06                      bne.b      $838
00000832  1B 7C 00 01 D3 D8          move.b     #$1, -$2c28(a5)
00000838  4A 2D D4 20                tst.b      -$2be0(a5)
0000083C  67 0C                      beq.b      $84a
0000083E  4A 2D D4 1E                tst.b      -$2be2(a5)
00000842  67 06                      beq.b      $84a
00000844  4A 2D D3 D8                tst.b      -$2c28(a5)
00000848  66 06                      bne.b      $850
0000084A  4A 2D CF 0E                tst.b      -$30f2(a5)
0000084E  67 A4                      beq.b      $7f4
00000850  42 2D D3 D8                clr.b      -$2c28(a5)
00000854  4E B9 00 00 00 88          jsr        $88.l
0000085A  4A 2D CF 0E                tst.b      -$30f2(a5)
0000085E  66 1C                      bne.b      $87c
00000860  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
00000866  66 06                      bne.b      $86e
00000868  4E B9 00 00 09 10          jsr        $910.l
0000086E  4A 2D FF DE                tst.b      -$22(a5)
00000872  66 1E                      bne.b      $892
00000874  4E B9 00 00 08 A8          jsr        $8a8.l
0000087A  60 16                      bra.b      $892
0000087C  4E B9 00 00 00 88          jsr        $88.l
00000882  42 2D CF 0E                clr.b      -$30f2(a5)
00000886  4E B9 00 00 15 8E          jsr        $158e.l
0000088C  4E B9 00 00 01 00          jsr        $100.l
00000892  4E 5E                      unlk       a6
00000894  4E 75                      rts

; MacsBug symbol trailer for SelectionScreen: 8F 53 65 6C 65 63 74 69 6F 6E 53 63 72 65 65 6E

VSScreen: ; 000008A8..00000904
000008A8  4E 56 00 00                link.w     a6, #$0
000008AC  4E B9 00 00 71 C6          jsr        $71c6.l
000008B2  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
000008B8  20 1F                      move.l     (a7)+, d0
000008BA  A0 32                      .byte      0xa0, 0x32
000008BC  59 4F                      subq.w     #$4, a7
000008BE  A9 75                      .byte      0xa9, 0x75
000008C0  20 1F                      move.l     (a7)+, d0
000008C2  2B 40 D4 06                move.l     d0, -$2bfa(a5)
000008C6  2F 3C 1F 42 00 0A          move.l     #$1f42000a, -(a7)
000008CC  4E B9 00 00 00 B8          jsr        $b8.l
000008D2  58 4F                      addq.w     #$4, a7
000008D4  60 0C                      bra.b      $8e2
000008D6  4E B9 00 00 78 04          jsr        $7804.l
000008DC  4E B9 00 00 4A 90          jsr        $4a90.l
000008E2  59 4F                      subq.w     #$4, a7
000008E4  A9 75                      .byte      0xa9, 0x75
000008E6  20 1F                      move.l     (a7)+, d0
000008E8  90 AD D4 06                sub.l      -$2bfa(a5), d0
000008EC  0C 80 00 00 00 C8          cmpi.l     #$c8, d0
000008F2  65 E2                      bcs.b      $8d6
000008F4  4E B9 00 00 56 70          jsr        $5670.l
000008FA  4E B9 00 00 10 26          jsr        $1026.l
00000900  4E 5E                      unlk       a6
00000902  4E 75                      rts

; MacsBug symbol trailer for VSScreen: 88 56 53 53 63 72 65 65 6E

VSScreenCPU: ; 00000910..000009A8
00000910  4E 56 00 00                link.w     a6, #$0
00000914  0C 6D 00 0A D7 36          cmpi.w     #$a, -$28ca(a5)
0000091A  66 34                      bne.b      $950
0000091C  0C 2D 00 01 CF 10          cmpi.b     #$1, -$30f0(a5)
00000922  66 06                      bne.b      $92a
00000924  3B 7C 00 0C FF E2          move.w     #$c, -$1e(a5)
0000092A  0C 2D 00 01 CF 14          cmpi.b     #$1, -$30ec(a5)
00000930  66 08                      bne.b      $93a
00000932  3B 7C 00 10 FF E2          move.w     #$10, -$1e(a5)
00000938  60 26                      bra.b      $960
0000093A  52 6D D7 36                addq.w     #$1, -$28ca(a5)
0000093E  41 ED D7 38                lea.l      -$28c8(a5), a0
00000942  30 2D D7 36                move.w     -$28ca(a5), d0
00000946  D0 C0                      adda.w     d0, a0
00000948  3B 70 00 00 FF E2          move.w     (a0, d0.w), -$1e(a5)
0000094E  60 10                      bra.b      $960
00000950  41 ED D7 38                lea.l      -$28c8(a5), a0
00000954  30 2D D7 36                move.w     -$28ca(a5), d0
00000958  D0 C0                      adda.w     d0, a0
0000095A  3B 70 00 00 FF E2          move.w     (a0, d0.w), -$1e(a5)
00000960  42 6D D4 1C                clr.w      -$2be4(a5)
00000964  4E B9 00 00 72 5A          jsr        $725a.l
0000096A  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
00000970  20 1F                      move.l     (a7)+, d0
00000972  A0 32                      .byte      0xa0, 0x32
00000974  59 4F                      subq.w     #$4, a7
00000976  A9 75                      .byte      0xa9, 0x75
00000978  20 1F                      move.l     (a7)+, d0
0000097A  2B 40 D4 06                move.l     d0, -$2bfa(a5)
0000097E  2F 3C 1F 43 00 0A          move.l     #$1f43000a, -(a7)
00000984  4E B9 00 00 00 B8          jsr        $b8.l
0000098A  58 4F                      addq.w     #$4, a7
0000098C  59 4F                      subq.w     #$4, a7
0000098E  A9 75                      .byte      0xa9, 0x75
00000990  20 1F                      move.l     (a7)+, d0
00000992  90 AD D4 06                sub.l      -$2bfa(a5), d0
00000996  0C 80 00 00 00 C8          cmpi.l     #$c8, d0
0000099C  65 EE                      bcs.b      $98c
0000099E  4E B9 00 00 10 26          jsr        $1026.l
000009A4  4E 5E                      unlk       a6
000009A6  4E 75                      rts

; MacsBug symbol trailer for VSScreenCPU: 8B 56 53 53 63 72 65 65 6E 43 50 55

DoCongratulations: ; 000009B6..000009FA
000009B6  4E 56 00 00                link.w     a6, #$0
000009BA  3F 3C 00 0F                move.w     #$f, -(a7)
000009BE  2F 3C 00 A3 00 BA          move.l     #$a300ba, -(a7)
000009C4  48 6D DF 00                pea.l      -$2100(a5)
000009C8  4E B9 00 00 00 F8          jsr        $f8.l
000009CE  3F 3C 00 0F                move.w     #$f, -(a7)
000009D2  2F 3C 00 87 00 D8          move.l     #$8700d8, -(a7)
000009D8  48 6D DF 10                pea.l      -$20f0(a5)
000009DC  4E B9 00 00 00 F8          jsr        $f8.l
000009E2  3F 3C 00 0F                move.w     #$f, -(a7)
000009E6  2F 3C 00 B4 00 F6          move.l     #$b400f6, -(a7)
000009EC  48 6D DF 25                pea.l      -$20db(a5)
000009F0  4E B9 00 00 00 F8          jsr        $f8.l
000009F6  4E 5E                      unlk       a6
000009F8  4E 75                      rts

; MacsBug symbol trailer for DoCongratulations: 91 44 6F 43 6F 6E 67 72 61 74 75 6C 61 74 69 6F 6E 73

RollKredits: ; 00000A0E..00000F86
00000A0E  4E 56 FF DE                link.w     a6, #$ffde
00000A12  48 E7 1C 00                movem.l    d3-d5, -(a7)
00000A16  2D 6D DF 32 FF DE          move.l     -$20ce(a5), -$22(a6)
00000A1C  3D 6D DF 36 FF E2          move.w     -$20ca(a5), -$1e(a6)
00000A22  76 00                      moveq      #$0, d3
00000A24  78 00                      moveq      #$0, d4
00000A26  7A 00                      moveq      #$0, d5
00000A28  48 6E FF EC                pea.l      -$14(a6)
00000A2C  42 A7                      clr.l      -(a7)
00000A2E  2F 3C 01 B0 01 2C          move.l     #$1b0012c, -(a7)
00000A34  A8 A7                      .byte      0xa8, 0xa7
00000A36  48 6E FF F4                pea.l      -$c(a6)
00000A3A  2F 3C 01 B0 00 6C          move.l     #$1b0006c, -(a7)
00000A40  2F 3C 03 60 01 98          move.l     #$3600198, -(a7)
00000A46  A8 A7                      .byte      0xa8, 0xa7
00000A48  48 6E FF E4                pea.l      -$1c(a6)
00000A4C  48 6E FF EC                pea.l      -$14(a6)
00000A50  4E B9 00 00 00 E8          jsr        $e8.l
00000A56  48 6E FF FC                pea.l      -$4(a6)
00000A5A  48 6E FF EC                pea.l      -$14(a6)
00000A5E  4E B9 00 00 00 E0          jsr        $e0.l
00000A64  4E B9 00 00 A7 24          jsr        $a724.l
00000A6A  20 6D D3 EE                movea.l    -$2c12(a5), a0
00000A6E  48 68 00 02                pea.l      $2(a0)
00000A72  20 6E FF E4                movea.l    -$1c(a6), a0
00000A76  48 68 00 02                pea.l      $2(a0)
00000A7A  48 6D D4 76                pea.l      -$2b8a(a5)
00000A7E  48 6E FF EC                pea.l      -$14(a6)
00000A82  42 67                      clr.w      -(a7)
00000A84  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000A88  2F 28 00 18                move.l     $18(a0), -(a7)
00000A8C  A8 EC                      .byte      0xa8, 0xec
00000A8E  48 6E FF E8                pea.l      -$18(a6)
00000A92  A8 74                      .byte      0xa8, 0x74
00000A94  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000A98  A8 73                      .byte      0xa8, 0x73
00000A9A  48 6E FF EC                pea.l      -$14(a6)
00000A9E  A8 A3                      .byte      0xa8, 0xa3
00000AA0  2F 2E FF E8                move.l     -$18(a6), -(a7)
00000AA4  A8 73                      .byte      0xa8, 0x73
00000AA6  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000AAA  A8 73                      .byte      0xa8, 0x73
00000AAC  3F 3C 00 01                move.w     #$1, -(a7)
00000AB0  A8 88                      .byte      0xa8, 0x88
00000AB2  3F 3C 00 19                move.w     #$19, -(a7)
00000AB6  A8 8A                      .byte      0xa8, 0x8a
00000AB8  2F 3C 00 32 00 28          move.l     #$320028, -(a7)
00000ABE  A8 93                      .byte      0xa8, 0x93
00000AC0  48 6D DF 38                pea.l      -$20c8(a5)
00000AC4  A8 84                      .byte      0xa8, 0x84
00000AC6  3F 3C 00 0F                move.w     #$f, -(a7)
00000ACA  A8 8A                      .byte      0xa8, 0x8a
00000ACC  2F 3C 00 46 00 62          move.l     #$460062, -(a7)
00000AD2  A8 93                      .byte      0xa8, 0x93
00000AD4  48 6D DF 46                pea.l      -$20ba(a5)
00000AD8  A8 84                      .byte      0xa8, 0x84
00000ADA  2F 3C 00 6E 00 87          move.l     #$6e0087, -(a7)
00000AE0  A8 93                      .byte      0xa8, 0x93
00000AE2  48 6D DF 52                pea.l      -$20ae(a5)
00000AE6  A8 84                      .byte      0xa8, 0x84
00000AE8  2F 3C 00 87 00 50          move.l     #$870050, -(a7)
00000AEE  A8 93                      .byte      0xa8, 0x93
00000AF0  48 6D DF 55                pea.l      -$20ab(a5)
00000AF4  A8 84                      .byte      0xa8, 0x84
00000AF6  2F 3C 01 40 00 2E          move.l     #$140002e, -(a7)
00000AFC  A8 93                      .byte      0xa8, 0x93
00000AFE  3F 3C 00 19                move.w     #$19, -(a7)
00000B02  A8 8A                      .byte      0xa8, 0x8a
00000B04  48 6D DF 64                pea.l      -$209c(a5)
00000B08  A8 84                      .byte      0xa8, 0x84
00000B0A  3F 3C 00 0F                move.w     #$f, -(a7)
00000B0E  A8 8A                      .byte      0xa8, 0x8a
00000B10  2F 3C 01 54 00 66          move.l     #$1540066, -(a7)
00000B16  A8 93                      .byte      0xa8, 0x93
00000B18  48 6D DF 72                pea.l      -$208e(a5)
00000B1C  A8 84                      .byte      0xa8, 0x84
00000B1E  2F 3C 01 72 00 87          move.l     #$1720087, -(a7)
00000B24  A8 93                      .byte      0xa8, 0x93
00000B26  48 6D DF 52                pea.l      -$20ae(a5)
00000B2A  A8 84                      .byte      0xa8, 0x84
00000B2C  2F 3C 01 8B 00 58          move.l     #$18b0058, -(a7)
00000B32  A8 93                      .byte      0xa8, 0x93
00000B34  48 6D DF 7D                pea.l      -$2083(a5)
00000B38  A8 84                      .byte      0xa8, 0x84
00000B3A  2F 3C 01 A4 00 41          move.l     #$1a40041, -(a7)
00000B40  A8 93                      .byte      0xa8, 0x93
00000B42  48 6D DF 8A                pea.l      -$2076(a5)
00000B46  A8 84                      .byte      0xa8, 0x84
00000B48  4E B9 00 00 00 88          jsr        $88.l
00000B4E  4F EF 00 10                lea.l      $10(a7), a7
00000B52  60 00 04 14                bra.w      $f68
00000B56  2F 3C 1F 46 00 0A          move.l     #$1f46000a, -(a7)
00000B5C  4E B9 00 00 00 C8          jsr        $c8.l
00000B62  20 6E FF E4                movea.l    -$1c(a6), a0
00000B66  48 68 00 02                pea.l      $2(a0)
00000B6A  20 6E FF FC                movea.l    -$4(a6), a0
00000B6E  48 68 00 02                pea.l      $2(a0)
00000B72  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000B76  48 68 00 02                pea.l      $2(a0)
00000B7A  48 6E FF EC                pea.l      -$14(a6)
00000B7E  48 6E FF EC                pea.l      -$14(a6)
00000B82  48 6E FF F4                pea.l      -$c(a6)
00000B86  A8 17                      .byte      0xa8, 0x17
00000B88  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000B8C  48 68 00 02                pea.l      $2(a0)
00000B90  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000B94  48 68 00 02                pea.l      $2(a0)
00000B98  48 6D D7 F4                pea.l      -$280c(a5)
00000B9C  48 6D D7 F4                pea.l      -$280c(a5)
00000BA0  42 67                      clr.w      -(a7)
00000BA2  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000BA6  2F 28 00 18                move.l     $18(a0), -(a7)
00000BAA  A8 EC                      .byte      0xa8, 0xec
00000BAC  20 6D D3 FA                movea.l    -$2c06(a5), a0
00000BB0  48 68 00 02                pea.l      $2(a0)
00000BB4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00000BB8  48 68 00 02                pea.l      $2(a0)
00000BBC  48 6D D7 F4                pea.l      -$280c(a5)
00000BC0  48 6D D7 F4                pea.l      -$280c(a5)
00000BC4  42 67                      clr.w      -(a7)
00000BC6  20 6D D3 DE                movea.l    -$2c22(a5), a0
00000BCA  2F 28 00 18                move.l     $18(a0), -(a7)
00000BCE  A8 EC                      .byte      0xa8, 0xec
00000BD0  4E B9 00 00 05 68          jsr        $568.l
00000BD6  53 40                      subq.w     #$1, d0
00000BD8  58 4F                      addq.w     #$4, a7
00000BDA  66 0E                      bne.b      $bea
00000BDC  48 6E FF F4                pea.l      -$c(a6)
00000BE0  2F 3C FF FB 00 00          move.l     #$fffb0000, -(a7)
00000BE6  A8 A8                      .byte      0xa8, 0xa8
00000BE8  60 0C                      bra.b      $bf6
00000BEA  48 6E FF F4                pea.l      -$c(a6)
00000BEE  2F 3C FF FE 00 00          move.l     #$fffe0000, -(a7)
00000BF4  A8 A8                      .byte      0xa8, 0xa8
00000BF6  4E B9 00 00 4A 90          jsr        $4a90.l
00000BFC  4A 6E FF F8                tst.w      -$8(a6)
00000C00  6C 16                      bge.b      $c18
00000C02  76 01                      moveq      #$1, d3
00000C04  52 44                      addq.w     #$1, d4
00000C06  48 6E FF F4                pea.l      -$c(a6)
00000C0A  2F 3C 01 B0 00 6C          move.l     #$1b0006c, -(a7)
00000C10  2F 3C 03 60 01 98          move.l     #$3600198, -(a7)
00000C16  A8 A7                      .byte      0xa8, 0xa7
00000C18  0C 03 00 01                cmpi.b     #$1, d3
00000C1C  66 00 03 4A                bne.w      $f68
00000C20  48 6E FF E8                pea.l      -$18(a6)
00000C24  A8 74                      .byte      0xa8, 0x74
00000C26  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000C2A  A8 73                      .byte      0xa8, 0x73
00000C2C  48 6E FF EC                pea.l      -$14(a6)
00000C30  A8 A3                      .byte      0xa8, 0xa3
00000C32  2F 2E FF E8                move.l     -$18(a6), -(a7)
00000C36  A8 73                      .byte      0xa8, 0x73
00000C38  30 04                      move.w     d4, d0
00000C3A  0C 40 00 05                cmpi.w     #$5, d0
00000C3E  62 00 03 26                bhi.w      $f66
00000C42  D0 40                      add.w      d0, d0
00000C44  30 3B 00 06                move.w     $c4c(pc, d0.w), d0
00000C48  4E FB 00 02                jmp        $c4c(pc, d0.w)
00000C4C  03 1A                      btst.l     d1, (a2)+
00000C4E  00 0C                      .byte      0x00, 0x0c
00000C50  00 E4                      .byte      0x00, 0xe4
00000C52  01 78 02 34                bchg.b     d0, $234.w
00000C56  03 18                      btst.l     d1, (a0)+
00000C58  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000C5C  A8 73                      .byte      0xa8, 0x73
00000C5E  3F 3C 00 01                move.w     #$1, -(a7)
00000C62  A8 88                      .byte      0xa8, 0x88
00000C64  3F 3C 00 0F                move.w     #$f, -(a7)
00000C68  A8 8A                      .byte      0xa8, 0x8a
00000C6A  2F 3C 00 14 00 6C          move.l     #$14006c, -(a7)
00000C70  A8 93                      .byte      0xa8, 0x93
00000C72  48 6D DF 9D                pea.l      -$2063(a5)
00000C76  A8 84                      .byte      0xa8, 0x84
00000C78  2F 3C 00 32 00 87          move.l     #$320087, -(a7)
00000C7E  A8 93                      .byte      0xa8, 0x93
00000C80  48 6D DF 52                pea.l      -$20ae(a5)
00000C84  A8 84                      .byte      0xa8, 0x84
00000C86  2F 3C 00 46 00 50          move.l     #$460050, -(a7)
00000C8C  A8 93                      .byte      0xa8, 0x93
00000C8E  48 6D DF 55                pea.l      -$20ab(a5)
00000C92  A8 84                      .byte      0xa8, 0x84
00000C94  3F 3C 00 0C                move.w     #$c, -(a7)
00000C98  A8 8A                      .byte      0xa8, 0x8a
00000C9A  2F 3C 00 5A 00 58          move.l     #$5a0058, -(a7)
00000CA0  A8 93                      .byte      0xa8, 0x93
00000CA2  48 6D DF A6                pea.l      -$205a(a5)
00000CA6  A8 84                      .byte      0xa8, 0x84
00000CA8  2F 3C 00 69 00 52          move.l     #$690052, -(a7)
00000CAE  A8 93                      .byte      0xa8, 0x93
00000CB0  48 6D DF BB                pea.l      -$2045(a5)
00000CB4  A8 84                      .byte      0xa8, 0x84
00000CB6  3F 3C 00 0F                move.w     #$f, -(a7)
00000CBA  A8 8A                      .byte      0xa8, 0x8a
00000CBC  2F 3C 00 FA 00 41          move.l     #$fa0041, -(a7)
00000CC2  A8 93                      .byte      0xa8, 0x93
00000CC4  48 6D DF D2                pea.l      -$202e(a5)
00000CC8  A8 84                      .byte      0xa8, 0x84
00000CCA  2F 3C 01 0E 00 4A          move.l     #$10e004a, -(a7)
00000CD0  A8 93                      .byte      0xa8, 0x93
00000CD2  48 6D DF E5                pea.l      -$201b(a5)
00000CD6  A8 84                      .byte      0xa8, 0x84
00000CD8  2F 3C 01 22 00 84          move.l     #$1220084, -(a7)
00000CDE  A8 93                      .byte      0xa8, 0x93
00000CE0  48 6D DF F6                pea.l      -$200a(a5)
00000CE4  A8 84                      .byte      0xa8, 0x84
00000CE6  2F 3C 01 36 00 45          move.l     #$1360045, -(a7)
00000CEC  A8 93                      .byte      0xa8, 0x93
00000CEE  48 6D DF FA                pea.l      -$2006(a5)
00000CF2  A8 84                      .byte      0xa8, 0x84
00000CF4  2F 3C 01 72 00 46          move.l     #$1720046, -(a7)
00000CFA  A8 93                      .byte      0xa8, 0x93
00000CFC  48 6D E0 0C                pea.l      -$1ff4(a5)
00000D00  A8 84                      .byte      0xa8, 0x84
00000D02  2F 3C 01 86 00 60          move.l     #$1860060, -(a7)
00000D08  A8 93                      .byte      0xa8, 0x93
00000D0A  48 6D E0 1E                pea.l      -$1fe2(a5)
00000D0E  A8 84                      .byte      0xa8, 0x84
00000D10  2F 3C 01 9A 00 4D          move.l     #$19a004d, -(a7)
00000D16  A8 93                      .byte      0xa8, 0x93
00000D18  48 6D E0 29                pea.l      -$1fd7(a5)
00000D1C  A8 84                      .byte      0xa8, 0x84
00000D1E  2F 3C 01 AE 00 69          move.l     #$1ae0069, -(a7)
00000D24  A8 93                      .byte      0xa8, 0x93
00000D26  48 6D E0 3A                pea.l      -$1fc6(a5)
00000D2A  A8 84                      .byte      0xa8, 0x84
00000D2C  60 00 02 38                bra.w      $f66
00000D30  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000D34  A8 73                      .byte      0xa8, 0x73
00000D36  3F 3C 00 01                move.w     #$1, -(a7)
00000D3A  A8 88                      .byte      0xa8, 0x88
00000D3C  3F 3C 00 0F                move.w     #$f, -(a7)
00000D40  A8 8A                      .byte      0xa8, 0x8a
00000D42  2F 3C 00 14 00 3C          move.l     #$14003c, -(a7)
00000D48  A8 93                      .byte      0xa8, 0x93
00000D4A  48 6D E0 44                pea.l      -$1fbc(a5)
00000D4E  A8 84                      .byte      0xa8, 0x84
00000D50  2F 3C 00 28 00 87          move.l     #$280087, -(a7)
00000D56  A8 93                      .byte      0xa8, 0x93
00000D58  48 6D DF 52                pea.l      -$20ae(a5)
00000D5C  A8 84                      .byte      0xa8, 0x84
00000D5E  2F 3C 00 3C 00 55          move.l     #$3c0055, -(a7)
00000D64  A8 93                      .byte      0xa8, 0x93
00000D66  48 6D E0 59                pea.l      -$1fa7(a5)
00000D6A  A8 84                      .byte      0xa8, 0x84
00000D6C  2F 3C 00 C8 00 46          move.l     #$c80046, -(a7)
00000D72  A8 93                      .byte      0xa8, 0x93
00000D74  48 6D E0 66                pea.l      -$1f9a(a5)
00000D78  A8 84                      .byte      0xa8, 0x84
00000D7A  2F 3C 00 DC 00 87          move.l     #$dc0087, -(a7)
00000D80  A8 93                      .byte      0xa8, 0x93
00000D82  48 6D DF 52                pea.l      -$20ae(a5)
00000D86  A8 84                      .byte      0xa8, 0x84
00000D88  2F 3C 00 F0 00 50          move.l     #$f00050, -(a7)
00000D8E  A8 93                      .byte      0xa8, 0x93
00000D90  48 6D E0 78                pea.l      -$1f88(a5)
00000D94  A8 84                      .byte      0xa8, 0x84
00000D96  2F 3C 01 7C 00 32          move.l     #$17c0032, -(a7)
00000D9C  A8 93                      .byte      0xa8, 0x93
00000D9E  48 6D E0 87                pea.l      -$1f79(a5)
00000DA2  A8 84                      .byte      0xa8, 0x84
00000DA4  2F 3C 01 90 00 87          move.l     #$1900087, -(a7)
00000DAA  A8 93                      .byte      0xa8, 0x93
00000DAC  48 6D DF 52                pea.l      -$20ae(a5)
00000DB0  A8 84                      .byte      0xa8, 0x84
00000DB2  2F 3C 01 A4 00 4B          move.l     #$1a4004b, -(a7)
00000DB8  A8 93                      .byte      0xa8, 0x93
00000DBA  48 6D E0 9E                pea.l      -$1f62(a5)
00000DBE  A8 84                      .byte      0xa8, 0x84
00000DC0  60 00 01 A4                bra.w      $f66
00000DC4  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000DC8  A8 73                      .byte      0xa8, 0x73
00000DCA  3F 3C 00 01                move.w     #$1, -(a7)
00000DCE  A8 88                      .byte      0xa8, 0x88
00000DD0  3F 3C 00 0F                move.w     #$f, -(a7)
00000DD4  A8 8A                      .byte      0xa8, 0x8a
00000DD6  2F 3C 00 14 00 5A          move.l     #$14005a, -(a7)
00000DDC  A8 93                      .byte      0xa8, 0x93
00000DDE  48 6D E0 AF                pea.l      -$1f51(a5)
00000DE2  A8 84                      .byte      0xa8, 0x84
00000DE4  2F 3C 00 3C 00 30          move.l     #$3c0030, -(a7)
00000DEA  A8 93                      .byte      0xa8, 0x93
00000DEC  48 6D E0 BC                pea.l      -$1f44(a5)
00000DF0  A8 84                      .byte      0xa8, 0x84
00000DF2  2F 3C 00 50 00 87          move.l     #$500087, -(a7)
00000DF8  A8 93                      .byte      0xa8, 0x93
00000DFA  48 6D DF 52                pea.l      -$20ae(a5)
00000DFE  A8 84                      .byte      0xa8, 0x84
00000E00  2F 3C 00 64 00 55          move.l     #$640055, -(a7)
00000E06  A8 93                      .byte      0xa8, 0x93
00000E08  48 6D E0 D3                pea.l      -$1f2d(a5)
00000E0C  A8 84                      .byte      0xa8, 0x84
00000E0E  3F 3C 00 11                move.w     #$11, -(a7)
00000E12  A8 8A                      .byte      0xa8, 0x8a
00000E14  2F 3C 00 C8 00 51          move.l     #$c80051, -(a7)
00000E1A  A8 93                      .byte      0xa8, 0x93
00000E1C  48 6D E0 E2                pea.l      -$1f1e(a5)
00000E20  A8 84                      .byte      0xa8, 0x84
00000E22  2F 3C 00 E6 00 56          move.l     #$e60056, -(a7)
00000E28  A8 93                      .byte      0xa8, 0x93
00000E2A  3F 3C 00 0F                move.w     #$f, -(a7)
00000E2E  A8 8A                      .byte      0xa8, 0x8a
00000E30  48 6D E0 F0                pea.l      -$1f10(a5)
00000E34  A8 84                      .byte      0xa8, 0x84
00000E36  2F 3C 00 FA 00 61          move.l     #$fa0061, -(a7)
00000E3C  A8 93                      .byte      0xa8, 0x93
00000E3E  48 6D E0 FE                pea.l      -$1f02(a5)
00000E42  A8 84                      .byte      0xa8, 0x84
00000E44  2F 3C 01 0E 00 50          move.l     #$10e0050, -(a7)
00000E4A  A8 93                      .byte      0xa8, 0x93
00000E4C  48 6D DF 55                pea.l      -$20ab(a5)
00000E50  A8 84                      .byte      0xa8, 0x84
00000E52  2F 3C 01 22 00 55          move.l     #$1220055, -(a7)
00000E58  A8 93                      .byte      0xa8, 0x93
00000E5A  48 6D E1 0B                pea.l      -$1ef5(a5)
00000E5E  A8 84                      .byte      0xa8, 0x84
00000E60  2F 3C 01 36 00 68          move.l     #$1360068, -(a7)
00000E66  A8 93                      .byte      0xa8, 0x93
00000E68  48 6D E1 1A                pea.l      -$1ee6(a5)
00000E6C  A8 84                      .byte      0xa8, 0x84
00000E6E  2F 3C 01 A9 00 5A          move.l     #$1a9005a, -(a7)
00000E74  A8 93                      .byte      0xa8, 0x93
00000E76  48 6D E1 25                pea.l      -$1edb(a5)
00000E7A  A8 84                      .byte      0xa8, 0x84
00000E7C  60 00 00 E8                bra.w      $f66
00000E80  2F 2E FF FC                move.l     -$4(a6), -(a7)
00000E84  A8 73                      .byte      0xa8, 0x73
00000E86  3F 3C 00 01                move.w     #$1, -(a7)
00000E8A  A8 88                      .byte      0xa8, 0x88
00000E8C  3F 3C 00 11                move.w     #$11, -(a7)
00000E90  A8 8A                      .byte      0xa8, 0x8a
00000E92  2F 3C 00 14 00 41          move.l     #$140041, -(a7)
00000E98  A8 93                      .byte      0xa8, 0x93
00000E9A  48 6D E1 32                pea.l      -$1ece(a5)
00000E9E  A8 84                      .byte      0xa8, 0x84
00000EA0  2F 3C 00 28 00 55          move.l     #$280055, -(a7)
00000EA6  A8 93                      .byte      0xa8, 0x93
00000EA8  3F 3C 00 0F                move.w     #$f, -(a7)
00000EAC  A8 8A                      .byte      0xa8, 0x8a
00000EAE  48 6D E0 D3                pea.l      -$1f2d(a5)
00000EB2  A8 84                      .byte      0xa8, 0x84
00000EB4  2F 3C 00 3C 00 55          move.l     #$3c0055, -(a7)
00000EBA  A8 93                      .byte      0xa8, 0x93
00000EBC  48 6D E0 F0                pea.l      -$1f10(a5)
00000EC0  A8 84                      .byte      0xa8, 0x84
00000EC2  2F 3C 00 50 00 61          move.l     #$500061, -(a7)
00000EC8  A8 93                      .byte      0xa8, 0x93
00000ECA  48 6D E0 FE                pea.l      -$1f02(a5)
00000ECE  A8 84                      .byte      0xa8, 0x84
00000ED0  2F 3C 00 64 00 5F          move.l     #$64005f, -(a7)
00000ED6  A8 93                      .byte      0xa8, 0x93
00000ED8  48 6D E1 44                pea.l      -$1ebc(a5)
00000EDC  A8 84                      .byte      0xa8, 0x84
00000EDE  2F 3C 00 78 00 5E          move.l     #$78005e, -(a7)
00000EE4  A8 93                      .byte      0xa8, 0x93
00000EE6  48 6D E1 50                pea.l      -$1eb0(a5)
00000EEA  A8 84                      .byte      0xa8, 0x84
00000EEC  2F 3C 00 8C 00 55          move.l     #$8c0055, -(a7)
00000EF2  A8 93                      .byte      0xa8, 0x93
00000EF4  48 6D E1 0B                pea.l      -$1ef5(a5)
00000EF8  A8 84                      .byte      0xa8, 0x84
00000EFA  2F 3C 00 A0 00 68          move.l     #$a00068, -(a7)
00000F00  A8 93                      .byte      0xa8, 0x93
00000F02  48 6D E1 1A                pea.l      -$1ee6(a5)
00000F06  A8 84                      .byte      0xa8, 0x84
00000F08  2F 3C 00 B4 00 58          move.l     #$b40058, -(a7)
00000F0E  A8 93                      .byte      0xa8, 0x93
00000F10  48 6D E1 5C                pea.l      -$1ea4(a5)
00000F14  A8 84                      .byte      0xa8, 0x84
00000F16  2F 3C 00 C8 00 57          move.l     #$c80057, -(a7)
00000F1C  A8 93                      .byte      0xa8, 0x93
00000F1E  48 6D E1 6A                pea.l      -$1e96(a5)
00000F22  A8 84                      .byte      0xa8, 0x84
00000F24  3F 3C 00 0E                move.w     #$e, -(a7)
00000F28  A8 8A                      .byte      0xa8, 0x8a
00000F2A  2F 3C 01 68 00 05          move.l     #$1680005, -(a7)
00000F30  A8 93                      .byte      0xa8, 0x93
00000F32  48 6D E1 76                pea.l      -$1e8a(a5)
00000F36  A8 84                      .byte      0xa8, 0x84
00000F38  2F 3C 01 7C 00 0A          move.l     #$17c000a, -(a7)
00000F3E  A8 93                      .byte      0xa8, 0x93
00000F40  48 6D E1 97                pea.l      -$1e69(a5)
00000F44  A8 84                      .byte      0xa8, 0x84
00000F46  2F 3C 01 90 00 46          move.l     #$1900046, -(a7)
00000F4C  A8 93                      .byte      0xa8, 0x93
00000F4E  48 6D E1 B4                pea.l      -$1e4c(a5)
00000F52  A8 84                      .byte      0xa8, 0x84
00000F54  2F 3C 01 A4 00 0A          move.l     #$1a4000a, -(a7)
00000F5A  A8 93                      .byte      0xa8, 0x93
00000F5C  48 6D E1 C6                pea.l      -$1e3a(a5)
00000F60  A8 84                      .byte      0xa8, 0x84
00000F62  60 02                      bra.b      $f66
00000F64  7A 01                      moveq      #$1, d5
00000F66  76 00                      moveq      #$0, d3
00000F68  4A 05                      tst.b      d5
00000F6A  67 00 FB EA                beq.w      $b56
00000F6E  4E B9 00 00 00 88          jsr        $88.l
00000F74  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
00000F7A  20 1F                      move.l     (a7)+, d0
00000F7C  A0 32                      .byte      0xa0, 0x32
00000F7E  4C DF 00 38                movem.l    (a7)+, d3-d5
00000F82  4E 5E                      unlk       a6
00000F84  4E 75                      rts

; MacsBug symbol trailer for RollKredits: 8B 52 6F 6C 6C 4B 72 65 64 69 74 73

SetBallSpeed: ; 00000F94..00001016
00000F94  4E 56 00 00                link.w     a6, #$0
00000F98  3B 7C 00 06 D3 DC          move.w     #$6, -$2c24(a5)
00000F9E  3B 7C 00 06 D3 DA          move.w     #$6, -$2c26(a5)
00000FA4  3B 7C 00 06 D8 06          move.w     #$6, -$27fa(a5)
00000FAA  3B 7C 00 09 D8 04          move.w     #$9, -$27fc(a5)
00000FB0  0C 6D 00 07 D4 1C          cmpi.w     #$7, -$2be4(a5)
00000FB6  66 0E                      bne.b      $fc6
00000FB8  3B 7C 00 09 DD 0E          move.w     #$9, -$22f2(a5)
00000FBE  3B 7C 00 09 DD 10          move.w     #$9, -$22f0(a5)
00000FC4  60 38                      bra.b      $ffe
00000FC6  0C 6D 00 08 D4 1C          cmpi.w     #$8, -$2be4(a5)
00000FCC  66 0E                      bne.b      $fdc
00000FCE  3B 7C 00 0C DD 0E          move.w     #$c, -$22f2(a5)
00000FD4  3B 7C 00 0C DD 10          move.w     #$c, -$22f0(a5)
00000FDA  60 22                      bra.b      $ffe
00000FDC  0C 6D 00 0A D4 1C          cmpi.w     #$a, -$2be4(a5)
00000FE2  66 0E                      bne.b      $ff2
00000FE4  3B 7C 00 03 DD 0E          move.w     #$3, -$22f2(a5)
00000FEA  3B 7C 00 03 DD 10          move.w     #$3, -$22f0(a5)
00000FF0  60 0C                      bra.b      $ffe
00000FF2  3B 7C 00 06 DD 0E          move.w     #$6, -$22f2(a5)
00000FF8  3B 7C 00 06 DD 10          move.w     #$6, -$22f0(a5)
00000FFE  30 2D DD 0E                move.w     -$22f2(a5), d0
00001002  44 40                      neg.w      d0
00001004  3B 40 DD 72                move.w     d0, -$228e(a5)
00001008  30 2D DD 10                move.w     -$22f0(a5), d0
0000100C  44 40                      neg.w      d0
0000100E  3B 40 DD 74                move.w     d0, -$228c(a5)
00001012  4E 5E                      unlk       a6
00001014  4E 75                      rts

; MacsBug symbol trailer for SetBallSpeed: 8C 53 65 74 42 61 6C 6C 53 70 65 65 64

DoGameLoop: ; 00001026..00001456
00001026  4E 56 00 00                link.w     a6, #$0
0000102A  2F 03                      move.l     d3, -(a7)
0000102C  42 2D CE DC                clr.b      -$3124(a5)
00001030  1B 7C 00 01 FF F4          move.b     #$1, -$c(a5)
00001036  42 2D D4 0E                clr.b      -$2bf2(a5)
0000103A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001040  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001046  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
0000104C  52 6D CE DE                addq.w     #$1, -$3122(a5)
00001050  0C 6D 00 08 CE DE          cmpi.w     #$8, -$3122(a5)
00001056  6F 06                      ble.b      $105e
00001058  3B 7C 00 01 CE DE          move.w     #$1, -$3122(a5)
0000105E  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
00001064  66 06                      bne.b      $106c
00001066  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
0000106C  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
00001072  66 06                      bne.b      $107a
00001074  3B 7C 00 01 FF E2          move.w     #$1, -$1e(a5)
0000107A  4E B9 00 00 A7 F8          jsr        $a7f8.l
00001080  4E B9 00 00 4C 08          jsr        $4c08.l
00001086  4E B9 00 00 4D 20          jsr        $4d20.l
0000108C  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
00001092  20 1F                      move.l     (a7)+, d0
00001094  A0 32                      .byte      0xa0, 0x32
00001096  4E BA FE FC                jsr        $f94(pc)
0000109A  42 2D D3 D8                clr.b      -$2c28(a5)
0000109E  42 2D CE DC                clr.b      -$3124(a5)
000010A2  3B 7C 00 64 FF FC          move.w     #$64, -$4(a5)
000010A8  3B 7C 00 64 FF FA          move.w     #$64, -$6(a5)
000010AE  3B 7C 00 64 FF F8          move.w     #$64, -$8(a5)
000010B4  3B 7C 00 64 FF F6          move.w     #$64, -$a(a5)
000010BA  42 6D CE EC                clr.w      -$3114(a5)
000010BE  42 6D CE EE                clr.w      -$3112(a5)
000010C2  3B 7C 00 01 FF E4          move.w     #$1, -$1c(a5)
000010C8  60 00 02 C2                bra.w      $138c
000010CC  4E B9 00 00 1F C6          jsr        $1fc6.l
000010D2  4A 2D CE DC                tst.b      -$3124(a5)
000010D6  66 06                      bne.b      $10de
000010D8  4A 2D CF 0E                tst.b      -$30f2(a5)
000010DC  67 EE                      beq.b      $10cc
000010DE  20 6D D3 FA                movea.l    -$2c06(a5), a0
000010E2  48 68 00 02                pea.l      $2(a0)
000010E6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000010EA  48 68 00 02                pea.l      $2(a0)
000010EE  48 6D DC AE                pea.l      -$2352(a5)
000010F2  48 6D DC AE                pea.l      -$2352(a5)
000010F6  42 67                      clr.w      -(a7)
000010F8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000010FC  2F 28 00 18                move.l     $18(a0), -(a7)
00001100  A8 EC                      .byte      0xa8, 0xec
00001102  20 6D D3 FE                movea.l    -$2c02(a5), a0
00001106  48 68 00 02                pea.l      $2(a0)
0000110A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000110E  48 68 00 02                pea.l      $2(a0)
00001112  48 6D DC AE                pea.l      -$2352(a5)
00001116  48 6D DC AE                pea.l      -$2352(a5)
0000111A  42 67                      clr.w      -(a7)
0000111C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001120  2F 28 00 18                move.l     $18(a0), -(a7)
00001124  A8 EC                      .byte      0xa8, 0xec
00001126  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
0000112C  66 42                      bne.b      $1170
0000112E  48 6D CE F8                pea.l      -$3108(a5)
00001132  2F 3C 00 37 00 37          move.l     #$370037, -(a7)
00001138  2F 3C 00 4B 00 4B          move.l     #$4b004b, -(a7)
0000113E  A8 A7                      .byte      0xa8, 0xa7
00001140  20 6D D3 EE                movea.l    -$2c12(a5), a0
00001144  48 68 00 02                pea.l      $2(a0)
00001148  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000114C  48 68 00 02                pea.l      $2(a0)
00001150  48 6D CF 00                pea.l      -$3100(a5)
00001154  48 6D CE F8                pea.l      -$3108(a5)
00001158  42 67                      clr.w      -(a7)
0000115A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000115E  2F 28 00 18                move.l     $18(a0), -(a7)
00001162  A8 EC                      .byte      0xa8, 0xec
00001164  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
0000116A  66 04                      bne.b      $1170
0000116C  52 6D D7 36                addq.w     #$1, -$28ca(a5)
00001170  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
00001176  66 36                      bne.b      $11ae
00001178  48 6D CE F8                pea.l      -$3108(a5)
0000117C  2F 3C 00 37 01 B9          move.l     #$3701b9, -(a7)
00001182  2F 3C 00 4B 01 CD          move.l     #$4b01cd, -(a7)
00001188  A8 A7                      .byte      0xa8, 0xa7
0000118A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000118E  48 68 00 02                pea.l      $2(a0)
00001192  20 6D D3 DE                movea.l    -$2c22(a5), a0
00001196  48 68 00 02                pea.l      $2(a0)
0000119A  48 6D CF 00                pea.l      -$3100(a5)
0000119E  48 6D CE F8                pea.l      -$3108(a5)
000011A2  42 67                      clr.w      -(a7)
000011A4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000011A8  2F 28 00 18                move.l     $18(a0), -(a7)
000011AC  A8 EC                      .byte      0xa8, 0xec
000011AE  4A 2D CF 0E                tst.b      -$30f2(a5)
000011B2  66 00 01 D8                bne.w      $138c
000011B6  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
000011BC  66 00 00 A8                bne.w      $1266
000011C0  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
000011C6  67 0A                      beq.b      $11d2
000011C8  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
000011CE  66 00 00 96                bne.w      $1266
000011D2  59 4F                      subq.w     #$4, a7
000011D4  A9 75                      .byte      0xa9, 0x75
000011D6  20 1F                      move.l     (a7)+, d0
000011D8  2B 40 CE E0                move.l     d0, -$3120(a5)
000011DC  60 12                      bra.b      $11f0
000011DE  4E B9 00 00 27 0E          jsr        $270e.l
000011E4  4E B9 00 00 2C 94          jsr        $2c94.l
000011EA  4E B9 00 00 4A 90          jsr        $4a90.l
000011F0  59 4F                      subq.w     #$4, a7
000011F2  A9 75                      .byte      0xa9, 0x75
000011F4  20 1F                      move.l     (a7)+, d0
000011F6  90 AD CE E0                sub.l      -$3120(a5), d0
000011FA  72 64                      moveq      #$64, d1
000011FC  B0 81                      cmp.l      d1, d0
000011FE  65 DE                      bcs.b      $11de
00001200  0C 6D 00 0D D7 36          cmpi.w     #$d, -$28ca(a5)
00001206  66 32                      bne.b      $123a
00001208  4E B9 00 00 A7 24          jsr        $a724.l
0000120E  4E BA F7 A6                jsr        $9b6(pc)
00001212  2F 3C 1F 45 00 0A          move.l     #$1f45000a, -(a7)
00001218  4E B9 00 00 00 C0          jsr        $c0.l
0000121E  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
00001224  58 4F                      addq.w     #$4, a7
00001226  66 06                      bne.b      $122e
00001228  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
0000122E  4E B9 00 00 91 24          jsr        $9124.l
00001234  4E BA F7 D8                jsr        $a0e(pc)
00001238  60 22                      bra.b      $125c
0000123A  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
00001240  66 0E                      bne.b      $1250
00001242  3F 2D FF E0                move.w     -$20(a5), -(a7)
00001246  4E B9 00 00 50 F2          jsr        $50f2.l
0000124C  54 4F                      addq.w     #$2, a7
0000124E  60 0C                      bra.b      $125c
00001250  3F 2D FF E2                move.w     -$1e(a5), -(a7)
00001254  4E B9 00 00 50 F2          jsr        $50f2.l
0000125A  54 4F                      addq.w     #$2, a7
0000125C  1B 7C 00 01 D3 D8          move.b     #$1, -$2c28(a5)
00001262  60 00 01 28                bra.w      $138c
00001266  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
0000126C  6D 10                      blt.b      $127e
0000126E  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
00001274  67 20                      beq.b      $1296
00001276  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
0000127C  67 18                      beq.b      $1296
0000127E  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
00001284  6D 20                      blt.b      $12a6
00001286  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
0000128C  67 08                      beq.b      $1296
0000128E  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00001294  66 10                      bne.b      $12a6
00001296  2F 3C 03 EF 00 0A          move.l     #$3ef000a, -(a7)
0000129C  4E B9 00 00 00 B8          jsr        $b8.l
000012A2  58 4F                      addq.w     #$4, a7
000012A4  60 0E                      bra.b      $12b4
000012A6  2F 3C 03 EE 00 0A          move.l     #$3ee000a, -(a7)
000012AC  4E B9 00 00 00 B8          jsr        $b8.l
000012B2  58 4F                      addq.w     #$4, a7
000012B4  4E B9 00 00 54 D6          jsr        $54d6.l
000012BA  1B 7C 00 01 CE DA          move.b     #$1, -$3126(a5)
000012C0  59 4F                      subq.w     #$4, a7
000012C2  A9 75                      .byte      0xa9, 0x75
000012C4  20 1F                      move.l     (a7)+, d0
000012C6  26 00                      move.l     d0, d3
000012C8  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
000012CE  66 12                      bne.b      $12e2
000012D0  42 6D FF FC                clr.w      -$4(a5)
000012D4  42 6D FF FA                clr.w      -$6(a5)
000012D8  42 2D FF EE                clr.b      -$12(a5)
000012DC  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000012E2  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
000012E8  66 26                      bne.b      $1310
000012EA  42 6D FF F8                clr.w      -$8(a5)
000012EE  42 6D FF F6                clr.w      -$a(a5)
000012F2  42 2D FF F0                clr.b      -$10(a5)
000012F6  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000012FC  60 12                      bra.b      $1310
000012FE  4E B9 00 00 27 0E          jsr        $270e.l
00001304  4E B9 00 00 2C 94          jsr        $2c94.l
0000130A  4E B9 00 00 4A 90          jsr        $4a90.l
00001310  59 4F                      subq.w     #$4, a7
00001312  A9 75                      .byte      0xa9, 0x75
00001314  20 1F                      move.l     (a7)+, d0
00001316  90 83                      sub.l      d3, d0
00001318  72 64                      moveq      #$64, d1
0000131A  B0 81                      cmp.l      d1, d0
0000131C  65 E0                      bcs.b      $12fe
0000131E  0C 2D 00 01 D7 52          cmpi.b     #$1, -$28ae(a5)
00001324  66 06                      bne.b      $132c
00001326  4E B9 00 00 61 2C          jsr        $612c.l
0000132C  42 2D D7 E2                clr.b      -$281e(a5)
00001330  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
00001336  66 24                      bne.b      $135c
00001338  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
0000133E  66 0E                      bne.b      $134e
00001340  3F 3C 00 01                move.w     #$1, -(a7)
00001344  4E B9 00 00 50 F2          jsr        $50f2.l
0000134A  54 4F                      addq.w     #$2, a7
0000134C  60 30                      bra.b      $137e
0000134E  3F 2D FF E0                move.w     -$20(a5), -(a7)
00001352  4E B9 00 00 50 F2          jsr        $50f2.l
00001358  54 4F                      addq.w     #$2, a7
0000135A  60 22                      bra.b      $137e
0000135C  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
00001362  66 0E                      bne.b      $1372
00001364  3F 3C 00 01                move.w     #$1, -(a7)
00001368  4E B9 00 00 50 F2          jsr        $50f2.l
0000136E  54 4F                      addq.w     #$2, a7
00001370  60 0C                      bra.b      $137e
00001372  3F 2D FF E2                move.w     -$1e(a5), -(a7)
00001376  4E B9 00 00 50 F2          jsr        $50f2.l
0000137C  54 4F                      addq.w     #$2, a7
0000137E  1B 7C 00 01 D3 D8          move.b     #$1, -$2c28(a5)
00001384  42 2D CE DA                clr.b      -$3126(a5)
00001388  42 2D D7 52                clr.b      -$28ae(a5)
0000138C  4A 2D D3 D8                tst.b      -$2c28(a5)
00001390  66 08                      bne.b      $139a
00001392  4A 2D CF 0E                tst.b      -$30f2(a5)
00001396  67 00 FD 3A                beq.w      $10d2
0000139A  0C 2D 00 01 CF 0E          cmpi.b     #$1, -$30f2(a5)
000013A0  66 18                      bne.b      $13ba
000013A2  42 2D CF 0E                clr.b      -$30f2(a5)
000013A6  42 6D D7 36                clr.w      -$28ca(a5)
000013AA  4E B9 00 00 15 8E          jsr        $158e.l
000013B0  4E B9 00 00 01 00          jsr        $100.l
000013B6  60 00 00 98                bra.w      $1450
000013BA  4A 2D CF 0E                tst.b      -$30f2(a5)
000013BE  66 00 00 90                bne.w      $1450
000013C2  42 2D D3 D8                clr.b      -$2c28(a5)
000013C6  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
000013CC  66 72                      bne.b      $1440
000013CE  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
000013D4  6D 20                      blt.b      $13f6
000013D6  0C 6D 00 0D D7 36          cmpi.w     #$d, -$28ca(a5)
000013DC  66 12                      bne.b      $13f0
000013DE  42 6D D7 36                clr.w      -$28ca(a5)
000013E2  3B 7C 00 03 DE FE          move.w     #$3, -$2102(a5)
000013E8  4E B9 00 00 15 8E          jsr        $158e.l
000013EE  60 60                      bra.b      $1450
000013F0  4E BA F5 1E                jsr        $910(pc)
000013F4  60 5A                      bra.b      $1450
000013F6  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
000013FC  67 08                      beq.b      $1406
000013FE  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00001404  66 10                      bne.b      $1416
00001406  4E B9 00 00 14 64          jsr        $1464.l
0000140C  52 6D D7 36                addq.w     #$1, -$28ca(a5)
00001410  4E BA F4 FE                jsr        $910(pc)
00001414  60 3A                      bra.b      $1450
00001416  4E B9 00 00 14 E4          jsr        $14e4.l
0000141C  4A 6D DE FE                tst.w      -$2102(a5)
00001420  6F 0A                      ble.b      $142c
00001422  53 6D DE FE                subq.w     #$1, -$2102(a5)
00001426  4E BA F0 E0                jsr        $508(pc)
0000142A  60 24                      bra.b      $1450
0000142C  3B 7C 00 02 DE FE          move.w     #$2, -$2102(a5)
00001432  4E B9 00 00 15 8E          jsr        $158e.l
00001438  4E B9 00 00 01 00          jsr        $100.l
0000143E  60 10                      bra.b      $1450
00001440  4A 2D FF DE                tst.b      -$22(a5)
00001444  66 0A                      bne.b      $1450
00001446  4E B9 00 00 14 E4          jsr        $14e4.l
0000144C  4E BA F0 BA                jsr        $508(pc)
00001450  26 1F                      move.l     (a7)+, d3
00001452  4E 5E                      unlk       a6
00001454  4E 75                      rts

; MacsBug symbol trailer for DoGameLoop: 8A 44 6F 47 61 6D 65 4C 6F 6F 70

ResetValues2: ; 00001464..000014D4
00001464  4E 56 00 00                link.w     a6, #$0
00001468  42 2D D7 A4                clr.b      -$285c(a5)
0000146C  42 2D D7 AC                clr.b      -$2854(a5)
00001470  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00001476  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
0000147C  42 2D D7 DA                clr.b      -$2826(a5)
00001480  42 2D D7 DC                clr.b      -$2824(a5)
00001484  42 6D CE EC                clr.w      -$3114(a5)
00001488  42 6D CE EE                clr.w      -$3112(a5)
0000148C  3B 7C 00 01 FF E4          move.w     #$1, -$1c(a5)
00001492  4E B9 00 00 A7 F8          jsr        $a7f8.l
00001498  42 2D CE DC                clr.b      -$3124(a5)
0000149C  3B 7C 00 64 FF FC          move.w     #$64, -$4(a5)
000014A2  3B 7C 00 64 FF F8          move.w     #$64, -$8(a5)
000014A8  3B 7C 00 64 FF FA          move.w     #$64, -$6(a5)
000014AE  3B 7C 00 64 FF F6          move.w     #$64, -$a(a5)
000014B4  1B 7C 00 01 FF F4          move.b     #$1, -$c(a5)
000014BA  42 2D D4 0E                clr.b      -$2bf2(a5)
000014BE  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000014C4  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000014CA  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
000014D0  4E 5E                      unlk       a6
000014D2  4E 75                      rts

; MacsBug symbol trailer for ResetValues2: 8C 52 65 73 65 74 56 61 6C 75 65 73 32

ResetValues: ; 000014E4..00001580
000014E4  4E 56 00 00                link.w     a6, #$0
000014E8  42 2D D7 A4                clr.b      -$285c(a5)
000014EC  42 2D D7 AC                clr.b      -$2854(a5)
000014F0  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000014F6  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000014FC  42 2D D7 DA                clr.b      -$2826(a5)
00001500  42 2D D7 DC                clr.b      -$2824(a5)
00001504  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
0000150A  3B 7C 00 03 FF E2          move.w     #$3, -$1e(a5)
00001510  42 6D CE EC                clr.w      -$3114(a5)
00001514  42 6D CE EE                clr.w      -$3112(a5)
00001518  3B 7C 00 01 FF E6          move.w     #$1, -$1a(a5)
0000151E  3B 7C 00 01 FF E8          move.w     #$1, -$18(a5)
00001524  3B 7C 00 03 FF EA          move.w     #$3, -$16(a5)
0000152A  3B 7C 00 01 FF EC          move.w     #$1, -$14(a5)
00001530  3B 7C 00 01 FF E4          move.w     #$1, -$1c(a5)
00001536  42 2D D4 1E                clr.b      -$2be2(a5)
0000153A  42 2D D4 20                clr.b      -$2be0(a5)
0000153E  4E B9 00 00 A7 F8          jsr        $a7f8.l
00001544  42 2D CE DC                clr.b      -$3124(a5)
00001548  3B 7C 00 64 FF FC          move.w     #$64, -$4(a5)
0000154E  3B 7C 00 64 FF F8          move.w     #$64, -$8(a5)
00001554  3B 7C 00 64 FF FA          move.w     #$64, -$6(a5)
0000155A  3B 7C 00 64 FF F6          move.w     #$64, -$a(a5)
00001560  1B 7C 00 01 FF F4          move.b     #$1, -$c(a5)
00001566  42 2D D4 0E                clr.b      -$2bf2(a5)
0000156A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00001570  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00001576  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
0000157C  4E 5E                      unlk       a6
0000157E  4E 75                      rts

; MacsBug symbol trailer for ResetValues: 8B 52 65 73 65 74 56 61 6C 75 65 73

DoGameOver: ; 0000158E..000015FC
0000158E  4E 56 FF F4                link.w     a6, #$fff4
00001592  A8 53                      .byte      0xa8, 0x53
00001594  42 2D CE BF                clr.b      -$3141(a5)
00001598  42 6D D7 36                clr.w      -$28ca(a5)
0000159C  42 2D CF 14                clr.b      -$30ec(a5)
000015A0  42 2D CF 10                clr.b      -$30f0(a5)
000015A4  42 2D CF 12                clr.b      -$30ee(a5)
000015A8  3B 7C 00 03 DE FE          move.w     #$3, -$2102(a5)
000015AE  1B 7C 00 01 FF DE          move.b     #$1, -$22(a5)
000015B4  4E BA FF 2E                jsr        $14e4(pc)
000015B8  48 6E FF F8                pea.l      -$8(a6)
000015BC  42 A7                      clr.l      -(a7)
000015BE  2F 3C 01 2C 01 90          move.l     #$12c0190, -(a7)
000015C4  A8 A7                      .byte      0xa8, 0xa7
000015C6  48 6E FF F8                pea.l      -$8(a6)
000015CA  3F 3C 00 CD                move.w     #$cd, -(a7)
000015CE  4E B9 00 00 7C BE          jsr        $7cbe.l
000015D4  2F 3C 13 89 00 0A          move.l     #$1389000a, -(a7)
000015DA  4E B9 00 00 00 C0          jsr        $c0.l
000015E0  20 7C 00 00 00 3C          movea.l    #$3c, a0
000015E6  43 EE FF F4                lea.l      -$c(a6), a1
000015EA  A0 3B                      .byte      0xa0, 0x3b
000015EC  22 80                      move.l     d0, (a1)
000015EE  2F 3C 00 00 FF FF          move.l     #$ffff, -(a7)
000015F4  20 1F                      move.l     (a7)+, d0
000015F6  A0 32                      .byte      0xa0, 0x32
000015F8  4E 5E                      unlk       a6
000015FA  4E 75                      rts

; MacsBug symbol trailer for DoGameOver: 8A 44 6F 47 61 6D 65 4F 76 65 72

OpenMainWindow: ; 0000160A..00001698
0000160A  4E 56 FF F8                link.w     a6, #$fff8
0000160E  48 E7 10 30                movem.l    d3/a2-a3, -(a7)
00001612  36 38 0B AA                move.w     $baa.w, d3
00001616  42 78 0B AA                clr.w      $baa.w
0000161A  59 4F                      subq.w     #$4, a7
0000161C  3F 3C 00 80                move.w     #$80, -(a7)
00001620  A9 B8                      .byte      0xa9, 0xb8
00001622  20 5F                      movea.l    (a7)+, a0
00001624  24 48                      movea.l    a0, a2
00001626  59 4F                      subq.w     #$4, a7
00001628  42 A7                      clr.l      -(a7)
0000162A  48 6D CE 44                pea.l      -$31bc(a5)
0000162E  48 6D E1 E3                pea.l      -$1e1d(a5)
00001632  1F 3C 00 01                move.b     #$1, -(a7)
00001636  3F 3C 00 02                move.w     #$2, -(a7)
0000163A  48 78 FF FF                pea.l      $ffff.w
0000163E  42 27                      clr.b      -(a7)
00001640  42 A7                      clr.l      -(a7)
00001642  AA 45                      .byte      0xaa, 0x45
00001644  20 5F                      movea.l    (a7)+, a0
00001646  24 48                      movea.l    a0, a2
00001648  48 6E FF F8                pea.l      -$8(a6)
0000164C  3F 2D CE 46                move.w     -$31ba(a5), -(a7)
00001650  3F 2D CE 44                move.w     -$31bc(a5), -(a7)
00001654  3F 2D CE 4A                move.w     -$31b6(a5), -(a7)
00001658  30 2D CE 44                move.w     -$31bc(a5), d0
0000165C  D0 43                      add.w      d3, d0
0000165E  3F 00                      move.w     d0, -(a7)
00001660  A8 A7                      .byte      0xa8, 0xa7
00001662  59 4F                      subq.w     #$4, a7
00001664  A8 D8                      .byte      0xa8, 0xd8
00001666  20 5F                      movea.l    (a7)+, a0
00001668  26 48                      movea.l    a0, a3
0000166A  2F 0B                      move.l     a3, -(a7)
0000166C  48 6E FF F8                pea.l      -$8(a6)
00001670  A8 DF                      .byte      0xa8, 0xdf
00001672  2F 2A 00 18                move.l     $18(a2), -(a7)
00001676  2F 0B                      move.l     a3, -(a7)
00001678  2F 2A 00 18                move.l     $18(a2), -(a7)
0000167C  A8 E5                      .byte      0xa8, 0xe5
0000167E  2F 0B                      move.l     a3, -(a7)
00001680  A8 D9                      .byte      0xa8, 0xd9
00001682  2F 0A                      move.l     a2, -(a7)
00001684  A8 73                      .byte      0xa8, 0x73
00001686  48 6D CE 44                pea.l      -$31bc(a5)
0000168A  A8 A2                      .byte      0xa8, 0xa2
0000168C  2F 0A                      move.l     a2, -(a7)
0000168E  A9 15                      .byte      0xa9, 0x15
00001690  4C DF 0C 08                movem.l    (a7)+, d3/a2-a3
00001694  4E 5E                      unlk       a6
00001696  4E 75                      rts

; MacsBug symbol trailer for OpenMainWindow: 8E 4F 70 65 6E 4D 61 69 6E 57 69 6E 64 6F 77

main: ; 000016AA..00001742
000016AA  4E 56 FF F8                link.w     a6, #$fff8
000016AE  4E B9 00 00 4A 4E          jsr        $4a4e.l
000016B4  4E B9 00 00 00 80          jsr        $80.l
000016BA  41 ED CE BC                lea.l      -$3144(a5), a0
000016BE  42 18                      clr.b      (a0)+
000016C0  10 B8 02 60                move.b     $260.w, (a0)
000016C4  4E B9 00 00 6B 24          jsr        $6b24.l
000016CA  4E B9 00 00 6B 78          jsr        $6b78.l
000016D0  48 6D D7 8E                pea.l      -$2872(a5)
000016D4  2F 3C 00 01 00 00          move.l     #$10000, -(a7)
000016DA  2F 3C 00 01 00 00          move.l     #$10000, -(a7)
000016E0  A8 A7                      .byte      0xa8, 0xa7
000016E2  48 6D CE F0                pea.l      -$3110(a5)
000016E6  2F 3C 00 50 00 00          move.l     #$500000, -(a7)
000016EC  2F 3C 01 68 02 04          move.l     #$1680204, -(a7)
000016F2  A8 A7                      .byte      0xa8, 0xa7
000016F4  48 6E FF F8                pea.l      -$8(a6)
000016F8  42 A7                      clr.l      -(a7)
000016FA  2F 3C 01 2C 01 90          move.l     #$12c0190, -(a7)
00001700  A8 A7                      .byte      0xa8, 0xa7
00001702  48 6D CE D0                pea.l      -$3130(a5)
00001706  48 78 00 8E                pea.l      $8e.w
0000170A  2F 3C 00 36 00 A7          move.l     #$3600a7, -(a7)
00001710  A8 A7                      .byte      0xa8, 0xa7
00001712  A8 52                      .byte      0xa8, 0x52
00001714  4E B9 00 00 01 00          jsr        $100.l
0000171A  A8 53                      .byte      0xa8, 0x53
0000171C  4E B9 00 00 00 D0          jsr        $d0.l
00001722  3F 2D CE BC                move.w     -$3144(a5), -(a7)
00001726  4E B9 00 00 00 58          jsr        $58.l
0000172C  4E B9 00 00 00 68          jsr        $68.l
00001732  4E B9 00 00 00 70          jsr        $70.l
00001738  4E B9 00 00 00 78          jsr        $78.l
0000173E  4E 5E                      unlk       a6
00001740  4E 75                      rts

; MacsBug symbol trailer for main: 84 6D 61 69 6E

LoadDeathSounds: ; 0000174A..0000188A
0000174A  4E 56 00 00                link.w     a6, #$0
0000174E  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
00001754  67 08                      beq.b      $175e
00001756  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
0000175C  66 16                      bne.b      $1774
0000175E  59 4F                      subq.w     #$4, a7
00001760  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001766  3F 3C 09 C5                move.w     #$9c5, -(a7)
0000176A  A8 1F                      .byte      0xa8, 0x1f
0000176C  20 5F                      movea.l    (a7)+, a0
0000176E  2B 48 DE C2                move.l     a0, -$213e(a5)
00001772  60 76                      bra.b      $17ea
00001774  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
0000177A  66 16                      bne.b      $1792
0000177C  59 4F                      subq.w     #$4, a7
0000177E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001784  3F 3C 09 C6                move.w     #$9c6, -(a7)
00001788  A8 1F                      .byte      0xa8, 0x1f
0000178A  20 5F                      movea.l    (a7)+, a0
0000178C  2B 48 DE C2                move.l     a0, -$213e(a5)
00001790  60 58                      bra.b      $17ea
00001792  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00001798  66 16                      bne.b      $17b0
0000179A  59 4F                      subq.w     #$4, a7
0000179C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000017A2  3F 3C 07 DA                move.w     #$7da, -(a7)
000017A6  A8 1F                      .byte      0xa8, 0x1f
000017A8  20 5F                      movea.l    (a7)+, a0
000017AA  2B 48 DE C2                move.l     a0, -$213e(a5)
000017AE  60 3A                      bra.b      $17ea
000017B0  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
000017B6  67 08                      beq.b      $17c0
000017B8  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
000017BE  66 16                      bne.b      $17d6
000017C0  59 4F                      subq.w     #$4, a7
000017C2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000017C8  3F 3C 07 D8                move.w     #$7d8, -(a7)
000017CC  A8 1F                      .byte      0xa8, 0x1f
000017CE  20 5F                      movea.l    (a7)+, a0
000017D0  2B 48 DE C2                move.l     a0, -$213e(a5)
000017D4  60 14                      bra.b      $17ea
000017D6  59 4F                      subq.w     #$4, a7
000017D8  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000017DE  3F 3C 09 C4                move.w     #$9c4, -(a7)
000017E2  A8 1F                      .byte      0xa8, 0x1f
000017E4  20 5F                      movea.l    (a7)+, a0
000017E6  2B 48 DE C2                move.l     a0, -$213e(a5)
000017EA  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
000017F0  67 08                      beq.b      $17fa
000017F2  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
000017F8  66 16                      bne.b      $1810
000017FA  59 4F                      subq.w     #$4, a7
000017FC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001802  3F 3C 09 C5                move.w     #$9c5, -(a7)
00001806  A8 1F                      .byte      0xa8, 0x1f
00001808  20 5F                      movea.l    (a7)+, a0
0000180A  2B 48 DE BE                move.l     a0, -$2142(a5)
0000180E  60 76                      bra.b      $1886
00001810  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00001816  66 16                      bne.b      $182e
00001818  59 4F                      subq.w     #$4, a7
0000181A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001820  3F 3C 09 C6                move.w     #$9c6, -(a7)
00001824  A8 1F                      .byte      0xa8, 0x1f
00001826  20 5F                      movea.l    (a7)+, a0
00001828  2B 48 DE BE                move.l     a0, -$2142(a5)
0000182C  60 58                      bra.b      $1886
0000182E  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00001834  66 16                      bne.b      $184c
00001836  59 4F                      subq.w     #$4, a7
00001838  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000183E  3F 3C 07 DA                move.w     #$7da, -(a7)
00001842  A8 1F                      .byte      0xa8, 0x1f
00001844  20 5F                      movea.l    (a7)+, a0
00001846  2B 48 DE BE                move.l     a0, -$2142(a5)
0000184A  60 3A                      bra.b      $1886
0000184C  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00001852  67 08                      beq.b      $185c
00001854  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
0000185A  66 16                      bne.b      $1872
0000185C  59 4F                      subq.w     #$4, a7
0000185E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001864  3F 3C 07 D8                move.w     #$7d8, -(a7)
00001868  A8 1F                      .byte      0xa8, 0x1f
0000186A  20 5F                      movea.l    (a7)+, a0
0000186C  2B 48 DE BE                move.l     a0, -$2142(a5)
00001870  60 14                      bra.b      $1886
00001872  59 4F                      subq.w     #$4, a7
00001874  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000187A  3F 3C 09 C4                move.w     #$9c4, -(a7)
0000187E  A8 1F                      .byte      0xa8, 0x1f
00001880  20 5F                      movea.l    (a7)+, a0
00001882  2B 48 DE BE                move.l     a0, -$2142(a5)
00001886  4E 5E                      unlk       a6
00001888  4E 75                      rts

; MacsBug symbol trailer for LoadDeathSounds: 8F 4C 6F 61 64 44 65 61 74 68 53 6F 75 6E 64 73

LoadTheSounds: ; 0000189C..00001FB6
0000189C  4E 56 00 00                link.w     a6, #$0
000018A0  59 4F                      subq.w     #$4, a7
000018A2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000018A8  3F 3C 01 F4                move.w     #$1f4, -(a7)
000018AC  A8 1F                      .byte      0xa8, 0x1f
000018AE  20 5F                      movea.l    (a7)+, a0
000018B0  2B 48 DE B2                move.l     a0, -$214e(a5)
000018B4  4A AD DE B2                tst.l      -$214e(a5)
000018B8  67 00 06 F8                beq.w      $1fb2
000018BC  59 4F                      subq.w     #$4, a7
000018BE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000018C4  3F 3C 01 F5                move.w     #$1f5, -(a7)
000018C8  A8 1F                      .byte      0xa8, 0x1f
000018CA  20 5F                      movea.l    (a7)+, a0
000018CC  2B 48 DE AE                move.l     a0, -$2152(a5)
000018D0  4A AD DE AE                tst.l      -$2152(a5)
000018D4  67 00 06 DC                beq.w      $1fb2
000018D8  59 4F                      subq.w     #$4, a7
000018DA  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000018E0  3F 3C 0D AF                move.w     #$daf, -(a7)
000018E4  A8 1F                      .byte      0xa8, 0x1f
000018E6  20 5F                      movea.l    (a7)+, a0
000018E8  2B 48 DE A6                move.l     a0, -$215a(a5)
000018EC  4A AD DE A6                tst.l      -$215a(a5)
000018F0  67 00 06 C0                beq.w      $1fb2
000018F4  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
000018FA  67 08                      beq.b      $1904
000018FC  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00001902  66 2C                      bne.b      $1930
00001904  59 4F                      subq.w     #$4, a7
00001906  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000190C  3F 3C 07 D6                move.w     #$7d6, -(a7)
00001910  A8 1F                      .byte      0xa8, 0x1f
00001912  20 5F                      movea.l    (a7)+, a0
00001914  2B 48 DE C2                move.l     a0, -$213e(a5)
00001918  59 4F                      subq.w     #$4, a7
0000191A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001920  3F 3C 07 D1                move.w     #$7d1, -(a7)
00001924  A8 1F                      .byte      0xa8, 0x1f
00001926  20 5F                      movea.l    (a7)+, a0
00001928  2B 48 DE BA                move.l     a0, -$2146(a5)
0000192C  60 00 01 32                bra.w      $1a60
00001930  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
00001936  66 2C                      bne.b      $1964
00001938  59 4F                      subq.w     #$4, a7
0000193A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001940  3F 3C 07 D2                move.w     #$7d2, -(a7)
00001944  A8 1F                      .byte      0xa8, 0x1f
00001946  20 5F                      movea.l    (a7)+, a0
00001948  2B 48 DE BA                move.l     a0, -$2146(a5)
0000194C  59 4F                      subq.w     #$4, a7
0000194E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001954  3F 3C 07 D7                move.w     #$7d7, -(a7)
00001958  A8 1F                      .byte      0xa8, 0x1f
0000195A  20 5F                      movea.l    (a7)+, a0
0000195C  2B 48 DE C2                move.l     a0, -$213e(a5)
00001960  60 00 00 FE                bra.w      $1a60
00001964  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
0000196A  67 08                      beq.b      $1974
0000196C  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
00001972  66 2C                      bne.b      $19a0
00001974  59 4F                      subq.w     #$4, a7
00001976  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
0000197C  3F 3C 07 D8                move.w     #$7d8, -(a7)
00001980  A8 1F                      .byte      0xa8, 0x1f
00001982  20 5F                      movea.l    (a7)+, a0
00001984  2B 48 DE C2                move.l     a0, -$213e(a5)
00001988  59 4F                      subq.w     #$4, a7
0000198A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001990  3F 3C 07 D3                move.w     #$7d3, -(a7)
00001994  A8 1F                      .byte      0xa8, 0x1f
00001996  20 5F                      movea.l    (a7)+, a0
00001998  2B 48 DE BA                move.l     a0, -$2146(a5)
0000199C  60 00 00 C2                bra.w      $1a60
000019A0  0C 6D 00 0A FF E0          cmpi.w     #$a, -$20(a5)
000019A6  66 2C                      bne.b      $19d4
000019A8  59 4F                      subq.w     #$4, a7
000019AA  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000019B0  3F 3C 07 D4                move.w     #$7d4, -(a7)
000019B4  A8 1F                      .byte      0xa8, 0x1f
000019B6  20 5F                      movea.l    (a7)+, a0
000019B8  2B 48 DE BA                move.l     a0, -$2146(a5)
000019BC  59 4F                      subq.w     #$4, a7
000019BE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000019C4  3F 3C 07 D9                move.w     #$7d9, -(a7)
000019C8  A8 1F                      .byte      0xa8, 0x1f
000019CA  20 5F                      movea.l    (a7)+, a0
000019CC  2B 48 DE C2                move.l     a0, -$213e(a5)
000019D0  60 00 00 8E                bra.w      $1a60
000019D4  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
000019DA  66 2A                      bne.b      $1a06
000019DC  59 4F                      subq.w     #$4, a7
000019DE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000019E4  3F 3C 07 DB                move.w     #$7db, -(a7)
000019E8  A8 1F                      .byte      0xa8, 0x1f
000019EA  20 5F                      movea.l    (a7)+, a0
000019EC  2B 48 DE C2                move.l     a0, -$213e(a5)
000019F0  59 4F                      subq.w     #$4, a7
000019F2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000019F8  3F 3C 07 DC                move.w     #$7dc, -(a7)
000019FC  A8 1F                      .byte      0xa8, 0x1f
000019FE  20 5F                      movea.l    (a7)+, a0
00001A00  2B 48 DE BA                move.l     a0, -$2146(a5)
00001A04  60 5A                      bra.b      $1a60
00001A06  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00001A0C  66 2A                      bne.b      $1a38
00001A0E  59 4F                      subq.w     #$4, a7
00001A10  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A16  3F 3C 07 DA                move.w     #$7da, -(a7)
00001A1A  A8 1F                      .byte      0xa8, 0x1f
00001A1C  20 5F                      movea.l    (a7)+, a0
00001A1E  2B 48 DE C2                move.l     a0, -$213e(a5)
00001A22  59 4F                      subq.w     #$4, a7
00001A24  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A2A  3F 3C 07 DA                move.w     #$7da, -(a7)
00001A2E  A8 1F                      .byte      0xa8, 0x1f
00001A30  20 5F                      movea.l    (a7)+, a0
00001A32  2B 48 DE BA                move.l     a0, -$2146(a5)
00001A36  60 28                      bra.b      $1a60
00001A38  59 4F                      subq.w     #$4, a7
00001A3A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A40  3F 3C 07 D0                move.w     #$7d0, -(a7)
00001A44  A8 1F                      .byte      0xa8, 0x1f
00001A46  20 5F                      movea.l    (a7)+, a0
00001A48  2B 48 DE BA                move.l     a0, -$2146(a5)
00001A4C  59 4F                      subq.w     #$4, a7
00001A4E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A54  3F 3C 07 D5                move.w     #$7d5, -(a7)
00001A58  A8 1F                      .byte      0xa8, 0x1f
00001A5A  20 5F                      movea.l    (a7)+, a0
00001A5C  2B 48 DE C2                move.l     a0, -$213e(a5)
00001A60  4A AD DE C2                tst.l      -$213e(a5)
00001A64  67 00 05 4C                beq.w      $1fb2
00001A68  4A AD DE BA                tst.l      -$2146(a5)
00001A6C  67 00 05 44                beq.w      $1fb2
00001A70  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
00001A76  67 08                      beq.b      $1a80
00001A78  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00001A7E  66 2C                      bne.b      $1aac
00001A80  59 4F                      subq.w     #$4, a7
00001A82  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A88  3F 3C 07 D6                move.w     #$7d6, -(a7)
00001A8C  A8 1F                      .byte      0xa8, 0x1f
00001A8E  20 5F                      movea.l    (a7)+, a0
00001A90  2B 48 DE BE                move.l     a0, -$2142(a5)
00001A94  59 4F                      subq.w     #$4, a7
00001A96  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001A9C  3F 3C 07 D1                move.w     #$7d1, -(a7)
00001AA0  A8 1F                      .byte      0xa8, 0x1f
00001AA2  20 5F                      movea.l    (a7)+, a0
00001AA4  2B 48 DE B6                move.l     a0, -$214a(a5)
00001AA8  60 00 01 32                bra.w      $1bdc
00001AAC  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00001AB2  66 2C                      bne.b      $1ae0
00001AB4  59 4F                      subq.w     #$4, a7
00001AB6  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001ABC  3F 3C 07 D2                move.w     #$7d2, -(a7)
00001AC0  A8 1F                      .byte      0xa8, 0x1f
00001AC2  20 5F                      movea.l    (a7)+, a0
00001AC4  2B 48 DE B6                move.l     a0, -$214a(a5)
00001AC8  59 4F                      subq.w     #$4, a7
00001ACA  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001AD0  3F 3C 07 D7                move.w     #$7d7, -(a7)
00001AD4  A8 1F                      .byte      0xa8, 0x1f
00001AD6  20 5F                      movea.l    (a7)+, a0
00001AD8  2B 48 DE BE                move.l     a0, -$2142(a5)
00001ADC  60 00 00 FE                bra.w      $1bdc
00001AE0  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00001AE6  67 08                      beq.b      $1af0
00001AE8  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00001AEE  66 2C                      bne.b      $1b1c
00001AF0  59 4F                      subq.w     #$4, a7
00001AF2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001AF8  3F 3C 07 D8                move.w     #$7d8, -(a7)
00001AFC  A8 1F                      .byte      0xa8, 0x1f
00001AFE  20 5F                      movea.l    (a7)+, a0
00001B00  2B 48 DE BE                move.l     a0, -$2142(a5)
00001B04  59 4F                      subq.w     #$4, a7
00001B06  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B0C  3F 3C 07 D3                move.w     #$7d3, -(a7)
00001B10  A8 1F                      .byte      0xa8, 0x1f
00001B12  20 5F                      movea.l    (a7)+, a0
00001B14  2B 48 DE B6                move.l     a0, -$214a(a5)
00001B18  60 00 00 C2                bra.w      $1bdc
00001B1C  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
00001B22  66 2C                      bne.b      $1b50
00001B24  59 4F                      subq.w     #$4, a7
00001B26  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B2C  3F 3C 07 D4                move.w     #$7d4, -(a7)
00001B30  A8 1F                      .byte      0xa8, 0x1f
00001B32  20 5F                      movea.l    (a7)+, a0
00001B34  2B 48 DE B6                move.l     a0, -$214a(a5)
00001B38  59 4F                      subq.w     #$4, a7
00001B3A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B40  3F 3C 07 D9                move.w     #$7d9, -(a7)
00001B44  A8 1F                      .byte      0xa8, 0x1f
00001B46  20 5F                      movea.l    (a7)+, a0
00001B48  2B 48 DE BE                move.l     a0, -$2142(a5)
00001B4C  60 00 00 8E                bra.w      $1bdc
00001B50  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
00001B56  66 2A                      bne.b      $1b82
00001B58  59 4F                      subq.w     #$4, a7
00001B5A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B60  3F 3C 07 DB                move.w     #$7db, -(a7)
00001B64  A8 1F                      .byte      0xa8, 0x1f
00001B66  20 5F                      movea.l    (a7)+, a0
00001B68  2B 48 DE BE                move.l     a0, -$2142(a5)
00001B6C  59 4F                      subq.w     #$4, a7
00001B6E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B74  3F 3C 07 DC                move.w     #$7dc, -(a7)
00001B78  A8 1F                      .byte      0xa8, 0x1f
00001B7A  20 5F                      movea.l    (a7)+, a0
00001B7C  2B 48 DE B6                move.l     a0, -$214a(a5)
00001B80  60 5A                      bra.b      $1bdc
00001B82  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00001B88  66 2A                      bne.b      $1bb4
00001B8A  59 4F                      subq.w     #$4, a7
00001B8C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001B92  3F 3C 07 DA                move.w     #$7da, -(a7)
00001B96  A8 1F                      .byte      0xa8, 0x1f
00001B98  20 5F                      movea.l    (a7)+, a0
00001B9A  2B 48 DE BE                move.l     a0, -$2142(a5)
00001B9E  59 4F                      subq.w     #$4, a7
00001BA0  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001BA6  3F 3C 07 DA                move.w     #$7da, -(a7)
00001BAA  A8 1F                      .byte      0xa8, 0x1f
00001BAC  20 5F                      movea.l    (a7)+, a0
00001BAE  2B 48 DE B6                move.l     a0, -$214a(a5)
00001BB2  60 28                      bra.b      $1bdc
00001BB4  59 4F                      subq.w     #$4, a7
00001BB6  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001BBC  3F 3C 07 D0                move.w     #$7d0, -(a7)
00001BC0  A8 1F                      .byte      0xa8, 0x1f
00001BC2  20 5F                      movea.l    (a7)+, a0
00001BC4  2B 48 DE B6                move.l     a0, -$214a(a5)
00001BC8  59 4F                      subq.w     #$4, a7
00001BCA  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001BD0  3F 3C 07 D5                move.w     #$7d5, -(a7)
00001BD4  A8 1F                      .byte      0xa8, 0x1f
00001BD6  20 5F                      movea.l    (a7)+, a0
00001BD8  2B 48 DE BE                move.l     a0, -$2142(a5)
00001BDC  4A AD DE BE                tst.l      -$2142(a5)
00001BE0  67 00 03 D0                beq.w      $1fb2
00001BE4  4A AD DE B6                tst.l      -$214a(a5)
00001BE8  67 00 03 C8                beq.w      $1fb2
00001BEC  59 4F                      subq.w     #$4, a7
00001BEE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001BF4  3F 3C 0D B4                move.w     #$db4, -(a7)
00001BF8  A8 1F                      .byte      0xa8, 0x1f
00001BFA  20 5F                      movea.l    (a7)+, a0
00001BFC  2B 48 DE AA                move.l     a0, -$2156(a5)
00001C00  0C 6D 00 0A FF E0          cmpi.w     #$a, -$20(a5)
00001C06  67 08                      beq.b      $1c10
00001C08  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
00001C0E  66 18                      bne.b      $1c28
00001C10  59 4F                      subq.w     #$4, a7
00001C12  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001C18  3F 3C 0B C0                move.w     #$bc0, -(a7)
00001C1C  A8 1F                      .byte      0xa8, 0x1f
00001C1E  20 5F                      movea.l    (a7)+, a0
00001C20  2B 48 DE CE                move.l     a0, -$2132(a5)
00001C24  60 00 00 B4                bra.w      $1cda
00001C28  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00001C2E  66 18                      bne.b      $1c48
00001C30  59 4F                      subq.w     #$4, a7
00001C32  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001C38  3F 3C 0D AC                move.w     #$dac, -(a7)
00001C3C  A8 1F                      .byte      0xa8, 0x1f
00001C3E  20 5F                      movea.l    (a7)+, a0
00001C40  2B 48 DE CE                move.l     a0, -$2132(a5)
00001C44  60 00 00 94                bra.w      $1cda
00001C48  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
00001C4E  66 16                      bne.b      $1c66
00001C50  59 4F                      subq.w     #$4, a7
00001C52  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001C58  3F 3C 13 8D                move.w     #$138d, -(a7)
00001C5C  A8 1F                      .byte      0xa8, 0x1f
00001C5E  20 5F                      movea.l    (a7)+, a0
00001C60  2B 48 DE CE                move.l     a0, -$2132(a5)
00001C64  60 74                      bra.b      $1cda
00001C66  0C 6D 00 0E FF E0          cmpi.w     #$e, -$20(a5)
00001C6C  66 16                      bne.b      $1c84
00001C6E  59 4F                      subq.w     #$4, a7
00001C70  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001C76  3F 3C 0B C7                move.w     #$bc7, -(a7)
00001C7A  A8 1F                      .byte      0xa8, 0x1f
00001C7C  20 5F                      movea.l    (a7)+, a0
00001C7E  2B 48 DE CE                move.l     a0, -$2132(a5)
00001C82  60 56                      bra.b      $1cda
00001C84  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00001C8A  66 16                      bne.b      $1ca2
00001C8C  59 4F                      subq.w     #$4, a7
00001C8E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001C94  3F 3C 0B C2                move.w     #$bc2, -(a7)
00001C98  A8 1F                      .byte      0xa8, 0x1f
00001C9A  20 5F                      movea.l    (a7)+, a0
00001C9C  2B 48 DE CE                move.l     a0, -$2132(a5)
00001CA0  60 38                      bra.b      $1cda
00001CA2  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
00001CA8  66 16                      bne.b      $1cc0
00001CAA  59 4F                      subq.w     #$4, a7
00001CAC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001CB2  3F 3C 0B B9                move.w     #$bb9, -(a7)
00001CB6  A8 1F                      .byte      0xa8, 0x1f
00001CB8  20 5F                      movea.l    (a7)+, a0
00001CBA  2B 48 DE CE                move.l     a0, -$2132(a5)
00001CBE  60 1A                      bra.b      $1cda
00001CC0  59 4F                      subq.w     #$4, a7
00001CC2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001CC8  30 2D FF E0                move.w     -$20(a5), d0
00001CCC  06 40 0B B7                addi.w     #$bb7, d0
00001CD0  3F 00                      move.w     d0, -(a7)
00001CD2  A8 1F                      .byte      0xa8, 0x1f
00001CD4  20 5F                      movea.l    (a7)+, a0
00001CD6  2B 48 DE CE                move.l     a0, -$2132(a5)
00001CDA  4A AD DE CE                tst.l      -$2132(a5)
00001CDE  67 00 02 D2                beq.w      $1fb2
00001CE2  0C 6D 00 01 FF E0          cmpi.w     #$1, -$20(a5)
00001CE8  66 18                      bne.b      $1d02
00001CEA  59 4F                      subq.w     #$4, a7
00001CEC  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001CF2  3F 3C 0D B4                move.w     #$db4, -(a7)
00001CF6  A8 1F                      .byte      0xa8, 0x1f
00001CF8  20 5F                      movea.l    (a7)+, a0
00001CFA  2B 48 DE D2                move.l     a0, -$212e(a5)
00001CFE  60 00 00 D6                bra.w      $1dd6
00001D02  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
00001D08  66 18                      bne.b      $1d22
00001D0A  59 4F                      subq.w     #$4, a7
00001D0C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001D12  3F 3C 0D AD                move.w     #$dad, -(a7)
00001D16  A8 1F                      .byte      0xa8, 0x1f
00001D18  20 5F                      movea.l    (a7)+, a0
00001D1A  2B 48 DE D2                move.l     a0, -$212e(a5)
00001D1E  60 00 00 B6                bra.w      $1dd6
00001D22  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00001D28  66 18                      bne.b      $1d42
00001D2A  59 4F                      subq.w     #$4, a7
00001D2C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001D32  3F 3C 0B BC                move.w     #$bbc, -(a7)
00001D36  A8 1F                      .byte      0xa8, 0x1f
00001D38  20 5F                      movea.l    (a7)+, a0
00001D3A  2B 48 DE D2                move.l     a0, -$212e(a5)
00001D3E  60 00 00 96                bra.w      $1dd6
00001D42  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00001D48  66 16                      bne.b      $1d60
00001D4A  59 4F                      subq.w     #$4, a7
00001D4C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001D52  3F 3C 13 8D                move.w     #$138d, -(a7)
00001D56  A8 1F                      .byte      0xa8, 0x1f
00001D58  20 5F                      movea.l    (a7)+, a0
00001D5A  2B 48 DE D2                move.l     a0, -$212e(a5)
00001D5E  60 76                      bra.b      $1dd6
00001D60  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
00001D66  66 16                      bne.b      $1d7e
00001D68  59 4F                      subq.w     #$4, a7
00001D6A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001D70  3F 3C 0B C4                move.w     #$bc4, -(a7)
00001D74  A8 1F                      .byte      0xa8, 0x1f
00001D76  20 5F                      movea.l    (a7)+, a0
00001D78  2B 48 DE D2                move.l     a0, -$212e(a5)
00001D7C  60 58                      bra.b      $1dd6
00001D7E  0C 6D 00 09 FF E0          cmpi.w     #$9, -$20(a5)
00001D84  66 16                      bne.b      $1d9c
00001D86  59 4F                      subq.w     #$4, a7
00001D88  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001D8E  3F 3C 0B C5                move.w     #$bc5, -(a7)
00001D92  A8 1F                      .byte      0xa8, 0x1f
00001D94  20 5F                      movea.l    (a7)+, a0
00001D96  2B 48 DE D2                move.l     a0, -$212e(a5)
00001D9A  60 3A                      bra.b      $1dd6
00001D9C  0C 6D 00 0E FF E0          cmpi.w     #$e, -$20(a5)
00001DA2  66 16                      bne.b      $1dba
00001DA4  59 4F                      subq.w     #$4, a7
00001DA6  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001DAC  3F 3C 0B C5                move.w     #$bc5, -(a7)
00001DB0  A8 1F                      .byte      0xa8, 0x1f
00001DB2  20 5F                      movea.l    (a7)+, a0
00001DB4  2B 48 DE D2                move.l     a0, -$212e(a5)
00001DB8  60 1C                      bra.b      $1dd6
00001DBA  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00001DC0  66 14                      bne.b      $1dd6
00001DC2  59 4F                      subq.w     #$4, a7
00001DC4  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001DCA  3F 3C 0B C3                move.w     #$bc3, -(a7)
00001DCE  A8 1F                      .byte      0xa8, 0x1f
00001DD0  20 5F                      movea.l    (a7)+, a0
00001DD2  2B 48 DE D2                move.l     a0, -$212e(a5)
00001DD6  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
00001DDC  67 08                      beq.b      $1de6
00001DDE  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
00001DE4  66 18                      bne.b      $1dfe
00001DE6  59 4F                      subq.w     #$4, a7
00001DE8  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001DEE  3F 3C 0B C0                move.w     #$bc0, -(a7)
00001DF2  A8 1F                      .byte      0xa8, 0x1f
00001DF4  20 5F                      movea.l    (a7)+, a0
00001DF6  2B 48 DE CA                move.l     a0, -$2136(a5)
00001DFA  60 00 00 B4                bra.w      $1eb0
00001DFE  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00001E04  66 18                      bne.b      $1e1e
00001E06  59 4F                      subq.w     #$4, a7
00001E08  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E0E  3F 3C 0D AC                move.w     #$dac, -(a7)
00001E12  A8 1F                      .byte      0xa8, 0x1f
00001E14  20 5F                      movea.l    (a7)+, a0
00001E16  2B 48 DE CA                move.l     a0, -$2136(a5)
00001E1A  60 00 00 94                bra.w      $1eb0
00001E1E  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00001E24  66 16                      bne.b      $1e3c
00001E26  59 4F                      subq.w     #$4, a7
00001E28  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E2E  3F 3C 13 8D                move.w     #$138d, -(a7)
00001E32  A8 1F                      .byte      0xa8, 0x1f
00001E34  20 5F                      movea.l    (a7)+, a0
00001E36  2B 48 DE CA                move.l     a0, -$2136(a5)
00001E3A  60 74                      bra.b      $1eb0
00001E3C  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
00001E42  66 16                      bne.b      $1e5a
00001E44  59 4F                      subq.w     #$4, a7
00001E46  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E4C  3F 3C 0B C7                move.w     #$bc7, -(a7)
00001E50  A8 1F                      .byte      0xa8, 0x1f
00001E52  20 5F                      movea.l    (a7)+, a0
00001E54  2B 48 DE CA                move.l     a0, -$2136(a5)
00001E58  60 56                      bra.b      $1eb0
00001E5A  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00001E60  66 16                      bne.b      $1e78
00001E62  59 4F                      subq.w     #$4, a7
00001E64  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E6A  3F 3C 0B C2                move.w     #$bc2, -(a7)
00001E6E  A8 1F                      .byte      0xa8, 0x1f
00001E70  20 5F                      movea.l    (a7)+, a0
00001E72  2B 48 DE CA                move.l     a0, -$2136(a5)
00001E76  60 38                      bra.b      $1eb0
00001E78  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00001E7E  66 16                      bne.b      $1e96
00001E80  59 4F                      subq.w     #$4, a7
00001E82  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E88  3F 3C 0B B9                move.w     #$bb9, -(a7)
00001E8C  A8 1F                      .byte      0xa8, 0x1f
00001E8E  20 5F                      movea.l    (a7)+, a0
00001E90  2B 48 DE CA                move.l     a0, -$2136(a5)
00001E94  60 1A                      bra.b      $1eb0
00001E96  59 4F                      subq.w     #$4, a7
00001E98  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001E9E  30 2D FF E2                move.w     -$1e(a5), d0
00001EA2  06 40 0B B7                addi.w     #$bb7, d0
00001EA6  3F 00                      move.w     d0, -(a7)
00001EA8  A8 1F                      .byte      0xa8, 0x1f
00001EAA  20 5F                      movea.l    (a7)+, a0
00001EAC  2B 48 DE CA                move.l     a0, -$2136(a5)
00001EB0  4A AD DE CA                tst.l      -$2136(a5)
00001EB4  67 00 00 FC                beq.w      $1fb2
00001EB8  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
00001EBE  66 18                      bne.b      $1ed8
00001EC0  59 4F                      subq.w     #$4, a7
00001EC2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001EC8  3F 3C 0D B4                move.w     #$db4, -(a7)
00001ECC  A8 1F                      .byte      0xa8, 0x1f
00001ECE  20 5F                      movea.l    (a7)+, a0
00001ED0  2B 48 DE C6                move.l     a0, -$213a(a5)
00001ED4  60 00 00 D6                bra.w      $1fac
00001ED8  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
00001EDE  66 18                      bne.b      $1ef8
00001EE0  59 4F                      subq.w     #$4, a7
00001EE2  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001EE8  3F 3C 0D AD                move.w     #$dad, -(a7)
00001EEC  A8 1F                      .byte      0xa8, 0x1f
00001EEE  20 5F                      movea.l    (a7)+, a0
00001EF0  2B 48 DE C6                move.l     a0, -$213a(a5)
00001EF4  60 00 00 B6                bra.w      $1fac
00001EF8  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00001EFE  66 18                      bne.b      $1f18
00001F00  59 4F                      subq.w     #$4, a7
00001F02  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001F08  3F 3C 0B BC                move.w     #$bbc, -(a7)
00001F0C  A8 1F                      .byte      0xa8, 0x1f
00001F0E  20 5F                      movea.l    (a7)+, a0
00001F10  2B 48 DE C6                move.l     a0, -$213a(a5)
00001F14  60 00 00 96                bra.w      $1fac
00001F18  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00001F1E  66 16                      bne.b      $1f36
00001F20  59 4F                      subq.w     #$4, a7
00001F22  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001F28  3F 3C 13 8D                move.w     #$138d, -(a7)
00001F2C  A8 1F                      .byte      0xa8, 0x1f
00001F2E  20 5F                      movea.l    (a7)+, a0
00001F30  2B 48 DE C6                move.l     a0, -$213a(a5)
00001F34  60 76                      bra.b      $1fac
00001F36  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00001F3C  66 16                      bne.b      $1f54
00001F3E  59 4F                      subq.w     #$4, a7
00001F40  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001F46  3F 3C 0B C4                move.w     #$bc4, -(a7)
00001F4A  A8 1F                      .byte      0xa8, 0x1f
00001F4C  20 5F                      movea.l    (a7)+, a0
00001F4E  2B 48 DE C6                move.l     a0, -$213a(a5)
00001F52  60 58                      bra.b      $1fac
00001F54  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
00001F5A  66 16                      bne.b      $1f72
00001F5C  59 4F                      subq.w     #$4, a7
00001F5E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001F64  3F 3C 0B C5                move.w     #$bc5, -(a7)
00001F68  A8 1F                      .byte      0xa8, 0x1f
00001F6A  20 5F                      movea.l    (a7)+, a0
00001F6C  2B 48 DE C6                move.l     a0, -$213a(a5)
00001F70  60 3A                      bra.b      $1fac
00001F72  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
00001F78  66 16                      bne.b      $1f90
00001F7A  59 4F                      subq.w     #$4, a7
00001F7C  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001F82  3F 3C 0B C5                move.w     #$bc5, -(a7)
00001F86  A8 1F                      .byte      0xa8, 0x1f
00001F88  20 5F                      movea.l    (a7)+, a0
00001F8A  2B 48 DE C6                move.l     a0, -$213a(a5)
00001F8E  60 1C                      bra.b      $1fac
00001F90  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00001F96  66 14                      bne.b      $1fac
00001F98  59 4F                      subq.w     #$4, a7
00001F9A  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00001FA0  3F 3C 0B C3                move.w     #$bc3, -(a7)
00001FA4  A8 1F                      .byte      0xa8, 0x1f
00001FA6  20 5F                      movea.l    (a7)+, a0
00001FA8  2B 48 DE C6                move.l     a0, -$213a(a5)
00001FAC  4A AD DE C6                tst.l      -$213a(a5)
00001FB0  4E 71                      nop
00001FB2  4E 5E                      unlk       a6
00001FB4  4E 75                      rts

; MacsBug symbol trailer for LoadTheSounds: 8D 4C 6F 61 64 54 68 65 53 6F 75 6E 64 73

DoGame: ; 00001FC6..00002704
00001FC6  4E 56 00 00                link.w     a6, #$0
00001FCA  2F 03                      move.l     d3, -(a7)
00001FCC  0C 2D 00 01 FF D8          cmpi.b     #$1, -$28(a5)
00001FD2  66 1A                      bne.b      $1fee
00001FD4  3B 7C 00 06 D3 DC          move.w     #$6, -$2c24(a5)
00001FDA  3B 7C 00 06 D3 DA          move.w     #$6, -$2c26(a5)
00001FE0  3B 7C 00 06 D8 06          move.w     #$6, -$27fa(a5)
00001FE6  3B 7C 00 09 D8 04          move.w     #$9, -$27fc(a5)
00001FEC  60 18                      bra.b      $2006
00001FEE  3B 7C 00 0A D3 DC          move.w     #$a, -$2c24(a5)
00001FF4  3B 7C 00 0A D3 DA          move.w     #$a, -$2c26(a5)
00001FFA  3B 7C 00 0A D8 06          move.w     #$a, -$27fa(a5)
00002000  3B 7C 00 0E D8 04          move.w     #$e, -$27fc(a5)
00002006  55 4F                      subq.w     #$2, a7
00002008  A8 61                      .byte      0xa8, 0x61
0000200A  30 1F                      move.w     (a7)+, d0
0000200C  02 40 7F FF                andi.w     #$7fff, d0
00002010  48 C0                      ext.l      d0
00002012  81 FC 00 06                divs.w     #$6, d0
00002016  48 40                      swap       d0
00002018  52 40                      addq.w     #$1, d0
0000201A  36 00                      move.w     d0, d3
0000201C  0C 43 00 02                cmpi.w     #$2, d3
00002020  67 06                      beq.b      $2028
00002022  0C 43 00 05                cmpi.w     #$5, d3
00002026  66 58                      bne.b      $2080
00002028  0C 6D 00 07 D4 1C          cmpi.w     #$7, -$2be4(a5)
0000202E  66 10                      bne.b      $2040
00002030  3B 7C 00 09 DD 0E          move.w     #$9, -$22f2(a5)
00002036  3B 7C 00 09 DD 10          move.w     #$9, -$22f0(a5)
0000203C  60 00 01 50                bra.w      $218e
00002040  0C 6D 00 08 D4 1C          cmpi.w     #$8, -$2be4(a5)
00002046  66 10                      bne.b      $2058
00002048  3B 7C 00 0C DD 0E          move.w     #$c, -$22f2(a5)
0000204E  3B 7C 00 0C DD 10          move.w     #$c, -$22f0(a5)
00002054  60 00 01 38                bra.w      $218e
00002058  0C 6D 00 0A D4 1C          cmpi.w     #$a, -$2be4(a5)
0000205E  66 10                      bne.b      $2070
00002060  3B 7C 00 03 DD 0E          move.w     #$3, -$22f2(a5)
00002066  3B 7C 00 03 DD 10          move.w     #$3, -$22f0(a5)
0000206C  60 00 01 20                bra.w      $218e
00002070  3B 7C 00 06 DD 0E          move.w     #$6, -$22f2(a5)
00002076  3B 7C 00 06 DD 10          move.w     #$6, -$22f0(a5)
0000207C  60 00 01 10                bra.w      $218e
00002080  0C 43 00 01                cmpi.w     #$1, d3
00002084  67 06                      beq.b      $208c
00002086  0C 43 00 06                cmpi.w     #$6, d3
0000208A  66 58                      bne.b      $20e4
0000208C  0C 6D 00 07 D4 1C          cmpi.w     #$7, -$2be4(a5)
00002092  66 10                      bne.b      $20a4
00002094  3B 7C FF F7 DD 0E          move.w     #$fff7, -$22f2(a5)
0000209A  3B 7C 00 09 DD 10          move.w     #$9, -$22f0(a5)
000020A0  60 00 00 EC                bra.w      $218e
000020A4  0C 6D 00 08 D4 1C          cmpi.w     #$8, -$2be4(a5)
000020AA  66 10                      bne.b      $20bc
000020AC  3B 7C FF F4 DD 0E          move.w     #$fff4, -$22f2(a5)
000020B2  3B 7C 00 0C DD 10          move.w     #$c, -$22f0(a5)
000020B8  60 00 00 D4                bra.w      $218e
000020BC  0C 6D 00 0A D4 1C          cmpi.w     #$a, -$2be4(a5)
000020C2  66 10                      bne.b      $20d4
000020C4  3B 7C FF FD DD 0E          move.w     #$fffd, -$22f2(a5)
000020CA  3B 7C 00 03 DD 10          move.w     #$3, -$22f0(a5)
000020D0  60 00 00 BC                bra.w      $218e
000020D4  3B 7C FF FA DD 0E          move.w     #$fffa, -$22f2(a5)
000020DA  3B 7C 00 06 DD 10          move.w     #$6, -$22f0(a5)
000020E0  60 00 00 AC                bra.w      $218e
000020E4  4A 43                      tst.w      d3
000020E6  67 06                      beq.b      $20ee
000020E8  0C 43 00 03                cmpi.w     #$3, d3
000020EC  66 52                      bne.b      $2140
000020EE  0C 6D 00 07 D4 1C          cmpi.w     #$7, -$2be4(a5)
000020F4  66 10                      bne.b      $2106
000020F6  3B 7C 00 09 DD 0E          move.w     #$9, -$22f2(a5)
000020FC  3B 7C FF F7 DD 10          move.w     #$fff7, -$22f0(a5)
00002102  60 00 00 8A                bra.w      $218e
00002106  0C 6D 00 08 D4 1C          cmpi.w     #$8, -$2be4(a5)
0000210C  66 0E                      bne.b      $211c
0000210E  3B 7C 00 0C DD 0E          move.w     #$c, -$22f2(a5)
00002114  3B 7C FF F4 DD 10          move.w     #$fff4, -$22f0(a5)
0000211A  60 72                      bra.b      $218e
0000211C  0C 6D 00 0A D4 1C          cmpi.w     #$a, -$2be4(a5)
00002122  66 0E                      bne.b      $2132
00002124  3B 7C 00 03 DD 0E          move.w     #$3, -$22f2(a5)
0000212A  3B 7C FF FD DD 10          move.w     #$fffd, -$22f0(a5)
00002130  60 5C                      bra.b      $218e
00002132  3B 7C 00 06 DD 0E          move.w     #$6, -$22f2(a5)
00002138  3B 7C FF FA DD 10          move.w     #$fffa, -$22f0(a5)
0000213E  60 4E                      bra.b      $218e
00002140  0C 6D 00 07 D4 1C          cmpi.w     #$7, -$2be4(a5)
00002146  66 0E                      bne.b      $2156
00002148  3B 7C FF F7 DD 0E          move.w     #$fff7, -$22f2(a5)
0000214E  3B 7C FF F7 DD 10          move.w     #$fff7, -$22f0(a5)
00002154  60 38                      bra.b      $218e
00002156  0C 6D 00 08 D4 1C          cmpi.w     #$8, -$2be4(a5)
0000215C  66 0E                      bne.b      $216c
0000215E  3B 7C FF F4 DD 0E          move.w     #$fff4, -$22f2(a5)
00002164  3B 7C FF F4 DD 10          move.w     #$fff4, -$22f0(a5)
0000216A  60 22                      bra.b      $218e
0000216C  0C 6D 00 0A D4 1C          cmpi.w     #$a, -$2be4(a5)
00002172  66 0E                      bne.b      $2182
00002174  3B 7C FF FD DD 0E          move.w     #$fffd, -$22f2(a5)
0000217A  3B 7C FF FD DD 10          move.w     #$fffd, -$22f0(a5)
00002180  60 0C                      bra.b      $218e
00002182  3B 7C FF FA DD 0E          move.w     #$fffa, -$22f2(a5)
00002188  3B 7C FF FA DD 10          move.w     #$fffa, -$22f0(a5)
0000218E  30 2D DD 0E                move.w     -$22f2(a5), d0
00002192  44 40                      neg.w      d0
00002194  3B 40 DD 72                move.w     d0, -$228e(a5)
00002198  30 2D DD 10                move.w     -$22f0(a5), d0
0000219C  44 40                      neg.w      d0
0000219E  3B 40 DD 74                move.w     d0, -$228c(a5)
000021A2  42 2D D7 A4                clr.b      -$285c(a5)
000021A6  42 2D D7 AC                clr.b      -$2854(a5)
000021AA  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
000021B0  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000021B6  42 2D D4 02                clr.b      -$2bfe(a5)
000021BA  42 2D D4 04                clr.b      -$2bfc(a5)
000021BE  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
000021C4  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
000021CA  42 2D D7 54                clr.b      -$28ac(a5)
000021CE  42 2D D7 56                clr.b      -$28aa(a5)
000021D2  42 2D D7 58                clr.b      -$28a8(a5)
000021D6  42 2D D7 5A                clr.b      -$28a6(a5)
000021DA  42 2D D8 FC                clr.b      -$2704(a5)
000021DE  42 2D D8 FD                clr.b      -$2703(a5)
000021E2  42 2D D8 FE                clr.b      -$2702(a5)
000021E6  42 2D D8 FF                clr.b      -$2701(a5)
000021EA  42 2D D9 00                clr.b      -$2700(a5)
000021EE  42 2D D9 01                clr.b      -$26ff(a5)
000021F2  42 2D D7 DA                clr.b      -$2826(a5)
000021F6  42 2D D7 DC                clr.b      -$2824(a5)
000021FA  42 2D D7 A2                clr.b      -$285e(a5)
000021FE  42 2D D7 AA                clr.b      -$2856(a5)
00002202  42 2D D7 8A                clr.b      -$2876(a5)
00002206  42 2D D7 8C                clr.b      -$2874(a5)
0000220A  42 2D D7 7E                clr.b      -$2882(a5)
0000220E  42 2D D7 80                clr.b      -$2880(a5)
00002212  42 2D D7 CC                clr.b      -$2834(a5)
00002216  42 2D D7 CE                clr.b      -$2832(a5)
0000221A  42 2D CF 6C                clr.b      -$3094(a5)
0000221E  42 2D CF 6E                clr.b      -$3092(a5)
00002222  42 2D CF E8                clr.b      -$3018(a5)
00002226  42 2D CF EA                clr.b      -$3016(a5)
0000222A  42 2D CF AA                clr.b      -$3056(a5)
0000222E  42 2D CF E6                clr.b      -$301a(a5)
00002232  42 2D CF EC                clr.b      -$3014(a5)
00002236  42 2D D0 0C                clr.b      -$2ff4(a5)
0000223A  42 2D CF A8                clr.b      -$3058(a5)
0000223E  42 2D CF E4                clr.b      -$301c(a5)
00002242  42 2D CF 58                clr.b      -$30a8(a5)
00002246  42 2D CF 5A                clr.b      -$30a6(a5)
0000224A  42 2D CF 5C                clr.b      -$30a4(a5)
0000224E  42 2D CF 5E                clr.b      -$30a2(a5)
00002252  42 2D D0 60                clr.b      -$2fa0(a5)
00002256  42 2D D0 62                clr.b      -$2f9e(a5)
0000225A  42 2D CF 9A                clr.b      -$3066(a5)
0000225E  42 2D CF CE                clr.b      -$3032(a5)
00002262  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
00002268  66 56                      bne.b      $22c0
0000226A  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
00002270  48 6D D7 FC                pea.l      -$2804(a5)
00002274  48 6D D3 F6                pea.l      -$2c0a(a5)
00002278  30 2D FF E0                move.w     -$20(a5), d0
0000227C  06 40 03 E7                addi.w     #$3e7, d0
00002280  3F 00                      move.w     d0, -(a7)
00002282  4E B9 00 00 7E E0          jsr        $7ee0.l
00002288  48 6D D7 FC                pea.l      -$2804(a5)
0000228C  48 6D D3 EA                pea.l      -$2c16(a5)
00002290  30 2D FF E0                move.w     -$20(a5), d0
00002294  06 40 05 DB                addi.w     #$5db, d0
00002298  3F 00                      move.w     d0, -(a7)
0000229A  4E B9 00 00 7E E0          jsr        $7ee0.l
000022A0  48 6D DC 42                pea.l      -$23be(a5)
000022A4  48 78 00 10                pea.l      $10.w
000022A8  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
000022AE  A8 A7                      .byte      0xa8, 0xa7
000022B0  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
000022B6  3B 7C 00 18 D8 0C          move.w     #$18, -$27f4(a5)
000022BC  4F EF 00 14                lea.l      $14(a7), a7
000022C0  42 2D D7 C7                clr.b      -$2839(a5)
000022C4  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
000022CA  66 56                      bne.b      $2322
000022CC  3B 7C 00 01 FF E2          move.w     #$1, -$1e(a5)
000022D2  48 6D D7 FC                pea.l      -$2804(a5)
000022D6  48 6D D3 F2                pea.l      -$2c0e(a5)
000022DA  30 2D FF E2                move.w     -$1e(a5), d0
000022DE  06 40 07 CF                addi.w     #$7cf, d0
000022E2  3F 00                      move.w     d0, -(a7)
000022E4  4E B9 00 00 7E E0          jsr        $7ee0.l
000022EA  48 6D D7 FC                pea.l      -$2804(a5)
000022EE  48 6D D3 E6                pea.l      -$2c1a(a5)
000022F2  30 2D FF E2                move.w     -$1e(a5), d0
000022F6  06 40 09 C3                addi.w     #$9c3, d0
000022FA  3F 00                      move.w     d0, -(a7)
000022FC  4E B9 00 00 7E E0          jsr        $7ee0.l
00002302  48 6D DC 1E                pea.l      -$23e2(a5)
00002306  48 78 00 10                pea.l      $10.w
0000230A  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
00002310  A8 A7                      .byte      0xa8, 0xa7
00002312  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
00002318  3B 7C 00 18 D8 08          move.w     #$18, -$27f8(a5)
0000231E  4F EF 00 14                lea.l      $14(a7), a7
00002322  42 2D D7 C1                clr.b      -$283f(a5)
00002326  4E BA F5 74                jsr        $189c(pc)
0000232A  0C 6D 00 11 D4 1C          cmpi.w     #$11, -$2be4(a5)
00002330  67 08                      beq.b      $233a
00002332  0C 6D 00 13 D4 1C          cmpi.w     #$13, -$2be4(a5)
00002338  66 06                      bne.b      $2340
0000233A  04 6D 00 32 FF F6          subi.w     #$32, -$a(a5)
00002340  0C 6D 00 12 D4 1C          cmpi.w     #$12, -$2be4(a5)
00002346  67 08                      beq.b      $2350
00002348  0C 6D 00 13 D4 1C          cmpi.w     #$13, -$2be4(a5)
0000234E  66 06                      bne.b      $2356
00002350  04 6D 00 32 FF FA          subi.w     #$32, -$6(a5)
00002356  0C 6D 00 14 D4 1C          cmpi.w     #$14, -$2be4(a5)
0000235C  67 08                      beq.b      $2366
0000235E  0C 6D 00 16 D4 1C          cmpi.w     #$16, -$2be4(a5)
00002364  66 06                      bne.b      $236c
00002366  04 6D 00 4B FF F6          subi.w     #$4b, -$a(a5)
0000236C  0C 6D 00 15 D4 1C          cmpi.w     #$15, -$2be4(a5)
00002372  67 08                      beq.b      $237c
00002374  0C 6D 00 16 D4 1C          cmpi.w     #$16, -$2be4(a5)
0000237A  66 06                      bne.b      $2382
0000237C  04 6D 00 4B FF FA          subi.w     #$4b, -$6(a5)
00002382  42 2D CF 0C                clr.b      -$30f4(a5)
00002386  60 00 00 B0                bra.w      $2438
0000238A  4A 2D CF 0C                tst.b      -$30f4(a5)
0000238E  66 08                      bne.b      $2398
00002390  4E B9 00 00 27 0E          jsr        $270e.l
00002396  60 68                      bra.b      $2400
00002398  0C 2D 00 01 CF 0C          cmpi.b     #$1, -$30f4(a5)
0000239E  66 60                      bne.b      $2400
000023A0  55 4F                      subq.w     #$2, a7
000023A2  3F 3C FF FF                move.w     #$ffff, -(a7)
000023A6  48 6D D7 5E                pea.l      -$28a2(a5)
000023AA  A9 70                      .byte      0xa9, 0x70
000023AC  10 1F                      move.b     (a7)+, d0
000023AE  0C 6D 00 03 D7 5E          cmpi.w     #$3, -$28a2(a5)
000023B4  66 4A                      bne.b      $2400
000023B6  20 2D D7 60                move.l     -$28a0(a5), d0
000023BA  02 80 00 00 00 FF          andi.l     #$ff, d0
000023C0  1B 40 D7 5D                move.b     d0, -$28a3(a5)
000023C4  0C 2D 00 71 D7 5D          cmpi.b     #$71, -$28a3(a5)
000023CA  66 12                      bne.b      $23de
000023CC  30 2D D7 6C                move.w     -$2894(a5), d0
000023D0  02 80 00 00 01 00          andi.l     #$100, d0
000023D6  67 06                      beq.b      $23de
000023D8  1B 7C 00 01 CF 0E          move.b     #$1, -$30f2(a5)
000023DE  0C 2D 00 70 D7 5D          cmpi.b     #$70, -$28a3(a5)
000023E4  66 1A                      bne.b      $2400
000023E6  30 2D D7 6C                move.w     -$2894(a5), d0
000023EA  02 80 00 00 01 00          andi.l     #$100, d0
000023F0  67 0E                      beq.b      $2400
000023F2  10 2D CF 0C                move.b     -$30f4(a5), d0
000023F6  57 C0                      seq.b      d0
000023F8  44 00                      neg.b      d0
000023FA  48 80                      ext.w      d0
000023FC  1B 40 CF 0C                move.b     d0, -$30f4(a5)
00002400  4E B9 00 00 2C 94          jsr        $2c94.l
00002406  4E B9 00 00 4A 90          jsr        $4a90.l
0000240C  4A 6D FF F8                tst.w      -$8(a5)
00002410  6E 10                      bgt.b      $2422
00002412  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002418  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
0000241E  52 6D CE EC                addq.w     #$1, -$3114(a5)
00002422  4A 6D FF FC                tst.w      -$4(a5)
00002426  6E 10                      bgt.b      $2438
00002428  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
0000242E  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
00002434  52 6D CE EE                addq.w     #$1, -$3112(a5)
00002438  4A 6D FF F8                tst.w      -$8(a5)
0000243C  6F 0E                      ble.b      $244c
0000243E  4A 6D FF FC                tst.w      -$4(a5)
00002442  6F 08                      ble.b      $244c
00002444  4A 2D CF 0E                tst.b      -$30f2(a5)
00002448  67 00 FF 40                beq.w      $238a
0000244C  0C 2D 00 01 CF 0E          cmpi.b     #$1, -$30f2(a5)
00002452  67 00 02 AA                beq.w      $26fe
00002456  59 4F                      subq.w     #$4, a7
00002458  A9 75                      .byte      0xa9, 0x75
0000245A  20 1F                      move.l     (a7)+, d0
0000245C  2B 40 CE E0                move.l     d0, -$3120(a5)
00002460  60 12                      bra.b      $2474
00002462  4E B9 00 00 27 0E          jsr        $270e.l
00002468  4E B9 00 00 2C 94          jsr        $2c94.l
0000246E  4E B9 00 00 4A 90          jsr        $4a90.l
00002474  59 4F                      subq.w     #$4, a7
00002476  A9 75                      .byte      0xa9, 0x75
00002478  20 1F                      move.l     (a7)+, d0
0000247A  90 AD CE E0                sub.l      -$3120(a5), d0
0000247E  72 64                      moveq      #$64, d1
00002480  B0 81                      cmp.l      d1, d0
00002482  64 10                      bcc.b      $2494
00002484  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
0000248A  6C 08                      bge.b      $2494
0000248C  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
00002492  6D CE                      blt.b      $2462
00002494  4A 6D FF F8                tst.w      -$8(a5)
00002498  6E 2A                      bgt.b      $24c4
0000249A  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
000024A0  6C 22                      bge.b      $24c4
000024A2  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
000024A8  66 0E                      bne.b      $24b8
000024AA  3F 3C 00 01                move.w     #$1, -(a7)
000024AE  4E B9 00 00 50 F2          jsr        $50f2.l
000024B4  54 4F                      addq.w     #$2, a7
000024B6  60 0C                      bra.b      $24c4
000024B8  3F 2D FF E2                move.w     -$1e(a5), -(a7)
000024BC  4E B9 00 00 50 F2          jsr        $50f2.l
000024C2  54 4F                      addq.w     #$2, a7
000024C4  4A 6D FF FC                tst.w      -$4(a5)
000024C8  6E 2A                      bgt.b      $24f4
000024CA  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
000024D0  6C 22                      bge.b      $24f4
000024D2  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
000024D8  66 0E                      bne.b      $24e8
000024DA  3F 3C 00 01                move.w     #$1, -(a7)
000024DE  4E B9 00 00 50 F2          jsr        $50f2.l
000024E4  54 4F                      addq.w     #$2, a7
000024E6  60 0C                      bra.b      $24f4
000024E8  3F 2D FF E0                move.w     -$20(a5), -(a7)
000024EC  4E B9 00 00 50 F2          jsr        $50f2.l
000024F2  54 4F                      addq.w     #$2, a7
000024F4  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
000024FA  6C 08                      bge.b      $2504
000024FC  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
00002502  6D 06                      blt.b      $250a
00002504  1B 7C 00 01 CE DC          move.b     #$1, -$3124(a5)
0000250A  4A 2D CE DC                tst.b      -$3124(a5)
0000250E  66 00 01 EE                bne.w      $26fe
00002512  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
00002518  66 06                      bne.b      $2520
0000251A  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
00002520  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
00002526  66 06                      bne.b      $252e
00002528  3B 7C 00 01 FF E2          move.w     #$1, -$1e(a5)
0000252E  52 6D FF E4                addq.w     #$1, -$1c(a5)
00002532  3B 7C 00 64 FF F6          move.w     #$64, -$a(a5)
00002538  3B 7C 00 64 FF FA          move.w     #$64, -$6(a5)
0000253E  3B 6D FF F6 FF F8          move.w     -$a(a5), -$8(a5)
00002544  3B 6D FF FA FF FC          move.w     -$6(a5), -$4(a5)
0000254A  1B 7C 00 01 FF EE          move.b     #$1, -$12(a5)
00002550  1B 7C 00 01 FF F0          move.b     #$1, -$10(a5)
00002556  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
0000255C  0C 6D 00 40 D4 1C          cmpi.w     #$40, -$2be4(a5)
00002562  66 10                      bne.b      $2574
00002564  3F 3C 00 D3                move.w     #$d3, -(a7)
00002568  4E B9 00 00 7D F2          jsr        $7df2.l
0000256E  54 4F                      addq.w     #$2, a7
00002570  60 00 00 82                bra.w      $25f4
00002574  0C 6D 00 41 D4 1C          cmpi.w     #$41, -$2be4(a5)
0000257A  66 0E                      bne.b      $258a
0000257C  3F 3C 00 D2                move.w     #$d2, -(a7)
00002580  4E B9 00 00 7D F2          jsr        $7df2.l
00002586  54 4F                      addq.w     #$2, a7
00002588  60 6A                      bra.b      $25f4
0000258A  0C 6D 00 42 D4 1C          cmpi.w     #$42, -$2be4(a5)
00002590  66 0E                      bne.b      $25a0
00002592  3F 3C 00 D4                move.w     #$d4, -(a7)
00002596  4E B9 00 00 7D F2          jsr        $7df2.l
0000259C  54 4F                      addq.w     #$2, a7
0000259E  60 54                      bra.b      $25f4
000025A0  0C 6D 00 43 D4 1C          cmpi.w     #$43, -$2be4(a5)
000025A6  66 0E                      bne.b      $25b6
000025A8  3F 3C 00 D5                move.w     #$d5, -(a7)
000025AC  4E B9 00 00 7D F2          jsr        $7df2.l
000025B2  54 4F                      addq.w     #$2, a7
000025B4  60 3E                      bra.b      $25f4
000025B6  0C 6D 00 44 D4 1C          cmpi.w     #$44, -$2be4(a5)
000025BC  66 0E                      bne.b      $25cc
000025BE  3F 3C 00 D6                move.w     #$d6, -(a7)
000025C2  4E B9 00 00 7D F2          jsr        $7df2.l
000025C8  54 4F                      addq.w     #$2, a7
000025CA  60 28                      bra.b      $25f4
000025CC  0C 6D 00 45 D4 1C          cmpi.w     #$45, -$2be4(a5)
000025D2  66 0E                      bne.b      $25e2
000025D4  3F 3C 00 D7                move.w     #$d7, -(a7)
000025D8  4E B9 00 00 7D F2          jsr        $7df2.l
000025DE  54 4F                      addq.w     #$2, a7
000025E0  60 12                      bra.b      $25f4
000025E2  30 2D CE DE                move.w     -$3122(a5), d0
000025E6  06 40 00 CF                addi.w     #$cf, d0
000025EA  3F 00                      move.w     d0, -(a7)
000025EC  4E B9 00 00 7D F2          jsr        $7df2.l
000025F2  54 4F                      addq.w     #$2, a7
000025F4  20 6D D3 FA                movea.l    -$2c06(a5), a0
000025F8  48 68 00 02                pea.l      $2(a0)
000025FC  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002600  48 68 00 02                pea.l      $2(a0)
00002604  48 6D D7 F4                pea.l      -$280c(a5)
00002608  48 6D D7 F4                pea.l      -$280c(a5)
0000260C  42 67                      clr.w      -(a7)
0000260E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002612  2F 28 00 18                move.l     $18(a0), -(a7)
00002616  A8 EC                      .byte      0xa8, 0xec
00002618  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000261C  48 68 00 02                pea.l      $2(a0)
00002620  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002624  48 68 00 02                pea.l      $2(a0)
00002628  48 6D D7 F4                pea.l      -$280c(a5)
0000262C  48 6D D7 F4                pea.l      -$280c(a5)
00002630  42 67                      clr.w      -(a7)
00002632  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002636  2F 28 00 18                move.l     $18(a0), -(a7)
0000263A  A8 EC                      .byte      0xa8, 0xec
0000263C  4E B9 00 00 A7 F8          jsr        $a7f8.l
00002642  4E B9 00 00 4D 20          jsr        $4d20.l
00002648  0C 6D 00 01 CE EE          cmpi.w     #$1, -$3112(a5)
0000264E  6D 48                      blt.b      $2698
00002650  48 6D CF 00                pea.l      -$3100(a5)
00002654  2F 3C 00 9C 00 9E          move.l     #$9c009e, -(a7)
0000265A  2F 3C 00 BA 00 BC          move.l     #$ba00bc, -(a7)
00002660  A8 A7                      .byte      0xa8, 0xa7
00002662  48 6D CE F8                pea.l      -$3108(a5)
00002666  2F 3C 00 37 00 1E          move.l     #$37001e, -(a7)
0000266C  2F 3C 00 4B 00 32          move.l     #$4b0032, -(a7)
00002672  A8 A7                      .byte      0xa8, 0xa7
00002674  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002678  48 68 00 02                pea.l      $2(a0)
0000267C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002680  48 68 00 02                pea.l      $2(a0)
00002684  48 6D CF 00                pea.l      -$3100(a5)
00002688  48 6D CE F8                pea.l      -$3108(a5)
0000268C  42 67                      clr.w      -(a7)
0000268E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002692  2F 28 00 18                move.l     $18(a0), -(a7)
00002696  A8 EC                      .byte      0xa8, 0xec
00002698  0C 6D 00 01 CE EC          cmpi.w     #$1, -$3114(a5)
0000269E  6D 48                      blt.b      $26e8
000026A0  48 6D CF 00                pea.l      -$3100(a5)
000026A4  2F 3C 00 9C 00 9E          move.l     #$9c009e, -(a7)
000026AA  2F 3C 00 BA 00 BC          move.l     #$ba00bc, -(a7)
000026B0  A8 A7                      .byte      0xa8, 0xa7
000026B2  48 6D CE F8                pea.l      -$3108(a5)
000026B6  2F 3C 00 37 01 D2          move.l     #$3701d2, -(a7)
000026BC  2F 3C 00 4B 01 E6          move.l     #$4b01e6, -(a7)
000026C2  A8 A7                      .byte      0xa8, 0xa7
000026C4  20 6D D3 EE                movea.l    -$2c12(a5), a0
000026C8  48 68 00 02                pea.l      $2(a0)
000026CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000026D0  48 68 00 02                pea.l      $2(a0)
000026D4  48 6D CF 00                pea.l      -$3100(a5)
000026D8  48 6D CE F8                pea.l      -$3108(a5)
000026DC  42 67                      clr.w      -(a7)
000026DE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000026E2  2F 28 00 18                move.l     $18(a0), -(a7)
000026E6  A8 EC                      .byte      0xa8, 0xec
000026E8  1B 7C 00 01 FF F4          move.b     #$1, -$c(a5)
000026EE  42 2D D4 0E                clr.b      -$2bf2(a5)
000026F2  3B 7C 00 06 D3 DC          move.w     #$6, -$2c24(a5)
000026F8  3B 7C 00 06 D3 DA          move.w     #$6, -$2c26(a5)
000026FE  26 1F                      move.l     (a7)+, d3
00002700  4E 5E                      unlk       a6
00002702  4E 75                      rts

; MacsBug symbol trailer for DoGame: 86 44 6F 47 61 6D 65

MoveEverything: ; 0000270E..00002C82
0000270E  4E 56 00 00                link.w     a6, #$0
00002712  4A 6D FF F6                tst.w      -$a(a5)
00002716  6F 06                      ble.b      $271e
00002718  4A 6D FF FA                tst.w      -$6(a5)
0000271C  6E 08                      bgt.b      $2726
0000271E  42 2D FF DC                clr.b      -$24(a5)
00002722  42 2D FF DA                clr.b      -$26(a5)
00002726  0C 6D 00 0D D4 1C          cmpi.w     #$d, -$2be4(a5)
0000272C  67 00 00 8E                beq.w      $27bc
00002730  55 4F                      subq.w     #$2, a7
00002732  3F 3C FF FF                move.w     #$ffff, -(a7)
00002736  48 6D D7 5E                pea.l      -$28a2(a5)
0000273A  A9 70                      .byte      0xa9, 0x70
0000273C  10 1F                      move.b     (a7)+, d0
0000273E  0C 6D 00 03 D7 5E          cmpi.w     #$3, -$28a2(a5)
00002744  66 76                      bne.b      $27bc
00002746  20 2D D7 60                move.l     -$28a0(a5), d0
0000274A  02 80 00 00 00 FF          andi.l     #$ff, d0
00002750  1B 40 D7 5D                move.b     d0, -$28a3(a5)
00002754  0C 2D 00 71 D7 5D          cmpi.b     #$71, -$28a3(a5)
0000275A  66 12                      bne.b      $276e
0000275C  30 2D D7 6C                move.w     -$2894(a5), d0
00002760  02 80 00 00 01 00          andi.l     #$100, d0
00002766  67 06                      beq.b      $276e
00002768  1B 7C 00 01 CF 0E          move.b     #$1, -$30f2(a5)
0000276E  0C 2D 00 70 D7 5D          cmpi.b     #$70, -$28a3(a5)
00002774  66 1A                      bne.b      $2790
00002776  30 2D D7 6C                move.w     -$2894(a5), d0
0000277A  02 80 00 00 01 00          andi.l     #$100, d0
00002780  67 0E                      beq.b      $2790
00002782  10 2D CF 0C                move.b     -$30f4(a5), d0
00002786  57 C0                      seq.b      d0
00002788  44 00                      neg.b      d0
0000278A  48 80                      ext.w      d0
0000278C  1B 40 CF 0C                move.b     d0, -$30f4(a5)
00002790  0C 2D 00 01 CE DA          cmpi.b     #$1, -$3126(a5)
00002796  66 1E                      bne.b      $27b6
00002798  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
0000279E  6D 06                      blt.b      $27a6
000027A0  4E B9 00 00 01 08          jsr        $108.l
000027A6  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
000027AC  6D 0E                      blt.b      $27bc
000027AE  4E B9 00 00 01 10          jsr        $110.l
000027B4  60 06                      bra.b      $27bc
000027B6  4E B9 00 00 04 A0          jsr        $4a0.l
000027BC  0C 2D 00 01 FF F4          cmpi.b     #$1, -$c(a5)
000027C2  66 06                      bne.b      $27ca
000027C4  4E B9 00 00 05 38          jsr        $538.l
000027CA  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
000027D0  66 00 00 A8                bne.w      $287a
000027D4  4A 2D D4 04                tst.b      -$2bfc(a5)
000027D8  66 00 00 A0                bne.w      $287a
000027DC  59 4F                      subq.w     #$4, a7
000027DE  A9 75                      .byte      0xa9, 0x75
000027E0  20 1F                      move.l     (a7)+, d0
000027E2  90 AD D7 C2                sub.l      -$283e(a5), d0
000027E6  0C 80 00 00 01 2C          cmpi.l     #$12c, d0
000027EC  63 00 00 8C                bls.w      $287a
000027F0  4A 2D FF F2                tst.b      -$e(a5)
000027F4  66 00 00 84                bne.w      $287a
000027F8  4A 2D D7 7E                tst.b      -$2882(a5)
000027FC  66 7C                      bne.b      $287a
000027FE  4A 2D CF E6                tst.b      -$301a(a5)
00002802  66 76                      bne.b      $287a
00002804  2F 2D DE AA                move.l     -$2156(a5), -(a7)
00002808  4E B9 00 00 00 90          jsr        $90.l
0000280E  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
00002814  3F 3C 0B B8                move.w     #$bb8, -(a7)
00002818  A8 1F                      .byte      0xa8, 0x1f
0000281A  20 5F                      movea.l    (a7)+, a0
0000281C  2B 48 DE CE                move.l     a0, -$2132(a5)
00002820  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
00002826  48 6D D7 FC                pea.l      -$2804(a5)
0000282A  48 6D D3 F6                pea.l      -$2c0a(a5)
0000282E  30 2D FF E0                move.w     -$20(a5), d0
00002832  06 40 03 E7                addi.w     #$3e7, d0
00002836  3F 00                      move.w     d0, -(a7)
00002838  4E B9 00 00 7E E0          jsr        $7ee0.l
0000283E  48 6D D7 FC                pea.l      -$2804(a5)
00002842  48 6D D3 EA                pea.l      -$2c16(a5)
00002846  30 2D FF E0                move.w     -$20(a5), d0
0000284A  06 40 05 DB                addi.w     #$5db, d0
0000284E  3F 00                      move.w     d0, -(a7)
00002850  4E B9 00 00 7E E0          jsr        $7ee0.l
00002856  48 6D DC 42                pea.l      -$23be(a5)
0000285A  48 78 00 10                pea.l      $10.w
0000285E  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
00002864  A8 A7                      .byte      0xa8, 0xa7
00002866  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
0000286C  3B 7C 00 18 D8 0C          move.w     #$18, -$27f4(a5)
00002872  42 2D D7 C7                clr.b      -$2839(a5)
00002876  4F EF 00 14                lea.l      $14(a7), a7
0000287A  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
00002880  66 00 00 A8                bne.w      $292a
00002884  4A 2D D4 02                tst.b      -$2bfe(a5)
00002888  66 00 00 A0                bne.w      $292a
0000288C  59 4F                      subq.w     #$4, a7
0000288E  A9 75                      .byte      0xa9, 0x75
00002890  20 1F                      move.l     (a7)+, d0
00002892  90 AD D7 BC                sub.l      -$2844(a5), d0
00002896  0C 80 00 00 01 2C          cmpi.l     #$12c, d0
0000289C  63 00 00 8C                bls.w      $292a
000028A0  4A 2D FF F2                tst.b      -$e(a5)
000028A4  66 00 00 84                bne.w      $292a
000028A8  4A 2D D7 80                tst.b      -$2880(a5)
000028AC  66 7C                      bne.b      $292a
000028AE  4A 2D CF AA                tst.b      -$3056(a5)
000028B2  66 76                      bne.b      $292a
000028B4  2F 2D DE AA                move.l     -$2156(a5), -(a7)
000028B8  4E B9 00 00 00 98          jsr        $98.l
000028BE  2F 3C 73 6E 64 20          move.l     #$736e6420, -(a7)
000028C4  3F 3C 0B B8                move.w     #$bb8, -(a7)
000028C8  A8 1F                      .byte      0xa8, 0x1f
000028CA  20 5F                      movea.l    (a7)+, a0
000028CC  2B 48 DE CA                move.l     a0, -$2136(a5)
000028D0  3B 7C 00 01 FF E2          move.w     #$1, -$1e(a5)
000028D6  48 6D D7 FC                pea.l      -$2804(a5)
000028DA  48 6D D3 F2                pea.l      -$2c0e(a5)
000028DE  30 2D FF E2                move.w     -$1e(a5), d0
000028E2  06 40 07 CF                addi.w     #$7cf, d0
000028E6  3F 00                      move.w     d0, -(a7)
000028E8  4E B9 00 00 7E E0          jsr        $7ee0.l
000028EE  48 6D D7 FC                pea.l      -$2804(a5)
000028F2  48 6D D3 E6                pea.l      -$2c1a(a5)
000028F6  30 2D FF E2                move.w     -$1e(a5), d0
000028FA  06 40 09 C3                addi.w     #$9c3, d0
000028FE  3F 00                      move.w     d0, -(a7)
00002900  4E B9 00 00 7E E0          jsr        $7ee0.l
00002906  48 6D DC 1E                pea.l      -$23e2(a5)
0000290A  48 78 00 10                pea.l      $10.w
0000290E  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
00002914  A8 A7                      .byte      0xa8, 0xa7
00002916  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
0000291C  3B 7C 00 18 D8 08          move.w     #$18, -$27f8(a5)
00002922  42 2D D7 C1                clr.b      -$283f(a5)
00002926  4F EF 00 14                lea.l      $14(a7), a7
0000292A  4E B9 00 00 05 40          jsr        $540.l
00002930  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
00002936  66 68                      bne.b      $29a0
00002938  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
0000293E  67 08                      beq.b      $2948
00002940  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00002946  66 08                      bne.b      $2950
00002948  4E B9 00 00 05 80          jsr        $580.l
0000294E  60 56                      bra.b      $29a6
00002950  0C 6D 00 02 D7 36          cmpi.w     #$2, -$28ca(a5)
00002956  6C 08                      bge.b      $2960
00002958  4E B9 00 00 05 70          jsr        $570.l
0000295E  60 46                      bra.b      $29a6
00002960  0C 6D 00 02 D7 36          cmpi.w     #$2, -$28ca(a5)
00002966  6D 10                      blt.b      $2978
00002968  0C 6D 00 05 D7 36          cmpi.w     #$5, -$28ca(a5)
0000296E  6C 08                      bge.b      $2978
00002970  4E B9 00 00 05 78          jsr        $578.l
00002976  60 2E                      bra.b      $29a6
00002978  0C 6D 00 0B D7 36          cmpi.w     #$b, -$28ca(a5)
0000297E  66 08                      bne.b      $2988
00002980  4E B9 00 00 05 88          jsr        $588.l
00002986  60 1E                      bra.b      $29a6
00002988  0C 6D 00 0C D7 36          cmpi.w     #$c, -$28ca(a5)
0000298E  66 08                      bne.b      $2998
00002990  4E B9 00 00 05 90          jsr        $590.l
00002996  60 0E                      bra.b      $29a6
00002998  4E B9 00 00 05 80          jsr        $580.l
0000299E  60 06                      bra.b      $29a6
000029A0  4E B9 00 00 05 48          jsr        $548.l
000029A6  4A 6D FF F6                tst.w      -$a(a5)
000029AA  6D 06                      blt.b      $29b2
000029AC  4A 6D FF FA                tst.w      -$6(a5)
000029B0  6C 06                      bge.b      $29b8
000029B2  1B 7C 00 01 FF F2          move.b     #$1, -$e(a5)
000029B8  4A 2D FF F2                tst.b      -$e(a5)
000029BC  66 14                      bne.b      $29d2
000029BE  4E B9 00 00 05 28          jsr        $528.l
000029C4  0C 6D 00 3D D4 1C          cmpi.w     #$3d, -$2be4(a5)
000029CA  66 06                      bne.b      $29d2
000029CC  4E B9 00 00 05 30          jsr        $530.l
000029D2  4A 2D FF EE                tst.b      -$12(a5)
000029D6  66 54                      bne.b      $2a2c
000029D8  0C 2D 00 01 FF DA          cmpi.b     #$1, -$26(a5)
000029DE  66 4C                      bne.b      $2a2c
000029E0  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
000029E6  66 06                      bne.b      $29ee
000029E8  4E B9 00 00 04 E8          jsr        $4e8.l
000029EE  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
000029F4  66 06                      bne.b      $29fc
000029F6  4E B9 00 00 03 E0          jsr        $3e0.l
000029FC  0C 2D 00 01 D7 AA          cmpi.b     #$1, -$2856(a5)
00002A02  66 28                      bne.b      $2a2c
00002A04  30 2D FF E0                move.w     -$20(a5), d0
00002A08  55 40                      subq.w     #$2, d0
00002A0A  67 0A                      beq.b      $2a16
00002A0C  55 40                      subq.w     #$2, d0
00002A0E  67 0E                      beq.b      $2a1e
00002A10  59 40                      subq.w     #$4, d0
00002A12  67 12                      beq.b      $2a26
00002A14  60 16                      bra.b      $2a2c
00002A16  4E B9 00 00 03 78          jsr        $378.l
00002A1C  60 0E                      bra.b      $2a2c
00002A1E  4E B9 00 00 05 08          jsr        $508.l
00002A24  60 06                      bra.b      $2a2c
00002A26  4E B9 00 00 04 80          jsr        $480.l
00002A2C  0C 2D 00 01 D9 01          cmpi.b     #$1, -$26ff(a5)
00002A32  66 06                      bne.b      $2a3a
00002A34  4E B9 00 00 04 50          jsr        $450.l
00002A3A  0C 2D 00 01 D9 00          cmpi.b     #$1, -$2700(a5)
00002A40  66 06                      bne.b      $2a48
00002A42  4E B9 00 00 04 58          jsr        $458.l
00002A48  0C 2D 00 01 D8 FF          cmpi.b     #$1, -$2701(a5)
00002A4E  66 06                      bne.b      $2a56
00002A50  4E B9 00 00 04 60          jsr        $460.l
00002A56  0C 2D 00 01 D8 FE          cmpi.b     #$1, -$2702(a5)
00002A5C  66 06                      bne.b      $2a64
00002A5E  4E B9 00 00 04 68          jsr        $468.l
00002A64  0C 2D 00 01 D8 FD          cmpi.b     #$1, -$2703(a5)
00002A6A  66 06                      bne.b      $2a72
00002A6C  4E B9 00 00 04 70          jsr        $470.l
00002A72  0C 2D 00 01 D8 FC          cmpi.b     #$1, -$2704(a5)
00002A78  66 06                      bne.b      $2a80
00002A7A  4E B9 00 00 04 78          jsr        $478.l
00002A80  0C 2D 00 01 D7 5A          cmpi.b     #$1, -$28a6(a5)
00002A86  66 06                      bne.b      $2a8e
00002A88  4E B9 00 00 04 B0          jsr        $4b0.l
00002A8E  0C 2D 00 01 D7 58          cmpi.b     #$1, -$28a8(a5)
00002A94  66 06                      bne.b      $2a9c
00002A96  4E B9 00 00 04 C0          jsr        $4c0.l
00002A9C  0C 2D 00 01 D7 56          cmpi.b     #$1, -$28aa(a5)
00002AA2  66 06                      bne.b      $2aaa
00002AA4  4E B9 00 00 04 B8          jsr        $4b8.l
00002AAA  0C 2D 00 01 D7 54          cmpi.b     #$1, -$28ac(a5)
00002AB0  66 06                      bne.b      $2ab8
00002AB2  4E B9 00 00 04 C8          jsr        $4c8.l
00002AB8  0C 2D 00 01 CF 6E          cmpi.b     #$1, -$3092(a5)
00002ABE  66 06                      bne.b      $2ac6
00002AC0  4E B9 00 00 03 D0          jsr        $3d0.l
00002AC6  0C 2D 00 01 CF 6C          cmpi.b     #$1, -$3094(a5)
00002ACC  66 06                      bne.b      $2ad4
00002ACE  4E B9 00 00 03 D8          jsr        $3d8.l
00002AD4  0C 2D 00 01 CF 5E          cmpi.b     #$1, -$30a2(a5)
00002ADA  66 06                      bne.b      $2ae2
00002ADC  4E B9 00 00 03 A8          jsr        $3a8.l
00002AE2  0C 2D 00 01 CF 5C          cmpi.b     #$1, -$30a4(a5)
00002AE8  66 06                      bne.b      $2af0
00002AEA  4E B9 00 00 03 B0          jsr        $3b0.l
00002AF0  0C 2D 00 01 CF 5A          cmpi.b     #$1, -$30a6(a5)
00002AF6  66 06                      bne.b      $2afe
00002AF8  4E B9 00 00 03 B8          jsr        $3b8.l
00002AFE  0C 2D 00 01 CF 58          cmpi.b     #$1, -$30a8(a5)
00002B04  66 06                      bne.b      $2b0c
00002B06  4E B9 00 00 03 C0          jsr        $3c0.l
00002B0C  0C 2D 00 01 D0 62          cmpi.b     #$1, -$2f9e(a5)
00002B12  66 06                      bne.b      $2b1a
00002B14  4E B9 00 00 04 D8          jsr        $4d8.l
00002B1A  0C 2D 00 01 D0 60          cmpi.b     #$1, -$2fa0(a5)
00002B20  66 06                      bne.b      $2b28
00002B22  4E B9 00 00 04 E0          jsr        $4e0.l
00002B28  0C 2D 00 01 CF EA          cmpi.b     #$1, -$3016(a5)
00002B2E  66 06                      bne.b      $2b36
00002B30  4E B9 00 00 04 18          jsr        $418.l
00002B36  0C 2D 00 01 CF E8          cmpi.b     #$1, -$3018(a5)
00002B3C  66 06                      bne.b      $2b44
00002B3E  4E B9 00 00 04 20          jsr        $420.l
00002B44  0C 2D 00 01 CF E4          cmpi.b     #$1, -$301c(a5)
00002B4A  66 06                      bne.b      $2b52
00002B4C  4E B9 00 00 04 00          jsr        $400.l
00002B52  0C 2D 00 01 CF A8          cmpi.b     #$1, -$3058(a5)
00002B58  66 06                      bne.b      $2b60
00002B5A  4E B9 00 00 04 08          jsr        $408.l
00002B60  0C 2D 00 01 D0 0C          cmpi.b     #$1, -$2ff4(a5)
00002B66  66 06                      bne.b      $2b6e
00002B68  4E B9 00 00 04 28          jsr        $428.l
00002B6E  0C 2D 00 01 CF EC          cmpi.b     #$1, -$3014(a5)
00002B74  66 06                      bne.b      $2b7c
00002B76  4E B9 00 00 04 30          jsr        $430.l
00002B7C  0C 2D 00 01 D4 04          cmpi.b     #$1, -$2bfc(a5)
00002B82  66 4C                      bne.b      $2bd0
00002B84  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00002B8A  66 06                      bne.b      $2b92
00002B8C  4E B9 00 00 04 F8          jsr        $4f8.l
00002B92  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
00002B98  66 06                      bne.b      $2ba0
00002B9A  4E B9 00 00 03 F0          jsr        $3f0.l
00002BA0  0C 2D 00 01 D7 AA          cmpi.b     #$1, -$2856(a5)
00002BA6  66 28                      bne.b      $2bd0
00002BA8  30 2D FF E0                move.w     -$20(a5), d0
00002BAC  55 40                      subq.w     #$2, d0
00002BAE  67 0A                      beq.b      $2bba
00002BB0  55 40                      subq.w     #$2, d0
00002BB2  67 0E                      beq.b      $2bc2
00002BB4  59 40                      subq.w     #$4, d0
00002BB6  67 12                      beq.b      $2bca
00002BB8  60 16                      bra.b      $2bd0
00002BBA  4E B9 00 00 03 88          jsr        $388.l
00002BC0  60 0E                      bra.b      $2bd0
00002BC2  4E B9 00 00 05 18          jsr        $518.l
00002BC8  60 06                      bra.b      $2bd0
00002BCA  4E B9 00 00 04 90          jsr        $490.l
00002BD0  4A 2D FF F0                tst.b      -$10(a5)
00002BD4  66 54                      bne.b      $2c2a
00002BD6  0C 2D 00 01 FF DC          cmpi.b     #$1, -$24(a5)
00002BDC  66 4C                      bne.b      $2c2a
00002BDE  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00002BE4  66 06                      bne.b      $2bec
00002BE6  4E B9 00 00 04 F0          jsr        $4f0.l
00002BEC  0C 2D 00 01 D7 A4          cmpi.b     #$1, -$285c(a5)
00002BF2  66 06                      bne.b      $2bfa
00002BF4  4E B9 00 00 03 E8          jsr        $3e8.l
00002BFA  0C 2D 00 01 D7 A2          cmpi.b     #$1, -$285e(a5)
00002C00  66 28                      bne.b      $2c2a
00002C02  30 2D FF E2                move.w     -$1e(a5), d0
00002C06  55 40                      subq.w     #$2, d0
00002C08  67 0A                      beq.b      $2c14
00002C0A  55 40                      subq.w     #$2, d0
00002C0C  67 0E                      beq.b      $2c1c
00002C0E  59 40                      subq.w     #$4, d0
00002C10  67 12                      beq.b      $2c24
00002C12  60 16                      bra.b      $2c2a
00002C14  4E B9 00 00 03 80          jsr        $380.l
00002C1A  60 0E                      bra.b      $2c2a
00002C1C  4E B9 00 00 05 10          jsr        $510.l
00002C22  60 06                      bra.b      $2c2a
00002C24  4E B9 00 00 04 88          jsr        $488.l
00002C2A  0C 2D 00 01 D4 02          cmpi.b     #$1, -$2bfe(a5)
00002C30  66 4C                      bne.b      $2c7e
00002C32  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00002C38  66 06                      bne.b      $2c40
00002C3A  4E B9 00 00 05 00          jsr        $500.l
00002C40  0C 2D 00 01 D7 A4          cmpi.b     #$1, -$285c(a5)
00002C46  66 06                      bne.b      $2c4e
00002C48  4E B9 00 00 03 F8          jsr        $3f8.l
00002C4E  0C 2D 00 01 D7 A2          cmpi.b     #$1, -$285e(a5)
00002C54  66 28                      bne.b      $2c7e
00002C56  30 2D FF E2                move.w     -$1e(a5), d0
00002C5A  55 40                      subq.w     #$2, d0
00002C5C  67 0A                      beq.b      $2c68
00002C5E  55 40                      subq.w     #$2, d0
00002C60  67 0E                      beq.b      $2c70
00002C62  59 40                      subq.w     #$4, d0
00002C64  67 12                      beq.b      $2c78
00002C66  60 16                      bra.b      $2c7e
00002C68  4E B9 00 00 03 90          jsr        $390.l
00002C6E  60 0E                      bra.b      $2c7e
00002C70  4E B9 00 00 05 20          jsr        $520.l
00002C76  60 06                      bra.b      $2c7e
00002C78  4E B9 00 00 04 98          jsr        $498.l
00002C7E  4E 5E                      unlk       a6
00002C80  4E 75                      rts

; MacsBug symbol trailer for MoveEverything: 8E 4D 6F 76 65 45 76 65 72 79 74 68 69 6E 67

ShowEverything: ; 00002C94..00004986
00002C94  4E 56 FF F8                link.w     a6, #$fff8
00002C98  0C 2D 00 01 FF F4          cmpi.b     #$1, -$c(a5)
00002C9E  66 2E                      bne.b      $2cce
00002CA0  0C 2D 00 01 D4 0E          cmpi.b     #$1, -$2bf2(a5)
00002CA6  66 26                      bne.b      $2cce
00002CA8  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002CAC  48 68 00 02                pea.l      $2(a0)
00002CB0  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002CB4  48 68 00 02                pea.l      $2(a0)
00002CB8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002CBC  48 68 00 02                pea.l      $2(a0)
00002CC0  48 6D D6 EE                pea.l      -$2912(a5)
00002CC4  48 6D D6 EE                pea.l      -$2912(a5)
00002CC8  48 6D D6 E6                pea.l      -$291a(a5)
00002CCC  A8 17                      .byte      0xa8, 0x17
00002CCE  59 4F                      subq.w     #$4, a7
00002CD0  A9 75                      .byte      0xa9, 0x75
00002CD2  20 1F                      move.l     (a7)+, d0
00002CD4  90 AD D0 06                sub.l      -$2ffa(a5), d0
00002CD8  72 64                      moveq      #$64, d1
00002CDA  B0 81                      cmp.l      d1, d0
00002CDC  63 0C                      bls.b      $2cea
00002CDE  0C 2D 00 01 D0 0A          cmpi.b     #$1, -$2ff6(a5)
00002CE4  66 04                      bne.b      $2cea
00002CE6  42 2D D0 0A                clr.b      -$2ff6(a5)
00002CEA  4A 2D FF F4                tst.b      -$c(a5)
00002CEE  66 00 01 C0                bne.w      $2eb0
00002CF2  0C 6D 00 06 D4 1C          cmpi.w     #$6, -$2be4(a5)
00002CF8  67 00 01 B6                beq.w      $2eb0
00002CFC  4A 2D D0 0A                tst.b      -$2ff6(a5)
00002D00  66 00 01 AE                bne.w      $2eb0
00002D04  0C 6D 00 01 D4 1C          cmpi.w     #$1, -$2be4(a5)
00002D0A  67 08                      beq.b      $2d14
00002D0C  0C 6D 00 36 D4 1C          cmpi.w     #$36, -$2be4(a5)
00002D12  66 2A                      bne.b      $2d3e
00002D14  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002D18  48 68 00 02                pea.l      $2(a0)
00002D1C  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002D20  48 68 00 02                pea.l      $2(a0)
00002D24  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002D28  48 68 00 02                pea.l      $2(a0)
00002D2C  48 6D DC CE                pea.l      -$2332(a5)
00002D30  48 6D DC CE                pea.l      -$2332(a5)
00002D34  48 6D DC AE                pea.l      -$2352(a5)
00002D38  A8 17                      .byte      0xa8, 0x17
00002D3A  60 00 01 46                bra.w      $2e82
00002D3E  0C 6D 00 02 D4 1C          cmpi.w     #$2, -$2be4(a5)
00002D44  67 08                      beq.b      $2d4e
00002D46  0C 6D 00 37 D4 1C          cmpi.w     #$37, -$2be4(a5)
00002D4C  66 2A                      bne.b      $2d78
00002D4E  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002D52  48 68 00 02                pea.l      $2(a0)
00002D56  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002D5A  48 68 00 02                pea.l      $2(a0)
00002D5E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002D62  48 68 00 02                pea.l      $2(a0)
00002D66  48 6D DC C6                pea.l      -$233a(a5)
00002D6A  48 6D DC C6                pea.l      -$233a(a5)
00002D6E  48 6D DC AE                pea.l      -$2352(a5)
00002D72  A8 17                      .byte      0xa8, 0x17
00002D74  60 00 01 0C                bra.w      $2e82
00002D78  0C 6D 00 03 D4 1C          cmpi.w     #$3, -$2be4(a5)
00002D7E  67 08                      beq.b      $2d88
00002D80  0C 6D 00 38 D4 1C          cmpi.w     #$38, -$2be4(a5)
00002D86  66 2A                      bne.b      $2db2
00002D88  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002D8C  48 68 00 02                pea.l      $2(a0)
00002D90  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002D94  48 68 00 02                pea.l      $2(a0)
00002D98  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002D9C  48 68 00 02                pea.l      $2(a0)
00002DA0  48 6D DC D6                pea.l      -$232a(a5)
00002DA4  48 6D DC D6                pea.l      -$232a(a5)
00002DA8  48 6D DC AE                pea.l      -$2352(a5)
00002DAC  A8 17                      .byte      0xa8, 0x17
00002DAE  60 00 00 D2                bra.w      $2e82
00002DB2  0C 6D 00 04 D4 1C          cmpi.w     #$4, -$2be4(a5)
00002DB8  67 08                      beq.b      $2dc2
00002DBA  0C 6D 00 39 D4 1C          cmpi.w     #$39, -$2be4(a5)
00002DC0  66 2A                      bne.b      $2dec
00002DC2  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002DC6  48 68 00 02                pea.l      $2(a0)
00002DCA  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002DCE  48 68 00 02                pea.l      $2(a0)
00002DD2  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002DD6  48 68 00 02                pea.l      $2(a0)
00002DDA  48 6D DC EE                pea.l      -$2312(a5)
00002DDE  48 6D DC BE                pea.l      -$2342(a5)
00002DE2  48 6D DC AE                pea.l      -$2352(a5)
00002DE6  A8 17                      .byte      0xa8, 0x17
00002DE8  60 00 00 98                bra.w      $2e82
00002DEC  0C 6D 00 05 D4 1C          cmpi.w     #$5, -$2be4(a5)
00002DF2  67 08                      beq.b      $2dfc
00002DF4  0C 6D 00 3A D4 1C          cmpi.w     #$3a, -$2be4(a5)
00002DFA  66 28                      bne.b      $2e24
00002DFC  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002E00  48 68 00 02                pea.l      $2(a0)
00002E04  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002E08  48 68 00 02                pea.l      $2(a0)
00002E0C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002E10  48 68 00 02                pea.l      $2(a0)
00002E14  48 6D DC DE                pea.l      -$2322(a5)
00002E18  48 6D DC BE                pea.l      -$2342(a5)
00002E1C  48 6D DC AE                pea.l      -$2352(a5)
00002E20  A8 17                      .byte      0xa8, 0x17
00002E22  60 5E                      bra.b      $2e82
00002E24  0C 6D 00 32 D4 1C          cmpi.w     #$32, -$2be4(a5)
00002E2A  67 08                      beq.b      $2e34
00002E2C  0C 6D 00 3B D4 1C          cmpi.w     #$3b, -$2be4(a5)
00002E32  66 28                      bne.b      $2e5c
00002E34  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002E38  48 68 00 02                pea.l      $2(a0)
00002E3C  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002E40  48 68 00 02                pea.l      $2(a0)
00002E44  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002E48  48 68 00 02                pea.l      $2(a0)
00002E4C  48 6D DC E6                pea.l      -$231a(a5)
00002E50  48 6D DC BE                pea.l      -$2342(a5)
00002E54  48 6D DC AE                pea.l      -$2352(a5)
00002E58  A8 17                      .byte      0xa8, 0x17
00002E5A  60 26                      bra.b      $2e82
00002E5C  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002E60  48 68 00 02                pea.l      $2(a0)
00002E64  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002E68  48 68 00 02                pea.l      $2(a0)
00002E6C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002E70  48 68 00 02                pea.l      $2(a0)
00002E74  48 6D DC BE                pea.l      -$2342(a5)
00002E78  48 6D DC BE                pea.l      -$2342(a5)
00002E7C  48 6D DC AE                pea.l      -$2352(a5)
00002E80  A8 17                      .byte      0xa8, 0x17
00002E82  0C 6D 00 3D D4 1C          cmpi.w     #$3d, -$2be4(a5)
00002E88  66 26                      bne.b      $2eb0
00002E8A  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002E8E  48 68 00 02                pea.l      $2(a0)
00002E92  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00002E96  48 68 00 02                pea.l      $2(a0)
00002E9A  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002E9E  48 68 00 02                pea.l      $2(a0)
00002EA2  48 6D DC BE                pea.l      -$2342(a5)
00002EA6  48 6D DC BE                pea.l      -$2342(a5)
00002EAA  48 6D DD 12                pea.l      -$22ee(a5)
00002EAE  A8 17                      .byte      0xa8, 0x17
00002EB0  4A 6D FF F6                tst.w      -$a(a5)
00002EB4  6F 06                      ble.b      $2ebc
00002EB6  4A 6D FF FA                tst.w      -$6(a5)
00002EBA  6E 48                      bgt.b      $2f04
00002EBC  20 6D D3 FA                movea.l    -$2c06(a5), a0
00002EC0  48 68 00 02                pea.l      $2(a0)
00002EC4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002EC8  48 68 00 02                pea.l      $2(a0)
00002ECC  48 6D DC AE                pea.l      -$2352(a5)
00002ED0  48 6D DC AE                pea.l      -$2352(a5)
00002ED4  42 67                      clr.w      -(a7)
00002ED6  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002EDA  2F 28 00 18                move.l     $18(a0), -(a7)
00002EDE  A8 EC                      .byte      0xa8, 0xec
00002EE0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00002EE4  48 68 00 02                pea.l      $2(a0)
00002EE8  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002EEC  48 68 00 02                pea.l      $2(a0)
00002EF0  48 6D DC AE                pea.l      -$2352(a5)
00002EF4  48 6D DC AE                pea.l      -$2352(a5)
00002EF8  42 67                      clr.w      -(a7)
00002EFA  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002EFE  2F 28 00 18                move.l     $18(a0), -(a7)
00002F02  A8 EC                      .byte      0xa8, 0xec
00002F04  30 2D FF F8                move.w     -$8(a5), d0
00002F08  90 6D FF F6                sub.w      -$a(a5), d0
00002F0C  67 34                      beq.b      $2f42
00002F0E  55 6D D4 70                subq.w     #$2, -$2b90(a5)
00002F12  0C 6D 00 3F D4 1C          cmpi.w     #$3f, -$2be4(a5)
00002F18  67 24                      beq.b      $2f3e
00002F1A  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002F1E  48 68 00 02                pea.l      $2(a0)
00002F22  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002F26  48 68 00 02                pea.l      $2(a0)
00002F2A  48 6D D4 76                pea.l      -$2b8a(a5)
00002F2E  48 6D D4 6E                pea.l      -$2b92(a5)
00002F32  42 67                      clr.w      -(a7)
00002F34  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002F38  2F 28 00 18                move.l     $18(a0), -(a7)
00002F3C  A8 EC                      .byte      0xa8, 0xec
00002F3E  53 6D FF F8                subq.w     #$1, -$8(a5)
00002F42  30 2D FF FC                move.w     -$4(a5), d0
00002F46  90 6D FF FA                sub.w      -$6(a5), d0
00002F4A  67 34                      beq.b      $2f80
00002F4C  54 6D D4 6C                addq.w     #$2, -$2b94(a5)
00002F50  0C 6D 00 3F D4 1C          cmpi.w     #$3f, -$2be4(a5)
00002F56  67 24                      beq.b      $2f7c
00002F58  20 6D D3 EE                movea.l    -$2c12(a5), a0
00002F5C  48 68 00 02                pea.l      $2(a0)
00002F60  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002F64  48 68 00 02                pea.l      $2(a0)
00002F68  48 6D D4 76                pea.l      -$2b8a(a5)
00002F6C  48 6D D4 66                pea.l      -$2b9a(a5)
00002F70  42 67                      clr.w      -(a7)
00002F72  20 6D D3 DE                movea.l    -$2c22(a5), a0
00002F76  2F 28 00 18                move.l     $18(a0), -(a7)
00002F7A  A8 EC                      .byte      0xa8, 0xec
00002F7C  53 6D FF FC                subq.w     #$1, -$4(a5)
00002F80  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00002F86  66 26                      bne.b      $2fae
00002F88  59 4F                      subq.w     #$4, a7
00002F8A  A9 75                      .byte      0xa9, 0x75
00002F8C  20 1F                      move.l     (a7)+, d0
00002F8E  90 AD D7 D4                sub.l      -$282c(a5), d0
00002F92  72 3C                      moveq      #$3c, d1
00002F94  B0 81                      cmp.l      d1, d0
00002F96  63 16                      bls.b      $2fae
00002F98  2F 2D DE A6                move.l     -$215a(a5), -(a7)
00002F9C  4E B9 00 00 00 90          jsr        $90.l
00002FA2  42 2D D7 CE                clr.b      -$2832(a5)
00002FA6  1B 7C 00 01 D7 8C          move.b     #$1, -$2874(a5)
00002FAC  58 4F                      addq.w     #$4, a7
00002FAE  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00002FB4  66 26                      bne.b      $2fdc
00002FB6  59 4F                      subq.w     #$4, a7
00002FB8  A9 75                      .byte      0xa9, 0x75
00002FBA  20 1F                      move.l     (a7)+, d0
00002FBC  90 AD D7 D0                sub.l      -$2830(a5), d0
00002FC0  72 3C                      moveq      #$3c, d1
00002FC2  B0 81                      cmp.l      d1, d0
00002FC4  63 16                      bls.b      $2fdc
00002FC6  2F 2D DE A6                move.l     -$215a(a5), -(a7)
00002FCA  4E B9 00 00 00 98          jsr        $98.l
00002FD0  42 2D D7 CC                clr.b      -$2834(a5)
00002FD4  1B 7C 00 01 D7 8A          move.b     #$1, -$2876(a5)
00002FDA  58 4F                      addq.w     #$4, a7
00002FDC  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00002FE2  67 0A                      beq.b      $2fee
00002FE4  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00002FEA  66 00 00 DE                bne.w      $30ca
00002FEE  59 4F                      subq.w     #$4, a7
00002FF0  A9 75                      .byte      0xa9, 0x75
00002FF2  20 1F                      move.l     (a7)+, d0
00002FF4  72 05                      moveq      #$5, d1
00002FF6  4E B9 00 00 04 BE          jsr        $4be.l
00002FFC  4A 80                      tst.l      d0
00002FFE  66 04                      bne.b      $3004
00003000  52 6D FF D6                addq.w     #$1, -$2a(a5)
00003004  0C 6D 00 07 FF D6          cmpi.w     #$7, -$2a(a5)
0000300A  6F 06                      ble.b      $3012
0000300C  3B 7C 00 01 FF D6          move.w     #$1, -$2a(a5)
00003012  30 2D FF D6                move.w     -$2a(a5), d0
00003016  0C 40 00 07                cmpi.w     #$7, d0
0000301A  62 36                      bhi.b      $3052
0000301C  D0 40                      add.w      d0, d0
0000301E  30 3B 00 06                move.w     $3026(pc, d0.w), d0
00003022  4E FB 00 02                jmp        $3026(pc, d0.w)
00003026  00 2C 00 10 00 16          ori.b      #$10, $16(a4)
0000302C  00 1E 00 26                ori.b      #$26, (a6)+
00003030  00 10 00 10                ori.b      #$10, (a0)
00003034  00 10 42 6D                ori.b      #$6d, (a0)
00003038  D7 D8                      adda.l     (a0)+, a3
0000303A  60 16                      bra.b      $3052
0000303C  3B 7C 00 01 D7 D8          move.w     #$1, -$2828(a5)
00003042  60 0E                      bra.b      $3052
00003044  3B 7C 00 02 D7 D8          move.w     #$2, -$2828(a5)
0000304A  60 06                      bra.b      $3052
0000304C  3B 7C 00 03 D7 D8          move.w     #$3, -$2828(a5)
00003052  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00003058  66 34                      bne.b      $308e
0000305A  20 6D D3 F6                movea.l    -$2c0a(a5), a0
0000305E  48 68 00 02                pea.l      $2(a0)
00003062  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003066  48 68 00 02                pea.l      $2(a0)
0000306A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000306E  48 68 00 02                pea.l      $2(a0)
00003072  30 6D D7 D8                movea.w    -$2828(a5), a0
00003076  20 08                      move.l     a0, d0
00003078  E7 88                      lsl.l      #$3, d0
0000307A  41 ED DA 16                lea.l      -$25ea(a5), a0
0000307E  D1 C0                      adda.l     d0, a0
00003080  48 68 00 10                pea.l      $10(a0)
00003084  48 6D DA 26                pea.l      -$25da(a5)
00003088  48 6D DA 16                pea.l      -$25ea(a5)
0000308C  A8 17                      .byte      0xa8, 0x17
0000308E  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
00003094  66 34                      bne.b      $30ca
00003096  20 6D D3 F2                movea.l    -$2c0e(a5), a0
0000309A  48 68 00 02                pea.l      $2(a0)
0000309E  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000030A2  48 68 00 02                pea.l      $2(a0)
000030A6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000030AA  48 68 00 02                pea.l      $2(a0)
000030AE  30 6D D7 D8                movea.w    -$2828(a5), a0
000030B2  20 08                      move.l     a0, d0
000030B4  E7 88                      lsl.l      #$3, d0
000030B6  41 ED D9 DA                lea.l      -$2626(a5), a0
000030BA  D1 C0                      adda.l     d0, a0
000030BC  48 68 00 10                pea.l      $10(a0)
000030C0  48 6D D9 EA                pea.l      -$2616(a5)
000030C4  48 6D D9 DA                pea.l      -$2626(a5)
000030C8  A8 17                      .byte      0xa8, 0x17
000030CA  0C 2D 00 01 D9 01          cmpi.b     #$1, -$26ff(a5)
000030D0  66 26                      bne.b      $30f8
000030D2  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000030D6  48 68 00 02                pea.l      $2(a0)
000030DA  20 6D D3 EA                movea.l    -$2c16(a5), a0
000030DE  48 68 00 02                pea.l      $2(a0)
000030E2  20 6D D3 FE                movea.l    -$2c02(a5), a0
000030E6  48 68 00 02                pea.l      $2(a0)
000030EA  48 6D D9 7E                pea.l      -$2682(a5)
000030EE  48 6D D9 7E                pea.l      -$2682(a5)
000030F2  48 6D D9 6E                pea.l      -$2692(a5)
000030F6  A8 17                      .byte      0xa8, 0x17
000030F8  0C 2D 00 01 D9 00          cmpi.b     #$1, -$2700(a5)
000030FE  66 26                      bne.b      $3126
00003100  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003104  48 68 00 02                pea.l      $2(a0)
00003108  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000310C  48 68 00 02                pea.l      $2(a0)
00003110  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003114  48 68 00 02                pea.l      $2(a0)
00003118  48 6D D9 A2                pea.l      -$265e(a5)
0000311C  48 6D D9 A2                pea.l      -$265e(a5)
00003120  48 6D D9 92                pea.l      -$266e(a5)
00003124  A8 17                      .byte      0xa8, 0x17
00003126  0C 2D 00 01 D8 FF          cmpi.b     #$1, -$2701(a5)
0000312C  66 26                      bne.b      $3154
0000312E  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003132  48 68 00 02                pea.l      $2(a0)
00003136  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000313A  48 68 00 02                pea.l      $2(a0)
0000313E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003142  48 68 00 02                pea.l      $2(a0)
00003146  48 6D D9 C6                pea.l      -$263a(a5)
0000314A  48 6D D9 C6                pea.l      -$263a(a5)
0000314E  48 6D D9 B6                pea.l      -$264a(a5)
00003152  A8 17                      .byte      0xa8, 0x17
00003154  0C 2D 00 01 D8 FE          cmpi.b     #$1, -$2702(a5)
0000315A  66 26                      bne.b      $3182
0000315C  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003160  48 68 00 02                pea.l      $2(a0)
00003164  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003168  48 68 00 02                pea.l      $2(a0)
0000316C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003170  48 68 00 02                pea.l      $2(a0)
00003174  48 6D D9 12                pea.l      -$26ee(a5)
00003178  48 6D D9 12                pea.l      -$26ee(a5)
0000317C  48 6D D9 02                pea.l      -$26fe(a5)
00003180  A8 17                      .byte      0xa8, 0x17
00003182  0C 2D 00 01 D8 FD          cmpi.b     #$1, -$2703(a5)
00003188  66 26                      bne.b      $31b0
0000318A  20 6D D3 F2                movea.l    -$2c0e(a5), a0
0000318E  48 68 00 02                pea.l      $2(a0)
00003192  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003196  48 68 00 02                pea.l      $2(a0)
0000319A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000319E  48 68 00 02                pea.l      $2(a0)
000031A2  48 6D D9 36                pea.l      -$26ca(a5)
000031A6  48 6D D9 36                pea.l      -$26ca(a5)
000031AA  48 6D D9 26                pea.l      -$26da(a5)
000031AE  A8 17                      .byte      0xa8, 0x17
000031B0  0C 2D 00 01 D8 FC          cmpi.b     #$1, -$2704(a5)
000031B6  66 26                      bne.b      $31de
000031B8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000031BC  48 68 00 02                pea.l      $2(a0)
000031C0  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000031C4  48 68 00 02                pea.l      $2(a0)
000031C8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000031CC  48 68 00 02                pea.l      $2(a0)
000031D0  48 6D D9 5A                pea.l      -$26a6(a5)
000031D4  48 6D D9 5A                pea.l      -$26a6(a5)
000031D8  48 6D D9 4A                pea.l      -$26b6(a5)
000031DC  A8 17                      .byte      0xa8, 0x17
000031DE  0C 2D 00 01 D7 5A          cmpi.b     #$1, -$28a6(a5)
000031E4  66 26                      bne.b      $320c
000031E6  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000031EA  48 68 00 02                pea.l      $2(a0)
000031EE  20 6D D3 EA                movea.l    -$2c16(a5), a0
000031F2  48 68 00 02                pea.l      $2(a0)
000031F6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000031FA  48 68 00 02                pea.l      $2(a0)
000031FE  48 6D DB D6                pea.l      -$242a(a5)
00003202  48 6D DB D6                pea.l      -$242a(a5)
00003206  48 6D DB C6                pea.l      -$243a(a5)
0000320A  A8 17                      .byte      0xa8, 0x17
0000320C  0C 2D 00 01 D7 58          cmpi.b     #$1, -$28a8(a5)
00003212  66 26                      bne.b      $323a
00003214  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003218  48 68 00 02                pea.l      $2(a0)
0000321C  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003220  48 68 00 02                pea.l      $2(a0)
00003224  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003228  48 68 00 02                pea.l      $2(a0)
0000322C  48 6D DB FA                pea.l      -$2406(a5)
00003230  48 6D DB FA                pea.l      -$2406(a5)
00003234  48 6D DB EA                pea.l      -$2416(a5)
00003238  A8 17                      .byte      0xa8, 0x17
0000323A  0C 2D 00 01 D7 56          cmpi.b     #$1, -$28aa(a5)
00003240  66 26                      bne.b      $3268
00003242  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003246  48 68 00 02                pea.l      $2(a0)
0000324A  20 6D D3 E6                movea.l    -$2c1a(a5), a0
0000324E  48 68 00 02                pea.l      $2(a0)
00003252  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003256  48 68 00 02                pea.l      $2(a0)
0000325A  48 6D DB 8E                pea.l      -$2472(a5)
0000325E  48 6D DB 8E                pea.l      -$2472(a5)
00003262  48 6D DB 7E                pea.l      -$2482(a5)
00003266  A8 17                      .byte      0xa8, 0x17
00003268  0C 2D 00 01 D7 54          cmpi.b     #$1, -$28ac(a5)
0000326E  66 26                      bne.b      $3296
00003270  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003274  48 68 00 02                pea.l      $2(a0)
00003278  20 6D D3 E6                movea.l    -$2c1a(a5), a0
0000327C  48 68 00 02                pea.l      $2(a0)
00003280  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003284  48 68 00 02                pea.l      $2(a0)
00003288  48 6D DB B2                pea.l      -$244e(a5)
0000328C  48 6D DB B2                pea.l      -$244e(a5)
00003290  48 6D DB A2                pea.l      -$245e(a5)
00003294  A8 17                      .byte      0xa8, 0x17
00003296  0C 2D 00 01 CF 6E          cmpi.b     #$1, -$3092(a5)
0000329C  66 2E                      bne.b      $32cc
0000329E  0C 6D 00 54 DD 9A          cmpi.w     #$54, -$2266(a5)
000032A4  6F 26                      ble.b      $32cc
000032A6  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000032AA  48 68 00 02                pea.l      $2(a0)
000032AE  20 6D D3 EA                movea.l    -$2c16(a5), a0
000032B2  48 68 00 02                pea.l      $2(a0)
000032B6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000032BA  48 68 00 02                pea.l      $2(a0)
000032BE  48 6D DD AA                pea.l      -$2256(a5)
000032C2  48 6D DD AA                pea.l      -$2256(a5)
000032C6  48 6D DD 9A                pea.l      -$2266(a5)
000032CA  A8 17                      .byte      0xa8, 0x17
000032CC  0C 2D 00 01 CF 6C          cmpi.b     #$1, -$3094(a5)
000032D2  66 2E                      bne.b      $3302
000032D4  0C 6D 00 54 DD 76          cmpi.w     #$54, -$228a(a5)
000032DA  6F 26                      ble.b      $3302
000032DC  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000032E0  48 68 00 02                pea.l      $2(a0)
000032E4  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000032E8  48 68 00 02                pea.l      $2(a0)
000032EC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000032F0  48 68 00 02                pea.l      $2(a0)
000032F4  48 6D DD 86                pea.l      -$227a(a5)
000032F8  48 6D DD 86                pea.l      -$227a(a5)
000032FC  48 6D DD 76                pea.l      -$228a(a5)
00003300  A8 17                      .byte      0xa8, 0x17
00003302  0C 2D 00 01 CF 5E          cmpi.b     #$1, -$30a2(a5)
00003308  66 26                      bne.b      $3330
0000330A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000330E  48 68 00 02                pea.l      $2(a0)
00003312  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00003316  48 68 00 02                pea.l      $2(a0)
0000331A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000331E  48 68 00 02                pea.l      $2(a0)
00003322  48 6D DC BE                pea.l      -$2342(a5)
00003326  48 6D DC BE                pea.l      -$2342(a5)
0000332A  48 6D DE 82                pea.l      -$217e(a5)
0000332E  A8 17                      .byte      0xa8, 0x17
00003330  0C 2D 00 01 CF 5C          cmpi.b     #$1, -$30a4(a5)
00003336  66 26                      bne.b      $335e
00003338  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000333C  48 68 00 02                pea.l      $2(a0)
00003340  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00003344  48 68 00 02                pea.l      $2(a0)
00003348  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000334C  48 68 00 02                pea.l      $2(a0)
00003350  48 6D DC BE                pea.l      -$2342(a5)
00003354  48 6D DC BE                pea.l      -$2342(a5)
00003358  48 6D DE 5E                pea.l      -$21a2(a5)
0000335C  A8 17                      .byte      0xa8, 0x17
0000335E  0C 2D 00 01 CF 5A          cmpi.b     #$1, -$30a6(a5)
00003364  66 26                      bne.b      $338c
00003366  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000336A  48 68 00 02                pea.l      $2(a0)
0000336E  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00003372  48 68 00 02                pea.l      $2(a0)
00003376  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000337A  48 68 00 02                pea.l      $2(a0)
0000337E  48 6D DC BE                pea.l      -$2342(a5)
00003382  48 6D DC BE                pea.l      -$2342(a5)
00003386  48 6D DE 3A                pea.l      -$21c6(a5)
0000338A  A8 17                      .byte      0xa8, 0x17
0000338C  0C 2D 00 01 CF 58          cmpi.b     #$1, -$30a8(a5)
00003392  66 26                      bne.b      $33ba
00003394  20 6D D3 EE                movea.l    -$2c12(a5), a0
00003398  48 68 00 02                pea.l      $2(a0)
0000339C  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000033A0  48 68 00 02                pea.l      $2(a0)
000033A4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000033A8  48 68 00 02                pea.l      $2(a0)
000033AC  48 6D DC BE                pea.l      -$2342(a5)
000033B0  48 6D DC BE                pea.l      -$2342(a5)
000033B4  48 6D DE 16                pea.l      -$21ea(a5)
000033B8  A8 17                      .byte      0xa8, 0x17
000033BA  0C 2D 00 01 D0 62          cmpi.b     #$1, -$2f9e(a5)
000033C0  66 74                      bne.b      $3436
000033C2  4A 6D D0 5E                tst.w      -$2fa2(a5)
000033C6  6D 30                      blt.b      $33f8
000033C8  0C 6D 00 03 D0 5E          cmpi.w     #$3, -$2fa2(a5)
000033CE  6C 28                      bge.b      $33f8
000033D0  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000033D4  48 68 00 02                pea.l      $2(a0)
000033D8  20 6D D3 EA                movea.l    -$2c16(a5), a0
000033DC  48 68 00 02                pea.l      $2(a0)
000033E0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000033E4  48 68 00 02                pea.l      $2(a0)
000033E8  48 6D DD FA                pea.l      -$2206(a5)
000033EC  48 6D DD FA                pea.l      -$2206(a5)
000033F0  48 6D DD EA                pea.l      -$2216(a5)
000033F4  A8 17                      .byte      0xa8, 0x17
000033F6  60 3A                      bra.b      $3432
000033F8  0C 6D 00 03 D0 5E          cmpi.w     #$3, -$2fa2(a5)
000033FE  6D 32                      blt.b      $3432
00003400  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003404  48 68 00 02                pea.l      $2(a0)
00003408  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000340C  48 68 00 02                pea.l      $2(a0)
00003410  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003414  48 68 00 02                pea.l      $2(a0)
00003418  48 6D DE 02                pea.l      -$21fe(a5)
0000341C  48 6D DE 02                pea.l      -$21fe(a5)
00003420  48 6D DD EA                pea.l      -$2216(a5)
00003424  A8 17                      .byte      0xa8, 0x17
00003426  0C 6D 00 06 D0 5E          cmpi.w     #$6, -$2fa2(a5)
0000342C  66 04                      bne.b      $3432
0000342E  42 6D D0 5E                clr.w      -$2fa2(a5)
00003432  52 6D D0 5E                addq.w     #$1, -$2fa2(a5)
00003436  0C 2D 00 01 D0 60          cmpi.b     #$1, -$2fa0(a5)
0000343C  66 74                      bne.b      $34b2
0000343E  4A 6D D0 5C                tst.w      -$2fa4(a5)
00003442  6D 30                      blt.b      $3474
00003444  0C 6D 00 03 D0 5C          cmpi.w     #$3, -$2fa4(a5)
0000344A  6C 28                      bge.b      $3474
0000344C  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003450  48 68 00 02                pea.l      $2(a0)
00003454  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003458  48 68 00 02                pea.l      $2(a0)
0000345C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003460  48 68 00 02                pea.l      $2(a0)
00003464  48 6D DD FA                pea.l      -$2206(a5)
00003468  48 6D DD FA                pea.l      -$2206(a5)
0000346C  48 6D DD BE                pea.l      -$2242(a5)
00003470  A8 17                      .byte      0xa8, 0x17
00003472  60 3A                      bra.b      $34ae
00003474  0C 6D 00 03 D0 5C          cmpi.w     #$3, -$2fa4(a5)
0000347A  6D 32                      blt.b      $34ae
0000347C  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003480  48 68 00 02                pea.l      $2(a0)
00003484  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003488  48 68 00 02                pea.l      $2(a0)
0000348C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003490  48 68 00 02                pea.l      $2(a0)
00003494  48 6D DE 02                pea.l      -$21fe(a5)
00003498  48 6D DE 02                pea.l      -$21fe(a5)
0000349C  48 6D DD BE                pea.l      -$2242(a5)
000034A0  A8 17                      .byte      0xa8, 0x17
000034A2  0C 6D 00 06 D0 5C          cmpi.w     #$6, -$2fa4(a5)
000034A8  66 04                      bne.b      $34ae
000034AA  42 6D D0 5C                clr.w      -$2fa4(a5)
000034AE  52 6D D0 5C                addq.w     #$1, -$2fa4(a5)
000034B2  0C 2D 00 01 CF EA          cmpi.b     #$1, -$3016(a5)
000034B8  66 26                      bne.b      $34e0
000034BA  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000034BE  48 68 00 02                pea.l      $2(a0)
000034C2  20 6D D3 EA                movea.l    -$2c16(a5), a0
000034C6  48 68 00 02                pea.l      $2(a0)
000034CA  20 6D D3 FE                movea.l    -$2c02(a5), a0
000034CE  48 68 00 02                pea.l      $2(a0)
000034D2  48 6D DC 42                pea.l      -$23be(a5)
000034D6  48 6D DC 42                pea.l      -$23be(a5)
000034DA  48 6D DC 32                pea.l      -$23ce(a5)
000034DE  A8 17                      .byte      0xa8, 0x17
000034E0  0C 2D 00 01 CF E8          cmpi.b     #$1, -$3018(a5)
000034E6  66 26                      bne.b      $350e
000034E8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000034EC  48 68 00 02                pea.l      $2(a0)
000034F0  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000034F4  48 68 00 02                pea.l      $2(a0)
000034F8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000034FC  48 68 00 02                pea.l      $2(a0)
00003500  48 6D DC 1E                pea.l      -$23e2(a5)
00003504  48 6D DC 1E                pea.l      -$23e2(a5)
00003508  48 6D DC 0E                pea.l      -$23f2(a5)
0000350C  A8 17                      .byte      0xa8, 0x17
0000350E  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00003514  66 26                      bne.b      $353c
00003516  20 6D D3 F6                movea.l    -$2c0a(a5), a0
0000351A  48 68 00 02                pea.l      $2(a0)
0000351E  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003522  48 68 00 02                pea.l      $2(a0)
00003526  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000352A  48 68 00 02                pea.l      $2(a0)
0000352E  48 6D CF DC                pea.l      -$3024(a5)
00003532  48 6D CF DC                pea.l      -$3024(a5)
00003536  48 6D CF D4                pea.l      -$302c(a5)
0000353A  A8 17                      .byte      0xa8, 0x17
0000353C  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00003542  66 26                      bne.b      $356a
00003544  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003548  48 68 00 02                pea.l      $2(a0)
0000354C  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003550  48 68 00 02                pea.l      $2(a0)
00003554  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003558  48 68 00 02                pea.l      $2(a0)
0000355C  48 6D CF DC                pea.l      -$3024(a5)
00003560  48 6D CF DC                pea.l      -$3024(a5)
00003564  48 6D CF A0                pea.l      -$3060(a5)
00003568  A8 17                      .byte      0xa8, 0x17
0000356A  0C 2D 00 01 CF E4          cmpi.b     #$1, -$301c(a5)
00003570  66 26                      bne.b      $3598
00003572  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003576  48 68 00 02                pea.l      $2(a0)
0000357A  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000357E  48 68 00 02                pea.l      $2(a0)
00003582  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003586  48 68 00 02                pea.l      $2(a0)
0000358A  48 6D CF C4                pea.l      -$303c(a5)
0000358E  48 6D CF C4                pea.l      -$303c(a5)
00003592  48 6D CF BC                pea.l      -$3044(a5)
00003596  A8 17                      .byte      0xa8, 0x17
00003598  0C 2D 00 01 CF A8          cmpi.b     #$1, -$3058(a5)
0000359E  66 26                      bne.b      $35c6
000035A0  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000035A4  48 68 00 02                pea.l      $2(a0)
000035A8  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000035AC  48 68 00 02                pea.l      $2(a0)
000035B0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000035B4  48 68 00 02                pea.l      $2(a0)
000035B8  48 6D CF 92                pea.l      -$306e(a5)
000035BC  48 6D CF 92                pea.l      -$306e(a5)
000035C0  48 6D CF 8A                pea.l      -$3076(a5)
000035C4  A8 17                      .byte      0xa8, 0x17
000035C6  0C 2D 00 01 D0 0C          cmpi.b     #$1, -$2ff4(a5)
000035CC  66 26                      bne.b      $35f4
000035CE  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000035D2  48 68 00 02                pea.l      $2(a0)
000035D6  20 6D D3 EA                movea.l    -$2c16(a5), a0
000035DA  48 68 00 02                pea.l      $2(a0)
000035DE  20 6D D3 FE                movea.l    -$2c02(a5), a0
000035E2  48 68 00 02                pea.l      $2(a0)
000035E6  48 6D D0 26                pea.l      -$2fda(a5)
000035EA  48 6D D0 26                pea.l      -$2fda(a5)
000035EE  48 6D D0 1E                pea.l      -$2fe2(a5)
000035F2  A8 17                      .byte      0xa8, 0x17
000035F4  0C 2D 00 01 CF EC          cmpi.b     #$1, -$3014(a5)
000035FA  66 26                      bne.b      $3622
000035FC  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003600  48 68 00 02                pea.l      $2(a0)
00003604  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003608  48 68 00 02                pea.l      $2(a0)
0000360C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003610  48 68 00 02                pea.l      $2(a0)
00003614  48 6D D0 26                pea.l      -$2fda(a5)
00003618  48 6D D0 26                pea.l      -$2fda(a5)
0000361C  48 6D CF FE                pea.l      -$3002(a5)
00003620  A8 17                      .byte      0xa8, 0x17
00003622  0C 2D 00 01 D4 04          cmpi.b     #$1, -$2bfc(a5)
00003628  66 00 01 92                bne.w      $37bc
0000362C  4A 2D CE DC                tst.b      -$3124(a5)
00003630  66 00 01 8A                bne.w      $37bc
00003634  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
0000363A  66 36                      bne.b      $3672
0000363C  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
00003642  66 08                      bne.b      $364c
00003644  0C 6D 01 6E DC 38          cmpi.w     #$16e, -$23c8(a5)
0000364A  6D 26                      blt.b      $3672
0000364C  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003650  48 68 00 02                pea.l      $2(a0)
00003654  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003658  48 68 00 02                pea.l      $2(a0)
0000365C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003660  48 68 00 02                pea.l      $2(a0)
00003664  48 6D DC 42                pea.l      -$23be(a5)
00003668  48 6D DC 42                pea.l      -$23be(a5)
0000366C  48 6D DC 32                pea.l      -$23ce(a5)
00003670  A8 17                      .byte      0xa8, 0x17
00003672  0C 2D 00 01 D7 AA          cmpi.b     #$1, -$2856(a5)
00003678  66 00 01 42                bne.w      $37bc
0000367C  30 2D FF E0                move.w     -$20(a5), d0
00003680  53 40                      subq.w     #$1, d0
00003682  67 14                      beq.b      $3698
00003684  53 40                      subq.w     #$1, d0
00003686  67 3A                      beq.b      $36c2
00003688  55 40                      subq.w     #$2, d0
0000368A  67 00 00 80                beq.w      $370c
0000368E  59 40                      subq.w     #$4, d0
00003690  67 00 00 D4                beq.w      $3766
00003694  60 00 01 26                bra.w      $37bc
00003698  20 6D D3 F6                movea.l    -$2c0a(a5), a0
0000369C  48 68 00 02                pea.l      $2(a0)
000036A0  20 6D D3 EA                movea.l    -$2c16(a5), a0
000036A4  48 68 00 02                pea.l      $2(a0)
000036A8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000036AC  48 68 00 02                pea.l      $2(a0)
000036B0  48 6D DB D6                pea.l      -$242a(a5)
000036B4  48 6D DB D6                pea.l      -$242a(a5)
000036B8  48 6D DB C6                pea.l      -$243a(a5)
000036BC  A8 17                      .byte      0xa8, 0x17
000036BE  60 00 00 FC                bra.w      $37bc
000036C2  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000036C6  48 68 00 02                pea.l      $2(a0)
000036CA  20 6D D3 EA                movea.l    -$2c16(a5), a0
000036CE  48 68 00 02                pea.l      $2(a0)
000036D2  20 6D D3 FE                movea.l    -$2c02(a5), a0
000036D6  48 68 00 02                pea.l      $2(a0)
000036DA  30 2D D7 A8                move.w     -$2858(a5), d0
000036DE  53 40                      subq.w     #$1, d0
000036E0  48 C0                      ext.l      d0
000036E2  E7 88                      lsl.l      #$3, d0
000036E4  41 ED DA FA                lea.l      -$2506(a5), a0
000036E8  D1 C0                      adda.l     d0, a0
000036EA  48 68 00 10                pea.l      $10(a0)
000036EE  30 2D D7 A8                move.w     -$2858(a5), d0
000036F2  53 40                      subq.w     #$1, d0
000036F4  48 C0                      ext.l      d0
000036F6  E7 88                      lsl.l      #$3, d0
000036F8  41 ED DA FA                lea.l      -$2506(a5), a0
000036FC  D1 C0                      adda.l     d0, a0
000036FE  48 68 00 10                pea.l      $10(a0)
00003702  48 6D DA FA                pea.l      -$2506(a5)
00003706  A8 17                      .byte      0xa8, 0x17
00003708  60 00 00 B2                bra.w      $37bc
0000370C  0C 6D 00 C8 DB 58          cmpi.w     #$c8, -$24a8(a5)
00003712  6C 2A                      bge.b      $373e
00003714  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003718  48 68 00 02                pea.l      $2(a0)
0000371C  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003720  48 68 00 02                pea.l      $2(a0)
00003724  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003728  48 68 00 02                pea.l      $2(a0)
0000372C  48 6D DB 62                pea.l      -$249e(a5)
00003730  48 6D DB 62                pea.l      -$249e(a5)
00003734  48 6D DB 52                pea.l      -$24ae(a5)
00003738  A8 17                      .byte      0xa8, 0x17
0000373A  60 00 00 80                bra.w      $37bc
0000373E  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003742  48 68 00 02                pea.l      $2(a0)
00003746  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000374A  48 68 00 02                pea.l      $2(a0)
0000374E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003752  48 68 00 02                pea.l      $2(a0)
00003756  48 6D DB 6A                pea.l      -$2496(a5)
0000375A  48 6D DB 6A                pea.l      -$2496(a5)
0000375E  48 6D DB 52                pea.l      -$24ae(a5)
00003762  A8 17                      .byte      0xa8, 0x17
00003764  60 56                      bra.b      $37bc
00003766  0C 6D 01 2C DA A8          cmpi.w     #$12c, -$2558(a5)
0000376C  6C 28                      bge.b      $3796
0000376E  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003772  48 68 00 02                pea.l      $2(a0)
00003776  20 6D D3 EA                movea.l    -$2c16(a5), a0
0000377A  48 68 00 02                pea.l      $2(a0)
0000377E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003782  48 68 00 02                pea.l      $2(a0)
00003786  48 6D DA B2                pea.l      -$254e(a5)
0000378A  48 6D DA B2                pea.l      -$254e(a5)
0000378E  48 6D DA A2                pea.l      -$255e(a5)
00003792  A8 17                      .byte      0xa8, 0x17
00003794  60 26                      bra.b      $37bc
00003796  20 6D D3 F6                movea.l    -$2c0a(a5), a0
0000379A  48 68 00 02                pea.l      $2(a0)
0000379E  20 6D D3 EA                movea.l    -$2c16(a5), a0
000037A2  48 68 00 02                pea.l      $2(a0)
000037A6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000037AA  48 68 00 02                pea.l      $2(a0)
000037AE  48 6D DA BA                pea.l      -$2546(a5)
000037B2  48 6D DA BA                pea.l      -$2546(a5)
000037B6  48 6D DA A2                pea.l      -$255e(a5)
000037BA  A8 17                      .byte      0xa8, 0x17
000037BC  0C 2D 00 01 D4 02          cmpi.b     #$1, -$2bfe(a5)
000037C2  66 00 01 62                bne.w      $3926
000037C6  4A 2D CE DC                tst.b      -$3124(a5)
000037CA  66 00 01 5A                bne.w      $3926
000037CE  0C 2D 00 01 D7 A4          cmpi.b     #$1, -$285c(a5)
000037D4  66 36                      bne.b      $380c
000037D6  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
000037DC  66 08                      bne.b      $37e6
000037DE  0C 6D 00 96 DC 10          cmpi.w     #$96, -$23f0(a5)
000037E4  6E 26                      bgt.b      $380c
000037E6  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000037EA  48 68 00 02                pea.l      $2(a0)
000037EE  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000037F2  48 68 00 02                pea.l      $2(a0)
000037F6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000037FA  48 68 00 02                pea.l      $2(a0)
000037FE  48 6D DC 1E                pea.l      -$23e2(a5)
00003802  48 6D DC 1E                pea.l      -$23e2(a5)
00003806  48 6D DC 0E                pea.l      -$23f2(a5)
0000380A  A8 17                      .byte      0xa8, 0x17
0000380C  0C 2D 00 01 D7 A2          cmpi.b     #$1, -$285e(a5)
00003812  66 00 01 12                bne.w      $3926
00003816  30 2D FF E2                move.w     -$1e(a5), d0
0000381A  55 40                      subq.w     #$2, d0
0000381C  67 0E                      beq.b      $382c
0000381E  55 40                      subq.w     #$2, d0
00003820  67 54                      beq.b      $3876
00003822  59 40                      subq.w     #$4, d0
00003824  67 00 00 AA                beq.w      $38d0
00003828  60 00 00 FC                bra.w      $3926
0000382C  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003830  48 68 00 02                pea.l      $2(a0)
00003834  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003838  48 68 00 02                pea.l      $2(a0)
0000383C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003840  48 68 00 02                pea.l      $2(a0)
00003844  30 2D D7 A6                move.w     -$285a(a5), d0
00003848  53 40                      subq.w     #$1, d0
0000384A  48 C0                      ext.l      d0
0000384C  E7 88                      lsl.l      #$3, d0
0000384E  41 ED DA CE                lea.l      -$2532(a5), a0
00003852  D1 C0                      adda.l     d0, a0
00003854  48 68 00 10                pea.l      $10(a0)
00003858  30 2D D7 A6                move.w     -$285a(a5), d0
0000385C  53 40                      subq.w     #$1, d0
0000385E  48 C0                      ext.l      d0
00003860  E7 88                      lsl.l      #$3, d0
00003862  41 ED DA CE                lea.l      -$2532(a5), a0
00003866  D1 C0                      adda.l     d0, a0
00003868  48 68 00 10                pea.l      $10(a0)
0000386C  48 6D DA CE                pea.l      -$2532(a5)
00003870  A8 17                      .byte      0xa8, 0x17
00003872  60 00 00 B2                bra.w      $3926
00003876  0C 6D 01 3C DB 28          cmpi.w     #$13c, -$24d8(a5)
0000387C  6F 2A                      ble.b      $38a8
0000387E  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003882  48 68 00 02                pea.l      $2(a0)
00003886  20 6D D3 E6                movea.l    -$2c1a(a5), a0
0000388A  48 68 00 02                pea.l      $2(a0)
0000388E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003892  48 68 00 02                pea.l      $2(a0)
00003896  48 6D DB 36                pea.l      -$24ca(a5)
0000389A  48 6D DB 36                pea.l      -$24ca(a5)
0000389E  48 6D DB 26                pea.l      -$24da(a5)
000038A2  A8 17                      .byte      0xa8, 0x17
000038A4  60 00 00 80                bra.w      $3926
000038A8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000038AC  48 68 00 02                pea.l      $2(a0)
000038B0  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000038B4  48 68 00 02                pea.l      $2(a0)
000038B8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000038BC  48 68 00 02                pea.l      $2(a0)
000038C0  48 6D DB 3E                pea.l      -$24c2(a5)
000038C4  48 6D DB 3E                pea.l      -$24c2(a5)
000038C8  48 6D DB 26                pea.l      -$24da(a5)
000038CC  A8 17                      .byte      0xa8, 0x17
000038CE  60 56                      bra.b      $3926
000038D0  0C 6D 00 D8 DA 78          cmpi.w     #$d8, -$2588(a5)
000038D6  6F 28                      ble.b      $3900
000038D8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
000038DC  48 68 00 02                pea.l      $2(a0)
000038E0  20 6D D3 E6                movea.l    -$2c1a(a5), a0
000038E4  48 68 00 02                pea.l      $2(a0)
000038E8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000038EC  48 68 00 02                pea.l      $2(a0)
000038F0  48 6D DA 86                pea.l      -$257a(a5)
000038F4  48 6D DA 86                pea.l      -$257a(a5)
000038F8  48 6D DA 76                pea.l      -$258a(a5)
000038FC  A8 17                      .byte      0xa8, 0x17
000038FE  60 26                      bra.b      $3926
00003900  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003904  48 68 00 02                pea.l      $2(a0)
00003908  20 6D D3 E6                movea.l    -$2c1a(a5), a0
0000390C  48 68 00 02                pea.l      $2(a0)
00003910  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003914  48 68 00 02                pea.l      $2(a0)
00003918  48 6D DA 8E                pea.l      -$2572(a5)
0000391C  48 6D DA 8E                pea.l      -$2572(a5)
00003920  48 6D DA 76                pea.l      -$258a(a5)
00003924  A8 17                      .byte      0xa8, 0x17
00003926  0C 2D 00 01 D7 8A          cmpi.b     #$1, -$2876(a5)
0000392C  66 00 01 FA                bne.w      $3b28
00003930  0C 6D 00 03 D7 96          cmpi.w     #$3, -$286a(a5)
00003936  6C 00 01 1E                bge.w      $3a56
0000393A  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00003940  66 72                      bne.b      $39b4
00003942  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003946  48 68 00 02                pea.l      $2(a0)
0000394A  20 6D D3 E6                movea.l    -$2c1a(a5), a0
0000394E  48 68 00 02                pea.l      $2(a0)
00003952  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003956  48 68 00 02                pea.l      $2(a0)
0000395A  30 6D D7 96                movea.w    -$286a(a5), a0
0000395E  20 08                      move.l     a0, d0
00003960  E7 88                      lsl.l      #$3, d0
00003962  41 ED D8 6E                lea.l      -$2792(a5), a0
00003966  D1 C0                      adda.l     d0, a0
00003968  48 50                      pea.l      (a0)
0000396A  30 6D D7 96                movea.w    -$286a(a5), a0
0000396E  20 08                      move.l     a0, d0
00003970  E7 88                      lsl.l      #$3, d0
00003972  41 ED D8 6E                lea.l      -$2792(a5), a0
00003976  D1 C0                      adda.l     d0, a0
00003978  48 50                      pea.l      (a0)
0000397A  48 6D D8 86                pea.l      -$277a(a5)
0000397E  A8 17                      .byte      0xa8, 0x17
00003980  55 4F                      subq.w     #$2, a7
00003982  48 6D D8 86                pea.l      -$277a(a5)
00003986  48 6D DC 82                pea.l      -$237e(a5)
0000398A  48 6E FF F8                pea.l      -$8(a6)
0000398E  A8 AA                      .byte      0xa8, 0xaa
00003990  10 1F                      move.b     (a7)+, d0
00003992  67 00 00 A6                beq.w      $3a3a
00003996  0C 6D 00 01 D7 96          cmpi.w     #$1, -$286a(a5)
0000399C  66 00 00 9C                bne.w      $3a3a
000039A0  55 6D FF F6                subq.w     #$2, -$a(a5)
000039A4  4A 6D FF F6                tst.w      -$a(a5)
000039A8  6C 00 00 90                bge.w      $3a3a
000039AC  42 6D FF F6                clr.w      -$a(a5)
000039B0  60 00 00 88                bra.w      $3a3a
000039B4  0C 2D 00 01 CF 9A          cmpi.b     #$1, -$3066(a5)
000039BA  66 40                      bne.b      $39fc
000039BC  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000039C0  48 68 00 02                pea.l      $2(a0)
000039C4  20 6D D3 EA                movea.l    -$2c16(a5), a0
000039C8  48 68 00 02                pea.l      $2(a0)
000039CC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000039D0  48 68 00 02                pea.l      $2(a0)
000039D4  30 6D D7 96                movea.w    -$286a(a5), a0
000039D8  20 08                      move.l     a0, d0
000039DA  E7 88                      lsl.l      #$3, d0
000039DC  41 ED D4 46                lea.l      -$2bba(a5), a0
000039E0  D1 C0                      adda.l     d0, a0
000039E2  48 50                      pea.l      (a0)
000039E4  30 6D D7 96                movea.w    -$286a(a5), a0
000039E8  20 08                      move.l     a0, d0
000039EA  E7 88                      lsl.l      #$3, d0
000039EC  41 ED D4 46                lea.l      -$2bba(a5), a0
000039F0  D1 C0                      adda.l     d0, a0
000039F2  48 50                      pea.l      (a0)
000039F4  48 6D D7 6E                pea.l      -$2892(a5)
000039F8  A8 17                      .byte      0xa8, 0x17
000039FA  60 3E                      bra.b      $3a3a
000039FC  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003A00  48 68 00 02                pea.l      $2(a0)
00003A04  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003A08  48 68 00 02                pea.l      $2(a0)
00003A0C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003A10  48 68 00 02                pea.l      $2(a0)
00003A14  30 6D D7 96                movea.w    -$286a(a5), a0
00003A18  20 08                      move.l     a0, d0
00003A1A  E7 88                      lsl.l      #$3, d0
00003A1C  41 ED D4 46                lea.l      -$2bba(a5), a0
00003A20  D1 C0                      adda.l     d0, a0
00003A22  48 50                      pea.l      (a0)
00003A24  30 6D D7 96                movea.w    -$286a(a5), a0
00003A28  20 08                      move.l     a0, d0
00003A2A  E7 88                      lsl.l      #$3, d0
00003A2C  41 ED D4 46                lea.l      -$2bba(a5), a0
00003A30  D1 C0                      adda.l     d0, a0
00003A32  48 50                      pea.l      (a0)
00003A34  48 6D D7 6E                pea.l      -$2892(a5)
00003A38  A8 17                      .byte      0xa8, 0x17
00003A3A  59 4F                      subq.w     #$4, a7
00003A3C  A9 75                      .byte      0xa9, 0x75
00003A3E  20 1F                      move.l     (a7)+, d0
00003A40  72 06                      moveq      #$6, d1
00003A42  4E B9 00 00 04 BE          jsr        $4be.l
00003A48  4A 80                      tst.l      d0
00003A4A  66 00 00 DC                bne.w      $3b28
00003A4E  52 6D D7 96                addq.w     #$1, -$286a(a5)
00003A52  60 00 00 D4                bra.w      $3b28
00003A56  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00003A5C  66 54                      bne.b      $3ab2
00003A5E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003A62  48 68 00 02                pea.l      $2(a0)
00003A66  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003A6A  48 68 00 02                pea.l      $2(a0)
00003A6E  48 6D D8 86                pea.l      -$277a(a5)
00003A72  48 6D D8 86                pea.l      -$277a(a5)
00003A76  42 67                      clr.w      -(a7)
00003A78  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003A7C  2F 28 00 18                move.l     $18(a0), -(a7)
00003A80  A8 EC                      .byte      0xa8, 0xec
00003A82  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003A86  48 68 00 02                pea.l      $2(a0)
00003A8A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003A8E  48 68 00 02                pea.l      $2(a0)
00003A92  48 6D D8 86                pea.l      -$277a(a5)
00003A96  48 6D D8 86                pea.l      -$277a(a5)
00003A9A  42 67                      clr.w      -(a7)
00003A9C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003AA0  2F 28 00 18                move.l     $18(a0), -(a7)
00003AA4  A8 EC                      .byte      0xa8, 0xec
00003AA6  42 2D D4 02                clr.b      -$2bfe(a5)
00003AAA  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00003AB0  60 48                      bra.b      $3afa
00003AB2  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003AB6  48 68 00 02                pea.l      $2(a0)
00003ABA  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003ABE  48 68 00 02                pea.l      $2(a0)
00003AC2  48 6D D7 6E                pea.l      -$2892(a5)
00003AC6  48 6D D7 6E                pea.l      -$2892(a5)
00003ACA  42 67                      clr.w      -(a7)
00003ACC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003AD0  2F 28 00 18                move.l     $18(a0), -(a7)
00003AD4  A8 EC                      .byte      0xa8, 0xec
00003AD6  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003ADA  48 68 00 02                pea.l      $2(a0)
00003ADE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003AE2  48 68 00 02                pea.l      $2(a0)
00003AE6  48 6D D7 6E                pea.l      -$2892(a5)
00003AEA  48 6D D7 6E                pea.l      -$2892(a5)
00003AEE  42 67                      clr.w      -(a7)
00003AF0  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003AF4  2F 28 00 18                move.l     $18(a0), -(a7)
00003AF8  A8 EC                      .byte      0xa8, 0xec
00003AFA  4A 2D D7 DC                tst.b      -$2824(a5)
00003AFE  66 04                      bne.b      $3b04
00003B00  42 2D FF EE                clr.b      -$12(a5)
00003B04  42 2D CF 9A                clr.b      -$3066(a5)
00003B08  42 6D D7 96                clr.w      -$286a(a5)
00003B0C  42 2D D7 8A                clr.b      -$2876(a5)
00003B10  2B 6D D7 8E D8 86          move.l     -$2872(a5), -$277a(a5)
00003B16  2B 6D D7 92 D8 8A          move.l     -$286e(a5), -$2776(a5)
00003B1C  2B 6D D7 8E D7 6E          move.l     -$2872(a5), -$2892(a5)
00003B22  2B 6D D7 92 D7 72          move.l     -$286e(a5), -$288e(a5)
00003B28  0C 2D 00 01 D7 8C          cmpi.b     #$1, -$2874(a5)
00003B2E  66 00 01 FE                bne.w      $3d2e
00003B32  0C 6D 00 03 D7 98          cmpi.w     #$3, -$2868(a5)
00003B38  6C 00 01 1E                bge.w      $3c58
00003B3C  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00003B42  66 72                      bne.b      $3bb6
00003B44  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003B48  48 68 00 02                pea.l      $2(a0)
00003B4C  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003B50  48 68 00 02                pea.l      $2(a0)
00003B54  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003B58  48 68 00 02                pea.l      $2(a0)
00003B5C  30 6D D7 98                movea.w    -$2868(a5), a0
00003B60  20 08                      move.l     a0, d0
00003B62  E7 88                      lsl.l      #$3, d0
00003B64  41 ED D8 6E                lea.l      -$2792(a5), a0
00003B68  D1 C0                      adda.l     d0, a0
00003B6A  48 50                      pea.l      (a0)
00003B6C  30 6D D7 98                movea.w    -$2868(a5), a0
00003B70  20 08                      move.l     a0, d0
00003B72  E7 88                      lsl.l      #$3, d0
00003B74  41 ED D8 6E                lea.l      -$2792(a5), a0
00003B78  D1 C0                      adda.l     d0, a0
00003B7A  48 50                      pea.l      (a0)
00003B7C  48 6D D8 8E                pea.l      -$2772(a5)
00003B80  A8 17                      .byte      0xa8, 0x17
00003B82  55 4F                      subq.w     #$2, a7
00003B84  48 6D D8 8E                pea.l      -$2772(a5)
00003B88  48 6D DC 56                pea.l      -$23aa(a5)
00003B8C  48 6E FF F8                pea.l      -$8(a6)
00003B90  A8 AA                      .byte      0xa8, 0xaa
00003B92  10 1F                      move.b     (a7)+, d0
00003B94  67 00 00 A6                beq.w      $3c3c
00003B98  0C 6D 00 01 D7 98          cmpi.w     #$1, -$2868(a5)
00003B9E  66 00 00 9C                bne.w      $3c3c
00003BA2  55 6D FF FA                subq.w     #$2, -$6(a5)
00003BA6  4A 6D FF FA                tst.w      -$6(a5)
00003BAA  6C 00 00 90                bge.w      $3c3c
00003BAE  42 6D FF FA                clr.w      -$6(a5)
00003BB2  60 00 00 88                bra.w      $3c3c
00003BB6  0C 2D 00 01 CF CE          cmpi.b     #$1, -$3032(a5)
00003BBC  66 40                      bne.b      $3bfe
00003BBE  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003BC2  48 68 00 02                pea.l      $2(a0)
00003BC6  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003BCA  48 68 00 02                pea.l      $2(a0)
00003BCE  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003BD2  48 68 00 02                pea.l      $2(a0)
00003BD6  30 6D D7 98                movea.w    -$2868(a5), a0
00003BDA  20 08                      move.l     a0, d0
00003BDC  E7 88                      lsl.l      #$3, d0
00003BDE  41 ED D4 46                lea.l      -$2bba(a5), a0
00003BE2  D1 C0                      adda.l     d0, a0
00003BE4  48 50                      pea.l      (a0)
00003BE6  30 6D D7 98                movea.w    -$2868(a5), a0
00003BEA  20 08                      move.l     a0, d0
00003BEC  E7 88                      lsl.l      #$3, d0
00003BEE  41 ED D4 46                lea.l      -$2bba(a5), a0
00003BF2  D1 C0                      adda.l     d0, a0
00003BF4  48 50                      pea.l      (a0)
00003BF6  48 6D D7 76                pea.l      -$288a(a5)
00003BFA  A8 17                      .byte      0xa8, 0x17
00003BFC  60 3E                      bra.b      $3c3c
00003BFE  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003C02  48 68 00 02                pea.l      $2(a0)
00003C06  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003C0A  48 68 00 02                pea.l      $2(a0)
00003C0E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003C12  48 68 00 02                pea.l      $2(a0)
00003C16  30 6D D7 98                movea.w    -$2868(a5), a0
00003C1A  20 08                      move.l     a0, d0
00003C1C  E7 88                      lsl.l      #$3, d0
00003C1E  41 ED D4 46                lea.l      -$2bba(a5), a0
00003C22  D1 C0                      adda.l     d0, a0
00003C24  48 50                      pea.l      (a0)
00003C26  30 6D D7 98                movea.w    -$2868(a5), a0
00003C2A  20 08                      move.l     a0, d0
00003C2C  E7 88                      lsl.l      #$3, d0
00003C2E  41 ED D4 46                lea.l      -$2bba(a5), a0
00003C32  D1 C0                      adda.l     d0, a0
00003C34  48 50                      pea.l      (a0)
00003C36  48 6D D7 76                pea.l      -$288a(a5)
00003C3A  A8 17                      .byte      0xa8, 0x17
00003C3C  59 4F                      subq.w     #$4, a7
00003C3E  A9 75                      .byte      0xa9, 0x75
00003C40  20 1F                      move.l     (a7)+, d0
00003C42  72 06                      moveq      #$6, d1
00003C44  4E B9 00 00 04 BE          jsr        $4be.l
00003C4A  4A 80                      tst.l      d0
00003C4C  66 00 00 E0                bne.w      $3d2e
00003C50  52 6D D7 98                addq.w     #$1, -$2868(a5)
00003C54  60 00 00 D8                bra.w      $3d2e
00003C58  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00003C5E  66 58                      bne.b      $3cb8
00003C60  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003C64  48 68 00 02                pea.l      $2(a0)
00003C68  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003C6C  48 68 00 02                pea.l      $2(a0)
00003C70  48 6D D8 8E                pea.l      -$2772(a5)
00003C74  48 6D D8 8E                pea.l      -$2772(a5)
00003C78  42 67                      clr.w      -(a7)
00003C7A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003C7E  2F 28 00 18                move.l     $18(a0), -(a7)
00003C82  A8 EC                      .byte      0xa8, 0xec
00003C84  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003C88  48 68 00 02                pea.l      $2(a0)
00003C8C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003C90  48 68 00 02                pea.l      $2(a0)
00003C94  48 6D D8 8E                pea.l      -$2772(a5)
00003C98  48 6D D8 8E                pea.l      -$2772(a5)
00003C9C  42 67                      clr.w      -(a7)
00003C9E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003CA2  2F 28 00 18                move.l     $18(a0), -(a7)
00003CA6  A8 EC                      .byte      0xa8, 0xec
00003CA8  42 2D D4 04                clr.b      -$2bfc(a5)
00003CAC  42 2D D7 AA                clr.b      -$2856(a5)
00003CB0  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
00003CB6  60 48                      bra.b      $3d00
00003CB8  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003CBC  48 68 00 02                pea.l      $2(a0)
00003CC0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003CC4  48 68 00 02                pea.l      $2(a0)
00003CC8  48 6D D7 76                pea.l      -$288a(a5)
00003CCC  48 6D D7 76                pea.l      -$288a(a5)
00003CD0  42 67                      clr.w      -(a7)
00003CD2  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003CD6  2F 28 00 18                move.l     $18(a0), -(a7)
00003CDA  A8 EC                      .byte      0xa8, 0xec
00003CDC  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003CE0  48 68 00 02                pea.l      $2(a0)
00003CE4  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003CE8  48 68 00 02                pea.l      $2(a0)
00003CEC  48 6D D7 76                pea.l      -$288a(a5)
00003CF0  48 6D D7 76                pea.l      -$288a(a5)
00003CF4  42 67                      clr.w      -(a7)
00003CF6  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003CFA  2F 28 00 18                move.l     $18(a0), -(a7)
00003CFE  A8 EC                      .byte      0xa8, 0xec
00003D00  4A 2D D7 DA                tst.b      -$2826(a5)
00003D04  66 04                      bne.b      $3d0a
00003D06  42 2D FF F0                clr.b      -$10(a5)
00003D0A  42 6D D7 98                clr.w      -$2868(a5)
00003D0E  42 2D D7 8C                clr.b      -$2874(a5)
00003D12  42 2D CF CE                clr.b      -$3032(a5)
00003D16  2B 6D D7 8E D8 8E          move.l     -$2872(a5), -$2772(a5)
00003D1C  2B 6D D7 92 D8 92          move.l     -$286e(a5), -$276e(a5)
00003D22  2B 6D D7 8E D7 76          move.l     -$2872(a5), -$288a(a5)
00003D28  2B 6D D7 92 D7 7A          move.l     -$286e(a5), -$2886(a5)
00003D2E  0C 2D 00 01 D7 DC          cmpi.b     #$1, -$2824(a5)
00003D34  66 42                      bne.b      $3d78
00003D36  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003D3A  48 68 00 02                pea.l      $2(a0)
00003D3E  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003D42  48 68 00 02                pea.l      $2(a0)
00003D46  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003D4A  48 68 00 02                pea.l      $2(a0)
00003D4E  48 6D DC 9A                pea.l      -$2366(a5)
00003D52  48 6D DC 92                pea.l      -$236e(a5)
00003D56  48 6D DC 82                pea.l      -$237e(a5)
00003D5A  A8 17                      .byte      0xa8, 0x17
00003D5C  59 4F                      subq.w     #$4, a7
00003D5E  A9 75                      .byte      0xa9, 0x75
00003D60  20 1F                      move.l     (a7)+, d0
00003D62  90 AD D7 86                sub.l      -$287a(a5), d0
00003D66  0C 80 00 00 00 A0          cmpi.l     #$a0, d0
00003D6C  63 3E                      bls.b      $3dac
00003D6E  42 2D D7 DC                clr.b      -$2824(a5)
00003D72  42 2D FF EE                clr.b      -$12(a5)
00003D76  60 34                      bra.b      $3dac
00003D78  4A 2D D7 DC                tst.b      -$2824(a5)
00003D7C  66 2E                      bne.b      $3dac
00003D7E  0C 6D 00 0C D4 1C          cmpi.w     #$c, -$2be4(a5)
00003D84  67 26                      beq.b      $3dac
00003D86  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003D8A  48 68 00 02                pea.l      $2(a0)
00003D8E  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003D92  48 68 00 02                pea.l      $2(a0)
00003D96  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003D9A  48 68 00 02                pea.l      $2(a0)
00003D9E  48 6D DC 92                pea.l      -$236e(a5)
00003DA2  48 6D DC 92                pea.l      -$236e(a5)
00003DA6  48 6D DC 82                pea.l      -$237e(a5)
00003DAA  A8 17                      .byte      0xa8, 0x17
00003DAC  0C 2D 00 01 D7 DA          cmpi.b     #$1, -$2826(a5)
00003DB2  66 42                      bne.b      $3df6
00003DB4  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003DB8  48 68 00 02                pea.l      $2(a0)
00003DBC  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003DC0  48 68 00 02                pea.l      $2(a0)
00003DC4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003DC8  48 68 00 02                pea.l      $2(a0)
00003DCC  48 6D DC 6E                pea.l      -$2392(a5)
00003DD0  48 6D DC 66                pea.l      -$239a(a5)
00003DD4  48 6D DC 56                pea.l      -$23aa(a5)
00003DD8  A8 17                      .byte      0xa8, 0x17
00003DDA  59 4F                      subq.w     #$4, a7
00003DDC  A9 75                      .byte      0xa9, 0x75
00003DDE  20 1F                      move.l     (a7)+, d0
00003DE0  90 AD D7 82                sub.l      -$287e(a5), d0
00003DE4  0C 80 00 00 00 A0          cmpi.l     #$a0, d0
00003DEA  63 3E                      bls.b      $3e2a
00003DEC  42 2D D7 DA                clr.b      -$2826(a5)
00003DF0  42 2D FF F0                clr.b      -$10(a5)
00003DF4  60 34                      bra.b      $3e2a
00003DF6  4A 2D D7 DA                tst.b      -$2826(a5)
00003DFA  66 2E                      bne.b      $3e2a
00003DFC  0C 6D 00 0C D4 1C          cmpi.w     #$c, -$2be4(a5)
00003E02  67 26                      beq.b      $3e2a
00003E04  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003E08  48 68 00 02                pea.l      $2(a0)
00003E0C  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003E10  48 68 00 02                pea.l      $2(a0)
00003E14  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003E18  48 68 00 02                pea.l      $2(a0)
00003E1C  48 6D DC 66                pea.l      -$239a(a5)
00003E20  48 6D DC 66                pea.l      -$239a(a5)
00003E24  48 6D DC 56                pea.l      -$23aa(a5)
00003E28  A8 17                      .byte      0xa8, 0x17
00003E2A  0C 2D 00 01 D7 80          cmpi.b     #$1, -$2880(a5)
00003E30  66 00 00 B4                bne.w      $3ee6
00003E34  59 4F                      subq.w     #$4, a7
00003E36  A9 75                      .byte      0xa9, 0x75
00003E38  20 1F                      move.l     (a7)+, d0
00003E3A  90 AD D7 86                sub.l      -$287a(a5), d0
00003E3E  0C 80 00 00 00 A0          cmpi.l     #$a0, d0
00003E44  63 52                      bls.b      $3e98
00003E46  42 2D D7 80                clr.b      -$2880(a5)
00003E4A  42 2D FF EE                clr.b      -$12(a5)
00003E4E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003E52  48 68 00 02                pea.l      $2(a0)
00003E56  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003E5A  48 68 00 02                pea.l      $2(a0)
00003E5E  48 6D CE C0                pea.l      -$3140(a5)
00003E62  48 6D CE C0                pea.l      -$3140(a5)
00003E66  42 67                      clr.w      -(a7)
00003E68  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003E6C  2F 28 00 18                move.l     $18(a0), -(a7)
00003E70  A8 EC                      .byte      0xa8, 0xec
00003E72  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003E76  48 68 00 02                pea.l      $2(a0)
00003E7A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003E7E  48 68 00 02                pea.l      $2(a0)
00003E82  48 6D CE C0                pea.l      -$3140(a5)
00003E86  48 6D CE C0                pea.l      -$3140(a5)
00003E8A  42 67                      clr.w      -(a7)
00003E8C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003E90  2F 28 00 18                move.l     $18(a0), -(a7)
00003E94  A8 EC                      .byte      0xa8, 0xec
00003E96  60 4E                      bra.b      $3ee6
00003E98  30 2D DC 82                move.w     -$237e(a5), d0
00003E9C  57 40                      subq.w     #$3, d0
00003E9E  3B 40 CE C0                move.w     d0, -$3140(a5)
00003EA2  30 2D DC 86                move.w     -$237a(a5), d0
00003EA6  56 40                      addq.w     #$3, d0
00003EA8  3B 40 CE C4                move.w     d0, -$313c(a5)
00003EAC  30 2D DC 88                move.w     -$2378(a5), d0
00003EB0  5A 40                      addq.w     #$5, d0
00003EB2  3B 40 CE C6                move.w     d0, -$313a(a5)
00003EB6  30 2D DC 84                move.w     -$237c(a5), d0
00003EBA  59 40                      subq.w     #$4, d0
00003EBC  3B 40 CE C2                move.w     d0, -$313e(a5)
00003EC0  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003EC4  48 68 00 02                pea.l      $2(a0)
00003EC8  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003ECC  48 68 00 02                pea.l      $2(a0)
00003ED0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003ED4  48 68 00 02                pea.l      $2(a0)
00003ED8  48 6D CE D0                pea.l      -$3130(a5)
00003EDC  48 6D CE D0                pea.l      -$3130(a5)
00003EE0  48 6D CE C0                pea.l      -$3140(a5)
00003EE4  A8 17                      .byte      0xa8, 0x17
00003EE6  0C 2D 00 01 D7 7E          cmpi.b     #$1, -$2882(a5)
00003EEC  66 00 00 EA                bne.w      $3fd8
00003EF0  59 4F                      subq.w     #$4, a7
00003EF2  A9 75                      .byte      0xa9, 0x75
00003EF4  20 1F                      move.l     (a7)+, d0
00003EF6  90 AD D7 82                sub.l      -$287e(a5), d0
00003EFA  0C 80 00 00 00 A0          cmpi.l     #$a0, d0
00003F00  63 58                      bls.b      $3f5a
00003F02  42 2D CF CE                clr.b      -$3032(a5)
00003F06  42 2D D7 7E                clr.b      -$2882(a5)
00003F0A  42 2D FF F0                clr.b      -$10(a5)
00003F0E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00003F12  48 68 00 02                pea.l      $2(a0)
00003F16  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003F1A  48 68 00 02                pea.l      $2(a0)
00003F1E  48 6D CE C8                pea.l      -$3138(a5)
00003F22  48 6D CE C8                pea.l      -$3138(a5)
00003F26  42 67                      clr.w      -(a7)
00003F28  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003F2C  2F 28 00 18                move.l     $18(a0), -(a7)
00003F30  A8 EC                      .byte      0xa8, 0xec
00003F32  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003F36  48 68 00 02                pea.l      $2(a0)
00003F3A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003F3E  48 68 00 02                pea.l      $2(a0)
00003F42  48 6D CE C8                pea.l      -$3138(a5)
00003F46  48 6D CE C8                pea.l      -$3138(a5)
00003F4A  42 67                      clr.w      -(a7)
00003F4C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00003F50  2F 28 00 18                move.l     $18(a0), -(a7)
00003F54  A8 EC                      .byte      0xa8, 0xec
00003F56  60 00 00 80                bra.w      $3fd8
00003F5A  30 2D DC 56                move.w     -$23aa(a5), d0
00003F5E  57 40                      subq.w     #$3, d0
00003F60  3B 40 CE C8                move.w     d0, -$3138(a5)
00003F64  30 2D DC 5A                move.w     -$23a6(a5), d0
00003F68  56 40                      addq.w     #$3, d0
00003F6A  3B 40 CE CC                move.w     d0, -$3134(a5)
00003F6E  30 2D DC 5C                move.w     -$23a4(a5), d0
00003F72  5A 40                      addq.w     #$5, d0
00003F74  3B 40 CE CE                move.w     d0, -$3132(a5)
00003F78  30 2D DC 58                move.w     -$23a8(a5), d0
00003F7C  59 40                      subq.w     #$4, d0
00003F7E  3B 40 CE CA                move.w     d0, -$3136(a5)
00003F82  0C 2D 00 01 CF CE          cmpi.b     #$1, -$3032(a5)
00003F88  66 28                      bne.b      $3fb2
00003F8A  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00003F8E  48 68 00 02                pea.l      $2(a0)
00003F92  20 6D D3 E6                movea.l    -$2c1a(a5), a0
00003F96  48 68 00 02                pea.l      $2(a0)
00003F9A  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003F9E  48 68 00 02                pea.l      $2(a0)
00003FA2  48 6D CE D0                pea.l      -$3130(a5)
00003FA6  48 6D CE D0                pea.l      -$3130(a5)
00003FAA  48 6D CE C8                pea.l      -$3138(a5)
00003FAE  A8 17                      .byte      0xa8, 0x17
00003FB0  60 26                      bra.b      $3fd8
00003FB2  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00003FB6  48 68 00 02                pea.l      $2(a0)
00003FBA  20 6D D3 EA                movea.l    -$2c16(a5), a0
00003FBE  48 68 00 02                pea.l      $2(a0)
00003FC2  20 6D D3 FE                movea.l    -$2c02(a5), a0
00003FC6  48 68 00 02                pea.l      $2(a0)
00003FCA  48 6D CE D0                pea.l      -$3130(a5)
00003FCE  48 6D CE D0                pea.l      -$3130(a5)
00003FD2  48 6D CE C8                pea.l      -$3138(a5)
00003FD6  A8 17                      .byte      0xa8, 0x17
00003FD8  48 6D DC 8A                pea.l      -$2376(a5)
00003FDC  48 6D DC 82                pea.l      -$237e(a5)
00003FE0  48 6D DC A2                pea.l      -$235e(a5)
00003FE4  A8 AB                      .byte      0xa8, 0xab
00003FE6  48 6D DC 5E                pea.l      -$23a2(a5)
00003FEA  48 6D DC 56                pea.l      -$23aa(a5)
00003FEE  48 6D DC 76                pea.l      -$238a(a5)
00003FF2  A8 AB                      .byte      0xa8, 0xab
00003FF4  48 6D DC B6                pea.l      -$234a(a5)
00003FF8  48 6D DC AE                pea.l      -$2352(a5)
00003FFC  48 6D DD 06                pea.l      -$22fa(a5)
00004000  A8 AB                      .byte      0xa8, 0xab
00004002  0C 6D 00 3D D4 1C          cmpi.w     #$3d, -$2be4(a5)
00004008  66 0E                      bne.b      $4018
0000400A  48 6D DD 1A                pea.l      -$22e6(a5)
0000400E  48 6D DD 12                pea.l      -$22ee(a5)
00004012  48 6D DD 6A                pea.l      -$2296(a5)
00004016  A8 AB                      .byte      0xa8, 0xab
00004018  0C 2D 00 01 D4 04          cmpi.b     #$1, -$2bfc(a5)
0000401E  66 16                      bne.b      $4036
00004020  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
00004026  66 0E                      bne.b      $4036
00004028  48 6D DC 3A                pea.l      -$23c6(a5)
0000402C  48 6D DC 32                pea.l      -$23ce(a5)
00004030  48 6D DC 4A                pea.l      -$23b6(a5)
00004034  A8 AB                      .byte      0xa8, 0xab
00004036  0C 2D 00 01 D4 02          cmpi.b     #$1, -$2bfe(a5)
0000403C  66 16                      bne.b      $4054
0000403E  0C 2D 00 01 D7 A4          cmpi.b     #$1, -$285c(a5)
00004044  66 0E                      bne.b      $4054
00004046  48 6D DC 16                pea.l      -$23ea(a5)
0000404A  48 6D DC 0E                pea.l      -$23f2(a5)
0000404E  48 6D DC 26                pea.l      -$23da(a5)
00004052  A8 AB                      .byte      0xa8, 0xab
00004054  0C 2D 00 01 D7 5A          cmpi.b     #$1, -$28a6(a5)
0000405A  66 0E                      bne.b      $406a
0000405C  48 6D DB CE                pea.l      -$2432(a5)
00004060  48 6D DB C6                pea.l      -$243a(a5)
00004064  48 6D DB DE                pea.l      -$2422(a5)
00004068  A8 AB                      .byte      0xa8, 0xab
0000406A  0C 2D 00 01 D7 58          cmpi.b     #$1, -$28a8(a5)
00004070  66 0E                      bne.b      $4080
00004072  48 6D DB F2                pea.l      -$240e(a5)
00004076  48 6D DB EA                pea.l      -$2416(a5)
0000407A  48 6D DC 02                pea.l      -$23fe(a5)
0000407E  A8 AB                      .byte      0xa8, 0xab
00004080  0C 2D 00 01 D7 56          cmpi.b     #$1, -$28aa(a5)
00004086  66 0E                      bne.b      $4096
00004088  48 6D DB 86                pea.l      -$247a(a5)
0000408C  48 6D DB 7E                pea.l      -$2482(a5)
00004090  48 6D DB 96                pea.l      -$246a(a5)
00004094  A8 AB                      .byte      0xa8, 0xab
00004096  0C 2D 00 01 D7 54          cmpi.b     #$1, -$28ac(a5)
0000409C  66 0E                      bne.b      $40ac
0000409E  48 6D DB AA                pea.l      -$2456(a5)
000040A2  48 6D DB A2                pea.l      -$245e(a5)
000040A6  48 6D DB BA                pea.l      -$2446(a5)
000040AA  A8 AB                      .byte      0xa8, 0xab
000040AC  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
000040B2  66 0E                      bne.b      $40c2
000040B4  48 6D DB 5A                pea.l      -$24a6(a5)
000040B8  48 6D DB 52                pea.l      -$24ae(a5)
000040BC  48 6D DB 72                pea.l      -$248e(a5)
000040C0  A8 AB                      .byte      0xa8, 0xab
000040C2  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
000040C8  66 0E                      bne.b      $40d8
000040CA  48 6D DB 2E                pea.l      -$24d2(a5)
000040CE  48 6D DB 26                pea.l      -$24da(a5)
000040D2  48 6D DB 46                pea.l      -$24ba(a5)
000040D6  A8 AB                      .byte      0xa8, 0xab
000040D8  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
000040DE  66 0E                      bne.b      $40ee
000040E0  48 6D DB 02                pea.l      -$24fe(a5)
000040E4  48 6D DA FA                pea.l      -$2506(a5)
000040E8  48 6D DB 1A                pea.l      -$24e6(a5)
000040EC  A8 AB                      .byte      0xa8, 0xab
000040EE  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
000040F4  66 0E                      bne.b      $4104
000040F6  48 6D DA D6                pea.l      -$252a(a5)
000040FA  48 6D DA CE                pea.l      -$2532(a5)
000040FE  48 6D DA EE                pea.l      -$2512(a5)
00004102  A8 AB                      .byte      0xa8, 0xab
00004104  0C 6D 00 08 FF E0          cmpi.w     #$8, -$20(a5)
0000410A  66 0E                      bne.b      $411a
0000410C  48 6D DA AA                pea.l      -$2556(a5)
00004110  48 6D DA A2                pea.l      -$255e(a5)
00004114  48 6D DA C2                pea.l      -$253e(a5)
00004118  A8 AB                      .byte      0xa8, 0xab
0000411A  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
00004120  66 0E                      bne.b      $4130
00004122  48 6D DA 7E                pea.l      -$2582(a5)
00004126  48 6D DA 76                pea.l      -$258a(a5)
0000412A  48 6D DA 96                pea.l      -$256a(a5)
0000412E  A8 AB                      .byte      0xa8, 0xab
00004130  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00004136  66 0E                      bne.b      $4146
00004138  48 6D DA 1E                pea.l      -$25e2(a5)
0000413C  48 6D DA 16                pea.l      -$25ea(a5)
00004140  48 6D DA 46                pea.l      -$25ba(a5)
00004144  A8 AB                      .byte      0xa8, 0xab
00004146  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
0000414C  66 0E                      bne.b      $415c
0000414E  48 6D D9 E2                pea.l      -$261e(a5)
00004152  48 6D D9 DA                pea.l      -$2626(a5)
00004156  48 6D DA 0A                pea.l      -$25f6(a5)
0000415A  A8 AB                      .byte      0xa8, 0xab
0000415C  0C 2D 00 01 D9 01          cmpi.b     #$1, -$26ff(a5)
00004162  66 0E                      bne.b      $4172
00004164  48 6D D9 76                pea.l      -$268a(a5)
00004168  48 6D D9 6E                pea.l      -$2692(a5)
0000416C  48 6D D9 86                pea.l      -$267a(a5)
00004170  A8 AB                      .byte      0xa8, 0xab
00004172  0C 2D 00 01 D9 00          cmpi.b     #$1, -$2700(a5)
00004178  66 0E                      bne.b      $4188
0000417A  48 6D D9 9A                pea.l      -$2666(a5)
0000417E  48 6D D9 92                pea.l      -$266e(a5)
00004182  48 6D D9 AA                pea.l      -$2656(a5)
00004186  A8 AB                      .byte      0xa8, 0xab
00004188  0C 2D 00 01 D8 FF          cmpi.b     #$1, -$2701(a5)
0000418E  66 0E                      bne.b      $419e
00004190  48 6D D9 BE                pea.l      -$2642(a5)
00004194  48 6D D9 B6                pea.l      -$264a(a5)
00004198  48 6D D9 CE                pea.l      -$2632(a5)
0000419C  A8 AB                      .byte      0xa8, 0xab
0000419E  0C 2D 00 01 D8 FE          cmpi.b     #$1, -$2702(a5)
000041A4  66 0E                      bne.b      $41b4
000041A6  48 6D D9 0A                pea.l      -$26f6(a5)
000041AA  48 6D D9 02                pea.l      -$26fe(a5)
000041AE  48 6D D9 1A                pea.l      -$26e6(a5)
000041B2  A8 AB                      .byte      0xa8, 0xab
000041B4  0C 2D 00 01 D8 FD          cmpi.b     #$1, -$2703(a5)
000041BA  66 0E                      bne.b      $41ca
000041BC  48 6D D9 2E                pea.l      -$26d2(a5)
000041C0  48 6D D9 26                pea.l      -$26da(a5)
000041C4  48 6D D9 3E                pea.l      -$26c2(a5)
000041C8  A8 AB                      .byte      0xa8, 0xab
000041CA  0C 2D 00 01 D8 FC          cmpi.b     #$1, -$2704(a5)
000041D0  66 0E                      bne.b      $41e0
000041D2  48 6D D9 52                pea.l      -$26ae(a5)
000041D6  48 6D D9 4A                pea.l      -$26b6(a5)
000041DA  48 6D D9 62                pea.l      -$269e(a5)
000041DE  A8 AB                      .byte      0xa8, 0xab
000041E0  0C 2D 00 01 CF 6E          cmpi.b     #$1, -$3092(a5)
000041E6  66 0E                      bne.b      $41f6
000041E8  48 6D DD A2                pea.l      -$225e(a5)
000041EC  48 6D DD 9A                pea.l      -$2266(a5)
000041F0  48 6D DD B2                pea.l      -$224e(a5)
000041F4  A8 AB                      .byte      0xa8, 0xab
000041F6  0C 2D 00 01 CF 6C          cmpi.b     #$1, -$3094(a5)
000041FC  66 0E                      bne.b      $420c
000041FE  48 6D DD 7E                pea.l      -$2282(a5)
00004202  48 6D DD 76                pea.l      -$228a(a5)
00004206  48 6D DD 8E                pea.l      -$2272(a5)
0000420A  A8 AB                      .byte      0xa8, 0xab
0000420C  0C 2D 00 01 CF 5E          cmpi.b     #$1, -$30a2(a5)
00004212  66 0E                      bne.b      $4222
00004214  48 6D DE 8A                pea.l      -$2176(a5)
00004218  48 6D DE 82                pea.l      -$217e(a5)
0000421C  48 6D DE 9A                pea.l      -$2166(a5)
00004220  A8 AB                      .byte      0xa8, 0xab
00004222  0C 2D 00 01 CF 5C          cmpi.b     #$1, -$30a4(a5)
00004228  66 0E                      bne.b      $4238
0000422A  48 6D DE 66                pea.l      -$219a(a5)
0000422E  48 6D DE 5E                pea.l      -$21a2(a5)
00004232  48 6D DE 76                pea.l      -$218a(a5)
00004236  A8 AB                      .byte      0xa8, 0xab
00004238  0C 2D 00 01 CF 5A          cmpi.b     #$1, -$30a6(a5)
0000423E  66 0E                      bne.b      $424e
00004240  48 6D DE 42                pea.l      -$21be(a5)
00004244  48 6D DE 3A                pea.l      -$21c6(a5)
00004248  48 6D DE 52                pea.l      -$21ae(a5)
0000424C  A8 AB                      .byte      0xa8, 0xab
0000424E  0C 2D 00 01 CF 58          cmpi.b     #$1, -$30a8(a5)
00004254  66 0E                      bne.b      $4264
00004256  48 6D DE 1E                pea.l      -$21e2(a5)
0000425A  48 6D DE 16                pea.l      -$21ea(a5)
0000425E  48 6D DE 2E                pea.l      -$21d2(a5)
00004262  A8 AB                      .byte      0xa8, 0xab
00004264  0C 2D 00 01 D0 62          cmpi.b     #$1, -$2f9e(a5)
0000426A  66 0E                      bne.b      $427a
0000426C  48 6D DD F2                pea.l      -$220e(a5)
00004270  48 6D DD EA                pea.l      -$2216(a5)
00004274  48 6D DE 0A                pea.l      -$21f6(a5)
00004278  A8 AB                      .byte      0xa8, 0xab
0000427A  0C 2D 00 01 D0 60          cmpi.b     #$1, -$2fa0(a5)
00004280  66 0E                      bne.b      $4290
00004282  48 6D DD C6                pea.l      -$223a(a5)
00004286  48 6D DD BE                pea.l      -$2242(a5)
0000428A  48 6D DD DE                pea.l      -$2222(a5)
0000428E  A8 AB                      .byte      0xa8, 0xab
00004290  0C 2D 00 01 CF EA          cmpi.b     #$1, -$3016(a5)
00004296  66 0E                      bne.b      $42a6
00004298  48 6D DC 3A                pea.l      -$23c6(a5)
0000429C  48 6D DC 32                pea.l      -$23ce(a5)
000042A0  48 6D DC 4A                pea.l      -$23b6(a5)
000042A4  A8 AB                      .byte      0xa8, 0xab
000042A6  0C 2D 00 01 CF E8          cmpi.b     #$1, -$3018(a5)
000042AC  66 0E                      bne.b      $42bc
000042AE  48 6D DC 16                pea.l      -$23ea(a5)
000042B2  48 6D DC 0E                pea.l      -$23f2(a5)
000042B6  48 6D DC 26                pea.l      -$23da(a5)
000042BA  A8 AB                      .byte      0xa8, 0xab
000042BC  0C 2D 00 01 CF E4          cmpi.b     #$1, -$301c(a5)
000042C2  66 0E                      bne.b      $42d2
000042C4  48 6D CF B4                pea.l      -$304c(a5)
000042C8  48 6D CF BC                pea.l      -$3044(a5)
000042CC  48 6D CF AC                pea.l      -$3054(a5)
000042D0  A8 AB                      .byte      0xa8, 0xab
000042D2  0C 2D 00 01 CF A8          cmpi.b     #$1, -$3058(a5)
000042D8  66 0E                      bne.b      $42e8
000042DA  48 6D CF 82                pea.l      -$307e(a5)
000042DE  48 6D CF 8A                pea.l      -$3076(a5)
000042E2  48 6D CF 7A                pea.l      -$3086(a5)
000042E6  A8 AB                      .byte      0xa8, 0xab
000042E8  0C 2D 00 01 D0 0C          cmpi.b     #$1, -$2ff4(a5)
000042EE  66 0E                      bne.b      $42fe
000042F0  48 6D D0 16                pea.l      -$2fea(a5)
000042F4  48 6D D0 1E                pea.l      -$2fe2(a5)
000042F8  48 6D D0 0E                pea.l      -$2ff2(a5)
000042FC  A8 AB                      .byte      0xa8, 0xab
000042FE  0C 2D 00 01 CF EC          cmpi.b     #$1, -$3014(a5)
00004304  66 0E                      bne.b      $4314
00004306  48 6D CF F6                pea.l      -$300a(a5)
0000430A  48 6D CF FE                pea.l      -$3002(a5)
0000430E  48 6D CF EE                pea.l      -$3012(a5)
00004312  A8 AB                      .byte      0xa8, 0xab
00004314  0C 2D 00 01 FF F4          cmpi.b     #$1, -$c(a5)
0000431A  66 16                      bne.b      $4332
0000431C  0C 2D 00 01 D4 0E          cmpi.b     #$1, -$2bf2(a5)
00004322  66 0E                      bne.b      $4332
00004324  48 6D D6 DE                pea.l      -$2922(a5)
00004328  48 6D D6 E6                pea.l      -$291a(a5)
0000432C  48 6D D6 D6                pea.l      -$292a(a5)
00004330  A8 AB                      .byte      0xa8, 0xab
00004332  0C 2D 00 01 FF F4          cmpi.b     #$1, -$c(a5)
00004338  66 06                      bne.b      $4340
0000433A  4E B9 00 00 49 F2          jsr        $49f2.l
00004340  4A 2D FF F4                tst.b      -$c(a5)
00004344  66 28                      bne.b      $436e
00004346  48 6D DC AE                pea.l      -$2352(a5)
0000434A  48 6D DD 06                pea.l      -$22fa(a5)
0000434E  4E B9 00 00 49 98          jsr        $4998.l
00004354  0C 6D 00 3D D4 1C          cmpi.w     #$3d, -$2be4(a5)
0000435A  50 4F                      addq.w     #$8, a7
0000435C  66 10                      bne.b      $436e
0000435E  48 6D DD 12                pea.l      -$22ee(a5)
00004362  48 6D DD 6A                pea.l      -$2296(a5)
00004366  4E B9 00 00 49 98          jsr        $4998.l
0000436C  50 4F                      addq.w     #$8, a7
0000436E  0C 2D 00 01 D7 CE          cmpi.b     #$1, -$2832(a5)
00004374  66 10                      bne.b      $4386
00004376  48 6D DA 16                pea.l      -$25ea(a5)
0000437A  48 6D DA 46                pea.l      -$25ba(a5)
0000437E  4E B9 00 00 49 98          jsr        $4998.l
00004384  50 4F                      addq.w     #$8, a7
00004386  0C 2D 00 01 D7 CC          cmpi.b     #$1, -$2834(a5)
0000438C  66 10                      bne.b      $439e
0000438E  48 6D D9 DA                pea.l      -$2626(a5)
00004392  48 6D DA 0A                pea.l      -$25f6(a5)
00004396  4E B9 00 00 49 98          jsr        $4998.l
0000439C  50 4F                      addq.w     #$8, a7
0000439E  0C 2D 00 01 D9 01          cmpi.b     #$1, -$26ff(a5)
000043A4  66 10                      bne.b      $43b6
000043A6  48 6D D9 6E                pea.l      -$2692(a5)
000043AA  48 6D D9 86                pea.l      -$267a(a5)
000043AE  4E B9 00 00 49 98          jsr        $4998.l
000043B4  50 4F                      addq.w     #$8, a7
000043B6  0C 2D 00 01 D9 00          cmpi.b     #$1, -$2700(a5)
000043BC  66 10                      bne.b      $43ce
000043BE  48 6D D9 92                pea.l      -$266e(a5)
000043C2  48 6D D9 AA                pea.l      -$2656(a5)
000043C6  4E B9 00 00 49 98          jsr        $4998.l
000043CC  50 4F                      addq.w     #$8, a7
000043CE  0C 2D 00 01 D8 FF          cmpi.b     #$1, -$2701(a5)
000043D4  66 10                      bne.b      $43e6
000043D6  48 6D D9 B6                pea.l      -$264a(a5)
000043DA  48 6D D9 CE                pea.l      -$2632(a5)
000043DE  4E B9 00 00 49 98          jsr        $4998.l
000043E4  50 4F                      addq.w     #$8, a7
000043E6  0C 2D 00 01 D8 FE          cmpi.b     #$1, -$2702(a5)
000043EC  66 10                      bne.b      $43fe
000043EE  48 6D D9 02                pea.l      -$26fe(a5)
000043F2  48 6D D9 1A                pea.l      -$26e6(a5)
000043F6  4E B9 00 00 49 98          jsr        $4998.l
000043FC  50 4F                      addq.w     #$8, a7
000043FE  0C 2D 00 01 D8 FD          cmpi.b     #$1, -$2703(a5)
00004404  66 10                      bne.b      $4416
00004406  48 6D D9 26                pea.l      -$26da(a5)
0000440A  48 6D D9 3E                pea.l      -$26c2(a5)
0000440E  4E B9 00 00 49 98          jsr        $4998.l
00004414  50 4F                      addq.w     #$8, a7
00004416  0C 2D 00 01 D8 FC          cmpi.b     #$1, -$2704(a5)
0000441C  66 10                      bne.b      $442e
0000441E  48 6D D9 4A                pea.l      -$26b6(a5)
00004422  48 6D D9 62                pea.l      -$269e(a5)
00004426  4E B9 00 00 49 98          jsr        $4998.l
0000442C  50 4F                      addq.w     #$8, a7
0000442E  0C 2D 00 01 D0 62          cmpi.b     #$1, -$2f9e(a5)
00004434  66 10                      bne.b      $4446
00004436  48 6D DD EA                pea.l      -$2216(a5)
0000443A  48 6D DE 0A                pea.l      -$21f6(a5)
0000443E  4E B9 00 00 49 98          jsr        $4998.l
00004444  50 4F                      addq.w     #$8, a7
00004446  0C 2D 00 01 D0 60          cmpi.b     #$1, -$2fa0(a5)
0000444C  66 10                      bne.b      $445e
0000444E  48 6D DD BE                pea.l      -$2242(a5)
00004452  48 6D DD DE                pea.l      -$2222(a5)
00004456  4E B9 00 00 49 98          jsr        $4998.l
0000445C  50 4F                      addq.w     #$8, a7
0000445E  0C 2D 00 01 D7 5A          cmpi.b     #$1, -$28a6(a5)
00004464  66 10                      bne.b      $4476
00004466  48 6D DB C6                pea.l      -$243a(a5)
0000446A  48 6D DB DE                pea.l      -$2422(a5)
0000446E  4E B9 00 00 49 98          jsr        $4998.l
00004474  50 4F                      addq.w     #$8, a7
00004476  0C 2D 00 01 D7 58          cmpi.b     #$1, -$28a8(a5)
0000447C  66 10                      bne.b      $448e
0000447E  48 6D DB EA                pea.l      -$2416(a5)
00004482  48 6D DC 02                pea.l      -$23fe(a5)
00004486  4E B9 00 00 49 98          jsr        $4998.l
0000448C  50 4F                      addq.w     #$8, a7
0000448E  0C 2D 00 01 D7 56          cmpi.b     #$1, -$28aa(a5)
00004494  66 10                      bne.b      $44a6
00004496  48 6D DB 7E                pea.l      -$2482(a5)
0000449A  48 6D DB 96                pea.l      -$246a(a5)
0000449E  4E B9 00 00 49 98          jsr        $4998.l
000044A4  50 4F                      addq.w     #$8, a7
000044A6  0C 2D 00 01 D7 54          cmpi.b     #$1, -$28ac(a5)
000044AC  66 10                      bne.b      $44be
000044AE  48 6D DB A2                pea.l      -$245e(a5)
000044B2  48 6D DB BA                pea.l      -$2446(a5)
000044B6  4E B9 00 00 49 98          jsr        $4998.l
000044BC  50 4F                      addq.w     #$8, a7
000044BE  0C 2D 00 01 CF 6E          cmpi.b     #$1, -$3092(a5)
000044C4  66 70                      bne.b      $4536
000044C6  0C 6D 00 54 DD 9A          cmpi.w     #$54, -$2266(a5)
000044CC  6F 10                      ble.b      $44de
000044CE  48 6D DD 9A                pea.l      -$2266(a5)
000044D2  48 6D DD B2                pea.l      -$224e(a5)
000044D6  4E B9 00 00 49 98          jsr        $4998.l
000044DC  50 4F                      addq.w     #$8, a7
000044DE  0C 6D 00 5A DD 9A          cmpi.w     #$5a, -$2266(a5)
000044E4  6E 50                      bgt.b      $4536
000044E6  0C 6D 00 46 DD 9A          cmpi.w     #$46, -$2266(a5)
000044EC  6F 48                      ble.b      $4536
000044EE  20 6D D3 FA                movea.l    -$2c06(a5), a0
000044F2  48 68 00 02                pea.l      $2(a0)
000044F6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000044FA  48 68 00 02                pea.l      $2(a0)
000044FE  48 6D DD A2                pea.l      -$225e(a5)
00004502  48 6D DD A2                pea.l      -$225e(a5)
00004506  42 67                      clr.w      -(a7)
00004508  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000450C  2F 28 00 18                move.l     $18(a0), -(a7)
00004510  A8 EC                      .byte      0xa8, 0xec
00004512  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004516  48 68 00 02                pea.l      $2(a0)
0000451A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000451E  48 68 00 02                pea.l      $2(a0)
00004522  48 6D DD A2                pea.l      -$225e(a5)
00004526  48 6D DD A2                pea.l      -$225e(a5)
0000452A  42 67                      clr.w      -(a7)
0000452C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004530  2F 28 00 18                move.l     $18(a0), -(a7)
00004534  A8 EC                      .byte      0xa8, 0xec
00004536  0C 2D 00 01 CF 6C          cmpi.b     #$1, -$3094(a5)
0000453C  66 70                      bne.b      $45ae
0000453E  0C 6D 00 54 DD 76          cmpi.w     #$54, -$228a(a5)
00004544  6F 10                      ble.b      $4556
00004546  48 6D DD 76                pea.l      -$228a(a5)
0000454A  48 6D DD 8E                pea.l      -$2272(a5)
0000454E  4E B9 00 00 49 98          jsr        $4998.l
00004554  50 4F                      addq.w     #$8, a7
00004556  0C 6D 00 5A DD 76          cmpi.w     #$5a, -$228a(a5)
0000455C  6E 50                      bgt.b      $45ae
0000455E  0C 6D 00 46 DD 76          cmpi.w     #$46, -$228a(a5)
00004564  6F 48                      ble.b      $45ae
00004566  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000456A  48 68 00 02                pea.l      $2(a0)
0000456E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004572  48 68 00 02                pea.l      $2(a0)
00004576  48 6D DD 7E                pea.l      -$2282(a5)
0000457A  48 6D DD 7E                pea.l      -$2282(a5)
0000457E  42 67                      clr.w      -(a7)
00004580  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004584  2F 28 00 18                move.l     $18(a0), -(a7)
00004588  A8 EC                      .byte      0xa8, 0xec
0000458A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000458E  48 68 00 02                pea.l      $2(a0)
00004592  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004596  48 68 00 02                pea.l      $2(a0)
0000459A  48 6D DD 7E                pea.l      -$2282(a5)
0000459E  48 6D DD 7E                pea.l      -$2282(a5)
000045A2  42 67                      clr.w      -(a7)
000045A4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000045A8  2F 28 00 18                move.l     $18(a0), -(a7)
000045AC  A8 EC                      .byte      0xa8, 0xec
000045AE  0C 2D 00 01 CF 5E          cmpi.b     #$1, -$30a2(a5)
000045B4  66 10                      bne.b      $45c6
000045B6  48 6D DE 82                pea.l      -$217e(a5)
000045BA  48 6D DE 9A                pea.l      -$2166(a5)
000045BE  4E B9 00 00 49 98          jsr        $4998.l
000045C4  50 4F                      addq.w     #$8, a7
000045C6  0C 2D 00 01 CF 5C          cmpi.b     #$1, -$30a4(a5)
000045CC  66 10                      bne.b      $45de
000045CE  48 6D DE 5E                pea.l      -$21a2(a5)
000045D2  48 6D DE 76                pea.l      -$218a(a5)
000045D6  4E B9 00 00 49 98          jsr        $4998.l
000045DC  50 4F                      addq.w     #$8, a7
000045DE  0C 2D 00 01 CF 5A          cmpi.b     #$1, -$30a6(a5)
000045E4  66 10                      bne.b      $45f6
000045E6  48 6D DE 3A                pea.l      -$21c6(a5)
000045EA  48 6D DE 52                pea.l      -$21ae(a5)
000045EE  4E B9 00 00 49 98          jsr        $4998.l
000045F4  50 4F                      addq.w     #$8, a7
000045F6  0C 2D 00 01 CF 58          cmpi.b     #$1, -$30a8(a5)
000045FC  66 10                      bne.b      $460e
000045FE  48 6D DE 16                pea.l      -$21ea(a5)
00004602  48 6D DE 2E                pea.l      -$21d2(a5)
00004606  4E B9 00 00 49 98          jsr        $4998.l
0000460C  50 4F                      addq.w     #$8, a7
0000460E  0C 2D 00 01 CF EA          cmpi.b     #$1, -$3016(a5)
00004614  66 10                      bne.b      $4626
00004616  48 6D DC 32                pea.l      -$23ce(a5)
0000461A  48 6D DC 4A                pea.l      -$23b6(a5)
0000461E  4E B9 00 00 49 98          jsr        $4998.l
00004624  50 4F                      addq.w     #$8, a7
00004626  0C 2D 00 01 CF E8          cmpi.b     #$1, -$3018(a5)
0000462C  66 10                      bne.b      $463e
0000462E  48 6D DC 0E                pea.l      -$23f2(a5)
00004632  48 6D DC 26                pea.l      -$23da(a5)
00004636  4E B9 00 00 49 98          jsr        $4998.l
0000463C  50 4F                      addq.w     #$8, a7
0000463E  0C 2D 00 01 CF E4          cmpi.b     #$1, -$301c(a5)
00004644  66 10                      bne.b      $4656
00004646  48 6D CF BC                pea.l      -$3044(a5)
0000464A  48 6D CF AC                pea.l      -$3054(a5)
0000464E  4E B9 00 00 49 98          jsr        $4998.l
00004654  50 4F                      addq.w     #$8, a7
00004656  0C 2D 00 01 CF A8          cmpi.b     #$1, -$3058(a5)
0000465C  66 10                      bne.b      $466e
0000465E  48 6D CF 8A                pea.l      -$3076(a5)
00004662  48 6D CF 7A                pea.l      -$3086(a5)
00004666  4E B9 00 00 49 98          jsr        $4998.l
0000466C  50 4F                      addq.w     #$8, a7
0000466E  0C 2D 00 01 CF E6          cmpi.b     #$1, -$301a(a5)
00004674  66 00 00 88                bne.w      $46fe
00004678  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000467C  48 68 00 02                pea.l      $2(a0)
00004680  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004684  48 68 00 02                pea.l      $2(a0)
00004688  48 6D CF D4                pea.l      -$302c(a5)
0000468C  48 6D CF D4                pea.l      -$302c(a5)
00004690  42 67                      clr.w      -(a7)
00004692  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004696  2F 28 00 18                move.l     $18(a0), -(a7)
0000469A  A8 EC                      .byte      0xa8, 0xec
0000469C  59 4F                      subq.w     #$4, a7
0000469E  A9 75                      .byte      0xa9, 0x75
000046A0  20 1F                      move.l     (a7)+, d0
000046A2  90 AD CF D0                sub.l      -$3030(a5), d0
000046A6  72 64                      moveq      #$64, d1
000046A8  B0 81                      cmp.l      d1, d0
000046AA  63 52                      bls.b      $46fe
000046AC  42 2D CF E6                clr.b      -$301a(a5)
000046B0  1B 7C 00 01 FF DA          move.b     #$1, -$26(a5)
000046B6  20 6D D3 FA                movea.l    -$2c06(a5), a0
000046BA  48 68 00 02                pea.l      $2(a0)
000046BE  20 6D D3 FE                movea.l    -$2c02(a5), a0
000046C2  48 68 00 02                pea.l      $2(a0)
000046C6  48 6D CF D4                pea.l      -$302c(a5)
000046CA  48 6D CF D4                pea.l      -$302c(a5)
000046CE  42 67                      clr.w      -(a7)
000046D0  20 6D D3 DE                movea.l    -$2c22(a5), a0
000046D4  2F 28 00 18                move.l     $18(a0), -(a7)
000046D8  A8 EC                      .byte      0xa8, 0xec
000046DA  20 6D D3 FE                movea.l    -$2c02(a5), a0
000046DE  48 68 00 02                pea.l      $2(a0)
000046E2  20 6D D3 DE                movea.l    -$2c22(a5), a0
000046E6  48 68 00 02                pea.l      $2(a0)
000046EA  48 6D CF D4                pea.l      -$302c(a5)
000046EE  48 6D CF D4                pea.l      -$302c(a5)
000046F2  42 67                      clr.w      -(a7)
000046F4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000046F8  2F 28 00 18                move.l     $18(a0), -(a7)
000046FC  A8 EC                      .byte      0xa8, 0xec
000046FE  0C 2D 00 01 CF AA          cmpi.b     #$1, -$3056(a5)
00004704  66 00 00 88                bne.w      $478e
00004708  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000470C  48 68 00 02                pea.l      $2(a0)
00004710  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004714  48 68 00 02                pea.l      $2(a0)
00004718  48 6D CF A0                pea.l      -$3060(a5)
0000471C  48 6D CF A0                pea.l      -$3060(a5)
00004720  42 67                      clr.w      -(a7)
00004722  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004726  2F 28 00 18                move.l     $18(a0), -(a7)
0000472A  A8 EC                      .byte      0xa8, 0xec
0000472C  59 4F                      subq.w     #$4, a7
0000472E  A9 75                      .byte      0xa9, 0x75
00004730  20 1F                      move.l     (a7)+, d0
00004732  90 AD CF 9C                sub.l      -$3064(a5), d0
00004736  72 64                      moveq      #$64, d1
00004738  B0 81                      cmp.l      d1, d0
0000473A  63 52                      bls.b      $478e
0000473C  42 2D CF AA                clr.b      -$3056(a5)
00004740  1B 7C 00 01 FF DC          move.b     #$1, -$24(a5)
00004746  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000474A  48 68 00 02                pea.l      $2(a0)
0000474E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004752  48 68 00 02                pea.l      $2(a0)
00004756  48 6D CF A0                pea.l      -$3060(a5)
0000475A  48 6D CF A0                pea.l      -$3060(a5)
0000475E  42 67                      clr.w      -(a7)
00004760  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004764  2F 28 00 18                move.l     $18(a0), -(a7)
00004768  A8 EC                      .byte      0xa8, 0xec
0000476A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000476E  48 68 00 02                pea.l      $2(a0)
00004772  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004776  48 68 00 02                pea.l      $2(a0)
0000477A  48 6D CF A0                pea.l      -$3060(a5)
0000477E  48 6D CF A0                pea.l      -$3060(a5)
00004782  42 67                      clr.w      -(a7)
00004784  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004788  2F 28 00 18                move.l     $18(a0), -(a7)
0000478C  A8 EC                      .byte      0xa8, 0xec
0000478E  0C 2D 00 01 D0 0C          cmpi.b     #$1, -$2ff4(a5)
00004794  66 10                      bne.b      $47a6
00004796  48 6D D0 1E                pea.l      -$2fe2(a5)
0000479A  48 6D D0 0E                pea.l      -$2ff2(a5)
0000479E  4E B9 00 00 49 98          jsr        $4998.l
000047A4  50 4F                      addq.w     #$8, a7
000047A6  0C 2D 00 01 CF EC          cmpi.b     #$1, -$3014(a5)
000047AC  66 10                      bne.b      $47be
000047AE  48 6D CF FE                pea.l      -$3002(a5)
000047B2  48 6D CF EE                pea.l      -$3012(a5)
000047B6  4E B9 00 00 49 98          jsr        $4998.l
000047BC  50 4F                      addq.w     #$8, a7
000047BE  0C 2D 00 01 D4 04          cmpi.b     #$1, -$2bfc(a5)
000047C4  66 7C                      bne.b      $4842
000047C6  0C 2D 00 01 D7 AC          cmpi.b     #$1, -$2854(a5)
000047CC  66 10                      bne.b      $47de
000047CE  48 6D DC 32                pea.l      -$23ce(a5)
000047D2  48 6D DC 4A                pea.l      -$23b6(a5)
000047D6  4E B9 00 00 49 98          jsr        $4998.l
000047DC  50 4F                      addq.w     #$8, a7
000047DE  0C 2D 00 01 D7 AA          cmpi.b     #$1, -$2856(a5)
000047E4  66 5C                      bne.b      $4842
000047E6  30 2D FF E0                move.w     -$20(a5), d0
000047EA  53 40                      subq.w     #$1, d0
000047EC  67 0E                      beq.b      $47fc
000047EE  53 40                      subq.w     #$1, d0
000047F0  67 1C                      beq.b      $480e
000047F2  55 40                      subq.w     #$2, d0
000047F4  67 2A                      beq.b      $4820
000047F6  59 40                      subq.w     #$4, d0
000047F8  67 38                      beq.b      $4832
000047FA  60 46                      bra.b      $4842
000047FC  48 6D DB C6                pea.l      -$243a(a5)
00004800  48 6D DB DE                pea.l      -$2422(a5)
00004804  4E B9 00 00 49 98          jsr        $4998.l
0000480A  50 4F                      addq.w     #$8, a7
0000480C  60 34                      bra.b      $4842
0000480E  48 6D DA FA                pea.l      -$2506(a5)
00004812  48 6D DB 1A                pea.l      -$24e6(a5)
00004816  4E B9 00 00 49 98          jsr        $4998.l
0000481C  50 4F                      addq.w     #$8, a7
0000481E  60 22                      bra.b      $4842
00004820  48 6D DB 52                pea.l      -$24ae(a5)
00004824  48 6D DB 72                pea.l      -$248e(a5)
00004828  4E B9 00 00 49 98          jsr        $4998.l
0000482E  50 4F                      addq.w     #$8, a7
00004830  60 10                      bra.b      $4842
00004832  48 6D DA A2                pea.l      -$255e(a5)
00004836  48 6D DA C2                pea.l      -$253e(a5)
0000483A  4E B9 00 00 49 98          jsr        $4998.l
00004840  50 4F                      addq.w     #$8, a7
00004842  0C 2D 00 01 D4 02          cmpi.b     #$1, -$2bfe(a5)
00004848  66 64                      bne.b      $48ae
0000484A  0C 2D 00 01 D7 A4          cmpi.b     #$1, -$285c(a5)
00004850  66 10                      bne.b      $4862
00004852  48 6D DC 0E                pea.l      -$23f2(a5)
00004856  48 6D DC 26                pea.l      -$23da(a5)
0000485A  4E B9 00 00 49 98          jsr        $4998.l
00004860  50 4F                      addq.w     #$8, a7
00004862  0C 2D 00 01 D7 A2          cmpi.b     #$1, -$285e(a5)
00004868  66 44                      bne.b      $48ae
0000486A  30 2D FF E2                move.w     -$1e(a5), d0
0000486E  55 40                      subq.w     #$2, d0
00004870  67 0A                      beq.b      $487c
00004872  55 40                      subq.w     #$2, d0
00004874  67 18                      beq.b      $488e
00004876  59 40                      subq.w     #$4, d0
00004878  67 24                      beq.b      $489e
0000487A  60 32                      bra.b      $48ae
0000487C  48 6D DA CE                pea.l      -$2532(a5)
00004880  48 6D DA EE                pea.l      -$2512(a5)
00004884  4E B9 00 00 49 98          jsr        $4998.l
0000488A  50 4F                      addq.w     #$8, a7
0000488C  60 20                      bra.b      $48ae
0000488E  48 6D DB 26                pea.l      -$24da(a5)
00004892  48 6D DB 46                pea.l      -$24ba(a5)
00004896  4E B9 00 00 49 98          jsr        $4998.l
0000489C  50 4F                      addq.w     #$8, a7
0000489E  48 6D DA 76                pea.l      -$258a(a5)
000048A2  48 6D DA 96                pea.l      -$256a(a5)
000048A6  4E B9 00 00 49 98          jsr        $4998.l
000048AC  50 4F                      addq.w     #$8, a7
000048AE  0C 2D 00 01 D7 8A          cmpi.b     #$1, -$2876(a5)
000048B4  66 2A                      bne.b      $48e0
000048B6  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
000048BC  66 12                      bne.b      $48d0
000048BE  48 6D D8 86                pea.l      -$277a(a5)
000048C2  48 6D D8 86                pea.l      -$277a(a5)
000048C6  4E B9 00 00 49 98          jsr        $4998.l
000048CC  50 4F                      addq.w     #$8, a7
000048CE  60 10                      bra.b      $48e0
000048D0  48 6D D7 6E                pea.l      -$2892(a5)
000048D4  48 6D D7 6E                pea.l      -$2892(a5)
000048D8  4E B9 00 00 49 98          jsr        $4998.l
000048DE  50 4F                      addq.w     #$8, a7
000048E0  0C 2D 00 01 D7 8C          cmpi.b     #$1, -$2874(a5)
000048E6  66 2A                      bne.b      $4912
000048E8  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
000048EE  66 12                      bne.b      $4902
000048F0  48 6D D8 8E                pea.l      -$2772(a5)
000048F4  48 6D D8 8E                pea.l      -$2772(a5)
000048F8  4E B9 00 00 49 98          jsr        $4998.l
000048FE  50 4F                      addq.w     #$8, a7
00004900  60 10                      bra.b      $4912
00004902  48 6D D7 76                pea.l      -$288a(a5)
00004906  48 6D D7 76                pea.l      -$288a(a5)
0000490A  4E B9 00 00 49 98          jsr        $4998.l
00004910  50 4F                      addq.w     #$8, a7
00004912  0C 2D 00 01 D7 80          cmpi.b     #$1, -$2880(a5)
00004918  66 20                      bne.b      $493a
0000491A  48 6D DC A2                pea.l      -$235e(a5)
0000491E  48 6D CE C0                pea.l      -$3140(a5)
00004922  48 6E FF F8                pea.l      -$8(a6)
00004926  A8 AB                      .byte      0xa8, 0xab
00004928  48 6E FF F8                pea.l      -$8(a6)
0000492C  48 6E FF F8                pea.l      -$8(a6)
00004930  4E B9 00 00 49 98          jsr        $4998.l
00004936  50 4F                      addq.w     #$8, a7
00004938  60 10                      bra.b      $494a
0000493A  48 6D DC 82                pea.l      -$237e(a5)
0000493E  48 6D DC A2                pea.l      -$235e(a5)
00004942  4E B9 00 00 49 98          jsr        $4998.l
00004948  50 4F                      addq.w     #$8, a7
0000494A  0C 2D 00 01 D7 7E          cmpi.b     #$1, -$2882(a5)
00004950  66 20                      bne.b      $4972
00004952  48 6D DC 76                pea.l      -$238a(a5)
00004956  48 6D CE C8                pea.l      -$3138(a5)
0000495A  48 6E FF F8                pea.l      -$8(a6)
0000495E  A8 AB                      .byte      0xa8, 0xab
00004960  48 6E FF F8                pea.l      -$8(a6)
00004964  48 6E FF F8                pea.l      -$8(a6)
00004968  4E B9 00 00 49 98          jsr        $4998.l
0000496E  50 4F                      addq.w     #$8, a7
00004970  60 10                      bra.b      $4982
00004972  48 6D DC 56                pea.l      -$23aa(a5)
00004976  48 6D DC 76                pea.l      -$238a(a5)
0000497A  4E B9 00 00 49 98          jsr        $4998.l
00004980  50 4F                      addq.w     #$8, a7
00004982  4E 5E                      unlk       a6
00004984  4E 75                      rts

; MacsBug symbol trailer for ShowEverything: 8E 53 68 6F 77 45 76 65 72 79 74 68 69 6E 67

CopyOne: ; 00004998..000049E8
00004998  4E 56 00 00                link.w     a6, #$0
0000499C  20 6D D3 FE                movea.l    -$2c02(a5), a0
000049A0  48 68 00 02                pea.l      $2(a0)
000049A4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000049A8  48 68 00 02                pea.l      $2(a0)
000049AC  2F 2E 00 08                move.l     $8(a6), -(a7)
000049B0  2F 2E 00 08                move.l     $8(a6), -(a7)
000049B4  42 67                      clr.w      -(a7)
000049B6  20 6D D3 DE                movea.l    -$2c22(a5), a0
000049BA  2F 28 00 18                move.l     $18(a0), -(a7)
000049BE  A8 EC                      .byte      0xa8, 0xec
000049C0  20 6D D3 FA                movea.l    -$2c06(a5), a0
000049C4  48 68 00 02                pea.l      $2(a0)
000049C8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000049CC  48 68 00 02                pea.l      $2(a0)
000049D0  2F 2E 00 0C                move.l     $c(a6), -(a7)
000049D4  2F 2E 00 0C                move.l     $c(a6), -(a7)
000049D8  42 67                      clr.w      -(a7)
000049DA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000049DE  2F 28 00 18                move.l     $18(a0), -(a7)
000049E2  A8 EC                      .byte      0xa8, 0xec
000049E4  4E 5E                      unlk       a6
000049E6  4E 75                      rts

; MacsBug symbol trailer for CopyOne: 87 43 6F 70 79 4F 6E 65

CopyFight: ; 000049F2..00004A42
000049F2  4E 56 00 00                link.w     a6, #$0
000049F6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000049FA  48 68 00 02                pea.l      $2(a0)
000049FE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004A02  48 68 00 02                pea.l      $2(a0)
00004A06  48 6D D6 D6                pea.l      -$292a(a5)
00004A0A  48 6D D6 D6                pea.l      -$292a(a5)
00004A0E  42 67                      clr.w      -(a7)
00004A10  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004A14  2F 28 00 18                move.l     $18(a0), -(a7)
00004A18  A8 EC                      .byte      0xa8, 0xec
00004A1A  20 6D D3 FA                movea.l    -$2c06(a5), a0
00004A1E  48 68 00 02                pea.l      $2(a0)
00004A22  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004A26  48 68 00 02                pea.l      $2(a0)
00004A2A  48 6D D6 E6                pea.l      -$291a(a5)
00004A2E  48 6D D6 E6                pea.l      -$291a(a5)
00004A32  42 67                      clr.w      -(a7)
00004A34  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004A38  2F 28 00 18                move.l     $18(a0), -(a7)
00004A3C  A8 EC                      .byte      0xa8, 0xec
00004A3E  4E 5E                      unlk       a6
00004A40  4E 75                      rts

; MacsBug symbol trailer for CopyFight: 89 43 6F 70 79 46 69 67 68 74

InitializeEverything: ; 00004A4E..00004A78
00004A4E  4E 56 00 00                link.w     a6, #$0
00004A52  4E B9 00 00 00 D8          jsr        $d8.l
00004A58  4E BA CB B0                jsr        $160a(pc)
00004A5C  4E B9 00 00 AD C8          jsr        $adc8.l
00004A62  4E B9 00 00 A7 F8          jsr        $a7f8.l
00004A68  4E B9 00 00 B7 E0          jsr        $b7e0.l
00004A6E  4E B9 00 00 A7 AC          jsr        $a7ac.l
00004A74  4E 5E                      unlk       a6
00004A76  4E 75                      rts

; MacsBug symbol trailer for InitializeEverything: 94 49 6E 69 74 69 61 6C 69 7A 65 45 76 65 72 79 74 68 69 6E 67

DoDelay: ; 00004A90..00004AB0
00004A90  4E 56 00 00                link.w     a6, #$0
00004A94  59 4F                      subq.w     #$4, a7
00004A96  A9 75                      .byte      0xa9, 0x75
00004A98  20 1F                      move.l     (a7)+, d0
00004A9A  B0 AD D4 22                cmp.l      -$2bde(a5), d0
00004A9E  65 F4                      bcs.b      $4a94
00004AA0  59 4F                      subq.w     #$4, a7
00004AA2  A9 75                      .byte      0xa9, 0x75
00004AA4  20 1F                      move.l     (a7)+, d0
00004AA6  52 80                      addq.l     #$1, d0
00004AA8  2B 40 D4 22                move.l     d0, -$2bde(a5)
00004AAC  4E 5E                      unlk       a6
00004AAE  4E 75                      rts

; MacsBug symbol trailer for DoDelay: 87 44 6F 44 65 6C 61 79

DoDelay2: ; 00004ABA..00004ADA
00004ABA  4E 56 00 00                link.w     a6, #$0
00004ABE  59 4F                      subq.w     #$4, a7
00004AC0  A9 75                      .byte      0xa9, 0x75
00004AC2  20 1F                      move.l     (a7)+, d0
00004AC4  B0 AD D4 22                cmp.l      -$2bde(a5), d0
00004AC8  65 F4                      bcs.b      $4abe
00004ACA  59 4F                      subq.w     #$4, a7
00004ACC  A9 75                      .byte      0xa9, 0x75
00004ACE  20 1F                      move.l     (a7)+, d0
00004AD0  54 80                      addq.l     #$2, d0
00004AD2  2B 40 D4 22                move.l     d0, -$2bde(a5)
00004AD6  4E 5E                      unlk       a6
00004AD8  4E 75                      rts

; MacsBug symbol trailer for DoDelay2: 88 44 6F 44 65 6C 61 79 32

InitSelectCrap: ; 00004AE6..00004BF6
00004AE6  4E 56 FF F8                link.w     a6, #$fff8
00004AEA  48 6E FF F8                pea.l      -$8(a6)
00004AEE  42 A7                      clr.l      -(a7)
00004AF0  2F 3C 00 C8 00 74          move.l     #$c80074, -(a7)
00004AF6  A8 A7                      .byte      0xa8, 0xa7
00004AF8  3F 3C 00 C9                move.w     #$c9, -(a7)
00004AFC  4E B9 00 00 7D F2          jsr        $7df2.l
00004B02  48 6D D7 FC                pea.l      -$2804(a5)
00004B06  48 6D D3 F6                pea.l      -$2c0a(a5)
00004B0A  3F 3C 03 84                move.w     #$384, -(a7)
00004B0E  4E B9 00 00 7E E0          jsr        $7ee0.l
00004B14  48 6D D7 FC                pea.l      -$2804(a5)
00004B18  48 6D D3 F2                pea.l      -$2c0e(a5)
00004B1C  3F 3C 03 85                move.w     #$385, -(a7)
00004B20  4E B9 00 00 7E E0          jsr        $7ee0.l
00004B26  48 6E FF F8                pea.l      -$8(a6)
00004B2A  48 6D D3 EA                pea.l      -$2c16(a5)
00004B2E  3F 3C 03 86                move.w     #$386, -(a7)
00004B32  4E B9 00 00 7E E0          jsr        $7ee0.l
00004B38  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00004B3C  48 68 00 02                pea.l      $2(a0)
00004B40  20 6D D3 EA                movea.l    -$2c16(a5), a0
00004B44  48 68 00 02                pea.l      $2(a0)
00004B48  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004B4C  48 68 00 02                pea.l      $2(a0)
00004B50  30 2D FF E0                move.w     -$20(a5), d0
00004B54  53 40                      subq.w     #$1, d0
00004B56  48 C0                      ext.l      d0
00004B58  E7 88                      lsl.l      #$3, d0
00004B5A  41 ED D5 16                lea.l      -$2aea(a5), a0
00004B5E  D1 C0                      adda.l     d0, a0
00004B60  48 50                      pea.l      (a0)
00004B62  48 6D D5 16                pea.l      -$2aea(a5)
00004B66  48 6D D5 0E                pea.l      -$2af2(a5)
00004B6A  A8 17                      .byte      0xa8, 0x17
00004B6C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004B70  48 68 00 02                pea.l      $2(a0)
00004B74  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004B78  48 68 00 02                pea.l      $2(a0)
00004B7C  48 6D D5 0E                pea.l      -$2af2(a5)
00004B80  48 6D D5 0E                pea.l      -$2af2(a5)
00004B84  42 67                      clr.w      -(a7)
00004B86  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004B8A  2F 28 00 18                move.l     $18(a0), -(a7)
00004B8E  A8 EC                      .byte      0xa8, 0xec
00004B90  4A 2D FF DE                tst.b      -$22(a5)
00004B94  4F EF 00 20                lea.l      $20(a7), a7
00004B98  66 58                      bne.b      $4bf2
00004B9A  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00004B9E  48 68 00 02                pea.l      $2(a0)
00004BA2  20 6D D3 EA                movea.l    -$2c16(a5), a0
00004BA6  48 68 00 02                pea.l      $2(a0)
00004BAA  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004BAE  48 68 00 02                pea.l      $2(a0)
00004BB2  30 2D FF E2                move.w     -$1e(a5), d0
00004BB6  53 40                      subq.w     #$1, d0
00004BB8  48 C0                      ext.l      d0
00004BBA  E7 88                      lsl.l      #$3, d0
00004BBC  41 ED D5 16                lea.l      -$2aea(a5), a0
00004BC0  D1 C0                      adda.l     d0, a0
00004BC2  48 50                      pea.l      (a0)
00004BC4  48 6D D5 16                pea.l      -$2aea(a5)
00004BC8  48 6D D5 06                pea.l      -$2afa(a5)
00004BCC  A8 17                      .byte      0xa8, 0x17
00004BCE  20 6D D3 FE                movea.l    -$2c02(a5), a0
00004BD2  48 68 00 02                pea.l      $2(a0)
00004BD6  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004BDA  48 68 00 02                pea.l      $2(a0)
00004BDE  48 6D D5 06                pea.l      -$2afa(a5)
00004BE2  48 6D D5 06                pea.l      -$2afa(a5)
00004BE6  42 67                      clr.w      -(a7)
00004BE8  20 6D D3 DE                movea.l    -$2c22(a5), a0
00004BEC  2F 28 00 18                move.l     $18(a0), -(a7)
00004BF0  A8 EC                      .byte      0xa8, 0xec
00004BF2  4E 5E                      unlk       a6
00004BF4  4E 75                      rts

; MacsBug symbol trailer for InitSelectCrap: 8E 49 6E 69 74 53 65 6C 65 63 74 43 72 61 70

InitGameCrap: ; 00004C08..00004D10
00004C08  4E 56 00 00                link.w     a6, #$0
00004C0C  0C 6D 00 40 D4 1C          cmpi.w     #$40, -$2be4(a5)
00004C12  66 10                      bne.b      $4c24
00004C14  3F 3C 00 D3                move.w     #$d3, -(a7)
00004C18  4E B9 00 00 7D F2          jsr        $7df2.l
00004C1E  54 4F                      addq.w     #$2, a7
00004C20  60 00 00 82                bra.w      $4ca4
00004C24  0C 6D 00 41 D4 1C          cmpi.w     #$41, -$2be4(a5)
00004C2A  66 0E                      bne.b      $4c3a
00004C2C  3F 3C 00 D2                move.w     #$d2, -(a7)
00004C30  4E B9 00 00 7D F2          jsr        $7df2.l
00004C36  54 4F                      addq.w     #$2, a7
00004C38  60 6A                      bra.b      $4ca4
00004C3A  0C 6D 00 42 D4 1C          cmpi.w     #$42, -$2be4(a5)
00004C40  66 0E                      bne.b      $4c50
00004C42  3F 3C 00 D4                move.w     #$d4, -(a7)
00004C46  4E B9 00 00 7D F2          jsr        $7df2.l
00004C4C  54 4F                      addq.w     #$2, a7
00004C4E  60 54                      bra.b      $4ca4
00004C50  0C 6D 00 43 D4 1C          cmpi.w     #$43, -$2be4(a5)
00004C56  66 0E                      bne.b      $4c66
00004C58  3F 3C 00 D5                move.w     #$d5, -(a7)
00004C5C  4E B9 00 00 7D F2          jsr        $7df2.l
00004C62  54 4F                      addq.w     #$2, a7
00004C64  60 3E                      bra.b      $4ca4
00004C66  0C 6D 00 44 D4 1C          cmpi.w     #$44, -$2be4(a5)
00004C6C  66 0E                      bne.b      $4c7c
00004C6E  3F 3C 00 D6                move.w     #$d6, -(a7)
00004C72  4E B9 00 00 7D F2          jsr        $7df2.l
00004C78  54 4F                      addq.w     #$2, a7
00004C7A  60 28                      bra.b      $4ca4
00004C7C  0C 6D 00 45 D4 1C          cmpi.w     #$45, -$2be4(a5)
00004C82  66 0E                      bne.b      $4c92
00004C84  3F 3C 00 D7                move.w     #$d7, -(a7)
00004C88  4E B9 00 00 7D F2          jsr        $7df2.l
00004C8E  54 4F                      addq.w     #$2, a7
00004C90  60 12                      bra.b      $4ca4
00004C92  30 2D CE DE                move.w     -$3122(a5), d0
00004C96  06 40 00 CF                addi.w     #$cf, d0
00004C9A  3F 00                      move.w     d0, -(a7)
00004C9C  4E B9 00 00 7D F2          jsr        $7df2.l
00004CA2  54 4F                      addq.w     #$2, a7
00004CA4  48 6D D7 FC                pea.l      -$2804(a5)
00004CA8  48 6D D3 F6                pea.l      -$2c0a(a5)
00004CAC  30 2D FF E0                move.w     -$20(a5), d0
00004CB0  06 40 03 E7                addi.w     #$3e7, d0
00004CB4  3F 00                      move.w     d0, -(a7)
00004CB6  4E B9 00 00 7E E0          jsr        $7ee0.l
00004CBC  48 6D D7 FC                pea.l      -$2804(a5)
00004CC0  48 6D D3 F2                pea.l      -$2c0e(a5)
00004CC4  30 2D FF E2                move.w     -$1e(a5), d0
00004CC8  06 40 07 CF                addi.w     #$7cf, d0
00004CCC  3F 00                      move.w     d0, -(a7)
00004CCE  4E B9 00 00 7E E0          jsr        $7ee0.l
00004CD4  48 6D D7 FC                pea.l      -$2804(a5)
00004CD8  48 6D D3 EA                pea.l      -$2c16(a5)
00004CDC  30 2D FF E0                move.w     -$20(a5), d0
00004CE0  06 40 05 DB                addi.w     #$5db, d0
00004CE4  3F 00                      move.w     d0, -(a7)
00004CE6  4E B9 00 00 7E E0          jsr        $7ee0.l
00004CEC  48 6D D7 FC                pea.l      -$2804(a5)
00004CF0  48 6D D3 E6                pea.l      -$2c1a(a5)
00004CF4  30 2D FF E2                move.w     -$1e(a5), d0
00004CF8  06 40 09 C3                addi.w     #$9c3, d0
00004CFC  3F 00                      move.w     d0, -(a7)
00004CFE  4E B9 00 00 7E E0          jsr        $7ee0.l
00004D04  A9 75                      .byte      0xa9, 0x75
00004D06  20 1F                      move.l     (a7)+, d0
00004D08  2B 40 D4 0A                move.l     d0, -$2bf6(a5)
00004D0C  4E 5E                      unlk       a6
00004D0E  4E 75                      rts

; MacsBug symbol trailer for InitGameCrap: 8C 49 6E 69 74 47 61 6D 65 43 72 61 70

DrawInNames: ; 00004D20..000050E4
00004D20  4E 56 00 00                link.w     a6, #$0
00004D24  30 2D FF E0                move.w     -$20(a5), d0
00004D28  0C 40 00 10                cmpi.w     #$10, d0
00004D2C  62 00 01 E2                bhi.w      $4f10
00004D30  D0 40                      add.w      d0, d0
00004D32  30 3B 00 06                move.w     $4d3a(pc, d0.w), d0
00004D36  4E FB 00 02                jmp        $4d3a(pc, d0.w)
00004D3A  01 D6                      bset.b     d0, (a6)
00004D3C  00 22 00 3E                ori.b      #$3e, -(a2)
00004D40  00 5A 00 76                ori.w      #$76, (a2)+
00004D44  00 92 00 AE 00 CA          ori.l      #$ae00ca, (a2)
00004D4A  00 E6                      .byte      0x00, 0xe6
00004D4C  01 02                      btst.l     d0, d2
00004D4E  01 1E                      btst.l     d0, (a6)+
00004D50  01 3A 01 56                btst.l     d0, $4ea8(pc)
00004D54  01 70 01 8A 01 A4          bchg.b     d0, ([, d0.w], $1a4)
00004D5A  01 BE                      .byte      0x01, 0xbe
00004D5C  3F 3C 00 0F                move.w     #$f, -(a7)
00004D60  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004D66  48 6D E1 E4                pea.l      -$1e1c(a5)
00004D6A  4E B9 00 00 00 F8          jsr        $f8.l
00004D70  4F EF 00 0A                lea.l      $a(a7), a7
00004D74  60 00 01 9A                bra.w      $4f10
00004D78  3F 3C 00 0F                move.w     #$f, -(a7)
00004D7C  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004D82  48 6D E1 F0                pea.l      -$1e10(a5)
00004D86  4E B9 00 00 00 F8          jsr        $f8.l
00004D8C  4F EF 00 0A                lea.l      $a(a7), a7
00004D90  60 00 01 7E                bra.w      $4f10
00004D94  3F 3C 00 0F                move.w     #$f, -(a7)
00004D98  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004D9E  48 6D E1 F7                pea.l      -$1e09(a5)
00004DA2  4E B9 00 00 00 F8          jsr        $f8.l
00004DA8  4F EF 00 0A                lea.l      $a(a7), a7
00004DAC  60 00 01 62                bra.w      $4f10
00004DB0  3F 3C 00 0F                move.w     #$f, -(a7)
00004DB4  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004DBA  48 6D E2 00                pea.l      -$1e00(a5)
00004DBE  4E B9 00 00 00 F8          jsr        $f8.l
00004DC4  4F EF 00 0A                lea.l      $a(a7), a7
00004DC8  60 00 01 46                bra.w      $4f10
00004DCC  3F 3C 00 0F                move.w     #$f, -(a7)
00004DD0  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004DD6  48 6D E2 09                pea.l      -$1df7(a5)
00004DDA  4E B9 00 00 00 F8          jsr        $f8.l
00004DE0  4F EF 00 0A                lea.l      $a(a7), a7
00004DE4  60 00 01 2A                bra.w      $4f10
00004DE8  3F 3C 00 0F                move.w     #$f, -(a7)
00004DEC  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004DF2  48 6D E2 0E                pea.l      -$1df2(a5)
00004DF6  4E B9 00 00 00 F8          jsr        $f8.l
00004DFC  4F EF 00 0A                lea.l      $a(a7), a7
00004E00  60 00 01 0E                bra.w      $4f10
00004E04  3F 3C 00 0F                move.w     #$f, -(a7)
00004E08  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E0E  48 6D E2 14                pea.l      -$1dec(a5)
00004E12  4E B9 00 00 00 F8          jsr        $f8.l
00004E18  4F EF 00 0A                lea.l      $a(a7), a7
00004E1C  60 00 00 F2                bra.w      $4f10
00004E20  3F 3C 00 0F                move.w     #$f, -(a7)
00004E24  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E2A  48 6D E2 1B                pea.l      -$1de5(a5)
00004E2E  4E B9 00 00 00 F8          jsr        $f8.l
00004E34  4F EF 00 0A                lea.l      $a(a7), a7
00004E38  60 00 00 D6                bra.w      $4f10
00004E3C  3F 3C 00 0F                move.w     #$f, -(a7)
00004E40  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E46  48 6D E2 24                pea.l      -$1ddc(a5)
00004E4A  4E B9 00 00 00 F8          jsr        $f8.l
00004E50  4F EF 00 0A                lea.l      $a(a7), a7
00004E54  60 00 00 BA                bra.w      $4f10
00004E58  3F 3C 00 0F                move.w     #$f, -(a7)
00004E5C  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E62  48 6D E2 2A                pea.l      -$1dd6(a5)
00004E66  4E B9 00 00 00 F8          jsr        $f8.l
00004E6C  4F EF 00 0A                lea.l      $a(a7), a7
00004E70  60 00 00 9E                bra.w      $4f10
00004E74  3F 3C 00 0F                move.w     #$f, -(a7)
00004E78  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E7E  48 6D E2 35                pea.l      -$1dcb(a5)
00004E82  4E B9 00 00 00 F8          jsr        $f8.l
00004E88  4F EF 00 0A                lea.l      $a(a7), a7
00004E8C  60 00 00 82                bra.w      $4f10
00004E90  3F 3C 00 0F                move.w     #$f, -(a7)
00004E94  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004E9A  48 6D E2 3C                pea.l      -$1dc4(a5)
00004E9E  4E B9 00 00 00 F8          jsr        $f8.l
00004EA4  4F EF 00 0A                lea.l      $a(a7), a7
00004EA8  60 66                      bra.b      $4f10
00004EAA  3F 3C 00 0F                move.w     #$f, -(a7)
00004EAE  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004EB4  48 6D E2 44                pea.l      -$1dbc(a5)
00004EB8  4E B9 00 00 00 F8          jsr        $f8.l
00004EBE  4F EF 00 0A                lea.l      $a(a7), a7
00004EC2  60 4C                      bra.b      $4f10
00004EC4  3F 3C 00 0F                move.w     #$f, -(a7)
00004EC8  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004ECE  48 6D E2 4A                pea.l      -$1db6(a5)
00004ED2  4E B9 00 00 00 F8          jsr        $f8.l
00004ED8  4F EF 00 0A                lea.l      $a(a7), a7
00004EDC  60 32                      bra.b      $4f10
00004EDE  3F 3C 00 0F                move.w     #$f, -(a7)
00004EE2  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004EE8  48 6D E2 54                pea.l      -$1dac(a5)
00004EEC  4E B9 00 00 00 F8          jsr        $f8.l
00004EF2  4F EF 00 0A                lea.l      $a(a7), a7
00004EF6  60 18                      bra.b      $4f10
00004EF8  3F 3C 00 0F                move.w     #$f, -(a7)
00004EFC  2F 3C 00 1E 00 23          move.l     #$1e0023, -(a7)
00004F02  48 6D E2 5A                pea.l      -$1da6(a5)
00004F06  4E B9 00 00 00 F8          jsr        $f8.l
00004F0C  4F EF 00 0A                lea.l      $a(a7), a7
00004F10  30 2D FF E2                move.w     -$1e(a5), d0
00004F14  0C 40 00 10                cmpi.w     #$10, d0
00004F18  62 00 01 C6                bhi.w      $50e0
00004F1C  D0 40                      add.w      d0, d0
00004F1E  30 3B 00 06                move.w     $4f26(pc, d0.w), d0
00004F22  4E FB 00 02                jmp        $4f26(pc, d0.w)
00004F26  01 BA                      .byte      0x01, 0xba
00004F28  00 22 00 3E                ori.b      #$3e, -(a2)
00004F2C  00 5A 00 76                ori.w      #$76, (a2)+
00004F30  00 92 00 AE 00 CA          ori.l      #$ae00ca, (a2)
00004F36  00 E6                      .byte      0x00, 0xe6
00004F38  01 02                      btst.l     d0, d2
00004F3A  01 1E                      btst.l     d0, (a6)+
00004F3C  01 3A 01 54                btst.l     d0, $5092(pc)
00004F40  01 BA                      .byte      0x01, 0xba
00004F42  01 6E 01 88                bchg.b     d0, $188(a6)
00004F46  01 A2                      bclr.b     d0, -(a2)
00004F48  3F 3C 00 0F                move.w     #$f, -(a7)
00004F4C  2F 3C 01 59 00 23          move.l     #$1590023, -(a7)
00004F52  48 6D E1 E4                pea.l      -$1e1c(a5)
00004F56  4E B9 00 00 00 F8          jsr        $f8.l
00004F5C  4F EF 00 0A                lea.l      $a(a7), a7
00004F60  60 00 01 7E                bra.w      $50e0
00004F64  3F 3C 00 0F                move.w     #$f, -(a7)
00004F68  2F 3C 01 A4 00 23          move.l     #$1a40023, -(a7)
00004F6E  48 6D E1 F0                pea.l      -$1e10(a5)
00004F72  4E B9 00 00 00 F8          jsr        $f8.l
00004F78  4F EF 00 0A                lea.l      $a(a7), a7
00004F7C  60 00 01 62                bra.w      $50e0
00004F80  3F 3C 00 0F                move.w     #$f, -(a7)
00004F84  2F 3C 01 86 00 23          move.l     #$1860023, -(a7)
00004F8A  48 6D E1 F7                pea.l      -$1e09(a5)
00004F8E  4E B9 00 00 00 F8          jsr        $f8.l
00004F94  4F EF 00 0A                lea.l      $a(a7), a7
00004F98  60 00 01 46                bra.w      $50e0
00004F9C  3F 3C 00 0F                move.w     #$f, -(a7)
00004FA0  2F 3C 01 81 00 23          move.l     #$1810023, -(a7)
00004FA6  48 6D E2 00                pea.l      -$1e00(a5)
00004FAA  4E B9 00 00 00 F8          jsr        $f8.l
00004FB0  4F EF 00 0A                lea.l      $a(a7), a7
00004FB4  60 00 01 2A                bra.w      $50e0
00004FB8  3F 3C 00 0F                move.w     #$f, -(a7)
00004FBC  2F 3C 01 A4 00 23          move.l     #$1a40023, -(a7)
00004FC2  48 6D E2 09                pea.l      -$1df7(a5)
00004FC6  4E B9 00 00 00 F8          jsr        $f8.l
00004FCC  4F EF 00 0A                lea.l      $a(a7), a7
00004FD0  60 00 01 0E                bra.w      $50e0
00004FD4  3F 3C 00 0F                move.w     #$f, -(a7)
00004FD8  2F 3C 01 A4 00 23          move.l     #$1a40023, -(a7)
00004FDE  48 6D E2 0E                pea.l      -$1df2(a5)
00004FE2  4E B9 00 00 00 F8          jsr        $f8.l
00004FE8  4F EF 00 0A                lea.l      $a(a7), a7
00004FEC  60 00 00 F2                bra.w      $50e0
00004FF0  3F 3C 00 0F                move.w     #$f, -(a7)
00004FF4  2F 3C 01 9A 00 23          move.l     #$19a0023, -(a7)
00004FFA  48 6D E2 14                pea.l      -$1dec(a5)
00004FFE  4E B9 00 00 00 F8          jsr        $f8.l
00005004  4F EF 00 0A                lea.l      $a(a7), a7
00005008  60 00 00 D6                bra.w      $50e0
0000500C  3F 3C 00 0F                move.w     #$f, -(a7)
00005010  2F 3C 01 7C 00 23          move.l     #$17c0023, -(a7)
00005016  48 6D E2 1B                pea.l      -$1de5(a5)
0000501A  4E B9 00 00 00 F8          jsr        $f8.l
00005020  4F EF 00 0A                lea.l      $a(a7), a7
00005024  60 00 00 BA                bra.w      $50e0
00005028  3F 3C 00 0F                move.w     #$f, -(a7)
0000502C  2F 3C 01 A4 00 23          move.l     #$1a40023, -(a7)
00005032  48 6D E2 24                pea.l      -$1ddc(a5)
00005036  4E B9 00 00 00 F8          jsr        $f8.l
0000503C  4F EF 00 0A                lea.l      $a(a7), a7
00005040  60 00 00 9E                bra.w      $50e0
00005044  3F 3C 00 0F                move.w     #$f, -(a7)
00005048  2F 3C 01 72 00 23          move.l     #$1720023, -(a7)
0000504E  48 6D E2 2A                pea.l      -$1dd6(a5)
00005052  4E B9 00 00 00 F8          jsr        $f8.l
00005058  4F EF 00 0A                lea.l      $a(a7), a7
0000505C  60 00 00 82                bra.w      $50e0
00005060  3F 3C 00 0F                move.w     #$f, -(a7)
00005064  2F 3C 01 90 00 23          move.l     #$1900023, -(a7)
0000506A  48 6D E2 35                pea.l      -$1dcb(a5)
0000506E  4E B9 00 00 00 F8          jsr        $f8.l
00005074  4F EF 00 0A                lea.l      $a(a7), a7
00005078  60 66                      bra.b      $50e0
0000507A  3F 3C 00 0F                move.w     #$f, -(a7)
0000507E  2F 3C 01 86 00 23          move.l     #$1860023, -(a7)
00005084  48 6D E2 3C                pea.l      -$1dc4(a5)
00005088  4E B9 00 00 00 F8          jsr        $f8.l
0000508E  4F EF 00 0A                lea.l      $a(a7), a7
00005092  60 4C                      bra.b      $50e0
00005094  3F 3C 00 0F                move.w     #$f, -(a7)
00005098  2F 3C 01 72 00 23          move.l     #$1720023, -(a7)
0000509E  48 6D E2 4A                pea.l      -$1db6(a5)
000050A2  4E B9 00 00 00 F8          jsr        $f8.l
000050A8  4F EF 00 0A                lea.l      $a(a7), a7
000050AC  60 32                      bra.b      $50e0
000050AE  3F 3C 00 0F                move.w     #$f, -(a7)
000050B2  2F 3C 01 9F 00 23          move.l     #$19f0023, -(a7)
000050B8  48 6D E2 54                pea.l      -$1dac(a5)
000050BC  4E B9 00 00 00 F8          jsr        $f8.l
000050C2  4F EF 00 0A                lea.l      $a(a7), a7
000050C6  60 18                      bra.b      $50e0
000050C8  3F 3C 00 0F                move.w     #$f, -(a7)
000050CC  2F 3C 01 5E 00 23          move.l     #$15e0023, -(a7)
000050D2  48 6D E2 5A                pea.l      -$1da6(a5)
000050D6  4E B9 00 00 00 F8          jsr        $f8.l
000050DC  4F EF 00 0A                lea.l      $a(a7), a7
000050E0  4E 5E                      unlk       a6
000050E2  4E 75                      rts

; MacsBug symbol trailer for DrawInNames: 8B 44 72 61 77 49 6E 4E 61 6D 65 73

ShowWinner: ; 000050F2..000054C8
000050F2  4E 56 FF F8                link.w     a6, #$fff8
000050F6  2F 03                      move.l     d3, -(a7)
000050F8  36 2E 00 08                move.w     $8(a6), d3
000050FC  30 03                      move.w     d3, d0
000050FE  0C 40 00 10                cmpi.w     #$10, d0
00005102  62 00 01 C6                bhi.w      $52ca
00005106  D0 40                      add.w      d0, d0
00005108  30 3B 00 06                move.w     $5110(pc, d0.w), d0
0000510C  4E FB 00 02                jmp        $5110(pc, d0.w)
00005110  01 BA                      .byte      0x01, 0xba
00005112  00 22 00 3E                ori.b      #$3e, -(a2)
00005116  00 5A 00 76                ori.w      #$76, (a2)+
0000511A  00 92 00 AE 00 CA          ori.l      #$ae00ca, (a2)
00005120  00 E6                      .byte      0x00, 0xe6
00005122  01 02                      btst.l     d0, d2
00005124  01 1E                      btst.l     d0, (a6)+
00005126  01 3A 01 54                btst.l     d0, $527c(pc)
0000512A  01 BA                      .byte      0x01, 0xba
0000512C  01 6E 01 88                bchg.b     d0, $188(a6)
00005130  01 A2                      bclr.b     d0, -(a2)
00005132  3F 3C 00 18                move.w     #$18, -(a7)
00005136  2F 3C 00 9E 00 C8          move.l     #$9e00c8, -(a7)
0000513C  48 6D E2 67                pea.l      -$1d99(a5)
00005140  4E B9 00 00 00 F8          jsr        $f8.l
00005146  4F EF 00 0A                lea.l      $a(a7), a7
0000514A  60 00 01 7E                bra.w      $52ca
0000514E  3F 3C 00 18                move.w     #$18, -(a7)
00005152  2F 3C 00 C4 00 C8          move.l     #$c400c8, -(a7)
00005158  48 6D E2 78                pea.l      -$1d88(a5)
0000515C  4E B9 00 00 00 F8          jsr        $f8.l
00005162  4F EF 00 0A                lea.l      $a(a7), a7
00005166  60 00 01 62                bra.w      $52ca
0000516A  3F 3C 00 18                move.w     #$18, -(a7)
0000516E  2F 3C 00 B6 00 C8          move.l     #$b600c8, -(a7)
00005174  48 6D E2 84                pea.l      -$1d7c(a5)
00005178  4E B9 00 00 00 F8          jsr        $f8.l
0000517E  4F EF 00 0A                lea.l      $a(a7), a7
00005182  60 00 01 46                bra.w      $52ca
00005186  3F 3C 00 18                move.w     #$18, -(a7)
0000518A  2F 3C 00 B5 00 C8          move.l     #$b500c8, -(a7)
00005190  48 6D E2 92                pea.l      -$1d6e(a5)
00005194  4E B9 00 00 00 F8          jsr        $f8.l
0000519A  4F EF 00 0A                lea.l      $a(a7), a7
0000519E  60 00 01 2A                bra.w      $52ca
000051A2  3F 3C 00 18                move.w     #$18, -(a7)
000051A6  2F 3C 00 C6 00 C8          move.l     #$c600c8, -(a7)
000051AC  48 6D E2 A0                pea.l      -$1d60(a5)
000051B0  4E B9 00 00 00 F8          jsr        $f8.l
000051B6  4F EF 00 0A                lea.l      $a(a7), a7
000051BA  60 00 01 0E                bra.w      $52ca
000051BE  3F 3C 00 18                move.w     #$18, -(a7)
000051C2  2F 3C 00 C3 00 C8          move.l     #$c300c8, -(a7)
000051C8  48 6D E2 AB                pea.l      -$1d55(a5)
000051CC  4E B9 00 00 00 F8          jsr        $f8.l
000051D2  4F EF 00 0A                lea.l      $a(a7), a7
000051D6  60 00 00 F2                bra.w      $52ca
000051DA  3F 3C 00 18                move.w     #$18, -(a7)
000051DE  2F 3C 00 BF 00 C8          move.l     #$bf00c8, -(a7)
000051E4  48 6D E2 B6                pea.l      -$1d4a(a5)
000051E8  4E B9 00 00 00 F8          jsr        $f8.l
000051EE  4F EF 00 0A                lea.l      $a(a7), a7
000051F2  60 00 00 D6                bra.w      $52ca
000051F6  3F 3C 00 18                move.w     #$18, -(a7)
000051FA  2F 3C 00 B1 00 C8          move.l     #$b100c8, -(a7)
00005200  48 6D E2 C2                pea.l      -$1d3e(a5)
00005204  4E B9 00 00 00 F8          jsr        $f8.l
0000520A  4F EF 00 0A                lea.l      $a(a7), a7
0000520E  60 00 00 BA                bra.w      $52ca
00005212  3F 3C 00 18                move.w     #$18, -(a7)
00005216  2F 3C 00 C4 00 C8          move.l     #$c400c8, -(a7)
0000521C  48 6D E2 D0                pea.l      -$1d30(a5)
00005220  4E B9 00 00 00 F8          jsr        $f8.l
00005226  4F EF 00 0A                lea.l      $a(a7), a7
0000522A  60 00 00 9E                bra.w      $52ca
0000522E  3F 3C 00 18                move.w     #$18, -(a7)
00005232  2F 3C 00 AB 00 C8          move.l     #$ab00c8, -(a7)
00005238  48 6D E2 DB                pea.l      -$1d25(a5)
0000523C  4E B9 00 00 00 F8          jsr        $f8.l
00005242  4F EF 00 0A                lea.l      $a(a7), a7
00005246  60 00 00 82                bra.w      $52ca
0000524A  3F 3C 00 18                move.w     #$18, -(a7)
0000524E  2F 3C 00 BA 00 C8          move.l     #$ba00c8, -(a7)
00005254  48 6D E2 EA                pea.l      -$1d16(a5)
00005258  4E B9 00 00 00 F8          jsr        $f8.l
0000525E  4F EF 00 0A                lea.l      $a(a7), a7
00005262  60 66                      bra.b      $52ca
00005264  3F 3C 00 18                move.w     #$18, -(a7)
00005268  2F 3C 00 B6 00 C8          move.l     #$b600c8, -(a7)
0000526E  48 6D E2 F6                pea.l      -$1d0a(a5)
00005272  4E B9 00 00 00 F8          jsr        $f8.l
00005278  4F EF 00 0A                lea.l      $a(a7), a7
0000527C  60 4C                      bra.b      $52ca
0000527E  3F 3C 00 18                move.w     #$18, -(a7)
00005282  2F 3C 00 AB 00 C8          move.l     #$ab00c8, -(a7)
00005288  48 6D E3 03                pea.l      -$1cfd(a5)
0000528C  4E B9 00 00 00 F8          jsr        $f8.l
00005292  4F EF 00 0A                lea.l      $a(a7), a7
00005296  60 32                      bra.b      $52ca
00005298  3F 3C 00 18                move.w     #$18, -(a7)
0000529C  2F 3C 00 C3 00 C8          move.l     #$c300c8, -(a7)
000052A2  48 6D E3 12                pea.l      -$1cee(a5)
000052A6  4E B9 00 00 00 F8          jsr        $f8.l
000052AC  4F EF 00 0A                lea.l      $a(a7), a7
000052B0  60 18                      bra.b      $52ca
000052B2  3F 3C 00 18                move.w     #$18, -(a7)
000052B6  2F 3C 00 A2 00 C8          move.l     #$a200c8, -(a7)
000052BC  48 6D E3 1D                pea.l      -$1ce3(a5)
000052C0  4E B9 00 00 00 F8          jsr        $f8.l
000052C6  4F EF 00 0A                lea.l      $a(a7), a7
000052CA  20 7C 00 00 00 3C          movea.l    #$3c, a0
000052D0  43 EE FF FC                lea.l      -$4(a6), a1
000052D4  A0 3B                      .byte      0xa0, 0x3b
000052D6  22 80                      move.l     d0, (a1)
000052D8  0C 43 00 0A                cmpi.w     #$a, d3
000052DC  66 32                      bne.b      $5310
000052DE  70 01                      moveq      #$1, d0
000052E0  2D 40 FF F8                move.l     d0, -$8(a6)
000052E4  59 4F                      subq.w     #$4, a7
000052E6  A9 75                      .byte      0xa9, 0x75
000052E8  20 1F                      move.l     (a7)+, d0
000052EA  C0 AE FF F8                and.l      -$8(a6), d0
000052EE  66 10                      bne.b      $5300
000052F0  2F 3C 13 8A 00 0A          move.l     #$138a000a, -(a7)
000052F6  4E B9 00 00 00 C0          jsr        $c0.l
000052FC  58 4F                      addq.w     #$4, a7
000052FE  60 50                      bra.b      $5350
00005300  2F 3C 13 89 00 0A          move.l     #$1389000a, -(a7)
00005306  4E B9 00 00 00 C0          jsr        $c0.l
0000530C  58 4F                      addq.w     #$4, a7
0000530E  60 40                      bra.b      $5350
00005310  0C 43 00 0B                cmpi.w     #$b, d3
00005314  66 10                      bne.b      $5326
00005316  2F 3C 00 EF 00 0A          move.l     #$ef000a, -(a7)
0000531C  4E B9 00 00 00 C0          jsr        $c0.l
00005322  58 4F                      addq.w     #$4, a7
00005324  60 2A                      bra.b      $5350
00005326  0C 43 00 0C                cmpi.w     #$c, d3
0000532A  66 10                      bne.b      $533c
0000532C  2F 3C 00 F0 00 0A          move.l     #$f0000a, -(a7)
00005332  4E B9 00 00 00 C0          jsr        $c0.l
00005338  58 4F                      addq.w     #$4, a7
0000533A  60 14                      bra.b      $5350
0000533C  3F 3C 00 0A                move.w     #$a, -(a7)
00005340  30 03                      move.w     d3, d0
00005342  06 40 00 E3                addi.w     #$e3, d0
00005346  3F 00                      move.w     d0, -(a7)
00005348  4E B9 00 00 00 C0          jsr        $c0.l
0000534E  58 4F                      addq.w     #$4, a7
00005350  20 7C 00 00 00 0A          movea.l    #$a, a0
00005356  43 EE FF FC                lea.l      -$4(a6), a1
0000535A  A0 3B                      .byte      0xa0, 0x3b
0000535C  22 80                      move.l     d0, (a1)
0000535E  0C 43 00 05                cmpi.w     #$5, d3
00005362  67 1E                      beq.b      $5382
00005364  0C 43 00 0A                cmpi.w     #$a, d3
00005368  67 18                      beq.b      $5382
0000536A  0C 43 00 0C                cmpi.w     #$c, d3
0000536E  67 12                      beq.b      $5382
00005370  0C 43 00 10                cmpi.w     #$10, d3
00005374  67 0C                      beq.b      $5382
00005376  3F 3C 00 ED                move.w     #$ed, -(a7)
0000537A  4E B9 00 00 00 C0          jsr        $c0.l
00005380  54 4F                      addq.w     #$2, a7
00005382  20 7C 00 00 00 1E          movea.l    #$1e, a0
00005388  43 EE FF FC                lea.l      -$4(a6), a1
0000538C  A0 3B                      .byte      0xa0, 0x3b
0000538E  22 80                      move.l     d0, (a1)
00005390  0C 6D 00 64 FF F6          cmpi.w     #$64, -$a(a5)
00005396  67 08                      beq.b      $53a0
00005398  0C 6D 00 64 FF FA          cmpi.w     #$64, -$6(a5)
0000539E  66 20                      bne.b      $53c0
000053A0  3F 3C 03 F1                move.w     #$3f1, -(a7)
000053A4  4E B9 00 00 00 C0          jsr        $c0.l
000053AA  0C 6D 00 0A D7 36          cmpi.w     #$a, -$28ca(a5)
000053B0  54 4F                      addq.w     #$2, a7
000053B2  66 08                      bne.b      $53bc
000053B4  1B 7C 00 01 CF 12          move.b     #$1, -$30ee(a5)
000053BA  60 04                      bra.b      $53c0
000053BC  42 2D CF 12                clr.b      -$30ee(a5)
000053C0  20 7C 00 00 00 1E          movea.l    #$1e, a0
000053C6  43 EE FF FC                lea.l      -$4(a6), a1
000053CA  A0 3B                      .byte      0xa0, 0x3b
000053CC  22 80                      move.l     d0, (a1)
000053CE  0C 2D 00 01 D7 52          cmpi.b     #$1, -$28ae(a5)
000053D4  66 00 00 DE                bne.w      $54b4
000053D8  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000053DE  66 0C                      bne.b      $53ec
000053E0  0C 2D 00 01 D1 A2          cmpi.b     #$1, -$2e5e(a5)
000053E6  66 04                      bne.b      $53ec
000053E8  42 2D DE D6                clr.b      -$212a(a5)
000053EC  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000053F2  66 72                      bne.b      $5466
000053F4  0C 6D 00 0A D7 36          cmpi.w     #$a, -$28ca(a5)
000053FA  66 08                      bne.b      $5404
000053FC  1B 7C 00 01 CF 14          move.b     #$1, -$30ec(a5)
00005402  60 04                      bra.b      $5408
00005404  42 2D CF 14                clr.b      -$30ec(a5)
00005408  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000540C  48 68 00 02                pea.l      $2(a0)
00005410  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00005414  48 68 00 02                pea.l      $2(a0)
00005418  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000541C  48 68 00 02                pea.l      $2(a0)
00005420  48 6D D4 3E                pea.l      -$2bc2(a5)
00005424  48 6D D4 3E                pea.l      -$2bc2(a5)
00005428  48 6D D4 2E                pea.l      -$2bd2(a5)
0000542C  A8 17                      .byte      0xa8, 0x17
0000542E  20 6D D3 EE                movea.l    -$2c12(a5), a0
00005432  48 68 00 02                pea.l      $2(a0)
00005436  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000543A  48 68 00 02                pea.l      $2(a0)
0000543E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00005442  48 68 00 02                pea.l      $2(a0)
00005446  48 6D D4 36                pea.l      -$2bca(a5)
0000544A  48 6D D4 36                pea.l      -$2bca(a5)
0000544E  48 6D D4 26                pea.l      -$2bda(a5)
00005452  A8 17                      .byte      0xa8, 0x17
00005454  3F 3C 03 F2                move.w     #$3f2, -(a7)
00005458  4E B9 00 00 00 C0          jsr        $c0.l
0000545E  42 2D DE D6                clr.b      -$212a(a5)
00005462  54 4F                      addq.w     #$2, a7
00005464  60 4E                      bra.b      $54b4
00005466  0C 6D 00 0A D7 36          cmpi.w     #$a, -$28ca(a5)
0000546C  66 08                      bne.b      $5476
0000546E  1B 7C 00 01 CF 10          move.b     #$1, -$30f0(a5)
00005474  60 04                      bra.b      $547a
00005476  42 2D CF 10                clr.b      -$30f0(a5)
0000547A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000547E  48 68 00 02                pea.l      $2(a0)
00005482  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00005486  48 68 00 02                pea.l      $2(a0)
0000548A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000548E  48 68 00 02                pea.l      $2(a0)
00005492  48 6D D6 86                pea.l      -$297a(a5)
00005496  48 6D D6 86                pea.l      -$297a(a5)
0000549A  48 6D D6 7E                pea.l      -$2982(a5)
0000549E  A8 17                      .byte      0xa8, 0x17
000054A0  3F 3C 03 F0                move.w     #$3f0, -(a7)
000054A4  4E B9 00 00 00 C0          jsr        $c0.l
000054AA  42 2D D1 98                clr.b      -$2e68(a5)
000054AE  42 2D D1 A2                clr.b      -$2e5e(a5)
000054B2  54 4F                      addq.w     #$2, a7
000054B4  20 7C 00 00 00 3C          movea.l    #$3c, a0
000054BA  43 EE FF FC                lea.l      -$4(a6), a1
000054BE  A0 3B                      .byte      0xa0, 0x3b
000054C0  22 80                      move.l     d0, (a1)
000054C2  26 1F                      move.l     (a7)+, d3
000054C4  4E 5E                      unlk       a6
000054C6  4E 75                      rts

; MacsBug symbol trailer for ShowWinner: 8A 53 68 6F 77 57 69 6E 6E 65 72

ScaleFinish: ; 000054D6..00005662
000054D6  4E 56 00 00                link.w     a6, #$0
000054DA  60 00 01 74                bra.w      $5650
000054DE  2B 6D D6 B6 D6 AE          move.l     -$294a(a5), -$2952(a5)
000054E4  2B 6D D6 BA D6 B2          move.l     -$2946(a5), -$294e(a5)
000054EA  2B 6D D6 9E D6 96          move.l     -$2962(a5), -$296a(a5)
000054F0  2B 6D D6 A2 D6 9A          move.l     -$295e(a5), -$2966(a5)
000054F6  30 2D D6 BC                move.w     -$2944(a5), d0
000054FA  90 6D D6 B8                sub.w      -$2948(a5), d0
000054FE  0C 40 00 4B                cmpi.w     #$4b, d0
00005502  6F 08                      ble.b      $550c
00005504  06 6D 00 0A D6 B8          addi.w     #$a, -$2948(a5)
0000550A  60 04                      bra.b      $5510
0000550C  58 6D D6 B8                addq.w     #$4, -$2948(a5)
00005510  54 6D D6 B6                addq.w     #$2, -$294a(a5)
00005514  55 6D D6 BA                subq.w     #$2, -$2946(a5)
00005518  30 2D D6 A4                move.w     -$295c(a5), d0
0000551C  90 6D D6 A0                sub.w      -$2960(a5), d0
00005520  0C 40 00 50                cmpi.w     #$50, d0
00005524  6F 08                      ble.b      $552e
00005526  04 6D 00 0A D6 A4          subi.w     #$a, -$295c(a5)
0000552C  60 04                      bra.b      $5532
0000552E  59 6D D6 A4                subq.w     #$4, -$295c(a5)
00005532  54 6D D6 9E                addq.w     #$2, -$2962(a5)
00005536  55 6D D6 A2                subq.w     #$2, -$295e(a5)
0000553A  20 6D D3 EE                movea.l    -$2c12(a5), a0
0000553E  48 68 00 02                pea.l      $2(a0)
00005542  20 6D D3 E2                movea.l    -$2c1e(a5), a0
00005546  48 68 00 02                pea.l      $2(a0)
0000554A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000554E  48 68 00 02                pea.l      $2(a0)
00005552  48 6D D6 CE                pea.l      -$2932(a5)
00005556  48 6D D6 CE                pea.l      -$2932(a5)
0000555A  48 6D D6 B6                pea.l      -$294a(a5)
0000555E  A8 17                      .byte      0xa8, 0x17
00005560  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
00005566  6D 10                      blt.b      $5578
00005568  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
0000556E  67 20                      beq.b      $5590
00005570  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00005576  67 18                      beq.b      $5590
00005578  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
0000557E  6D 38                      blt.b      $55b8
00005580  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
00005586  67 08                      beq.b      $5590
00005588  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
0000558E  66 28                      bne.b      $55b8
00005590  20 6D D3 EE                movea.l    -$2c12(a5), a0
00005594  48 68 00 02                pea.l      $2(a0)
00005598  20 6D D3 E2                movea.l    -$2c1e(a5), a0
0000559C  48 68 00 02                pea.l      $2(a0)
000055A0  20 6D D3 FE                movea.l    -$2c02(a5), a0
000055A4  48 68 00 02                pea.l      $2(a0)
000055A8  48 6D D6 BE                pea.l      -$2942(a5)
000055AC  48 6D D6 BE                pea.l      -$2942(a5)
000055B0  48 6D D6 9E                pea.l      -$2962(a5)
000055B4  A8 17                      .byte      0xa8, 0x17
000055B6  60 26                      bra.b      $55de
000055B8  20 6D D3 EE                movea.l    -$2c12(a5), a0
000055BC  48 68 00 02                pea.l      $2(a0)
000055C0  20 6D D3 E2                movea.l    -$2c1e(a5), a0
000055C4  48 68 00 02                pea.l      $2(a0)
000055C8  20 6D D3 FE                movea.l    -$2c02(a5), a0
000055CC  48 68 00 02                pea.l      $2(a0)
000055D0  48 6D D6 C6                pea.l      -$293a(a5)
000055D4  48 6D D6 C6                pea.l      -$293a(a5)
000055D8  48 6D D6 9E                pea.l      -$2962(a5)
000055DC  A8 17                      .byte      0xa8, 0x17
000055DE  48 6D D6 AE                pea.l      -$2952(a5)
000055E2  48 6D D6 B6                pea.l      -$294a(a5)
000055E6  48 6D D6 A6                pea.l      -$295a(a5)
000055EA  A8 AB                      .byte      0xa8, 0xab
000055EC  48 6D D6 96                pea.l      -$296a(a5)
000055F0  48 6D D6 9E                pea.l      -$2962(a5)
000055F4  48 6D D6 8E                pea.l      -$2972(a5)
000055F8  A8 AB                      .byte      0xa8, 0xab
000055FA  48 6D D6 A6                pea.l      -$295a(a5)
000055FE  48 6D D6 8E                pea.l      -$2972(a5)
00005602  48 6D CE E4                pea.l      -$311c(a5)
00005606  A8 AB                      .byte      0xa8, 0xab
00005608  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000560C  48 68 00 02                pea.l      $2(a0)
00005610  20 6D D3 DE                movea.l    -$2c22(a5), a0
00005614  48 68 00 02                pea.l      $2(a0)
00005618  48 6D CE E4                pea.l      -$311c(a5)
0000561C  48 6D CE E4                pea.l      -$311c(a5)
00005620  42 67                      clr.w      -(a7)
00005622  20 6D D3 DE                movea.l    -$2c22(a5), a0
00005626  2F 28 00 18                move.l     $18(a0), -(a7)
0000562A  A8 EC                      .byte      0xa8, 0xec
0000562C  20 6D D3 FA                movea.l    -$2c06(a5), a0
00005630  48 68 00 02                pea.l      $2(a0)
00005634  20 6D D3 FE                movea.l    -$2c02(a5), a0
00005638  48 68 00 02                pea.l      $2(a0)
0000563C  48 6D CE E4                pea.l      -$311c(a5)
00005640  48 6D CE E4                pea.l      -$311c(a5)
00005644  42 67                      clr.w      -(a7)
00005646  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000564A  2F 28 00 18                move.l     $18(a0), -(a7)
0000564E  A8 EC                      .byte      0xa8, 0xec
00005650  30 2D D6 BC                move.w     -$2944(a5), d0
00005654  90 6D D6 B8                sub.w      -$2948(a5), d0
00005658  4A 40                      tst.w      d0
0000565A  6E 00 FE 82                bgt.w      $54de
0000565E  4E 5E                      unlk       a6
00005660  4E 75                      rts

; MacsBug symbol trailer for ScaleFinish: 8B 53 63 61 6C 65 46 69 6E 69 73 68

CheckKodeMatch: ; 00005670..0000611A
00005670  4E 56 00 00                link.w     a6, #$0
00005674  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
0000567A  66 2A                      bne.b      $56a6
0000567C  4A 6D D4 18                tst.w      -$2be8(a5)
00005680  66 24                      bne.b      $56a6
00005682  4A 6D D4 16                tst.w      -$2bea(a5)
00005686  66 1E                      bne.b      $56a6
00005688  4A 6D D4 14                tst.w      -$2bec(a5)
0000568C  66 18                      bne.b      $56a6
0000568E  4A 6D D4 12                tst.w      -$2bee(a5)
00005692  66 12                      bne.b      $56a6
00005694  0C 6D 00 01 D4 10          cmpi.w     #$1, -$2bf0(a5)
0000569A  66 0A                      bne.b      $56a6
0000569C  3B 7C 00 01 D4 1C          move.w     #$1, -$2be4(a5)
000056A2  60 00 0A 72                bra.w      $6116
000056A6  4A 6D D4 1A                tst.w      -$2be6(a5)
000056AA  66 2C                      bne.b      $56d8
000056AC  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
000056B2  66 24                      bne.b      $56d8
000056B4  4A 6D D4 16                tst.w      -$2bea(a5)
000056B8  66 1E                      bne.b      $56d8
000056BA  4A 6D D4 14                tst.w      -$2bec(a5)
000056BE  66 18                      bne.b      $56d8
000056C0  0C 6D 00 01 D4 12          cmpi.w     #$1, -$2bee(a5)
000056C6  66 10                      bne.b      $56d8
000056C8  4A 6D D4 10                tst.w      -$2bf0(a5)
000056CC  66 0A                      bne.b      $56d8
000056CE  3B 7C 00 02 D4 1C          move.w     #$2, -$2be4(a5)
000056D4  60 00 0A 40                bra.w      $6116
000056D8  4A 6D D4 1A                tst.w      -$2be6(a5)
000056DC  66 2C                      bne.b      $570a
000056DE  4A 6D D4 18                tst.w      -$2be8(a5)
000056E2  66 26                      bne.b      $570a
000056E4  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
000056EA  66 1E                      bne.b      $570a
000056EC  0C 6D 00 01 D4 14          cmpi.w     #$1, -$2bec(a5)
000056F2  66 16                      bne.b      $570a
000056F4  4A 6D D4 12                tst.w      -$2bee(a5)
000056F8  66 10                      bne.b      $570a
000056FA  4A 6D D4 10                tst.w      -$2bf0(a5)
000056FE  66 0A                      bne.b      $570a
00005700  3B 7C 00 03 D4 1C          move.w     #$3, -$2be4(a5)
00005706  60 00 0A 0E                bra.w      $6116
0000570A  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
00005710  66 2A                      bne.b      $573c
00005712  4A 6D D4 18                tst.w      -$2be8(a5)
00005716  66 24                      bne.b      $573c
00005718  4A 6D D4 16                tst.w      -$2bea(a5)
0000571C  66 1E                      bne.b      $573c
0000571E  0C 6D 00 01 D4 14          cmpi.w     #$1, -$2bec(a5)
00005724  66 16                      bne.b      $573c
00005726  4A 6D D4 12                tst.w      -$2bee(a5)
0000572A  66 10                      bne.b      $573c
0000572C  4A 6D D4 10                tst.w      -$2bf0(a5)
00005730  66 0A                      bne.b      $573c
00005732  3B 7C 00 04 D4 1C          move.w     #$4, -$2be4(a5)
00005738  60 00 09 DC                bra.w      $6116
0000573C  4A 6D D4 1A                tst.w      -$2be6(a5)
00005740  66 2C                      bne.b      $576e
00005742  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
00005748  66 24                      bne.b      $576e
0000574A  4A 6D D4 16                tst.w      -$2bea(a5)
0000574E  66 1E                      bne.b      $576e
00005750  4A 6D D4 14                tst.w      -$2bec(a5)
00005754  66 18                      bne.b      $576e
00005756  4A 6D D4 12                tst.w      -$2bee(a5)
0000575A  66 12                      bne.b      $576e
0000575C  0C 6D 00 01 D4 10          cmpi.w     #$1, -$2bf0(a5)
00005762  66 0A                      bne.b      $576e
00005764  3B 7C 00 05 D4 1C          move.w     #$5, -$2be4(a5)
0000576A  60 00 09 AA                bra.w      $6116
0000576E  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
00005774  66 2A                      bne.b      $57a0
00005776  4A 6D D4 18                tst.w      -$2be8(a5)
0000577A  66 24                      bne.b      $57a0
0000577C  4A 6D D4 16                tst.w      -$2bea(a5)
00005780  66 1E                      bne.b      $57a0
00005782  4A 6D D4 14                tst.w      -$2bec(a5)
00005786  66 18                      bne.b      $57a0
00005788  0C 6D 00 01 D4 12          cmpi.w     #$1, -$2bee(a5)
0000578E  66 10                      bne.b      $57a0
00005790  4A 6D D4 10                tst.w      -$2bf0(a5)
00005794  66 0A                      bne.b      $57a0
00005796  3B 7C 00 32 D4 1C          move.w     #$32, -$2be4(a5)
0000579C  60 00 09 78                bra.w      $6116
000057A0  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
000057A6  66 2A                      bne.b      $57d2
000057A8  4A 6D D4 18                tst.w      -$2be8(a5)
000057AC  66 24                      bne.b      $57d2
000057AE  4A 6D D4 16                tst.w      -$2bea(a5)
000057B2  66 1E                      bne.b      $57d2
000057B4  4A 6D D4 14                tst.w      -$2bec(a5)
000057B8  66 18                      bne.b      $57d2
000057BA  4A 6D D4 12                tst.w      -$2bee(a5)
000057BE  66 12                      bne.b      $57d2
000057C0  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
000057C6  66 0A                      bne.b      $57d2
000057C8  3B 7C 00 33 D4 1C          move.w     #$33, -$2be4(a5)
000057CE  60 00 09 46                bra.w      $6116
000057D2  4A 6D D4 1A                tst.w      -$2be6(a5)
000057D6  66 2C                      bne.b      $5804
000057D8  4A 6D D4 18                tst.w      -$2be8(a5)
000057DC  66 26                      bne.b      $5804
000057DE  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
000057E4  66 1E                      bne.b      $5804
000057E6  4A 6D D4 14                tst.w      -$2bec(a5)
000057EA  66 18                      bne.b      $5804
000057EC  4A 6D D4 12                tst.w      -$2bee(a5)
000057F0  66 12                      bne.b      $5804
000057F2  0C 6D 00 01 D4 10          cmpi.w     #$1, -$2bf0(a5)
000057F8  66 0A                      bne.b      $5804
000057FA  3B 7C 00 06 D4 1C          move.w     #$6, -$2be4(a5)
00005800  60 00 09 14                bra.w      $6116
00005804  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
0000580A  66 32                      bne.b      $583e
0000580C  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005812  66 2A                      bne.b      $583e
00005814  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
0000581A  66 22                      bne.b      $583e
0000581C  0C 6D 00 01 D4 14          cmpi.w     #$1, -$2bec(a5)
00005822  66 1A                      bne.b      $583e
00005824  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
0000582A  66 12                      bne.b      $583e
0000582C  0C 6D 00 03 D4 10          cmpi.w     #$3, -$2bf0(a5)
00005832  66 0A                      bne.b      $583e
00005834  3B 7C 00 07 D4 1C          move.w     #$7, -$2be4(a5)
0000583A  60 00 08 DA                bra.w      $6116
0000583E  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
00005844  66 32                      bne.b      $5878
00005846  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
0000584C  66 2A                      bne.b      $5878
0000584E  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005854  66 22                      bne.b      $5878
00005856  0C 6D 00 04 D4 14          cmpi.w     #$4, -$2bec(a5)
0000585C  66 1A                      bne.b      $5878
0000585E  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005864  66 12                      bne.b      $5878
00005866  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
0000586C  66 0A                      bne.b      $5878
0000586E  3B 7C 00 08 D4 1C          move.w     #$8, -$2be4(a5)
00005874  60 00 08 A0                bra.w      $6116
00005878  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
0000587E  66 32                      bne.b      $58b2
00005880  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005886  66 2A                      bne.b      $58b2
00005888  0C 6D 00 04 D4 16          cmpi.w     #$4, -$2bea(a5)
0000588E  66 22                      bne.b      $58b2
00005890  0C 6D 00 04 D4 14          cmpi.w     #$4, -$2bec(a5)
00005896  66 1A                      bne.b      $58b2
00005898  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
0000589E  66 12                      bne.b      $58b2
000058A0  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
000058A6  66 0A                      bne.b      $58b2
000058A8  3B 7C 00 09 D4 1C          move.w     #$9, -$2be4(a5)
000058AE  60 00 08 66                bra.w      $6116
000058B2  0C 6D 00 05 D4 1A          cmpi.w     #$5, -$2be6(a5)
000058B8  66 32                      bne.b      $58ec
000058BA  0C 6D 00 06 D4 18          cmpi.w     #$6, -$2be8(a5)
000058C0  66 2A                      bne.b      $58ec
000058C2  0C 6D 00 06 D4 16          cmpi.w     #$6, -$2bea(a5)
000058C8  66 22                      bne.b      $58ec
000058CA  0C 6D 00 05 D4 14          cmpi.w     #$5, -$2bec(a5)
000058D0  66 1A                      bne.b      $58ec
000058D2  0C 6D 00 04 D4 12          cmpi.w     #$4, -$2bee(a5)
000058D8  66 12                      bne.b      $58ec
000058DA  0C 6D 00 04 D4 10          cmpi.w     #$4, -$2bf0(a5)
000058E0  66 0A                      bne.b      $58ec
000058E2  3B 7C 00 0A D4 1C          move.w     #$a, -$2be4(a5)
000058E8  60 00 08 2C                bra.w      $6116
000058EC  4A 6D D4 1A                tst.w      -$2be6(a5)
000058F0  66 32                      bne.b      $5924
000058F2  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
000058F8  66 2A                      bne.b      $5924
000058FA  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
00005900  66 22                      bne.b      $5924
00005902  0C 6D 00 02 D4 14          cmpi.w     #$2, -$2bec(a5)
00005908  66 1A                      bne.b      $5924
0000590A  0C 6D 00 07 D4 12          cmpi.w     #$7, -$2bee(a5)
00005910  66 12                      bne.b      $5924
00005912  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
00005918  66 0A                      bne.b      $5924
0000591A  3B 7C 00 0B D4 1C          move.w     #$b, -$2be4(a5)
00005920  60 00 07 F4                bra.w      $6116
00005924  4A 6D D4 1A                tst.w      -$2be6(a5)
00005928  66 32                      bne.b      $595c
0000592A  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
00005930  66 2A                      bne.b      $595c
00005932  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
00005938  66 22                      bne.b      $595c
0000593A  0C 6D 00 01 D4 14          cmpi.w     #$1, -$2bec(a5)
00005940  66 1A                      bne.b      $595c
00005942  0C 6D 00 08 D4 12          cmpi.w     #$8, -$2bee(a5)
00005948  66 12                      bne.b      $595c
0000594A  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005950  66 0A                      bne.b      $595c
00005952  3B 7C 00 0C D4 1C          move.w     #$c, -$2be4(a5)
00005958  60 00 07 BC                bra.w      $6116
0000595C  0C 6D 00 06 D4 1A          cmpi.w     #$6, -$2be6(a5)
00005962  66 2E                      bne.b      $5992
00005964  0C 6D 00 03 D4 18          cmpi.w     #$3, -$2be8(a5)
0000596A  66 26                      bne.b      $5992
0000596C  4A 6D D4 16                tst.w      -$2bea(a5)
00005970  66 20                      bne.b      $5992
00005972  4A 6D D4 14                tst.w      -$2bec(a5)
00005976  66 1A                      bne.b      $5992
00005978  0C 6D 00 03 D4 12          cmpi.w     #$3, -$2bee(a5)
0000597E  66 12                      bne.b      $5992
00005980  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
00005986  66 0A                      bne.b      $5992
00005988  3B 7C 00 0D D4 1C          move.w     #$d, -$2be4(a5)
0000598E  60 00 07 86                bra.w      $6116
00005992  4A 6D D4 1A                tst.w      -$2be6(a5)
00005996  66 30                      bne.b      $59c8
00005998  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
0000599E  66 28                      bne.b      $59c8
000059A0  4A 6D D4 16                tst.w      -$2bea(a5)
000059A4  66 22                      bne.b      $59c8
000059A6  0C 6D 00 09 D4 14          cmpi.w     #$9, -$2bec(a5)
000059AC  66 1A                      bne.b      $59c8
000059AE  0C 6D 00 07 D4 12          cmpi.w     #$7, -$2bee(a5)
000059B4  66 12                      bne.b      $59c8
000059B6  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
000059BC  66 0A                      bne.b      $59c8
000059BE  3B 7C 00 0E D4 1C          move.w     #$e, -$2be4(a5)
000059C4  60 00 07 50                bra.w      $6116
000059C8  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
000059CE  66 32                      bne.b      $5a02
000059D0  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
000059D6  66 2A                      bne.b      $5a02
000059D8  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
000059DE  66 22                      bne.b      $5a02
000059E0  0C 6D 00 05 D4 14          cmpi.w     #$5, -$2bec(a5)
000059E6  66 1A                      bne.b      $5a02
000059E8  0C 6D 00 01 D4 12          cmpi.w     #$1, -$2bee(a5)
000059EE  66 12                      bne.b      $5a02
000059F0  0C 6D 00 05 D4 10          cmpi.w     #$5, -$2bf0(a5)
000059F6  66 0A                      bne.b      $5a02
000059F8  3B 7C 00 0F D4 1C          move.w     #$f, -$2be4(a5)
000059FE  60 00 07 16                bra.w      $6116
00005A02  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005A08  66 32                      bne.b      $5a3c
00005A0A  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005A10  66 2A                      bne.b      $5a3c
00005A12  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005A18  66 22                      bne.b      $5a3c
00005A1A  0C 6D 00 05 D4 14          cmpi.w     #$5, -$2bec(a5)
00005A20  66 1A                      bne.b      $5a3c
00005A22  0C 6D 00 03 D4 12          cmpi.w     #$3, -$2bee(a5)
00005A28  66 12                      bne.b      $5a3c
00005A2A  0C 6D 00 05 D4 10          cmpi.w     #$5, -$2bf0(a5)
00005A30  66 0A                      bne.b      $5a3c
00005A32  3B 7C 00 10 D4 1C          move.w     #$10, -$2be4(a5)
00005A38  60 00 06 DC                bra.w      $6116
00005A3C  4A 6D D4 1A                tst.w      -$2be6(a5)
00005A40  66 2C                      bne.b      $5a6e
00005A42  0C 6D 00 03 D4 18          cmpi.w     #$3, -$2be8(a5)
00005A48  66 24                      bne.b      $5a6e
00005A4A  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005A50  66 1C                      bne.b      $5a6e
00005A52  4A 6D D4 14                tst.w      -$2bec(a5)
00005A56  66 16                      bne.b      $5a6e
00005A58  4A 6D D4 12                tst.w      -$2bee(a5)
00005A5C  66 10                      bne.b      $5a6e
00005A5E  4A 6D D4 10                tst.w      -$2bf0(a5)
00005A62  66 0A                      bne.b      $5a6e
00005A64  3B 7C 00 11 D4 1C          move.w     #$11, -$2be4(a5)
00005A6A  60 00 06 AA                bra.w      $6116
00005A6E  4A 6D D4 1A                tst.w      -$2be6(a5)
00005A72  66 2C                      bne.b      $5aa0
00005A74  4A 6D D4 18                tst.w      -$2be8(a5)
00005A78  66 26                      bne.b      $5aa0
00005A7A  4A 6D D4 16                tst.w      -$2bea(a5)
00005A7E  66 20                      bne.b      $5aa0
00005A80  4A 6D D4 14                tst.w      -$2bec(a5)
00005A84  66 1A                      bne.b      $5aa0
00005A86  0C 6D 00 03 D4 12          cmpi.w     #$3, -$2bee(a5)
00005A8C  66 12                      bne.b      $5aa0
00005A8E  0C 6D 00 03 D4 10          cmpi.w     #$3, -$2bf0(a5)
00005A94  66 0A                      bne.b      $5aa0
00005A96  3B 7C 00 12 D4 1C          move.w     #$12, -$2be4(a5)
00005A9C  60 00 06 78                bra.w      $6116
00005AA0  4A 6D D4 1A                tst.w      -$2be6(a5)
00005AA4  66 30                      bne.b      $5ad6
00005AA6  0C 6D 00 03 D4 18          cmpi.w     #$3, -$2be8(a5)
00005AAC  66 28                      bne.b      $5ad6
00005AAE  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005AB4  66 20                      bne.b      $5ad6
00005AB6  4A 6D D4 14                tst.w      -$2bec(a5)
00005ABA  66 1A                      bne.b      $5ad6
00005ABC  0C 6D 00 03 D4 12          cmpi.w     #$3, -$2bee(a5)
00005AC2  66 12                      bne.b      $5ad6
00005AC4  0C 6D 00 03 D4 10          cmpi.w     #$3, -$2bf0(a5)
00005ACA  66 0A                      bne.b      $5ad6
00005ACC  3B 7C 00 13 D4 1C          move.w     #$13, -$2be4(a5)
00005AD2  60 00 06 42                bra.w      $6116
00005AD6  0C 6D 00 07 D4 1A          cmpi.w     #$7, -$2be6(a5)
00005ADC  66 2A                      bne.b      $5b08
00005ADE  4A 6D D4 18                tst.w      -$2be8(a5)
00005AE2  66 24                      bne.b      $5b08
00005AE4  0C 6D 00 07 D4 16          cmpi.w     #$7, -$2bea(a5)
00005AEA  66 1C                      bne.b      $5b08
00005AEC  4A 6D D4 14                tst.w      -$2bec(a5)
00005AF0  66 16                      bne.b      $5b08
00005AF2  4A 6D D4 12                tst.w      -$2bee(a5)
00005AF6  66 10                      bne.b      $5b08
00005AF8  4A 6D D4 10                tst.w      -$2bf0(a5)
00005AFC  66 0A                      bne.b      $5b08
00005AFE  3B 7C 00 14 D4 1C          move.w     #$14, -$2be4(a5)
00005B04  60 00 06 10                bra.w      $6116
00005B08  4A 6D D4 1A                tst.w      -$2be6(a5)
00005B0C  66 2C                      bne.b      $5b3a
00005B0E  4A 6D D4 18                tst.w      -$2be8(a5)
00005B12  66 26                      bne.b      $5b3a
00005B14  4A 6D D4 16                tst.w      -$2bea(a5)
00005B18  66 20                      bne.b      $5b3a
00005B1A  0C 6D 00 07 D4 14          cmpi.w     #$7, -$2bec(a5)
00005B20  66 18                      bne.b      $5b3a
00005B22  4A 6D D4 12                tst.w      -$2bee(a5)
00005B26  66 12                      bne.b      $5b3a
00005B28  0C 6D 00 07 D4 10          cmpi.w     #$7, -$2bf0(a5)
00005B2E  66 0A                      bne.b      $5b3a
00005B30  3B 7C 00 15 D4 1C          move.w     #$15, -$2be4(a5)
00005B36  60 00 05 DE                bra.w      $6116
00005B3A  0C 6D 00 07 D4 1A          cmpi.w     #$7, -$2be6(a5)
00005B40  66 2E                      bne.b      $5b70
00005B42  4A 6D D4 18                tst.w      -$2be8(a5)
00005B46  66 28                      bne.b      $5b70
00005B48  0C 6D 00 07 D4 16          cmpi.w     #$7, -$2bea(a5)
00005B4E  66 20                      bne.b      $5b70
00005B50  0C 6D 00 07 D4 14          cmpi.w     #$7, -$2bec(a5)
00005B56  66 18                      bne.b      $5b70
00005B58  4A 6D D4 12                tst.w      -$2bee(a5)
00005B5C  66 12                      bne.b      $5b70
00005B5E  0C 6D 00 07 D4 10          cmpi.w     #$7, -$2bf0(a5)
00005B64  66 0A                      bne.b      $5b70
00005B66  3B 7C 00 16 D4 1C          move.w     #$16, -$2be4(a5)
00005B6C  60 00 05 A8                bra.w      $6116
00005B70  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
00005B76  66 32                      bne.b      $5baa
00005B78  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005B7E  66 2A                      bne.b      $5baa
00005B80  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005B86  66 22                      bne.b      $5baa
00005B88  0C 6D 00 09 D4 14          cmpi.w     #$9, -$2bec(a5)
00005B8E  66 1A                      bne.b      $5baa
00005B90  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
00005B96  66 12                      bne.b      $5baa
00005B98  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
00005B9E  66 0A                      bne.b      $5baa
00005BA0  3B 7C 00 18 D4 1C          move.w     #$18, -$2be4(a5)
00005BA6  60 00 05 6E                bra.w      $6116
00005BAA  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005BB0  66 32                      bne.b      $5be4
00005BB2  0C 6D 00 03 D4 18          cmpi.w     #$3, -$2be8(a5)
00005BB8  66 2A                      bne.b      $5be4
00005BBA  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005BC0  66 22                      bne.b      $5be4
00005BC2  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005BC8  66 1A                      bne.b      $5be4
00005BCA  0C 6D 00 03 D4 12          cmpi.w     #$3, -$2bee(a5)
00005BD0  66 12                      bne.b      $5be4
00005BD2  0C 6D 00 03 D4 10          cmpi.w     #$3, -$2bf0(a5)
00005BD8  66 0A                      bne.b      $5be4
00005BDA  3B 7C 00 19 D4 1C          move.w     #$19, -$2be4(a5)
00005BE0  60 00 05 34                bra.w      $6116
00005BE4  0C 6D 00 04 D4 1A          cmpi.w     #$4, -$2be6(a5)
00005BEA  66 2E                      bne.b      $5c1a
00005BEC  0C 6D 00 04 D4 18          cmpi.w     #$4, -$2be8(a5)
00005BF2  66 26                      bne.b      $5c1a
00005BF4  4A 6D D4 16                tst.w      -$2bea(a5)
00005BF8  66 20                      bne.b      $5c1a
00005BFA  0C 6D 00 06 D4 14          cmpi.w     #$6, -$2bec(a5)
00005C00  66 18                      bne.b      $5c1a
00005C02  0C 6D 00 06 D4 12          cmpi.w     #$6, -$2bee(a5)
00005C08  66 10                      bne.b      $5c1a
00005C0A  4A 6D D4 10                tst.w      -$2bf0(a5)
00005C0E  66 0A                      bne.b      $5c1a
00005C10  3B 7C 00 34 D4 1C          move.w     #$34, -$2be4(a5)
00005C16  60 00 04 FE                bra.w      $6116
00005C1A  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
00005C20  66 32                      bne.b      $5c54
00005C22  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005C28  66 2A                      bne.b      $5c54
00005C2A  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
00005C30  66 22                      bne.b      $5c54
00005C32  0C 6D 00 04 D4 14          cmpi.w     #$4, -$2bec(a5)
00005C38  66 1A                      bne.b      $5c54
00005C3A  0C 6D 00 04 D4 12          cmpi.w     #$4, -$2bee(a5)
00005C40  66 12                      bne.b      $5c54
00005C42  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005C48  66 0A                      bne.b      $5c54
00005C4A  3B 7C 00 35 D4 1C          move.w     #$35, -$2be4(a5)
00005C50  60 00 04 C4                bra.w      $6116
00005C54  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
00005C5A  66 2A                      bne.b      $5c86
00005C5C  4A 6D D4 18                tst.w      -$2be8(a5)
00005C60  66 24                      bne.b      $5c86
00005C62  4A 6D D4 16                tst.w      -$2bea(a5)
00005C66  66 1E                      bne.b      $5c86
00005C68  4A 6D D4 14                tst.w      -$2bec(a5)
00005C6C  66 18                      bne.b      $5c86
00005C6E  4A 6D D4 12                tst.w      -$2bee(a5)
00005C72  66 12                      bne.b      $5c86
00005C74  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005C7A  66 0A                      bne.b      $5c86
00005C7C  3B 7C 00 36 D4 1C          move.w     #$36, -$2be4(a5)
00005C82  60 00 04 92                bra.w      $6116
00005C86  4A 6D D4 1A                tst.w      -$2be6(a5)
00005C8A  66 2C                      bne.b      $5cb8
00005C8C  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005C92  66 24                      bne.b      $5cb8
00005C94  4A 6D D4 16                tst.w      -$2bea(a5)
00005C98  66 1E                      bne.b      $5cb8
00005C9A  4A 6D D4 14                tst.w      -$2bec(a5)
00005C9E  66 18                      bne.b      $5cb8
00005CA0  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
00005CA6  66 10                      bne.b      $5cb8
00005CA8  4A 6D D4 10                tst.w      -$2bf0(a5)
00005CAC  66 0A                      bne.b      $5cb8
00005CAE  3B 7C 00 37 D4 1C          move.w     #$37, -$2be4(a5)
00005CB4  60 00 04 60                bra.w      $6116
00005CB8  4A 6D D4 1A                tst.w      -$2be6(a5)
00005CBC  66 2C                      bne.b      $5cea
00005CBE  4A 6D D4 18                tst.w      -$2be8(a5)
00005CC2  66 26                      bne.b      $5cea
00005CC4  0C 6D 00 02 D4 16          cmpi.w     #$2, -$2bea(a5)
00005CCA  66 1E                      bne.b      $5cea
00005CCC  4A 6D D4 14                tst.w      -$2bec(a5)
00005CD0  66 18                      bne.b      $5cea
00005CD2  4A 6D D4 12                tst.w      -$2bee(a5)
00005CD6  66 12                      bne.b      $5cea
00005CD8  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005CDE  66 0A                      bne.b      $5cea
00005CE0  3B 7C 00 38 D4 1C          move.w     #$38, -$2be4(a5)
00005CE6  60 00 04 2E                bra.w      $6116
00005CEA  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
00005CF0  66 2A                      bne.b      $5d1c
00005CF2  4A 6D D4 18                tst.w      -$2be8(a5)
00005CF6  66 24                      bne.b      $5d1c
00005CF8  4A 6D D4 16                tst.w      -$2bea(a5)
00005CFC  66 1E                      bne.b      $5d1c
00005CFE  0C 6D 00 02 D4 14          cmpi.w     #$2, -$2bec(a5)
00005D04  66 16                      bne.b      $5d1c
00005D06  4A 6D D4 12                tst.w      -$2bee(a5)
00005D0A  66 10                      bne.b      $5d1c
00005D0C  4A 6D D4 10                tst.w      -$2bf0(a5)
00005D10  66 0A                      bne.b      $5d1c
00005D12  3B 7C 00 39 D4 1C          move.w     #$39, -$2be4(a5)
00005D18  60 00 03 FC                bra.w      $6116
00005D1C  4A 6D D4 1A                tst.w      -$2be6(a5)
00005D20  66 2C                      bne.b      $5d4e
00005D22  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005D28  66 24                      bne.b      $5d4e
00005D2A  4A 6D D4 16                tst.w      -$2bea(a5)
00005D2E  66 1E                      bne.b      $5d4e
00005D30  4A 6D D4 14                tst.w      -$2bec(a5)
00005D34  66 18                      bne.b      $5d4e
00005D36  4A 6D D4 12                tst.w      -$2bee(a5)
00005D3A  66 12                      bne.b      $5d4e
00005D3C  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005D42  66 0A                      bne.b      $5d4e
00005D44  3B 7C 00 3A D4 1C          move.w     #$3a, -$2be4(a5)
00005D4A  60 00 03 CA                bra.w      $6116
00005D4E  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
00005D54  66 2A                      bne.b      $5d80
00005D56  4A 6D D4 18                tst.w      -$2be8(a5)
00005D5A  66 24                      bne.b      $5d80
00005D5C  4A 6D D4 16                tst.w      -$2bea(a5)
00005D60  66 1E                      bne.b      $5d80
00005D62  4A 6D D4 14                tst.w      -$2bec(a5)
00005D66  66 18                      bne.b      $5d80
00005D68  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
00005D6E  66 10                      bne.b      $5d80
00005D70  4A 6D D4 10                tst.w      -$2bf0(a5)
00005D74  66 0A                      bne.b      $5d80
00005D76  3B 7C 00 3B D4 1C          move.w     #$3b, -$2be4(a5)
00005D7C  60 00 03 98                bra.w      $6116
00005D80  0C 6D 00 09 D4 1A          cmpi.w     #$9, -$2be6(a5)
00005D86  66 32                      bne.b      $5dba
00005D88  0C 6D 00 09 D4 18          cmpi.w     #$9, -$2be8(a5)
00005D8E  66 2A                      bne.b      $5dba
00005D90  0C 6D 00 09 D4 16          cmpi.w     #$9, -$2bea(a5)
00005D96  66 22                      bne.b      $5dba
00005D98  0C 6D 00 09 D4 14          cmpi.w     #$9, -$2bec(a5)
00005D9E  66 1A                      bne.b      $5dba
00005DA0  0C 6D 00 09 D4 12          cmpi.w     #$9, -$2bee(a5)
00005DA6  66 12                      bne.b      $5dba
00005DA8  0C 6D 00 09 D4 10          cmpi.w     #$9, -$2bf0(a5)
00005DAE  66 0A                      bne.b      $5dba
00005DB0  3B 7C 00 3C D4 1C          move.w     #$3c, -$2be4(a5)
00005DB6  60 00 03 5E                bra.w      $6116
00005DBA  4A 6D D4 1A                tst.w      -$2be6(a5)
00005DBE  66 30                      bne.b      $5df0
00005DC0  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005DC6  66 28                      bne.b      $5df0
00005DC8  0C 6D 00 02 D4 16          cmpi.w     #$2, -$2bea(a5)
00005DCE  66 20                      bne.b      $5df0
00005DD0  4A 6D D4 14                tst.w      -$2bec(a5)
00005DD4  66 1A                      bne.b      $5df0
00005DD6  0C 6D 00 06 D4 12          cmpi.w     #$6, -$2bee(a5)
00005DDC  66 12                      bne.b      $5df0
00005DDE  0C 6D 00 07 D4 10          cmpi.w     #$7, -$2bf0(a5)
00005DE4  66 0A                      bne.b      $5df0
00005DE6  3B 7C 00 3D D4 1C          move.w     #$3d, -$2be4(a5)
00005DEC  60 00 03 28                bra.w      $6116
00005DF0  0C 6D 00 01 D4 1A          cmpi.w     #$1, -$2be6(a5)
00005DF6  66 32                      bne.b      $5e2a
00005DF8  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
00005DFE  66 2A                      bne.b      $5e2a
00005E00  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
00005E06  66 22                      bne.b      $5e2a
00005E08  0C 6D 00 01 D4 14          cmpi.w     #$1, -$2bec(a5)
00005E0E  66 1A                      bne.b      $5e2a
00005E10  0C 6D 00 01 D4 12          cmpi.w     #$1, -$2bee(a5)
00005E16  66 12                      bne.b      $5e2a
00005E18  0C 6D 00 01 D4 10          cmpi.w     #$1, -$2bf0(a5)
00005E1E  66 0A                      bne.b      $5e2a
00005E20  3B 7C 00 3E D4 1C          move.w     #$3e, -$2be4(a5)
00005E26  60 00 02 EE                bra.w      $6116
00005E2A  4A 6D D4 1A                tst.w      -$2be6(a5)
00005E2E  66 30                      bne.b      $5e60
00005E30  0C 6D 00 01 D4 18          cmpi.w     #$1, -$2be8(a5)
00005E36  66 28                      bne.b      $5e60
00005E38  4A 6D D4 16                tst.w      -$2bea(a5)
00005E3C  66 22                      bne.b      $5e60
00005E3E  0C 6D 00 08 D4 14          cmpi.w     #$8, -$2bec(a5)
00005E44  66 1A                      bne.b      $5e60
00005E46  0C 6D 00 09 D4 12          cmpi.w     #$9, -$2bee(a5)
00005E4C  66 12                      bne.b      $5e60
00005E4E  0C 6D 00 04 D4 10          cmpi.w     #$4, -$2bf0(a5)
00005E54  66 0A                      bne.b      $5e60
00005E56  3B 7C 00 3F D4 1C          move.w     #$3f, -$2be4(a5)
00005E5C  60 00 02 B8                bra.w      $6116
00005E60  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005E66  66 32                      bne.b      $5e9a
00005E68  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005E6E  66 2A                      bne.b      $5e9a
00005E70  0C 6D 00 01 D4 16          cmpi.w     #$1, -$2bea(a5)
00005E76  66 22                      bne.b      $5e9a
00005E78  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005E7E  66 1A                      bne.b      $5e9a
00005E80  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005E86  66 12                      bne.b      $5e9a
00005E88  0C 6D 00 01 D4 10          cmpi.w     #$1, -$2bf0(a5)
00005E8E  66 0A                      bne.b      $5e9a
00005E90  3B 7C 00 40 D4 1C          move.w     #$40, -$2be4(a5)
00005E96  60 00 02 7E                bra.w      $6116
00005E9A  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005EA0  66 32                      bne.b      $5ed4
00005EA2  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005EA8  66 2A                      bne.b      $5ed4
00005EAA  0C 6D 00 02 D4 16          cmpi.w     #$2, -$2bea(a5)
00005EB0  66 22                      bne.b      $5ed4
00005EB2  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005EB8  66 1A                      bne.b      $5ed4
00005EBA  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005EC0  66 12                      bne.b      $5ed4
00005EC2  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005EC8  66 0A                      bne.b      $5ed4
00005ECA  3B 7C 00 41 D4 1C          move.w     #$41, -$2be4(a5)
00005ED0  60 00 02 44                bra.w      $6116
00005ED4  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005EDA  66 32                      bne.b      $5f0e
00005EDC  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005EE2  66 2A                      bne.b      $5f0e
00005EE4  0C 6D 00 03 D4 16          cmpi.w     #$3, -$2bea(a5)
00005EEA  66 22                      bne.b      $5f0e
00005EEC  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005EF2  66 1A                      bne.b      $5f0e
00005EF4  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005EFA  66 12                      bne.b      $5f0e
00005EFC  0C 6D 00 03 D4 10          cmpi.w     #$3, -$2bf0(a5)
00005F02  66 0A                      bne.b      $5f0e
00005F04  3B 7C 00 42 D4 1C          move.w     #$42, -$2be4(a5)
00005F0A  60 00 02 0A                bra.w      $6116
00005F0E  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005F14  66 32                      bne.b      $5f48
00005F16  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005F1C  66 2A                      bne.b      $5f48
00005F1E  0C 6D 00 04 D4 16          cmpi.w     #$4, -$2bea(a5)
00005F24  66 22                      bne.b      $5f48
00005F26  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005F2C  66 1A                      bne.b      $5f48
00005F2E  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005F34  66 12                      bne.b      $5f48
00005F36  0C 6D 00 04 D4 10          cmpi.w     #$4, -$2bf0(a5)
00005F3C  66 0A                      bne.b      $5f48
00005F3E  3B 7C 00 43 D4 1C          move.w     #$43, -$2be4(a5)
00005F44  60 00 01 D0                bra.w      $6116
00005F48  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005F4E  66 32                      bne.b      $5f82
00005F50  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005F56  66 2A                      bne.b      $5f82
00005F58  0C 6D 00 05 D4 16          cmpi.w     #$5, -$2bea(a5)
00005F5E  66 22                      bne.b      $5f82
00005F60  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005F66  66 1A                      bne.b      $5f82
00005F68  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005F6E  66 12                      bne.b      $5f82
00005F70  0C 6D 00 05 D4 10          cmpi.w     #$5, -$2bf0(a5)
00005F76  66 0A                      bne.b      $5f82
00005F78  3B 7C 00 44 D4 1C          move.w     #$44, -$2be4(a5)
00005F7E  60 00 01 96                bra.w      $6116
00005F82  0C 6D 00 03 D4 1A          cmpi.w     #$3, -$2be6(a5)
00005F88  66 32                      bne.b      $5fbc
00005F8A  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
00005F90  66 2A                      bne.b      $5fbc
00005F92  0C 6D 00 06 D4 16          cmpi.w     #$6, -$2bea(a5)
00005F98  66 22                      bne.b      $5fbc
00005F9A  0C 6D 00 03 D4 14          cmpi.w     #$3, -$2bec(a5)
00005FA0  66 1A                      bne.b      $5fbc
00005FA2  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00005FA8  66 12                      bne.b      $5fbc
00005FAA  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
00005FB0  66 0A                      bne.b      $5fbc
00005FB2  3B 7C 00 45 D4 1C          move.w     #$45, -$2be4(a5)
00005FB8  60 00 01 5C                bra.w      $6116
00005FBC  0C 6D 00 02 D4 1A          cmpi.w     #$2, -$2be6(a5)
00005FC2  66 32                      bne.b      $5ff6
00005FC4  0C 6D 00 02 D4 18          cmpi.w     #$2, -$2be8(a5)
00005FCA  66 2A                      bne.b      $5ff6
00005FCC  0C 6D 00 02 D4 16          cmpi.w     #$2, -$2bea(a5)
00005FD2  66 22                      bne.b      $5ff6
00005FD4  0C 6D 00 02 D4 14          cmpi.w     #$2, -$2bec(a5)
00005FDA  66 1A                      bne.b      $5ff6
00005FDC  0C 6D 00 02 D4 12          cmpi.w     #$2, -$2bee(a5)
00005FE2  66 12                      bne.b      $5ff6
00005FE4  0C 6D 00 02 D4 10          cmpi.w     #$2, -$2bf0(a5)
00005FEA  66 0A                      bne.b      $5ff6
00005FEC  3B 7C 00 46 D4 1C          move.w     #$46, -$2be4(a5)
00005FF2  60 00 01 22                bra.w      $6116
00005FF6  0C 6D 00 08 D4 1A          cmpi.w     #$8, -$2be6(a5)
00005FFC  66 32                      bne.b      $6030
00005FFE  0C 6D 00 08 D4 18          cmpi.w     #$8, -$2be8(a5)
00006004  66 2A                      bne.b      $6030
00006006  0C 6D 00 08 D4 16          cmpi.w     #$8, -$2bea(a5)
0000600C  66 22                      bne.b      $6030
0000600E  0C 6D 00 08 D4 14          cmpi.w     #$8, -$2bec(a5)
00006014  66 1A                      bne.b      $6030
00006016  0C 6D 00 08 D4 12          cmpi.w     #$8, -$2bee(a5)
0000601C  66 12                      bne.b      $6030
0000601E  0C 6D 00 08 D4 10          cmpi.w     #$8, -$2bf0(a5)
00006024  66 0A                      bne.b      $6030
00006026  3B 7C 00 47 D4 1C          move.w     #$47, -$2be4(a5)
0000602C  60 00 00 E8                bra.w      $6116
00006030  0C 6D 00 07 D4 1A          cmpi.w     #$7, -$2be6(a5)
00006036  66 32                      bne.b      $606a
00006038  0C 6D 00 07 D4 18          cmpi.w     #$7, -$2be8(a5)
0000603E  66 2A                      bne.b      $606a
00006040  0C 6D 00 07 D4 16          cmpi.w     #$7, -$2bea(a5)
00006046  66 22                      bne.b      $606a
00006048  0C 6D 00 07 D4 14          cmpi.w     #$7, -$2bec(a5)
0000604E  66 1A                      bne.b      $606a
00006050  0C 6D 00 07 D4 12          cmpi.w     #$7, -$2bee(a5)
00006056  66 12                      bne.b      $606a
00006058  0C 6D 00 07 D4 10          cmpi.w     #$7, -$2bf0(a5)
0000605E  66 0A                      bne.b      $606a
00006060  3B 7C 00 48 D4 1C          move.w     #$48, -$2be4(a5)
00006066  60 00 00 AE                bra.w      $6116
0000606A  0C 6D 00 04 D4 1A          cmpi.w     #$4, -$2be6(a5)
00006070  66 30                      bne.b      $60a2
00006072  0C 6D 00 04 D4 18          cmpi.w     #$4, -$2be8(a5)
00006078  66 28                      bne.b      $60a2
0000607A  0C 6D 00 04 D4 16          cmpi.w     #$4, -$2bea(a5)
00006080  66 20                      bne.b      $60a2
00006082  0C 6D 00 04 D4 14          cmpi.w     #$4, -$2bec(a5)
00006088  66 18                      bne.b      $60a2
0000608A  0C 6D 00 04 D4 12          cmpi.w     #$4, -$2bee(a5)
00006090  66 10                      bne.b      $60a2
00006092  0C 6D 00 04 D4 10          cmpi.w     #$4, -$2bf0(a5)
00006098  66 08                      bne.b      $60a2
0000609A  3B 7C 00 49 D4 1C          move.w     #$49, -$2be4(a5)
000060A0  60 74                      bra.b      $6116
000060A2  0C 6D 00 06 D4 1A          cmpi.w     #$6, -$2be6(a5)
000060A8  66 30                      bne.b      $60da
000060AA  0C 6D 00 06 D4 18          cmpi.w     #$6, -$2be8(a5)
000060B0  66 28                      bne.b      $60da
000060B2  0C 6D 00 06 D4 16          cmpi.w     #$6, -$2bea(a5)
000060B8  66 20                      bne.b      $60da
000060BA  0C 6D 00 06 D4 14          cmpi.w     #$6, -$2bec(a5)
000060C0  66 18                      bne.b      $60da
000060C2  0C 6D 00 06 D4 12          cmpi.w     #$6, -$2bee(a5)
000060C8  66 10                      bne.b      $60da
000060CA  0C 6D 00 06 D4 10          cmpi.w     #$6, -$2bf0(a5)
000060D0  66 08                      bne.b      $60da
000060D2  3B 7C 00 4A D4 1C          move.w     #$4a, -$2be4(a5)
000060D8  60 3C                      bra.b      $6116
000060DA  0C 6D 00 05 D4 1A          cmpi.w     #$5, -$2be6(a5)
000060E0  66 30                      bne.b      $6112
000060E2  0C 6D 00 05 D4 18          cmpi.w     #$5, -$2be8(a5)
000060E8  66 28                      bne.b      $6112
000060EA  0C 6D 00 05 D4 16          cmpi.w     #$5, -$2bea(a5)
000060F0  66 20                      bne.b      $6112
000060F2  0C 6D 00 05 D4 14          cmpi.w     #$5, -$2bec(a5)
000060F8  66 18                      bne.b      $6112
000060FA  0C 6D 00 05 D4 12          cmpi.w     #$5, -$2bee(a5)
00006100  66 10                      bne.b      $6112
00006102  0C 6D 00 05 D4 10          cmpi.w     #$5, -$2bf0(a5)
00006108  66 08                      bne.b      $6112
0000610A  3B 7C 00 4B D4 1C          move.w     #$4b, -$2be4(a5)
00006110  60 04                      bra.b      $6116
00006112  42 6D D4 1C                clr.w      -$2be4(a5)
00006116  4E 5E                      unlk       a6
00006118  4E 75                      rts

; MacsBug symbol trailer for CheckKodeMatch: 8E 43 68 65 63 6B 4B 6F 64 65 4D 61 74 63 68

HandleTheFatalities: ; 0000612C..00006B0E
0000612C  4E 56 00 00                link.w     a6, #$0
00006130  0C 6D 00 02 CE EE          cmpi.w     #$2, -$3112(a5)
00006136  6D 00 04 DE                blt.w      $6616
0000613A  0C 6D 00 01 FF E0          cmpi.w     #$1, -$20(a5)
00006140  66 2E                      bne.b      $6170
00006142  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006148  66 0A                      bne.b      $6154
0000614A  4E B9 00 00 01 B8          jsr        $1b8.l
00006150  60 00 04 B8                bra.w      $660a
00006154  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
0000615A  66 0A                      bne.b      $6166
0000615C  4E B9 00 00 03 18          jsr        $318.l
00006162  60 00 04 A6                bra.w      $660a
00006166  4E B9 00 00 03 38          jsr        $338.l
0000616C  60 00 04 9C                bra.w      $660a
00006170  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
00006176  66 2E                      bne.b      $61a6
00006178  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000617E  66 0A                      bne.b      $618a
00006180  4E B9 00 00 01 B8          jsr        $1b8.l
00006186  60 00 04 82                bra.w      $660a
0000618A  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006190  66 0A                      bne.b      $619c
00006192  4E B9 00 00 02 58          jsr        $258.l
00006198  60 00 04 70                bra.w      $660a
0000619C  4E B9 00 00 01 18          jsr        $118.l
000061A2  60 00 04 66                bra.w      $660a
000061A6  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
000061AC  66 22                      bne.b      $61d0
000061AE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000061B4  66 0A                      bne.b      $61c0
000061B6  4E B9 00 00 01 B8          jsr        $1b8.l
000061BC  60 00 04 4C                bra.w      $660a
000061C0  3F 3C 00 01                move.w     #$1, -(a7)
000061C4  4E B9 00 00 01 60          jsr        $160.l
000061CA  54 4F                      addq.w     #$2, a7
000061CC  60 00 04 3C                bra.w      $660a
000061D0  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
000061D6  66 34                      bne.b      $620c
000061D8  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000061DE  66 0A                      bne.b      $61ea
000061E0  4E B9 00 00 01 B8          jsr        $1b8.l
000061E6  60 00 04 22                bra.w      $660a
000061EA  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000061F0  66 0A                      bne.b      $61fc
000061F2  4E B9 00 00 02 18          jsr        $218.l
000061F8  60 00 04 10                bra.w      $660a
000061FC  3F 3C 00 02                move.w     #$2, -(a7)
00006200  4E B9 00 00 01 60          jsr        $160.l
00006206  54 4F                      addq.w     #$2, a7
00006208  60 00 04 00                bra.w      $660a
0000620C  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00006212  66 2E                      bne.b      $6242
00006214  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000621A  66 0A                      bne.b      $6226
0000621C  4E B9 00 00 01 B8          jsr        $1b8.l
00006222  60 00 03 E6                bra.w      $660a
00006226  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
0000622C  66 0A                      bne.b      $6238
0000622E  4E B9 00 00 02 B8          jsr        $2b8.l
00006234  60 00 03 D4                bra.w      $660a
00006238  4E B9 00 00 02 D8          jsr        $2d8.l
0000623E  60 00 03 CA                bra.w      $660a
00006242  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
00006248  66 1C                      bne.b      $6266
0000624A  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006250  66 0A                      bne.b      $625c
00006252  4E B9 00 00 01 B8          jsr        $1b8.l
00006258  60 00 03 B0                bra.w      $660a
0000625C  4E B9 00 00 01 38          jsr        $138.l
00006262  60 00 03 A6                bra.w      $660a
00006266  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
0000626C  66 2E                      bne.b      $629c
0000626E  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006274  66 0A                      bne.b      $6280
00006276  4E B9 00 00 01 B8          jsr        $1b8.l
0000627C  60 00 03 8C                bra.w      $660a
00006280  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006286  66 0A                      bne.b      $6292
00006288  4E B9 00 00 02 F8          jsr        $2f8.l
0000628E  60 00 03 7A                bra.w      $660a
00006292  4E B9 00 00 01 D8          jsr        $1d8.l
00006298  60 00 03 70                bra.w      $660a
0000629C  0C 6D 00 08 FF E0          cmpi.w     #$8, -$20(a5)
000062A2  66 1C                      bne.b      $62c0
000062A4  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000062AA  66 0A                      bne.b      $62b6
000062AC  4E B9 00 00 01 B8          jsr        $1b8.l
000062B2  60 00 03 56                bra.w      $660a
000062B6  4E B9 00 00 01 F8          jsr        $1f8.l
000062BC  60 00 03 4C                bra.w      $660a
000062C0  0C 6D 00 09 FF E0          cmpi.w     #$9, -$20(a5)
000062C6  66 2E                      bne.b      $62f6
000062C8  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000062CE  66 0A                      bne.b      $62da
000062D0  4E B9 00 00 01 B8          jsr        $1b8.l
000062D6  60 00 03 32                bra.w      $660a
000062DA  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000062E0  66 0A                      bne.b      $62ec
000062E2  4E B9 00 00 03 58          jsr        $358.l
000062E8  60 00 03 20                bra.w      $660a
000062EC  4E B9 00 00 02 38          jsr        $238.l
000062F2  60 00 03 16                bra.w      $660a
000062F6  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
000062FC  66 1C                      bne.b      $631a
000062FE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006304  66 0A                      bne.b      $6310
00006306  4E B9 00 00 01 B8          jsr        $1b8.l
0000630C  60 00 02 FC                bra.w      $660a
00006310  4E B9 00 00 02 78          jsr        $278.l
00006316  60 00 02 F2                bra.w      $660a
0000631A  0C 6D 00 0E FF E0          cmpi.w     #$e, -$20(a5)
00006320  66 2E                      bne.b      $6350
00006322  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006328  66 0A                      bne.b      $6334
0000632A  4E B9 00 00 01 B8          jsr        $1b8.l
00006330  60 00 02 D8                bra.w      $660a
00006334  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
0000633A  66 0A                      bne.b      $6346
0000633C  4E B9 00 00 01 98          jsr        $198.l
00006342  60 00 02 C6                bra.w      $660a
00006346  4E B9 00 00 01 78          jsr        $178.l
0000634C  60 00 02 BC                bra.w      $660a
00006350  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00006356  66 1C                      bne.b      $6374
00006358  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000635E  66 0A                      bne.b      $636a
00006360  4E B9 00 00 01 B8          jsr        $1b8.l
00006366  60 00 02 A2                bra.w      $660a
0000636A  4E B9 00 00 02 98          jsr        $298.l
00006370  60 00 02 98                bra.w      $660a
00006374  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
0000637A  66 00 02 8E                bne.w      $660a
0000637E  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006384  66 00 02 84                bne.w      $660a
00006388  4E B9 00 00 01 B8          jsr        $1b8.l
0000638E  60 00 02 7A                bra.w      $660a
00006392  0C 6D 00 01 FF E0          cmpi.w     #$1, -$20(a5)
00006398  66 2E                      bne.b      $63c8
0000639A  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000063A0  66 0A                      bne.b      $63ac
000063A2  4E B9 00 00 01 C8          jsr        $1c8.l
000063A8  60 00 02 5A                bra.w      $6604
000063AC  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000063B2  66 0A                      bne.b      $63be
000063B4  4E B9 00 00 03 28          jsr        $328.l
000063BA  60 00 02 48                bra.w      $6604
000063BE  4E B9 00 00 03 48          jsr        $348.l
000063C4  60 00 02 3E                bra.w      $6604
000063C8  0C 6D 00 02 FF E0          cmpi.w     #$2, -$20(a5)
000063CE  66 2E                      bne.b      $63fe
000063D0  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000063D6  66 0A                      bne.b      $63e2
000063D8  4E B9 00 00 01 C8          jsr        $1c8.l
000063DE  60 00 02 24                bra.w      $6604
000063E2  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000063E8  66 0A                      bne.b      $63f4
000063EA  4E B9 00 00 02 68          jsr        $268.l
000063F0  60 00 02 12                bra.w      $6604
000063F4  4E B9 00 00 01 28          jsr        $128.l
000063FA  60 00 02 08                bra.w      $6604
000063FE  0C 6D 00 03 FF E0          cmpi.w     #$3, -$20(a5)
00006404  66 3A                      bne.b      $6440
00006406  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000640C  66 0A                      bne.b      $6418
0000640E  4E B9 00 00 01 C8          jsr        $1c8.l
00006414  60 00 01 EE                bra.w      $6604
00006418  0C 6D 00 03 D8 96          cmpi.w     #$3, -$276a(a5)
0000641E  66 10                      bne.b      $6430
00006420  3F 3C 00 03                move.w     #$3, -(a7)
00006424  4E B9 00 00 01 68          jsr        $168.l
0000642A  54 4F                      addq.w     #$2, a7
0000642C  60 00 01 D6                bra.w      $6604
00006430  3F 3C 00 01                move.w     #$1, -(a7)
00006434  4E B9 00 00 01 68          jsr        $168.l
0000643A  54 4F                      addq.w     #$2, a7
0000643C  60 00 01 C6                bra.w      $6604
00006440  0C 6D 00 04 FF E0          cmpi.w     #$4, -$20(a5)
00006446  66 4C                      bne.b      $6494
00006448  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000644E  66 0A                      bne.b      $645a
00006450  4E B9 00 00 01 C8          jsr        $1c8.l
00006456  60 00 01 AC                bra.w      $6604
0000645A  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006460  66 0A                      bne.b      $646c
00006462  4E B9 00 00 02 28          jsr        $228.l
00006468  60 00 01 9A                bra.w      $6604
0000646C  0C 6D 00 03 D8 96          cmpi.w     #$3, -$276a(a5)
00006472  66 10                      bne.b      $6484
00006474  3F 3C 00 03                move.w     #$3, -(a7)
00006478  4E B9 00 00 01 68          jsr        $168.l
0000647E  54 4F                      addq.w     #$2, a7
00006480  60 00 01 82                bra.w      $6604
00006484  3F 3C 00 02                move.w     #$2, -(a7)
00006488  4E B9 00 00 01 68          jsr        $168.l
0000648E  54 4F                      addq.w     #$2, a7
00006490  60 00 01 72                bra.w      $6604
00006494  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
0000649A  66 2E                      bne.b      $64ca
0000649C  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000064A2  66 0A                      bne.b      $64ae
000064A4  4E B9 00 00 01 C8          jsr        $1c8.l
000064AA  60 00 01 58                bra.w      $6604
000064AE  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000064B4  66 0A                      bne.b      $64c0
000064B6  4E B9 00 00 02 C8          jsr        $2c8.l
000064BC  60 00 01 46                bra.w      $6604
000064C0  4E B9 00 00 02 E8          jsr        $2e8.l
000064C6  60 00 01 3C                bra.w      $6604
000064CA  0C 6D 00 06 FF E0          cmpi.w     #$6, -$20(a5)
000064D0  66 1C                      bne.b      $64ee
000064D2  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000064D8  66 0A                      bne.b      $64e4
000064DA  4E B9 00 00 01 C8          jsr        $1c8.l
000064E0  60 00 01 22                bra.w      $6604
000064E4  4E B9 00 00 01 48          jsr        $148.l
000064EA  60 00 01 18                bra.w      $6604
000064EE  0C 6D 00 07 FF E0          cmpi.w     #$7, -$20(a5)
000064F4  66 2E                      bne.b      $6524
000064F6  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000064FC  66 0A                      bne.b      $6508
000064FE  4E B9 00 00 01 C8          jsr        $1c8.l
00006504  60 00 00 FE                bra.w      $6604
00006508  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
0000650E  66 0A                      bne.b      $651a
00006510  4E B9 00 00 03 08          jsr        $308.l
00006516  60 00 00 EC                bra.w      $6604
0000651A  4E B9 00 00 01 E8          jsr        $1e8.l
00006520  60 00 00 E2                bra.w      $6604
00006524  0C 6D 00 08 FF E0          cmpi.w     #$8, -$20(a5)
0000652A  66 1C                      bne.b      $6548
0000652C  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006532  66 0A                      bne.b      $653e
00006534  4E B9 00 00 01 C8          jsr        $1c8.l
0000653A  60 00 00 C8                bra.w      $6604
0000653E  4E B9 00 00 02 08          jsr        $208.l
00006544  60 00 00 BE                bra.w      $6604
00006548  0C 6D 00 09 FF E0          cmpi.w     #$9, -$20(a5)
0000654E  66 2E                      bne.b      $657e
00006550  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006556  66 0A                      bne.b      $6562
00006558  4E B9 00 00 01 C8          jsr        $1c8.l
0000655E  60 00 00 A4                bra.w      $6604
00006562  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006568  66 0A                      bne.b      $6574
0000656A  4E B9 00 00 03 68          jsr        $368.l
00006570  60 00 00 92                bra.w      $6604
00006574  4E B9 00 00 02 48          jsr        $248.l
0000657A  60 00 00 88                bra.w      $6604
0000657E  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
00006584  66 18                      bne.b      $659e
00006586  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000658C  66 08                      bne.b      $6596
0000658E  4E B9 00 00 01 C8          jsr        $1c8.l
00006594  60 6E                      bra.b      $6604
00006596  4E B9 00 00 02 88          jsr        $288.l
0000659C  60 66                      bra.b      $6604
0000659E  0C 6D 00 0E FF E0          cmpi.w     #$e, -$20(a5)
000065A4  66 28                      bne.b      $65ce
000065A6  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000065AC  66 08                      bne.b      $65b6
000065AE  4E B9 00 00 01 C8          jsr        $1c8.l
000065B4  60 4E                      bra.b      $6604
000065B6  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000065BC  66 08                      bne.b      $65c6
000065BE  4E B9 00 00 01 A8          jsr        $1a8.l
000065C4  60 3E                      bra.b      $6604
000065C6  4E B9 00 00 01 88          jsr        $188.l
000065CC  60 36                      bra.b      $6604
000065CE  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
000065D4  66 18                      bne.b      $65ee
000065D6  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000065DC  66 08                      bne.b      $65e6
000065DE  4E B9 00 00 01 C8          jsr        $1c8.l
000065E4  60 1E                      bra.b      $6604
000065E6  4E B9 00 00 02 A8          jsr        $2a8.l
000065EC  60 16                      bra.b      $6604
000065EE  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
000065F4  66 0E                      bne.b      $6604
000065F6  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000065FC  66 06                      bne.b      $6604
000065FE  4E B9 00 00 01 C8          jsr        $1c8.l
00006604  4E B9 00 00 4A 90          jsr        $4a90.l
0000660A  4A 2D D7 E2                tst.b      -$281e(a5)
0000660E  67 00 FD 82                beq.w      $6392
00006612  60 00 04 F6                bra.w      $6b0a
00006616  0C 6D 00 02 CE EC          cmpi.w     #$2, -$3114(a5)
0000661C  6D 00 04 EC                blt.w      $6b0a
00006620  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
00006626  66 2E                      bne.b      $6656
00006628  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000662E  66 0A                      bne.b      $663a
00006630  4E B9 00 00 01 C0          jsr        $1c0.l
00006636  60 00 04 CA                bra.w      $6b02
0000663A  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006640  66 0A                      bne.b      $664c
00006642  4E B9 00 00 03 20          jsr        $320.l
00006648  60 00 04 B8                bra.w      $6b02
0000664C  4E B9 00 00 03 40          jsr        $340.l
00006652  60 00 04 AE                bra.w      $6b02
00006656  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
0000665C  66 2E                      bne.b      $668c
0000665E  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006664  66 0A                      bne.b      $6670
00006666  4E B9 00 00 01 C0          jsr        $1c0.l
0000666C  60 00 04 94                bra.w      $6b02
00006670  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006676  66 0A                      bne.b      $6682
00006678  4E B9 00 00 02 60          jsr        $260.l
0000667E  60 00 04 82                bra.w      $6b02
00006682  4E B9 00 00 01 20          jsr        $120.l
00006688  60 00 04 78                bra.w      $6b02
0000668C  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
00006692  66 22                      bne.b      $66b6
00006694  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000669A  66 0A                      bne.b      $66a6
0000669C  4E B9 00 00 01 C0          jsr        $1c0.l
000066A2  60 00 04 5E                bra.w      $6b02
000066A6  3F 3C 00 01                move.w     #$1, -(a7)
000066AA  4E B9 00 00 01 58          jsr        $158.l
000066B0  54 4F                      addq.w     #$2, a7
000066B2  60 00 04 4E                bra.w      $6b02
000066B6  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
000066BC  66 34                      bne.b      $66f2
000066BE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000066C4  66 0A                      bne.b      $66d0
000066C6  4E B9 00 00 01 C0          jsr        $1c0.l
000066CC  60 00 04 34                bra.w      $6b02
000066D0  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000066D6  66 0A                      bne.b      $66e2
000066D8  4E B9 00 00 02 20          jsr        $220.l
000066DE  60 00 04 22                bra.w      $6b02
000066E2  3F 3C 00 02                move.w     #$2, -(a7)
000066E6  4E B9 00 00 01 58          jsr        $158.l
000066EC  54 4F                      addq.w     #$2, a7
000066EE  60 00 04 12                bra.w      $6b02
000066F2  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
000066F8  66 40                      bne.b      $673a
000066FA  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006700  66 0A                      bne.b      $670c
00006702  4E B9 00 00 01 C0          jsr        $1c0.l
00006708  60 00 03 F8                bra.w      $6b02
0000670C  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006712  66 0A                      bne.b      $671e
00006714  4E B9 00 00 02 E0          jsr        $2e0.l
0000671A  60 00 03 E6                bra.w      $6b02
0000671E  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006724  66 0A                      bne.b      $6730
00006726  4E B9 00 00 02 E0          jsr        $2e0.l
0000672C  60 00 03 D4                bra.w      $6b02
00006730  4E B9 00 00 02 C0          jsr        $2c0.l
00006736  60 00 03 CA                bra.w      $6b02
0000673A  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
00006740  66 1C                      bne.b      $675e
00006742  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006748  66 0A                      bne.b      $6754
0000674A  4E B9 00 00 01 C0          jsr        $1c0.l
00006750  60 00 03 B0                bra.w      $6b02
00006754  4E B9 00 00 01 40          jsr        $140.l
0000675A  60 00 03 A6                bra.w      $6b02
0000675E  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
00006764  66 2E                      bne.b      $6794
00006766  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000676C  66 0A                      bne.b      $6778
0000676E  4E B9 00 00 01 C0          jsr        $1c0.l
00006774  60 00 03 8C                bra.w      $6b02
00006778  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
0000677E  66 0A                      bne.b      $678a
00006780  4E B9 00 00 03 00          jsr        $300.l
00006786  60 00 03 7A                bra.w      $6b02
0000678A  4E B9 00 00 01 E0          jsr        $1e0.l
00006790  60 00 03 70                bra.w      $6b02
00006794  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
0000679A  66 1C                      bne.b      $67b8
0000679C  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000067A2  66 0A                      bne.b      $67ae
000067A4  4E B9 00 00 01 C0          jsr        $1c0.l
000067AA  60 00 03 56                bra.w      $6b02
000067AE  4E B9 00 00 02 00          jsr        $200.l
000067B4  60 00 03 4C                bra.w      $6b02
000067B8  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
000067BE  66 2E                      bne.b      $67ee
000067C0  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000067C6  66 0A                      bne.b      $67d2
000067C8  4E B9 00 00 01 C0          jsr        $1c0.l
000067CE  60 00 03 32                bra.w      $6b02
000067D2  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000067D8  66 0A                      bne.b      $67e4
000067DA  4E B9 00 00 03 60          jsr        $360.l
000067E0  60 00 03 20                bra.w      $6b02
000067E4  4E B9 00 00 02 40          jsr        $240.l
000067EA  60 00 03 16                bra.w      $6b02
000067EE  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
000067F4  66 1C                      bne.b      $6812
000067F6  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000067FC  66 0A                      bne.b      $6808
000067FE  4E B9 00 00 01 C0          jsr        $1c0.l
00006804  60 00 02 FC                bra.w      $6b02
00006808  4E B9 00 00 02 80          jsr        $280.l
0000680E  60 00 02 F2                bra.w      $6b02
00006812  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
00006818  66 2E                      bne.b      $6848
0000681A  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006820  66 0A                      bne.b      $682c
00006822  4E B9 00 00 01 C0          jsr        $1c0.l
00006828  60 00 02 D8                bra.w      $6b02
0000682C  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006832  66 0A                      bne.b      $683e
00006834  4E B9 00 00 01 A0          jsr        $1a0.l
0000683A  60 00 02 C6                bra.w      $6b02
0000683E  4E B9 00 00 01 80          jsr        $180.l
00006844  60 00 02 BC                bra.w      $6b02
00006848  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
0000684E  66 1C                      bne.b      $686c
00006850  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006856  66 0A                      bne.b      $6862
00006858  4E B9 00 00 01 C0          jsr        $1c0.l
0000685E  60 00 02 A2                bra.w      $6b02
00006862  4E B9 00 00 02 A0          jsr        $2a0.l
00006868  60 00 02 98                bra.w      $6b02
0000686C  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00006872  66 00 02 8E                bne.w      $6b02
00006876  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000687C  66 00 02 84                bne.w      $6b02
00006880  4E B9 00 00 01 C0          jsr        $1c0.l
00006886  60 00 02 7A                bra.w      $6b02
0000688A  0C 6D 00 01 FF E2          cmpi.w     #$1, -$1e(a5)
00006890  66 2E                      bne.b      $68c0
00006892  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006898  66 0A                      bne.b      $68a4
0000689A  4E B9 00 00 01 D0          jsr        $1d0.l
000068A0  60 00 02 5A                bra.w      $6afc
000068A4  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000068AA  66 0A                      bne.b      $68b6
000068AC  4E B9 00 00 03 30          jsr        $330.l
000068B2  60 00 02 48                bra.w      $6afc
000068B6  4E B9 00 00 03 50          jsr        $350.l
000068BC  60 00 02 3E                bra.w      $6afc
000068C0  0C 6D 00 02 FF E2          cmpi.w     #$2, -$1e(a5)
000068C6  66 2E                      bne.b      $68f6
000068C8  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000068CE  66 0A                      bne.b      $68da
000068D0  4E B9 00 00 01 D0          jsr        $1d0.l
000068D6  60 00 02 24                bra.w      $6afc
000068DA  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000068E0  66 0A                      bne.b      $68ec
000068E2  4E B9 00 00 02 70          jsr        $270.l
000068E8  60 00 02 12                bra.w      $6afc
000068EC  4E B9 00 00 01 30          jsr        $130.l
000068F2  60 00 02 08                bra.w      $6afc
000068F6  0C 6D 00 03 FF E2          cmpi.w     #$3, -$1e(a5)
000068FC  66 3A                      bne.b      $6938
000068FE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006904  66 0A                      bne.b      $6910
00006906  4E B9 00 00 01 D0          jsr        $1d0.l
0000690C  60 00 01 EE                bra.w      $6afc
00006910  0C 6D 00 03 D8 96          cmpi.w     #$3, -$276a(a5)
00006916  66 10                      bne.b      $6928
00006918  3F 3C 00 03                move.w     #$3, -(a7)
0000691C  4E B9 00 00 01 70          jsr        $170.l
00006922  54 4F                      addq.w     #$2, a7
00006924  60 00 01 D6                bra.w      $6afc
00006928  3F 3C 00 01                move.w     #$1, -(a7)
0000692C  4E B9 00 00 01 70          jsr        $170.l
00006932  54 4F                      addq.w     #$2, a7
00006934  60 00 01 C6                bra.w      $6afc
00006938  0C 6D 00 04 FF E2          cmpi.w     #$4, -$1e(a5)
0000693E  66 4C                      bne.b      $698c
00006940  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006946  66 0A                      bne.b      $6952
00006948  4E B9 00 00 01 D0          jsr        $1d0.l
0000694E  60 00 01 AC                bra.w      $6afc
00006952  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006958  66 0A                      bne.b      $6964
0000695A  4E B9 00 00 02 30          jsr        $230.l
00006960  60 00 01 9A                bra.w      $6afc
00006964  0C 6D 00 03 D8 96          cmpi.w     #$3, -$276a(a5)
0000696A  66 10                      bne.b      $697c
0000696C  3F 3C 00 03                move.w     #$3, -(a7)
00006970  4E B9 00 00 01 70          jsr        $170.l
00006976  54 4F                      addq.w     #$2, a7
00006978  60 00 01 82                bra.w      $6afc
0000697C  3F 3C 00 02                move.w     #$2, -(a7)
00006980  4E B9 00 00 01 70          jsr        $170.l
00006986  54 4F                      addq.w     #$2, a7
00006988  60 00 01 72                bra.w      $6afc
0000698C  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00006992  66 2E                      bne.b      $69c2
00006994  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
0000699A  66 0A                      bne.b      $69a6
0000699C  4E B9 00 00 01 D0          jsr        $1d0.l
000069A2  60 00 01 58                bra.w      $6afc
000069A6  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
000069AC  66 0A                      bne.b      $69b8
000069AE  4E B9 00 00 02 F0          jsr        $2f0.l
000069B4  60 00 01 46                bra.w      $6afc
000069B8  4E B9 00 00 02 D0          jsr        $2d0.l
000069BE  60 00 01 3C                bra.w      $6afc
000069C2  0C 6D 00 06 FF E2          cmpi.w     #$6, -$1e(a5)
000069C8  66 1C                      bne.b      $69e6
000069CA  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000069D0  66 0A                      bne.b      $69dc
000069D2  4E B9 00 00 01 D0          jsr        $1d0.l
000069D8  60 00 01 22                bra.w      $6afc
000069DC  4E B9 00 00 01 50          jsr        $150.l
000069E2  60 00 01 18                bra.w      $6afc
000069E6  0C 6D 00 07 FF E2          cmpi.w     #$7, -$1e(a5)
000069EC  66 2E                      bne.b      $6a1c
000069EE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
000069F4  66 0A                      bne.b      $6a00
000069F6  4E B9 00 00 01 D0          jsr        $1d0.l
000069FC  60 00 00 FE                bra.w      $6afc
00006A00  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006A06  66 0A                      bne.b      $6a12
00006A08  4E B9 00 00 03 10          jsr        $310.l
00006A0E  60 00 00 EC                bra.w      $6afc
00006A12  4E B9 00 00 01 F0          jsr        $1f0.l
00006A18  60 00 00 E2                bra.w      $6afc
00006A1C  0C 6D 00 08 FF E2          cmpi.w     #$8, -$1e(a5)
00006A22  66 1C                      bne.b      $6a40
00006A24  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006A2A  66 0A                      bne.b      $6a36
00006A2C  4E B9 00 00 01 D0          jsr        $1d0.l
00006A32  60 00 00 C8                bra.w      $6afc
00006A36  4E B9 00 00 02 10          jsr        $210.l
00006A3C  60 00 00 BE                bra.w      $6afc
00006A40  0C 6D 00 09 FF E2          cmpi.w     #$9, -$1e(a5)
00006A46  66 2E                      bne.b      $6a76
00006A48  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006A4E  66 0A                      bne.b      $6a5a
00006A50  4E B9 00 00 01 D0          jsr        $1d0.l
00006A56  60 00 00 A4                bra.w      $6afc
00006A5A  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006A60  66 0A                      bne.b      $6a6c
00006A62  4E B9 00 00 03 70          jsr        $370.l
00006A68  60 00 00 92                bra.w      $6afc
00006A6C  4E B9 00 00 02 50          jsr        $250.l
00006A72  60 00 00 88                bra.w      $6afc
00006A76  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00006A7C  66 18                      bne.b      $6a96
00006A7E  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006A84  66 08                      bne.b      $6a8e
00006A86  4E B9 00 00 01 D0          jsr        $1d0.l
00006A8C  60 6E                      bra.b      $6afc
00006A8E  4E B9 00 00 02 90          jsr        $290.l
00006A94  60 66                      bra.b      $6afc
00006A96  0C 6D 00 0E FF E2          cmpi.w     #$e, -$1e(a5)
00006A9C  66 28                      bne.b      $6ac6
00006A9E  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006AA4  66 08                      bne.b      $6aae
00006AA6  4E B9 00 00 01 D0          jsr        $1d0.l
00006AAC  60 4E                      bra.b      $6afc
00006AAE  0C 6D 00 02 D8 96          cmpi.w     #$2, -$276a(a5)
00006AB4  66 08                      bne.b      $6abe
00006AB6  4E B9 00 00 01 B0          jsr        $1b0.l
00006ABC  60 3E                      bra.b      $6afc
00006ABE  4E B9 00 00 01 90          jsr        $190.l
00006AC4  60 36                      bra.b      $6afc
00006AC6  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00006ACC  66 18                      bne.b      $6ae6
00006ACE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006AD4  66 08                      bne.b      $6ade
00006AD6  4E B9 00 00 01 D0          jsr        $1d0.l
00006ADC  60 1E                      bra.b      $6afc
00006ADE  4E B9 00 00 02 B0          jsr        $2b0.l
00006AE4  60 16                      bra.b      $6afc
00006AE6  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00006AEC  66 0E                      bne.b      $6afc
00006AEE  0C 2D 00 01 DE D6          cmpi.b     #$1, -$212a(a5)
00006AF4  66 06                      bne.b      $6afc
00006AF6  4E B9 00 00 01 D0          jsr        $1d0.l
00006AFC  4E B9 00 00 4A 90          jsr        $4a90.l
00006B02  4A 2D D7 E2                tst.b      -$281e(a5)
00006B06  67 00 FD 82                beq.w      $688a
00006B0A  4E 5E                      unlk       a6
00006B0C  4E 75                      rts

; MacsBug symbol trailer for HandleTheFatalities: 93 48 61 6E 64 6C 65 54 68 65 46 61 74 61 6C 69 74 69 65 73

LoadPreferences: ; 00006B24..00006B66
00006B24  4E 56 FF FC                link.w     a6, #$fffc
00006B28  2F 0A                      move.l     a2, -(a7)
00006B2A  59 4F                      subq.w     #$4, a7
00006B2C  2F 3C 70 72 66 73          move.l     #$70726673, -(a7)
00006B32  3F 3C 00 80                move.w     #$80, -(a7)
00006B36  A9 A0                      .byte      0xa9, 0xa0
00006B38  20 5F                      movea.l    (a7)+, a0
00006B3A  24 48                      movea.l    a0, a2
00006B3C  20 0A                      move.l     a2, d0
00006B3E  67 20                      beq.b      $6b60
00006B40  59 4F                      subq.w     #$4, a7
00006B42  2F 0A                      move.l     a2, -(a7)
00006B44  4E B9 00 00 00 60          jsr        $60.l
00006B4A  20 1F                      move.l     (a7)+, d0
00006B4C  2D 40 FF FC                move.l     d0, -$4(a6)
00006B50  20 52                      movea.l    (a2), a0
00006B52  43 ED E3 2E                lea.l      -$1cd2(a5), a1
00006B56  20 2E FF FC                move.l     -$4(a6), d0
00006B5A  A0 2E                      .byte      0xa0, 0x2e
00006B5C  2F 0A                      move.l     a2, -(a7)
00006B5E  A9 A3                      .byte      0xa9, 0xa3
00006B60  24 5F                      movea.l    (a7)+, a2
00006B62  4E 5E                      unlk       a6
00006B64  4E 75                      rts

; MacsBug symbol trailer for LoadPreferences: 8F 4C 6F 61 64 50 72 65 66 65 72 65 6E 63 65 73

SavePreferences: ; 00006B78..00006CC4
00006B78  4E 56 00 00                link.w     a6, #$0
00006B7C  2F 0A                      move.l     a2, -(a7)
00006B7E  10 2D E3 31                move.b     -$1ccf(a5), d0
00006B82  48 80                      ext.w      d0
00006B84  3B 40 E3 48                move.w     d0, -$1cb8(a5)
00006B88  10 2D E3 2F                move.b     -$1cd1(a5), d0
00006B8C  48 80                      ext.w      d0
00006B8E  3B 40 E3 4C                move.w     d0, -$1cb4(a5)
00006B92  10 2D E3 33                move.b     -$1ccd(a5), d0
00006B96  48 80                      ext.w      d0
00006B98  3B 40 E3 4E                move.w     d0, -$1cb2(a5)
00006B9C  10 2D E3 35                move.b     -$1ccb(a5), d0
00006BA0  48 80                      ext.w      d0
00006BA2  3B 40 E3 52                move.w     d0, -$1cae(a5)
00006BA6  10 2D E3 37                move.b     -$1cc9(a5), d0
00006BAA  48 80                      ext.w      d0
00006BAC  3B 40 E3 56                move.w     d0, -$1caa(a5)
00006BB0  10 2D E3 39                move.b     -$1cc7(a5), d0
00006BB4  48 80                      ext.w      d0
00006BB6  3B 40 CF 1E                move.w     d0, -$30e2(a5)
00006BBA  10 2D E3 30                move.b     -$1cd0(a5), d0
00006BBE  48 80                      ext.w      d0
00006BC0  3B 40 E3 4A                move.w     d0, -$1cb6(a5)
00006BC4  10 2D E3 2E                move.b     -$1cd2(a5), d0
00006BC8  48 80                      ext.w      d0
00006BCA  3B 40 CF 20                move.w     d0, -$30e0(a5)
00006BCE  10 2D E3 32                move.b     -$1cce(a5), d0
00006BD2  48 80                      ext.w      d0
00006BD4  3B 40 E3 50                move.w     d0, -$1cb0(a5)
00006BD8  10 2D E3 34                move.b     -$1ccc(a5), d0
00006BDC  48 80                      ext.w      d0
00006BDE  3B 40 E3 54                move.w     d0, -$1cac(a5)
00006BE2  10 2D E3 36                move.b     -$1cca(a5), d0
00006BE6  48 80                      ext.w      d0
00006BE8  3B 40 E3 58                move.w     d0, -$1ca8(a5)
00006BEC  10 2D E3 38                move.b     -$1cc8(a5), d0
00006BF0  48 80                      ext.w      d0
00006BF2  3B 40 CF 1C                move.w     d0, -$30e4(a5)
00006BF6  10 2D E3 3D                move.b     -$1cc3(a5), d0
00006BFA  48 80                      ext.w      d0
00006BFC  3B 40 E3 5A                move.w     d0, -$1ca6(a5)
00006C00  10 2D E3 3B                move.b     -$1cc5(a5), d0
00006C04  48 80                      ext.w      d0
00006C06  3B 40 E3 5E                move.w     d0, -$1ca2(a5)
00006C0A  10 2D E3 3F                move.b     -$1cc1(a5), d0
00006C0E  48 80                      ext.w      d0
00006C10  3B 40 E3 60                move.w     d0, -$1ca0(a5)
00006C14  10 2D E3 41                move.b     -$1cbf(a5), d0
00006C18  48 80                      ext.w      d0
00006C1A  3B 40 E3 64                move.w     d0, -$1c9c(a5)
00006C1E  10 2D E3 43                move.b     -$1cbd(a5), d0
00006C22  48 80                      ext.w      d0
00006C24  3B 40 E3 68                move.w     d0, -$1c98(a5)
00006C28  10 2D E3 45                move.b     -$1cbb(a5), d0
00006C2C  48 80                      ext.w      d0
00006C2E  3B 40 CF 18                move.w     d0, -$30e8(a5)
00006C32  10 2D E3 3C                move.b     -$1cc4(a5), d0
00006C36  48 80                      ext.w      d0
00006C38  3B 40 E3 5C                move.w     d0, -$1ca4(a5)
00006C3C  10 2D E3 3A                move.b     -$1cc6(a5), d0
00006C40  48 80                      ext.w      d0
00006C42  3B 40 CF 1A                move.w     d0, -$30e6(a5)
00006C46  10 2D E3 3E                move.b     -$1cc2(a5), d0
00006C4A  48 80                      ext.w      d0
00006C4C  3B 40 E3 62                move.w     d0, -$1c9e(a5)
00006C50  10 2D E3 40                move.b     -$1cc0(a5), d0
00006C54  48 80                      ext.w      d0
00006C56  3B 40 E3 66                move.w     d0, -$1c9a(a5)
00006C5A  10 2D E3 42                move.b     -$1cbe(a5), d0
00006C5E  48 80                      ext.w      d0
00006C60  3B 40 E3 6A                move.w     d0, -$1c96(a5)
00006C64  10 2D E3 44                move.b     -$1cbc(a5), d0
00006C68  48 80                      ext.w      d0
00006C6A  3B 40 CF 16                move.w     d0, -$30ea(a5)
00006C6E  1B 6D E3 46 D7 E0          move.b     -$1cba(a5), -$2820(a5)
00006C74  60 08                      bra.b      $6c7e
00006C76  2F 0A                      move.l     a2, -(a7)
00006C78  A9 AD                      .byte      0xa9, 0xad
00006C7A  20 4A                      movea.l    a2, a0
00006C7C  A0 23                      .byte      0xa0, 0x23
00006C7E  59 4F                      subq.w     #$4, a7
00006C80  2F 3C 70 72 66 73          move.l     #$70726673, -(a7)
00006C86  3F 3C 00 80                move.w     #$80, -(a7)
00006C8A  A9 A0                      .byte      0xa9, 0xa0
00006C8C  20 5F                      movea.l    (a7)+, a0
00006C8E  24 48                      movea.l    a0, a2
00006C90  20 08                      move.l     a0, d0
00006C92  66 E2                      bne.b      $6c76
00006C94  70 1A                      moveq      #$1a, d0
00006C96  A1 22                      .byte      0xa1, 0x22
00006C98  24 48                      movea.l    a0, a2
00006C9A  41 ED E3 2E                lea.l      -$1cd2(a5), a0
00006C9E  22 52                      movea.l    (a2), a1
00006CA0  70 1A                      moveq      #$1a, d0
00006CA2  A0 2E                      .byte      0xa0, 0x2e
00006CA4  2F 0A                      move.l     a2, -(a7)
00006CA6  2F 3C 70 72 66 73          move.l     #$70726673, -(a7)
00006CAC  3F 3C 00 80                move.w     #$80, -(a7)
00006CB0  48 6D E3 6C                pea.l      -$1c94(a5)
00006CB4  A9 AB                      .byte      0xa9, 0xab
00006CB6  2F 0A                      move.l     a2, -(a7)
00006CB8  A9 B0                      .byte      0xa9, 0xb0
00006CBA  2F 0A                      move.l     a2, -(a7)
00006CBC  A9 A3                      .byte      0xa9, 0xa3
00006CBE  24 5F                      movea.l    (a7)+, a2
00006CC0  4E 5E                      unlk       a6
00006CC2  4E 75                      rts

; MacsBug symbol trailer for SavePreferences: 8F 53 61 76 65 50 72 65 66 65 72 65 6E 63 65 73

saveRegistration: ; 00006CD6..00006CE8
00006CD6  4E 56 00 00                link.w     a6, #$0
00006CDA  1B 6D D7 E0 E3 46          move.b     -$2820(a5), -$1cba(a5)
00006CE0  4E BA FE 96                jsr        $6b78(pc)
00006CE4  4E 5E                      unlk       a6
00006CE6  4E 75                      rts

; MacsBug symbol trailer for saveRegistration: 90 73 61 76 65 52 65 67 69 73 74 72 61 74 69 6F 6E

FeedbackKey: ; 00006CFC..00006DFA
00006CFC  4E 56 FF F2                link.w     a6, #$fff2
00006D00  48 E7 10 38                movem.l    d3/a2-a4, -(a7)
00006D04  28 6E 00 08                movea.l    $8(a6), a4
00006D08  36 2E 00 0C                move.w     $c(a6), d3
00006D0C  47 ED E3 78                lea.l      -$1c88(a5), a3
00006D10  2F 0C                      move.l     a4, -(a7)
00006D12  3F 03                      move.w     d3, -(a7)
00006D14  48 6E FF FA                pea.l      -$6(a6)
00006D18  48 6E FF FC                pea.l      -$4(a6)
00006D1C  48 6E FF F2                pea.l      -$e(a6)
00006D20  A9 8D                      .byte      0xa9, 0x8d
00006D22  30 2E 00 0E                move.w     $e(a6), d0
00006D26  04 40 00 24                subi.w     #$24, d0
00006D2A  67 4C                      beq.b      $6d78
00006D2C  04 40 00 0C                subi.w     #$c, d0
00006D30  67 4C                      beq.b      $6d7e
00006D32  53 40                      subq.w     #$1, d0
00006D34  67 4E                      beq.b      $6d84
00006D36  55 40                      subq.w     #$2, d0
00006D38  67 50                      beq.b      $6d8a
00006D3A  55 40                      subq.w     #$2, d0
00006D3C  67 52                      beq.b      $6d90
00006D3E  55 40                      subq.w     #$2, d0
00006D40  67 54                      beq.b      $6d96
00006D42  53 40                      subq.w     #$1, d0
00006D44  67 56                      beq.b      $6d9c
00006D46  55 40                      subq.w     #$2, d0
00006D48  67 58                      beq.b      $6da2
00006D4A  53 40                      subq.w     #$1, d0
00006D4C  67 5A                      beq.b      $6da8
00006D4E  53 40                      subq.w     #$1, d0
00006D50  67 4A                      beq.b      $6d9c
00006D52  53 40                      subq.w     #$1, d0
00006D54  67 4C                      beq.b      $6da2
00006D56  53 40                      subq.w     #$1, d0
00006D58  67 4E                      beq.b      $6da8
00006D5A  04 40 00 09                subi.w     #$9, d0
00006D5E  67 4E                      beq.b      $6dae
00006D60  5B 40                      subq.w     #$5, d0
00006D62  67 50                      beq.b      $6db4
00006D64  04 40 00 2F                subi.w     #$2f, d0
00006D68  67 50                      beq.b      $6dba
00006D6A  53 40                      subq.w     #$1, d0
00006D6C  67 52                      beq.b      $6dc0
00006D6E  53 40                      subq.w     #$1, d0
00006D70  67 5A                      beq.b      $6dcc
00006D72  53 40                      subq.w     #$1, d0
00006D74  67 50                      beq.b      $6dc6
00006D76  60 5A                      bra.b      $6dd2
00006D78  45 ED E3 7B                lea.l      -$1c85(a5), a2
00006D7C  60 60                      bra.b      $6dde
00006D7E  45 ED E3 82                lea.l      -$1c7e(a5), a2
00006D82  60 5A                      bra.b      $6dde
00006D84  45 ED E3 86                lea.l      -$1c7a(a5), a2
00006D88  60 54                      bra.b      $6dde
00006D8A  45 ED E3 8D                lea.l      -$1c73(a5), a2
00006D8E  60 4E                      bra.b      $6dde
00006D90  45 ED E3 94                lea.l      -$1c6c(a5), a2
00006D94  60 48                      bra.b      $6dde
00006D96  45 ED E3 98                lea.l      -$1c68(a5), a2
00006D9A  60 42                      bra.b      $6dde
00006D9C  45 ED E3 9C                lea.l      -$1c64(a5), a2
00006DA0  60 3C                      bra.b      $6dde
00006DA2  45 ED E3 A3                lea.l      -$1c5d(a5), a2
00006DA6  60 36                      bra.b      $6dde
00006DA8  45 ED E3 AA                lea.l      -$1c56(a5), a2
00006DAC  60 30                      bra.b      $6dde
00006DAE  45 ED E3 B2                lea.l      -$1c4e(a5), a2
00006DB2  60 2A                      bra.b      $6dde
00006DB4  45 ED E3 B8                lea.l      -$1c48(a5), a2
00006DB8  60 24                      bra.b      $6dde
00006DBA  45 ED E3 BF                lea.l      -$1c41(a5), a2
00006DBE  60 1E                      bra.b      $6dde
00006DC0  45 ED E3 C4                lea.l      -$1c3c(a5), a2
00006DC4  60 18                      bra.b      $6dde
00006DC6  45 ED E3 CA                lea.l      -$1c36(a5), a2
00006DCA  60 12                      bra.b      $6dde
00006DCC  45 ED E3 CD                lea.l      -$1c33(a5), a2
00006DD0  60 0C                      bra.b      $6dde
00006DD2  24 4B                      movea.l    a3, a2
00006DD4  16 BC 00 01                move.b     #$1, (a3)
00006DD8  17 6E 00 11 00 01          move.b     $11(a6), $1(a3)
00006DDE  2F 2E FF FC                move.l     -$4(a6), -(a7)
00006DE2  2F 0A                      move.l     a2, -(a7)
00006DE4  A9 8F                      .byte      0xa9, 0x8f
00006DE6  2F 0C                      move.l     a4, -(a7)
00006DE8  3F 03                      move.w     d3, -(a7)
00006DEA  2F 3C 7F FF 00 00          move.l     #$7fff0000, -(a7)
00006DF0  A9 7E                      .byte      0xa9, 0x7e
00006DF2  4C DF 1C 08                movem.l    (a7)+, d3/a2-a4
00006DF6  4E 5E                      unlk       a6
00006DF8  4E 75                      rts

; MacsBug symbol trailer for FeedbackKey: 8B 46 65 65 64 62 61 63 6B 4B 65 79

DoKeyConfiguration: ; 00006E08..00006FEE
00006E08  4E 56 00 00                link.w     a6, #$0
00006E0C  4E BA FD 16                jsr        $6b24(pc)
00006E10  59 4F                      subq.w     #$4, a7
00006E12  3F 3C 00 80                move.w     #$80, -(a7)
00006E16  42 A7                      clr.l      -(a7)
00006E18  48 78 FF FF                pea.l      $ffff.w
00006E1C  A9 7C                      .byte      0xa9, 0x7c
00006E1E  20 5F                      movea.l    (a7)+, a0
00006E20  2B 48 CF 24                move.l     a0, -$30dc(a5)
00006E24  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006E28  A9 15                      .byte      0xa9, 0x15
00006E2A  10 2D E3 2F                move.b     -$1cd1(a5), d0
00006E2E  48 80                      ext.w      d0
00006E30  3F 00                      move.w     d0, -(a7)
00006E32  10 2D E3 2E                move.b     -$1cd2(a5), d0
00006E36  48 80                      ext.w      d0
00006E38  3F 00                      move.w     d0, -(a7)
00006E3A  3F 3C 00 04                move.w     #$4, -(a7)
00006E3E  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006E42  4E BA FE B8                jsr        $6cfc(pc)
00006E46  10 2D E3 31                move.b     -$1ccf(a5), d0
00006E4A  48 80                      ext.w      d0
00006E4C  3F 00                      move.w     d0, -(a7)
00006E4E  10 2D E3 30                move.b     -$1cd0(a5), d0
00006E52  48 80                      ext.w      d0
00006E54  3F 00                      move.w     d0, -(a7)
00006E56  3F 3C 00 06                move.w     #$6, -(a7)
00006E5A  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006E5E  4E BA FE 9C                jsr        $6cfc(pc)
00006E62  10 2D E3 33                move.b     -$1ccd(a5), d0
00006E66  48 80                      ext.w      d0
00006E68  3F 00                      move.w     d0, -(a7)
00006E6A  10 2D E3 32                move.b     -$1cce(a5), d0
00006E6E  48 80                      ext.w      d0
00006E70  3F 00                      move.w     d0, -(a7)
00006E72  3F 3C 00 03                move.w     #$3, -(a7)
00006E76  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006E7A  4E BA FE 80                jsr        $6cfc(pc)
00006E7E  10 2D E3 35                move.b     -$1ccb(a5), d0
00006E82  48 80                      ext.w      d0
00006E84  3F 00                      move.w     d0, -(a7)
00006E86  10 2D E3 34                move.b     -$1ccc(a5), d0
00006E8A  48 80                      ext.w      d0
00006E8C  3F 00                      move.w     d0, -(a7)
00006E8E  3F 3C 00 05                move.w     #$5, -(a7)
00006E92  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006E96  4E BA FE 64                jsr        $6cfc(pc)
00006E9A  10 2D E3 37                move.b     -$1cc9(a5), d0
00006E9E  48 80                      ext.w      d0
00006EA0  3F 00                      move.w     d0, -(a7)
00006EA2  10 2D E3 36                move.b     -$1cca(a5), d0
00006EA6  48 80                      ext.w      d0
00006EA8  3F 00                      move.w     d0, -(a7)
00006EAA  3F 3C 00 07                move.w     #$7, -(a7)
00006EAE  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006EB2  4E BA FE 48                jsr        $6cfc(pc)
00006EB6  10 2D E3 39                move.b     -$1cc7(a5), d0
00006EBA  48 80                      ext.w      d0
00006EBC  3F 00                      move.w     d0, -(a7)
00006EBE  10 2D E3 38                move.b     -$1cc8(a5), d0
00006EC2  48 80                      ext.w      d0
00006EC4  3F 00                      move.w     d0, -(a7)
00006EC6  3F 3C 00 08                move.w     #$8, -(a7)
00006ECA  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006ECE  4E BA FE 2C                jsr        $6cfc(pc)
00006ED2  10 2D E3 3B                move.b     -$1cc5(a5), d0
00006ED6  48 80                      ext.w      d0
00006ED8  3F 00                      move.w     d0, -(a7)
00006EDA  10 2D E3 3A                move.b     -$1cc6(a5), d0
00006EDE  48 80                      ext.w      d0
00006EE0  3F 00                      move.w     d0, -(a7)
00006EE2  3F 3C 00 0A                move.w     #$a, -(a7)
00006EE6  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006EEA  4E BA FE 10                jsr        $6cfc(pc)
00006EEE  10 2D E3 3D                move.b     -$1cc3(a5), d0
00006EF2  48 80                      ext.w      d0
00006EF4  3F 00                      move.w     d0, -(a7)
00006EF6  10 2D E3 3C                move.b     -$1cc4(a5), d0
00006EFA  48 80                      ext.w      d0
00006EFC  3F 00                      move.w     d0, -(a7)
00006EFE  3F 3C 00 0C                move.w     #$c, -(a7)
00006F02  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F06  4E BA FD F4                jsr        $6cfc(pc)
00006F0A  10 2D E3 3F                move.b     -$1cc1(a5), d0
00006F0E  48 80                      ext.w      d0
00006F10  3F 00                      move.w     d0, -(a7)
00006F12  10 2D E3 3E                move.b     -$1cc2(a5), d0
00006F16  48 80                      ext.w      d0
00006F18  3F 00                      move.w     d0, -(a7)
00006F1A  3F 3C 00 09                move.w     #$9, -(a7)
00006F1E  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F22  4E BA FD D8                jsr        $6cfc(pc)
00006F26  10 2D E3 41                move.b     -$1cbf(a5), d0
00006F2A  48 80                      ext.w      d0
00006F2C  3F 00                      move.w     d0, -(a7)
00006F2E  10 2D E3 40                move.b     -$1cc0(a5), d0
00006F32  48 80                      ext.w      d0
00006F34  3F 00                      move.w     d0, -(a7)
00006F36  3F 3C 00 0B                move.w     #$b, -(a7)
00006F3A  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F3E  4E BA FD BC                jsr        $6cfc(pc)
00006F42  10 2D E3 43                move.b     -$1cbd(a5), d0
00006F46  48 80                      ext.w      d0
00006F48  3F 00                      move.w     d0, -(a7)
00006F4A  10 2D E3 42                move.b     -$1cbe(a5), d0
00006F4E  48 80                      ext.w      d0
00006F50  3F 00                      move.w     d0, -(a7)
00006F52  3F 3C 00 0D                move.w     #$d, -(a7)
00006F56  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F5A  4E BA FD A0                jsr        $6cfc(pc)
00006F5E  10 2D E3 45                move.b     -$1cbb(a5), d0
00006F62  48 80                      ext.w      d0
00006F64  3F 00                      move.w     d0, -(a7)
00006F66  10 2D E3 44                move.b     -$1cbc(a5), d0
00006F6A  48 80                      ext.w      d0
00006F6C  3F 00                      move.w     d0, -(a7)
00006F6E  3F 3C 00 0E                move.w     #$e, -(a7)
00006F72  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F76  4E BA FD 84                jsr        $6cfc(pc)
00006F7A  3B 7C 00 03 CF 22          move.w     #$3, -$30de(a5)
00006F80  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006F84  3F 2D CF 22                move.w     -$30de(a5), -(a7)
00006F88  2F 3C 7F FF 00 00          move.l     #$7fff0000, -(a7)
00006F8E  A9 7E                      .byte      0xa9, 0x7e
00006F90  4F EF 00 78                lea.l      $78(a7), a7
00006F94  60 44                      bra.b      $6fda
00006F96  48 79 00 00 70 D4          pea.l      $70d4.l
00006F9C  48 6D CF 22                pea.l      -$30de(a5)
00006FA0  A9 91                      .byte      0xa9, 0x91
00006FA2  30 2D CF 22                move.w     -$30de(a5), d0
00006FA6  53 40                      subq.w     #$1, d0
00006FA8  67 0C                      beq.b      $6fb6
00006FAA  0C 40 00 0D                cmpi.w     #$d, d0
00006FAE  62 2A                      bhi.b      $6fda
00006FB0  53 40                      subq.w     #$1, d0
00006FB2  67 0E                      beq.b      $6fc2
00006FB4  60 14                      bra.b      $6fca
00006FB6  4E BA FB C0                jsr        $6b78(pc)
00006FBA  1B 7C 00 01 CF 28          move.b     #$1, -$30d8(a5)
00006FC0  60 18                      bra.b      $6fda
00006FC2  1B 7C 00 01 CF 28          move.b     #$1, -$30d8(a5)
00006FC8  60 10                      bra.b      $6fda
00006FCA  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006FCE  3F 2D CF 22                move.w     -$30de(a5), -(a7)
00006FD2  2F 3C 7F FF 00 00          move.l     #$7fff0000, -(a7)
00006FD8  A9 7E                      .byte      0xa9, 0x7e
00006FDA  4A 2D CF 28                tst.b      -$30d8(a5)
00006FDE  67 B6                      beq.b      $6f96
00006FE0  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00006FE4  A9 83                      .byte      0xa9, 0x83
00006FE6  42 2D CF 28                clr.b      -$30d8(a5)
00006FEA  4E 5E                      unlk       a6
00006FEC  4E 75                      rts

; MacsBug symbol trailer for DoKeyConfiguration: 92 44 6F 4B 65 79 43 6F 6E 66 69 67 75 72 61 74 69 6F 6E

RegisterKey: ; 00007004..000070C6
00007004  4E 56 00 00                link.w     a6, #$0
00007008  48 E7 18 00                movem.l    d3-d4, -(a7)
0000700C  38 2E 00 0A                move.w     $a(a6), d4
00007010  36 2E 00 0C                move.w     $c(a6), d3
00007014  30 2E 00 08                move.w     $8(a6), d0
00007018  0C 40 00 0E                cmpi.w     #$e, d0
0000701C  62 00 00 A0                bhi.w      $70be
00007020  D0 40                      add.w      d0, d0
00007022  30 3B 00 06                move.w     $702a(pc, d0.w), d0
00007026  4E FB 00 02                jmp        $702a(pc, d0.w)
0000702A  00 94 00 94 00 94          ori.l      #$940094, (a4)
00007030  00 1E 00 28                ori.b      #$28, (a6)+
00007034  00 32 00 3C 00 46          ori.b      #$3c, $46(a2, d0.w)
0000703A  00 50 00 5A                ori.w      #$5a, (a0)
0000703E  00 64 00 6E                ori.w      #$6e, -(a4)
00007042  00 78 00 82 00 8C          ori.w      #$82, $8c.w
00007048  1B 43 E3 33                move.b     d3, -$1ccd(a5)
0000704C  1B 44 E3 32                move.b     d4, -$1cce(a5)
00007050  60 6C                      bra.b      $70be
00007052  1B 43 E3 2F                move.b     d3, -$1cd1(a5)
00007056  1B 44 E3 2E                move.b     d4, -$1cd2(a5)
0000705A  60 62                      bra.b      $70be
0000705C  1B 43 E3 35                move.b     d3, -$1ccb(a5)
00007060  1B 44 E3 34                move.b     d4, -$1ccc(a5)
00007064  60 58                      bra.b      $70be
00007066  1B 43 E3 31                move.b     d3, -$1ccf(a5)
0000706A  1B 44 E3 30                move.b     d4, -$1cd0(a5)
0000706E  60 4E                      bra.b      $70be
00007070  1B 43 E3 37                move.b     d3, -$1cc9(a5)
00007074  1B 44 E3 36                move.b     d4, -$1cca(a5)
00007078  60 44                      bra.b      $70be
0000707A  1B 43 E3 39                move.b     d3, -$1cc7(a5)
0000707E  1B 44 E3 38                move.b     d4, -$1cc8(a5)
00007082  60 3A                      bra.b      $70be
00007084  1B 43 E3 3F                move.b     d3, -$1cc1(a5)
00007088  1B 44 E3 3E                move.b     d4, -$1cc2(a5)
0000708C  60 30                      bra.b      $70be
0000708E  1B 43 E3 3B                move.b     d3, -$1cc5(a5)
00007092  1B 44 E3 3A                move.b     d4, -$1cc6(a5)
00007096  60 26                      bra.b      $70be
00007098  1B 43 E3 41                move.b     d3, -$1cbf(a5)
0000709C  1B 44 E3 40                move.b     d4, -$1cc0(a5)
000070A0  60 1C                      bra.b      $70be
000070A2  1B 43 E3 3D                move.b     d3, -$1cc3(a5)
000070A6  1B 44 E3 3C                move.b     d4, -$1cc4(a5)
000070AA  60 12                      bra.b      $70be
000070AC  1B 43 E3 43                move.b     d3, -$1cbd(a5)
000070B0  1B 44 E3 42                move.b     d4, -$1cbe(a5)
000070B4  60 08                      bra.b      $70be
000070B6  1B 43 E3 45                move.b     d3, -$1cbb(a5)
000070BA  1B 44 E3 44                move.b     d4, -$1cbc(a5)
000070BE  4C DF 00 18                movem.l    (a7)+, d3-d4
000070C2  4E 5E                      unlk       a6
000070C4  4E 75                      rts

; MacsBug symbol trailer for RegisterKey: 8B 52 65 67 69 73 74 65 72 4B 65 79

InitMiniVersus: ; 000070D4..000071B4
000070D4  4E 56 00 00                link.w     a6, #$0
000070D8  48 E7 10 20                movem.l    d3/a2, -(a7)
000070DC  24 6E 00 0C                movea.l    $c(a6), a2
000070E0  0C 52 00 03                cmpi.w     #$3, (a2)
000070E4  67 06                      beq.b      $70ec
000070E6  42 2F 00 1C                clr.b      $1c(a7)
000070EA  60 5A                      bra.b      $7146
000070EC  0C 52 00 03                cmpi.w     #$3, (a2)
000070F0  66 54                      bne.b      $7146
000070F2  20 2A 00 02                move.l     $2(a2), d0
000070F6  02 80 00 00 FF 00          andi.l     #$ff00, d0
000070FC  E0 80                      asr.l      #$8, d0
000070FE  3B 40 CF 2C                move.w     d0, -$30d4(a5)
00007102  20 2A 00 02                move.l     $2(a2), d0
00007106  02 80 00 00 00 FF          andi.l     #$ff, d0
0000710C  3B 40 CF 2A                move.w     d0, -$30d6(a5)
00007110  20 6D CF 24                movea.l    -$30dc(a5), a0
00007114  36 28 00 A4                move.w     $a4(a0), d3
00007118  52 43                      addq.w     #$1, d3
0000711A  3F 2D CF 2A                move.w     -$30d6(a5), -(a7)
0000711E  3F 2D CF 2C                move.w     -$30d4(a5), -(a7)
00007122  3F 03                      move.w     d3, -(a7)
00007124  4E BA FE DE                jsr        $7004(pc)
00007128  3F 2D CF 2A                move.w     -$30d6(a5), -(a7)
0000712C  3F 2D CF 2C                move.w     -$30d4(a5), -(a7)
00007130  3F 03                      move.w     d3, -(a7)
00007132  2F 2D CF 24                move.l     -$30dc(a5), -(a7)
00007136  4E BA FB C4                jsr        $6cfc(pc)
0000713A  1F 7C 00 01 00 2C          move.b     #$1, $2c(a7)
00007140  4F EF 00 10                lea.l      $10(a7), a7
00007144  4E 71                      nop
00007146  4C DF 04 08                movem.l    (a7)+, d3/a2
0000714A  4E 5E                      unlk       a6
0000714C  20 5F                      movea.l    (a7)+, a0
0000714E  4F EF 00 0C                lea.l      $c(a7), a7
00007152  4E D0                      jmp        (a0)
00007154  8B 4D                      dc.w       $8b4d
00007156  59 44                      subq.w     #$4, d4
00007158  4C 47                      .byte      0x4c, 0x47
0000715A  46 49                      .byte      0x46, 0x49
0000715C  4C 54                      .byte      0x4c, 0x54
0000715E  45 52                      .byte      0x45, 0x52
00007160  00 00 4E 56                ori.b      #$56, d0
00007164  FF F8                      .byte      0xff, 0xf8
00007166  48 6E FF F8                pea.l      -$8(a6)
0000716A  42 A7                      clr.l      -(a7)
0000716C  2F 3C 00 64 00 64          move.l     #$640064, -(a7)
00007172  A8 A7                      .byte      0xa8, 0xa7
00007174  48 6D D7 FC                pea.l      -$2804(a5)
00007178  48 6D D3 F6                pea.l      -$2c0a(a5)
0000717C  3F 3C 03 84                move.w     #$384, -(a7)
00007180  4E B9 00 00 7E E0          jsr        $7ee0.l
00007186  48 6D D7 FC                pea.l      -$2804(a5)
0000718A  48 6D D3 EA                pea.l      -$2c16(a5)
0000718E  3F 3C 03 86                move.w     #$386, -(a7)
00007192  4E B9 00 00 7E E0          jsr        $7ee0.l
00007198  42 6D CF 2E                clr.w      -$30d2(a5)
0000719C  42 6D CF 30                clr.w      -$30d0(a5)
000071A0  42 6D CF 32                clr.w      -$30ce(a5)
000071A4  42 6D CF 34                clr.w      -$30cc(a5)
000071A8  42 6D CF 36                clr.w      -$30ca(a5)
000071AC  42 6D CF 38                clr.w      -$30c8(a5)
000071B0  4E 5E                      unlk       a6
000071B2  4E 75                      rts

; MacsBug symbol trailer for InitMiniVersus: 8E 49 6E 69 74 4D 69 6E 69 56 65 72 73 75 73

InitVersusCrap: ; 000071C6..00007248
000071C6  4E 56 00 00                link.w     a6, #$0
000071CA  42 6D D4 1A                clr.w      -$2be6(a5)
000071CE  42 6D D4 18                clr.w      -$2be8(a5)
000071D2  42 6D D4 16                clr.w      -$2bea(a5)
000071D6  42 6D D4 14                clr.w      -$2bec(a5)
000071DA  42 6D D4 12                clr.w      -$2bee(a5)
000071DE  42 6D D4 10                clr.w      -$2bf0(a5)
000071E2  3F 3C 00 CA                move.w     #$ca, -(a7)
000071E6  4E B9 00 00 7D F2          jsr        $7df2.l
000071EC  4E B9 00 00 7A 14          jsr        $7a14.l
000071F2  42 67                      clr.w      -(a7)
000071F4  3F 2D D4 1A                move.w     -$2be6(a5), -(a7)
000071F8  4E B9 00 00 77 70          jsr        $7770.l
000071FE  3F 3C 00 01                move.w     #$1, -(a7)
00007202  3F 2D D4 18                move.w     -$2be8(a5), -(a7)
00007206  4E B9 00 00 77 70          jsr        $7770.l
0000720C  3F 3C 00 02                move.w     #$2, -(a7)
00007210  3F 2D D4 16                move.w     -$2bea(a5), -(a7)
00007214  4E B9 00 00 77 70          jsr        $7770.l
0000721A  3F 3C 00 03                move.w     #$3, -(a7)
0000721E  3F 2D D4 14                move.w     -$2bec(a5), -(a7)
00007222  4E B9 00 00 77 70          jsr        $7770.l
00007228  3F 3C 00 04                move.w     #$4, -(a7)
0000722C  3F 2D D4 12                move.w     -$2bee(a5), -(a7)
00007230  4E B9 00 00 77 70          jsr        $7770.l
00007236  3F 3C 00 05                move.w     #$5, -(a7)
0000723A  3F 2D D4 10                move.w     -$2bf0(a5), -(a7)
0000723E  4E B9 00 00 77 70          jsr        $7770.l
00007244  4E 5E                      unlk       a6
00007246  4E 75                      rts

; MacsBug symbol trailer for InitVersusCrap: 8E 49 6E 69 74 56 65 72 73 75 73 43 72 61 70

InitVersusCrapCPU: ; 0000725A..00007284
0000725A  4E 56 FF F8                link.w     a6, #$fff8
0000725E  48 6E FF F8                pea.l      -$8(a6)
00007262  42 A7                      clr.l      -(a7)
00007264  2F 3C 01 1B 01 91          move.l     #$11b0191, -(a7)
0000726A  A8 A7                      .byte      0xa8, 0xa7
0000726C  48 6E FF F8                pea.l      -$8(a6)
00007270  3F 3C 00 CB                move.w     #$cb, -(a7)
00007274  4E B9 00 00 7C BE          jsr        $7cbe.l
0000727A  4E B9 00 00 7A 9C          jsr        $7a9c.l
00007280  4E 5E                      unlk       a6
00007282  4E 75                      rts

; MacsBug symbol trailer for InitVersusCrapCPU: 91 49 6E 69 74 56 65 72 73 75 73 43 72 61 70 43 50 55

CheckKey2: ; 00007298..000072DA
00007298  4E 56 FF F0                link.w     a6, #$fff0
0000729C  48 E7 1C 20                movem.l    d3-d5/a2, -(a7)
000072A0  3A 2E 00 08                move.w     $8(a6), d5
000072A4  48 6E FF F0                pea.l      -$10(a6)
000072A8  A9 76                      .byte      0xa9, 0x76
000072AA  36 05                      move.w     d5, d3
000072AC  E6 43                      asr.w      #$3, d3
000072AE  45 EE FF F0                lea.l      -$10(a6), a2
000072B2  18 32 30 00                move.b     (a2, d3.w), d4
000072B6  30 05                      move.w     d5, d0
000072B8  02 40 00 07                andi.w     #$7, d0
000072BC  76 01                      moveq      #$1, d3
000072BE  E1 AB                      lsl.l      d0, d3
000072C0  10 03                      move.b     d3, d0
000072C2  48 80                      ext.w      d0
000072C4  12 04                      move.b     d4, d1
000072C6  48 81                      ext.w      d1
000072C8  C2 40                      and.w      d0, d1
000072CA  56 C1                      sne.b      d1
000072CC  44 01                      neg.b      d1
000072CE  48 81                      ext.w      d1
000072D0  10 01                      move.b     d1, d0
000072D2  4C DF 04 38                movem.l    (a7)+, d3-d5/a2
000072D6  4E 5E                      unlk       a6
000072D8  4E 75                      rts

; MacsBug symbol trailer for CheckKey2: 89 43 68 65 63 6B 4B 65 79 32

HandleRegisterKeyDown: ; 000072E6..000074B8
000072E6  4E 56 00 00                link.w     a6, #$0
000072EA  20 2D CF 3E                move.l     -$30c2(a5), d0
000072EE  02 80 00 00 00 FF          andi.l     #$ff, d0
000072F4  1B 40 CF 3B                move.b     d0, -$30c5(a5)
000072F8  10 2D CF 3B                move.b     -$30c5(a5), d0
000072FC  48 80                      ext.w      d0
000072FE  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00007302  66 3E                      bne.b      $7342
00007304  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007308  4E BA FF 8E                jsr        $7298(pc)
0000730C  53 00                      subq.b     #$1, d0
0000730E  54 4F                      addq.w     #$2, a7
00007310  66 12                      bne.b      $7324
00007312  53 6D CF 38                subq.w     #$1, -$30c8(a5)
00007316  4A 6D CF 38                tst.w      -$30c8(a5)
0000731A  6C 26                      bge.b      $7342
0000731C  3B 7C 00 09 CF 38          move.w     #$9, -$30c8(a5)
00007322  60 1E                      bra.b      $7342
00007324  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007328  4E BA FF 6E                jsr        $7298(pc)
0000732C  4A 00                      tst.b      d0
0000732E  54 4F                      addq.w     #$2, a7
00007330  66 10                      bne.b      $7342
00007332  52 6D CF 38                addq.w     #$1, -$30c8(a5)
00007336  0C 6D 00 09 CF 38          cmpi.w     #$9, -$30c8(a5)
0000733C  6F 04                      ble.b      $7342
0000733E  42 6D CF 38                clr.w      -$30c8(a5)
00007342  10 2D CF 3B                move.b     -$30c5(a5), d0
00007346  48 80                      ext.w      d0
00007348  B0 6D E3 52                cmp.w      -$1cae(a5), d0
0000734C  66 3E                      bne.b      $738c
0000734E  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007352  4E BA FF 44                jsr        $7298(pc)
00007356  53 00                      subq.b     #$1, d0
00007358  54 4F                      addq.w     #$2, a7
0000735A  66 12                      bne.b      $736e
0000735C  53 6D CF 36                subq.w     #$1, -$30ca(a5)
00007360  4A 6D CF 36                tst.w      -$30ca(a5)
00007364  6C 26                      bge.b      $738c
00007366  3B 7C 00 09 CF 36          move.w     #$9, -$30ca(a5)
0000736C  60 1E                      bra.b      $738c
0000736E  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007372  4E BA FF 24                jsr        $7298(pc)
00007376  4A 00                      tst.b      d0
00007378  54 4F                      addq.w     #$2, a7
0000737A  66 10                      bne.b      $738c
0000737C  52 6D CF 36                addq.w     #$1, -$30ca(a5)
00007380  0C 6D 00 09 CF 36          cmpi.w     #$9, -$30ca(a5)
00007386  6F 04                      ble.b      $738c
00007388  42 6D CF 36                clr.w      -$30ca(a5)
0000738C  10 2D CF 3B                move.b     -$30c5(a5), d0
00007390  48 80                      ext.w      d0
00007392  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00007396  66 3E                      bne.b      $73d6
00007398  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
0000739C  4E BA FE FA                jsr        $7298(pc)
000073A0  53 00                      subq.b     #$1, d0
000073A2  54 4F                      addq.w     #$2, a7
000073A4  66 12                      bne.b      $73b8
000073A6  53 6D CF 34                subq.w     #$1, -$30cc(a5)
000073AA  4A 6D CF 34                tst.w      -$30cc(a5)
000073AE  6C 26                      bge.b      $73d6
000073B0  3B 7C 00 09 CF 34          move.w     #$9, -$30cc(a5)
000073B6  60 1E                      bra.b      $73d6
000073B8  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
000073BC  4E BA FE DA                jsr        $7298(pc)
000073C0  4A 00                      tst.b      d0
000073C2  54 4F                      addq.w     #$2, a7
000073C4  66 10                      bne.b      $73d6
000073C6  52 6D CF 34                addq.w     #$1, -$30cc(a5)
000073CA  0C 6D 00 09 CF 34          cmpi.w     #$9, -$30cc(a5)
000073D0  6F 04                      ble.b      $73d6
000073D2  42 6D CF 34                clr.w      -$30cc(a5)
000073D6  10 2D CF 3B                move.b     -$30c5(a5), d0
000073DA  48 80                      ext.w      d0
000073DC  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
000073E0  66 3E                      bne.b      $7420
000073E2  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
000073E6  4E BA FE B0                jsr        $7298(pc)
000073EA  53 00                      subq.b     #$1, d0
000073EC  54 4F                      addq.w     #$2, a7
000073EE  66 12                      bne.b      $7402
000073F0  53 6D CF 32                subq.w     #$1, -$30ce(a5)
000073F4  4A 6D CF 32                tst.w      -$30ce(a5)
000073F8  6C 26                      bge.b      $7420
000073FA  3B 7C 00 09 CF 32          move.w     #$9, -$30ce(a5)
00007400  60 1E                      bra.b      $7420
00007402  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007406  4E BA FE 90                jsr        $7298(pc)
0000740A  4A 00                      tst.b      d0
0000740C  54 4F                      addq.w     #$2, a7
0000740E  66 10                      bne.b      $7420
00007410  52 6D CF 32                addq.w     #$1, -$30ce(a5)
00007414  0C 6D 00 09 CF 32          cmpi.w     #$9, -$30ce(a5)
0000741A  6F 04                      ble.b      $7420
0000741C  42 6D CF 32                clr.w      -$30ce(a5)
00007420  10 2D CF 3B                move.b     -$30c5(a5), d0
00007424  48 80                      ext.w      d0
00007426  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000742A  66 3E                      bne.b      $746a
0000742C  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007430  4E BA FE 66                jsr        $7298(pc)
00007434  53 00                      subq.b     #$1, d0
00007436  54 4F                      addq.w     #$2, a7
00007438  66 12                      bne.b      $744c
0000743A  53 6D CF 30                subq.w     #$1, -$30d0(a5)
0000743E  4A 6D CF 30                tst.w      -$30d0(a5)
00007442  6C 26                      bge.b      $746a
00007444  3B 7C 00 09 CF 30          move.w     #$9, -$30d0(a5)
0000744A  60 1E                      bra.b      $746a
0000744C  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007450  4E BA FE 46                jsr        $7298(pc)
00007454  4A 00                      tst.b      d0
00007456  54 4F                      addq.w     #$2, a7
00007458  66 10                      bne.b      $746a
0000745A  52 6D CF 30                addq.w     #$1, -$30d0(a5)
0000745E  0C 6D 00 09 CF 30          cmpi.w     #$9, -$30d0(a5)
00007464  6F 04                      ble.b      $746a
00007466  42 6D CF 30                clr.w      -$30d0(a5)
0000746A  10 2D CF 3B                move.b     -$30c5(a5), d0
0000746E  48 80                      ext.w      d0
00007470  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
00007474  66 3E                      bne.b      $74b4
00007476  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000747A  4E BA FE 1C                jsr        $7298(pc)
0000747E  53 00                      subq.b     #$1, d0
00007480  54 4F                      addq.w     #$2, a7
00007482  66 12                      bne.b      $7496
00007484  53 6D CF 2E                subq.w     #$1, -$30d2(a5)
00007488  4A 6D CF 2E                tst.w      -$30d2(a5)
0000748C  6C 26                      bge.b      $74b4
0000748E  3B 7C 00 09 CF 2E          move.w     #$9, -$30d2(a5)
00007494  60 1E                      bra.b      $74b4
00007496  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000749A  4E BA FD FC                jsr        $7298(pc)
0000749E  4A 00                      tst.b      d0
000074A0  54 4F                      addq.w     #$2, a7
000074A2  66 10                      bne.b      $74b4
000074A4  52 6D CF 2E                addq.w     #$1, -$30d2(a5)
000074A8  0C 6D 00 09 CF 2E          cmpi.w     #$9, -$30d2(a5)
000074AE  6F 04                      ble.b      $74b4
000074B0  42 6D CF 2E                clr.w      -$30d2(a5)
000074B4  4E 5E                      unlk       a6
000074B6  4E 75                      rts

; MacsBug symbol trailer for HandleRegisterKeyDown: 95 48 61 6E 64 6C 65 52 65 67 69 73 74 65 72 4B 65 79 44 6F 77 6E

HandleVSKeyDown: ; 000074D0..0000775E
000074D0  4E 56 00 00                link.w     a6, #$0
000074D4  20 2D CF 3E                move.l     -$30c2(a5), d0
000074D8  02 80 00 00 00 FF          andi.l     #$ff, d0
000074DE  1B 40 CF 3B                move.b     d0, -$30c5(a5)
000074E2  10 2D CF 3B                move.b     -$30c5(a5), d0
000074E6  48 80                      ext.w      d0
000074E8  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
000074EC  66 5A                      bne.b      $7548
000074EE  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
000074F2  4E BA FD A4                jsr        $7298(pc)
000074F6  53 00                      subq.b     #$1, d0
000074F8  54 4F                      addq.w     #$2, a7
000074FA  66 20                      bne.b      $751c
000074FC  53 6D D4 1A                subq.w     #$1, -$2be6(a5)
00007500  4A 6D D4 1A                tst.w      -$2be6(a5)
00007504  6C 06                      bge.b      $750c
00007506  3B 7C 00 09 D4 1A          move.w     #$9, -$2be6(a5)
0000750C  42 67                      clr.w      -(a7)
0000750E  3F 2D D4 1A                move.w     -$2be6(a5), -(a7)
00007512  4E B9 00 00 77 70          jsr        $7770.l
00007518  58 4F                      addq.w     #$4, a7
0000751A  60 2C                      bra.b      $7548
0000751C  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007520  4E BA FD 76                jsr        $7298(pc)
00007524  4A 00                      tst.b      d0
00007526  54 4F                      addq.w     #$2, a7
00007528  66 1E                      bne.b      $7548
0000752A  52 6D D4 1A                addq.w     #$1, -$2be6(a5)
0000752E  0C 6D 00 09 D4 1A          cmpi.w     #$9, -$2be6(a5)
00007534  6F 04                      ble.b      $753a
00007536  42 6D D4 1A                clr.w      -$2be6(a5)
0000753A  42 67                      clr.w      -(a7)
0000753C  3F 2D D4 1A                move.w     -$2be6(a5), -(a7)
00007540  4E B9 00 00 77 70          jsr        $7770.l
00007546  58 4F                      addq.w     #$4, a7
00007548  10 2D CF 3B                move.b     -$30c5(a5), d0
0000754C  48 80                      ext.w      d0
0000754E  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00007552  66 5E                      bne.b      $75b2
00007554  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007558  4E BA FD 3E                jsr        $7298(pc)
0000755C  53 00                      subq.b     #$1, d0
0000755E  54 4F                      addq.w     #$2, a7
00007560  66 22                      bne.b      $7584
00007562  53 6D D4 18                subq.w     #$1, -$2be8(a5)
00007566  4A 6D D4 18                tst.w      -$2be8(a5)
0000756A  6C 06                      bge.b      $7572
0000756C  3B 7C 00 09 D4 18          move.w     #$9, -$2be8(a5)
00007572  3F 3C 00 01                move.w     #$1, -(a7)
00007576  3F 2D D4 18                move.w     -$2be8(a5), -(a7)
0000757A  4E B9 00 00 77 70          jsr        $7770.l
00007580  58 4F                      addq.w     #$4, a7
00007582  60 2E                      bra.b      $75b2
00007584  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
00007588  4E BA FD 0E                jsr        $7298(pc)
0000758C  4A 00                      tst.b      d0
0000758E  54 4F                      addq.w     #$2, a7
00007590  66 20                      bne.b      $75b2
00007592  52 6D D4 18                addq.w     #$1, -$2be8(a5)
00007596  0C 6D 00 09 D4 18          cmpi.w     #$9, -$2be8(a5)
0000759C  6F 04                      ble.b      $75a2
0000759E  42 6D D4 18                clr.w      -$2be8(a5)
000075A2  3F 3C 00 01                move.w     #$1, -(a7)
000075A6  3F 2D D4 18                move.w     -$2be8(a5), -(a7)
000075AA  4E B9 00 00 77 70          jsr        $7770.l
000075B0  58 4F                      addq.w     #$4, a7
000075B2  10 2D CF 3B                move.b     -$30c5(a5), d0
000075B6  48 80                      ext.w      d0
000075B8  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
000075BC  66 5E                      bne.b      $761c
000075BE  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
000075C2  4E BA FC D4                jsr        $7298(pc)
000075C6  53 00                      subq.b     #$1, d0
000075C8  54 4F                      addq.w     #$2, a7
000075CA  66 22                      bne.b      $75ee
000075CC  53 6D D4 16                subq.w     #$1, -$2bea(a5)
000075D0  4A 6D D4 16                tst.w      -$2bea(a5)
000075D4  6C 06                      bge.b      $75dc
000075D6  3B 7C 00 09 D4 16          move.w     #$9, -$2bea(a5)
000075DC  3F 3C 00 02                move.w     #$2, -(a7)
000075E0  3F 2D D4 16                move.w     -$2bea(a5), -(a7)
000075E4  4E B9 00 00 77 70          jsr        $7770.l
000075EA  58 4F                      addq.w     #$4, a7
000075EC  60 2E                      bra.b      $761c
000075EE  3F 2D E3 50                move.w     -$1cb0(a5), -(a7)
000075F2  4E BA FC A4                jsr        $7298(pc)
000075F6  4A 00                      tst.b      d0
000075F8  54 4F                      addq.w     #$2, a7
000075FA  66 20                      bne.b      $761c
000075FC  52 6D D4 16                addq.w     #$1, -$2bea(a5)
00007600  0C 6D 00 09 D4 16          cmpi.w     #$9, -$2bea(a5)
00007606  6F 04                      ble.b      $760c
00007608  42 6D D4 16                clr.w      -$2bea(a5)
0000760C  3F 3C 00 02                move.w     #$2, -(a7)
00007610  3F 2D D4 16                move.w     -$2bea(a5), -(a7)
00007614  4E B9 00 00 77 70          jsr        $7770.l
0000761A  58 4F                      addq.w     #$4, a7
0000761C  10 2D CF 3B                move.b     -$30c5(a5), d0
00007620  48 80                      ext.w      d0
00007622  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
00007626  66 5E                      bne.b      $7686
00007628  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000762C  4E BA FC 6A                jsr        $7298(pc)
00007630  53 00                      subq.b     #$1, d0
00007632  54 4F                      addq.w     #$2, a7
00007634  66 22                      bne.b      $7658
00007636  53 6D D4 14                subq.w     #$1, -$2bec(a5)
0000763A  4A 6D D4 14                tst.w      -$2bec(a5)
0000763E  6C 06                      bge.b      $7646
00007640  3B 7C 00 09 D4 14          move.w     #$9, -$2bec(a5)
00007646  3F 3C 00 03                move.w     #$3, -(a7)
0000764A  3F 2D D4 14                move.w     -$2bec(a5), -(a7)
0000764E  4E B9 00 00 77 70          jsr        $7770.l
00007654  58 4F                      addq.w     #$4, a7
00007656  60 2E                      bra.b      $7686
00007658  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
0000765C  4E BA FC 3A                jsr        $7298(pc)
00007660  4A 00                      tst.b      d0
00007662  54 4F                      addq.w     #$2, a7
00007664  66 20                      bne.b      $7686
00007666  52 6D D4 14                addq.w     #$1, -$2bec(a5)
0000766A  0C 6D 00 09 D4 14          cmpi.w     #$9, -$2bec(a5)
00007670  6F 04                      ble.b      $7676
00007672  42 6D D4 14                clr.w      -$2bec(a5)
00007676  3F 3C 00 03                move.w     #$3, -(a7)
0000767A  3F 2D D4 14                move.w     -$2bec(a5), -(a7)
0000767E  4E B9 00 00 77 70          jsr        $7770.l
00007684  58 4F                      addq.w     #$4, a7
00007686  10 2D CF 3B                move.b     -$30c5(a5), d0
0000768A  48 80                      ext.w      d0
0000768C  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
00007690  66 5E                      bne.b      $76f0
00007692  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007696  4E BA FC 00                jsr        $7298(pc)
0000769A  53 00                      subq.b     #$1, d0
0000769C  54 4F                      addq.w     #$2, a7
0000769E  66 22                      bne.b      $76c2
000076A0  53 6D D4 12                subq.w     #$1, -$2bee(a5)
000076A4  4A 6D D4 12                tst.w      -$2bee(a5)
000076A8  6C 06                      bge.b      $76b0
000076AA  3B 7C 00 09 D4 12          move.w     #$9, -$2bee(a5)
000076B0  3F 3C 00 04                move.w     #$4, -(a7)
000076B4  3F 2D D4 12                move.w     -$2bee(a5), -(a7)
000076B8  4E B9 00 00 77 70          jsr        $7770.l
000076BE  58 4F                      addq.w     #$4, a7
000076C0  60 2E                      bra.b      $76f0
000076C2  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
000076C6  4E BA FB D0                jsr        $7298(pc)
000076CA  4A 00                      tst.b      d0
000076CC  54 4F                      addq.w     #$2, a7
000076CE  66 20                      bne.b      $76f0
000076D0  52 6D D4 12                addq.w     #$1, -$2bee(a5)
000076D4  0C 6D 00 09 D4 12          cmpi.w     #$9, -$2bee(a5)
000076DA  6F 04                      ble.b      $76e0
000076DC  42 6D D4 12                clr.w      -$2bee(a5)
000076E0  3F 3C 00 04                move.w     #$4, -(a7)
000076E4  3F 2D D4 12                move.w     -$2bee(a5), -(a7)
000076E8  4E B9 00 00 77 70          jsr        $7770.l
000076EE  58 4F                      addq.w     #$4, a7
000076F0  10 2D CF 3B                move.b     -$30c5(a5), d0
000076F4  48 80                      ext.w      d0
000076F6  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
000076FA  66 5E                      bne.b      $775a
000076FC  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007700  4E BA FB 96                jsr        $7298(pc)
00007704  53 00                      subq.b     #$1, d0
00007706  54 4F                      addq.w     #$2, a7
00007708  66 22                      bne.b      $772c
0000770A  53 6D D4 10                subq.w     #$1, -$2bf0(a5)
0000770E  4A 6D D4 10                tst.w      -$2bf0(a5)
00007712  6C 06                      bge.b      $771a
00007714  3B 7C 00 09 D4 10          move.w     #$9, -$2bf0(a5)
0000771A  3F 3C 00 05                move.w     #$5, -(a7)
0000771E  3F 2D D4 10                move.w     -$2bf0(a5), -(a7)
00007722  4E B9 00 00 77 70          jsr        $7770.l
00007728  58 4F                      addq.w     #$4, a7
0000772A  60 2E                      bra.b      $775a
0000772C  3F 2D E3 62                move.w     -$1c9e(a5), -(a7)
00007730  4E BA FB 66                jsr        $7298(pc)
00007734  4A 00                      tst.b      d0
00007736  54 4F                      addq.w     #$2, a7
00007738  66 20                      bne.b      $775a
0000773A  52 6D D4 10                addq.w     #$1, -$2bf0(a5)
0000773E  0C 6D 00 09 D4 10          cmpi.w     #$9, -$2bf0(a5)
00007744  6F 04                      ble.b      $774a
00007746  42 6D D4 10                clr.w      -$2bf0(a5)
0000774A  3F 3C 00 05                move.w     #$5, -(a7)
0000774E  3F 2D D4 10                move.w     -$2bf0(a5), -(a7)
00007752  4E B9 00 00 77 70          jsr        $7770.l
00007758  58 4F                      addq.w     #$4, a7
0000775A  4E 5E                      unlk       a6
0000775C  4E 75                      rts

; MacsBug symbol trailer for HandleVSKeyDown: 8F 48 61 6E 64 6C 65 56 53 4B 65 79 44 6F 77 6E

ChangeKodeBox: ; 00007770..000077F4
00007770  4E 56 00 00                link.w     a6, #$0
00007774  2F 03                      move.l     d3, -(a7)
00007776  36 2E 00 0A                move.w     $a(a6), d3
0000777A  20 6D D3 F6                movea.l    -$2c0a(a5), a0
0000777E  48 68 00 02                pea.l      $2(a0)
00007782  20 6D D3 EA                movea.l    -$2c16(a5), a0
00007786  48 68 00 02                pea.l      $2(a0)
0000778A  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000778E  48 68 00 02                pea.l      $2(a0)
00007792  30 6E 00 08                movea.w    $8(a6), a0
00007796  20 08                      move.l     a0, d0
00007798  E7 88                      lsl.l      #$3, d0
0000779A  41 ED D4 B6                lea.l      -$2b4a(a5), a0
0000779E  D1 C0                      adda.l     d0, a0
000077A0  48 50                      pea.l      (a0)
000077A2  48 6D D4 AE                pea.l      -$2b52(a5)
000077A6  30 43                      movea.w    d3, a0
000077A8  20 08                      move.l     a0, d0
000077AA  E7 88                      lsl.l      #$3, d0
000077AC  41 ED D4 7E                lea.l      -$2b82(a5), a0
000077B0  D1 C0                      adda.l     d0, a0
000077B2  48 50                      pea.l      (a0)
000077B4  A8 17                      .byte      0xa8, 0x17
000077B6  20 6D D3 FE                movea.l    -$2c02(a5), a0
000077BA  48 68 00 02                pea.l      $2(a0)
000077BE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000077C2  48 68 00 02                pea.l      $2(a0)
000077C6  30 43                      movea.w    d3, a0
000077C8  20 08                      move.l     a0, d0
000077CA  E7 88                      lsl.l      #$3, d0
000077CC  41 ED D4 7E                lea.l      -$2b82(a5), a0
000077D0  D1 C0                      adda.l     d0, a0
000077D2  48 50                      pea.l      (a0)
000077D4  30 43                      movea.w    d3, a0
000077D6  20 08                      move.l     a0, d0
000077D8  E7 88                      lsl.l      #$3, d0
000077DA  41 ED D4 7E                lea.l      -$2b82(a5), a0
000077DE  D1 C0                      adda.l     d0, a0
000077E0  48 50                      pea.l      (a0)
000077E2  42 67                      clr.w      -(a7)
000077E4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000077E8  2F 28 00 18                move.l     $18(a0), -(a7)
000077EC  A8 EC                      .byte      0xa8, 0xec
000077EE  26 1F                      move.l     (a7)+, d3
000077F0  4E 5E                      unlk       a6
000077F2  4E 75                      rts

; MacsBug symbol trailer for ChangeKodeBox: 8D 43 68 61 6E 67 65 4B 6F 64 65 42 6F 78

MoveVersusCrap: ; 00007804..00007826
00007804  4E 56 00 00                link.w     a6, #$0
00007808  55 4F                      subq.w     #$2, a7
0000780A  3F 3C FF FF                move.w     #$ffff, -(a7)
0000780E  48 6D CF 3C                pea.l      -$30c4(a5)
00007812  A9 70                      .byte      0xa9, 0x70
00007814  10 1F                      move.b     (a7)+, d0
00007816  0C 6D 00 03 CF 3C          cmpi.w     #$3, -$30c4(a5)
0000781C  66 04                      bne.b      $7822
0000781E  4E BA FC B0                jsr        $74d0(pc)
00007822  4E 5E                      unlk       a6
00007824  4E 75                      rts

; MacsBug symbol trailer for MoveVersusCrap: 8E 4D 6F 76 65 56 65 72 73 75 73 43 72 61 70

MoveRegistration: ; 00007838..00007988
00007838  4E 56 FF F8                link.w     a6, #$fff8
0000783C  48 6E FF F8                pea.l      -$8(a6)
00007840  42 A7                      clr.l      -(a7)
00007842  2F 3C 00 64 00 64          move.l     #$640064, -(a7)
00007848  A8 A7                      .byte      0xa8, 0xa7
0000784A  55 4F                      subq.w     #$2, a7
0000784C  3F 3C FF FF                move.w     #$ffff, -(a7)
00007850  48 6D CF 3C                pea.l      -$30c4(a5)
00007854  A9 70                      .byte      0xa9, 0x70
00007856  10 1F                      move.b     (a7)+, d0
00007858  0C 6D 00 03 CF 3C          cmpi.w     #$3, -$30c4(a5)
0000785E  66 04                      bne.b      $7864
00007860  4E BA FA 84                jsr        $72e6(pc)
00007864  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00007868  48 68 00 02                pea.l      $2(a0)
0000786C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007870  48 68 00 02                pea.l      $2(a0)
00007874  30 6D CF 38                movea.w    -$30c8(a5), a0
00007878  20 08                      move.l     a0, d0
0000787A  E7 88                      lsl.l      #$3, d0
0000787C  41 ED D4 B6                lea.l      -$2b4a(a5), a0
00007880  D1 C0                      adda.l     d0, a0
00007882  48 50                      pea.l      (a0)
00007884  48 6D D4 7E                pea.l      -$2b82(a5)
00007888  42 67                      clr.w      -(a7)
0000788A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000788E  2F 28 00 18                move.l     $18(a0), -(a7)
00007892  A8 EC                      .byte      0xa8, 0xec
00007894  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00007898  48 68 00 02                pea.l      $2(a0)
0000789C  20 6D D3 DE                movea.l    -$2c22(a5), a0
000078A0  48 68 00 02                pea.l      $2(a0)
000078A4  30 6D CF 36                movea.w    -$30ca(a5), a0
000078A8  20 08                      move.l     a0, d0
000078AA  E7 88                      lsl.l      #$3, d0
000078AC  41 ED D4 B6                lea.l      -$2b4a(a5), a0
000078B0  D1 C0                      adda.l     d0, a0
000078B2  48 50                      pea.l      (a0)
000078B4  48 6D D4 86                pea.l      -$2b7a(a5)
000078B8  42 67                      clr.w      -(a7)
000078BA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000078BE  2F 28 00 18                move.l     $18(a0), -(a7)
000078C2  A8 EC                      .byte      0xa8, 0xec
000078C4  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000078C8  48 68 00 02                pea.l      $2(a0)
000078CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000078D0  48 68 00 02                pea.l      $2(a0)
000078D4  30 6D CF 34                movea.w    -$30cc(a5), a0
000078D8  20 08                      move.l     a0, d0
000078DA  E7 88                      lsl.l      #$3, d0
000078DC  41 ED D4 B6                lea.l      -$2b4a(a5), a0
000078E0  D1 C0                      adda.l     d0, a0
000078E2  48 50                      pea.l      (a0)
000078E4  48 6D D4 8E                pea.l      -$2b72(a5)
000078E8  42 67                      clr.w      -(a7)
000078EA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000078EE  2F 28 00 18                move.l     $18(a0), -(a7)
000078F2  A8 EC                      .byte      0xa8, 0xec
000078F4  20 6D D3 F6                movea.l    -$2c0a(a5), a0
000078F8  48 68 00 02                pea.l      $2(a0)
000078FC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007900  48 68 00 02                pea.l      $2(a0)
00007904  30 6D CF 32                movea.w    -$30ce(a5), a0
00007908  20 08                      move.l     a0, d0
0000790A  E7 88                      lsl.l      #$3, d0
0000790C  41 ED D4 B6                lea.l      -$2b4a(a5), a0
00007910  D1 C0                      adda.l     d0, a0
00007912  48 50                      pea.l      (a0)
00007914  48 6D D4 96                pea.l      -$2b6a(a5)
00007918  42 67                      clr.w      -(a7)
0000791A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000791E  2F 28 00 18                move.l     $18(a0), -(a7)
00007922  A8 EC                      .byte      0xa8, 0xec
00007924  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00007928  48 68 00 02                pea.l      $2(a0)
0000792C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007930  48 68 00 02                pea.l      $2(a0)
00007934  30 6D CF 30                movea.w    -$30d0(a5), a0
00007938  20 08                      move.l     a0, d0
0000793A  E7 88                      lsl.l      #$3, d0
0000793C  41 ED D4 B6                lea.l      -$2b4a(a5), a0
00007940  D1 C0                      adda.l     d0, a0
00007942  48 50                      pea.l      (a0)
00007944  48 6D D4 9E                pea.l      -$2b62(a5)
00007948  42 67                      clr.w      -(a7)
0000794A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000794E  2F 28 00 18                move.l     $18(a0), -(a7)
00007952  A8 EC                      .byte      0xa8, 0xec
00007954  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00007958  48 68 00 02                pea.l      $2(a0)
0000795C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007960  48 68 00 02                pea.l      $2(a0)
00007964  30 6D CF 2E                movea.w    -$30d2(a5), a0
00007968  20 08                      move.l     a0, d0
0000796A  E7 88                      lsl.l      #$3, d0
0000796C  41 ED D4 B6                lea.l      -$2b4a(a5), a0
00007970  D1 C0                      adda.l     d0, a0
00007972  48 50                      pea.l      (a0)
00007974  48 6D D4 A6                pea.l      -$2b5a(a5)
00007978  42 67                      clr.w      -(a7)
0000797A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000797E  2F 28 00 18                move.l     $18(a0), -(a7)
00007982  A8 EC                      .byte      0xa8, 0xec
00007984  4E 5E                      unlk       a6
00007986  4E 75                      rts

; MacsBug symbol trailer for MoveRegistration: 90 4D 6F 76 65 52 65 67 69 73 74 72 61 74 69 6F 6E

CheckRegistration: ; 0000799C..00007A00
0000799C  4E 56 00 00                link.w     a6, #$0
000079A0  0C 6D 00 02 CF 38          cmpi.w     #$2, -$30c8(a5)
000079A6  66 3C                      bne.b      $79e4
000079A8  0C 6D 00 02 CF 36          cmpi.w     #$2, -$30ca(a5)
000079AE  66 34                      bne.b      $79e4
000079B0  0C 6D 00 05 CF 34          cmpi.w     #$5, -$30cc(a5)
000079B6  66 2C                      bne.b      $79e4
000079B8  0C 6D 00 01 CF 32          cmpi.w     #$1, -$30ce(a5)
000079BE  66 24                      bne.b      $79e4
000079C0  4A 6D CF 30                tst.w      -$30d0(a5)
000079C4  66 1E                      bne.b      $79e4
000079C6  0C 6D 00 01 CF 2E          cmpi.w     #$1, -$30d2(a5)
000079CC  66 16                      bne.b      $79e4
000079CE  1B 7C 00 01 D7 E0          move.b     #$1, -$2820(a5)
000079D4  2F 3C 27 11 00 0A          move.l     #$2711000a, -(a7)
000079DA  4E B9 00 00 00 A8          jsr        $a8.l
000079E0  58 4F                      addq.w     #$4, a7
000079E2  60 12                      bra.b      $79f6
000079E4  42 2D D7 E0                clr.b      -$2820(a5)
000079E8  2F 3C 13 89 00 0A          move.l     #$1389000a, -(a7)
000079EE  4E B9 00 00 00 A8          jsr        $a8.l
000079F4  58 4F                      addq.w     #$4, a7
000079F6  4E B9 00 00 6C D6          jsr        $6cd6.l
000079FC  4E 5E                      unlk       a6
000079FE  4E 75                      rts

; MacsBug symbol trailer for CheckRegistration: 91 43 68 65 63 6B 52 65 67 69 73 74 72 61 74 69 6F 6E

DrawVSPicts: ; 00007A14..00007A8E
00007A14  4E 56 FF E4                link.w     a6, #$ffe4
00007A18  48 6E FF F8                pea.l      -$8(a6)
00007A1C  2F 3C 00 91 00 64          move.l     #$910064, -(a7)
00007A22  2F 3C 01 2C 00 DF          move.l     #$12c00df, -(a7)
00007A28  A8 A7                      .byte      0xa8, 0xa7
00007A2A  48 6E FF F0                pea.l      -$10(a6)
00007A2E  2F 3C 00 91 01 25          move.l     #$910125, -(a7)
00007A34  2F 3C 01 2C 01 A0          move.l     #$12c01a0, -(a7)
00007A3A  A8 A7                      .byte      0xa8, 0xa7
00007A3C  59 4F                      subq.w     #$4, a7
00007A3E  30 2D FF E0                move.w     -$20(a5), d0
00007A42  06 40 0B B7                addi.w     #$bb7, d0
00007A46  3F 00                      move.w     d0, -(a7)
00007A48  A9 BC                      .byte      0xa9, 0xbc
00007A4A  20 5F                      movea.l    (a7)+, a0
00007A4C  2D 48 FF E8                move.l     a0, -$18(a6)
00007A50  59 4F                      subq.w     #$4, a7
00007A52  30 2D FF E2                move.w     -$1e(a5), d0
00007A56  06 40 0B B7                addi.w     #$bb7, d0
00007A5A  3F 00                      move.w     d0, -(a7)
00007A5C  A9 BC                      .byte      0xa9, 0xbc
00007A5E  20 5F                      movea.l    (a7)+, a0
00007A60  2D 48 FF E4                move.l     a0, -$1c(a6)
00007A64  48 6E FF EC                pea.l      -$14(a6)
00007A68  A8 74                      .byte      0xa8, 0x74
00007A6A  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
00007A6E  A8 73                      .byte      0xa8, 0x73
00007A70  2F 2E FF E8                move.l     -$18(a6), -(a7)
00007A74  48 6E FF F8                pea.l      -$8(a6)
00007A78  A8 F6                      .byte      0xa8, 0xf6
00007A7A  2F 2E FF E4                move.l     -$1c(a6), -(a7)
00007A7E  48 6E FF F0                pea.l      -$10(a6)
00007A82  A8 F6                      .byte      0xa8, 0xf6
00007A84  2F 2E FF EC                move.l     -$14(a6), -(a7)
00007A88  A8 73                      .byte      0xa8, 0x73
00007A8A  4E 5E                      unlk       a6
00007A8C  4E 75                      rts

; MacsBug symbol trailer for DrawVSPicts: 8B 44 72 61 77 56 53 50 69 63 74 73

DrawVSPictsCPU: ; 00007A9C..00007CAC
00007A9C  4E 56 FF BC                link.w     a6, #$ffbc
00007AA0  48 E7 10 38                movem.l    d3/a2-a4, -(a7)
00007AA4  0C 2D 00 01 D7 C7          cmpi.b     #$1, -$2839(a5)
00007AAA  66 06                      bne.b      $7ab2
00007AAC  3B 7C 00 01 FF E0          move.w     #$1, -$20(a5)
00007AB2  0C 2D 00 01 D7 C1          cmpi.b     #$1, -$283f(a5)
00007AB8  66 06                      bne.b      $7ac0
00007ABA  3B 7C 00 01 FF E2          move.w     #$1, -$1e(a5)
00007AC0  48 6E FF F4                pea.l      -$c(a6)
00007AC4  2F 3C 00 8B 00 81          move.l     #$8b0081, -(a7)
00007ACA  2F 3C 01 26 00 FC          move.l     #$12600fc, -(a7)
00007AD0  A8 A7                      .byte      0xa8, 0xa7
00007AD2  48 6E FF EC                pea.l      -$14(a6)
00007AD6  2F 3C 00 8B 01 08          move.l     #$8b0108, -(a7)
00007ADC  2F 3C 01 26 01 83          move.l     #$1260183, -(a7)
00007AE2  A8 A7                      .byte      0xa8, 0xa7
00007AE4  48 6E FF E4                pea.l      -$1c(a6)
00007AE8  42 A7                      clr.l      -(a7)
00007AEA  2F 3C 00 9B 00 7B          move.l     #$9b007b, -(a7)
00007AF0  A8 A7                      .byte      0xa8, 0xa7
00007AF2  48 6E FF DC                pea.l      -$24(a6)
00007AF6  2F 3C 00 7B 00 00          move.l     #$7b0000, -(a7)
00007AFC  2F 3C 00 9B 00 7B          move.l     #$9b007b, -(a7)
00007B02  A8 A7                      .byte      0xa8, 0xa7
00007B04  48 6E FF D4                pea.l      -$2c(a6)
00007B08  2F 3C 00 4B 01 08          move.l     #$4b0108, -(a7)
00007B0E  2F 3C 00 6B 01 83          move.l     #$6b0183, -(a7)
00007B14  A8 A7                      .byte      0xa8, 0xa7
00007B16  48 6E FF CC                pea.l      -$34(a6)
00007B1A  2F 3C 00 C8 00 00          move.l     #$c80000, -(a7)
00007B20  2F 3C 01 63 00 7B          move.l     #$163007b, -(a7)
00007B26  A8 A7                      .byte      0xa8, 0xa7
00007B28  48 6E FF C4                pea.l      -$3c(a6)
00007B2C  2F 3C 00 C8 00 00          move.l     #$c80000, -(a7)
00007B32  2F 3C 00 E8 00 7B          move.l     #$e8007b, -(a7)
00007B38  A8 A7                      .byte      0xa8, 0xa7
00007B3A  48 6E FF BC                pea.l      -$44(a6)
00007B3E  2F 3C 01 46 01 08          move.l     #$1460108, -(a7)
00007B44  2F 3C 01 66 01 83          move.l     #$1660183, -(a7)
00007B4A  A8 A7                      .byte      0xa8, 0xa7
00007B4C  59 4F                      subq.w     #$4, a7
00007B4E  30 2D FF E0                move.w     -$20(a5), d0
00007B52  06 40 0B B7                addi.w     #$bb7, d0
00007B56  3F 00                      move.w     d0, -(a7)
00007B58  A9 BC                      .byte      0xa9, 0xbc
00007B5A  20 5F                      movea.l    (a7)+, a0
00007B5C  26 08                      move.l     a0, d3
00007B5E  0C 6D 00 0A D7 36          cmpi.w     #$a, -$28ca(a5)
00007B64  66 0E                      bne.b      $7b74
00007B66  59 4F                      subq.w     #$4, a7
00007B68  3F 3C 0D AC                move.w     #$dac, -(a7)
00007B6C  A9 BC                      .byte      0xa9, 0xbc
00007B6E  20 5F                      movea.l    (a7)+, a0
00007B70  24 48                      movea.l    a0, a2
00007B72  60 12                      bra.b      $7b86
00007B74  59 4F                      subq.w     #$4, a7
00007B76  30 2D FF E2                move.w     -$1e(a5), d0
00007B7A  06 40 0B B7                addi.w     #$bb7, d0
00007B7E  3F 00                      move.w     d0, -(a7)
00007B80  A9 BC                      .byte      0xa9, 0xbc
00007B82  20 5F                      movea.l    (a7)+, a0
00007B84  24 48                      movea.l    a0, a2
00007B86  0C 6D 00 0C D7 36          cmpi.w     #$c, -$28ca(a5)
00007B8C  6C 34                      bge.b      $7bc2
00007B8E  0C 6D 00 09 D7 36          cmpi.w     #$9, -$28ca(a5)
00007B94  66 0E                      bne.b      $7ba4
00007B96  59 4F                      subq.w     #$4, a7
00007B98  3F 3C 0D AC                move.w     #$dac, -(a7)
00007B9C  A9 BC                      .byte      0xa9, 0xbc
00007B9E  20 5F                      movea.l    (a7)+, a0
00007BA0  26 48                      movea.l    a0, a3
00007BA2  60 1E                      bra.b      $7bc2
00007BA4  59 4F                      subq.w     #$4, a7
00007BA6  30 2D D7 36                move.w     -$28ca(a5), d0
00007BAA  52 40                      addq.w     #$1, d0
00007BAC  41 ED D7 38                lea.l      -$28c8(a5), a0
00007BB0  D0 C0                      adda.w     d0, a0
00007BB2  30 30 00 00                move.w     (a0, d0.w), d0
00007BB6  06 40 0B B7                addi.w     #$bb7, d0
00007BBA  3F 00                      move.w     d0, -(a7)
00007BBC  A9 BC                      .byte      0xa9, 0xbc
00007BBE  20 5F                      movea.l    (a7)+, a0
00007BC0  26 48                      movea.l    a0, a3
00007BC2  4A 6D D7 36                tst.w      -$28ca(a5)
00007BC6  6F 34                      ble.b      $7bfc
00007BC8  0C 6D 00 0B D7 36          cmpi.w     #$b, -$28ca(a5)
00007BCE  66 0E                      bne.b      $7bde
00007BD0  59 4F                      subq.w     #$4, a7
00007BD2  3F 3C 0D AC                move.w     #$dac, -(a7)
00007BD6  A9 BC                      .byte      0xa9, 0xbc
00007BD8  20 5F                      movea.l    (a7)+, a0
00007BDA  28 48                      movea.l    a0, a4
00007BDC  60 1E                      bra.b      $7bfc
00007BDE  59 4F                      subq.w     #$4, a7
00007BE0  30 2D D7 36                move.w     -$28ca(a5), d0
00007BE4  53 40                      subq.w     #$1, d0
00007BE6  41 ED D7 38                lea.l      -$28c8(a5), a0
00007BEA  D0 C0                      adda.w     d0, a0
00007BEC  30 30 00 00                move.w     (a0, d0.w), d0
00007BF0  06 40 0B B7                addi.w     #$bb7, d0
00007BF4  3F 00                      move.w     d0, -(a7)
00007BF6  A9 BC                      .byte      0xa9, 0xbc
00007BF8  20 5F                      movea.l    (a7)+, a0
00007BFA  28 48                      movea.l    a0, a4
00007BFC  48 6E FF FC                pea.l      -$4(a6)
00007C00  A8 74                      .byte      0xa8, 0x74
00007C02  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
00007C06  A8 73                      .byte      0xa8, 0x73
00007C08  2F 03                      move.l     d3, -(a7)
00007C0A  48 6E FF F4                pea.l      -$c(a6)
00007C0E  A8 F6                      .byte      0xa8, 0xf6
00007C10  2F 0A                      move.l     a2, -(a7)
00007C12  48 6E FF EC                pea.l      -$14(a6)
00007C16  A8 F6                      .byte      0xa8, 0xf6
00007C18  2F 2E FF FC                move.l     -$4(a6), -(a7)
00007C1C  A8 73                      .byte      0xa8, 0x73
00007C1E  48 6E FF FC                pea.l      -$4(a6)
00007C22  A8 74                      .byte      0xa8, 0x74
00007C24  2F 2D D3 FE                move.l     -$2c02(a5), -(a7)
00007C28  A8 73                      .byte      0xa8, 0x73
00007C2A  0C 6D 00 0C D7 36          cmpi.w     #$c, -$28ca(a5)
00007C30  6C 08                      bge.b      $7c3a
00007C32  2F 0B                      move.l     a3, -(a7)
00007C34  48 6E FF E4                pea.l      -$1c(a6)
00007C38  A8 F6                      .byte      0xa8, 0xf6
00007C3A  4A 6D D7 36                tst.w      -$28ca(a5)
00007C3E  6F 08                      ble.b      $7c48
00007C40  2F 0C                      move.l     a4, -(a7)
00007C42  48 6E FF CC                pea.l      -$34(a6)
00007C46  A8 F6                      .byte      0xa8, 0xf6
00007C48  2F 2E FF FC                move.l     -$4(a6), -(a7)
00007C4C  A8 73                      .byte      0xa8, 0x73
00007C4E  0C 6D 00 0C D7 36          cmpi.w     #$c, -$28ca(a5)
00007C54  6C 24                      bge.b      $7c7a
00007C56  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007C5A  48 68 00 02                pea.l      $2(a0)
00007C5E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007C62  48 68 00 02                pea.l      $2(a0)
00007C66  48 6E FF DC                pea.l      -$24(a6)
00007C6A  48 6E FF D4                pea.l      -$2c(a6)
00007C6E  42 67                      clr.w      -(a7)
00007C70  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007C74  2F 28 00 18                move.l     $18(a0), -(a7)
00007C78  A8 EC                      .byte      0xa8, 0xec
00007C7A  4A 6D D7 36                tst.w      -$28ca(a5)
00007C7E  6F 24                      ble.b      $7ca4
00007C80  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007C84  48 68 00 02                pea.l      $2(a0)
00007C88  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007C8C  48 68 00 02                pea.l      $2(a0)
00007C90  48 6E FF C4                pea.l      -$3c(a6)
00007C94  48 6E FF BC                pea.l      -$44(a6)
00007C98  42 67                      clr.w      -(a7)
00007C9A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007C9E  2F 28 00 18                move.l     $18(a0), -(a7)
00007CA2  A8 EC                      .byte      0xa8, 0xec
00007CA4  4C DF 1C 08                movem.l    (a7)+, d3/a2-a4
00007CA8  4E 5E                      unlk       a6
00007CAA  4E 75                      rts

; MacsBug symbol trailer for DrawVSPictsCPU: 8E 44 72 61 77 56 53 50 69 63 74 73 43 50 55

DrawBackground2: ; 00007CBE..00007DE0
00007CBE  4E 56 FF EC                link.w     a6, #$ffec
00007CC2  2F 0A                      move.l     a2, -(a7)
00007CC4  24 6E 00 0A                movea.l    $a(a6), a2
00007CC8  2D 52 FF F8                move.l     (a2), -$8(a6)
00007CCC  2D 6A 00 04 FF FC          move.l     $4(a2), -$4(a6)
00007CD2  59 4F                      subq.w     #$4, a7
00007CD4  3F 3C 00 80                move.w     #$80, -(a7)
00007CD8  A9 B8                      .byte      0xa9, 0xb8
00007CDA  20 5F                      movea.l    (a7)+, a0
00007CDC  24 48                      movea.l    a0, a2
00007CDE  59 4F                      subq.w     #$4, a7
00007CE0  3F 2E 00 08                move.w     $8(a6), -(a7)
00007CE4  A9 BC                      .byte      0xa9, 0xbc
00007CE6  20 5F                      movea.l    (a7)+, a0
00007CE8  24 48                      movea.l    a0, a2
00007CEA  48 6E FF EC                pea.l      -$14(a6)
00007CEE  A8 74                      .byte      0xa8, 0x74
00007CF0  2F 2D D3 FA                move.l     -$2c06(a5), -(a7)
00007CF4  A8 73                      .byte      0xa8, 0x73
00007CF6  48 6D D7 F4                pea.l      -$280c(a5)
00007CFA  A8 A2                      .byte      0xa8, 0xa2
00007CFC  30 2E FF FE                move.w     -$2(a6), d0
00007D00  90 6E FF FA                sub.w      -$6(a6), d0
00007D04  48 C0                      ext.l      d0
00007D06  81 FC 00 02                divs.w     #$2, d0
00007D0A  32 2D D7 FA                move.w     -$2806(a5), d1
00007D0E  92 6D D7 F6                sub.w      -$280a(a5), d1
00007D12  48 C1                      ext.l      d1
00007D14  83 FC 00 02                divs.w     #$2, d1
00007D18  92 40                      sub.w      d0, d1
00007D1A  3D 41 FF F2                move.w     d1, -$e(a6)
00007D1E  30 2E FF FE                move.w     -$2(a6), d0
00007D22  90 6E FF FA                sub.w      -$6(a6), d0
00007D26  48 C0                      ext.l      d0
00007D28  81 FC 00 02                divs.w     #$2, d0
00007D2C  32 2D D7 FA                move.w     -$2806(a5), d1
00007D30  92 6D D7 F6                sub.w      -$280a(a5), d1
00007D34  48 C1                      ext.l      d1
00007D36  83 FC 00 02                divs.w     #$2, d1
00007D3A  D2 40                      add.w      d0, d1
00007D3C  3D 41 FF F6                move.w     d1, -$a(a6)
00007D40  30 2E FF FC                move.w     -$4(a6), d0
00007D44  90 6E FF F8                sub.w      -$8(a6), d0
00007D48  48 C0                      ext.l      d0
00007D4A  81 FC 00 02                divs.w     #$2, d0
00007D4E  32 2D D7 F8                move.w     -$2808(a5), d1
00007D52  92 6D D7 F4                sub.w      -$280c(a5), d1
00007D56  48 C1                      ext.l      d1
00007D58  83 FC 00 02                divs.w     #$2, d1
00007D5C  92 40                      sub.w      d0, d1
00007D5E  3D 41 FF F0                move.w     d1, -$10(a6)
00007D62  30 2E FF FC                move.w     -$4(a6), d0
00007D66  90 6E FF F8                sub.w      -$8(a6), d0
00007D6A  48 C0                      ext.l      d0
00007D6C  81 FC 00 02                divs.w     #$2, d0
00007D70  32 2D D7 F8                move.w     -$2808(a5), d1
00007D74  92 6D D7 F4                sub.w      -$280c(a5), d1
00007D78  48 C1                      ext.l      d1
00007D7A  83 FC 00 02                divs.w     #$2, d1
00007D7E  D2 40                      add.w      d0, d1
00007D80  3D 41 FF F4                move.w     d1, -$c(a6)
00007D84  2F 0A                      move.l     a2, -(a7)
00007D86  48 6E FF F0                pea.l      -$10(a6)
00007D8A  A8 F6                      .byte      0xa8, 0xf6
00007D8C  2F 2E FF EC                move.l     -$14(a6), -(a7)
00007D90  A8 73                      .byte      0xa8, 0x73
00007D92  20 6D D3 FA                movea.l    -$2c06(a5), a0
00007D96  48 68 00 02                pea.l      $2(a0)
00007D9A  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007D9E  48 68 00 02                pea.l      $2(a0)
00007DA2  48 6D D7 F4                pea.l      -$280c(a5)
00007DA6  48 6D D7 F4                pea.l      -$280c(a5)
00007DAA  42 67                      clr.w      -(a7)
00007DAC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007DB0  2F 28 00 18                move.l     $18(a0), -(a7)
00007DB4  A8 EC                      .byte      0xa8, 0xec
00007DB6  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007DBA  48 68 00 02                pea.l      $2(a0)
00007DBE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007DC2  48 68 00 02                pea.l      $2(a0)
00007DC6  48 6D D7 F4                pea.l      -$280c(a5)
00007DCA  48 6D D7 F4                pea.l      -$280c(a5)
00007DCE  42 67                      clr.w      -(a7)
00007DD0  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007DD4  2F 28 00 18                move.l     $18(a0), -(a7)
00007DD8  A8 EC                      .byte      0xa8, 0xec
00007DDA  24 5F                      movea.l    (a7)+, a2
00007DDC  4E 5E                      unlk       a6
00007DDE  4E 75                      rts

; MacsBug symbol trailer for DrawBackground2: 8F 44 72 61 77 42 61 63 6B 67 72 6F 75 6E 64 32

DrawBackground: ; 00007DF2..00007ECE
00007DF2  4E 56 FF F4                link.w     a6, #$fff4
00007DF6  2F 0A                      move.l     a2, -(a7)
00007DF8  48 6E FF F4                pea.l      -$c(a6)
00007DFC  2F 3C 00 54 00 00          move.l     #$540000, -(a7)
00007E02  2F 3C 01 B0 02 04          move.l     #$1b00204, -(a7)
00007E08  A8 A7                      .byte      0xa8, 0xa7
00007E0A  59 4F                      subq.w     #$4, a7
00007E0C  3F 3C 00 80                move.w     #$80, -(a7)
00007E10  A9 B8                      .byte      0xa9, 0xb8
00007E12  20 5F                      movea.l    (a7)+, a0
00007E14  24 48                      movea.l    a0, a2
00007E16  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
00007E1C  66 36                      bne.b      $7e54
00007E1E  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00007E24  66 2E                      bne.b      $7e54
00007E26  59 4F                      subq.w     #$4, a7
00007E28  3F 3C 00 D3                move.w     #$d3, -(a7)
00007E2C  A9 BC                      .byte      0xa9, 0xbc
00007E2E  20 5F                      movea.l    (a7)+, a0
00007E30  24 48                      movea.l    a0, a2
00007E32  48 6E FF FC                pea.l      -$4(a6)
00007E36  A8 74                      .byte      0xa8, 0x74
00007E38  2F 2D D3 FA                move.l     -$2c06(a5), -(a7)
00007E3C  A8 73                      .byte      0xa8, 0x73
00007E3E  2F 0A                      move.l     a2, -(a7)
00007E40  48 6D D7 F4                pea.l      -$280c(a5)
00007E44  A8 F6                      .byte      0xa8, 0xf6
00007E46  48 6E FF F4                pea.l      -$c(a6)
00007E4A  A8 A2                      .byte      0xa8, 0xa2
00007E4C  2F 2E FF FC                move.l     -$4(a6), -(a7)
00007E50  A8 73                      .byte      0xa8, 0x73
00007E52  60 2C                      bra.b      $7e80
00007E54  59 4F                      subq.w     #$4, a7
00007E56  3F 2E 00 08                move.w     $8(a6), -(a7)
00007E5A  A9 BC                      .byte      0xa9, 0xbc
00007E5C  20 5F                      movea.l    (a7)+, a0
00007E5E  24 48                      movea.l    a0, a2
00007E60  48 6E FF FC                pea.l      -$4(a6)
00007E64  A8 74                      .byte      0xa8, 0x74
00007E66  2F 2D D3 FA                move.l     -$2c06(a5), -(a7)
00007E6A  A8 73                      .byte      0xa8, 0x73
00007E6C  48 6D D7 F4                pea.l      -$280c(a5)
00007E70  A8 A2                      .byte      0xa8, 0xa2
00007E72  2F 0A                      move.l     a2, -(a7)
00007E74  48 6D D7 F4                pea.l      -$280c(a5)
00007E78  A8 F6                      .byte      0xa8, 0xf6
00007E7A  2F 2E FF FC                move.l     -$4(a6), -(a7)
00007E7E  A8 73                      .byte      0xa8, 0x73
00007E80  20 6D D3 FA                movea.l    -$2c06(a5), a0
00007E84  48 68 00 02                pea.l      $2(a0)
00007E88  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007E8C  48 68 00 02                pea.l      $2(a0)
00007E90  48 6D D7 F4                pea.l      -$280c(a5)
00007E94  48 6D D7 F4                pea.l      -$280c(a5)
00007E98  42 67                      clr.w      -(a7)
00007E9A  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007E9E  2F 28 00 18                move.l     $18(a0), -(a7)
00007EA2  A8 EC                      .byte      0xa8, 0xec
00007EA4  20 6D D3 FE                movea.l    -$2c02(a5), a0
00007EA8  48 68 00 02                pea.l      $2(a0)
00007EAC  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007EB0  48 68 00 02                pea.l      $2(a0)
00007EB4  48 6D D7 F4                pea.l      -$280c(a5)
00007EB8  48 6D D7 F4                pea.l      -$280c(a5)
00007EBC  42 67                      clr.w      -(a7)
00007EBE  20 6D D3 DE                movea.l    -$2c22(a5), a0
00007EC2  2F 28 00 18                move.l     $18(a0), -(a7)
00007EC6  A8 EC                      .byte      0xa8, 0xec
00007EC8  24 5F                      movea.l    (a7)+, a2
00007ECA  4E 5E                      unlk       a6
00007ECC  4E 75                      rts

; MacsBug symbol trailer for DrawBackground: 8E 44 72 61 77 42 61 63 6B 67 72 6F 75 6E 64

ReplacePicture: ; 00007EE0..00007F14
00007EE0  4E 56 FF F8                link.w     a6, #$fff8
00007EE4  59 4F                      subq.w     #$4, a7
00007EE6  3F 2E 00 08                move.w     $8(a6), -(a7)
00007EEA  A9 BC                      .byte      0xa9, 0xbc
00007EEC  20 5F                      movea.l    (a7)+, a0
00007EEE  2D 48 FF F8                move.l     a0, -$8(a6)
00007EF2  48 6E FF FC                pea.l      -$4(a6)
00007EF6  A8 74                      .byte      0xa8, 0x74
00007EF8  20 6E 00 0A                movea.l    $a(a6), a0
00007EFC  2F 10                      move.l     (a0), -(a7)
00007EFE  A8 73                      .byte      0xa8, 0x73
00007F00  2F 2E FF F8                move.l     -$8(a6), -(a7)
00007F04  2F 2E 00 0E                move.l     $e(a6), -(a7)
00007F08  A8 F6                      .byte      0xa8, 0xf6
00007F0A  2F 2E FF FC                move.l     -$4(a6), -(a7)
00007F0E  A8 73                      .byte      0xa8, 0x73
00007F10  4E 5E                      unlk       a6
00007F12  4E 75                      rts

; MacsBug symbol trailer for ReplacePicture: 8E 52 65 70 6C 61 63 65 50 69 63 74 75 72 65

CheckPlayer1Key: ; 00007F26..000085AE
00007F26  4E 56 00 00                link.w     a6, #$0
00007F2A  10 2D D8 19                move.b     -$27e7(a5), d0
00007F2E  48 80                      ext.w      d0
00007F30  B0 6D E3 4C                cmp.w      -$1cb4(a5), d0
00007F34  66 00 02 14                bne.w      $814a
00007F38  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
00007F3E  66 00 00 86                bne.w      $7fc6
00007F42  0C 6D 00 01 FF E8          cmpi.w     #$1, -$18(a5)
00007F48  66 7C                      bne.b      $7fc6
00007F4A  4A 6D CF 4E                tst.w      -$30b2(a5)
00007F4E  66 12                      bne.b      $7f62
00007F50  3B 7C 00 05 CF 4E          move.w     #$5, -$30b2(a5)
00007F56  59 4F                      subq.w     #$4, a7
00007F58  A9 75                      .byte      0xa9, 0x75
00007F5A  20 1F                      move.l     (a7)+, d0
00007F5C  2B 40 CF 54                move.l     d0, -$30ac(a5)
00007F60  60 64                      bra.b      $7fc6
00007F62  0C 6D 00 02 CF 4E          cmpi.w     #$2, -$30b2(a5)
00007F68  66 28                      bne.b      $7f92
00007F6A  59 4F                      subq.w     #$4, a7
00007F6C  A9 75                      .byte      0xa9, 0x75
00007F6E  20 1F                      move.l     (a7)+, d0
00007F70  90 AD CF 54                sub.l      -$30ac(a5), d0
00007F74  72 3C                      moveq      #$3c, d1
00007F76  B0 81                      cmp.l      d1, d0
00007F78  64 12                      bcc.b      $7f8c
00007F7A  3B 7C 00 03 CF 4E          move.w     #$3, -$30b2(a5)
00007F80  59 4F                      subq.w     #$4, a7
00007F82  A9 75                      .byte      0xa9, 0x75
00007F84  20 1F                      move.l     (a7)+, d0
00007F86  2B 40 CF 54                move.l     d0, -$30ac(a5)
00007F8A  60 3A                      bra.b      $7fc6
00007F8C  42 6D CF 4E                clr.w      -$30b2(a5)
00007F90  60 34                      bra.b      $7fc6
00007F92  0C 6D 00 06 CF 4E          cmpi.w     #$6, -$30b2(a5)
00007F98  66 28                      bne.b      $7fc2
00007F9A  59 4F                      subq.w     #$4, a7
00007F9C  A9 75                      .byte      0xa9, 0x75
00007F9E  20 1F                      move.l     (a7)+, d0
00007FA0  90 AD CF 54                sub.l      -$30ac(a5), d0
00007FA4  72 3C                      moveq      #$3c, d1
00007FA6  B0 81                      cmp.l      d1, d0
00007FA8  64 12                      bcc.b      $7fbc
00007FAA  3B 7C 00 07 CF 4E          move.w     #$7, -$30b2(a5)
00007FB0  59 4F                      subq.w     #$4, a7
00007FB2  A9 75                      .byte      0xa9, 0x75
00007FB4  20 1F                      move.l     (a7)+, d0
00007FB6  2B 40 CF 54                move.l     d0, -$30ac(a5)
00007FBA  60 0A                      bra.b      $7fc6
00007FBC  42 6D CF 4E                clr.w      -$30b2(a5)
00007FC0  60 04                      bra.b      $7fc6
00007FC2  42 6D CF 4E                clr.w      -$30b2(a5)
00007FC6  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
00007FCC  66 00 00 86                bne.w      $8054
00007FD0  0C 6D 00 02 FF E8          cmpi.w     #$2, -$18(a5)
00007FD6  66 7C                      bne.b      $8054
00007FD8  4A 6D CF 4E                tst.w      -$30b2(a5)
00007FDC  66 12                      bne.b      $7ff0
00007FDE  3B 7C 00 1E CF 4E          move.w     #$1e, -$30b2(a5)
00007FE4  59 4F                      subq.w     #$4, a7
00007FE6  A9 75                      .byte      0xa9, 0x75
00007FE8  20 1F                      move.l     (a7)+, d0
00007FEA  2B 40 CF 54                move.l     d0, -$30ac(a5)
00007FEE  60 64                      bra.b      $8054
00007FF0  0C 6D 00 1E CF 4E          cmpi.w     #$1e, -$30b2(a5)
00007FF6  66 28                      bne.b      $8020
00007FF8  59 4F                      subq.w     #$4, a7
00007FFA  A9 75                      .byte      0xa9, 0x75
00007FFC  20 1F                      move.l     (a7)+, d0
00007FFE  90 AD CF 54                sub.l      -$30ac(a5), d0
00008002  72 3C                      moveq      #$3c, d1
00008004  B0 81                      cmp.l      d1, d0
00008006  64 12                      bcc.b      $801a
00008008  3B 7C 00 1F CF 4E          move.w     #$1f, -$30b2(a5)
0000800E  59 4F                      subq.w     #$4, a7
00008010  A9 75                      .byte      0xa9, 0x75
00008012  20 1F                      move.l     (a7)+, d0
00008014  2B 40 CF 54                move.l     d0, -$30ac(a5)
00008018  60 3A                      bra.b      $8054
0000801A  42 6D CF 4E                clr.w      -$30b2(a5)
0000801E  60 34                      bra.b      $8054
00008020  0C 6D 00 1F CF 4E          cmpi.w     #$1f, -$30b2(a5)
00008026  66 28                      bne.b      $8050
00008028  59 4F                      subq.w     #$4, a7
0000802A  A9 75                      .byte      0xa9, 0x75
0000802C  20 1F                      move.l     (a7)+, d0
0000802E  90 AD CF 54                sub.l      -$30ac(a5), d0
00008032  72 3C                      moveq      #$3c, d1
00008034  B0 81                      cmp.l      d1, d0
00008036  64 12                      bcc.b      $804a
00008038  3B 7C 00 20 CF 4E          move.w     #$20, -$30b2(a5)
0000803E  59 4F                      subq.w     #$4, a7
00008040  A9 75                      .byte      0xa9, 0x75
00008042  20 1F                      move.l     (a7)+, d0
00008044  2B 40 CF 54                move.l     d0, -$30ac(a5)
00008048  60 0A                      bra.b      $8054
0000804A  42 6D CF 4E                clr.w      -$30b2(a5)
0000804E  60 04                      bra.b      $8054
00008050  42 6D CF 4E                clr.w      -$30b2(a5)
00008054  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
0000805A  66 00 00 BA                bne.w      $8116
0000805E  0C 6D 00 03 FF E8          cmpi.w     #$3, -$18(a5)
00008064  66 00 00 B0                bne.w      $8116
00008068  4A 6D CF 4E                tst.w      -$30b2(a5)
0000806C  66 14                      bne.b      $8082
0000806E  3B 7C 00 14 CF 4E          move.w     #$14, -$30b2(a5)
00008074  59 4F                      subq.w     #$4, a7
00008076  A9 75                      .byte      0xa9, 0x75
00008078  20 1F                      move.l     (a7)+, d0
0000807A  2B 40 CF 54                move.l     d0, -$30ac(a5)
0000807E  60 00 00 96                bra.w      $8116
00008082  0C 6D 00 09 CF 4E          cmpi.w     #$9, -$30b2(a5)
00008088  66 28                      bne.b      $80b2
0000808A  59 4F                      subq.w     #$4, a7
0000808C  A9 75                      .byte      0xa9, 0x75
0000808E  20 1F                      move.l     (a7)+, d0
00008090  90 AD CF 54                sub.l      -$30ac(a5), d0
00008094  72 3C                      moveq      #$3c, d1
00008096  B0 81                      cmp.l      d1, d0
00008098  64 12                      bcc.b      $80ac
0000809A  3B 7C 00 0C CF 4E          move.w     #$c, -$30b2(a5)
000080A0  59 4F                      subq.w     #$4, a7
000080A2  A9 75                      .byte      0xa9, 0x75
000080A4  20 1F                      move.l     (a7)+, d0
000080A6  2B 40 CF 54                move.l     d0, -$30ac(a5)
000080AA  60 6A                      bra.b      $8116
000080AC  42 6D CF 4E                clr.w      -$30b2(a5)
000080B0  60 64                      bra.b      $8116
000080B2  0C 6D 00 14 CF 4E          cmpi.w     #$14, -$30b2(a5)
000080B8  66 28                      bne.b      $80e2
000080BA  59 4F                      subq.w     #$4, a7
000080BC  A9 75                      .byte      0xa9, 0x75
000080BE  20 1F                      move.l     (a7)+, d0
000080C0  90 AD CF 54                sub.l      -$30ac(a5), d0
000080C4  72 3C                      moveq      #$3c, d1
000080C6  B0 81                      cmp.l      d1, d0
000080C8  64 12                      bcc.b      $80dc
000080CA  3B 7C 00 15 CF 4E          move.w     #$15, -$30b2(a5)
000080D0  59 4F                      subq.w     #$4, a7
000080D2  A9 75                      .byte      0xa9, 0x75
000080D4  20 1F                      move.l     (a7)+, d0
000080D6  2B 40 CF 54                move.l     d0, -$30ac(a5)
000080DA  60 3A                      bra.b      $8116
000080DC  42 6D CF 4E                clr.w      -$30b2(a5)
000080E0  60 34                      bra.b      $8116
000080E2  0C 6D 00 15 CF 4E          cmpi.w     #$15, -$30b2(a5)
000080E8  66 28                      bne.b      $8112
000080EA  59 4F                      subq.w     #$4, a7
000080EC  A9 75                      .byte      0xa9, 0x75
000080EE  20 1F                      move.l     (a7)+, d0
000080F0  90 AD CF 54                sub.l      -$30ac(a5), d0
000080F4  72 3C                      moveq      #$3c, d1
000080F6  B0 81                      cmp.l      d1, d0
000080F8  64 12                      bcc.b      $810c
000080FA  3B 7C 00 16 CF 4E          move.w     #$16, -$30b2(a5)
00008100  59 4F                      subq.w     #$4, a7
00008102  A9 75                      .byte      0xa9, 0x75
00008104  20 1F                      move.l     (a7)+, d0
00008106  2B 40 CF 54                move.l     d0, -$30ac(a5)
0000810A  60 0A                      bra.b      $8116
0000810C  42 6D CF 4E                clr.w      -$30b2(a5)
00008110  60 04                      bra.b      $8116
00008112  42 6D CF 4E                clr.w      -$30b2(a5)
00008116  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
0000811C  67 2C                      beq.b      $814a
0000811E  42 6D CF 4E                clr.w      -$30b2(a5)
00008122  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
00008128  4E B9 00 00 00 A8          jsr        $a8.l
0000812E  48 6D D5 86                pea.l      -$2a7a(a5)
00008132  2F 3C 00 00 FF B0          move.l     #$ffb0, -(a7)
00008138  A8 A8                      .byte      0xa8, 0xa8
0000813A  53 6D FF E6                subq.w     #$1, -$1a(a5)
0000813E  53 6D FF E0                subq.w     #$1, -$20(a5)
00008142  4E B9 00 00 8C 00          jsr        $8c00.l
00008148  58 4F                      addq.w     #$4, a7
0000814A  10 2D D8 19                move.b     -$27e7(a5), d0
0000814E  48 80                      ext.w      d0
00008150  B0 6D E3 48                cmp.w      -$1cb8(a5), d0
00008154  66 2E                      bne.b      $8184
00008156  0C 6D 00 03 FF E6          cmpi.w     #$3, -$1a(a5)
0000815C  67 26                      beq.b      $8184
0000815E  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
00008164  4E B9 00 00 00 A8          jsr        $a8.l
0000816A  48 6D D5 86                pea.l      -$2a7a(a5)
0000816E  48 78 00 50                pea.l      $50.w
00008172  A8 A8                      .byte      0xa8, 0xa8
00008174  52 6D FF E6                addq.w     #$1, -$1a(a5)
00008178  52 6D FF E0                addq.w     #$1, -$20(a5)
0000817C  4E B9 00 00 8C 00          jsr        $8c00.l
00008182  58 4F                      addq.w     #$4, a7
00008184  10 2D D8 19                move.b     -$27e7(a5), d0
00008188  48 80                      ext.w      d0
0000818A  B0 6D E3 4E                cmp.w      -$1cb2(a5), d0
0000818E  66 00 00 F8                bne.w      $8288
00008192  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
00008198  66 00 00 BA                bne.w      $8254
0000819C  0C 6D 00 01 FF E8          cmpi.w     #$1, -$18(a5)
000081A2  66 00 00 B0                bne.w      $8254
000081A6  4A 6D CF 4E                tst.w      -$30b2(a5)
000081AA  66 14                      bne.b      $81c0
000081AC  3B 7C 00 01 CF 4E          move.w     #$1, -$30b2(a5)
000081B2  59 4F                      subq.w     #$4, a7
000081B4  A9 75                      .byte      0xa9, 0x75
000081B6  20 1F                      move.l     (a7)+, d0
000081B8  2B 40 CF 54                move.l     d0, -$30ac(a5)
000081BC  60 00 00 96                bra.w      $8254
000081C0  0C 6D 00 01 CF 4E          cmpi.w     #$1, -$30b2(a5)
000081C6  66 28                      bne.b      $81f0
000081C8  59 4F                      subq.w     #$4, a7
000081CA  A9 75                      .byte      0xa9, 0x75
000081CC  20 1F                      move.l     (a7)+, d0
000081CE  90 AD CF 54                sub.l      -$30ac(a5), d0
000081D2  72 3C                      moveq      #$3c, d1
000081D4  B0 81                      cmp.l      d1, d0
000081D6  64 12                      bcc.b      $81ea
000081D8  3B 7C 00 02 CF 4E          move.w     #$2, -$30b2(a5)
000081DE  59 4F                      subq.w     #$4, a7
000081E0  A9 75                      .byte      0xa9, 0x75
000081E2  20 1F                      move.l     (a7)+, d0
000081E4  2B 40 CF 54                move.l     d0, -$30ac(a5)
000081E8  60 6A                      bra.b      $8254
000081EA  42 6D CF 4E                clr.w      -$30b2(a5)
000081EE  60 64                      bra.b      $8254
000081F0  0C 6D 00 05 CF 4E          cmpi.w     #$5, -$30b2(a5)
000081F6  66 28                      bne.b      $8220
000081F8  59 4F                      subq.w     #$4, a7
000081FA  A9 75                      .byte      0xa9, 0x75
000081FC  20 1F                      move.l     (a7)+, d0
000081FE  90 AD CF 54                sub.l      -$30ac(a5), d0
00008202  72 3C                      moveq      #$3c, d1
00008204  B0 81                      cmp.l      d1, d0
00008206  64 12                      bcc.b      $821a
00008208  3B 7C 00 06 CF 4E          move.w     #$6, -$30b2(a5)
0000820E  59 4F                      subq.w     #$4, a7
00008210  A9 75                      .byte      0xa9, 0x75
00008212  20 1F                      move.l     (a7)+, d0
00008214  2B 40 CF 54                move.l     d0, -$30ac(a5)
00008218  60 3A                      bra.b      $8254
0000821A  42 6D CF 4E                clr.w      -$30b2(a5)
0000821E  60 34                      bra.b      $8254
00008220  0C 6D 00 06 CF 4E          cmpi.w     #$6, -$30b2(a5)
00008226  66 28                      bne.b      $8250
00008228  59 4F                      subq.w     #$4, a7
0000822A  A9 75                      .byte      0xa9, 0x75
0000822C  20 1F                      move.l     (a7)+, d0
0000822E  90 AD CF 54                sub.l      -$30ac(a5), d0
00008232  72 3C                      moveq      #$3c, d1
00008234  B0 81                      cmp.l      d1, d0
00008236  64 12                      bcc.b      $824a
00008238  3B 7C 00 19 CF 4E          move.w     #$19, -$30b2(a5)
0000823E  59 4F                      subq.w     #$4, a7
00008240  A9 75                      .byte      0xa9, 0x75
00008242  20 1F                      move.l     (a7)+, d0
00008244  2B 40 CF 54                move.l     d0, -$30ac(a5)
00008248  60 0A                      bra.b      $8254
0000824A  42 6D CF 4E                clr.w      -$30b2(a5)
0000824E  60 04                      bra.b      $8254
00008250  42 6D CF 4E                clr.w      -$30b2(a5)
00008254  0C 6D 00 01 FF E8          cmpi.w     #$1, -$18(a5)
0000825A  67 2C                      beq.b      $8288
0000825C  42 6D CF 4E                clr.w      -$30b2(a5)
00008260  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
00008266  4E B9 00 00 00 A8          jsr        $a8.l
0000826C  48 6D D5 86                pea.l      -$2a7a(a5)
00008270  2F 3C FF 9C 00 00          move.l     #$ff9c0000, -(a7)
00008276  A8 A8                      .byte      0xa8, 0xa8
00008278  53 6D FF E8                subq.w     #$1, -$18(a5)
0000827C  57 6D FF E0                subq.w     #$3, -$20(a5)
00008280  4E B9 00 00 8C 00          jsr        $8c00.l
00008286  58 4F                      addq.w     #$4, a7
00008288  10 2D D8 19                move.b     -$27e7(a5), d0
0000828C  48 80                      ext.w      d0
0000828E  B0 6D E3 52                cmp.w      -$1cae(a5), d0
00008292  66 00 00 C4                bne.w      $8358
00008296  0C 6D 00 01 FF E6          cmpi.w     #$1, -$1a(a5)
0000829C  66 00 00 86                bne.w      $8324
000082A0  0C 6D 00 03 FF E8          cmpi.w     #$3, -$18(a5)
000082A6  66 7C                      bne.b      $8324
000082A8  4A 6D CF 4E                tst.w      -$30b2(a5)
000082AC  66 12                      bne.b      $82c0
000082AE  3B 7C 00 08 CF 4E          move.w     #$8, -$30b2(a5)
000082B4  59 4F                      subq.w     #$4, a7
000082B6  A9 75                      .byte      0xa9, 0x75
000082B8  20 1F                      move.l     (a7)+, d0
000082BA  2B 40 CF 54                move.l     d0, -$30ac(a5)
000082BE  60 64                      bra.b      $8324
000082C0  0C 6D 00 08 CF 4E          cmpi.w     #$8, -$30b2(a5)
000082C6  66 28                      bne.b      $82f0
000082C8  59 4F                      subq.w     #$4, a7
000082CA  A9 75                      .byte      0xa9, 0x75
000082CC  20 1F                      move.l     (a7)+, d0
000082CE  90 AD CF 54                sub.l      -$30ac(a5), d0
000082D2  72 3C                      moveq      #$3c, d1
000082D4  B0 81                      cmp.l      d1, d0
000082D6  64 12                      bcc.b      $82ea
000082D8  3B 7C 00 09 CF 4E          move.w     #$9, -$30b2(a5)
000082DE  59 4F                      subq.w     #$4, a7
000082E0  A9 75                      .byte      0xa9, 0x75
000082E2  20 1F                      move.l     (a7)+, d0
000082E4  2B 40 CF 54                move.l     d0, -$30ac(a5)
000082E8  60 3A                      bra.b      $8324
000082EA  42 6D CF 4E                clr.w      -$30b2(a5)
000082EE  60 34                      bra.b      $8324
000082F0  0C 6D 00 09 CF 4E          cmpi.w     #$9, -$30b2(a5)
000082F6  66 28                      bne.b      $8320
000082F8  59 4F                      subq.w     #$4, a7
000082FA  A9 75                      .byte      0xa9, 0x75
000082FC  20 1F                      move.l     (a7)+, d0
000082FE  90 AD CF 54                sub.l      -$30ac(a5), d0
00008302  72 3C                      moveq      #$3c, d1
00008304  B0 81                      cmp.l      d1, d0
00008306  64 12                      bcc.b      $831a
00008308  3B 7C 00 0A CF 4E          move.w     #$a, -$30b2(a5)
0000830E  59 4F                      subq.w     #$4, a7
00008310  A9 75                      .byte      0xa9, 0x75
00008312  20 1F                      move.l     (a7)+, d0
00008314  2B 40 CF 54                move.l     d0, -$30ac(a5)
00008318  60 0A                      bra.b      $8324
0000831A  42 6D CF 4E                clr.w      -$30b2(a5)
0000831E  60 04                      bra.b      $8324
00008320  42 6D CF 4E                clr.w      -$30b2(a5)
00008324  0C 6D 00 03 FF E8          cmpi.w     #$3, -$18(a5)
0000832A  67 2C                      beq.b      $8358
0000832C  42 6D CF 4E                clr.w      -$30b2(a5)
00008330  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
00008336  4E B9 00 00 00 A8          jsr        $a8.l
0000833C  48 6D D5 86                pea.l      -$2a7a(a5)
00008340  2F 3C 00 64 00 00          move.l     #$640000, -(a7)
00008346  A8 A8                      .byte      0xa8, 0xa8
00008348  52 6D FF E8                addq.w     #$1, -$18(a5)
0000834C  56 6D FF E0                addq.w     #$3, -$20(a5)
00008350  4E B9 00 00 8C 00          jsr        $8c00.l
00008356  58 4F                      addq.w     #$4, a7
00008358  10 2D D8 19                move.b     -$27e7(a5), d0
0000835C  48 80                      ext.w      d0
0000835E  B0 6D E3 56                cmp.w      -$1caa(a5), d0
00008362  67 0E                      beq.b      $8372
00008364  10 2D D8 19                move.b     -$27e7(a5), d0
00008368  48 80                      ext.w      d0
0000836A  B0 6D CF 1E                cmp.w      -$30e2(a5), d0
0000836E  66 00 02 0E                bne.w      $857e
00008372  0C 6D 00 02 FF E8          cmpi.w     #$2, -$18(a5)
00008378  66 00 00 A6                bne.w      $8420
0000837C  0C 6D 00 02 FF E6          cmpi.w     #$2, -$1a(a5)
00008382  66 00 00 9C                bne.w      $8420
00008386  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000838C  66 78                      bne.b      $8406
0000838E  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008392  48 68 00 02                pea.l      $2(a0)
00008396  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000839A  48 68 00 02                pea.l      $2(a0)
0000839E  48 6D D5 6E                pea.l      -$2a92(a5)
000083A2  48 6D D5 6E                pea.l      -$2a92(a5)
000083A6  42 67                      clr.w      -(a7)
000083A8  20 6D D3 DE                movea.l    -$2c22(a5), a0
000083AC  2F 28 00 18                move.l     $18(a0), -(a7)
000083B0  A8 EC                      .byte      0xa8, 0xec
000083B2  20 6D D3 FE                movea.l    -$2c02(a5), a0
000083B6  48 68 00 02                pea.l      $2(a0)
000083BA  20 6D D3 DE                movea.l    -$2c22(a5), a0
000083BE  48 68 00 02                pea.l      $2(a0)
000083C2  48 6D D5 6E                pea.l      -$2a92(a5)
000083C6  48 6D D5 6E                pea.l      -$2a92(a5)
000083CA  42 67                      clr.w      -(a7)
000083CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000083D0  2F 28 00 18                move.l     $18(a0), -(a7)
000083D4  A8 EC                      .byte      0xa8, 0xec
000083D6  0C 2D 00 01 D4 1E          cmpi.b     #$1, -$2be2(a5)
000083DC  66 0A                      bne.b      $83e8
000083DE  59 4F                      subq.w     #$4, a7
000083E0  A9 75                      .byte      0xa9, 0x75
000083E2  20 1F                      move.l     (a7)+, d0
000083E4  2B 40 D4 06                move.l     d0, -$2bfa(a5)
000083E8  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
000083EE  4E B9 00 00 00 A8          jsr        $a8.l
000083F4  1B 7C 00 01 D4 20          move.b     #$1, -$2be0(a5)
000083FA  A9 75                      .byte      0xa9, 0x75
000083FC  20 1F                      move.l     (a7)+, d0
000083FE  2B 40 D8 14                move.l     d0, -$27ec(a5)
00008402  60 00 01 7A                bra.w      $857e
00008406  4A 2D D7 E0                tst.b      -$2820(a5)
0000840A  66 00 01 72                bne.w      $857e
0000840E  2F 3C 27 10 00 0A          move.l     #$2710000a, -(a7)
00008414  4E B9 00 00 00 A8          jsr        $a8.l
0000841A  58 4F                      addq.w     #$4, a7
0000841C  60 00 01 60                bra.w      $857e
00008420  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008424  48 68 00 02                pea.l      $2(a0)
00008428  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000842C  48 68 00 02                pea.l      $2(a0)
00008430  48 6D D5 86                pea.l      -$2a7a(a5)
00008434  48 6D D5 86                pea.l      -$2a7a(a5)
00008438  42 67                      clr.w      -(a7)
0000843A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000843E  2F 28 00 18                move.l     $18(a0), -(a7)
00008442  A8 EC                      .byte      0xa8, 0xec
00008444  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008448  48 68 00 02                pea.l      $2(a0)
0000844C  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008450  48 68 00 02                pea.l      $2(a0)
00008454  48 6D D5 86                pea.l      -$2a7a(a5)
00008458  48 6D D5 86                pea.l      -$2a7a(a5)
0000845C  42 67                      clr.w      -(a7)
0000845E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008462  2F 28 00 18                move.l     $18(a0), -(a7)
00008466  A8 EC                      .byte      0xa8, 0xec
00008468  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
0000846E  66 00 00 E2                bne.w      $8552
00008472  0C 6D 00 03 CF 4E          cmpi.w     #$3, -$30b2(a5)
00008478  66 1E                      bne.b      $8498
0000847A  59 4F                      subq.w     #$4, a7
0000847C  A9 75                      .byte      0xa9, 0x75
0000847E  20 1F                      move.l     (a7)+, d0
00008480  90 AD CF 54                sub.l      -$30ac(a5), d0
00008484  72 3C                      moveq      #$3c, d1
00008486  B0 81                      cmp.l      d1, d0
00008488  64 06                      bcc.b      $8490
0000848A  3B 7C 00 0A FF E0          move.w     #$a, -$20(a5)
00008490  42 6D CF 4E                clr.w      -$30b2(a5)
00008494  60 00 00 BC                bra.w      $8552
00008498  0C 6D 00 07 CF 4E          cmpi.w     #$7, -$30b2(a5)
0000849E  66 1E                      bne.b      $84be
000084A0  59 4F                      subq.w     #$4, a7
000084A2  A9 75                      .byte      0xa9, 0x75
000084A4  20 1F                      move.l     (a7)+, d0
000084A6  90 AD CF 54                sub.l      -$30ac(a5), d0
000084AA  72 3C                      moveq      #$3c, d1
000084AC  B0 81                      cmp.l      d1, d0
000084AE  64 06                      bcc.b      $84b6
000084B0  3B 7C 00 0B FF E0          move.w     #$b, -$20(a5)
000084B6  42 6D CF 4E                clr.w      -$30b2(a5)
000084BA  60 00 00 96                bra.w      $8552
000084BE  0C 6D 00 0A CF 4E          cmpi.w     #$a, -$30b2(a5)
000084C4  66 1C                      bne.b      $84e2
000084C6  59 4F                      subq.w     #$4, a7
000084C8  A9 75                      .byte      0xa9, 0x75
000084CA  20 1F                      move.l     (a7)+, d0
000084CC  90 AD CF 54                sub.l      -$30ac(a5), d0
000084D0  72 3C                      moveq      #$3c, d1
000084D2  B0 81                      cmp.l      d1, d0
000084D4  64 06                      bcc.b      $84dc
000084D6  3B 7C 00 0C FF E0          move.w     #$c, -$20(a5)
000084DC  42 6D CF 4E                clr.w      -$30b2(a5)
000084E0  60 70                      bra.b      $8552
000084E2  0C 6D 00 16 CF 4E          cmpi.w     #$16, -$30b2(a5)
000084E8  66 1C                      bne.b      $8506
000084EA  59 4F                      subq.w     #$4, a7
000084EC  A9 75                      .byte      0xa9, 0x75
000084EE  20 1F                      move.l     (a7)+, d0
000084F0  90 AD CF 54                sub.l      -$30ac(a5), d0
000084F4  72 3C                      moveq      #$3c, d1
000084F6  B0 81                      cmp.l      d1, d0
000084F8  64 06                      bcc.b      $8500
000084FA  3B 7C 00 0F FF E0          move.w     #$f, -$20(a5)
00008500  42 6D CF 4E                clr.w      -$30b2(a5)
00008504  60 4C                      bra.b      $8552
00008506  0C 6D 00 19 CF 4E          cmpi.w     #$19, -$30b2(a5)
0000850C  66 1C                      bne.b      $852a
0000850E  59 4F                      subq.w     #$4, a7
00008510  A9 75                      .byte      0xa9, 0x75
00008512  20 1F                      move.l     (a7)+, d0
00008514  90 AD CF 54                sub.l      -$30ac(a5), d0
00008518  72 3C                      moveq      #$3c, d1
0000851A  B0 81                      cmp.l      d1, d0
0000851C  64 06                      bcc.b      $8524
0000851E  3B 7C 00 0E FF E0          move.w     #$e, -$20(a5)
00008524  42 6D CF 4E                clr.w      -$30b2(a5)
00008528  60 28                      bra.b      $8552
0000852A  0C 6D 00 20 CF 4E          cmpi.w     #$20, -$30b2(a5)
00008530  66 1C                      bne.b      $854e
00008532  59 4F                      subq.w     #$4, a7
00008534  A9 75                      .byte      0xa9, 0x75
00008536  20 1F                      move.l     (a7)+, d0
00008538  90 AD CF 54                sub.l      -$30ac(a5), d0
0000853C  72 3C                      moveq      #$3c, d1
0000853E  B0 81                      cmp.l      d1, d0
00008540  64 06                      bcc.b      $8548
00008542  3B 7C 00 10 FF E0          move.w     #$10, -$20(a5)
00008548  42 6D CF 4E                clr.w      -$30b2(a5)
0000854C  60 04                      bra.b      $8552
0000854E  42 6D CF 4E                clr.w      -$30b2(a5)
00008552  0C 2D 00 01 D4 1E          cmpi.b     #$1, -$2be2(a5)
00008558  66 0A                      bne.b      $8564
0000855A  59 4F                      subq.w     #$4, a7
0000855C  A9 75                      .byte      0xa9, 0x75
0000855E  20 1F                      move.l     (a7)+, d0
00008560  2B 40 D4 06                move.l     d0, -$2bfa(a5)
00008564  2F 3C 01 2C 00 0A          move.l     #$12c000a, -(a7)
0000856A  4E B9 00 00 00 A8          jsr        $a8.l
00008570  1B 7C 00 01 D4 20          move.b     #$1, -$2be0(a5)
00008576  A9 75                      .byte      0xa9, 0x75
00008578  20 1F                      move.l     (a7)+, d0
0000857A  2B 40 D8 14                move.l     d0, -$27ec(a5)
0000857E  0C 2D 00 20 D8 19          cmpi.b     #$20, -$27e7(a5)
00008584  66 24                      bne.b      $85aa
00008586  0C 2D 00 01 FF DE          cmpi.b     #$1, -$22(a5)
0000858C  66 1C                      bne.b      $85aa
0000858E  42 2D FF DE                clr.b      -$22(a5)
00008592  42 2D D4 1E                clr.b      -$2be2(a5)
00008596  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
0000859C  4E B9 00 00 00 B0          jsr        $b0.l
000085A2  4E B9 00 00 8C AC          jsr        $8cac.l
000085A8  58 4F                      addq.w     #$4, a7
000085AA  4E 5E                      unlk       a6
000085AC  4E 75                      rts

; MacsBug symbol trailer for CheckPlayer1Key: 8F 43 68 65 63 6B 50 6C 61 79 65 72 31 4B 65 79

CheckPlayer2Key: ; 000085C0..00008B7C
000085C0  4E 56 00 00                link.w     a6, #$0
000085C4  10 2D D8 19                move.b     -$27e7(a5), d0
000085C8  48 80                      ext.w      d0
000085CA  B0 6D E3 5E                cmp.w      -$1ca2(a5), d0
000085CE  66 30                      bne.b      $8600
000085D0  0C 6D 00 01 FF EA          cmpi.w     #$1, -$16(a5)
000085D6  67 28                      beq.b      $8600
000085D8  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
000085DE  4E B9 00 00 00 B0          jsr        $b0.l
000085E4  48 6D D5 6E                pea.l      -$2a92(a5)
000085E8  2F 3C 00 00 FF B0          move.l     #$ffb0, -(a7)
000085EE  A8 A8                      .byte      0xa8, 0xa8
000085F0  53 6D FF EA                subq.w     #$1, -$16(a5)
000085F4  53 6D FF E2                subq.w     #$1, -$1e(a5)
000085F8  4E B9 00 00 8C AC          jsr        $8cac.l
000085FE  58 4F                      addq.w     #$4, a7
00008600  10 2D D8 19                move.b     -$27e7(a5), d0
00008604  48 80                      ext.w      d0
00008606  B0 6D E3 5A                cmp.w      -$1ca6(a5), d0
0000860A  66 00 01 72                bne.w      $877e
0000860E  0C 6D 00 03 FF EA          cmpi.w     #$3, -$16(a5)
00008614  66 00 00 A8                bne.w      $86be
00008618  0C 6D 00 03 FF EC          cmpi.w     #$3, -$14(a5)
0000861E  67 0A                      beq.b      $862a
00008620  0C 6D 00 02 FF EC          cmpi.w     #$2, -$14(a5)
00008626  66 00 00 96                bne.w      $86be
0000862A  4A 6D CF 4C                tst.w      -$30b4(a5)
0000862E  66 12                      bne.b      $8642
00008630  3B 7C 00 05 CF 4C          move.w     #$5, -$30b4(a5)
00008636  59 4F                      subq.w     #$4, a7
00008638  A9 75                      .byte      0xa9, 0x75
0000863A  20 1F                      move.l     (a7)+, d0
0000863C  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008640  60 7C                      bra.b      $86be
00008642  0C 6D 00 05 CF 4C          cmpi.w     #$5, -$30b4(a5)
00008648  66 28                      bne.b      $8672
0000864A  59 4F                      subq.w     #$4, a7
0000864C  A9 75                      .byte      0xa9, 0x75
0000864E  20 1F                      move.l     (a7)+, d0
00008650  90 AD CF 50                sub.l      -$30b0(a5), d0
00008654  72 3C                      moveq      #$3c, d1
00008656  B0 81                      cmp.l      d1, d0
00008658  64 12                      bcc.b      $866c
0000865A  3B 7C 00 06 CF 4C          move.w     #$6, -$30b4(a5)
00008660  59 4F                      subq.w     #$4, a7
00008662  A9 75                      .byte      0xa9, 0x75
00008664  20 1F                      move.l     (a7)+, d0
00008666  2B 40 CF 50                move.l     d0, -$30b0(a5)
0000866A  60 52                      bra.b      $86be
0000866C  42 6D CF 4C                clr.w      -$30b4(a5)
00008670  60 4C                      bra.b      $86be
00008672  0C 6D 00 06 CF 4C          cmpi.w     #$6, -$30b4(a5)
00008678  66 40                      bne.b      $86ba
0000867A  59 4F                      subq.w     #$4, a7
0000867C  A9 75                      .byte      0xa9, 0x75
0000867E  20 1F                      move.l     (a7)+, d0
00008680  90 AD CF 50                sub.l      -$30b0(a5), d0
00008684  72 3C                      moveq      #$3c, d1
00008686  B0 81                      cmp.l      d1, d0
00008688  64 2A                      bcc.b      $86b4
0000868A  0C 6D 00 03 FF EC          cmpi.w     #$3, -$14(a5)
00008690  66 08                      bne.b      $869a
00008692  3B 7C 00 07 CF 4C          move.w     #$7, -$30b4(a5)
00008698  60 0E                      bra.b      $86a8
0000869A  0C 6D 00 02 FF EC          cmpi.w     #$2, -$14(a5)
000086A0  66 06                      bne.b      $86a8
000086A2  3B 7C 00 08 CF 4C          move.w     #$8, -$30b4(a5)
000086A8  59 4F                      subq.w     #$4, a7
000086AA  A9 75                      .byte      0xa9, 0x75
000086AC  20 1F                      move.l     (a7)+, d0
000086AE  2B 40 CF 50                move.l     d0, -$30b0(a5)
000086B2  60 0A                      bra.b      $86be
000086B4  42 6D CF 4C                clr.w      -$30b4(a5)
000086B8  60 04                      bra.b      $86be
000086BA  42 6D CF 4C                clr.w      -$30b4(a5)
000086BE  0C 6D 00 03 FF EA          cmpi.w     #$3, -$16(a5)
000086C4  66 00 00 86                bne.w      $874c
000086C8  0C 6D 00 01 FF EC          cmpi.w     #$1, -$14(a5)
000086CE  66 7C                      bne.b      $874c
000086D0  4A 6D CF 4C                tst.w      -$30b4(a5)
000086D4  66 12                      bne.b      $86e8
000086D6  3B 7C 00 0F CF 4C          move.w     #$f, -$30b4(a5)
000086DC  59 4F                      subq.w     #$4, a7
000086DE  A9 75                      .byte      0xa9, 0x75
000086E0  20 1F                      move.l     (a7)+, d0
000086E2  2B 40 CF 50                move.l     d0, -$30b0(a5)
000086E6  60 64                      bra.b      $874c
000086E8  0C 6D 00 0B CF 4C          cmpi.w     #$b, -$30b4(a5)
000086EE  66 28                      bne.b      $8718
000086F0  59 4F                      subq.w     #$4, a7
000086F2  A9 75                      .byte      0xa9, 0x75
000086F4  20 1F                      move.l     (a7)+, d0
000086F6  90 AD CF 50                sub.l      -$30b0(a5), d0
000086FA  72 3C                      moveq      #$3c, d1
000086FC  B0 81                      cmp.l      d1, d0
000086FE  64 12                      bcc.b      $8712
00008700  3B 7C 00 0C CF 4C          move.w     #$c, -$30b4(a5)
00008706  59 4F                      subq.w     #$4, a7
00008708  A9 75                      .byte      0xa9, 0x75
0000870A  20 1F                      move.l     (a7)+, d0
0000870C  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008710  60 3A                      bra.b      $874c
00008712  42 6D CF 4C                clr.w      -$30b4(a5)
00008716  60 34                      bra.b      $874c
00008718  0C 6D 00 10 CF 4C          cmpi.w     #$10, -$30b4(a5)
0000871E  66 28                      bne.b      $8748
00008720  59 4F                      subq.w     #$4, a7
00008722  A9 75                      .byte      0xa9, 0x75
00008724  20 1F                      move.l     (a7)+, d0
00008726  90 AD CF 50                sub.l      -$30b0(a5), d0
0000872A  72 3C                      moveq      #$3c, d1
0000872C  B0 81                      cmp.l      d1, d0
0000872E  64 12                      bcc.b      $8742
00008730  3B 7C 00 11 CF 4C          move.w     #$11, -$30b4(a5)
00008736  59 4F                      subq.w     #$4, a7
00008738  A9 75                      .byte      0xa9, 0x75
0000873A  20 1F                      move.l     (a7)+, d0
0000873C  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008740  60 0A                      bra.b      $874c
00008742  42 6D CF 4C                clr.w      -$30b4(a5)
00008746  60 04                      bra.b      $874c
00008748  42 6D CF 4C                clr.w      -$30b4(a5)
0000874C  0C 6D 00 03 FF EA          cmpi.w     #$3, -$16(a5)
00008752  67 2A                      beq.b      $877e
00008754  42 6D CF 4C                clr.w      -$30b4(a5)
00008758  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
0000875E  4E B9 00 00 00 B0          jsr        $b0.l
00008764  48 6D D5 6E                pea.l      -$2a92(a5)
00008768  48 78 00 50                pea.l      $50.w
0000876C  A8 A8                      .byte      0xa8, 0xa8
0000876E  52 6D FF EA                addq.w     #$1, -$16(a5)
00008772  52 6D FF E2                addq.w     #$1, -$1e(a5)
00008776  4E B9 00 00 8C AC          jsr        $8cac.l
0000877C  58 4F                      addq.w     #$4, a7
0000877E  10 2D D8 19                move.b     -$27e7(a5), d0
00008782  48 80                      ext.w      d0
00008784  B0 6D E3 60                cmp.w      -$1ca0(a5), d0
00008788  66 00 00 F8                bne.w      $8882
0000878C  0C 6D 00 01 FF EC          cmpi.w     #$1, -$14(a5)
00008792  66 00 00 BA                bne.w      $884e
00008796  0C 6D 00 03 FF EA          cmpi.w     #$3, -$16(a5)
0000879C  66 00 00 B0                bne.w      $884e
000087A0  4A 6D CF 4C                tst.w      -$30b4(a5)
000087A4  66 14                      bne.b      $87ba
000087A6  3B 7C 00 0A CF 4C          move.w     #$a, -$30b4(a5)
000087AC  59 4F                      subq.w     #$4, a7
000087AE  A9 75                      .byte      0xa9, 0x75
000087B0  20 1F                      move.l     (a7)+, d0
000087B2  2B 40 CF 50                move.l     d0, -$30b0(a5)
000087B6  60 00 00 96                bra.w      $884e
000087BA  0C 6D 00 0A CF 4C          cmpi.w     #$a, -$30b4(a5)
000087C0  66 28                      bne.b      $87ea
000087C2  59 4F                      subq.w     #$4, a7
000087C4  A9 75                      .byte      0xa9, 0x75
000087C6  20 1F                      move.l     (a7)+, d0
000087C8  90 AD CF 50                sub.l      -$30b0(a5), d0
000087CC  72 3C                      moveq      #$3c, d1
000087CE  B0 81                      cmp.l      d1, d0
000087D0  64 12                      bcc.b      $87e4
000087D2  3B 7C 00 0B CF 4C          move.w     #$b, -$30b4(a5)
000087D8  59 4F                      subq.w     #$4, a7
000087DA  A9 75                      .byte      0xa9, 0x75
000087DC  20 1F                      move.l     (a7)+, d0
000087DE  2B 40 CF 50                move.l     d0, -$30b0(a5)
000087E2  60 6A                      bra.b      $884e
000087E4  42 6D CF 4C                clr.w      -$30b4(a5)
000087E8  60 64                      bra.b      $884e
000087EA  0C 6D 00 0F CF 4C          cmpi.w     #$f, -$30b4(a5)
000087F0  66 28                      bne.b      $881a
000087F2  59 4F                      subq.w     #$4, a7
000087F4  A9 75                      .byte      0xa9, 0x75
000087F6  20 1F                      move.l     (a7)+, d0
000087F8  90 AD CF 50                sub.l      -$30b0(a5), d0
000087FC  72 3C                      moveq      #$3c, d1
000087FE  B0 81                      cmp.l      d1, d0
00008800  64 12                      bcc.b      $8814
00008802  3B 7C 00 10 CF 4C          move.w     #$10, -$30b4(a5)
00008808  59 4F                      subq.w     #$4, a7
0000880A  A9 75                      .byte      0xa9, 0x75
0000880C  20 1F                      move.l     (a7)+, d0
0000880E  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008812  60 3A                      bra.b      $884e
00008814  42 6D CF 4C                clr.w      -$30b4(a5)
00008818  60 34                      bra.b      $884e
0000881A  0C 6D 00 10 CF 4C          cmpi.w     #$10, -$30b4(a5)
00008820  66 28                      bne.b      $884a
00008822  59 4F                      subq.w     #$4, a7
00008824  A9 75                      .byte      0xa9, 0x75
00008826  20 1F                      move.l     (a7)+, d0
00008828  90 AD CF 50                sub.l      -$30b0(a5), d0
0000882C  72 3C                      moveq      #$3c, d1
0000882E  B0 81                      cmp.l      d1, d0
00008830  64 12                      bcc.b      $8844
00008832  3B 7C 00 14 CF 4C          move.w     #$14, -$30b4(a5)
00008838  59 4F                      subq.w     #$4, a7
0000883A  A9 75                      .byte      0xa9, 0x75
0000883C  20 1F                      move.l     (a7)+, d0
0000883E  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008842  60 0A                      bra.b      $884e
00008844  42 6D CF 4C                clr.w      -$30b4(a5)
00008848  60 04                      bra.b      $884e
0000884A  42 6D CF 4C                clr.w      -$30b4(a5)
0000884E  0C 6D 00 01 FF EC          cmpi.w     #$1, -$14(a5)
00008854  67 2C                      beq.b      $8882
00008856  42 6D CF 4C                clr.w      -$30b4(a5)
0000885A  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
00008860  4E B9 00 00 00 B0          jsr        $b0.l
00008866  48 6D D5 6E                pea.l      -$2a92(a5)
0000886A  2F 3C FF 9C 00 00          move.l     #$ff9c0000, -(a7)
00008870  A8 A8                      .byte      0xa8, 0xa8
00008872  53 6D FF EC                subq.w     #$1, -$14(a5)
00008876  57 6D FF E2                subq.w     #$3, -$1e(a5)
0000887A  4E B9 00 00 8C AC          jsr        $8cac.l
00008880  58 4F                      addq.w     #$4, a7
00008882  10 2D D8 19                move.b     -$27e7(a5), d0
00008886  48 80                      ext.w      d0
00008888  B0 6D E3 64                cmp.w      -$1c9c(a5), d0
0000888C  66 00 00 C4                bne.w      $8952
00008890  0C 6D 00 03 FF EA          cmpi.w     #$3, -$16(a5)
00008896  66 00 00 86                bne.w      $891e
0000889A  0C 6D 00 03 FF EC          cmpi.w     #$3, -$14(a5)
000088A0  66 7C                      bne.b      $891e
000088A2  4A 6D CF 4C                tst.w      -$30b4(a5)
000088A6  66 12                      bne.b      $88ba
000088A8  3B 7C 00 01 CF 4C          move.w     #$1, -$30b4(a5)
000088AE  59 4F                      subq.w     #$4, a7
000088B0  A9 75                      .byte      0xa9, 0x75
000088B2  20 1F                      move.l     (a7)+, d0
000088B4  2B 40 CF 50                move.l     d0, -$30b0(a5)
000088B8  60 64                      bra.b      $891e
000088BA  0C 6D 00 01 CF 4C          cmpi.w     #$1, -$30b4(a5)
000088C0  66 28                      bne.b      $88ea
000088C2  59 4F                      subq.w     #$4, a7
000088C4  A9 75                      .byte      0xa9, 0x75
000088C6  20 1F                      move.l     (a7)+, d0
000088C8  90 AD CF 50                sub.l      -$30b0(a5), d0
000088CC  72 3C                      moveq      #$3c, d1
000088CE  B0 81                      cmp.l      d1, d0
000088D0  64 12                      bcc.b      $88e4
000088D2  3B 7C 00 02 CF 4C          move.w     #$2, -$30b4(a5)
000088D8  59 4F                      subq.w     #$4, a7
000088DA  A9 75                      .byte      0xa9, 0x75
000088DC  20 1F                      move.l     (a7)+, d0
000088DE  2B 40 CF 50                move.l     d0, -$30b0(a5)
000088E2  60 3A                      bra.b      $891e
000088E4  42 6D CF 4C                clr.w      -$30b4(a5)
000088E8  60 34                      bra.b      $891e
000088EA  0C 6D 00 02 CF 4C          cmpi.w     #$2, -$30b4(a5)
000088F0  66 28                      bne.b      $891a
000088F2  59 4F                      subq.w     #$4, a7
000088F4  A9 75                      .byte      0xa9, 0x75
000088F6  20 1F                      move.l     (a7)+, d0
000088F8  90 AD CF 50                sub.l      -$30b0(a5), d0
000088FC  72 3C                      moveq      #$3c, d1
000088FE  B0 81                      cmp.l      d1, d0
00008900  64 12                      bcc.b      $8914
00008902  3B 7C 00 03 CF 4C          move.w     #$3, -$30b4(a5)
00008908  59 4F                      subq.w     #$4, a7
0000890A  A9 75                      .byte      0xa9, 0x75
0000890C  20 1F                      move.l     (a7)+, d0
0000890E  2B 40 CF 50                move.l     d0, -$30b0(a5)
00008912  60 0A                      bra.b      $891e
00008914  42 6D CF 4C                clr.w      -$30b4(a5)
00008918  60 04                      bra.b      $891e
0000891A  42 6D CF 4C                clr.w      -$30b4(a5)
0000891E  0C 6D 00 03 FF EC          cmpi.w     #$3, -$14(a5)
00008924  67 2C                      beq.b      $8952
00008926  42 6D CF 4C                clr.w      -$30b4(a5)
0000892A  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
00008930  4E B9 00 00 00 B0          jsr        $b0.l
00008936  48 6D D5 6E                pea.l      -$2a92(a5)
0000893A  2F 3C 00 64 00 00          move.l     #$640000, -(a7)
00008940  A8 A8                      .byte      0xa8, 0xa8
00008942  52 6D FF EC                addq.w     #$1, -$14(a5)
00008946  56 6D FF E2                addq.w     #$3, -$1e(a5)
0000894A  4E B9 00 00 8C AC          jsr        $8cac.l
00008950  58 4F                      addq.w     #$4, a7
00008952  10 2D D8 19                move.b     -$27e7(a5), d0
00008956  48 80                      ext.w      d0
00008958  B0 6D CF 18                cmp.w      -$30e8(a5), d0
0000895C  67 0E                      beq.b      $896c
0000895E  10 2D D8 19                move.b     -$27e7(a5), d0
00008962  48 80                      ext.w      d0
00008964  B0 6D E3 68                cmp.w      -$1c98(a5), d0
00008968  66 00 02 0E                bne.w      $8b78
0000896C  0C 6D 00 02 FF EC          cmpi.w     #$2, -$14(a5)
00008972  66 00 00 A6                bne.w      $8a1a
00008976  0C 6D 00 02 FF EA          cmpi.w     #$2, -$16(a5)
0000897C  66 00 00 9C                bne.w      $8a1a
00008980  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00008986  66 78                      bne.b      $8a00
00008988  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000898C  48 68 00 02                pea.l      $2(a0)
00008990  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008994  48 68 00 02                pea.l      $2(a0)
00008998  48 6D D5 86                pea.l      -$2a7a(a5)
0000899C  48 6D D5 86                pea.l      -$2a7a(a5)
000089A0  42 67                      clr.w      -(a7)
000089A2  20 6D D3 DE                movea.l    -$2c22(a5), a0
000089A6  2F 28 00 18                move.l     $18(a0), -(a7)
000089AA  A8 EC                      .byte      0xa8, 0xec
000089AC  20 6D D3 FE                movea.l    -$2c02(a5), a0
000089B0  48 68 00 02                pea.l      $2(a0)
000089B4  20 6D D3 DE                movea.l    -$2c22(a5), a0
000089B8  48 68 00 02                pea.l      $2(a0)
000089BC  48 6D D5 86                pea.l      -$2a7a(a5)
000089C0  48 6D D5 86                pea.l      -$2a7a(a5)
000089C4  42 67                      clr.w      -(a7)
000089C6  20 6D D3 DE                movea.l    -$2c22(a5), a0
000089CA  2F 28 00 18                move.l     $18(a0), -(a7)
000089CE  A8 EC                      .byte      0xa8, 0xec
000089D0  0C 2D 00 01 D4 20          cmpi.b     #$1, -$2be0(a5)
000089D6  66 0A                      bne.b      $89e2
000089D8  59 4F                      subq.w     #$4, a7
000089DA  A9 75                      .byte      0xa9, 0x75
000089DC  20 1F                      move.l     (a7)+, d0
000089DE  2B 40 D4 06                move.l     d0, -$2bfa(a5)
000089E2  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
000089E8  4E B9 00 00 00 B0          jsr        $b0.l
000089EE  1B 7C 00 01 D4 1E          move.b     #$1, -$2be2(a5)
000089F4  A9 75                      .byte      0xa9, 0x75
000089F6  20 1F                      move.l     (a7)+, d0
000089F8  2B 40 D8 10                move.l     d0, -$27f0(a5)
000089FC  60 00 01 7A                bra.w      $8b78
00008A00  4A 2D D7 E0                tst.b      -$2820(a5)
00008A04  66 00 01 72                bne.w      $8b78
00008A08  2F 3C 27 10 00 0A          move.l     #$2710000a, -(a7)
00008A0E  4E B9 00 00 00 B0          jsr        $b0.l
00008A14  58 4F                      addq.w     #$4, a7
00008A16  60 00 01 60                bra.w      $8b78
00008A1A  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008A1E  48 68 00 02                pea.l      $2(a0)
00008A22  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008A26  48 68 00 02                pea.l      $2(a0)
00008A2A  48 6D D5 6E                pea.l      -$2a92(a5)
00008A2E  48 6D D5 6E                pea.l      -$2a92(a5)
00008A32  42 67                      clr.w      -(a7)
00008A34  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008A38  2F 28 00 18                move.l     $18(a0), -(a7)
00008A3C  A8 EC                      .byte      0xa8, 0xec
00008A3E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008A42  48 68 00 02                pea.l      $2(a0)
00008A46  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008A4A  48 68 00 02                pea.l      $2(a0)
00008A4E  48 6D D5 6E                pea.l      -$2a92(a5)
00008A52  48 6D D5 6E                pea.l      -$2a92(a5)
00008A56  42 67                      clr.w      -(a7)
00008A58  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008A5C  2F 28 00 18                move.l     $18(a0), -(a7)
00008A60  A8 EC                      .byte      0xa8, 0xec
00008A62  0C 2D 00 01 D7 E0          cmpi.b     #$1, -$2820(a5)
00008A68  66 00 00 E2                bne.w      $8b4c
00008A6C  0C 6D 00 03 CF 4C          cmpi.w     #$3, -$30b4(a5)
00008A72  66 1E                      bne.b      $8a92
00008A74  59 4F                      subq.w     #$4, a7
00008A76  A9 75                      .byte      0xa9, 0x75
00008A78  20 1F                      move.l     (a7)+, d0
00008A7A  90 AD CF 50                sub.l      -$30b0(a5), d0
00008A7E  72 3C                      moveq      #$3c, d1
00008A80  B0 81                      cmp.l      d1, d0
00008A82  64 06                      bcc.b      $8a8a
00008A84  3B 7C 00 0C FF E2          move.w     #$c, -$1e(a5)
00008A8A  42 6D CF 4C                clr.w      -$30b4(a5)
00008A8E  60 00 00 BC                bra.w      $8b4c
00008A92  0C 6D 00 07 CF 4C          cmpi.w     #$7, -$30b4(a5)
00008A98  66 1E                      bne.b      $8ab8
00008A9A  59 4F                      subq.w     #$4, a7
00008A9C  A9 75                      .byte      0xa9, 0x75
00008A9E  20 1F                      move.l     (a7)+, d0
00008AA0  90 AD CF 50                sub.l      -$30b0(a5), d0
00008AA4  72 3C                      moveq      #$3c, d1
00008AA6  B0 81                      cmp.l      d1, d0
00008AA8  64 06                      bcc.b      $8ab0
00008AAA  3B 7C 00 0F FF E2          move.w     #$f, -$1e(a5)
00008AB0  42 6D CF 4C                clr.w      -$30b4(a5)
00008AB4  60 00 00 96                bra.w      $8b4c
00008AB8  0C 6D 00 08 CF 4C          cmpi.w     #$8, -$30b4(a5)
00008ABE  66 1C                      bne.b      $8adc
00008AC0  59 4F                      subq.w     #$4, a7
00008AC2  A9 75                      .byte      0xa9, 0x75
00008AC4  20 1F                      move.l     (a7)+, d0
00008AC6  90 AD CF 50                sub.l      -$30b0(a5), d0
00008ACA  72 3C                      moveq      #$3c, d1
00008ACC  B0 81                      cmp.l      d1, d0
00008ACE  64 06                      bcc.b      $8ad6
00008AD0  3B 7C 00 10 FF E2          move.w     #$10, -$1e(a5)
00008AD6  42 6D CF 4C                clr.w      -$30b4(a5)
00008ADA  60 70                      bra.b      $8b4c
00008ADC  0C 6D 00 0C CF 4C          cmpi.w     #$c, -$30b4(a5)
00008AE2  66 1C                      bne.b      $8b00
00008AE4  59 4F                      subq.w     #$4, a7
00008AE6  A9 75                      .byte      0xa9, 0x75
00008AE8  20 1F                      move.l     (a7)+, d0
00008AEA  90 AD CF 50                sub.l      -$30b0(a5), d0
00008AEE  72 3C                      moveq      #$3c, d1
00008AF0  B0 81                      cmp.l      d1, d0
00008AF2  64 06                      bcc.b      $8afa
00008AF4  3B 7C 00 0A FF E2          move.w     #$a, -$1e(a5)
00008AFA  42 6D CF 4C                clr.w      -$30b4(a5)
00008AFE  60 4C                      bra.b      $8b4c
00008B00  0C 6D 00 11 CF 4C          cmpi.w     #$11, -$30b4(a5)
00008B06  66 1C                      bne.b      $8b24
00008B08  59 4F                      subq.w     #$4, a7
00008B0A  A9 75                      .byte      0xa9, 0x75
00008B0C  20 1F                      move.l     (a7)+, d0
00008B0E  90 AD CF 50                sub.l      -$30b0(a5), d0
00008B12  72 3C                      moveq      #$3c, d1
00008B14  B0 81                      cmp.l      d1, d0
00008B16  64 06                      bcc.b      $8b1e
00008B18  3B 7C 00 0B FF E2          move.w     #$b, -$1e(a5)
00008B1E  42 6D CF 4C                clr.w      -$30b4(a5)
00008B22  60 28                      bra.b      $8b4c
00008B24  0C 6D 00 14 CF 4C          cmpi.w     #$14, -$30b4(a5)
00008B2A  66 1C                      bne.b      $8b48
00008B2C  59 4F                      subq.w     #$4, a7
00008B2E  A9 75                      .byte      0xa9, 0x75
00008B30  20 1F                      move.l     (a7)+, d0
00008B32  90 AD CF 50                sub.l      -$30b0(a5), d0
00008B36  72 3C                      moveq      #$3c, d1
00008B38  B0 81                      cmp.l      d1, d0
00008B3A  64 06                      bcc.b      $8b42
00008B3C  3B 7C 00 0E FF E2          move.w     #$e, -$1e(a5)
00008B42  42 6D CF 4C                clr.w      -$30b4(a5)
00008B46  60 04                      bra.b      $8b4c
00008B48  42 6D CF 4C                clr.w      -$30b4(a5)
00008B4C  0C 2D 00 01 D4 20          cmpi.b     #$1, -$2be0(a5)
00008B52  66 0A                      bne.b      $8b5e
00008B54  59 4F                      subq.w     #$4, a7
00008B56  A9 75                      .byte      0xa9, 0x75
00008B58  20 1F                      move.l     (a7)+, d0
00008B5A  2B 40 D4 06                move.l     d0, -$2bfa(a5)
00008B5E  2F 3C 01 2D 00 0A          move.l     #$12d000a, -(a7)
00008B64  4E B9 00 00 00 B0          jsr        $b0.l
00008B6A  1B 7C 00 01 D4 1E          move.b     #$1, -$2be2(a5)
00008B70  A9 75                      .byte      0xa9, 0x75
00008B72  20 1F                      move.l     (a7)+, d0
00008B74  2B 40 D8 10                move.l     d0, -$27f0(a5)
00008B78  4E 5E                      unlk       a6
00008B7A  4E 75                      rts

; MacsBug symbol trailer for CheckPlayer2Key: 8F 43 68 65 63 6B 50 6C 61 79 65 72 32 4B 65 79

HandleKeyDown: ; 00008B8E..00008BF0
00008B8E  4E 56 00 00                link.w     a6, #$0
00008B92  20 2D D8 1C                move.l     -$27e4(a5), d0
00008B96  02 80 00 00 00 FF          andi.l     #$ff, d0
00008B9C  1B 40 D8 19                move.b     d0, -$27e7(a5)
00008BA0  0C 2D 00 71 D8 19          cmpi.b     #$71, -$27e7(a5)
00008BA6  66 12                      bne.b      $8bba
00008BA8  30 2D D8 28                move.w     -$27d8(a5), d0
00008BAC  02 80 00 00 01 00          andi.l     #$100, d0
00008BB2  67 06                      beq.b      $8bba
00008BB4  1B 7C 00 01 CF 0E          move.b     #$1, -$30f2(a5)
00008BBA  2B 6D D5 86 D5 7E          move.l     -$2a7a(a5), -$2a82(a5)
00008BC0  2B 6D D5 8A D5 82          move.l     -$2a76(a5), -$2a7e(a5)
00008BC6  2B 6D D5 6E D5 66          move.l     -$2a92(a5), -$2a9a(a5)
00008BCC  2B 6D D5 72 D5 6A          move.l     -$2a8e(a5), -$2a96(a5)
00008BD2  4A 2D D4 20                tst.b      -$2be0(a5)
00008BD6  66 04                      bne.b      $8bdc
00008BD8  4E BA F3 4C                jsr        $7f26(pc)
00008BDC  4A 2D FF DE                tst.b      -$22(a5)
00008BE0  66 0A                      bne.b      $8bec
00008BE2  4A 2D D4 1E                tst.b      -$2be2(a5)
00008BE6  66 04                      bne.b      $8bec
00008BE8  4E BA F9 D6                jsr        $85c0(pc)
00008BEC  4E 5E                      unlk       a6
00008BEE  4E 75                      rts

; MacsBug symbol trailer for HandleKeyDown: 8D 48 61 6E 64 6C 65 4B 65 79 44 6F 77 6E

ChangeIcon1: ; 00008C00..00008C9E
00008C00  4E 56 00 00                link.w     a6, #$0
00008C04  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00008C0A  67 36                      beq.b      $8c42
00008C0C  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008C10  48 68 00 02                pea.l      $2(a0)
00008C14  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C18  48 68 00 02                pea.l      $2(a0)
00008C1C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008C20  48 68 00 02                pea.l      $2(a0)
00008C24  30 2D FF E0                move.w     -$20(a5), d0
00008C28  53 40                      subq.w     #$1, d0
00008C2A  48 C0                      ext.l      d0
00008C2C  E7 88                      lsl.l      #$3, d0
00008C2E  41 ED D5 16                lea.l      -$2aea(a5), a0
00008C32  D1 C0                      adda.l     d0, a0
00008C34  48 50                      pea.l      (a0)
00008C36  48 6D D5 16                pea.l      -$2aea(a5)
00008C3A  48 6D D5 0E                pea.l      -$2af2(a5)
00008C3E  A8 17                      .byte      0xa8, 0x17
00008C40  60 34                      bra.b      $8c76
00008C42  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C46  48 68 00 02                pea.l      $2(a0)
00008C4A  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008C4E  48 68 00 02                pea.l      $2(a0)
00008C52  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008C56  48 68 00 02                pea.l      $2(a0)
00008C5A  30 2D FF E0                move.w     -$20(a5), d0
00008C5E  53 40                      subq.w     #$1, d0
00008C60  48 C0                      ext.l      d0
00008C62  E7 88                      lsl.l      #$3, d0
00008C64  41 ED D5 16                lea.l      -$2aea(a5), a0
00008C68  D1 C0                      adda.l     d0, a0
00008C6A  48 50                      pea.l      (a0)
00008C6C  48 6D D5 16                pea.l      -$2aea(a5)
00008C70  48 6D D5 0E                pea.l      -$2af2(a5)
00008C74  A8 17                      .byte      0xa8, 0x17
00008C76  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008C7A  48 68 00 02                pea.l      $2(a0)
00008C7E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008C82  48 68 00 02                pea.l      $2(a0)
00008C86  48 6D D5 0E                pea.l      -$2af2(a5)
00008C8A  48 6D D5 0E                pea.l      -$2af2(a5)
00008C8E  42 67                      clr.w      -(a7)
00008C90  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008C94  2F 28 00 18                move.l     $18(a0), -(a7)
00008C98  A8 EC                      .byte      0xa8, 0xec
00008C9A  4E 5E                      unlk       a6
00008C9C  4E 75                      rts

; MacsBug symbol trailer for ChangeIcon1: 8B 43 68 61 6E 67 65 49 63 6F 6E 31

ChangeIcon2: ; 00008CAC..00008D50
00008CAC  4E 56 00 00                link.w     a6, #$0
00008CB0  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00008CB6  67 36                      beq.b      $8cee
00008CB8  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008CBC  48 68 00 02                pea.l      $2(a0)
00008CC0  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008CC4  48 68 00 02                pea.l      $2(a0)
00008CC8  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008CCC  48 68 00 02                pea.l      $2(a0)
00008CD0  30 2D FF E2                move.w     -$1e(a5), d0
00008CD4  53 40                      subq.w     #$1, d0
00008CD6  48 C0                      ext.l      d0
00008CD8  E7 88                      lsl.l      #$3, d0
00008CDA  41 ED D5 16                lea.l      -$2aea(a5), a0
00008CDE  D1 C0                      adda.l     d0, a0
00008CE0  48 50                      pea.l      (a0)
00008CE2  48 6D D5 16                pea.l      -$2aea(a5)
00008CE6  48 6D D5 06                pea.l      -$2afa(a5)
00008CEA  A8 17                      .byte      0xa8, 0x17
00008CEC  60 34                      bra.b      $8d22
00008CEE  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008CF2  48 68 00 02                pea.l      $2(a0)
00008CF6  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008CFA  48 68 00 02                pea.l      $2(a0)
00008CFE  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D02  48 68 00 02                pea.l      $2(a0)
00008D06  30 2D FF E2                move.w     -$1e(a5), d0
00008D0A  53 40                      subq.w     #$1, d0
00008D0C  48 C0                      ext.l      d0
00008D0E  E7 88                      lsl.l      #$3, d0
00008D10  41 ED D5 16                lea.l      -$2aea(a5), a0
00008D14  D1 C0                      adda.l     d0, a0
00008D16  48 50                      pea.l      (a0)
00008D18  48 6D D5 16                pea.l      -$2aea(a5)
00008D1C  48 6D D5 06                pea.l      -$2afa(a5)
00008D20  A8 17                      .byte      0xa8, 0x17
00008D22  4A 2D FF DE                tst.b      -$22(a5)
00008D26  66 24                      bne.b      $8d4c
00008D28  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008D2C  48 68 00 02                pea.l      $2(a0)
00008D30  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D34  48 68 00 02                pea.l      $2(a0)
00008D38  48 6D D5 06                pea.l      -$2afa(a5)
00008D3C  48 6D D5 06                pea.l      -$2afa(a5)
00008D40  42 67                      clr.w      -(a7)
00008D42  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008D46  2F 28 00 18                move.l     $18(a0), -(a7)
00008D4A  A8 EC                      .byte      0xa8, 0xec
00008D4C  4E 5E                      unlk       a6
00008D4E  4E 75                      rts

; MacsBug symbol trailer for ChangeIcon2: 8B 43 68 61 6E 67 65 49 63 6F 6E 32

MoveSelectCrap: ; 00008D5E..00008F08
00008D5E  4E 56 00 00                link.w     a6, #$0
00008D62  55 4F                      subq.w     #$2, a7
00008D64  3F 3C FF FF                move.w     #$ffff, -(a7)
00008D68  48 6D D8 1A                pea.l      -$27e6(a5)
00008D6C  A9 70                      .byte      0xa9, 0x70
00008D6E  10 1F                      move.b     (a7)+, d0
00008D70  0C 6D 00 03 D8 1A          cmpi.w     #$3, -$27e6(a5)
00008D76  66 04                      bne.b      $8d7c
00008D78  4E BA FE 14                jsr        $8b8e(pc)
00008D7C  0C 2D 00 01 D4 20          cmpi.b     #$1, -$2be0(a5)
00008D82  66 00 00 BC                bne.w      $8e40
00008D86  59 4F                      subq.w     #$4, a7
00008D88  A9 75                      .byte      0xa9, 0x75
00008D8A  20 1F                      move.l     (a7)+, d0
00008D8C  90 AD D8 14                sub.l      -$27ec(a5), d0
00008D90  72 3C                      moveq      #$3c, d1
00008D92  B0 81                      cmp.l      d1, d0
00008D94  66 00 00 AA                bne.w      $8e40
00008D98  0C 6D 00 05 FF E0          cmpi.w     #$5, -$20(a5)
00008D9E  66 12                      bne.b      $8db2
00008DA0  2F 3C 00 F4 00 0A          move.l     #$f4000a, -(a7)
00008DA6  4E B9 00 00 00 A8          jsr        $a8.l
00008DAC  58 4F                      addq.w     #$4, a7
00008DAE  60 00 00 90                bra.w      $8e40
00008DB2  0C 6D 00 0A FF E0          cmpi.w     #$a, -$20(a5)
00008DB8  66 10                      bne.b      $8dca
00008DBA  2F 3C 00 EE 00 0A          move.l     #$ee000a, -(a7)
00008DC0  4E B9 00 00 00 A8          jsr        $a8.l
00008DC6  58 4F                      addq.w     #$4, a7
00008DC8  60 76                      bra.b      $8e40
00008DCA  0C 6D 00 0B FF E0          cmpi.w     #$b, -$20(a5)
00008DD0  66 10                      bne.b      $8de2
00008DD2  2F 3C 00 EF 00 0A          move.l     #$ef000a, -(a7)
00008DD8  4E B9 00 00 00 A8          jsr        $a8.l
00008DDE  58 4F                      addq.w     #$4, a7
00008DE0  60 5E                      bra.b      $8e40
00008DE2  0C 6D 00 0C FF E0          cmpi.w     #$c, -$20(a5)
00008DE8  66 10                      bne.b      $8dfa
00008DEA  2F 3C 13 89 00 0A          move.l     #$1389000a, -(a7)
00008DF0  4E B9 00 00 00 A8          jsr        $a8.l
00008DF6  58 4F                      addq.w     #$4, a7
00008DF8  60 46                      bra.b      $8e40
00008DFA  0C 6D 00 0F FF E0          cmpi.w     #$f, -$20(a5)
00008E00  66 10                      bne.b      $8e12
00008E02  2F 3C 00 F2 00 0A          move.l     #$f2000a, -(a7)
00008E08  4E B9 00 00 00 A8          jsr        $a8.l
00008E0E  58 4F                      addq.w     #$4, a7
00008E10  60 2E                      bra.b      $8e40
00008E12  0C 6D 00 10 FF E0          cmpi.w     #$10, -$20(a5)
00008E18  66 10                      bne.b      $8e2a
00008E1A  2F 3C 13 88 00 0A          move.l     #$1388000a, -(a7)
00008E20  4E B9 00 00 00 A8          jsr        $a8.l
00008E26  58 4F                      addq.w     #$4, a7
00008E28  60 16                      bra.b      $8e40
00008E2A  3F 3C 00 0A                move.w     #$a, -(a7)
00008E2E  30 2D FF E0                move.w     -$20(a5), d0
00008E32  06 40 00 E3                addi.w     #$e3, d0
00008E36  3F 00                      move.w     d0, -(a7)
00008E38  4E B9 00 00 00 A8          jsr        $a8.l
00008E3E  58 4F                      addq.w     #$4, a7
00008E40  0C 2D 00 01 D4 1E          cmpi.b     #$1, -$2be2(a5)
00008E46  66 00 00 BC                bne.w      $8f04
00008E4A  59 4F                      subq.w     #$4, a7
00008E4C  A9 75                      .byte      0xa9, 0x75
00008E4E  20 1F                      move.l     (a7)+, d0
00008E50  90 AD D8 10                sub.l      -$27f0(a5), d0
00008E54  72 3C                      moveq      #$3c, d1
00008E56  B0 81                      cmp.l      d1, d0
00008E58  66 00 00 AA                bne.w      $8f04
00008E5C  0C 6D 00 05 FF E2          cmpi.w     #$5, -$1e(a5)
00008E62  66 12                      bne.b      $8e76
00008E64  2F 3C 00 F4 00 0A          move.l     #$f4000a, -(a7)
00008E6A  4E B9 00 00 00 B0          jsr        $b0.l
00008E70  58 4F                      addq.w     #$4, a7
00008E72  60 00 00 90                bra.w      $8f04
00008E76  0C 6D 00 0A FF E2          cmpi.w     #$a, -$1e(a5)
00008E7C  66 10                      bne.b      $8e8e
00008E7E  2F 3C 00 EE 00 0A          move.l     #$ee000a, -(a7)
00008E84  4E B9 00 00 00 B0          jsr        $b0.l
00008E8A  58 4F                      addq.w     #$4, a7
00008E8C  60 76                      bra.b      $8f04
00008E8E  0C 6D 00 0B FF E2          cmpi.w     #$b, -$1e(a5)
00008E94  66 10                      bne.b      $8ea6
00008E96  2F 3C 00 EF 00 0A          move.l     #$ef000a, -(a7)
00008E9C  4E B9 00 00 00 B0          jsr        $b0.l
00008EA2  58 4F                      addq.w     #$4, a7
00008EA4  60 5E                      bra.b      $8f04
00008EA6  0C 6D 00 0C FF E2          cmpi.w     #$c, -$1e(a5)
00008EAC  66 10                      bne.b      $8ebe
00008EAE  2F 3C 13 89 00 0A          move.l     #$1389000a, -(a7)
00008EB4  4E B9 00 00 00 B0          jsr        $b0.l
00008EBA  58 4F                      addq.w     #$4, a7
00008EBC  60 46                      bra.b      $8f04
00008EBE  0C 6D 00 0F FF E2          cmpi.w     #$f, -$1e(a5)
00008EC4  66 10                      bne.b      $8ed6
00008EC6  2F 3C 00 F2 00 0A          move.l     #$f2000a, -(a7)
00008ECC  4E B9 00 00 00 B0          jsr        $b0.l
00008ED2  58 4F                      addq.w     #$4, a7
00008ED4  60 2E                      bra.b      $8f04
00008ED6  0C 6D 00 10 FF E2          cmpi.w     #$10, -$1e(a5)
00008EDC  66 10                      bne.b      $8eee
00008EDE  2F 3C 13 88 00 0A          move.l     #$1388000a, -(a7)
00008EE4  4E B9 00 00 00 B0          jsr        $b0.l
00008EEA  58 4F                      addq.w     #$4, a7
00008EEC  60 16                      bra.b      $8f04
00008EEE  3F 3C 00 0A                move.w     #$a, -(a7)
00008EF2  30 2D FF E2                move.w     -$1e(a5), d0
00008EF6  06 40 00 E3                addi.w     #$e3, d0
00008EFA  3F 00                      move.w     d0, -(a7)
00008EFC  4E B9 00 00 00 B0          jsr        $b0.l
00008F02  58 4F                      addq.w     #$4, a7
00008F04  4E 5E                      unlk       a6
00008F06  4E 75                      rts

; MacsBug symbol trailer for MoveSelectCrap: 8E 4D 6F 76 65 53 65 6C 65 63 74 43 72 61 70

ShowSelectCrap: ; 00008F1A..00009112
00008F1A  4E 56 FF FC                link.w     a6, #$fffc
00008F1E  4A 2D D4 20                tst.b      -$2be0(a5)
00008F22  66 24                      bne.b      $8f48
00008F24  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008F28  48 68 00 02                pea.l      $2(a0)
00008F2C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008F30  48 68 00 02                pea.l      $2(a0)
00008F34  48 6D D5 7E                pea.l      -$2a82(a5)
00008F38  48 6D D5 7E                pea.l      -$2a82(a5)
00008F3C  42 67                      clr.w      -(a7)
00008F3E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008F42  2F 28 00 18                move.l     $18(a0), -(a7)
00008F46  A8 EC                      .byte      0xa8, 0xec
00008F48  4A 2D FF DE                tst.b      -$22(a5)
00008F4C  66 2A                      bne.b      $8f78
00008F4E  4A 2D D4 1E                tst.b      -$2be2(a5)
00008F52  66 24                      bne.b      $8f78
00008F54  20 6D D3 FA                movea.l    -$2c06(a5), a0
00008F58  48 68 00 02                pea.l      $2(a0)
00008F5C  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008F60  48 68 00 02                pea.l      $2(a0)
00008F64  48 6D D5 66                pea.l      -$2a9a(a5)
00008F68  48 6D D5 66                pea.l      -$2a9a(a5)
00008F6C  42 67                      clr.w      -(a7)
00008F6E  20 6D D3 DE                movea.l    -$2c22(a5), a0
00008F72  2F 28 00 18                move.l     $18(a0), -(a7)
00008F76  A8 EC                      .byte      0xa8, 0xec
00008F78  70 03                      moveq      #$3, d0
00008F7A  2D 40 FF FC                move.l     d0, -$4(a6)
00008F7E  59 4F                      subq.w     #$4, a7
00008F80  A9 75                      .byte      0xa9, 0x75
00008F82  20 1F                      move.l     (a7)+, d0
00008F84  C0 AE FF FC                and.l      -$4(a6), d0
00008F88  66 64                      bne.b      $8fee
00008F8A  4A 2D D4 20                tst.b      -$2be0(a5)
00008F8E  66 26                      bne.b      $8fb6
00008F90  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008F94  48 68 00 02                pea.l      $2(a0)
00008F98  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008F9C  48 68 00 02                pea.l      $2(a0)
00008FA0  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008FA4  48 68 00 02                pea.l      $2(a0)
00008FA8  48 6D D5 8E                pea.l      -$2a72(a5)
00008FAC  48 6D D5 8E                pea.l      -$2a72(a5)
00008FB0  48 6D D5 86                pea.l      -$2a7a(a5)
00008FB4  A8 17                      .byte      0xa8, 0x17
00008FB6  4A 2D FF DE                tst.b      -$22(a5)
00008FBA  66 00 00 90                bne.w      $904c
00008FBE  4A 2D D4 1E                tst.b      -$2be2(a5)
00008FC2  66 00 00 88                bne.w      $904c
00008FC6  20 6D D3 F2                movea.l    -$2c0e(a5), a0
00008FCA  48 68 00 02                pea.l      $2(a0)
00008FCE  20 6D D3 EA                movea.l    -$2c16(a5), a0
00008FD2  48 68 00 02                pea.l      $2(a0)
00008FD6  20 6D D3 FE                movea.l    -$2c02(a5), a0
00008FDA  48 68 00 02                pea.l      $2(a0)
00008FDE  48 6D D5 8E                pea.l      -$2a72(a5)
00008FE2  48 6D D5 96                pea.l      -$2a6a(a5)
00008FE6  48 6D D5 6E                pea.l      -$2a92(a5)
00008FEA  A8 17                      .byte      0xa8, 0x17
00008FEC  60 5E                      bra.b      $904c
00008FEE  4A 2D D4 20                tst.b      -$2be0(a5)
00008FF2  66 26                      bne.b      $901a
00008FF4  20 6D D3 F6                movea.l    -$2c0a(a5), a0
00008FF8  48 68 00 02                pea.l      $2(a0)
00008FFC  20 6D D3 EA                movea.l    -$2c16(a5), a0
00009000  48 68 00 02                pea.l      $2(a0)
00009004  20 6D D3 FE                movea.l    -$2c02(a5), a0
00009008  48 68 00 02                pea.l      $2(a0)
0000900C  48 6D D5 96                pea.l      -$2a6a(a5)
00009010  48 6D D5 8E                pea.l      -$2a72(a5)
00009014  48 6D D5 86                pea.l      -$2a7a(a5)
00009018  A8 17                      .byte      0xa8, 0x17
0000901A  4A 2D FF DE                tst.b      -$22(a5)
0000901E  66 2C                      bne.b      $904c
00009020  4A 2D D4 1E                tst.b      -$2be2(a5)
00009024  66 26                      bne.b      $904c
00009026  20 6D D3 F2                movea.l    -$2c0e(a5), a0
0000902A  48 68 00 02                pea.l      $2(a0)
0000902E  20 6D D3 EA                movea.l    -$2c16(a5), a0
00009032  48 68 00 02                pea.l      $2(a0)
00009036  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000903A  48 68 00 02                pea.l      $2(a0)
0000903E  48 6D D5 96                pea.l      -$2a6a(a5)
00009042  48 6D D5 96                pea.l      -$2a6a(a5)
00009046  48 6D D5 6E                pea.l      -$2a92(a5)
0000904A  A8 17                      .byte      0xa8, 0x17
0000904C  48 6D D5 7E                pea.l      -$2a82(a5)
00009050  48 6D D5 86                pea.l      -$2a7a(a5)
00009054  48 6D D5 76                pea.l      -$2a8a(a5)
00009058  A8 AB                      .byte      0xa8, 0xab
0000905A  48 6D D5 66                pea.l      -$2a9a(a5)
0000905E  48 6D D5 6E                pea.l      -$2a92(a5)
00009062  48 6D D5 5E                pea.l      -$2aa2(a5)
00009066  A8 AB                      .byte      0xa8, 0xab
00009068  4A 2D D4 20                tst.b      -$2be0(a5)
0000906C  66 26                      bne.b      $9094
0000906E  20 6D D3 FE                movea.l    -$2c02(a5), a0
00009072  48 68 00 02                pea.l      $2(a0)
00009076  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000907A  48 68 00 02                pea.l      $2(a0)
0000907E  48 6D D5 76                pea.l      -$2a8a(a5)
00009082  48 6D D5 76                pea.l      -$2a8a(a5)
00009086  42 67                      clr.w      -(a7)
00009088  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000908C  2F 28 00 18                move.l     $18(a0), -(a7)
00009090  A8 EC                      .byte      0xa8, 0xec
00009092  60 24                      bra.b      $90b8
00009094  20 6D D3 FA                movea.l    -$2c06(a5), a0
00009098  48 68 00 02                pea.l      $2(a0)
0000909C  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090A0  48 68 00 02                pea.l      $2(a0)
000090A4  48 6D D5 76                pea.l      -$2a8a(a5)
000090A8  48 6D D5 76                pea.l      -$2a8a(a5)
000090AC  42 67                      clr.w      -(a7)
000090AE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090B2  2F 28 00 18                move.l     $18(a0), -(a7)
000090B6  A8 EC                      .byte      0xa8, 0xec
000090B8  4A 2D FF DE                tst.b      -$22(a5)
000090BC  66 50                      bne.b      $910e
000090BE  4A 2D D4 1E                tst.b      -$2be2(a5)
000090C2  66 26                      bne.b      $90ea
000090C4  20 6D D3 FE                movea.l    -$2c02(a5), a0
000090C8  48 68 00 02                pea.l      $2(a0)
000090CC  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090D0  48 68 00 02                pea.l      $2(a0)
000090D4  48 6D D5 5E                pea.l      -$2aa2(a5)
000090D8  48 6D D5 5E                pea.l      -$2aa2(a5)
000090DC  42 67                      clr.w      -(a7)
000090DE  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090E2  2F 28 00 18                move.l     $18(a0), -(a7)
000090E6  A8 EC                      .byte      0xa8, 0xec
000090E8  60 24                      bra.b      $910e
000090EA  20 6D D3 FA                movea.l    -$2c06(a5), a0
000090EE  48 68 00 02                pea.l      $2(a0)
000090F2  20 6D D3 DE                movea.l    -$2c22(a5), a0
000090F6  48 68 00 02                pea.l      $2(a0)
000090FA  48 6D D5 5E                pea.l      -$2aa2(a5)
000090FE  48 6D D5 5E                pea.l      -$2aa2(a5)
00009102  42 67                      clr.w      -(a7)
00009104  20 6D D3 DE                movea.l    -$2c22(a5), a0
00009108  2F 28 00 18                move.l     $18(a0), -(a7)
0000910C  A8 EC                      .byte      0xa8, 0xec
0000910E  4E 5E                      unlk       a6
00009110  4E 75                      rts

; MacsBug symbol trailer for ShowSelectCrap: 8E 53 68 6F 77 53 65 6C 65 63 74 43 72 61 70

DoStory: ; 00009124..000091FE
00009124  4E 56 00 00                link.w     a6, #$0
00009128  42 AD CF 08                clr.l      -$30f8(a5)
0000912C  4E B9 00 00 A7 24          jsr        $a724.l
00009132  42 2D CE BF                clr.b      -$3141(a5)
00009136  60 00 00 B4                bra.w      $91ec
0000913A  2F 3C 1F 47 00 0A          move.l     #$1f47000a, -(a7)
00009140  4E B9 00 00 00 C8          jsr        $c8.l
00009146  30 2D FF E0                move.w     -$20(a5), d0
0000914A  58 4F                      addq.w     #$4, a7
0000914C  0C 40 00 0E                cmpi.w     #$e, d0
00009150  62 00 00 90                bhi.w      $91e2
00009154  D0 40                      add.w      d0, d0
00009156  30 3B 00 06                move.w     $915e(pc, d0.w), d0
0000915A  4E FB 00 02                jmp        $915e(pc, d0.w)
0000915E  00 84 00 1E 00 26          ori.l      #$1e0026, d4
00009164  00 2E 00 36 00 3E          ori.b      #$36, $3e(a6)
0000916A  00 46 00 4E                ori.w      #$4e, d6
0000916E  00 56 00 5E                ori.w      #$5e, (a6)
00009172  00 66 00 6E                ori.w      #$6e, -(a6)
00009176  00 76 00 84 00 7E          ori.w      #$84, $7e(a6, d0.w)
0000917C  4E B9 00 00 92 08          jsr        $9208.l
00009182  60 5E                      bra.b      $91e2
00009184  4E B9 00 00 93 52          jsr        $9352.l
0000918A  60 56                      bra.b      $91e2
0000918C  4E B9 00 00 94 C6          jsr        $94c6.l
00009192  60 4E                      bra.b      $91e2
00009194  4E B9 00 00 96 48          jsr        $9648.l
0000919A  60 46                      bra.b      $91e2
0000919C  4E B9 00 00 97 F6          jsr        $97f6.l
000091A2  60 3E                      bra.b      $91e2
000091A4  4E B9 00 00 99 CE          jsr        $99ce.l
000091AA  60 36                      bra.b      $91e2
000091AC  4E B9 00 00 9B 6A          jsr        $9b6a.l
000091B2  60 2E                      bra.b      $91e2
000091B4  4E B9 00 00 9D 1A          jsr        $9d1a.l
000091BA  60 26                      bra.b      $91e2
000091BC  4E B9 00 00 9E DE          jsr        $9ede.l
000091C2  60 1E                      bra.b      $91e2
000091C4  4E B9 00 00 A0 F2          jsr        $a0f2.l
000091CA  60 16                      bra.b      $91e2
000091CC  4E B9 00 00 A2 12          jsr        $a212.l
000091D2  60 0E                      bra.b      $91e2
000091D4  4E B9 00 00 A3 48          jsr        $a348.l
000091DA  60 06                      bra.b      $91e2
000091DC  4E B9 00 00 A5 C4          jsr        $a5c4.l
000091E2  52 AD CF 08                addq.l     #$1, -$30f8(a5)
000091E6  4E B9 00 00 4A BA          jsr        $4aba.l
000091EC  4A 2D CE BF                tst.b      -$3141(a5)
000091F0  67 00 FF 48                beq.w      $913a
000091F4  4E B9 00 00 00 88          jsr        $88.l
000091FA  4E 5E                      unlk       a6
000091FC  4E 75                      rts

; MacsBug symbol trailer for DoStory: 87 44 6F 53 74 6F 72 79

ShangEnding: ; 00009208..00009344
00009208  4E 56 00 00                link.w     a6, #$0
0000920C  4A AD CF 08                tst.l      -$30f8(a5)
00009210  66 54                      bne.b      $9266
00009212  3F 3C 00 0F                move.w     #$f, -(a7)
00009216  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000921C  48 6D E3 D2                pea.l      -$1c2e(a5)
00009220  4E B9 00 00 00 F8          jsr        $f8.l
00009226  3F 3C 00 0F                move.w     #$f, -(a7)
0000922A  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009230  48 6D E3 F1                pea.l      -$1c0f(a5)
00009234  4E B9 00 00 00 F8          jsr        $f8.l
0000923A  3F 3C 00 0F                move.w     #$f, -(a7)
0000923E  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
00009244  48 6D E4 14                pea.l      -$1bec(a5)
00009248  4E B9 00 00 00 F8          jsr        $f8.l
0000924E  3F 3C 00 0F                move.w     #$f, -(a7)
00009252  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
00009258  48 6D E4 3A                pea.l      -$1bc6(a5)
0000925C  4E B9 00 00 00 F8          jsr        $f8.l
00009262  4F EF 00 28                lea.l      $28(a7), a7
00009266  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
0000926E  66 00 00 98                bne.w      $9308
00009272  4E B9 00 00 A7 24          jsr        $a724.l
00009278  3F 3C 00 0F                move.w     #$f, -(a7)
0000927C  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009282  48 6D E4 4C                pea.l      -$1bb4(a5)
00009286  4E B9 00 00 00 F8          jsr        $f8.l
0000928C  3F 3C 00 0F                move.w     #$f, -(a7)
00009290  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009296  48 6D E4 69                pea.l      -$1b97(a5)
0000929A  4E B9 00 00 00 F8          jsr        $f8.l
000092A0  3F 3C 00 0F                move.w     #$f, -(a7)
000092A4  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
000092AA  48 6D E4 76                pea.l      -$1b8a(a5)
000092AE  4E B9 00 00 00 F8          jsr        $f8.l
000092B4  3F 3C 00 0F                move.w     #$f, -(a7)
000092B8  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
000092BE  48 6D E4 98                pea.l      -$1b68(a5)
000092C2  4E B9 00 00 00 F8          jsr        $f8.l
000092C8  3F 3C 00 0F                move.w     #$f, -(a7)
000092CC  2F 3C 00 32 00 C8          move.l     #$3200c8, -(a7)
000092D2  48 6D E4 B0                pea.l      -$1b50(a5)
000092D6  4E B9 00 00 00 F8          jsr        $f8.l
000092DC  3F 3C 00 0F                move.w     #$f, -(a7)
000092E0  2F 3C 00 32 00 DC          move.l     #$3200dc, -(a7)
000092E6  48 6D E4 CD                pea.l      -$1b33(a5)
000092EA  4E B9 00 00 00 F8          jsr        $f8.l
000092F0  3F 3C 00 0F                move.w     #$f, -(a7)
000092F4  2F 3C 00 32 00 F0          move.l     #$3200f0, -(a7)
000092FA  48 6D E4 E2                pea.l      -$1b1e(a5)
000092FE  4E B9 00 00 00 F8          jsr        $f8.l
00009304  4F EF 00 46                lea.l      $46(a7), a7
00009308  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009310  66 1E                      bne.b      $9330
00009312  4E B9 00 00 A7 24          jsr        $a724.l
00009318  3F 3C 00 0F                move.w     #$f, -(a7)
0000931C  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009322  48 6D E4 F8                pea.l      -$1b08(a5)
00009326  4E B9 00 00 00 F8          jsr        $f8.l
0000932C  4F EF 00 0A                lea.l      $a(a7), a7
00009330  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
00009338  66 06                      bne.b      $9340
0000933A  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
00009340  4E 5E                      unlk       a6
00009342  4E 75                      rts

; MacsBug symbol trailer for ShangEnding: 8B 53 68 61 6E 67 45 6E 64 69 6E 67

SindelEnding: ; 00009352..000094B6
00009352  4E 56 00 00                link.w     a6, #$0
00009356  4A AD CF 08                tst.l      -$30f8(a5)
0000935A  66 54                      bne.b      $93b0
0000935C  3F 3C 00 0F                move.w     #$f, -(a7)
00009360  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009366  48 6D E5 0F                pea.l      -$1af1(a5)
0000936A  4E B9 00 00 00 F8          jsr        $f8.l
00009370  3F 3C 00 0F                move.w     #$f, -(a7)
00009374  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000937A  48 6D E5 2C                pea.l      -$1ad4(a5)
0000937E  4E B9 00 00 00 F8          jsr        $f8.l
00009384  3F 3C 00 0F                move.w     #$f, -(a7)
00009388  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000938E  48 6D E5 4A                pea.l      -$1ab6(a5)
00009392  4E B9 00 00 00 F8          jsr        $f8.l
00009398  3F 3C 00 0F                move.w     #$f, -(a7)
0000939C  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
000093A2  48 6D E5 67                pea.l      -$1a99(a5)
000093A6  4E B9 00 00 00 F8          jsr        $f8.l
000093AC  4F EF 00 28                lea.l      $28(a7), a7
000093B0  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
000093B8  66 00 00 84                bne.w      $943e
000093BC  4E B9 00 00 A7 24          jsr        $a724.l
000093C2  3F 3C 00 0F                move.w     #$f, -(a7)
000093C6  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
000093CC  48 6D E5 8A                pea.l      -$1a76(a5)
000093D0  4E B9 00 00 00 F8          jsr        $f8.l
000093D6  3F 3C 00 0F                move.w     #$f, -(a7)
000093DA  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
000093E0  48 6D E5 A9                pea.l      -$1a57(a5)
000093E4  4E B9 00 00 00 F8          jsr        $f8.l
000093EA  3F 3C 00 0F                move.w     #$f, -(a7)
000093EE  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
000093F4  48 6D E5 C6                pea.l      -$1a3a(a5)
000093F8  4E B9 00 00 00 F8          jsr        $f8.l
000093FE  3F 3C 00 0F                move.w     #$f, -(a7)
00009402  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009408  48 6D E5 D2                pea.l      -$1a2e(a5)
0000940C  4E B9 00 00 00 F8          jsr        $f8.l
00009412  3F 3C 00 0F                move.w     #$f, -(a7)
00009416  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000941C  48 6D E5 F5                pea.l      -$1a0b(a5)
00009420  4E B9 00 00 00 F8          jsr        $f8.l
00009426  3F 3C 00 0F                move.w     #$f, -(a7)
0000942A  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
00009430  48 6D E6 16                pea.l      -$19ea(a5)
00009434  4E B9 00 00 00 F8          jsr        $f8.l
0000943A  4F EF 00 3C                lea.l      $3c(a7), a7
0000943E  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009446  66 5A                      bne.b      $94a2
00009448  4E B9 00 00 A7 24          jsr        $a724.l
0000944E  3F 3C 00 0F                move.w     #$f, -(a7)
00009452  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009458  48 6D E6 31                pea.l      -$19cf(a5)
0000945C  4E B9 00 00 00 F8          jsr        $f8.l
00009462  3F 3C 00 0F                move.w     #$f, -(a7)
00009466  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000946C  48 6D E6 52                pea.l      -$19ae(a5)
00009470  4E B9 00 00 00 F8          jsr        $f8.l
00009476  3F 3C 00 0F                move.w     #$f, -(a7)
0000947A  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
00009480  48 6D E6 70                pea.l      -$1990(a5)
00009484  4E B9 00 00 00 F8          jsr        $f8.l
0000948A  3F 3C 00 0F                move.w     #$f, -(a7)
0000948E  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
00009494  48 6D E6 8D                pea.l      -$1973(a5)
00009498  4E B9 00 00 00 F8          jsr        $f8.l
0000949E  4F EF 00 28                lea.l      $28(a7), a7
000094A2  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
000094AA  66 06                      bne.b      $94b2
000094AC  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
000094B2  4E 5E                      unlk       a6
000094B4  4E 75                      rts

; MacsBug symbol trailer for SindelEnding: 8C 53 69 6E 64 65 6C 45 6E 64 69 6E 67

LiuEnding: ; 000094C6..0000963C
000094C6  4E 56 00 00                link.w     a6, #$0
000094CA  4A AD CF 08                tst.l      -$30f8(a5)
000094CE  66 7C                      bne.b      $954c
000094D0  3F 3C 00 0F                move.w     #$f, -(a7)
000094D4  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
000094DA  48 6D E6 AC                pea.l      -$1954(a5)
000094DE  4E B9 00 00 00 F8          jsr        $f8.l
000094E4  3F 3C 00 0F                move.w     #$f, -(a7)
000094E8  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
000094EE  48 6D E6 CA                pea.l      -$1936(a5)
000094F2  4E B9 00 00 00 F8          jsr        $f8.l
000094F8  3F 3C 00 0F                move.w     #$f, -(a7)
000094FC  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009502  48 6D E6 E7                pea.l      -$1919(a5)
00009506  4E B9 00 00 00 F8          jsr        $f8.l
0000950C  3F 3C 00 0F                move.w     #$f, -(a7)
00009510  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009516  48 6D E7 08                pea.l      -$18f8(a5)
0000951A  4E B9 00 00 00 F8          jsr        $f8.l
00009520  3F 3C 00 0F                move.w     #$f, -(a7)
00009524  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000952A  48 6D E7 2A                pea.l      -$18d6(a5)
0000952E  4E B9 00 00 00 F8          jsr        $f8.l
00009534  3F 3C 00 0F                move.w     #$f, -(a7)
00009538  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
0000953E  48 6D E7 4A                pea.l      -$18b6(a5)
00009542  4E B9 00 00 00 F8          jsr        $f8.l
00009548  4F EF 00 3C                lea.l      $3c(a7), a7
0000954C  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009554  66 5A                      bne.b      $95b0
00009556  4E B9 00 00 A7 24          jsr        $a724.l
0000955C  3F 3C 00 0F                move.w     #$f, -(a7)
00009560  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009566  48 6D E7 5A                pea.l      -$18a6(a5)
0000956A  4E B9 00 00 00 F8          jsr        $f8.l
00009570  3F 3C 00 0F                move.w     #$f, -(a7)
00009574  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000957A  48 6D E7 81                pea.l      -$187f(a5)
0000957E  4E B9 00 00 00 F8          jsr        $f8.l
00009584  3F 3C 00 0F                move.w     #$f, -(a7)
00009588  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000958E  48 6D E7 A4                pea.l      -$185c(a5)
00009592  4E B9 00 00 00 F8          jsr        $f8.l
00009598  3F 3C 00 0F                move.w     #$f, -(a7)
0000959C  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
000095A2  48 6D E7 C9                pea.l      -$1837(a5)
000095A6  4E B9 00 00 00 F8          jsr        $f8.l
000095AC  4F EF 00 28                lea.l      $28(a7), a7
000095B0  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
000095B8  66 6E                      bne.b      $9628
000095BA  4E B9 00 00 A7 24          jsr        $a724.l
000095C0  3F 3C 00 0F                move.w     #$f, -(a7)
000095C4  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
000095CA  48 6D E7 DA                pea.l      -$1826(a5)
000095CE  4E B9 00 00 00 F8          jsr        $f8.l
000095D4  3F 3C 00 0F                move.w     #$f, -(a7)
000095D8  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
000095DE  48 6D E7 FC                pea.l      -$1804(a5)
000095E2  4E B9 00 00 00 F8          jsr        $f8.l
000095E8  3F 3C 00 0F                move.w     #$f, -(a7)
000095EC  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
000095F2  48 6D E8 1D                pea.l      -$17e3(a5)
000095F6  4E B9 00 00 00 F8          jsr        $f8.l
000095FC  3F 3C 00 0F                move.w     #$f, -(a7)
00009600  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009606  48 6D E8 40                pea.l      -$17c0(a5)
0000960A  4E B9 00 00 00 F8          jsr        $f8.l
00009610  3F 3C 00 0F                move.w     #$f, -(a7)
00009614  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000961A  48 6D E8 63                pea.l      -$179d(a5)
0000961E  4E B9 00 00 00 F8          jsr        $f8.l
00009624  4F EF 00 32                lea.l      $32(a7), a7
00009628  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
00009630  66 06                      bne.b      $9638
00009632  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
00009638  4E 5E                      unlk       a6
0000963A  4E 75                      rts

; MacsBug symbol trailer for LiuEnding: 89 4C 69 75 45 6E 64 69 6E 67

SubEnding: ; 00009648..000097EA
00009648  4E 56 00 00                link.w     a6, #$0
0000964C  4A AD CF 08                tst.l      -$30f8(a5)
00009650  66 68                      bne.b      $96ba
00009652  3F 3C 00 0F                move.w     #$f, -(a7)
00009656  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000965C  48 6D E8 78                pea.l      -$1788(a5)
00009660  4E B9 00 00 00 F8          jsr        $f8.l
00009666  3F 3C 00 0F                move.w     #$f, -(a7)
0000966A  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009670  48 6D E8 9A                pea.l      -$1766(a5)
00009674  4E B9 00 00 00 F8          jsr        $f8.l
0000967A  3F 3C 00 0F                move.w     #$f, -(a7)
0000967E  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009684  48 6D E8 B3                pea.l      -$174d(a5)
00009688  4E B9 00 00 00 F8          jsr        $f8.l
0000968E  3F 3C 00 0F                move.w     #$f, -(a7)
00009692  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009698  48 6D E8 DA                pea.l      -$1726(a5)
0000969C  4E B9 00 00 00 F8          jsr        $f8.l
000096A2  3F 3C 00 0F                move.w     #$f, -(a7)
000096A6  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
000096AC  48 6D E8 FB                pea.l      -$1705(a5)
000096B0  4E B9 00 00 00 F8          jsr        $f8.l
000096B6  4F EF 00 32                lea.l      $32(a7), a7
000096BA  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
000096C2  66 00 00 84                bne.w      $9748
000096C6  4E B9 00 00 A7 24          jsr        $a724.l
000096CC  3F 3C 00 0F                move.w     #$f, -(a7)
000096D0  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
000096D6  48 6D E9 06                pea.l      -$16fa(a5)
000096DA  4E B9 00 00 00 F8          jsr        $f8.l
000096E0  3F 3C 00 0F                move.w     #$f, -(a7)
000096E4  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
000096EA  48 6D E9 2C                pea.l      -$16d4(a5)
000096EE  4E B9 00 00 00 F8          jsr        $f8.l
000096F4  3F 3C 00 0F                move.w     #$f, -(a7)
000096F8  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
000096FE  48 6D E9 54                pea.l      -$16ac(a5)
00009702  4E B9 00 00 00 F8          jsr        $f8.l
00009708  3F 3C 00 0F                move.w     #$f, -(a7)
0000970C  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009712  48 6D E9 73                pea.l      -$168d(a5)
00009716  4E B9 00 00 00 F8          jsr        $f8.l
0000971C  3F 3C 00 0F                move.w     #$f, -(a7)
00009720  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009726  48 6D E9 98                pea.l      -$1668(a5)
0000972A  4E B9 00 00 00 F8          jsr        $f8.l
00009730  3F 3C 00 0F                move.w     #$f, -(a7)
00009734  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
0000973A  48 6D E9 BD                pea.l      -$1643(a5)
0000973E  4E B9 00 00 00 F8          jsr        $f8.l
00009744  4F EF 00 3C                lea.l      $3c(a7), a7
00009748  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009750  66 00 00 84                bne.w      $97d6
00009754  4E B9 00 00 A7 24          jsr        $a724.l
0000975A  3F 3C 00 0F                move.w     #$f, -(a7)
0000975E  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009764  48 6D E9 D4                pea.l      -$162c(a5)
00009768  4E B9 00 00 00 F8          jsr        $f8.l
0000976E  3F 3C 00 0F                move.w     #$f, -(a7)
00009772  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009778  48 6D E9 F7                pea.l      -$1609(a5)
0000977C  4E B9 00 00 00 F8          jsr        $f8.l
00009782  3F 3C 00 0F                move.w     #$f, -(a7)
00009786  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
0000978C  48 6D EA 06                pea.l      -$15fa(a5)
00009790  4E B9 00 00 00 F8          jsr        $f8.l
00009796  3F 3C 00 0F                move.w     #$f, -(a7)
0000979A  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
000097A0  48 6D EA 2E                pea.l      -$15d2(a5)
000097A4  4E B9 00 00 00 F8          jsr        $f8.l
000097AA  3F 3C 00 0F                move.w     #$f, -(a7)
000097AE  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
000097B4  48 6D EA 54                pea.l      -$15ac(a5)
000097B8  4E B9 00 00 00 F8          jsr        $f8.l
000097BE  3F 3C 00 0F                move.w     #$f, -(a7)
000097C2  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
000097C8  48 6D EA 78                pea.l      -$1588(a5)
000097CC  4E B9 00 00 00 F8          jsr        $f8.l
000097D2  4F EF 00 3C                lea.l      $3c(a7), a7
000097D6  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
000097DE  66 06                      bne.b      $97e6
000097E0  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
000097E6  4E 5E                      unlk       a6
000097E8  4E 75                      rts

; MacsBug symbol trailer for SubEnding: 89 53 75 62 45 6E 64 69 6E 67

OmohEnding: ; 000097F6..000099C0
000097F6  4E 56 00 00                link.w     a6, #$0
000097FA  4A AD CF 08                tst.l      -$30f8(a5)
000097FE  66 68                      bne.b      $9868
00009800  3F 3C 00 0F                move.w     #$f, -(a7)
00009804  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000980A  48 6D EA 82                pea.l      -$157e(a5)
0000980E  4E B9 00 00 00 F8          jsr        $f8.l
00009814  3F 3C 00 0F                move.w     #$f, -(a7)
00009818  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
0000981E  48 6D EA A9                pea.l      -$1557(a5)
00009822  4E B9 00 00 00 F8          jsr        $f8.l
00009828  3F 3C 00 0F                move.w     #$f, -(a7)
0000982C  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009832  48 6D EA D0                pea.l      -$1530(a5)
00009836  4E B9 00 00 00 F8          jsr        $f8.l
0000983C  3F 3C 00 0F                move.w     #$f, -(a7)
00009840  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009846  48 6D EA DD                pea.l      -$1523(a5)
0000984A  4E B9 00 00 00 F8          jsr        $f8.l
00009850  3F 3C 00 0F                move.w     #$f, -(a7)
00009854  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000985A  48 6D EA FE                pea.l      -$1502(a5)
0000985E  4E B9 00 00 00 F8          jsr        $f8.l
00009864  4F EF 00 32                lea.l      $32(a7), a7
00009868  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009870  66 00 00 84                bne.w      $98f6
00009874  4E B9 00 00 A7 24          jsr        $a724.l
0000987A  3F 3C 00 0F                move.w     #$f, -(a7)
0000987E  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009884  48 6D EB 1C                pea.l      -$14e4(a5)
00009888  4E B9 00 00 00 F8          jsr        $f8.l
0000988E  3F 3C 00 0F                move.w     #$f, -(a7)
00009892  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009898  48 6D EB 41                pea.l      -$14bf(a5)
0000989C  4E B9 00 00 00 F8          jsr        $f8.l
000098A2  3F 3C 00 0F                move.w     #$f, -(a7)
000098A6  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
000098AC  48 6D EB 66                pea.l      -$149a(a5)
000098B0  4E B9 00 00 00 F8          jsr        $f8.l
000098B6  3F 3C 00 0F                move.w     #$f, -(a7)
000098BA  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
000098C0  48 6D EB 79                pea.l      -$1487(a5)
000098C4  4E B9 00 00 00 F8          jsr        $f8.l
000098CA  3F 3C 00 0F                move.w     #$f, -(a7)
000098CE  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
000098D4  48 6D EB 8E                pea.l      -$1472(a5)
000098D8  4E B9 00 00 00 F8          jsr        $f8.l
000098DE  3F 3C 00 0F                move.w     #$f, -(a7)
000098E2  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
000098E8  48 6D EB 9F                pea.l      -$1461(a5)
000098EC  4E B9 00 00 00 F8          jsr        $f8.l
000098F2  4F EF 00 3C                lea.l      $3c(a7), a7
000098F6  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
000098FE  66 00 00 AC                bne.w      $99ac
00009902  4E B9 00 00 A7 24          jsr        $a724.l
00009908  3F 3C 00 0F                move.w     #$f, -(a7)
0000990C  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009912  48 6D EB B8                pea.l      -$1448(a5)
00009916  4E B9 00 00 00 F8          jsr        $f8.l
0000991C  3F 3C 00 0F                move.w     #$f, -(a7)
00009920  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009926  48 6D EB D1                pea.l      -$142f(a5)
0000992A  4E B9 00 00 00 F8          jsr        $f8.l
00009930  3F 3C 00 0F                move.w     #$f, -(a7)
00009934  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000993A  48 6D EB F8                pea.l      -$1408(a5)
0000993E  4E B9 00 00 00 F8          jsr        $f8.l
00009944  3F 3C 00 0F                move.w     #$f, -(a7)
00009948  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000994E  48 6D EB FF                pea.l      -$1401(a5)
00009952  4E B9 00 00 00 F8          jsr        $f8.l
00009958  3F 3C 00 0F                move.w     #$f, -(a7)
0000995C  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009962  48 6D EC 26                pea.l      -$13da(a5)
00009966  4E B9 00 00 00 F8          jsr        $f8.l
0000996C  3F 3C 00 0F                move.w     #$f, -(a7)
00009970  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
00009976  48 6D EC 4D                pea.l      -$13b3(a5)
0000997A  4E B9 00 00 00 F8          jsr        $f8.l
00009980  3F 3C 00 0F                move.w     #$f, -(a7)
00009984  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
0000998A  48 6D EC 72                pea.l      -$138e(a5)
0000998E  4E B9 00 00 00 F8          jsr        $f8.l
00009994  3F 3C 00 0F                move.w     #$f, -(a7)
00009998  2F 3C 00 32 01 04          move.l     #$320104, -(a7)
0000999E  48 6D EC 90                pea.l      -$1370(a5)
000099A2  4E B9 00 00 00 F8          jsr        $f8.l
000099A8  4F EF 00 50                lea.l      $50(a7), a7
000099AC  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
000099B4  66 06                      bne.b      $99bc
000099B6  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
000099BC  4E 5E                      unlk       a6
000099BE  4E 75                      rts

; MacsBug symbol trailer for OmohEnding: 8A 4F 6D 6F 68 45 6E 64 69 6E 67

CyraxEnding: ; 000099CE..00009B5C
000099CE  4E 56 00 00                link.w     a6, #$0
000099D2  4A AD CF 08                tst.l      -$30f8(a5)
000099D6  66 54                      bne.b      $9a2c
000099D8  3F 3C 00 0F                move.w     #$f, -(a7)
000099DC  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
000099E2  48 6D EC 98                pea.l      -$1368(a5)
000099E6  4E B9 00 00 00 F8          jsr        $f8.l
000099EC  3F 3C 00 0F                move.w     #$f, -(a7)
000099F0  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
000099F6  48 6D EC BC                pea.l      -$1344(a5)
000099FA  4E B9 00 00 00 F8          jsr        $f8.l
00009A00  3F 3C 00 0F                move.w     #$f, -(a7)
00009A04  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
00009A0A  48 6D EC E1                pea.l      -$131f(a5)
00009A0E  4E B9 00 00 00 F8          jsr        $f8.l
00009A14  3F 3C 00 0F                move.w     #$f, -(a7)
00009A18  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
00009A1E  48 6D ED 04                pea.l      -$12fc(a5)
00009A22  4E B9 00 00 00 F8          jsr        $f8.l
00009A28  4F EF 00 28                lea.l      $28(a7), a7
00009A2C  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009A34  66 00 00 84                bne.w      $9aba
00009A38  4E B9 00 00 A7 24          jsr        $a724.l
00009A3E  3F 3C 00 0F                move.w     #$f, -(a7)
00009A42  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009A48  48 6D ED 29                pea.l      -$12d7(a5)
00009A4C  4E B9 00 00 00 F8          jsr        $f8.l
00009A52  3F 3C 00 0F                move.w     #$f, -(a7)
00009A56  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009A5C  48 6D ED 4A                pea.l      -$12b6(a5)
00009A60  4E B9 00 00 00 F8          jsr        $f8.l
00009A66  3F 3C 00 0F                move.w     #$f, -(a7)
00009A6A  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
00009A70  48 6D ED 6C                pea.l      -$1294(a5)
00009A74  4E B9 00 00 00 F8          jsr        $f8.l
00009A7A  3F 3C 00 0F                move.w     #$f, -(a7)
00009A7E  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009A84  48 6D ED 72                pea.l      -$128e(a5)
00009A88  4E B9 00 00 00 F8          jsr        $f8.l
00009A8E  3F 3C 00 0F                move.w     #$f, -(a7)
00009A92  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009A98  48 6D ED 98                pea.l      -$1268(a5)
00009A9C  4E B9 00 00 00 F8          jsr        $f8.l
00009AA2  3F 3C 00 0F                move.w     #$f, -(a7)
00009AA6  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
00009AAC  48 6D ED BB                pea.l      -$1245(a5)
00009AB0  4E B9 00 00 00 F8          jsr        $f8.l
00009AB6  4F EF 00 3C                lea.l      $3c(a7), a7
00009ABA  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009AC2  66 00 00 84                bne.w      $9b48
00009AC6  4E B9 00 00 A7 24          jsr        $a724.l
00009ACC  3F 3C 00 0F                move.w     #$f, -(a7)
00009AD0  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009AD6  48 6D ED DA                pea.l      -$1226(a5)
00009ADA  4E B9 00 00 00 F8          jsr        $f8.l
00009AE0  3F 3C 00 0F                move.w     #$f, -(a7)
00009AE4  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009AEA  48 6D ED FF                pea.l      -$1201(a5)
00009AEE  4E B9 00 00 00 F8          jsr        $f8.l
00009AF4  3F 3C 00 0F                move.w     #$f, -(a7)
00009AF8  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
00009AFE  48 6D EE 1E                pea.l      -$11e2(a5)
00009B02  4E B9 00 00 00 F8          jsr        $f8.l
00009B08  3F 3C 00 0F                move.w     #$f, -(a7)
00009B0C  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
00009B12  48 6D EE 42                pea.l      -$11be(a5)
00009B16  4E B9 00 00 00 F8          jsr        $f8.l
00009B1C  3F 3C 00 0F                move.w     #$f, -(a7)
00009B20  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
00009B26  48 6D EE 63                pea.l      -$119d(a5)
00009B2A  4E B9 00 00 00 F8          jsr        $f8.l
00009B30  3F 3C 00 0F                move.w     #$f, -(a7)
00009B34  2F 3C 00 32 00 C8          move.l     #$3200c8, -(a7)
00009B3A  48 6D EE 7E                pea.l      -$1182(a5)
00009B3E  4E B9 00 00 00 F8          jsr        $f8.l
00009B44  4F EF 00 3C                lea.l      $3c(a7), a7
00009B48  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
00009B50  66 06                      bne.b      $9b58
00009B52  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
00009B58  4E 5E                      unlk       a6
00009B5A  4E 75                      rts

; MacsBug symbol trailer for CyraxEnding: 8B 43 79 72 61 78 45 6E 64 69 6E 67

SektorEnding: ; 00009B6A..00009D0A
00009B6A  4E 56 00 00                link.w     a6, #$0
00009B6E  4A AD CF 08                tst.l      -$30f8(a5)
00009B72  66 68                      bne.b      $9bdc
00009B74  3F 3C 00 0F                move.w     #$f, -(a7)
00009B78  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009B7E  48 6D EE 8C                pea.l      -$1174(a5)
00009B82  4E B9 00 00 00 F8          jsr        $f8.l
00009B88  3F 3C 00 0F                move.w     #$f, -(a7)
00009B8C  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009B92  48 6D EE B4                pea.l      -$114c(a5)
00009B96  4E B9 00 00 00 F8          jsr        $f8.l
00009B9C  3F 3C 00 0F                move.w     #$f, -(a7)
00009BA0  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009BA6  48 6D EE C8                pea.l      -$1138(a5)
00009BAA  4E B9 00 00 00 F8          jsr        $f8.l
00009BB0  3F 3C 00 0F                move.w     #$f, -(a7)
00009BB4  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009BBA  48 6D EE F0                pea.l      -$1110(a5)
00009BBE  4E B9 00 00 00 F8          jsr        $f8.l
00009BC4  3F 3C 00 0F                move.w     #$f, -(a7)
00009BC8  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009BCE  48 6D EF 16                pea.l      -$10ea(a5)
00009BD2  4E B9 00 00 00 F8          jsr        $f8.l
00009BD8  4F EF 00 32                lea.l      $32(a7), a7
00009BDC  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009BE4  66 6E                      bne.b      $9c54
00009BE6  4E B9 00 00 A7 24          jsr        $a724.l
00009BEC  3F 3C 00 0F                move.w     #$f, -(a7)
00009BF0  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009BF6  48 6D EF 31                pea.l      -$10cf(a5)
00009BFA  4E B9 00 00 00 F8          jsr        $f8.l
00009C00  3F 3C 00 0F                move.w     #$f, -(a7)
00009C04  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009C0A  48 6D EF 5A                pea.l      -$10a6(a5)
00009C0E  4E B9 00 00 00 F8          jsr        $f8.l
00009C14  3F 3C 00 0F                move.w     #$f, -(a7)
00009C18  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009C1E  48 6D EF 70                pea.l      -$1090(a5)
00009C22  4E B9 00 00 00 F8          jsr        $f8.l
00009C28  3F 3C 00 0F                move.w     #$f, -(a7)
00009C2C  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009C32  48 6D EF 9B                pea.l      -$1065(a5)
00009C36  4E B9 00 00 00 F8          jsr        $f8.l
00009C3C  3F 3C 00 0F                move.w     #$f, -(a7)
00009C40  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009C46  48 6D EF BE                pea.l      -$1042(a5)
00009C4A  4E B9 00 00 00 F8          jsr        $f8.l
00009C50  4F EF 00 32                lea.l      $32(a7), a7
00009C54  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009C5C  66 00 00 98                bne.w      $9cf6
00009C60  4E B9 00 00 A7 24          jsr        $a724.l
00009C66  3F 3C 00 0F                move.w     #$f, -(a7)
00009C6A  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009C70  48 6D EF C9                pea.l      -$1037(a5)
00009C74  4E B9 00 00 00 F8          jsr        $f8.l
00009C7A  3F 3C 00 0F                move.w     #$f, -(a7)
00009C7E  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
00009C84  48 6D EF E2                pea.l      -$101e(a5)
00009C88  4E B9 00 00 00 F8          jsr        $f8.l
00009C8E  3F 3C 00 0F                move.w     #$f, -(a7)
00009C92  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009C98  48 6D F0 05                pea.l      -$ffb(a5)
00009C9C  4E B9 00 00 00 F8          jsr        $f8.l
00009CA2  3F 3C 00 0F                move.w     #$f, -(a7)
00009CA6  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009CAC  48 6D F0 2A                pea.l      -$fd6(a5)
00009CB0  4E B9 00 00 00 F8          jsr        $f8.l
00009CB6  3F 3C 00 0F                move.w     #$f, -(a7)
00009CBA  2F 3C 00 32 00 C8          move.l     #$3200c8, -(a7)
00009CC0  48 6D F0 3A                pea.l      -$fc6(a5)
00009CC4  4E B9 00 00 00 F8          jsr        $f8.l
00009CCA  3F 3C 00 0F                move.w     #$f, -(a7)
00009CCE  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
00009CD4  48 6D F0 5C                pea.l      -$fa4(a5)
00009CD8  4E B9 00 00 00 F8          jsr        $f8.l
00009CDE  3F 3C 00 0F                move.w     #$f, -(a7)
00009CE2  2F 3C 00 32 00 FA          move.l     #$3200fa, -(a7)
00009CE8  48 6D F0 7D                pea.l      -$f83(a5)
00009CEC  4E B9 00 00 00 F8          jsr        $f8.l
00009CF2  4F EF 00 46                lea.l      $46(a7), a7
00009CF6  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
00009CFE  66 06                      bne.b      $9d06
00009D00  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
00009D06  4E 5E                      unlk       a6
00009D08  4E 75                      rts

; MacsBug symbol trailer for SektorEnding: 8C 53 65 6B 74 6F 72 45 6E 64 69 6E 67

KungEnding: ; 00009D1A..00009ED0
00009D1A  4E 56 00 00                link.w     a6, #$0
00009D1E  4A AD CF 08                tst.l      -$30f8(a5)
00009D22  66 68                      bne.b      $9d8c
00009D24  3F 3C 00 0F                move.w     #$f, -(a7)
00009D28  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009D2E  48 6D F0 92                pea.l      -$f6e(a5)
00009D32  4E B9 00 00 00 F8          jsr        $f8.l
00009D38  3F 3C 00 0F                move.w     #$f, -(a7)
00009D3C  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009D42  48 6D F0 B8                pea.l      -$f48(a5)
00009D46  4E B9 00 00 00 F8          jsr        $f8.l
00009D4C  3F 3C 00 0F                move.w     #$f, -(a7)
00009D50  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009D56  48 6D F0 CE                pea.l      -$f32(a5)
00009D5A  4E B9 00 00 00 F8          jsr        $f8.l
00009D60  3F 3C 00 0F                move.w     #$f, -(a7)
00009D64  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009D6A  48 6D F0 F6                pea.l      -$f0a(a5)
00009D6E  4E B9 00 00 00 F8          jsr        $f8.l
00009D74  3F 3C 00 0F                move.w     #$f, -(a7)
00009D78  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
00009D7E  48 6D F1 18                pea.l      -$ee8(a5)
00009D82  4E B9 00 00 00 F8          jsr        $f8.l
00009D88  4F EF 00 32                lea.l      $32(a7), a7
00009D8C  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009D94  66 00 00 84                bne.w      $9e1a
00009D98  4E B9 00 00 A7 24          jsr        $a724.l
00009D9E  3F 3C 00 0F                move.w     #$f, -(a7)
00009DA2  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009DA8  48 6D F1 21                pea.l      -$edf(a5)
00009DAC  4E B9 00 00 00 F8          jsr        $f8.l
00009DB2  3F 3C 00 0F                move.w     #$f, -(a7)
00009DB6  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
00009DBC  48 6D F1 46                pea.l      -$eba(a5)
00009DC0  4E B9 00 00 00 F8          jsr        $f8.l
00009DC6  3F 3C 00 0F                move.w     #$f, -(a7)
00009DCA  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009DD0  48 6D F1 68                pea.l      -$e98(a5)
00009DD4  4E B9 00 00 00 F8          jsr        $f8.l
00009DDA  3F 3C 00 0F                move.w     #$f, -(a7)
00009DDE  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
00009DE4  48 6D F1 8F                pea.l      -$e71(a5)
00009DE8  4E B9 00 00 00 F8          jsr        $f8.l
00009DEE  3F 3C 00 0F                move.w     #$f, -(a7)
00009DF2  2F 3C 00 32 00 C8          move.l     #$3200c8, -(a7)
00009DF8  48 6D F1 B2                pea.l      -$e4e(a5)
00009DFC  4E B9 00 00 00 F8          jsr        $f8.l
00009E02  3F 3C 00 0F                move.w     #$f, -(a7)
00009E06  2F 3C 00 32 00 DC          move.l     #$3200dc, -(a7)
00009E0C  48 6D F1 D7                pea.l      -$e29(a5)
00009E10  4E B9 00 00 00 F8          jsr        $f8.l
00009E16  4F EF 00 3C                lea.l      $3c(a7), a7
00009E1A  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
00009E22  66 00 00 98                bne.w      $9ebc
00009E26  4E B9 00 00 A7 24          jsr        $a724.l
00009E2C  3F 3C 00 0F                move.w     #$f, -(a7)
00009E30  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009E36  48 6D F1 E2                pea.l      -$e1e(a5)
00009E3A  4E B9 00 00 00 F8          jsr        $f8.l
00009E40  3F 3C 00 0F                move.w     #$f, -(a7)
00009E44  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
00009E4A  48 6D F2 01                pea.l      -$dff(a5)
00009E4E  4E B9 00 00 00 F8          jsr        $f8.l
00009E54  3F 3C 00 0F                move.w     #$f, -(a7)
00009E58  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009E5E  48 6D F2 1A                pea.l      -$de6(a5)
00009E62  4E B9 00 00 00 F8          jsr        $f8.l
00009E68  3F 3C 00 0F                move.w     #$f, -(a7)
00009E6C  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
00009E72  48 6D F2 3C                pea.l      -$dc4(a5)
00009E76  4E B9 00 00 00 F8          jsr        $f8.l
00009E7C  3F 3C 00 0F                move.w     #$f, -(a7)
00009E80  2F 3C 00 32 00 C8          move.l     #$3200c8, -(a7)
00009E86  48 6D F2 49                pea.l      -$db7(a5)
00009E8A  4E B9 00 00 00 F8          jsr        $f8.l
00009E90  3F 3C 00 0F                move.w     #$f, -(a7)
00009E94  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
00009E9A  48 6D F2 62                pea.l      -$d9e(a5)
00009E9E  4E B9 00 00 00 F8          jsr        $f8.l
00009EA4  3F 3C 00 0F                move.w     #$f, -(a7)
00009EA8  2F 3C 00 32 00 FA          move.l     #$3200fa, -(a7)
00009EAE  48 6D F2 82                pea.l      -$d7e(a5)
00009EB2  4E B9 00 00 00 F8          jsr        $f8.l
00009EB8  4F EF 00 46                lea.l      $46(a7), a7
00009EBC  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
00009EC4  66 06                      bne.b      $9ecc
00009EC6  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
00009ECC  4E 5E                      unlk       a6
00009ECE  4E 75                      rts

; MacsBug symbol trailer for KungEnding: 8A 4B 75 6E 67 45 6E 64 69 6E 67

KabalEnding: ; 00009EDE..0000A0E4
00009EDE  4E 56 00 00                link.w     a6, #$0
00009EE2  4A AD CF 08                tst.l      -$30f8(a5)
00009EE6  66 00 00 A6                bne.w      $9f8e
00009EEA  3F 3C 00 0F                move.w     #$f, -(a7)
00009EEE  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009EF4  48 6D F2 A8                pea.l      -$d58(a5)
00009EF8  4E B9 00 00 00 F8          jsr        $f8.l
00009EFE  3F 3C 00 0F                move.w     #$f, -(a7)
00009F02  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
00009F08  48 6D F2 C2                pea.l      -$d3e(a5)
00009F0C  4E B9 00 00 00 F8          jsr        $f8.l
00009F12  3F 3C 00 0F                move.w     #$f, -(a7)
00009F16  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009F1C  48 6D F2 E5                pea.l      -$d1b(a5)
00009F20  4E B9 00 00 00 F8          jsr        $f8.l
00009F26  3F 3C 00 0F                move.w     #$f, -(a7)
00009F2A  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
00009F30  48 6D F2 F6                pea.l      -$d0a(a5)
00009F34  4E B9 00 00 00 F8          jsr        $f8.l
00009F3A  3F 3C 00 0F                move.w     #$f, -(a7)
00009F3E  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
00009F44  48 6D F3 11                pea.l      -$cef(a5)
00009F48  4E B9 00 00 00 F8          jsr        $f8.l
00009F4E  3F 3C 00 0F                move.w     #$f, -(a7)
00009F52  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
00009F58  48 6D F3 32                pea.l      -$cce(a5)
00009F5C  4E B9 00 00 00 F8          jsr        $f8.l
00009F62  3F 3C 00 0F                move.w     #$f, -(a7)
00009F66  2F 3C 00 32 00 FA          move.l     #$3200fa, -(a7)
00009F6C  48 6D F3 57                pea.l      -$ca9(a5)
00009F70  4E B9 00 00 00 F8          jsr        $f8.l
00009F76  3F 3C 00 0F                move.w     #$f, -(a7)
00009F7A  2F 3C 00 32 01 0E          move.l     #$32010e, -(a7)
00009F80  48 6D F3 7A                pea.l      -$c86(a5)
00009F84  4E B9 00 00 00 F8          jsr        $f8.l
00009F8A  4F EF 00 50                lea.l      $50(a7), a7
00009F8E  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
00009F96  66 6E                      bne.b      $a006
00009F98  4E B9 00 00 A7 24          jsr        $a724.l
00009F9E  3F 3C 00 0F                move.w     #$f, -(a7)
00009FA2  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
00009FA8  48 6D F3 83                pea.l      -$c7d(a5)
00009FAC  4E B9 00 00 00 F8          jsr        $f8.l
00009FB2  3F 3C 00 0F                move.w     #$f, -(a7)
00009FB6  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
00009FBC  48 6D F3 A4                pea.l      -$c5c(a5)
00009FC0  4E B9 00 00 00 F8          jsr        $f8.l
00009FC6  3F 3C 00 0F                move.w     #$f, -(a7)
00009FCA  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
00009FD0  48 6D F3 C5                pea.l      -$c3b(a5)
00009FD4  4E B9 00 00 00 F8          jsr        $f8.l
00009FDA  3F 3C 00 0F                move.w     #$f, -(a7)
00009FDE  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
00009FE4  48 6D F3 EA                pea.l      -$c16(a5)
00009FE8  4E B9 00 00 00 F8          jsr        $f8.l
00009FEE  3F 3C 00 0F                move.w     #$f, -(a7)
00009FF2  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
00009FF8  48 6D F4 10                pea.l      -$bf0(a5)
00009FFC  4E B9 00 00 00 F8          jsr        $f8.l
0000A002  4F EF 00 32                lea.l      $32(a7), a7
0000A006  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
0000A00E  66 00 00 C0                bne.w      $a0d0
0000A012  4E B9 00 00 A7 24          jsr        $a724.l
0000A018  3F 3C 00 0F                move.w     #$f, -(a7)
0000A01C  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A022  48 6D F4 2C                pea.l      -$bd4(a5)
0000A026  4E B9 00 00 00 F8          jsr        $f8.l
0000A02C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A030  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A036  48 6D F4 4E                pea.l      -$bb2(a5)
0000A03A  4E B9 00 00 00 F8          jsr        $f8.l
0000A040  3F 3C 00 0F                move.w     #$f, -(a7)
0000A044  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
0000A04A  48 6D F4 73                pea.l      -$b8d(a5)
0000A04E  4E B9 00 00 00 F8          jsr        $f8.l
0000A054  3F 3C 00 0F                move.w     #$f, -(a7)
0000A058  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000A05E  48 6D F4 98                pea.l      -$b68(a5)
0000A062  4E B9 00 00 00 F8          jsr        $f8.l
0000A068  3F 3C 00 0F                move.w     #$f, -(a7)
0000A06C  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A072  48 6D F4 BF                pea.l      -$b41(a5)
0000A076  4E B9 00 00 00 F8          jsr        $f8.l
0000A07C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A080  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
0000A086  48 6D F4 E6                pea.l      -$b1a(a5)
0000A08A  4E B9 00 00 00 F8          jsr        $f8.l
0000A090  3F 3C 00 0F                move.w     #$f, -(a7)
0000A094  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
0000A09A  48 6D F5 0B                pea.l      -$af5(a5)
0000A09E  4E B9 00 00 00 F8          jsr        $f8.l
0000A0A4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A0A8  2F 3C 00 32 01 04          move.l     #$320104, -(a7)
0000A0AE  48 6D F5 12                pea.l      -$aee(a5)
0000A0B2  4E B9 00 00 00 F8          jsr        $f8.l
0000A0B8  3F 3C 00 0F                move.w     #$f, -(a7)
0000A0BC  2F 3C 00 32 01 18          move.l     #$320118, -(a7)
0000A0C2  48 6D F5 32                pea.l      -$ace(a5)
0000A0C6  4E B9 00 00 00 F8          jsr        $f8.l
0000A0CC  4F EF 00 5A                lea.l      $5a(a7), a7
0000A0D0  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
0000A0D8  66 06                      bne.b      $a0e0
0000A0DA  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
0000A0E0  4E 5E                      unlk       a6
0000A0E2  4E 75                      rts

; MacsBug symbol trailer for KabalEnding: 8B 4B 61 62 61 6C 45 6E 64 69 6E 67

ShaoEnding: ; 0000A0F2..0000A204
0000A0F2  4E 56 00 00                link.w     a6, #$0
0000A0F6  4A AD CF 08                tst.l      -$30f8(a5)
0000A0FA  66 7C                      bne.b      $a178
0000A0FC  3F 3C 00 0F                move.w     #$f, -(a7)
0000A100  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A106  48 6D F5 43                pea.l      -$abd(a5)
0000A10A  4E B9 00 00 00 F8          jsr        $f8.l
0000A110  3F 3C 00 0F                move.w     #$f, -(a7)
0000A114  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A11A  48 6D F5 66                pea.l      -$a9a(a5)
0000A11E  4E B9 00 00 00 F8          jsr        $f8.l
0000A124  3F 3C 00 0F                move.w     #$f, -(a7)
0000A128  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A12E  48 6D F5 8A                pea.l      -$a76(a5)
0000A132  4E B9 00 00 00 F8          jsr        $f8.l
0000A138  3F 3C 00 0F                move.w     #$f, -(a7)
0000A13C  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000A142  48 6D F5 90                pea.l      -$a70(a5)
0000A146  4E B9 00 00 00 F8          jsr        $f8.l
0000A14C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A150  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A156  48 6D F5 B3                pea.l      -$a4d(a5)
0000A15A  4E B9 00 00 00 F8          jsr        $f8.l
0000A160  3F 3C 00 0F                move.w     #$f, -(a7)
0000A164  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
0000A16A  48 6D F5 D6                pea.l      -$a2a(a5)
0000A16E  4E B9 00 00 00 F8          jsr        $f8.l
0000A174  4F EF 00 3C                lea.l      $3c(a7), a7
0000A178  0C AD 00 00 00 FA CF 08    cmpi.l     #$fa, -$30f8(a5)
0000A180  66 32                      bne.b      $a1b4
0000A182  4E B9 00 00 A7 24          jsr        $a724.l
0000A188  3F 3C 00 0F                move.w     #$f, -(a7)
0000A18C  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A192  48 6D F5 DA                pea.l      -$a26(a5)
0000A196  4E B9 00 00 00 F8          jsr        $f8.l
0000A19C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A1A0  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A1A6  48 6D F5 FA                pea.l      -$a06(a5)
0000A1AA  4E B9 00 00 00 F8          jsr        $f8.l
0000A1B0  4F EF 00 14                lea.l      $14(a7), a7
0000A1B4  0C AD 00 00 01 90 CF 08    cmpi.l     #$190, -$30f8(a5)
0000A1BC  66 32                      bne.b      $a1f0
0000A1BE  4E B9 00 00 A7 24          jsr        $a724.l
0000A1C4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A1C8  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A1CE  48 6D F6 13                pea.l      -$9ed(a5)
0000A1D2  4E B9 00 00 00 F8          jsr        $f8.l
0000A1D8  3F 3C 00 0F                move.w     #$f, -(a7)
0000A1DC  2F 3C 00 32 00 82          move.l     #$320082, -(a7)
0000A1E2  48 6D F6 36                pea.l      -$9ca(a5)
0000A1E6  4E B9 00 00 00 F8          jsr        $f8.l
0000A1EC  4F EF 00 14                lea.l      $14(a7), a7
0000A1F0  0C AD 00 00 02 26 CF 08    cmpi.l     #$226, -$30f8(a5)
0000A1F8  66 06                      bne.b      $a200
0000A1FA  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
0000A200  4E 5E                      unlk       a6
0000A202  4E 75                      rts

; MacsBug symbol trailer for ShaoEnding: 8A 53 68 61 6F 45 6E 64 69 6E 67

MotaroEnding: ; 0000A212..0000A338
0000A212  4E 56 00 00                link.w     a6, #$0
0000A216  4A AD CF 08                tst.l      -$30f8(a5)
0000A21A  66 40                      bne.b      $a25c
0000A21C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A220  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A226  48 6D F6 46                pea.l      -$9ba(a5)
0000A22A  4E B9 00 00 00 F8          jsr        $f8.l
0000A230  3F 3C 00 0F                move.w     #$f, -(a7)
0000A234  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A23A  48 6D F6 6D                pea.l      -$993(a5)
0000A23E  4E B9 00 00 00 F8          jsr        $f8.l
0000A244  3F 3C 00 0F                move.w     #$f, -(a7)
0000A248  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A24E  48 6D F6 90                pea.l      -$970(a5)
0000A252  4E B9 00 00 00 F8          jsr        $f8.l
0000A258  4F EF 00 1E                lea.l      $1e(a7), a7
0000A25C  0C AD 00 00 00 FA CF 08    cmpi.l     #$fa, -$30f8(a5)
0000A264  66 46                      bne.b      $a2ac
0000A266  4E B9 00 00 A7 24          jsr        $a724.l
0000A26C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A270  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A276  48 6D F6 9C                pea.l      -$964(a5)
0000A27A  4E B9 00 00 00 F8          jsr        $f8.l
0000A280  3F 3C 00 0F                move.w     #$f, -(a7)
0000A284  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A28A  48 6D F6 C2                pea.l      -$93e(a5)
0000A28E  4E B9 00 00 00 F8          jsr        $f8.l
0000A294  3F 3C 00 0F                move.w     #$f, -(a7)
0000A298  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A29E  48 6D F6 E1                pea.l      -$91f(a5)
0000A2A2  4E B9 00 00 00 F8          jsr        $f8.l
0000A2A8  4F EF 00 1E                lea.l      $1e(a7), a7
0000A2AC  0C AD 00 00 01 F4 CF 08    cmpi.l     #$1f4, -$30f8(a5)
0000A2B4  66 6E                      bne.b      $a324
0000A2B6  4E B9 00 00 A7 24          jsr        $a724.l
0000A2BC  3F 3C 00 0F                move.w     #$f, -(a7)
0000A2C0  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A2C6  48 6D F6 F8                pea.l      -$908(a5)
0000A2CA  4E B9 00 00 00 F8          jsr        $f8.l
0000A2D0  3F 3C 00 0F                move.w     #$f, -(a7)
0000A2D4  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A2DA  48 6D F7 1D                pea.l      -$8e3(a5)
0000A2DE  4E B9 00 00 00 F8          jsr        $f8.l
0000A2E4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A2E8  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
0000A2EE  48 6D F7 34                pea.l      -$8cc(a5)
0000A2F2  4E B9 00 00 00 F8          jsr        $f8.l
0000A2F8  3F 3C 00 0F                move.w     #$f, -(a7)
0000A2FC  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000A302  48 6D F7 5A                pea.l      -$8a6(a5)
0000A306  4E B9 00 00 00 F8          jsr        $f8.l
0000A30C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A310  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A316  48 6D F7 78                pea.l      -$888(a5)
0000A31A  4E B9 00 00 00 F8          jsr        $f8.l
0000A320  4F EF 00 32                lea.l      $32(a7), a7
0000A324  0C AD 00 00 03 20 CF 08    cmpi.l     #$320, -$30f8(a5)
0000A32C  66 06                      bne.b      $a334
0000A32E  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
0000A334  4E 5E                      unlk       a6
0000A336  4E 75                      rts

; MacsBug symbol trailer for MotaroEnding: 8C 4D 6F 74 61 72 6F 45 6E 64 69 6E 67

NodnarbEnding: ; 0000A348..0000A5B4
0000A348  4E 56 00 00                link.w     a6, #$0
0000A34C  4A AD CF 08                tst.l      -$30f8(a5)
0000A350  66 00 00 CE                bne.w      $a420
0000A354  3F 3C 00 0F                move.w     #$f, -(a7)
0000A358  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A35E  48 6D F7 94                pea.l      -$86c(a5)
0000A362  4E B9 00 00 00 F8          jsr        $f8.l
0000A368  3F 3C 00 0F                move.w     #$f, -(a7)
0000A36C  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A372  48 6D F7 A4                pea.l      -$85c(a5)
0000A376  4E B9 00 00 00 F8          jsr        $f8.l
0000A37C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A380  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A386  48 6D F7 CB                pea.l      -$835(a5)
0000A38A  4E B9 00 00 00 F8          jsr        $f8.l
0000A390  3F 3C 00 0F                move.w     #$f, -(a7)
0000A394  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
0000A39A  48 6D F7 F0                pea.l      -$810(a5)
0000A39E  4E B9 00 00 00 F8          jsr        $f8.l
0000A3A4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A3A8  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A3AE  48 6D F8 19                pea.l      -$7e7(a5)
0000A3B2  4E B9 00 00 00 F8          jsr        $f8.l
0000A3B8  3F 3C 00 0F                move.w     #$f, -(a7)
0000A3BC  2F 3C 00 32 00 D2          move.l     #$3200d2, -(a7)
0000A3C2  48 6D F8 3C                pea.l      -$7c4(a5)
0000A3C6  4E B9 00 00 00 F8          jsr        $f8.l
0000A3CC  3F 3C 00 0F                move.w     #$f, -(a7)
0000A3D0  2F 3C 00 32 00 E6          move.l     #$3200e6, -(a7)
0000A3D6  48 6D F8 5C                pea.l      -$7a4(a5)
0000A3DA  4E B9 00 00 00 F8          jsr        $f8.l
0000A3E0  3F 3C 00 0F                move.w     #$f, -(a7)
0000A3E4  2F 3C 00 32 01 04          move.l     #$320104, -(a7)
0000A3EA  48 6D F8 7E                pea.l      -$782(a5)
0000A3EE  4E B9 00 00 00 F8          jsr        $f8.l
0000A3F4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A3F8  2F 3C 00 32 01 18          move.l     #$320118, -(a7)
0000A3FE  48 6D F8 A4                pea.l      -$75c(a5)
0000A402  4E B9 00 00 00 F8          jsr        $f8.l
0000A408  3F 3C 00 0F                move.w     #$f, -(a7)
0000A40C  2F 3C 00 32 01 36          move.l     #$320136, -(a7)
0000A412  48 6D F8 B0                pea.l      -$750(a5)
0000A416  4E B9 00 00 00 F8          jsr        $f8.l
0000A41C  4F EF 00 64                lea.l      $64(a7), a7
0000A420  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
0000A428  66 00 00 98                bne.w      $a4c2
0000A42C  4E B9 00 00 A7 24          jsr        $a724.l
0000A432  3F 3C 00 0F                move.w     #$f, -(a7)
0000A436  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A43C  48 6D F8 C7                pea.l      -$739(a5)
0000A440  4E B9 00 00 00 F8          jsr        $f8.l
0000A446  3F 3C 00 0F                move.w     #$f, -(a7)
0000A44A  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A450  48 6D F8 EC                pea.l      -$714(a5)
0000A454  4E B9 00 00 00 F8          jsr        $f8.l
0000A45A  3F 3C 00 0F                move.w     #$f, -(a7)
0000A45E  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
0000A464  48 6D F9 08                pea.l      -$6f8(a5)
0000A468  4E B9 00 00 00 F8          jsr        $f8.l
0000A46E  3F 3C 00 0F                move.w     #$f, -(a7)
0000A472  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000A478  48 6D F9 2E                pea.l      -$6d2(a5)
0000A47C  4E B9 00 00 00 F8          jsr        $f8.l
0000A482  3F 3C 00 0F                move.w     #$f, -(a7)
0000A486  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A48C  48 6D F9 53                pea.l      -$6ad(a5)
0000A490  4E B9 00 00 00 F8          jsr        $f8.l
0000A496  3F 3C 00 0F                move.w     #$f, -(a7)
0000A49A  2F 3C 00 32 00 DC          move.l     #$3200dc, -(a7)
0000A4A0  48 6D F9 68                pea.l      -$698(a5)
0000A4A4  4E B9 00 00 00 F8          jsr        $f8.l
0000A4AA  3F 3C 00 0F                move.w     #$f, -(a7)
0000A4AE  2F 3C 00 32 00 F0          move.l     #$3200f0, -(a7)
0000A4B4  48 6D F9 8E                pea.l      -$672(a5)
0000A4B8  4E B9 00 00 00 F8          jsr        $f8.l
0000A4BE  4F EF 00 46                lea.l      $46(a7), a7
0000A4C2  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
0000A4CA  66 00 00 D4                bne.w      $a5a0
0000A4CE  4E B9 00 00 A7 24          jsr        $a724.l
0000A4D4  3F 3C 00 0F                move.w     #$f, -(a7)
0000A4D8  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A4DE  48 6D F9 AA                pea.l      -$656(a5)
0000A4E2  4E B9 00 00 00 F8          jsr        $f8.l
0000A4E8  3F 3C 00 0F                move.w     #$f, -(a7)
0000A4EC  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A4F2  48 6D F9 D0                pea.l      -$630(a5)
0000A4F6  4E B9 00 00 00 F8          jsr        $f8.l
0000A4FC  3F 3C 00 0F                move.w     #$f, -(a7)
0000A500  2F 3C 00 32 00 96          move.l     #$320096, -(a7)
0000A506  48 6D F9 F2                pea.l      -$60e(a5)
0000A50A  4E B9 00 00 00 F8          jsr        $f8.l
0000A510  3F 3C 00 0F                move.w     #$f, -(a7)
0000A514  2F 3C 00 32 00 AA          move.l     #$3200aa, -(a7)
0000A51A  48 6D FA 14                pea.l      -$5ec(a5)
0000A51E  4E B9 00 00 00 F8          jsr        $f8.l
0000A524  3F 3C 00 0F                move.w     #$f, -(a7)
0000A528  2F 3C 00 32 00 BE          move.l     #$3200be, -(a7)
0000A52E  48 6D FA 39                pea.l      -$5c7(a5)
0000A532  4E B9 00 00 00 F8          jsr        $f8.l
0000A538  3F 3C 00 0F                move.w     #$f, -(a7)
0000A53C  2F 3C 00 32 00 DC          move.l     #$3200dc, -(a7)
0000A542  48 6D FA 4E                pea.l      -$5b2(a5)
0000A546  4E B9 00 00 00 F8          jsr        $f8.l
0000A54C  3F 3C 00 0F                move.w     #$f, -(a7)
0000A550  2F 3C 00 32 00 F0          move.l     #$3200f0, -(a7)
0000A556  48 6D FA 74                pea.l      -$58c(a5)
0000A55A  4E B9 00 00 00 F8          jsr        $f8.l
0000A560  3F 3C 00 0F                move.w     #$f, -(a7)
0000A564  2F 3C 00 32 01 04          move.l     #$320104, -(a7)
0000A56A  48 6D FA 95                pea.l      -$56b(a5)
0000A56E  4E B9 00 00 00 F8          jsr        $f8.l
0000A574  3F 3C 00 0F                move.w     #$f, -(a7)
0000A578  2F 3C 00 32 01 18          move.l     #$320118, -(a7)
0000A57E  48 6D FA BA                pea.l      -$546(a5)
0000A582  4E B9 00 00 00 F8          jsr        $f8.l
0000A588  3F 3C 00 0F                move.w     #$f, -(a7)
0000A58C  2F 3C 00 32 01 2C          move.l     #$32012c, -(a7)
0000A592  48 6D FA DF                pea.l      -$521(a5)
0000A596  4E B9 00 00 00 F8          jsr        $f8.l
0000A59C  4F EF 00 64                lea.l      $64(a7), a7
0000A5A0  0C AD 00 00 03 B6 CF 08    cmpi.l     #$3b6, -$30f8(a5)
0000A5A8  66 06                      bne.b      $a5b0
0000A5AA  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
0000A5B0  4E 5E                      unlk       a6
0000A5B2  4E 75                      rts

; MacsBug symbol trailer for NodnarbEnding: 8D 4E 6F 64 6E 61 72 62 45 6E 64 69 6E 67

NightwolfEnding: ; 0000A5C4..0000A712
0000A5C4  4E 56 00 00                link.w     a6, #$0
0000A5C8  4A AD CF 08                tst.l      -$30f8(a5)
0000A5CC  66 54                      bne.b      $a622
0000A5CE  3F 3C 00 0F                move.w     #$f, -(a7)
0000A5D2  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A5D8  48 6D FA F2                pea.l      -$50e(a5)
0000A5DC  4E B9 00 00 00 F8          jsr        $f8.l
0000A5E2  3F 3C 00 0F                move.w     #$f, -(a7)
0000A5E6  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A5EC  48 6D FB 17                pea.l      -$4e9(a5)
0000A5F0  4E B9 00 00 00 F8          jsr        $f8.l
0000A5F6  3F 3C 00 0F                move.w     #$f, -(a7)
0000A5FA  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A600  48 6D FB 3E                pea.l      -$4c2(a5)
0000A604  4E B9 00 00 00 F8          jsr        $f8.l
0000A60A  3F 3C 00 0F                move.w     #$f, -(a7)
0000A60E  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
0000A614  48 6D FB 64                pea.l      -$49c(a5)
0000A618  4E B9 00 00 00 F8          jsr        $f8.l
0000A61E  4F EF 00 28                lea.l      $28(a7), a7
0000A622  0C AD 00 00 01 2C CF 08    cmpi.l     #$12c, -$30f8(a5)
0000A62A  66 6E                      bne.b      $a69a
0000A62C  4E B9 00 00 A7 24          jsr        $a724.l
0000A632  3F 3C 00 0F                move.w     #$f, -(a7)
0000A636  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A63C  48 6D FB 76                pea.l      -$48a(a5)
0000A640  4E B9 00 00 00 F8          jsr        $f8.l
0000A646  3F 3C 00 0F                move.w     #$f, -(a7)
0000A64A  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A650  48 6D FB 9C                pea.l      -$464(a5)
0000A654  4E B9 00 00 00 F8          jsr        $f8.l
0000A65A  3F 3C 00 0F                move.w     #$f, -(a7)
0000A65E  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A664  48 6D FB BF                pea.l      -$441(a5)
0000A668  4E B9 00 00 00 F8          jsr        $f8.l
0000A66E  3F 3C 00 0F                move.w     #$f, -(a7)
0000A672  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
0000A678  48 6D FB E2                pea.l      -$41e(a5)
0000A67C  4E B9 00 00 00 F8          jsr        $f8.l
0000A682  3F 3C 00 0F                move.w     #$f, -(a7)
0000A686  2F 3C 00 32 00 B4          move.l     #$3200b4, -(a7)
0000A68C  48 6D FC 08                pea.l      -$3f8(a5)
0000A690  4E B9 00 00 00 F8          jsr        $f8.l
0000A696  4F EF 00 32                lea.l      $32(a7), a7
0000A69A  0C AD 00 00 02 58 CF 08    cmpi.l     #$258, -$30f8(a5)
0000A6A2  66 5A                      bne.b      $a6fe
0000A6A4  4E B9 00 00 A7 24          jsr        $a724.l
0000A6AA  3F 3C 00 0F                move.w     #$f, -(a7)
0000A6AE  2F 3C 00 32 00 64          move.l     #$320064, -(a7)
0000A6B4  48 6D FC 11                pea.l      -$3ef(a5)
0000A6B8  4E B9 00 00 00 F8          jsr        $f8.l
0000A6BE  3F 3C 00 0F                move.w     #$f, -(a7)
0000A6C2  2F 3C 00 32 00 78          move.l     #$320078, -(a7)
0000A6C8  48 6D FC 36                pea.l      -$3ca(a5)
0000A6CC  4E B9 00 00 00 F8          jsr        $f8.l
0000A6D2  3F 3C 00 0F                move.w     #$f, -(a7)
0000A6D6  2F 3C 00 32 00 8C          move.l     #$32008c, -(a7)
0000A6DC  48 6D FC 5B                pea.l      -$3a5(a5)
0000A6E0  4E B9 00 00 00 F8          jsr        $f8.l
0000A6E6  3F 3C 00 0F                move.w     #$f, -(a7)
0000A6EA  2F 3C 00 32 00 A0          move.l     #$3200a0, -(a7)
0000A6F0  48 6D FC 80                pea.l      -$380(a5)
0000A6F4  4E B9 00 00 00 F8          jsr        $f8.l
0000A6FA  4F EF 00 28                lea.l      $28(a7), a7
0000A6FE  0C AD 00 00 03 84 CF 08    cmpi.l     #$384, -$30f8(a5)
0000A706  66 06                      bne.b      $a70e
0000A708  1B 7C 00 01 CE BF          move.b     #$1, -$3141(a5)
0000A70E  4E 5E                      unlk       a6
0000A710  4E 75                      rts

; MacsBug symbol trailer for NightwolfEnding: 8F 4E 69 67 68 74 77 6F 6C 66 45 6E 64 69 6E 67

DrawBlackScreen: ; 0000A724..0000A79A
0000A724  4E 56 FF F8                link.w     a6, #$fff8
0000A728  59 4F                      subq.w     #$4, a7
0000A72A  3F 3C 00 80                move.w     #$80, -(a7)
0000A72E  A9 B8                      .byte      0xa9, 0xb8
0000A730  20 5F                      movea.l    (a7)+, a0
0000A732  2D 48 FF F8                move.l     a0, -$8(a6)
0000A736  48 6E FF FC                pea.l      -$4(a6)
0000A73A  A8 74                      .byte      0xa8, 0x74
0000A73C  2F 2D D3 FA                move.l     -$2c06(a5), -(a7)
0000A740  A8 73                      .byte      0xa8, 0x73
0000A742  48 6D D7 F4                pea.l      -$280c(a5)
0000A746  A8 A2                      .byte      0xa8, 0xa2
0000A748  2F 2E FF FC                move.l     -$4(a6), -(a7)
0000A74C  A8 73                      .byte      0xa8, 0x73
0000A74E  20 6D D3 FA                movea.l    -$2c06(a5), a0
0000A752  48 68 00 02                pea.l      $2(a0)
0000A756  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000A75A  48 68 00 02                pea.l      $2(a0)
0000A75E  48 6D D7 F4                pea.l      -$280c(a5)
0000A762  48 6D D7 F4                pea.l      -$280c(a5)
0000A766  42 67                      clr.w      -(a7)
0000A768  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000A76C  2F 28 00 18                move.l     $18(a0), -(a7)
0000A770  A8 EC                      .byte      0xa8, 0xec
0000A772  20 6D D3 FE                movea.l    -$2c02(a5), a0
0000A776  48 68 00 02                pea.l      $2(a0)
0000A77A  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000A77E  48 68 00 02                pea.l      $2(a0)
0000A782  48 6D D7 F4                pea.l      -$280c(a5)
0000A786  48 6D D7 F4                pea.l      -$280c(a5)
0000A78A  42 67                      clr.w      -(a7)
0000A78C  20 6D D3 DE                movea.l    -$2c22(a5), a0
0000A790  2F 28 00 18                move.l     $18(a0), -(a7)
0000A794  A8 EC                      .byte      0xa8, 0xec
0000A796  4E 5E                      unlk       a6
0000A798  4E 75                      rts

; MacsBug symbol trailer for DrawBlackScreen: 8F 44 72 61 77 42 6C 61 63 6B 53 63 72 65 65 6E

CreateWindow: ; 0000A7AC..0000A7E8
0000A7AC  4E 56 FF FC                link.w     a6, #$fffc
0000A7B0  59 4F                      subq.w     #$4, a7
0000A7B2  3F 3C 00 80                move.w     #$80, -(a7)
0000A7B6  42 A7                      clr.l      -(a7)
0000A7B8  48 78 FF FF                pea.l      $ffff.w
0000A7BC  AA 46                      .byte      0xaa, 0x46
0000A7BE  20 5F                      movea.l    (a7)+, a0
0000A7C0  2B 48 D3 DE                move.l     a0, -$2c22(a5)
0000A7C4  59 4F                      subq.w     #$4, a7
0000A7C6  3F 3C 00 80                move.w     #$80, -(a7)
0000A7CA  A9 B8                      .byte      0xa9, 0xb8
0000A7CC  20 5F                      movea.l    (a7)+, a0
0000A7CE  2D 48 FF FC                move.l     a0, -$4(a6)
0000A7D2  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
0000A7D6  A8 73                      .byte      0xa8, 0x73
0000A7D8  48 6D D7 F4                pea.l      -$280c(a5)
0000A7DC  A8 A2                      .byte      0xa8, 0xa2
0000A7DE  2F 2D D3 DE                move.l     -$2c22(a5), -(a7)
0000A7E2  A9 15                      .byte      0xa9, 0x15
0000A7E4  4E 5E                      unlk       a6
0000A7E6  4E 75                      rts

; MacsBug symbol trailer for CreateWindow: 8C 43 72 65 61 74 65 57 69 6E 64 6F 77

SetTheGameRects: ; 0000A7F8..0000ADB6
0000A7F8  4E 56 00 00                link.w     a6, #$0
0000A7FC  0C 6D 00 33 D4 1C          cmpi.w     #$33, -$2be4(a5)
0000A802  67 10                      beq.b      $a814
0000A804  0C 6D 00 36 D4 1C          cmpi.w     #$36, -$2be4(a5)
0000A80A  6D 1C                      blt.b      $a828
0000A80C  0C 6D 00 3B D4 1C          cmpi.w     #$3b, -$2be4(a5)
0000A812  6E 14                      bgt.b      $a828
0000A814  48 6D DC AE                pea.l      -$2352(a5)
0000A818  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000A81E  2F 3C 00 E5 00 E5          move.l     #$e500e5, -(a7)
0000A824  A8 A7                      .byte      0xa8, 0xa7
0000A826  60 4A                      bra.b      $a872
0000A828  0C 6D 00 34 D4 1C          cmpi.w     #$34, -$2be4(a5)
0000A82E  66 14                      bne.b      $a844
0000A830  48 6D DC AE                pea.l      -$2352(a5)
0000A834  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000A83A  2F 3C 01 04 01 04          move.l     #$1040104, -(a7)
0000A840  A8 A7                      .byte      0xa8, 0xa7
0000A842  60 2E                      bra.b      $a872
0000A844  0C 6D 00 35 D4 1C          cmpi.w     #$35, -$2be4(a5)
0000A84A  66 14                      bne.b      $a860
0000A84C  48 6D DC AE                pea.l      -$2352(a5)
0000A850  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000A856  2F 3C 00 CE 00 CE          move.l     #$ce00ce, -(a7)
0000A85C  A8 A7                      .byte      0xa8, 0xa7
0000A85E  60 12                      bra.b      $a872
0000A860  48 6D DC AE                pea.l      -$2352(a5)
0000A864  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000A86A  2F 3C 00 D4 00 D4          move.l     #$d400d4, -(a7)
0000A870  A8 A7                      .byte      0xa8, 0xa7
0000A872  2B 6D DC AE DD 12          move.l     -$2352(a5), -$22ee(a5)
0000A878  2B 6D DC B2 DD 16          move.l     -$234e(a5), -$22ea(a5)
0000A87E  2B 6D DC AE DC B6          move.l     -$2352(a5), -$234a(a5)
0000A884  2B 6D DC B2 DC BA          move.l     -$234e(a5), -$2346(a5)
0000A88A  2B 6D DD 12 DD 1A          move.l     -$22ee(a5), -$22e6(a5)
0000A890  2B 6D DD 16 DD 1E          move.l     -$22ea(a5), -$22e2(a5)
0000A896  48 6D DC 82                pea.l      -$237e(a5)
0000A89A  2F 3C 00 D2 00 0A          move.l     #$d2000a, -(a7)
0000A8A0  2F 3C 01 02 00 1A          move.l     #$102001a, -(a7)
0000A8A6  A8 A7                      .byte      0xa8, 0xa7
0000A8A8  2B 6D DC 82 DC 8A          move.l     -$237e(a5), -$2376(a5)
0000A8AE  2B 6D DC 86 DC 8E          move.l     -$237a(a5), -$2372(a5)
0000A8B4  48 6D DC 56                pea.l      -$23aa(a5)
0000A8B8  2F 3C 00 D2 01 EA          move.l     #$d201ea, -(a7)
0000A8BE  2F 3C 01 02 01 FA          move.l     #$10201fa, -(a7)
0000A8C4  A8 A7                      .byte      0xa8, 0xa7
0000A8C6  2B 6D DC 56 DC 5E          move.l     -$23aa(a5), -$23a2(a5)
0000A8CC  2B 6D DC 5A DC 62          move.l     -$23a6(a5), -$239e(a5)
0000A8D2  30 2D FF E0                move.w     -$20(a5), d0
0000A8D6  0C 40 00 10                cmpi.w     #$10, d0
0000A8DA  62 00 02 02                bhi.w      $aade
0000A8DE  D0 40                      add.w      d0, d0
0000A8E0  30 3B 00 06                move.w     $a8e8(pc, d0.w), d0
0000A8E4  4E FB 00 02                jmp        $a8e8(pc, d0.w)
0000A8E8  01 F6 00 22                bset.b     d0, $22(a6, d0.w)
0000A8EC  00 42 00 62                ori.w      #$62, d2
0000A8F0  00 82 00 A2 00 C2          ori.l      #$a200c2, d2
0000A8F6  00 E2                      .byte      0x00, 0xe2
0000A8F8  01 02                      btst.l     d0, d2
0000A8FA  01 22                      btst.l     d0, -(a2)
0000A8FC  01 42                      bchg.b     d0, d2
0000A8FE  01 62                      bchg.b     d0, -(a2)
0000A900  01 80                      bclr.b     d0, d0
0000A902  01 F6 01 9E 01 BC          bset.b     d0, ([], d0.w, $1bc)
0000A908  01 DA                      bset.b     d0, (a2)+
0000A90A  48 6D DC 42                pea.l      -$23be(a5)
0000A90E  48 78 00 10                pea.l      $10.w
0000A912  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
0000A918  A8 A7                      .byte      0xa8, 0xa7
0000A91A  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
0000A920  3B 7C 00 18 D8 0C          move.w     #$18, -$27f4(a5)
0000A926  60 00 01 B6                bra.w      $aade
0000A92A  48 6D DC 42                pea.l      -$23be(a5)
0000A92E  48 78 00 10                pea.l      $10.w
0000A932  2F 3C 00 14 00 40          move.l     #$140040, -(a7)
0000A938  A8 A7                      .byte      0xa8, 0xa7
0000A93A  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
0000A940  3B 7C 00 14 D8 0C          move.w     #$14, -$27f4(a5)
0000A946  60 00 01 96                bra.w      $aade
0000A94A  48 6D DC 42                pea.l      -$23be(a5)
0000A94E  48 78 00 10                pea.l      $10.w
0000A952  2F 3C 00 0A 00 48          move.l     #$a0048, -(a7)
0000A958  A8 A7                      .byte      0xa8, 0xa7
0000A95A  3B 7C 00 38 D8 0E          move.w     #$38, -$27f2(a5)
0000A960  3B 7C 00 0A D8 0C          move.w     #$a, -$27f4(a5)
0000A966  60 00 01 76                bra.w      $aade
0000A96A  48 6D DC 42                pea.l      -$23be(a5)
0000A96E  48 78 00 10                pea.l      $10.w
0000A972  2F 3C 00 0B 00 40          move.l     #$b0040, -(a7)
0000A978  A8 A7                      .byte      0xa8, 0xa7
0000A97A  3B 7C 00 30 D8 0E          move.w     #$30, -$27f2(a5)
0000A980  3B 7C 00 0B D8 0C          move.w     #$b, -$27f4(a5)
0000A986  60 00 01 56                bra.w      $aade
0000A98A  48 6D DC 42                pea.l      -$23be(a5)
0000A98E  48 78 00 10                pea.l      $10.w
0000A992  2F 3C 00 0B 00 45          move.l     #$b0045, -(a7)
0000A998  A8 A7                      .byte      0xa8, 0xa7
0000A99A  3B 7C 00 35 D8 0E          move.w     #$35, -$27f2(a5)
0000A9A0  3B 7C 00 0B D8 0C          move.w     #$b, -$27f4(a5)
0000A9A6  60 00 01 36                bra.w      $aade
0000A9AA  48 6D DC 42                pea.l      -$23be(a5)
0000A9AE  48 78 00 A7                pea.l      $a7.w
0000A9B2  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
0000A9B8  A8 A7                      .byte      0xa8, 0xa7
0000A9BA  3B 7C 00 21 D8 0E          move.w     #$21, -$27f2(a5)
0000A9C0  3B 7C 00 53 D8 0C          move.w     #$53, -$27f4(a5)
0000A9C6  60 00 01 16                bra.w      $aade
0000A9CA  48 6D DC 42                pea.l      -$23be(a5)
0000A9CE  48 78 00 10                pea.l      $10.w
0000A9D2  2F 3C 00 07 00 3C          move.l     #$7003c, -(a7)
0000A9D8  A8 A7                      .byte      0xa8, 0xa7
0000A9DA  3B 7C 00 2C D8 0E          move.w     #$2c, -$27f2(a5)
0000A9E0  3B 7C 00 07 D8 0C          move.w     #$7, -$27f4(a5)
0000A9E6  60 00 00 F6                bra.w      $aade
0000A9EA  48 6D DC 42                pea.l      -$23be(a5)
0000A9EE  48 78 00 10                pea.l      $10.w
0000A9F2  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
0000A9F8  A8 A7                      .byte      0xa8, 0xa7
0000A9FA  3B 7C 00 3E D8 0E          move.w     #$3e, -$27f2(a5)
0000AA00  3B 7C 00 0F D8 0C          move.w     #$f, -$27f4(a5)
0000AA06  60 00 00 D6                bra.w      $aade
0000AA0A  48 6D DC 42                pea.l      -$23be(a5)
0000AA0E  48 78 00 10                pea.l      $10.w
0000AA12  2F 3C 00 19 00 2C          move.l     #$19002c, -(a7)
0000AA18  A8 A7                      .byte      0xa8, 0xa7
0000AA1A  3B 7C 00 1C D8 0E          move.w     #$1c, -$27f2(a5)
0000AA20  3B 7C 00 19 D8 0C          move.w     #$19, -$27f4(a5)
0000AA26  60 00 00 B6                bra.w      $aade
0000AA2A  48 6D DC 42                pea.l      -$23be(a5)
0000AA2E  48 78 00 10                pea.l      $10.w
0000AA32  2F 3C 00 2D 00 3A          move.l     #$2d003a, -(a7)
0000AA38  A8 A7                      .byte      0xa8, 0xa7
0000AA3A  3B 7C 00 2A D8 0E          move.w     #$2a, -$27f2(a5)
0000AA40  3B 7C 00 2D D8 0C          move.w     #$2d, -$27f4(a5)
0000AA46  60 00 00 96                bra.w      $aade
0000AA4A  48 6D DC 42                pea.l      -$23be(a5)
0000AA4E  48 78 00 10                pea.l      $10.w
0000AA52  2F 3C 00 20 00 31          move.l     #$200031, -(a7)
0000AA58  A8 A7                      .byte      0xa8, 0xa7
0000AA5A  3B 7C 00 20 D8 0E          move.w     #$20, -$27f2(a5)
0000AA60  3B 7C 00 20 D8 0C          move.w     #$20, -$27f4(a5)
0000AA66  60 76                      bra.b      $aade
0000AA68  48 6D DC 42                pea.l      -$23be(a5)
0000AA6C  48 78 00 10                pea.l      $10.w
0000AA70  2F 3C 00 0C 00 1C          move.l     #$c001c, -(a7)
0000AA76  A8 A7                      .byte      0xa8, 0xa7
0000AA78  3B 7C 00 0C D8 0E          move.w     #$c, -$27f2(a5)
0000AA7E  3B 7C 00 0C D8 0C          move.w     #$c, -$27f4(a5)
0000AA84  60 58                      bra.b      $aade
0000AA86  48 6D DC 42                pea.l      -$23be(a5)
0000AA8A  48 78 00 10                pea.l      $10.w
0000AA8E  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
0000AA94  A8 A7                      .byte      0xa8, 0xa7
0000AA96  3B 7C 00 2B D8 0E          move.w     #$2b, -$27f2(a5)
0000AA9C  3B 7C 00 09 D8 0C          move.w     #$9, -$27f4(a5)
0000AAA2  60 3A                      bra.b      $aade
0000AAA4  48 6D DC 42                pea.l      -$23be(a5)
0000AAA8  48 78 00 10                pea.l      $10.w
0000AAAC  2F 3C 00 0F 00 35          move.l     #$f0035, -(a7)
0000AAB2  A8 A7                      .byte      0xa8, 0xa7
0000AAB4  3B 7C 00 25 D8 0E          move.w     #$25, -$27f2(a5)
0000AABA  3B 7C 00 0F D8 0C          move.w     #$f, -$27f4(a5)
0000AAC0  60 1C                      bra.b      $aade
0000AAC2  48 6D DC 42                pea.l      -$23be(a5)
0000AAC6  48 78 00 10                pea.l      $10.w
0000AACA  2F 3C 00 0C 00 37          move.l     #$c0037, -(a7)
0000AAD0  A8 A7                      .byte      0xa8, 0xa7
0000AAD2  3B 7C 00 27 D8 0E          move.w     #$27, -$27f2(a5)
0000AAD8  3B 7C 00 0C D8 0C          move.w     #$c, -$27f4(a5)
0000AADE  30 2D FF E2                move.w     -$1e(a5), d0
0000AAE2  0C 40 00 10                cmpi.w     #$10, d0
0000AAE6  62 00 02 02                bhi.w      $acea
0000AAEA  D0 40                      add.w      d0, d0
0000AAEC  30 3B 00 06                move.w     $aaf4(pc, d0.w), d0
0000AAF0  4E FB 00 02                jmp        $aaf4(pc, d0.w)
0000AAF4  01 F6 00 22                bset.b     d0, $22(a6, d0.w)
0000AAF8  00 42 00 62                ori.w      #$62, d2
0000AAFC  00 82 00 A2 00 C2          ori.l      #$a200c2, d2
0000AB02  00 E2                      .byte      0x00, 0xe2
0000AB04  01 02                      btst.l     d0, d2
0000AB06  01 22                      btst.l     d0, -(a2)
0000AB08  01 42                      bchg.b     d0, d2
0000AB0A  01 62                      bchg.b     d0, -(a2)
0000AB0C  01 80                      bclr.b     d0, d0
0000AB0E  01 F6 01 9E 01 BC          bset.b     d0, ([], d0.w, $1bc)
0000AB14  01 DA                      bset.b     d0, (a2)+
0000AB16  48 6D DC 1E                pea.l      -$23e2(a5)
0000AB1A  48 78 00 10                pea.l      $10.w
0000AB1E  2F 3C 00 18 00 40          move.l     #$180040, -(a7)
0000AB24  A8 A7                      .byte      0xa8, 0xa7
0000AB26  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
0000AB2C  3B 7C 00 18 D8 08          move.w     #$18, -$27f8(a5)
0000AB32  60 00 01 B6                bra.w      $acea
0000AB36  48 6D DC 1E                pea.l      -$23e2(a5)
0000AB3A  48 78 00 10                pea.l      $10.w
0000AB3E  2F 3C 00 14 00 40          move.l     #$140040, -(a7)
0000AB44  A8 A7                      .byte      0xa8, 0xa7
0000AB46  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
0000AB4C  3B 7C 00 14 D8 08          move.w     #$14, -$27f8(a5)
0000AB52  60 00 01 96                bra.w      $acea
0000AB56  48 6D DC 1E                pea.l      -$23e2(a5)
0000AB5A  48 78 00 10                pea.l      $10.w
0000AB5E  2F 3C 00 0A 00 48          move.l     #$a0048, -(a7)
0000AB64  A8 A7                      .byte      0xa8, 0xa7
0000AB66  3B 7C 00 38 D8 0A          move.w     #$38, -$27f6(a5)
0000AB6C  3B 7C 00 0A D8 08          move.w     #$a, -$27f8(a5)
0000AB72  60 00 01 76                bra.w      $acea
0000AB76  48 6D DC 1E                pea.l      -$23e2(a5)
0000AB7A  48 78 00 10                pea.l      $10.w
0000AB7E  2F 3C 00 0B 00 40          move.l     #$b0040, -(a7)
0000AB84  A8 A7                      .byte      0xa8, 0xa7
0000AB86  3B 7C 00 30 D8 0A          move.w     #$30, -$27f6(a5)
0000AB8C  3B 7C 00 0B D8 08          move.w     #$b, -$27f8(a5)
0000AB92  60 00 01 56                bra.w      $acea
0000AB96  48 6D DC 1E                pea.l      -$23e2(a5)
0000AB9A  48 78 00 10                pea.l      $10.w
0000AB9E  2F 3C 00 0B 00 45          move.l     #$b0045, -(a7)
0000ABA4  A8 A7                      .byte      0xa8, 0xa7
0000ABA6  3B 7C 00 35 D8 0A          move.w     #$35, -$27f6(a5)
0000ABAC  3B 7C 00 0B D8 08          move.w     #$b, -$27f8(a5)
0000ABB2  60 00 01 36                bra.w      $acea
0000ABB6  48 6D DC 1E                pea.l      -$23e2(a5)
0000ABBA  48 78 00 A7                pea.l      $a7.w
0000ABBE  2F 3C 00 53 00 C8          move.l     #$5300c8, -(a7)
0000ABC4  A8 A7                      .byte      0xa8, 0xa7
0000ABC6  3B 7C 00 21 D8 0A          move.w     #$21, -$27f6(a5)
0000ABCC  3B 7C 00 53 D8 08          move.w     #$53, -$27f8(a5)
0000ABD2  60 00 01 16                bra.w      $acea
0000ABD6  48 6D DC 1E                pea.l      -$23e2(a5)
0000ABDA  48 78 00 10                pea.l      $10.w
0000ABDE  2F 3C 00 07 00 3C          move.l     #$7003c, -(a7)
0000ABE4  A8 A7                      .byte      0xa8, 0xa7
0000ABE6  3B 7C 00 2C D8 0A          move.w     #$2c, -$27f6(a5)
0000ABEC  3B 7C 00 07 D8 08          move.w     #$7, -$27f8(a5)
0000ABF2  60 00 00 F6                bra.w      $acea
0000ABF6  48 6D DC 1E                pea.l      -$23e2(a5)
0000ABFA  48 78 00 10                pea.l      $10.w
0000ABFE  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
0000AC04  A8 A7                      .byte      0xa8, 0xa7
0000AC06  3B 7C 00 3E D8 0A          move.w     #$3e, -$27f6(a5)
0000AC0C  3B 7C 00 0F D8 08          move.w     #$f, -$27f8(a5)
0000AC12  60 00 00 D6                bra.w      $acea
0000AC16  48 6D DC 1E                pea.l      -$23e2(a5)
0000AC1A  48 78 00 10                pea.l      $10.w
0000AC1E  2F 3C 00 19 00 2C          move.l     #$19002c, -(a7)
0000AC24  A8 A7                      .byte      0xa8, 0xa7
0000AC26  3B 7C 00 1C D8 0A          move.w     #$1c, -$27f6(a5)
0000AC2C  3B 7C 00 19 D8 08          move.w     #$19, -$27f8(a5)
0000AC32  60 00 00 B6                bra.w      $acea
0000AC36  48 6D DC 1E                pea.l      -$23e2(a5)
0000AC3A  48 78 00 10                pea.l      $10.w
0000AC3E  2F 3C 00 2D 00 3A          move.l     #$2d003a, -(a7)
0000AC44  A8 A7                      .byte      0xa8, 0xa7
0000AC46  3B 7C 00 2A D8 0A          move.w     #$2a, -$27f6(a5)
0000AC4C  3B 7C 00 2D D8 08          move.w     #$2d, -$27f8(a5)
0000AC52  60 00 00 96                bra.w      $acea
0000AC56  48 6D DC 1E                pea.l      -$23e2(a5)
0000AC5A  48 78 00 10                pea.l      $10.w
0000AC5E  2F 3C 00 20 00 31          move.l     #$200031, -(a7)
0000AC64  A8 A7                      .byte      0xa8, 0xa7
0000AC66  3B 7C 00 20 D8 0A          move.w     #$20, -$27f6(a5)
0000AC6C  3B 7C 00 20 D8 08          move.w     #$20, -$27f8(a5)
0000AC72  60 76                      bra.b      $acea
0000AC74  48 6D DC 1E                pea.l      -$23e2(a5)
0000AC78  48 78 00 10                pea.l      $10.w
0000AC7C  2F 3C 00 0C 00 1C          move.l     #$c001c, -(a7)
0000AC82  A8 A7                      .byte      0xa8, 0xa7
0000AC84  3B 7C 00 0C D8 0A          move.w     #$c, -$27f6(a5)
0000AC8A  3B 7C 00 0C D8 08          move.w     #$c, -$27f8(a5)
0000AC90  60 58                      bra.b      $acea
0000AC92  48 6D DC 1E                pea.l      -$23e2(a5)
0000AC96  48 78 00 10                pea.l      $10.w
0000AC9A  2F 3C 00 09 00 3B          move.l     #$9003b, -(a7)
0000ACA0  A8 A7                      .byte      0xa8, 0xa7
0000ACA2  3B 7C 00 2B D8 0A          move.w     #$2b, -$27f6(a5)
0000ACA8  3B 7C 00 09 D8 08          move.w     #$9, -$27f8(a5)
0000ACAE  60 3A                      bra.b      $acea
0000ACB0  48 6D DC 1E                pea.l      -$23e2(a5)
0000ACB4  48 78 00 10                pea.l      $10.w
0000ACB8  2F 3C 00 0F 00 35          move.l     #$f0035, -(a7)
0000ACBE  A8 A7                      .byte      0xa8, 0xa7
0000ACC0  3B 7C 00 25 D8 0A          move.w     #$25, -$27f6(a5)
0000ACC6  3B 7C 00 0F D8 08          move.w     #$f, -$27f8(a5)
0000ACCC  60 1C                      bra.b      $acea
0000ACCE  48 6D DC 1E                pea.l      -$23e2(a5)
0000ACD2  48 78 00 10                pea.l      $10.w
0000ACD6  2F 3C 00 0C 00 37          move.l     #$c0037, -(a7)
0000ACDC  A8 A7                      .byte      0xa8, 0xa7
0000ACDE  3B 7C 00 27 D8 0A          move.w     #$27, -$27f6(a5)
0000ACE4  3B 7C 00 0C D8 08          move.w     #$c, -$27f8(a5)
0000ACEA  48 6D D6 E6                pea.l      -$291a(a5)
0000ACEE  2F 3C 00 C8 00 97          move.l     #$c80097, -(a7)
0000ACF4  2F 3C 01 18 01 6D          move.l     #$118016d, -(a7)
0000ACFA  A8 A7                      .byte      0xa8, 0xa7
0000ACFC  2B 6D D6 E6 D6 DE          move.l     -$291a(a5), -$2922(a5)
0000AD02  2B 6D D6 EA D6 E2          move.l     -$2916(a5), -$291e(a5)
0000AD08  2B 6D D6 E6 D6 D6          move.l     -$291a(a5), -$292a(a5)
0000AD0E  2B 6D D6 EA D6 DA          move.l     -$2916(a5), -$2926(a5)
0000AD14  48 6D D4 6E                pea.l      -$2b92(a5)
0000AD18  2F 3C 00 0D 00 E6          move.l     #$d00e6, -(a7)
0000AD1E  2F 3C 00 1B 00 E6          move.l     #$1b00e6, -(a7)
0000AD24  A8 A7                      .byte      0xa8, 0xa7
0000AD26  48 6D D4 66                pea.l      -$2b9a(a5)
0000AD2A  2F 3C 00 0D 01 1E          move.l     #$d011e, -(a7)
0000AD30  2F 3C 00 1B 01 1E          move.l     #$1b011e, -(a7)
0000AD36  A8 A7                      .byte      0xa8, 0xa7
0000AD38  48 6D D6 B6                pea.l      -$294a(a5)
0000AD3C  2F 3C 00 C8 00 76          move.l     #$c80076, -(a7)
0000AD42  2F 3C 01 10 01 14          move.l     #$1100114, -(a7)
0000AD48  A8 A7                      .byte      0xa8, 0xa7
0000AD4A  48 6D D6 9E                pea.l      -$2962(a5)
0000AD4E  2F 3C 00 C8 01 20          move.l     #$c80120, -(a7)
0000AD54  2F 3C 01 10 01 93          move.l     #$1100193, -(a7)
0000AD5A  A8 A7                      .byte      0xa8, 0xa7
0000AD5C  48 6D D5 86                pea.l      -$2a7a(a5)
0000AD60  2F 3C 00 42 00 8A          move.l     #$42008a, -(a7)
0000AD66  2F 3C 00 A6 00 DA          move.l     #$a600da, -(a7)
0000AD6C  A8 A7                      .byte      0xa8, 0xa7
0000AD6E  48 6D D5 6E                pea.l      -$2a92(a5)
0000AD72  2F 3C 00 42 01 2A          move.l     #$42012a, -(a7)
0000AD78  2F 3C 00 A6 01 7A          move.l     #$a6017a, -(a7)
0000AD7E  A8 A7                      .byte      0xa8, 0xa7
0000AD80  48 6D D5 7E                pea.l      -$2a82(a5)
0000AD84  42 A7                      clr.l      -(a7)
0000AD86  2F 3C 00 0A 00 0A          move.l     #$a000a, -(a7)
0000AD8C  A8 A7                      .byte      0xa8, 0xa7
0000AD8E  2B 6D D5 86 D5 76          move.l     -$2a7a(a5), -$2a8a(a5)
0000AD94  2B 6D D5 8A D5 7A          move.l     -$2a76(a5), -$2a86(a5)
0000AD9A  2B 6D D5 6E D5 66          move.l     -$2a92(a5), -$2a9a(a5)
0000ADA0  2B 6D D5 72 D5 6A          move.l     -$2a8e(a5), -$2a96(a5)
0000ADA6  2B 6D D5 6E D5 5E          move.l     -$2a92(a5), -$2aa2(a5)
0000ADAC  2B 6D D5 72 D5 62          move.l     -$2a8e(a5), -$2a9e(a5)
0000ADB2  4E 5E                      unlk       a6
0000ADB4  4E 75                      rts

; MacsBug symbol trailer for SetTheGameRects: 8F 53 65 74 54 68 65 47 61 6D 65 52 65 63 74 73

SetTheRects: ; 0000ADC8..0000B7D2
0000ADC8  4E 56 00 00                link.w     a6, #$0
0000ADCC  48 6D D7 F4                pea.l      -$280c(a5)
0000ADD0  42 A7                      clr.l      -(a7)
0000ADD2  2F 3C 01 B0 02 04          move.l     #$1b00204, -(a7)
0000ADD8  A8 A7                      .byte      0xa8, 0xa7
0000ADDA  48 6D D7 FC                pea.l      -$2804(a5)
0000ADDE  42 A7                      clr.l      -(a7)
0000ADE0  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000ADE6  A8 A7                      .byte      0xa8, 0xa7
0000ADE8  48 6D D7 EC                pea.l      -$2814(a5)
0000ADEC  42 A7                      clr.l      -(a7)
0000ADEE  2F 3C 01 0F 01 48          move.l     #$10f0148, -(a7)
0000ADF4  A8 A7                      .byte      0xa8, 0xa7
0000ADF6  48 6D DC 92                pea.l      -$236e(a5)
0000ADFA  42 A7                      clr.l      -(a7)
0000ADFC  2F 3C 00 30 00 10          move.l     #$300010, -(a7)
0000AE02  A8 A7                      .byte      0xa8, 0xa7
0000AE04  48 6D DC 66                pea.l      -$239a(a5)
0000AE08  42 A7                      clr.l      -(a7)
0000AE0A  2F 3C 00 30 00 10          move.l     #$300010, -(a7)
0000AE10  A8 A7                      .byte      0xa8, 0xa7
0000AE12  48 6D DC 9A                pea.l      -$2366(a5)
0000AE16  2F 3C 00 30 00 00          move.l     #$300000, -(a7)
0000AE1C  2F 3C 00 60 00 10          move.l     #$600010, -(a7)
0000AE22  A8 A7                      .byte      0xa8, 0xa7
0000AE24  48 6D DC 6E                pea.l      -$2392(a5)
0000AE28  2F 3C 00 30 00 00          move.l     #$300000, -(a7)
0000AE2E  2F 3C 00 60 00 10          move.l     #$600010, -(a7)
0000AE34  A8 A7                      .byte      0xa8, 0xa7
0000AE36  48 6D DC BE                pea.l      -$2342(a5)
0000AE3A  2F 3C 00 50 00 8E          move.l     #$50008e, -(a7)
0000AE40  2F 3C 00 5C 00 9A          move.l     #$5c009a, -(a7)
0000AE46  A8 A7                      .byte      0xa8, 0xa7
0000AE48  48 6D DC C6                pea.l      -$233a(a5)
0000AE4C  2F 3C 00 50 00 9A          move.l     #$50009a, -(a7)
0000AE52  2F 3C 00 5C 00 A6          move.l     #$5c00a6, -(a7)
0000AE58  A8 A7                      .byte      0xa8, 0xa7
0000AE5A  48 6D DC CE                pea.l      -$2332(a5)
0000AE5E  2F 3C 00 50 00 A6          move.l     #$5000a6, -(a7)
0000AE64  2F 3C 00 5C 00 B2          move.l     #$5c00b2, -(a7)
0000AE6A  A8 A7                      .byte      0xa8, 0xa7
0000AE6C  48 6D DC D6                pea.l      -$232a(a5)
0000AE70  2F 3C 00 50 00 B2          move.l     #$5000b2, -(a7)
0000AE76  2F 3C 00 5C 00 BE          move.l     #$5c00be, -(a7)
0000AE7C  A8 A7                      .byte      0xa8, 0xa7
0000AE7E  48 6D DC DE                pea.l      -$2322(a5)
0000AE82  2F 3C 00 50 00 BE          move.l     #$5000be, -(a7)
0000AE88  2F 3C 00 5C 00 CA          move.l     #$5c00ca, -(a7)
0000AE8E  A8 A7                      .byte      0xa8, 0xa7
0000AE90  48 6D DC E6                pea.l      -$231a(a5)
0000AE94  2F 3C 00 5C 00 8E          move.l     #$5c008e, -(a7)
0000AE9A  2F 3C 00 68 00 9A          move.l     #$68009a, -(a7)
0000AEA0  A8 A7                      .byte      0xa8, 0xa7
0000AEA2  48 6D DC EE                pea.l      -$2312(a5)
0000AEA6  2F 3C 00 5C 00 9A          move.l     #$5c009a, -(a7)
0000AEAC  2F 3C 00 68 00 A6          move.l     #$6800a6, -(a7)
0000AEB2  A8 A7                      .byte      0xa8, 0xa7
0000AEB4  48 6D DC F6                pea.l      -$230a(a5)
0000AEB8  2F 3C 00 5C 00 B9          move.l     #$5c00b9, -(a7)
0000AEBE  2F 3C 00 79 00 D6          move.l     #$7900d6, -(a7)
0000AEC4  A8 A7                      .byte      0xa8, 0xa7
0000AEC6  48 6D DD AA                pea.l      -$2256(a5)
0000AECA  48 78 00 45                pea.l      $45.w
0000AECE  2F 3C 00 10 00 54          move.l     #$100054, -(a7)
0000AED4  A8 A7                      .byte      0xa8, 0xa7
0000AED6  2B 6D DD AA DD 86          move.l     -$2256(a5), -$227a(a5)
0000AEDC  2B 6D DD AE DD 8A          move.l     -$2252(a5), -$2276(a5)
0000AEE2  48 6D DB D6                pea.l      -$242a(a5)
0000AEE6  48 78 00 B8                pea.l      $b8.w
0000AEEA  2F 3C 00 3C 00 C8          move.l     #$3c00c8, -(a7)
0000AEF0  A8 A7                      .byte      0xa8, 0xa7
0000AEF2  2B 6D DB D6 DB B2          move.l     -$242a(a5), -$244e(a5)
0000AEF8  2B 6D DB DA DB B6          move.l     -$2426(a5), -$244a(a5)
0000AEFE  2B 6D DB D6 DB 8E          move.l     -$242a(a5), -$2472(a5)
0000AF04  2B 6D DB DA DB 92          move.l     -$2426(a5), -$246e(a5)
0000AF0A  2B 6D DB D6 DB FA          move.l     -$242a(a5), -$2406(a5)
0000AF10  2B 6D DB DA DB FE          move.l     -$2426(a5), -$2402(a5)
0000AF16  48 6D DD FA                pea.l      -$2206(a5)
0000AF1A  2F 3C 00 60 00 93          move.l     #$600093, -(a7)
0000AF20  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000AF26  A8 A7                      .byte      0xa8, 0xa7
0000AF28  48 6D DE 02                pea.l      -$21fe(a5)
0000AF2C  2F 3C 00 38 00 5E          move.l     #$38005e, -(a7)
0000AF32  2F 3C 00 A0 00 93          move.l     #$a00093, -(a7)
0000AF38  A8 A7                      .byte      0xa8, 0xa7
0000AF3A  48 6D D0 3E                pea.l      -$2fc2(a5)
0000AF3E  2F 3C 00 05 00 82          move.l     #$50082, -(a7)
0000AF44  2F 3C 00 33 00 C8          move.l     #$3300c8, -(a7)
0000AF4A  A8 A7                      .byte      0xa8, 0xa7
0000AF4C  48 6D D0 46                pea.l      -$2fba(a5)
0000AF50  2F 3C 00 19 00 18          move.l     #$190018, -(a7)
0000AF56  2F 3C 00 47 00 5E          move.l     #$47005e, -(a7)
0000AF5C  A8 A7                      .byte      0xa8, 0xa7
0000AF5E  48 6D D0 4E                pea.l      -$2fb2(a5)
0000AF62  2F 3C 00 47 00 18          move.l     #$470018, -(a7)
0000AF68  2F 3C 00 75 00 5E          move.l     #$75005e, -(a7)
0000AF6E  A8 A7                      .byte      0xa8, 0xa7
0000AF70  48 6D DB 62                pea.l      -$249e(a5)
0000AF74  48 78 00 AA                pea.l      $aa.w
0000AF78  2F 3C 00 35 00 B9          move.l     #$3500b9, -(a7)
0000AF7E  A8 A7                      .byte      0xa8, 0xa7
0000AF80  48 6D DB 6A                pea.l      -$2496(a5)
0000AF84  48 78 00 B9                pea.l      $b9.w
0000AF88  2F 3C 00 35 00 C8          move.l     #$3500c8, -(a7)
0000AF8E  A8 A7                      .byte      0xa8, 0xa7
0000AF90  48 6D DB 36                pea.l      -$24ca(a5)
0000AF94  48 78 00 AA                pea.l      $aa.w
0000AF98  2F 3C 00 35 00 B9          move.l     #$3500b9, -(a7)
0000AF9E  A8 A7                      .byte      0xa8, 0xa7
0000AFA0  48 6D DB 3E                pea.l      -$24c2(a5)
0000AFA4  48 78 00 B9                pea.l      $b9.w
0000AFA8  2F 3C 00 35 00 C8          move.l     #$3500c8, -(a7)
0000AFAE  A8 A7                      .byte      0xa8, 0xa7
0000AFB0  48 6D CF DC                pea.l      -$3024(a5)
0000AFB4  2F 3C 00 60 00 00          move.l     #$600000, -(a7)
0000AFBA  2F 3C 00 96 00 16          move.l     #$960016, -(a7)
0000AFC0  A8 A7                      .byte      0xa8, 0xa7
0000AFC2  48 6D DB 0A                pea.l      -$24f6(a5)
0000AFC6  2F 3C 00 14 00 10          move.l     #$140010, -(a7)
0000AFCC  2F 3C 00 28 00 40          move.l     #$280040, -(a7)
0000AFD2  A8 A7                      .byte      0xa8, 0xa7
0000AFD4  48 6D DB 12                pea.l      -$24ee(a5)
0000AFD8  2F 3C 00 28 00 10          move.l     #$280010, -(a7)
0000AFDE  2F 3C 00 3C 00 40          move.l     #$3c0040, -(a7)
0000AFE4  A8 A7                      .byte      0xa8, 0xa7
0000AFE6  48 6D DA DE                pea.l      -$2522(a5)
0000AFEA  2F 3C 00 14 00 10          move.l     #$140010, -(a7)
0000AFF0  2F 3C 00 28 00 40          move.l     #$280040, -(a7)
0000AFF6  A8 A7                      .byte      0xa8, 0xa7
0000AFF8  48 6D DA E6                pea.l      -$251a(a5)
0000AFFC  2F 3C 00 28 00 10          move.l     #$280010, -(a7)
0000B002  2F 3C 00 3C 00 40          move.l     #$3c0040, -(a7)
0000B008  A8 A7                      .byte      0xa8, 0xa7
0000B00A  48 6D DA B2                pea.l      -$254e(a5)
0000B00E  48 78 00 10                pea.l      $10.w
0000B012  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
0000B018  A8 A7                      .byte      0xa8, 0xa7
0000B01A  48 6D DA BA                pea.l      -$2546(a5)
0000B01E  2F 3C 00 0F 00 10          move.l     #$f0010, -(a7)
0000B024  2F 3C 00 1E 00 4E          move.l     #$1e004e, -(a7)
0000B02A  A8 A7                      .byte      0xa8, 0xa7
0000B02C  48 6D DA 86                pea.l      -$257a(a5)
0000B030  48 78 00 10                pea.l      $10.w
0000B034  2F 3C 00 0F 00 4E          move.l     #$f004e, -(a7)
0000B03A  A8 A7                      .byte      0xa8, 0xa7
0000B03C  48 6D DA 8E                pea.l      -$2572(a5)
0000B040  2F 3C 00 0F 00 10          move.l     #$f0010, -(a7)
0000B046  2F 3C 00 1E 00 4E          move.l     #$1e004e, -(a7)
0000B04C  A8 A7                      .byte      0xa8, 0xa7
0000B04E  48 6D DA 62                pea.l      -$259e(a5)
0000B052  48 78 00 98                pea.l      $98.w
0000B056  2F 3C 00 10 00 C8          move.l     #$1000c8, -(a7)
0000B05C  A8 A7                      .byte      0xa8, 0xa7
0000B05E  48 6D DA 26                pea.l      -$25da(a5)
0000B062  48 78 00 10                pea.l      $10.w
0000B066  2F 3C 00 0F 00 1F          move.l     #$f001f, -(a7)
0000B06C  A8 A7                      .byte      0xa8, 0xa7
0000B06E  48 6D DA 2E                pea.l      -$25d2(a5)
0000B072  48 78 00 1F                pea.l      $1f.w
0000B076  2F 3C 00 0F 00 2E          move.l     #$f002e, -(a7)
0000B07C  A8 A7                      .byte      0xa8, 0xa7
0000B07E  48 6D DA 36                pea.l      -$25ca(a5)
0000B082  48 78 00 2E                pea.l      $2e.w
0000B086  2F 3C 00 0F 00 3D          move.l     #$f003d, -(a7)
0000B08C  A8 A7                      .byte      0xa8, 0xa7
0000B08E  48 6D DA 3E                pea.l      -$25c2(a5)
0000B092  48 78 00 3D                pea.l      $3d.w
0000B096  2F 3C 00 0F 00 4C          move.l     #$f004c, -(a7)
0000B09C  A8 A7                      .byte      0xa8, 0xa7
0000B09E  48 6D D9 EA                pea.l      -$2616(a5)
0000B0A2  48 78 00 10                pea.l      $10.w
0000B0A6  2F 3C 00 0F 00 1F          move.l     #$f001f, -(a7)
0000B0AC  A8 A7                      .byte      0xa8, 0xa7
0000B0AE  48 6D D9 F2                pea.l      -$260e(a5)
0000B0B2  48 78 00 1F                pea.l      $1f.w
0000B0B6  2F 3C 00 0F 00 2E          move.l     #$f002e, -(a7)
0000B0BC  A8 A7                      .byte      0xa8, 0xa7
0000B0BE  48 6D D9 FA                pea.l      -$2606(a5)
0000B0C2  48 78 00 2E                pea.l      $2e.w
0000B0C6  2F 3C 00 0F 00 3D          move.l     #$f003d, -(a7)
0000B0CC  A8 A7                      .byte      0xa8, 0xa7
0000B0CE  48 6D DA 02                pea.l      -$25fe(a5)
0000B0D2  48 78 00 3D                pea.l      $3d.w
0000B0D6  2F 3C 00 0F 00 4C          move.l     #$f004c, -(a7)
0000B0DC  A8 A7                      .byte      0xa8, 0xa7
0000B0DE  48 6D D8 5A                pea.l      -$27a6(a5)
0000B0E2  2F 3C 00 18 00 10          move.l     #$180010, -(a7)
0000B0E8  2F 3C 00 4C 00 4C          move.l     #$4c004c, -(a7)
0000B0EE  A8 A7                      .byte      0xa8, 0xa7
0000B0F0  48 6D D8 42                pea.l      -$27be(a5)
0000B0F4  2F 3C 00 4C 00 10          move.l     #$4c0010, -(a7)
0000B0FA  2F 3C 00 80 00 3D          move.l     #$80003d, -(a7)
0000B100  A8 A7                      .byte      0xa8, 0xa7
0000B102  48 6D D8 3A                pea.l      -$27c6(a5)
0000B106  2F 3C 00 4C 00 3D          move.l     #$4c003d, -(a7)
0000B10C  2F 3C 00 80 00 6A          move.l     #$80006a, -(a7)
0000B112  A8 A7                      .byte      0xa8, 0xa7
0000B114  48 6D D8 32                pea.l      -$27ce(a5)
0000B118  2F 3C 00 4C 00 6A          move.l     #$4c006a, -(a7)
0000B11E  2F 3C 00 80 00 97          move.l     #$800097, -(a7)
0000B124  A8 A7                      .byte      0xa8, 0xa7
0000B126  48 6D D8 6E                pea.l      -$2792(a5)
0000B12A  2F 3C 00 7B 00 00          move.l     #$7b0000, -(a7)
0000B130  2F 3C 00 C8 00 5F          move.l     #$c8005f, -(a7)
0000B136  A8 A7                      .byte      0xa8, 0xa7
0000B138  48 6D D8 76                pea.l      -$278a(a5)
0000B13C  2F 3C 00 7B 00 5F          move.l     #$7b005f, -(a7)
0000B142  2F 3C 00 C8 00 BE          move.l     #$c800be, -(a7)
0000B148  A8 A7                      .byte      0xa8, 0xa7
0000B14A  48 6D D8 7E                pea.l      -$2782(a5)
0000B14E  2F 3C 00 2E 00 10          move.l     #$2e0010, -(a7)
0000B154  2F 3C 00 71 00 6F          move.l     #$71006f, -(a7)
0000B15A  A8 A7                      .byte      0xa8, 0xa7
0000B15C  48 6D D8 E8                pea.l      -$2718(a5)
0000B160  48 78 00 C4                pea.l      $c4.w
0000B164  2F 3C 00 E0 01 48          move.l     #$e00148, -(a7)
0000B16A  A8 A7                      .byte      0xa8, 0xa7
0000B16C  48 6D D8 A0                pea.l      -$2760(a5)
0000B170  42 A7                      clr.l      -(a7)
0000B172  2F 3C 00 50 00 2C          move.l     #$50002c, -(a7)
0000B178  A8 A7                      .byte      0xa8, 0xa7
0000B17A  48 6D D8 A8                pea.l      -$2758(a5)
0000B17E  48 78 00 2C                pea.l      $2c.w
0000B182  2F 3C 00 50 00 58          move.l     #$500058, -(a7)
0000B188  A8 A7                      .byte      0xa8, 0xa7
0000B18A  48 6D D8 B0                pea.l      -$2750(a5)
0000B18E  48 78 00 58                pea.l      $58.w
0000B192  2F 3C 00 50 00 84          move.l     #$500084, -(a7)
0000B198  A8 A7                      .byte      0xa8, 0xa7
0000B19A  48 6D D8 B8                pea.l      -$2748(a5)
0000B19E  48 78 00 84                pea.l      $84.w
0000B1A2  2F 3C 00 50 00 AE          move.l     #$5000ae, -(a7)
0000B1A8  A8 A7                      .byte      0xa8, 0xa7
0000B1AA  48 6D D8 C0                pea.l      -$2740(a5)
0000B1AE  2F 3C 00 50 00 00          move.l     #$500000, -(a7)
0000B1B4  2F 3C 00 A0 00 2C          move.l     #$a0002c, -(a7)
0000B1BA  A8 A7                      .byte      0xa8, 0xa7
0000B1BC  48 6D D8 C8                pea.l      -$2738(a5)
0000B1C0  2F 3C 00 50 00 2C          move.l     #$50002c, -(a7)
0000B1C6  2F 3C 00 A0 00 58          move.l     #$a00058, -(a7)
0000B1CC  A8 A7                      .byte      0xa8, 0xa7
0000B1CE  48 6D D8 D0                pea.l      -$2730(a5)
0000B1D2  2F 3C 00 50 00 58          move.l     #$500058, -(a7)
0000B1D8  2F 3C 00 A0 00 84          move.l     #$a00084, -(a7)
0000B1DE  A8 A7                      .byte      0xa8, 0xa7
0000B1E0  48 6D D9 7E                pea.l      -$2682(a5)
0000B1E4  48 78 00 31                pea.l      $31.w
0000B1E8  2F 3C 00 1A 00 4B          move.l     #$1a004b, -(a7)
0000B1EE  A8 A7                      .byte      0xa8, 0xa7
0000B1F0  2B 6D D9 7E D9 C6          move.l     -$2682(a5), -$263a(a5)
0000B1F6  2B 6D D9 82 D9 CA          move.l     -$267e(a5), -$2636(a5)
0000B1FC  2B 6D D9 7E D9 A2          move.l     -$2682(a5), -$265e(a5)
0000B202  2B 6D D9 82 D9 A6          move.l     -$267e(a5), -$265a(a5)
0000B208  2B 6D D9 7E D9 5A          move.l     -$2682(a5), -$26a6(a5)
0000B20E  2B 6D D9 82 D9 5E          move.l     -$267e(a5), -$26a2(a5)
0000B214  2B 6D D9 7E D9 36          move.l     -$2682(a5), -$26ca(a5)
0000B21A  2B 6D D9 82 D9 3A          move.l     -$267e(a5), -$26c6(a5)
0000B220  2B 6D D9 7E D9 12          move.l     -$2682(a5), -$26ee(a5)
0000B226  2B 6D D9 82 D9 16          move.l     -$267e(a5), -$26ea(a5)
0000B22C  48 6D D6 EE                pea.l      -$2912(a5)
0000B230  42 A7                      clr.l      -(a7)
0000B232  2F 3C 00 50 00 D6          move.l     #$5000d6, -(a7)
0000B238  A8 A7                      .byte      0xa8, 0xa7
0000B23A  48 6D D7 2E                pea.l      -$28d2(a5)
0000B23E  2F 3C 00 50 00 00          move.l     #$500000, -(a7)
0000B244  2F 3C 00 72 00 60          move.l     #$720060, -(a7)
0000B24A  A8 A7                      .byte      0xa8, 0xa7
0000B24C  48 6D D7 1E                pea.l      -$28e2(a5)
0000B250  2F 3C 00 50 00 60          move.l     #$500060, -(a7)
0000B256  2F 3C 00 72 00 6B          move.l     #$72006b, -(a7)
0000B25C  A8 A7                      .byte      0xa8, 0xa7
0000B25E  48 6D D7 0E                pea.l      -$28f2(a5)
0000B262  2F 3C 00 50 00 6B          move.l     #$50006b, -(a7)
0000B268  2F 3C 00 72 00 7E          move.l     #$72007e, -(a7)
0000B26E  A8 A7                      .byte      0xa8, 0xa7
0000B270  48 6D D6 FE                pea.l      -$2902(a5)
0000B274  2F 3C 00 50 00 7E          move.l     #$50007e, -(a7)
0000B27A  2F 3C 00 72 00 8E          move.l     #$72008e, -(a7)
0000B280  A8 A7                      .byte      0xa8, 0xa7
0000B282  48 6D D7 26                pea.l      -$28da(a5)
0000B286  2F 3C 00 C8 00 C5          move.l     #$c800c5, -(a7)
0000B28C  2F 3C 00 EA 01 25          move.l     #$ea0125, -(a7)
0000B292  A8 A7                      .byte      0xa8, 0xa7
0000B294  48 6D D7 16                pea.l      -$28ea(a5)
0000B298  2F 3C 00 C8 01 2D          move.l     #$c8012d, -(a7)
0000B29E  2F 3C 00 EA 01 38          move.l     #$ea0138, -(a7)
0000B2A4  A8 A7                      .byte      0xa8, 0xa7
0000B2A6  48 6D D7 06                pea.l      -$28fa(a5)
0000B2AA  2F 3C 00 C8 01 2D          move.l     #$c8012d, -(a7)
0000B2B0  2F 3C 00 EA 01 40          move.l     #$ea0140, -(a7)
0000B2B6  A8 A7                      .byte      0xa8, 0xa7
0000B2B8  48 6D D6 F6                pea.l      -$290a(a5)
0000B2BC  2F 3C 00 C8 01 2D          move.l     #$c8012d, -(a7)
0000B2C2  2F 3C 00 EA 01 3D          move.l     #$ea013d, -(a7)
0000B2C8  A8 A7                      .byte      0xa8, 0xa7
0000B2CA  48 6D D4 76                pea.l      -$2b8a(a5)
0000B2CE  2F 3C 00 AC 00 BC          move.l     #$ac00bc, -(a7)
0000B2D4  2F 3C 00 BA 00 C4          move.l     #$ba00c4, -(a7)
0000B2DA  A8 A7                      .byte      0xa8, 0xa7
0000B2DC  48 6D D4 5E                pea.l      -$2ba2(a5)
0000B2E0  2F 3C 01 0E 00 00          move.l     #$10e0000, -(a7)
0000B2E6  2F 3C 01 2C 00 1E          move.l     #$12c001e, -(a7)
0000B2EC  A8 A7                      .byte      0xa8, 0xa7
0000B2EE  48 6D D4 46                pea.l      -$2bba(a5)
0000B2F2  2F 3C 00 A0 00 00          move.l     #$a00000, -(a7)
0000B2F8  2F 3C 00 C8 00 28          move.l     #$c80028, -(a7)
0000B2FE  A8 A7                      .byte      0xa8, 0xa7
0000B300  48 6D D4 4E                pea.l      -$2bb2(a5)
0000B304  2F 3C 00 A0 00 28          move.l     #$a00028, -(a7)
0000B30A  2F 3C 00 C8 00 50          move.l     #$c80050, -(a7)
0000B310  A8 A7                      .byte      0xa8, 0xa7
0000B312  48 6D D4 56                pea.l      -$2baa(a5)
0000B316  2F 3C 00 A0 00 50          move.l     #$a00050, -(a7)
0000B31C  2F 3C 00 C8 00 78          move.l     #$c80078, -(a7)
0000B322  A8 A7                      .byte      0xa8, 0xa7
0000B324  48 6D D4 3E                pea.l      -$2bc2(a5)
0000B328  2F 3C 00 90 00 C4          move.l     #$9000c4, -(a7)
0000B32E  2F 3C 00 C1 01 48          move.l     #$c10148, -(a7)
0000B334  A8 A7                      .byte      0xa8, 0xa7
0000B336  48 6D D4 36                pea.l      -$2bca(a5)
0000B33A  2F 3C 00 C1 01 18          move.l     #$c10118, -(a7)
0000B340  2F 3C 00 F2 01 48          move.l     #$f20148, -(a7)
0000B346  A8 A7                      .byte      0xa8, 0xa7
0000B348  48 6D D4 2E                pea.l      -$2bd2(a5)
0000B34C  2F 3C 01 0A 00 A3          move.l     #$10a00a3, -(a7)
0000B352  2F 3C 01 3B 01 27          move.l     #$13b0127, -(a7)
0000B358  A8 A7                      .byte      0xa8, 0xa7
0000B35A  3B 6D D4 34 D4 28          move.w     -$2bcc(a5), -$2bd8(a5)
0000B360  70 30                      moveq      #$30, d0
0000B362  D0 6D D4 28                add.w      -$2bd8(a5), d0
0000B366  3B 40 D4 2C                move.w     d0, -$2bd4(a5)
0000B36A  3B 6D D4 2E D4 26          move.w     -$2bd2(a5), -$2bda(a5)
0000B370  3B 6D D4 32 D4 2A          move.w     -$2bce(a5), -$2bd6(a5)
0000B376  48 6D D6 CE                pea.l      -$2932(a5)
0000B37A  2F 3C 00 72 00 00          move.l     #$720000, -(a7)
0000B380  2F 3C 00 BA 00 9E          move.l     #$ba009e, -(a7)
0000B386  A8 A7                      .byte      0xa8, 0xa7
0000B388  48 6D D6 C6                pea.l      -$293a(a5)
0000B38C  48 78 00 D6                pea.l      $d6.w
0000B390  2F 3C 00 48 01 48          move.l     #$480148, -(a7)
0000B396  A8 A7                      .byte      0xa8, 0xa7
0000B398  48 6D D6 BE                pea.l      -$2942(a5)
0000B39C  2F 3C 00 48 00 D6          move.l     #$4800d6, -(a7)
0000B3A2  2F 3C 00 90 01 48          move.l     #$900148, -(a7)
0000B3A8  A8 A7                      .byte      0xa8, 0xa7
0000B3AA  48 6D D6 86                pea.l      -$297a(a5)
0000B3AE  2F 3C 00 BA 00 00          move.l     #$ba0000, -(a7)
0000B3B4  2F 3C 00 EF 00 BF          move.l     #$ef00bf, -(a7)
0000B3BA  A8 A7                      .byte      0xa8, 0xa7
0000B3BC  48 6D D6 7E                pea.l      -$2982(a5)
0000B3C0  2F 3C 01 0A 00 A3          move.l     #$10a00a3, -(a7)
0000B3C6  2F 3C 01 3F 01 62          move.l     #$13f0162, -(a7)
0000B3CC  A8 A7                      .byte      0xa8, 0xa7
0000B3CE  48 6D D5 8E                pea.l      -$2a72(a5)
0000B3D2  42 A7                      clr.l      -(a7)
0000B3D4  2F 3C 00 64 00 50          move.l     #$640050, -(a7)
0000B3DA  A8 A7                      .byte      0xa8, 0xa7
0000B3DC  48 6D D5 96                pea.l      -$2a6a(a5)
0000B3E0  2F 3C 00 64 00 00          move.l     #$640000, -(a7)
0000B3E6  2F 3C 00 C8 00 50          move.l     #$c80050, -(a7)
0000B3EC  A8 A7                      .byte      0xa8, 0xa7
0000B3EE  48 6D D5 16                pea.l      -$2aea(a5)
0000B3F2  48 78 00 50                pea.l      $50.w
0000B3F6  2F 3C 00 30 00 60          move.l     #$300060, -(a7)
0000B3FC  A8 A7                      .byte      0xa8, 0xa7
0000B3FE  48 6D D5 1E                pea.l      -$2ae2(a5)
0000B402  48 78 00 60                pea.l      $60.w
0000B406  2F 3C 00 30 00 70          move.l     #$300070, -(a7)
0000B40C  A8 A7                      .byte      0xa8, 0xa7
0000B40E  48 6D D5 26                pea.l      -$2ada(a5)
0000B412  48 78 00 70                pea.l      $70.w
0000B416  2F 3C 00 30 00 80          move.l     #$300080, -(a7)
0000B41C  A8 A7                      .byte      0xa8, 0xa7
0000B41E  48 6D D5 2E                pea.l      -$2ad2(a5)
0000B422  48 78 00 80                pea.l      $80.w
0000B426  2F 3C 00 30 00 90          move.l     #$300090, -(a7)
0000B42C  A8 A7                      .byte      0xa8, 0xa7
0000B42E  48 6D D5 36                pea.l      -$2aca(a5)
0000B432  48 78 00 50                pea.l      $50.w
0000B436  2F 3C 00 30 00 60          move.l     #$300060, -(a7)
0000B43C  A8 A7                      .byte      0xa8, 0xa7
0000B43E  48 6D D5 3E                pea.l      -$2ac2(a5)
0000B442  48 78 00 90                pea.l      $90.w
0000B446  2F 3C 00 30 00 A0          move.l     #$3000a0, -(a7)
0000B44C  A8 A7                      .byte      0xa8, 0xa7
0000B44E  48 6D D5 46                pea.l      -$2aba(a5)
0000B452  48 78 00 A0                pea.l      $a0.w
0000B456  2F 3C 00 30 00 B0          move.l     #$3000b0, -(a7)
0000B45C  A8 A7                      .byte      0xa8, 0xa7
0000B45E  48 6D D5 4E                pea.l      -$2ab2(a5)
0000B462  48 78 00 B0                pea.l      $b0.w
0000B466  2F 3C 00 30 00 C0          move.l     #$3000c0, -(a7)
0000B46C  A8 A7                      .byte      0xa8, 0xa7
0000B46E  48 6D D5 56                pea.l      -$2aaa(a5)
0000B472  2F 3C 00 30 00 50          move.l     #$300050, -(a7)
0000B478  2F 3C 00 60 00 60          move.l     #$600060, -(a7)
0000B47E  A8 A7                      .byte      0xa8, 0xa7
0000B480  48 6D D5 0E                pea.l      -$2af2(a5)
0000B484  2F 3C 00 FA 00 69          move.l     #$fa0069, -(a7)
0000B48A  2F 3C 01 2A 00 79          move.l     #$12a0079, -(a7)
0000B490  A8 A7                      .byte      0xa8, 0xa7
0000B492  48 6D D5 06                pea.l      -$2afa(a5)
0000B496  2F 3C 00 FA 01 8B          move.l     #$fa018b, -(a7)
0000B49C  2F 3C 01 2A 01 9B          move.l     #$12a019b, -(a7)
0000B4A2  A8 A7                      .byte      0xa8, 0xa7
0000B4A4  48 6D D4 AE                pea.l      -$2b52(a5)
0000B4A8  2F 3C 00 30 00 50          move.l     #$300050, -(a7)
0000B4AE  2F 3C 00 53 00 73          move.l     #$530073, -(a7)
0000B4B4  A8 A7                      .byte      0xa8, 0xa7
0000B4B6  48 6D D4 B6                pea.l      -$2b4a(a5)
0000B4BA  2F 3C 00 3C 00 82          move.l     #$3c0082, -(a7)
0000B4C0  2F 3C 00 5F 00 A5          move.l     #$5f00a5, -(a7)
0000B4C6  A8 A7                      .byte      0xa8, 0xa7
0000B4C8  48 6D D4 BE                pea.l      -$2b42(a5)
0000B4CC  2F 3C 00 3C 00 A5          move.l     #$3c00a5, -(a7)
0000B4D2  2F 3C 00 5F 00 C8          move.l     #$5f00c8, -(a7)
0000B4D8  A8 A7                      .byte      0xa8, 0xa7
0000B4DA  48 6D D4 C6                pea.l      -$2b3a(a5)
0000B4DE  2F 3C 00 5F 00 82          move.l     #$5f0082, -(a7)
0000B4E4  2F 3C 00 82 00 A5          move.l     #$8200a5, -(a7)
0000B4EA  A8 A7                      .byte      0xa8, 0xa7
0000B4EC  48 6D D4 CE                pea.l      -$2b32(a5)
0000B4F0  2F 3C 00 5F 00 A5          move.l     #$5f00a5, -(a7)
0000B4F6  2F 3C 00 82 00 C8          move.l     #$8200c8, -(a7)
0000B4FC  A8 A7                      .byte      0xa8, 0xa7
0000B4FE  48 6D D4 D6                pea.l      -$2b2a(a5)
0000B502  2F 3C 00 82 00 5F          move.l     #$82005f, -(a7)
0000B508  2F 3C 00 A5 00 82          move.l     #$a50082, -(a7)
0000B50E  A8 A7                      .byte      0xa8, 0xa7
0000B510  48 6D D4 DE                pea.l      -$2b22(a5)
0000B514  2F 3C 00 82 00 82          move.l     #$820082, -(a7)
0000B51A  2F 3C 00 A5 00 A5          move.l     #$a500a5, -(a7)
0000B520  A8 A7                      .byte      0xa8, 0xa7
0000B522  48 6D D4 E6                pea.l      -$2b1a(a5)
0000B526  2F 3C 00 82 00 A5          move.l     #$8200a5, -(a7)
0000B52C  2F 3C 00 A5 00 C8          move.l     #$a500c8, -(a7)
0000B532  A8 A7                      .byte      0xa8, 0xa7
0000B534  48 6D D4 EE                pea.l      -$2b12(a5)
0000B538  2F 3C 00 A5 00 5F          move.l     #$a5005f, -(a7)
0000B53E  2F 3C 00 C8 00 82          move.l     #$c80082, -(a7)
0000B544  A8 A7                      .byte      0xa8, 0xa7
0000B546  48 6D D4 F6                pea.l      -$2b0a(a5)
0000B54A  2F 3C 00 A5 00 82          move.l     #$a50082, -(a7)
0000B550  2F 3C 00 C8 00 A5          move.l     #$c800a5, -(a7)
0000B556  A8 A7                      .byte      0xa8, 0xa7
0000B558  48 6D D4 FE                pea.l      -$2b02(a5)
0000B55C  2F 3C 00 A5 00 A5          move.l     #$a500a5, -(a7)
0000B562  2F 3C 00 C8 00 C8          move.l     #$c800c8, -(a7)
0000B568  A8 A7                      .byte      0xa8, 0xa7
0000B56A  48 6D D4 7E                pea.l      -$2b82(a5)
0000B56E  2F 3C 01 36 00 99          move.l     #$1360099, -(a7)
0000B574  2F 3C 01 59 00 BC          move.l     #$15900bc, -(a7)
0000B57A  A8 A7                      .byte      0xa8, 0xa7
0000B57C  48 6D D4 86                pea.l      -$2b7a(a5)
0000B580  2F 3C 01 36 00 BC          move.l     #$13600bc, -(a7)
0000B586  2F 3C 01 59 00 DF          move.l     #$15900df, -(a7)
0000B58C  A8 A7                      .byte      0xa8, 0xa7
0000B58E  48 6D D4 8E                pea.l      -$2b72(a5)
0000B592  2F 3C 01 36 00 DF          move.l     #$13600df, -(a7)
0000B598  2F 3C 01 59 01 02          move.l     #$1590102, -(a7)
0000B59E  A8 A7                      .byte      0xa8, 0xa7
0000B5A0  48 6D D4 96                pea.l      -$2b6a(a5)
0000B5A4  2F 3C 01 36 01 02          move.l     #$1360102, -(a7)
0000B5AA  2F 3C 01 59 01 25          move.l     #$1590125, -(a7)
0000B5B0  A8 A7                      .byte      0xa8, 0xa7
0000B5B2  48 6D D4 9E                pea.l      -$2b62(a5)
0000B5B6  2F 3C 01 36 01 25          move.l     #$1360125, -(a7)
0000B5BC  2F 3C 01 59 01 48          move.l     #$1590148, -(a7)
0000B5C2  A8 A7                      .byte      0xa8, 0xa7
0000B5C4  48 6D D4 A6                pea.l      -$2b5a(a5)
0000B5C8  2F 3C 01 36 01 48          move.l     #$1360148, -(a7)
0000B5CE  2F 3C 01 59 01 6B          move.l     #$159016b, -(a7)
0000B5D4  A8 A7                      .byte      0xa8, 0xa7
0000B5D6  48 6D D6 76                pea.l      -$298a(a5)
0000B5DA  2F 3C 00 F1 00 00          move.l     #$f10000, -(a7)
0000B5E0  2F 3C 01 00 00 0E          move.l     #$100000e, -(a7)
0000B5E6  A8 A7                      .byte      0xa8, 0xa7
0000B5E8  48 6D D6 6E                pea.l      -$2992(a5)
0000B5EC  2F 3C 00 F1 00 0E          move.l     #$f1000e, -(a7)
0000B5F2  2F 3C 01 00 00 1A          move.l     #$100001a, -(a7)
0000B5F8  A8 A7                      .byte      0xa8, 0xa7
0000B5FA  48 6D D6 66                pea.l      -$299a(a5)
0000B5FE  2F 3C 00 F1 00 1A          move.l     #$f1001a, -(a7)
0000B604  2F 3C 01 00 00 28          move.l     #$1000028, -(a7)
0000B60A  A8 A7                      .byte      0xa8, 0xa7
0000B60C  48 6D D6 5E                pea.l      -$29a2(a5)
0000B610  2F 3C 00 F1 00 28          move.l     #$f10028, -(a7)
0000B616  2F 3C 01 00 00 36          move.l     #$1000036, -(a7)
0000B61C  A8 A7                      .byte      0xa8, 0xa7
0000B61E  48 6D D6 56                pea.l      -$29aa(a5)
0000B622  2F 3C 00 F1 00 36          move.l     #$f10036, -(a7)
0000B628  2F 3C 01 00 00 41          move.l     #$1000041, -(a7)
0000B62E  A8 A7                      .byte      0xa8, 0xa7
0000B630  48 6D D6 4E                pea.l      -$29b2(a5)
0000B634  2F 3C 00 F1 00 41          move.l     #$f10041, -(a7)
0000B63A  2F 3C 01 00 00 4C          move.l     #$100004c, -(a7)
0000B640  A8 A7                      .byte      0xa8, 0xa7
0000B642  48 6D D6 46                pea.l      -$29ba(a5)
0000B646  2F 3C 00 F1 00 4C          move.l     #$f1004c, -(a7)
0000B64C  2F 3C 01 00 00 5B          move.l     #$100005b, -(a7)
0000B652  A8 A7                      .byte      0xa8, 0xa7
0000B654  48 6D D6 3E                pea.l      -$29c2(a5)
0000B658  2F 3C 00 F1 00 5B          move.l     #$f1005b, -(a7)
0000B65E  2F 3C 01 00 00 68          move.l     #$1000068, -(a7)
0000B664  A8 A7                      .byte      0xa8, 0xa7
0000B666  48 6D D6 36                pea.l      -$29ca(a5)
0000B66A  2F 3C 00 F1 00 68          move.l     #$f10068, -(a7)
0000B670  2F 3C 01 00 00 6E          move.l     #$100006e, -(a7)
0000B676  A8 A7                      .byte      0xa8, 0xa7
0000B678  48 6D D6 2E                pea.l      -$29d2(a5)
0000B67C  2F 3C 00 F1 00 6E          move.l     #$f1006e, -(a7)
0000B682  2F 3C 01 00 00 78          move.l     #$1000078, -(a7)
0000B688  A8 A7                      .byte      0xa8, 0xa7
0000B68A  48 6D D6 26                pea.l      -$29da(a5)
0000B68E  2F 3C 00 F1 00 78          move.l     #$f10078, -(a7)
0000B694  2F 3C 01 00 00 86          move.l     #$1000086, -(a7)
0000B69A  A8 A7                      .byte      0xa8, 0xa7
0000B69C  48 6D D6 1E                pea.l      -$29e2(a5)
0000B6A0  2F 3C 00 F1 00 86          move.l     #$f10086, -(a7)
0000B6A6  2F 3C 01 00 00 90          move.l     #$1000090, -(a7)
0000B6AC  A8 A7                      .byte      0xa8, 0xa7
0000B6AE  48 6D D6 16                pea.l      -$29ea(a5)
0000B6B2  2F 3C 00 F1 00 90          move.l     #$f10090, -(a7)
0000B6B8  2F 3C 01 00 00 A2          move.l     #$10000a2, -(a7)
0000B6BE  A8 A7                      .byte      0xa8, 0xa7
0000B6C0  48 6D D6 0E                pea.l      -$29f2(a5)
0000B6C4  2F 3C 00 F1 00 A2          move.l     #$f100a2, -(a7)
0000B6CA  2F 3C 01 00 00 AF          move.l     #$10000af, -(a7)
0000B6D0  A8 A7                      .byte      0xa8, 0xa7
0000B6D2  48 6D D6 06                pea.l      -$29fa(a5)
0000B6D6  2F 3C 00 F1 00 AF          move.l     #$f100af, -(a7)
0000B6DC  2F 3C 01 00 00 BE          move.l     #$10000be, -(a7)
0000B6E2  A8 A7                      .byte      0xa8, 0xa7
0000B6E4  48 6D D5 FE                pea.l      -$2a02(a5)
0000B6E8  2F 3C 00 F1 00 BE          move.l     #$f100be, -(a7)
0000B6EE  2F 3C 01 00 00 C9          move.l     #$10000c9, -(a7)
0000B6F4  A8 A7                      .byte      0xa8, 0xa7
0000B6F6  48 6D D5 F6                pea.l      -$2a0a(a5)
0000B6FA  2F 3C 00 F1 00 C9          move.l     #$f100c9, -(a7)
0000B700  2F 3C 01 00 00 D8          move.l     #$10000d8, -(a7)
0000B706  A8 A7                      .byte      0xa8, 0xa7
0000B708  48 6D D5 EE                pea.l      -$2a12(a5)
0000B70C  2F 3C 00 F1 00 D8          move.l     #$f100d8, -(a7)
0000B712  2F 3C 01 00 00 E4          move.l     #$10000e4, -(a7)
0000B718  A8 A7                      .byte      0xa8, 0xa7
0000B71A  48 6D D5 E6                pea.l      -$2a1a(a5)
0000B71E  2F 3C 01 00 00 00          move.l     #$1000000, -(a7)
0000B724  2F 3C 01 0F 00 0C          move.l     #$10f000c, -(a7)
0000B72A  A8 A7                      .byte      0xa8, 0xa7
0000B72C  48 6D D5 DE                pea.l      -$2a22(a5)
0000B730  2F 3C 01 00 00 0C          move.l     #$100000c, -(a7)
0000B736  2F 3C 01 0F 00 18          move.l     #$10f0018, -(a7)
0000B73C  A8 A7                      .byte      0xa8, 0xa7
0000B73E  48 6D D5 D6                pea.l      -$2a2a(a5)
0000B742  2F 3C 01 00 00 18          move.l     #$1000018, -(a7)
0000B748  2F 3C 01 0F 00 26          move.l     #$10f0026, -(a7)
0000B74E  A8 A7                      .byte      0xa8, 0xa7
0000B750  48 6D D5 CE                pea.l      -$2a32(a5)
0000B754  2F 3C 01 00 00 26          move.l     #$1000026, -(a7)
0000B75A  2F 3C 01 0F 00 34          move.l     #$10f0034, -(a7)
0000B760  A8 A7                      .byte      0xa8, 0xa7
0000B762  48 6D D5 C6                pea.l      -$2a3a(a5)
0000B766  2F 3C 01 00 00 34          move.l     #$1000034, -(a7)
0000B76C  2F 3C 01 0F 00 48          move.l     #$10f0048, -(a7)
0000B772  A8 A7                      .byte      0xa8, 0xa7
0000B774  48 6D D5 BE                pea.l      -$2a42(a5)
0000B778  2F 3C 01 00 00 48          move.l     #$1000048, -(a7)
0000B77E  2F 3C 01 0F 00 56          move.l     #$10f0056, -(a7)
0000B784  A8 A7                      .byte      0xa8, 0xa7
0000B786  48 6D D5 B6                pea.l      -$2a4a(a5)
0000B78A  2F 3C 01 00 00 56          move.l     #$1000056, -(a7)
0000B790  2F 3C 01 0F 00 64          move.l     #$10f0064, -(a7)
0000B796  A8 A7                      .byte      0xa8, 0xa7
0000B798  48 6D D5 AE                pea.l      -$2a52(a5)
0000B79C  2F 3C 01 00 00 64          move.l     #$1000064, -(a7)
0000B7A2  2F 3C 01 0F 00 70          move.l     #$10f0070, -(a7)
0000B7A8  A8 A7                      .byte      0xa8, 0xa7
0000B7AA  48 6D D5 A6                pea.l      -$2a5a(a5)
0000B7AE  2F 3C 01 00 00 70          move.l     #$1000070, -(a7)
0000B7B4  2F 3C 01 0F 00 76          move.l     #$10f0076, -(a7)
0000B7BA  A8 A7                      .byte      0xa8, 0xa7
0000B7BC  48 6D D5 9E                pea.l      -$2a62(a5)
0000B7C0  2F 3C 01 00 00 76          move.l     #$1000076, -(a7)
0000B7C6  2F 3C 01 0F 00 DF          move.l     #$10f00df, -(a7)
0000B7CC  A8 A7                      .byte      0xa8, 0xa7
0000B7CE  4E 5E                      unlk       a6
0000B7D0  4E 75                      rts

; MacsBug symbol trailer for SetTheRects: 8B 53 65 74 54 68 65 52 65 63 74 73

SetThePorts: ; 0000B7E0..0000B876
0000B7E0  4E 56 00 00                link.w     a6, #$0
0000B7E4  48 6D D3 F6                pea.l      -$2c0a(a5)
0000B7E8  48 6D D7 FC                pea.l      -$2804(a5)
0000B7EC  4E B9 00 00 00 E8          jsr        $e8.l
0000B7F2  48 6D D3 F2                pea.l      -$2c0e(a5)
0000B7F6  48 6D D7 FC                pea.l      -$2804(a5)
0000B7FA  4E B9 00 00 00 E8          jsr        $e8.l
0000B800  48 6D D3 EA                pea.l      -$2c16(a5)
0000B804  48 6D D7 FC                pea.l      -$2804(a5)
0000B808  4E B9 00 00 00 E0          jsr        $e0.l
0000B80E  48 6D D3 E6                pea.l      -$2c1a(a5)
0000B812  48 6D D7 FC                pea.l      -$2804(a5)
0000B816  4E B9 00 00 00 E0          jsr        $e0.l
0000B81C  3F 3C 09 C4                move.w     #$9c4, -(a7)
0000B820  4E B9 00 00 00 F0          jsr        $f0.l
0000B826  48 6D D3 FA                pea.l      -$2c06(a5)
0000B82A  48 6D D7 F4                pea.l      -$280c(a5)
0000B82E  4E B9 00 00 00 E8          jsr        $e8.l
0000B834  48 6D D3 EE                pea.l      -$2c12(a5)
0000B838  48 6D D7 EC                pea.l      -$2814(a5)
0000B83C  4E B9 00 00 00 E8          jsr        $e8.l
0000B842  3F 3C 01 90                move.w     #$190, -(a7)
0000B846  4E B9 00 00 00 F0          jsr        $f0.l
0000B84C  48 6D D3 E2                pea.l      -$2c1e(a5)
0000B850  48 6D D7 EC                pea.l      -$2814(a5)
0000B854  4E B9 00 00 00 E0          jsr        $e0.l
0000B85A  3F 3C 01 C2                move.w     #$1c2, -(a7)
0000B85E  4E B9 00 00 00 F0          jsr        $f0.l
0000B864  48 6D D3 FE                pea.l      -$2c02(a5)
0000B868  48 6D D7 F4                pea.l      -$280c(a5)
0000B86C  4E B9 00 00 00 E8          jsr        $e8.l
0000B872  4E 5E                      unlk       a6
0000B874  4E 75                      rts

; MacsBug symbol trailer for SetThePorts: 8B 53 65 74 54 68 65 50 6F 72 74 73

