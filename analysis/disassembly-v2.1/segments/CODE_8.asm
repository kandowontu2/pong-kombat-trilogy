; CODE 8 — MACOS
; resource size: 182 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 00 38 00 06 00 00 00 38

MacOSTailDispatch: ; 00000008..0000001A
00000008  20 6F 00 04                movea.l    $4(a7), a0
0000000C  20 2F 00 08                move.l     $8(a7), d0
00000010  42 67                      clr.w      -(a7)
00000012  A9 EE                      .byte      0xa9, 0xee
00000014  20 5F                      movea.l    (a7)+, a0
00000016  50 4F                      addq.w     #$8, a7
00000018  4E D0                      jmp        (a0)

MacOSHandleAdapter: ; 0000001A..0000002A
0000001A  22 5F                      movea.l    (a7)+, a1
0000001C  20 5F                      movea.l    (a7)+, a0
0000001E  30 1F                      move.w     (a7)+, d0
00000020  2F 09                      move.l     a1, -(a7)
00000022  A0 90                      .byte      0xa0, 0x90
00000024  3F 40 00 04                move.w     d0, $4(a7)
00000028  4E 75                      rts

GetIndexedString: ; 0000002A..00000070
0000002A  4E 56 00 00                link.w     a6, #$0
0000002E  59 4F                      subq.w     #$4, a7
00000030  2F 3C 53 54 52 23          move.l     #$53545223, -(a7)
00000036  3F 2E 00 0A                move.w     $a(a6), -(a7)
0000003A  A9 A0                      .byte      0xa9, 0xa0
0000003C  22 6E 00 0C                movea.l    $c(a6), a1
00000040  42 11                      clr.b      (a1)
00000042  20 1F                      move.l     (a7)+, d0
00000044  67 22                      beq.b      $68
00000046  20 40                      movea.l    d0, a0
00000048  20 50                      movea.l    (a0), a0
0000004A  30 18                      move.w     (a0)+, d0
0000004C  32 2E 00 08                move.w     $8(a6), d1
00000050  67 16                      beq.b      $68
00000052  B2 40                      cmp.w      d0, d1
00000054  62 12                      bhi.b      $68
00000056  70 00                      moveq      #$0, d0
00000058  53 41                      subq.w     #$1, d1
0000005A  67 06                      beq.b      $62
0000005C  10 18                      move.b     (a0)+, d0
0000005E  D1 C0                      adda.l     d0, a0
00000060  60 F6                      bra.b      $58
00000062  10 10                      move.b     (a0), d0
00000064  52 40                      addq.w     #$1, d0
00000066  A0 2E                      .byte      0xa0, 0x2e
00000068  4E 5E                      unlk       a6
0000006A  20 5F                      movea.l    (a7)+, a0
0000006C  50 8F                      addq.l     #$8, a7
0000006E  4E D0                      jmp        (a0)

MacOSHandleSizeAdapter: ; 00000070..00000086
00000070  20 6F 00 04                movea.l    $4(a7), a0
00000074  20 50                      movea.l    (a0), a0
00000076  A9 E1                      .byte      0xa9, 0xe1
00000078  22 6F 00 04                movea.l    $4(a7), a1
0000007C  22 88                      move.l     a0, (a1)
0000007E  3F 40 00 08                move.w     d0, $8(a7)
00000082  2E 9F                      move.l     (a7)+, (a7)
00000084  4E 75                      rts

MacOSStackBlockAdapter: ; 00000086..000000A8
00000086  20 5F                      movea.l    (a7)+, a0
00000088  30 1F                      move.w     (a7)+, d0
0000008A  2F 08                      move.l     a0, -(a7)
0000008C  4E 56 FF E0                link.w     a6, #$ffe0
00000090  20 4F                      movea.l    a7, a0
00000092  31 7C FF FC 00 18          move.w     #$fffc, $18(a0)
00000098  31 7C 00 02 00 1A          move.w     #$2, $1a(a0)
0000009E  31 40 00 1C                move.w     d0, $1c(a0)
000000A2  A2 04                      .byte      0xa2, 0x04
000000A4  4E 5E                      unlk       a6
000000A6  4E 75                      rts

MacOSPointerTailDispatch: ; 000000A8..000000B6
000000A8  22 5F                      movea.l    (a7)+, a1
000000AA  20 5F                      movea.l    (a7)+, a0
000000AC  A0 25                      .byte      0xa0, 0x25
000000AE  2E 80                      move.l     d0, (a7)
000000B0  6A 02                      bpl.b      $b4
000000B2  42 97                      clr.l      (a7)
000000B4  4E D1                      jmp        (a1)

