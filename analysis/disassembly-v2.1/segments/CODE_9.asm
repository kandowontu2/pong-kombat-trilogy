; CODE 9 — ANSI
; resource size: 56 bytes
; Motorola 68000, big-endian

; metadata/gap 00000000..00000008: 00 28 00 02 00 00 00 28

strcpy: ; 00000008..00000024
00000008  2F 0B                      move.l     a3, -(a7)
0000000A  26 6F 00 08                movea.l    $8(a7), a3
0000000E  22 4B                      movea.l    a3, a1
00000010  20 6F 00 0C                movea.l    $c(a7), a0
00000014  52 AF 00 0C                addq.l     #$1, $c(a7)
00000018  12 D0                      move.b     (a0), (a1)+
0000001A  66 F4                      bne.b      $10
0000001C  20 4B                      movea.l    a3, a0
0000001E  26 5F                      movea.l    (a7)+, a3
00000020  4E 75                      rts
00000022  22 6F                      movea.l    -$5556(a7), a1

strlen: ; 00000024..00000038
00000024  00 04 60 02                ori.b      #$2, d4
00000028  52 89                      addq.l     #$1, a1
0000002A  4A 11                      tst.b      (a1)
0000002C  66 FA                      bne.b      $28
0000002E  20 49                      movea.l    a1, a0
00000030  91 EF 00 04                suba.l     $4(a7), a0
00000034  20 08                      move.l     a0, d0
00000036  4E 75                      rts

