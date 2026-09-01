; FUNCTION 0001:0000 (2 instructions)
0001:0000  B8 01 00                     mov ax, 1
0001:0003  CA 02 00                     retf 2

; FUNCTION 0002:0000 (8 instructions)
0002:0000  00 00                        add byte ptr [bx + si], al
0002:0002  00 00                        add byte ptr [bx + si], al
0002:0004  00 00                        add byte ptr [bx + si], al
0002:0006  00 00                        add byte ptr [bx + si], al
0002:0008  00 00                        add byte ptr [bx + si], al
0002:000A  00 00                        add byte ptr [bx + si], al
0002:000C  00 00                        add byte ptr [bx + si], al
0002:000E  00 00                        add byte ptr [bx + si], al

; FUNCTION 0002:0010 (14 instructions)
0002:0010  55                           push bp
0002:0011  8B EC                        mov bp, sp
0002:0013  1E                           push ds
0002:0014  68 77 00                     push 0x77
0002:0017  1E                           push ds
0002:0018  68 70 00                     push 0x70
0002:001B  6A 00                        push 0
0002:001D  9A FF FF 00 00               lcall 0, 0xffff
0002:0022  A3 28 00                     mov word ptr [0x28], ax
0002:0025  8B 46 0C                     mov ax, word ptr [bp + 0xc]
0002:0028  A3 6E 00                     mov word ptr [0x6e], ax
0002:002B  B8 01 00                     mov ax, 1
0002:002E  C9                           leave
0002:002F  C2 0A 00                     ret 0xa

; FUNCTION 0002:0032 (54 instructions)
0002:0032  C8 3C 00 00                  enter 0x3c, 0
0002:0036  57                           push di
0002:0037  56                           push si
0002:0038  C7 46 C4 01 00               mov word ptr [bp - 0x3c], 1
0002:003D  C7 46 C6 0C 00               mov word ptr [bp - 0x3a], 0xc
0002:0042  B8 FF FF                     mov ax, 0xffff
0002:0045  89 46 EA                     mov word ptr [bp - 0x16], ax
0002:0048  89 46 EE                     mov word ptr [bp - 0x12], ax
0002:004B  33 C0                        xor ax, ax
0002:004D  89 46 E8                     mov word ptr [bp - 0x18], ax
0002:0050  89 46 EC                     mov word ptr [bp - 0x14], ax
0002:0053  89 46 F0                     mov word ptr [bp - 0x10], ax
0002:0056  83 3E EC 01 02               cmp word ptr [0x1ec], 2
0002:005B  74 03                        je 0x60
0002:005D  B8 FF FF                     mov ax, 0xffff
0002:0060  89 46 F2                     mov word ptr [bp - 0xe], ax
0002:0063  C7 46 F6 0A 00               mov word ptr [bp - 0xa], 0xa
0002:0068  C7 46 F8 E8 03               mov word ptr [bp - 8], 0x3e8
0002:006D  C7 46 F4 02 00               mov word ptr [bp - 0xc], 2
0002:0072  8D 46 C8                     lea ax, [bp - 0x38]
0002:0075  16                           push ss
0002:0076  50                           push ax
0002:0077  1E                           push ds
0002:0078  68 50 00                     push 0x50
0002:007B  9A FF FF 00 00               lcall 0, 0xffff
0002:0080  8B 76 08                     mov si, word ptr [bp + 8]
0002:0083  83 EE 36                     sub si, 0x36
0002:0086  1B C0                        sbb ax, ax
0002:0088  23 F0                        and si, ax
0002:008A  83 C6 36                     add si, 0x36
0002:008D  8D 46 C4                     lea ax, [bp - 0x3c]
0002:0090  8B F8                        mov di, ax
0002:0092  8C 56 FC                     mov word ptr [bp - 4], ss
0002:0095  89 76 FE                     mov word ptr [bp - 2], si
0002:0098  8B 76 04                     mov si, word ptr [bp + 4]
0002:009B  8B 4E FE                     mov cx, word ptr [bp - 2]
0002:009E  EB 12                        jmp 0xb2
0002:00A0  8E 46 FC                     mov es, word ptr [bp - 4]
0002:00A3  8B DF                        mov bx, di
0002:00A5  47                           inc di
0002:00A6  26 8A 07                     mov al, byte ptr es:[bx]
0002:00A9  8E 46 06                     mov es, word ptr [bp + 6]
0002:00AC  8B DE                        mov bx, si
0002:00AE  46                           inc si
0002:00AF  26 88 07                     mov byte ptr es:[bx], al
0002:00B2  8B C1                        mov ax, cx
0002:00B4  49                           dec cx
0002:00B5  0B C0                        or ax, ax
0002:00B7  75 E7                        jne 0xa0
0002:00B9  99                           cdq
0002:00BA  5E                           pop si
0002:00BB  5F                           pop di
0002:00BC  C9                           leave
0002:00BD  C3                           ret

; FUNCTION 0002:0074 (32 instructions)
0002:0074  C8 16 50 1E                  enter 0x5016, 0x1e
0002:0078  68 50 00                     push 0x50
0002:007B  9A FF FF 00 00               lcall 0, 0xffff
0002:0080  8B 76 08                     mov si, word ptr [bp + 8]
0002:0083  83 EE 36                     sub si, 0x36
0002:0086  1B C0                        sbb ax, ax
0002:0088  23 F0                        and si, ax
0002:008A  83 C6 36                     add si, 0x36
0002:008D  8D 46 C4                     lea ax, [bp - 0x3c]
0002:0090  8B F8                        mov di, ax
0002:0092  8C 56 FC                     mov word ptr [bp - 4], ss
0002:0095  89 76 FE                     mov word ptr [bp - 2], si
0002:0098  8B 76 04                     mov si, word ptr [bp + 4]
0002:009B  8B 4E FE                     mov cx, word ptr [bp - 2]
0002:009E  EB 12                        jmp 0xb2
0002:00A0  8E 46 FC                     mov es, word ptr [bp - 4]
0002:00A3  8B DF                        mov bx, di
0002:00A5  47                           inc di
0002:00A6  26 8A 07                     mov al, byte ptr es:[bx]
0002:00A9  8E 46 06                     mov es, word ptr [bp + 6]
0002:00AC  8B DE                        mov bx, si
0002:00AE  46                           inc si
0002:00AF  26 88 07                     mov byte ptr es:[bx], al
0002:00B2  8B C1                        mov ax, cx
0002:00B4  49                           dec cx
0002:00B5  0B C0                        or ax, ax
0002:00B7  75 E7                        jne 0xa0
0002:00B9  99                           cdq
0002:00BA  5E                           pop si
0002:00BB  5F                           pop di
0002:00BC  C9                           leave
0002:00BD  C3                           ret

; FUNCTION 0002:00BE (50 instructions)
0002:00BE  55                           push bp
0002:00BF  8B EC                        mov bp, sp
0002:00C1  56                           push si
0002:00C2  8B 4E 04                     mov cx, word ptr [bp + 4]
0002:00C5  83 F9 01                     cmp cx, 1
0002:00C8  76 08                        jbe 0xd2
0002:00CA  B8 A5 00                     mov ax, 0xa5
0002:00CD  33 D2                        xor dx, dx
0002:00CF  5E                           pop si
0002:00D0  C9                           leave
0002:00D1  C3                           ret
0002:00D2  8B 76 06                     mov si, word ptr [bp + 6]
0002:00D5  8E 46 08                     mov es, word ptr [bp + 8]
0002:00D8  26 C7 44 04 00 00            mov word ptr es:[si + 4], 0
0002:00DE  83 3E EC 01 03               cmp word ptr [0x1ec], 3
0002:00E3  75 1F                        jne 0x104
0002:00E5  49                           dec cx
0002:00E6  74 26                        je 0x10e
0002:00E8  6A 01                        push 1
0002:00EA  FF 36 D8 01                  push word ptr [0x1d8]
0002:00EE  E8 25 02                     call 0x316
0002:00F1  0B C0                        or ax, ax
0002:00F3  74 19                        je 0x10e
0002:00F5  A1 E2 01                     mov ax, word ptr [0x1e2]
0002:00F8  8E 46 08                     mov es, word ptr [bp + 8]
0002:00FB  26 89 44 04                  mov word ptr es:[si + 4], ax
0002:00FF  6A 00                        push 0
0002:0101  EB 02                        jmp 0x105
0002:0104  51                           push cx
0002:0105  6A 00                        push 0
0002:0107  E8 0C 02                     call 0x316
0002:010A  0B C0                        or ax, ax
0002:010C  75 08                        jne 0x116
0002:010E  B8 A7 00                     mov ax, 0xa7
0002:0111  33 D2                        xor dx, dx
0002:0113  5E                           pop si
0002:0114  C9                           leave
0002:0115  C3                           ret
0002:0116  A1 E6 01                     mov ax, word ptr [0x1e6]
0002:0119  8E 46 08                     mov es, word ptr [bp + 8]
0002:011C  26 89 44 06                  mov word ptr es:[si + 6], ax
0002:0120  A1 E0 01                     mov ax, word ptr [0x1e0]
0002:0123  26 89 04                     mov word ptr es:[si], ax
0002:0126  A1 E2 01                     mov ax, word ptr [0x1e2]
0002:0129  26 89 44 02                  mov word ptr es:[si + 2], ax
0002:012D  33 C0                        xor ax, ax
0002:012F  33 D2                        xor dx, dx
0002:0131  5E                           pop si
0002:0132  C9                           leave
0002:0133  C3                           ret

; FUNCTION 0002:0138 (35 instructions)
0002:0138  55                           push bp
0002:0139  8B EC                        mov bp, sp
0002:013B  1E                           push ds
0002:013C  8E D8                        mov ds, ax
0002:013E  83 EC 02                     sub sp, 2
0002:0141  56                           push si
0002:0142  1E                           push ds
0002:0143  68 2A 00                     push 0x2a
0002:0146  1E                           push ds
0002:0147  68 48 00                     push 0x48
0002:014A  68 00 30                     push 0x3000
0002:014D  1E                           push ds
0002:014E  68 36 00                     push 0x36
0002:0151  9A 0A 02 00 00               lcall 0, 0x20a
0002:0156  8B F0                        mov si, ax
0002:0158  0B F6                        or si, si
0002:015A  75 03                        jne 0x15f
0002:015C  BE 00 30                     mov si, 0x3000
0002:015F  2B C9                        sub cx, cx
0002:0161  D1 E6                        shl si, 1
0002:0163  D1 D1                        rcl cx, 1
0002:0165  D1 E6                        shl si, 1
0002:0167  D1 D1                        rcl cx, 1
0002:0169  D1 E6                        shl si, 1
0002:016B  D1 D1                        rcl cx, 1
0002:016D  D1 E6                        shl si, 1
0002:016F  D1 D1                        rcl cx, 1
0002:0171  89 36 E8 01                  mov word ptr [0x1e8], si
0002:0175  89 0E EA 01                  mov word ptr [0x1ea], cx
0002:0179  5E                           pop si
0002:017A  8D 66 FE                     lea sp, [bp - 2]
0002:017D  1F                           pop ds
0002:017E  5D                           pop bp
0002:017F  4D                           dec bp
0002:0180  CB                           retf

; FUNCTION 0002:0182 (3 instructions)
0002:0182  8C D8                        mov ax, ds
0002:0184  90                           nop
0002:0185  45                           inc bp

; FUNCTION 0002:0186 (84 instructions)
0002:0186  55                           push bp
0002:0187  8B EC                        mov bp, sp
0002:0189  1E                           push ds
0002:018A  8E D8                        mov ds, ax
0002:018C  83 EC 08                     sub sp, 8
0002:018F  57                           push di
0002:0190  56                           push si
0002:0191  8B 4E 0E                     mov cx, word ptr [bp + 0xe]
0002:0194  8B C1                        mov ax, cx
0002:0196  3D 01 08                     cmp ax, 0x801
0002:0199  75 03                        jne 0x19e
0002:019B  E9 10 01                     jmp 0x2ae
0002:019E  77 22                        ja 0x1c2
0002:01A0  48                           dec ax
0002:01A1  3D 09 00                     cmp ax, 9
0002:01A4  77 32                        ja 0x1d8
0002:01A6  D1 E0                        shl ax, 1
0002:01A8  93                           xchg bx, ax
0002:01A9  2E FF A7 AE 01               jmp word ptr cs:[bx + 0x1ae]
0002:01C2  2D 02 08                     sub ax, 0x802
0002:01C5  75 03                        jne 0x1ca
0002:01C7  E9 EC 00                     jmp 0x2b6
0002:01CA  2D FF 00                     sub ax, 0xff
0002:01CD  75 03                        jne 0x1d2
0002:01CF  E9 F6 00                     jmp 0x2c8
0002:01D2  48                           dec ax
0002:01D3  75 03                        jne 0x1d8
0002:01D5  E9 00 01                     jmp 0x2d8
0002:01D8  FF 76 14                     push word ptr [bp + 0x14]
0002:01DB  FF 76 12                     push word ptr [bp + 0x12]
0002:01DE  FF 76 10                     push word ptr [bp + 0x10]
0002:01E1  51                           push cx
0002:01E2  FF 76 0C                     push word ptr [bp + 0xc]
0002:01E5  FF 76 0A                     push word ptr [bp + 0xa]
0002:01E8  FF 76 08                     push word ptr [bp + 8]
0002:01EB  FF 76 06                     push word ptr [bp + 6]
0002:01EE  9A FF FF 00 00               lcall 0, 0xffff
0002:01F3  E9 14 01                     jmp 0x30a
0002:02AE  A1 DA 01                     mov ax, word ptr [0x1da]
0002:02B1  2B D2                        sub dx, dx
0002:02B3  EB 55                        jmp 0x30a
0002:02B6  FF 76 06                     push word ptr [bp + 6]
0002:02B9  FF 76 0C                     push word ptr [bp + 0xc]
0002:02BC  FF 76 0A                     push word ptr [bp + 0xa]
0002:02BF  E8 70 FD                     call 0x32
0002:02C2  83 C4 06                     add sp, 6
0002:02C5  EB 43                        jmp 0x30a
0002:02C8  FF 76 0C                     push word ptr [bp + 0xc]
0002:02CB  FF 76 0A                     push word ptr [bp + 0xa]
0002:02CE  8B 46 12                     mov ax, word ptr [bp + 0x12]
0002:02D1  48                           dec ax
0002:02D2  50                           push ax
0002:02D3  E8 E8 FD                     call 0xbe
0002:02D6  EB EA                        jmp 0x2c2
0002:02D8  8B 46 12                     mov ax, word ptr [bp + 0x12]
0002:02DB  8B C8                        mov cx, ax
0002:02DD  D1 E0                        shl ax, 1
0002:02DF  03 C1                        add ax, cx
0002:02E1  C1 E0 02                     shl ax, 2
0002:02E4  05 04 00                     add ax, 4
0002:02E7  8B F0                        mov si, ax
0002:02E9  C4 7E 06                     les di, ptr [bp + 6]
0002:02EC  B9 06 00                     mov cx, 6
0002:02EF  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:02F1  8B 56 0A                     mov dx, word ptr [bp + 0xa]
0002:02F4  8B 5E 0C                     mov bx, word ptr [bp + 0xc]
0002:02F7  1E                           push ds
0002:02F8  8B F8                        mov di, ax
0002:02FA  8B F2                        mov si, dx
0002:02FC  1E                           push ds
0002:02FD  07                           pop es
0002:02FE  8E DB                        mov ds, bx
0002:0300  B9 06 00                     mov cx, 6
0002:0303  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:0305  1F                           pop ds
0002:0306  33 C0                        xor ax, ax
0002:0308  33 D2                        xor dx, dx
0002:030A  5E                           pop si
0002:030B  5F                           pop di
0002:030C  8D 66 FE                     lea sp, [bp - 2]
0002:030F  1F                           pop ds
0002:0310  5D                           pop bp
0002:0311  4D                           dec bp
0002:0312  CA 10 00                     retf 0x10

; FUNCTION 0002:01F9 (34 instructions)
0002:01F9  6C                           insb byte ptr es:[di], dx
0002:01FA  02 1E 68 2A                  add bl, byte ptr [0x2a68]
0002:01FE  00 1E 68 42                  add byte ptr [0x4268], bl
0002:0202  00 6A 02                     add byte ptr [bp + si + 2], ch
0002:0205  1E                           push ds
0002:0206  68 36 00                     push 0x36
0002:0209  9A FF FF 00 00               lcall 0, 0xffff
0002:020E  A3 EC 01                     mov word ptr [0x1ec], ax
0002:0211  3D 03 00                     cmp ax, 3
0002:0214  75 1A                        jne 0x230
0002:0216  6A 01                        push 1
0002:0218  6A 01                        push 1
0002:021A  E8 F9 00                     call 0x316
0002:021D  3D 01 00                     cmp ax, 1
0002:0220  1B C0                        sbb ax, ax
0002:0222  24 FE                        and al, 0xfe
0002:0224  40                           inc ax
0002:0225  A3 D8 01                     mov word ptr [0x1d8], ax
0002:0228  C7 06 DA 01 01 00            mov word ptr [0x1da], 1
0002:022E  EB 79                        jmp 0x2a9
0002:0230  B8 02 00                     mov ax, 2
0002:0233  A3 EC 01                     mov word ptr [0x1ec], ax
0002:0236  A3 DA 01                     mov word ptr [0x1da], ax
0002:0239  EB 6E                        jmp 0x2a9
0002:02A9  B8 01 00                     mov ax, 1
0002:02AC  EB 5A                        jmp 0x308
0002:0308  33 D2                        xor dx, dx
0002:030A  5E                           pop si
0002:030B  5F                           pop di
0002:030C  8D 66 FE                     lea sp, [bp - 2]
0002:030F  1F                           pop ds
0002:0310  5D                           pop bp
0002:0311  4D                           dec bp
0002:0312  CA 10 00                     retf 0x10

; FUNCTION 0002:02DC (28 instructions)
0002:02DC  C8 D1 E0 03                  enter -0x1f2f, 3
0002:02E0  C1 C1 E0                     rol cx, 0xe0
0002:02E3  02 05                        add al, byte ptr [di]
0002:02E5  04 00                        add al, 0
0002:02E7  8B F0                        mov si, ax
0002:02E9  C4 7E 06                     les di, ptr [bp + 6]
0002:02EC  B9 06 00                     mov cx, 6
0002:02EF  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:02F1  8B 56 0A                     mov dx, word ptr [bp + 0xa]
0002:02F4  8B 5E 0C                     mov bx, word ptr [bp + 0xc]
0002:02F7  1E                           push ds
0002:02F8  8B F8                        mov di, ax
0002:02FA  8B F2                        mov si, dx
0002:02FC  1E                           push ds
0002:02FD  07                           pop es
0002:02FE  8E DB                        mov ds, bx
0002:0300  B9 06 00                     mov cx, 6
0002:0303  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:0305  1F                           pop ds
0002:0306  33 C0                        xor ax, ax
0002:0308  33 D2                        xor dx, dx
0002:030A  5E                           pop si
0002:030B  5F                           pop di
0002:030C  8D 66 FE                     lea sp, [bp - 2]
0002:030F  1F                           pop ds
0002:0310  5D                           pop bp
0002:0311  4D                           dec bp
0002:0312  CA 10 00                     retf 0x10

; FUNCTION 0002:0316 (133 instructions)
0002:0316  55                           push bp
0002:0317  8B EC                        mov bp, sp
0002:0319  83 EC 02                     sub sp, 2
0002:031C  56                           push si
0002:031D  57                           push di
0002:031E  BA 01 02                     mov dx, 0x201
0002:0321  EC                           in al, dx
0002:0322  B1 04                        mov cl, 4
0002:0324  83 7E 06 00                  cmp word ptr [bp + 6], 0
0002:0328  74 03                        je 0x32d
0002:032A  80 C1 02                     add cl, 2
0002:032D  D2 E8                        shr al, cl
0002:032F  25 03 00                     and ax, 3
0002:0332  35 03 00                     xor ax, 3
0002:0335  A3 E6 01                     mov word ptr [0x1e6], ax
0002:0338  9C                           pushf
0002:0339  FA                           cli
0002:033A  C7 46 FE 01 00               mov word ptr [bp - 2], 1
0002:033F  BA 01 02                     mov dx, 0x201
0002:0342  BE 10 00                     mov si, 0x10
0002:0345  BB 01 02                     mov bx, 0x201
0002:0348  83 7E 06 00                  cmp word ptr [bp + 6], 0
0002:034C  74 0C                        je 0x35a
0002:034E  83 7E 04 00                  cmp word ptr [bp + 4], 0
0002:0352  75 06                        jne 0x35a
0002:0354  83 C6 0C                     add si, 0xc
0002:0357  BB 04 08                     mov bx, 0x804
0002:035A  83 7E 04 00                  cmp word ptr [bp + 4], 0
0002:035E  74 2E                        je 0x38e
0002:0360  7C 16                        jl 0x378
0002:0362  8B 44 08                     mov ax, word ptr [si + 8]
0002:0365  F7 D8                        neg ax
0002:0367  99                           cdq
0002:0368  A3 E0 01                     mov word ptr [0x1e0], ax
0002:036B  89 16 82 00                  mov word ptr [0x82], dx
0002:036F  8B 4C 0A                     mov cx, word ptr [si + 0xa]
0002:0372  BB 04 00                     mov bx, 4
0002:0375  EB 36                        jmp 0x3ad
0002:0378  8B 44 08                     mov ax, word ptr [si + 8]
0002:037B  F7 D8                        neg ax
0002:037D  99                           cdq
0002:037E  A3 E2 01                     mov word ptr [0x1e2], ax
0002:0381  89 16 84 00                  mov word ptr [0x84], dx
0002:0385  8B 7C 0A                     mov di, word ptr [si + 0xa]
0002:0388  BB 00 08                     mov bx, 0x800
0002:038B  EB 20                        jmp 0x3ad
0002:038E  8B 04                        mov ax, word ptr [si]
0002:0390  F7 D8                        neg ax
0002:0392  99                           cdq
0002:0393  A3 E0 01                     mov word ptr [0x1e0], ax
0002:0396  89 16 82 00                  mov word ptr [0x82], dx
0002:039A  8B 44 04                     mov ax, word ptr [si + 4]
0002:039D  F7 D8                        neg ax
0002:039F  99                           cdq
0002:03A0  A3 E2 01                     mov word ptr [0x1e2], ax
0002:03A3  89 16 84 00                  mov word ptr [0x84], dx
0002:03A7  8B 4C 02                     mov cx, word ptr [si + 2]
0002:03AA  8B 7C 06                     mov di, word ptr [si + 6]
0002:03AD  BA 01 02                     mov dx, 0x201
0002:03B0  83 7E FE 01                  cmp word ptr [bp - 2], 1
0002:03B4  74 03                        je 0x3b9
0002:03B6  33 C0                        xor ax, ax
0002:03B8  EE                           out dx, al
0002:03B9  8A E3                        mov ah, bl
0002:03BB  0A E7                        or ah, bh
0002:03BD  EC                           in al, dx
0002:03BE  22 C4                        and al, ah
0002:03C0  74 5C                        je 0x41e
0002:03C2  84 C3                        test bl, al
0002:03C4  74 29                        je 0x3ef
0002:03C6  01 0E E0 01                  add word ptr [0x1e0], cx
0002:03CA  83 16 82 00 00               adc word ptr [0x82], 0
0002:03CF  50                           push ax
0002:03D0  52                           push dx
0002:03D1  A1 E0 01                     mov ax, word ptr [0x1e0]
0002:03D4  8B 16 82 00                  mov dx, word ptr [0x82]
0002:03D8  39 16 EA 01                  cmp word ptr [0x1ea], dx
0002:03DC  7F 0F                        jg 0x3ed
0002:03DE  7C 06                        jl 0x3e6
0002:03E0  39 06 E8 01                  cmp word ptr [0x1e8], ax
0002:03E4  73 07                        jae 0x3ed
0002:03E6  5A                           pop dx
0002:03E7  58                           pop ax
0002:03E8  33 C0                        xor ax, ax
0002:03EA  EB 3A                        jmp 0x426
0002:03ED  5A                           pop dx
0002:03EE  58                           pop ax
0002:03EF  84 C7                        test bh, al
0002:03F1  74 CA                        je 0x3bd
0002:03F3  01 3E E2 01                  add word ptr [0x1e2], di
0002:03F7  83 16 84 00 00               adc word ptr [0x84], 0
0002:03FC  50                           push ax
0002:03FD  52                           push dx
0002:03FE  A1 E2 01                     mov ax, word ptr [0x1e2]
0002:0401  8B 16 84 00                  mov dx, word ptr [0x84]
0002:0405  39 16 EA 01                  cmp word ptr [0x1ea], dx
0002:0409  7F 0F                        jg 0x41a
0002:040B  7C 06                        jl 0x413
0002:040D  39 06 E8 01                  cmp word ptr [0x1e8], ax
0002:0411  73 07                        jae 0x41a
0002:0413  5A                           pop dx
0002:0414  58                           pop ax
0002:0415  33 C0                        xor ax, ax
0002:0417  EB 0D                        jmp 0x426
0002:041A  5A                           pop dx
0002:041B  58                           pop ax
0002:041C  EB 9F                        jmp 0x3bd
0002:041E  FF 4E FE                     dec word ptr [bp - 2]
0002:0421  75 03                        jne 0x426
0002:0423  E9 19 FF                     jmp 0x33f
0002:0426  5B                           pop bx
0002:0427  F7 C3 00 02                  test bx, 0x200
0002:042B  74 01                        je 0x42e
0002:042D  FB                           sti
0002:042E  33 DB                        xor bx, bx
0002:0430  39 1E 82 00                  cmp word ptr [0x82], bx
0002:0434  74 07                        je 0x43d
0002:0436  7C 01                        jl 0x439
0002:0438  4B                           dec bx
0002:0439  89 1E E0 01                  mov word ptr [0x1e0], bx
0002:043D  33 DB                        xor bx, bx
0002:043F  39 1E 84 00                  cmp word ptr [0x84], bx
0002:0443  74 07                        je 0x44c
0002:0445  7C 01                        jl 0x448
0002:0447  4B                           dec bx
0002:0448  89 1E E2 01                  mov word ptr [0x1e2], bx
0002:044C  8A C4                        mov al, ah
0002:044E  32 E4                        xor ah, ah
0002:0450  5F                           pop di
0002:0451  5E                           pop si
0002:0452  8B E5                        mov sp, bp
0002:0454  5D                           pop bp
0002:0455  C2 04 00                     ret 4

; FUNCTION 0002:0458 (1 instructions)
0002:0458  45                           inc bp

; FUNCTION 0002:0459 (19 instructions)
0002:0459  55                           push bp
0002:045A  8B EC                        mov bp, sp
0002:045C  1E                           push ds
0002:045D  57                           push di
0002:045E  1E                           push ds
0002:045F  51                           push cx
0002:0460  06                           push es
0002:0461  56                           push si
0002:0462  E3 0A                        jcxz 0x46e
0002:0464  6A 00                        push 0
0002:0466  6A 00                        push 0
0002:0468  51                           push cx
0002:0469  9A FF FF 00 00               lcall 0, 0xffff
0002:046E  E8 9F FB                     call 0x10
0002:0471  8D 66 FE                     lea sp, [bp - 2]
0002:0474  1F                           pop ds
0002:0475  5D                           pop bp
0002:0476  4D                           dec bp
0002:0477  CB                           retf

; FUNCTION 0002:047C (34 instructions)
0002:047C  55                           push bp
0002:047D  8B EC                        mov bp, sp
0002:047F  1E                           push ds
0002:0480  8E D8                        mov ds, ax
0002:0482  83 EC 06                     sub sp, 6
0002:0485  57                           push di
0002:0486  56                           push si
0002:0487  8B 76 06                     mov si, word ptr [bp + 6]
0002:048A  56                           push si
0002:048B  1E                           push ds
0002:048C  68 86 00                     push 0x86
0002:048F  FF 76 08                     push word ptr [bp + 8]
0002:0492  68 7A 05                     push 0x57a
0002:0495  68 FA 04                     push 0x4fa
0002:0498  56                           push si
0002:0499  9A FF FF 00 00               lcall 0, 0xffff
0002:049E  52                           push dx
0002:049F  50                           push ax
0002:04A0  8B F0                        mov si, ax
0002:04A2  89 76 FA                     mov word ptr [bp - 6], si
0002:04A5  89 56 FC                     mov word ptr [bp - 4], dx
0002:04A8  9A FF FF 00 00               lcall 0, 0xffff
0002:04AD  8B F8                        mov di, ax
0002:04AF  FF 76 FC                     push word ptr [bp - 4]
0002:04B2  FF 76 FA                     push word ptr [bp - 6]
0002:04B5  9A FF FF 00 00               lcall 0, 0xffff
0002:04BA  8B C7                        mov ax, di
0002:04BC  5E                           pop si
0002:04BD  5F                           pop di
0002:04BE  8D 66 FE                     lea sp, [bp - 2]
0002:04C1  1F                           pop ds
0002:04C2  5D                           pop bp
0002:04C3  4D                           dec bp
0002:04C4  CA 04 00                     retf 4

; FUNCTION 0002:0493 (22 instructions)
0002:0493  7A 05                        jp 0x49a
0002:0495  68 FA 04                     push 0x4fa
0002:0498  56                           push si
0002:0499  9A FF FF 00 00               lcall 0, 0xffff
0002:049E  52                           push dx
0002:049F  50                           push ax
0002:04A0  8B F0                        mov si, ax
0002:04A2  89 76 FA                     mov word ptr [bp - 6], si
0002:04A5  89 56 FC                     mov word ptr [bp - 4], dx
0002:04A8  9A FF FF 00 00               lcall 0, 0xffff
0002:04AD  8B F8                        mov di, ax
0002:04AF  FF 76 FC                     push word ptr [bp - 4]
0002:04B2  FF 76 FA                     push word ptr [bp - 6]
0002:04B5  9A FF FF 00 00               lcall 0, 0xffff
0002:04BA  8B C7                        mov ax, di
0002:04BC  5E                           pop si
0002:04BD  5F                           pop di
0002:04BE  8D 66 FE                     lea sp, [bp - 2]
0002:04C1  1F                           pop ds
0002:04C2  5D                           pop bp
0002:04C3  4D                           dec bp
0002:04C4  CA 04 00                     retf 4

; FUNCTION 0002:04C8 (24 instructions)
0002:04C8  55                           push bp
0002:04C9  8B EC                        mov bp, sp
0002:04CB  56                           push si
0002:04CC  8B 76 04                     mov si, word ptr [bp + 4]
0002:04CF  56                           push si
0002:04D0  6A 10                        push 0x10
0002:04D2  9A E8 04 00 00               lcall 0, 0x4e8
0002:04D7  0B C0                        or ax, ax
0002:04D9  74 09                        je 0x4e4
0002:04DB  B8 02 00                     mov ax, 2
0002:04DE  A3 DC 01                     mov word ptr [0x1dc], ax
0002:04E1  5E                           pop si
0002:04E2  C9                           leave
0002:04E3  C3                           ret
0002:04E4  56                           push si
0002:04E5  6A 11                        push 0x11
0002:04E7  9A FF FF 00 00               lcall 0, 0xffff
0002:04EC  3D 01 00                     cmp ax, 1
0002:04EF  1B C0                        sbb ax, ax
0002:04F1  05 03 00                     add ax, 3
0002:04F4  A3 DC 01                     mov word ptr [0x1dc], ax
0002:04F7  5E                           pop si
0002:04F8  C9                           leave
0002:04F9  C3                           ret

; FUNCTION 0002:04FA (3 instructions)
0002:04FA  8C D8                        mov ax, ds
0002:04FC  90                           nop
0002:04FD  45                           inc bp

; FUNCTION 0002:04FE (78 instructions)
0002:04FE  55                           push bp
0002:04FF  8B EC                        mov bp, sp
0002:0501  1E                           push ds
0002:0502  8E D8                        mov ds, ax
0002:0504  83 EC 08                     sub sp, 8
0002:0507  56                           push si
0002:0508  8B 46 0C                     mov ax, word ptr [bp + 0xc]
0002:050B  2D 10 01                     sub ax, 0x110
0002:050E  74 08                        je 0x518
0002:0510  48                           dec ax
0002:0511  74 17                        je 0x52a
0002:0513  33 C0                        xor ax, ax
0002:0515  E9 94 00                     jmp 0x5ac
0002:0518  FF 76 0E                     push word ptr [bp + 0xe]
0002:051B  6A 10                        push 0x10
0002:051D  6A 11                        push 0x11
0002:051F  A1 EC 01                     mov ax, word ptr [0x1ec]
0002:0522  05 0E 00                     add ax, 0xe
0002:0525  50                           push ax
0002:0526  EB 7C                        jmp 0x5a4
0002:052A  8B 4E 0A                     mov cx, word ptr [bp + 0xa]
0002:052D  8B C1                        mov ax, cx
0002:052F  48                           dec ax
0002:0530  74 10                        je 0x542
0002:0532  48                           dec ax
0002:0533  74 61                        je 0x596
0002:0535  2D 0E 00                     sub ax, 0xe
0002:0538  72 6F                        jb 0x5a9
0002:053A  2D 01 00                     sub ax, 1
0002:053D  76 5D                        jbe 0x59c
0002:053F  EB 68                        jmp 0x5a9
0002:0542  8B 76 0E                     mov si, word ptr [bp + 0xe]
0002:0545  56                           push si
0002:0546  E8 7F FF                     call 0x4c8
0002:0549  83 C4 02                     add sp, 2
0002:054C  FF 36 DC 01                  push word ptr [0x1dc]
0002:0550  1E                           push ds
0002:0551  68 8D 00                     push 0x8d
0002:0554  8D 46 F8                     lea ax, [bp - 8]
0002:0557  16                           push ss
0002:0558  50                           push ax
0002:0559  9A 7E 02 00 00               lcall 0, 0x27e
0002:055E  83 C4 0A                     add sp, 0xa
0002:0561  1E                           push ds
0002:0562  68 2A 00                     push 0x2a
0002:0565  1E                           push ds
0002:0566  68 42 00                     push 0x42
0002:0569  8D 46 F8                     lea ax, [bp - 8]
0002:056C  16                           push ss
0002:056D  50                           push ax
0002:056E  1E                           push ds
0002:056F  68 36 00                     push 0x36
0002:0572  9A A5 02 00 00               lcall 0, 0x2a5
0002:0577  9A 34 01 F9 01               lcall 0x1f9, 0x134
0002:057C  A1 EC 01                     mov ax, word ptr [0x1ec]
0002:057F  39 06 DC 01                  cmp word ptr [0x1dc], ax
0002:0583  74 0B                        je 0x590
0002:0585  56                           push si
0002:0586  6A 02                        push 2
0002:0588  9A FF FF 00 00               lcall 0, 0xffff
0002:058D  EB 1A                        jmp 0x5a9
0002:0590  56                           push si
0002:0591  6A 00                        push 0
0002:0593  EB F3                        jmp 0x588
0002:0596  FF 76 0E                     push word ptr [bp + 0xe]
0002:0599  EB F6                        jmp 0x591
0002:059C  FF 76 0E                     push word ptr [bp + 0xe]
0002:059F  6A 10                        push 0x10
0002:05A1  6A 11                        push 0x11
0002:05A3  51                           push cx
0002:05A4  9A FF FF 00 00               lcall 0, 0xffff
0002:05A9  B8 01 00                     mov ax, 1
0002:05AC  5E                           pop si
0002:05AD  8D 66 FE                     lea sp, [bp - 2]
0002:05B0  1F                           pop ds
0002:05B1  5D                           pop bp
0002:05B2  4D                           dec bp
0002:05B3  CA 0A 00                     retf 0xa

; FUNCTION 0002:05FE (48 instructions)
0002:05FE  55                           push bp
0002:05FF  8B EC                        mov bp, sp
0002:0601  1E                           push ds
0002:0602  8E D8                        mov ds, ax
0002:0604  57                           push di
0002:0605  56                           push si
0002:0606  89 3E 92 00                  mov word ptr [0x92], di
0002:060A  8C 1E 94 00                  mov word ptr [0x94], ds
0002:060E  89 0E 96 00                  mov word ptr [0x96], cx
0002:0612  89 1E 98 00                  mov word ptr [0x98], bx
0002:0616  89 36 9A 00                  mov word ptr [0x9a], si
0002:061A  E3 0E                        jcxz 0x62a
0002:061C  1E                           push ds
0002:061D  33 C0                        xor ax, ax
0002:061F  50                           push ax
0002:0620  51                           push cx
0002:0621  9A 6A 04 00 00               lcall 0, 0x46a
0002:0626  0B C0                        or ax, ax
0002:0628  74 4B                        je 0x675
0002:062A  9A FF FF 00 00               lcall 0, 0xffff
0002:062F  A3 B8 00                     mov word ptr [0xb8], ax
0002:0632  B4 30                        mov ah, 0x30
0002:0634  2E F7 06 B6 05 01 00         test word ptr cs:[0x5b6], 1
0002:063B  74 07                        je 0x644
0002:063D  9A FF FF 00 00               lcall 0, 0xffff
0002:0642  EB 02                        jmp 0x646
0002:0644  CD 21                        int 0x21
0002:0646  A3 BA 00                     mov word ptr [0xba], ax
0002:0649  2E F7 06 B6 05 01 00         test word ptr cs:[0x5b6], 1
0002:0650  75 05                        jne 0x657
0002:0652  B0 00                        mov al, 0
0002:0654  A2 BD 00                     mov byte ptr [0xbd], al
0002:0657  E8 5A 00                     call 0x6b4
0002:065A  E8 29 01                     call 0x786
0002:065D  FE 06 9C 00                  inc byte ptr [0x9c]
0002:0661  FF 36 DA 00                  push word ptr [0xda]
0002:0665  FF 36 D8 00                  push word ptr [0xd8]
0002:0669  FF 36 D6 00                  push word ptr [0xd6]
0002:066D  E8 26 00                     call 0x696
0002:0670  83 C4 06                     add sp, 6
0002:0673  5E                           pop si
0002:0674  5F                           pop di
0002:0675  83 ED 02                     sub bp, 2
0002:0678  8B E5                        mov sp, bp
0002:067A  1F                           pop ds
0002:067B  5D                           pop bp
0002:067C  4D                           dec bp
0002:067D  CB                           retf

; FUNCTION 0002:0682 (11 instructions)
0002:0682  55                           push bp
0002:0683  8B EC                        mov bp, sp
0002:0685  1E                           push ds
0002:0686  8E D8                        mov ds, ax
0002:0688  B8 01 00                     mov ax, 1
0002:068B  83 ED 02                     sub bp, 2
0002:068E  8B E5                        mov sp, bp
0002:0690  1F                           pop ds
0002:0691  5D                           pop bp
0002:0692  4D                           dec bp
0002:0693  CA 0A 00                     retf 0xa

; FUNCTION 0002:0696 (10 instructions)
0002:0696  55                           push bp
0002:0697  8B EC                        mov bp, sp
0002:0699  FF 36 92 00                  push word ptr [0x92]
0002:069D  FF 36 94 00                  push word ptr [0x94]
0002:06A1  FF 36 96 00                  push word ptr [0x96]
0002:06A5  FF 36 9A 00                  push word ptr [0x9a]
0002:06A9  FF 36 98 00                  push word ptr [0x98]
0002:06AD  9A 10 00 93 04               lcall 0x493, 0x10
0002:06B2  5D                           pop bp
0002:06B3  C3                           ret

; FUNCTION 0002:06B4 (117 instructions)
0002:06B4  8B 0E EE 00                  mov cx, word ptr [0xee]
0002:06B8  E3 14                        jcxz 0x6ce
0002:06BA  33 F6                        xor si, si
0002:06BC  A1 F0 00                     mov ax, word ptr [0xf0]
0002:06BF  8B 16 F2 00                  mov dx, word ptr [0xf2]
0002:06C3  33 DB                        xor bx, bx
0002:06C5  FF 1E EC 00                  lcall [0xec]
0002:06C9  73 03                        jae 0x6ce
0002:06CB  E9 56 01                     jmp 0x824
0002:06CE  BE F8 00                     mov si, 0xf8
0002:06D1  BF F8 00                     mov di, 0xf8
0002:06D4  E8 86 00                     call 0x75d
0002:06D7  BE F8 00                     mov si, 0xf8
0002:06DA  BF F8 00                     mov di, 0xf8
0002:06DD  E8 6E 00                     call 0x74e
0002:06E0  BE F8 00                     mov si, 0xf8
0002:06E3  BF F8 00                     mov di, 0xf8
0002:06E6  E8 74 00                     call 0x75d
0002:06E9  C3                           ret
0002:0824  B8 02 00                     mov ax, 2
0002:0827  E9 36 00                     jmp 0x860
0002:0860  50                           push ax
0002:0861  50                           push ax
0002:0862  E8 0B FF                     call 0x770
0002:0865  E8 B1 FF                     call 0x819
0002:0868  E8 83 FF                     call 0x7ee
0002:086B  33 DB                        xor bx, bx
0002:086D  0B C0                        or ax, ax
0002:086F  74 1D                        je 0x88e
0002:0871  8B F8                        mov di, ax
0002:0873  B8 09 00                     mov ax, 9
0002:0876  80 3D 4D                     cmp byte ptr [di], 0x4d
0002:0879  75 03                        jne 0x87e
0002:087B  B8 0F 00                     mov ax, 0xf
0002:087E  03 F8                        add di, ax
0002:0880  57                           push di
0002:0881  1E                           push ds
0002:0882  07                           pop es
0002:0883  B0 0D                        mov al, 0xd
0002:0885  B9 22 00                     mov cx, 0x22
0002:0888  F2 AE                        repne scasb al, byte ptr es:[di]
0002:088A  88 5D FF                     mov byte ptr [di - 1], bl
0002:088D  58                           pop ax
0002:088E  53                           push bx
0002:088F  1E                           push ds
0002:0890  50                           push ax
0002:0891  9A FF FF 00 00               lcall 0, 0xffff
0002:0896  B8 FF 00                     mov ax, 0xff
0002:0899  50                           push ax
0002:089A  9A FF FF 00 00               lcall 0, 0xffff
0002:089F  00 51 57                     add byte ptr [bx + di + 0x57], dl
0002:08A2  F6 47 02 01                  test byte ptr [bx + 2], 1
0002:08A6  74 66                        je 0x90e
0002:08A8  E8 EA 00                     call 0x995
0002:08AB  8B FE                        mov di, si
0002:08AD  8B 04                        mov ax, word ptr [si]
0002:08AF  A8 01                        test al, 1
0002:08B1  74 03                        je 0x8b6
0002:08B3  2B C8                        sub cx, ax
0002:08B5  49                           dec cx
0002:08B6  41                           inc cx
0002:08B7  41                           inc cx
0002:08B8  8B 77 04                     mov si, word ptr [bx + 4]
0002:08BB  0B F6                        or si, si
0002:08BD  74 4F                        je 0x90e
0002:08BF  03 CE                        add cx, si
0002:08C1  73 09                        jae 0x8cc
0002:08C3  33 C0                        xor ax, ax
0002:08C5  BA F0 FF                     mov dx, 0xfff0
0002:08C8  E3 33                        jcxz 0x8fd
0002:08CA  EB 42                        jmp 0x90e
0002:08CC  E8 E7 00                     call 0x9b6
0002:08CF  8E C0                        mov es, ax
0002:08D1  26 A1 E6 00                  mov ax, word ptr es:[0xe6]
0002:08D5  3D 00 10                     cmp ax, 0x1000
0002:08D8  74 16                        je 0x8f0
0002:08DA  BA 00 80                     mov dx, 0x8000
0002:08DD  3B D0                        cmp dx, ax
0002:08DF  72 06                        jb 0x8e7
0002:08E1  D1 EA                        shr dx, 1
0002:08E3  75 F8                        jne 0x8dd
0002:08E5  EB 22                        jmp 0x909
0002:08E7  83 FA 08                     cmp dx, 8
0002:08EA  72 1D                        jb 0x909
0002:08EC  D1 E2                        shl dx, 1
0002:08EE  8B C2                        mov ax, dx
0002:08F0  48                           dec ax
0002:08F1  8B D0                        mov dx, ax
0002:08F3  03 C1                        add ax, cx
0002:08F5  73 02                        jae 0x8f9
0002:08F7  33 C0                        xor ax, ax
0002:08F9  F7 D2                        not dx
0002:08FB  23 C2                        and ax, dx
0002:08FD  52                           push dx
0002:08FE  E8 2E 00                     call 0x92f
0002:0901  5A                           pop dx
0002:0902  73 0D                        jae 0x911
0002:0904  83 FA F0                     cmp dx, -0x10
0002:0907  74 05                        je 0x90e
0002:0909  B8 10 00                     mov ax, 0x10
0002:090C  EB E2                        jmp 0x8f0
0002:090E  F9                           stc
0002:090F  EB 1B                        jmp 0x92c
0002:0911  8B D0                        mov dx, ax
0002:0913  2B 57 04                     sub dx, word ptr [bx + 4]
0002:0916  89 47 04                     mov word ptr [bx + 4], ax
0002:0919  89 7F 0A                     mov word ptr [bx + 0xa], di
0002:091C  8B 77 0C                     mov si, word ptr [bx + 0xc]
0002:091F  4A                           dec dx
0002:0920  89 14                        mov word ptr [si], dx
0002:0922  42                           inc dx
0002:0923  03 F2                        add si, dx
0002:0925  C7 04 FE FF                  mov word ptr [si], 0xfffe
0002:0929  89 77 0C                     mov word ptr [bx + 0xc], si
0002:092C  5F                           pop di
0002:092D  59                           pop cx
0002:092E  C3                           ret

; FUNCTION 0002:06EA (33 instructions)
0002:06EA  55                           push bp
0002:06EB  8B EC                        mov bp, sp
0002:06ED  56                           push si
0002:06EE  57                           push di
0002:06EF  B9 00 01                     mov cx, 0x100
0002:06F2  EB 08                        jmp 0x6fc
0002:06FC  88 2E E3 00                  mov byte ptr [0xe3], ch
0002:0700  51                           push cx
0002:0701  0A C9                        or cl, cl
0002:0703  75 1B                        jne 0x720
0002:0705  BE DE 01                     mov si, 0x1de
0002:0708  BF DE 01                     mov di, 0x1de
0002:070B  E8 40 00                     call 0x74e
0002:070E  BE DE 01                     mov si, 0x1de
0002:0711  BF DE 01                     mov di, 0x1de
0002:0714  E8 46 00                     call 0x75d
0002:0717  BE F8 00                     mov si, 0xf8
0002:071A  BF F8 00                     mov di, 0xf8
0002:071D  E8 2E 00                     call 0x74e
0002:0720  BE F8 00                     mov si, 0xf8
0002:0723  BF F8 00                     mov di, 0xf8
0002:0726  E8 25 00                     call 0x74e
0002:0729  BE F8 00                     mov si, 0xf8
0002:072C  BF F8 00                     mov di, 0xf8
0002:072F  E8 2B 00                     call 0x75d
0002:0732  E8 0B 00                     call 0x740
0002:0735  E8 1E 01                     call 0x856
0002:0738  E8 1B 01                     call 0x856
0002:073B  58                           pop ax
0002:073C  5F                           pop di
0002:073D  5E                           pop si
0002:073E  5D                           pop bp
0002:073F  C3                           ret

; FUNCTION 0002:06F4 (32 instructions)
0002:06F4  55                           push bp
0002:06F5  8B EC                        mov bp, sp
0002:06F7  56                           push si
0002:06F8  57                           push di
0002:06F9  B9 01 01                     mov cx, 0x101
0002:06FC  88 2E E3 00                  mov byte ptr [0xe3], ch
0002:0700  51                           push cx
0002:0701  0A C9                        or cl, cl
0002:0703  75 1B                        jne 0x720
0002:0705  BE DE 01                     mov si, 0x1de
0002:0708  BF DE 01                     mov di, 0x1de
0002:070B  E8 40 00                     call 0x74e
0002:070E  BE DE 01                     mov si, 0x1de
0002:0711  BF DE 01                     mov di, 0x1de
0002:0714  E8 46 00                     call 0x75d
0002:0717  BE F8 00                     mov si, 0xf8
0002:071A  BF F8 00                     mov di, 0xf8
0002:071D  E8 2E 00                     call 0x74e
0002:0720  BE F8 00                     mov si, 0xf8
0002:0723  BF F8 00                     mov di, 0xf8
0002:0726  E8 25 00                     call 0x74e
0002:0729  BE F8 00                     mov si, 0xf8
0002:072C  BF F8 00                     mov di, 0xf8
0002:072F  E8 2B 00                     call 0x75d
0002:0732  E8 0B 00                     call 0x740
0002:0735  E8 1E 01                     call 0x856
0002:0738  E8 1B 01                     call 0x856
0002:073B  58                           pop ax
0002:073C  5F                           pop di
0002:073D  5E                           pop si
0002:073E  5D                           pop bp
0002:073F  C3                           ret

; FUNCTION 0002:0740 (5 instructions)
0002:0740  8B 0E EE 00                  mov cx, word ptr [0xee]
0002:0744  E3 07                        jcxz 0x74d
0002:0746  BB 02 00                     mov bx, 2
0002:0749  FF 1E EC 00                  lcall [0xec]
0002:074D  C3                           ret

; FUNCTION 0002:074E (9 instructions)
0002:074E  3B F7                        cmp si, di
0002:0750  73 0A                        jae 0x75c
0002:0752  4F                           dec di
0002:0753  4F                           dec di
0002:0754  8B 0D                        mov cx, word ptr [di]
0002:0756  E3 F6                        jcxz 0x74e
0002:0758  FF D1                        call cx
0002:075A  EB F2                        jmp 0x74e
0002:075C  C3                           ret

; FUNCTION 0002:075D (9 instructions)
0002:075D  3B F7                        cmp si, di
0002:075F  73 0E                        jae 0x76f
0002:0761  83 EF 04                     sub di, 4
0002:0764  8B 05                        mov ax, word ptr [di]
0002:0766  0B 45 02                     or ax, word ptr [di + 2]
0002:0769  74 F2                        je 0x75d
0002:076B  FF 1D                        lcall [di]
0002:076D  EB EE                        jmp 0x75d
0002:076F  C3                           ret

; FUNCTION 0002:0770 (11 instructions)
0002:0770  55                           push bp
0002:0771  8B EC                        mov bp, sp
0002:0773  B8 FC 00                     mov ax, 0xfc
0002:0776  50                           push ax
0002:0777  E8 9F 00                     call 0x819
0002:077A  B8 FF 00                     mov ax, 0xff
0002:077D  50                           push ax
0002:077E  E8 98 00                     call 0x819
0002:0781  8B E5                        mov sp, bp
0002:0783  5D                           pop bp
0002:0784  C3                           ret

; FUNCTION 0002:0786 (55 instructions)
0002:0786  55                           push bp
0002:0787  8B EC                        mov bp, sp
0002:0789  1E                           push ds
0002:078A  9A FF FF 00 00               lcall 0, 0xffff
0002:078F  0B C0                        or ax, ax
0002:0791  74 02                        je 0x795
0002:0793  8B D0                        mov dx, ax
0002:0795  8B DA                        mov bx, dx
0002:0797  8E C2                        mov es, dx
0002:0799  33 C0                        xor ax, ax
0002:079B  33 F6                        xor si, si
0002:079D  33 FF                        xor di, di
0002:079F  B9 FF FF                     mov cx, 0xffff
0002:07A2  0B DB                        or bx, bx
0002:07A4  74 0E                        je 0x7b4
0002:07A6  26 80 3E 00 00 00            cmp byte ptr es:[0], 0
0002:07AC  74 06                        je 0x7b4
0002:07AE  F2 AE                        repne scasb al, byte ptr es:[di]
0002:07B0  46                           inc si
0002:07B1  AE                           scasb al, byte ptr es:[di]
0002:07B2  75 FA                        jne 0x7ae
0002:07B4  8B C7                        mov ax, di
0002:07B6  40                           inc ax
0002:07B7  24 FE                        and al, 0xfe
0002:07B9  46                           inc si
0002:07BA  8B FE                        mov di, si
0002:07BC  D1 E6                        shl si, 1
0002:07BE  B9 09 00                     mov cx, 9
0002:07C1  E8 66 00                     call 0x82a
0002:07C4  50                           push ax
0002:07C5  8B C6                        mov ax, si
0002:07C7  E8 60 00                     call 0x82a
0002:07CA  A3 DA 00                     mov word ptr [0xda], ax
0002:07CD  06                           push es
0002:07CE  1E                           push ds
0002:07CF  07                           pop es
0002:07D0  1F                           pop ds
0002:07D1  8B CF                        mov cx, di
0002:07D3  8B D8                        mov bx, ax
0002:07D5  33 F6                        xor si, si
0002:07D7  5F                           pop di
0002:07D8  49                           dec cx
0002:07D9  E3 0D                        jcxz 0x7e8
0002:07DB  26 89 3F                     mov word ptr es:[bx], di
0002:07DE  43                           inc bx
0002:07DF  43                           inc bx
0002:07E0  AC                           lodsb al, byte ptr [si]
0002:07E1  AA                           stosb byte ptr es:[di], al
0002:07E2  0A C0                        or al, al
0002:07E4  75 FA                        jne 0x7e0
0002:07E6  E2 F3                        loop 0x7db
0002:07E8  26 89 0F                     mov word ptr es:[bx], cx
0002:07EB  1F                           pop ds
0002:07EC  5D                           pop bp
0002:07ED  C3                           ret

; FUNCTION 0002:07EE (26 instructions)
0002:07EE  55                           push bp
0002:07EF  8B EC                        mov bp, sp
0002:07F1  56                           push si
0002:07F2  57                           push di
0002:07F3  1E                           push ds
0002:07F4  07                           pop es
0002:07F5  8B 56 04                     mov dx, word ptr [bp + 4]
0002:07F8  BE 00 01                     mov si, 0x100
0002:07FB  AD                           lodsw ax, word ptr [si]
0002:07FC  3B C2                        cmp ax, dx
0002:07FE  74 10                        je 0x810
0002:0800  40                           inc ax
0002:0801  96                           xchg si, ax
0002:0802  74 0C                        je 0x810
0002:0804  97                           xchg di, ax
0002:0805  33 C0                        xor ax, ax
0002:0807  B9 FF FF                     mov cx, 0xffff
0002:080A  F2 AE                        repne scasb al, byte ptr es:[di]
0002:080C  8B F7                        mov si, di
0002:080E  EB EB                        jmp 0x7fb
0002:0810  96                           xchg si, ax
0002:0811  5F                           pop di
0002:0812  5E                           pop si
0002:0813  8B E5                        mov sp, bp
0002:0815  5D                           pop bp
0002:0816  C2 02 00                     ret 2

; FUNCTION 0002:0819 (7 instructions)
0002:0819  55                           push bp
0002:081A  8B EC                        mov bp, sp
0002:081C  57                           push di
0002:081D  5F                           pop di
0002:081E  8B E5                        mov sp, bp
0002:0820  5D                           pop bp
0002:0821  C2 02 00                     ret 2

; FUNCTION 0002:082A (120 instructions)
0002:082A  55                           push bp
0002:082B  8B EC                        mov bp, sp
0002:082D  53                           push bx
0002:082E  06                           push es
0002:082F  51                           push cx
0002:0830  B9 00 10                     mov cx, 0x1000
0002:0833  87 0E E6 00                  xchg word ptr [0xe6], cx
0002:0837  51                           push cx
0002:0838  50                           push ax
0002:0839  E8 8A 01                     call 0x9c6
0002:083C  5B                           pop bx
0002:083D  8F 06 E6 00                  pop word ptr [0xe6]
0002:0841  59                           pop cx
0002:0842  8C DA                        mov dx, ds
0002:0844  0B C0                        or ax, ax
0002:0846  74 04                        je 0x84c
0002:0848  07                           pop es
0002:0849  5B                           pop bx
0002:084A  EB 05                        jmp 0x851
0002:084C  8B C1                        mov ax, cx
0002:084E  E9 0F 00                     jmp 0x860
0002:0851  8B E5                        mov sp, bp
0002:0853  5D                           pop bp
0002:0854  C3                           ret
0002:0860  50                           push ax
0002:0861  50                           push ax
0002:0862  E8 0B FF                     call 0x770
0002:0865  E8 B1 FF                     call 0x819
0002:0868  E8 83 FF                     call 0x7ee
0002:086B  33 DB                        xor bx, bx
0002:086D  0B C0                        or ax, ax
0002:086F  74 1D                        je 0x88e
0002:0871  8B F8                        mov di, ax
0002:0873  B8 09 00                     mov ax, 9
0002:0876  80 3D 4D                     cmp byte ptr [di], 0x4d
0002:0879  75 03                        jne 0x87e
0002:087B  B8 0F 00                     mov ax, 0xf
0002:087E  03 F8                        add di, ax
0002:0880  57                           push di
0002:0881  1E                           push ds
0002:0882  07                           pop es
0002:0883  B0 0D                        mov al, 0xd
0002:0885  B9 22 00                     mov cx, 0x22
0002:0888  F2 AE                        repne scasb al, byte ptr es:[di]
0002:088A  88 5D FF                     mov byte ptr [di - 1], bl
0002:088D  58                           pop ax
0002:088E  53                           push bx
0002:088F  1E                           push ds
0002:0890  50                           push ax
0002:0891  9A FF FF 00 00               lcall 0, 0xffff
0002:0896  B8 FF 00                     mov ax, 0xff
0002:0899  50                           push ax
0002:089A  9A FF FF 00 00               lcall 0, 0xffff
0002:089F  00 51 57                     add byte ptr [bx + di + 0x57], dl
0002:08A2  F6 47 02 01                  test byte ptr [bx + 2], 1
0002:08A6  74 66                        je 0x90e
0002:08A8  E8 EA 00                     call 0x995
0002:08AB  8B FE                        mov di, si
0002:08AD  8B 04                        mov ax, word ptr [si]
0002:08AF  A8 01                        test al, 1
0002:08B1  74 03                        je 0x8b6
0002:08B3  2B C8                        sub cx, ax
0002:08B5  49                           dec cx
0002:08B6  41                           inc cx
0002:08B7  41                           inc cx
0002:08B8  8B 77 04                     mov si, word ptr [bx + 4]
0002:08BB  0B F6                        or si, si
0002:08BD  74 4F                        je 0x90e
0002:08BF  03 CE                        add cx, si
0002:08C1  73 09                        jae 0x8cc
0002:08C3  33 C0                        xor ax, ax
0002:08C5  BA F0 FF                     mov dx, 0xfff0
0002:08C8  E3 33                        jcxz 0x8fd
0002:08CA  EB 42                        jmp 0x90e
0002:08CC  E8 E7 00                     call 0x9b6
0002:08CF  8E C0                        mov es, ax
0002:08D1  26 A1 E6 00                  mov ax, word ptr es:[0xe6]
0002:08D5  3D 00 10                     cmp ax, 0x1000
0002:08D8  74 16                        je 0x8f0
0002:08DA  BA 00 80                     mov dx, 0x8000
0002:08DD  3B D0                        cmp dx, ax
0002:08DF  72 06                        jb 0x8e7
0002:08E1  D1 EA                        shr dx, 1
0002:08E3  75 F8                        jne 0x8dd
0002:08E5  EB 22                        jmp 0x909
0002:08E7  83 FA 08                     cmp dx, 8
0002:08EA  72 1D                        jb 0x909
0002:08EC  D1 E2                        shl dx, 1
0002:08EE  8B C2                        mov ax, dx
0002:08F0  48                           dec ax
0002:08F1  8B D0                        mov dx, ax
0002:08F3  03 C1                        add ax, cx
0002:08F5  73 02                        jae 0x8f9
0002:08F7  33 C0                        xor ax, ax
0002:08F9  F7 D2                        not dx
0002:08FB  23 C2                        and ax, dx
0002:08FD  52                           push dx
0002:08FE  E8 2E 00                     call 0x92f
0002:0901  5A                           pop dx
0002:0902  73 0D                        jae 0x911
0002:0904  83 FA F0                     cmp dx, -0x10
0002:0907  74 05                        je 0x90e
0002:0909  B8 10 00                     mov ax, 0x10
0002:090C  EB E2                        jmp 0x8f0
0002:090E  F9                           stc
0002:090F  EB 1B                        jmp 0x92c
0002:0911  8B D0                        mov dx, ax
0002:0913  2B 57 04                     sub dx, word ptr [bx + 4]
0002:0916  89 47 04                     mov word ptr [bx + 4], ax
0002:0919  89 7F 0A                     mov word ptr [bx + 0xa], di
0002:091C  8B 77 0C                     mov si, word ptr [bx + 0xc]
0002:091F  4A                           dec dx
0002:0920  89 14                        mov word ptr [si], dx
0002:0922  42                           inc dx
0002:0923  03 F2                        add si, dx
0002:0925  C7 04 FE FF                  mov word ptr [si], 0xfffe
0002:0929  89 77 0C                     mov word ptr [bx + 0xc], si
0002:092C  5F                           pop di
0002:092D  59                           pop cx
0002:092E  C3                           ret

; FUNCTION 0002:0856 (1 instructions)
0002:0856  C3                           ret

; FUNCTION 0002:08B4 (56 instructions)
0002:08B4  C8 49 41 41                  enter 0x4149, 0x41
0002:08B8  8B 77 04                     mov si, word ptr [bx + 4]
0002:08BB  0B F6                        or si, si
0002:08BD  74 4F                        je 0x90e
0002:08BF  03 CE                        add cx, si
0002:08C1  73 09                        jae 0x8cc
0002:08C3  33 C0                        xor ax, ax
0002:08C5  BA F0 FF                     mov dx, 0xfff0
0002:08C8  E3 33                        jcxz 0x8fd
0002:08CA  EB 42                        jmp 0x90e
0002:08CC  E8 E7 00                     call 0x9b6
0002:08CF  8E C0                        mov es, ax
0002:08D1  26 A1 E6 00                  mov ax, word ptr es:[0xe6]
0002:08D5  3D 00 10                     cmp ax, 0x1000
0002:08D8  74 16                        je 0x8f0
0002:08DA  BA 00 80                     mov dx, 0x8000
0002:08DD  3B D0                        cmp dx, ax
0002:08DF  72 06                        jb 0x8e7
0002:08E1  D1 EA                        shr dx, 1
0002:08E3  75 F8                        jne 0x8dd
0002:08E5  EB 22                        jmp 0x909
0002:08E7  83 FA 08                     cmp dx, 8
0002:08EA  72 1D                        jb 0x909
0002:08EC  D1 E2                        shl dx, 1
0002:08EE  8B C2                        mov ax, dx
0002:08F0  48                           dec ax
0002:08F1  8B D0                        mov dx, ax
0002:08F3  03 C1                        add ax, cx
0002:08F5  73 02                        jae 0x8f9
0002:08F7  33 C0                        xor ax, ax
0002:08F9  F7 D2                        not dx
0002:08FB  23 C2                        and ax, dx
0002:08FD  52                           push dx
0002:08FE  E8 2E 00                     call 0x92f
0002:0901  5A                           pop dx
0002:0902  73 0D                        jae 0x911
0002:0904  83 FA F0                     cmp dx, -0x10
0002:0907  74 05                        je 0x90e
0002:0909  B8 10 00                     mov ax, 0x10
0002:090C  EB E2                        jmp 0x8f0
0002:090E  F9                           stc
0002:090F  EB 1B                        jmp 0x92c
0002:0911  8B D0                        mov dx, ax
0002:0913  2B 57 04                     sub dx, word ptr [bx + 4]
0002:0916  89 47 04                     mov word ptr [bx + 4], ax
0002:0919  89 7F 0A                     mov word ptr [bx + 0xa], di
0002:091C  8B 77 0C                     mov si, word ptr [bx + 0xc]
0002:091F  4A                           dec dx
0002:0920  89 14                        mov word ptr [si], dx
0002:0922  42                           inc dx
0002:0923  03 F2                        add si, dx
0002:0925  C7 04 FE FF                  mov word ptr [si], 0xfffe
0002:0929  89 77 0C                     mov word ptr [bx + 0xc], si
0002:092C  5F                           pop di
0002:092D  59                           pop cx
0002:092E  C3                           ret

; FUNCTION 0002:092F (145 instructions)
0002:0860  50                           push ax
0002:0861  50                           push ax
0002:0862  E8 0B FF                     call 0x770
0002:0865  E8 B1 FF                     call 0x819
0002:0868  E8 83 FF                     call 0x7ee
0002:086B  33 DB                        xor bx, bx
0002:086D  0B C0                        or ax, ax
0002:086F  74 1D                        je 0x88e
0002:0871  8B F8                        mov di, ax
0002:0873  B8 09 00                     mov ax, 9
0002:0876  80 3D 4D                     cmp byte ptr [di], 0x4d
0002:0879  75 03                        jne 0x87e
0002:087B  B8 0F 00                     mov ax, 0xf
0002:087E  03 F8                        add di, ax
0002:0880  57                           push di
0002:0881  1E                           push ds
0002:0882  07                           pop es
0002:0883  B0 0D                        mov al, 0xd
0002:0885  B9 22 00                     mov cx, 0x22
0002:0888  F2 AE                        repne scasb al, byte ptr es:[di]
0002:088A  88 5D FF                     mov byte ptr [di - 1], bl
0002:088D  58                           pop ax
0002:088E  53                           push bx
0002:088F  1E                           push ds
0002:0890  50                           push ax
0002:0891  9A FF FF 00 00               lcall 0, 0xffff
0002:0896  B8 FF 00                     mov ax, 0xff
0002:0899  50                           push ax
0002:089A  9A FF FF 00 00               lcall 0, 0xffff
0002:089F  00 51 57                     add byte ptr [bx + di + 0x57], dl
0002:08A2  F6 47 02 01                  test byte ptr [bx + 2], 1
0002:08A6  74 66                        je 0x90e
0002:08A8  E8 EA 00                     call 0x995
0002:08AB  8B FE                        mov di, si
0002:08AD  8B 04                        mov ax, word ptr [si]
0002:08AF  A8 01                        test al, 1
0002:08B1  74 03                        je 0x8b6
0002:08B3  2B C8                        sub cx, ax
0002:08B5  49                           dec cx
0002:08B6  41                           inc cx
0002:08B7  41                           inc cx
0002:08B8  8B 77 04                     mov si, word ptr [bx + 4]
0002:08BB  0B F6                        or si, si
0002:08BD  74 4F                        je 0x90e
0002:08BF  03 CE                        add cx, si
0002:08C1  73 09                        jae 0x8cc
0002:08C3  33 C0                        xor ax, ax
0002:08C5  BA F0 FF                     mov dx, 0xfff0
0002:08C8  E3 33                        jcxz 0x8fd
0002:08CA  EB 42                        jmp 0x90e
0002:08CC  E8 E7 00                     call 0x9b6
0002:08CF  8E C0                        mov es, ax
0002:08D1  26 A1 E6 00                  mov ax, word ptr es:[0xe6]
0002:08D5  3D 00 10                     cmp ax, 0x1000
0002:08D8  74 16                        je 0x8f0
0002:08DA  BA 00 80                     mov dx, 0x8000
0002:08DD  3B D0                        cmp dx, ax
0002:08DF  72 06                        jb 0x8e7
0002:08E1  D1 EA                        shr dx, 1
0002:08E3  75 F8                        jne 0x8dd
0002:08E5  EB 22                        jmp 0x909
0002:08E7  83 FA 08                     cmp dx, 8
0002:08EA  72 1D                        jb 0x909
0002:08EC  D1 E2                        shl dx, 1
0002:08EE  8B C2                        mov ax, dx
0002:08F0  48                           dec ax
0002:08F1  8B D0                        mov dx, ax
0002:08F3  03 C1                        add ax, cx
0002:08F5  73 02                        jae 0x8f9
0002:08F7  33 C0                        xor ax, ax
0002:08F9  F7 D2                        not dx
0002:08FB  23 C2                        and ax, dx
0002:08FD  52                           push dx
0002:08FE  E8 2E 00                     call 0x92f
0002:0901  5A                           pop dx
0002:0902  73 0D                        jae 0x911
0002:0904  83 FA F0                     cmp dx, -0x10
0002:0907  74 05                        je 0x90e
0002:0909  B8 10 00                     mov ax, 0x10
0002:090C  EB E2                        jmp 0x8f0
0002:090E  F9                           stc
0002:090F  EB 1B                        jmp 0x92c
0002:0911  8B D0                        mov dx, ax
0002:0913  2B 57 04                     sub dx, word ptr [bx + 4]
0002:0916  89 47 04                     mov word ptr [bx + 4], ax
0002:0919  89 7F 0A                     mov word ptr [bx + 0xa], di
0002:091C  8B 77 0C                     mov si, word ptr [bx + 0xc]
0002:091F  4A                           dec dx
0002:0920  89 14                        mov word ptr [si], dx
0002:0922  42                           inc dx
0002:0923  03 F2                        add si, dx
0002:0925  C7 04 FE FF                  mov word ptr [si], 0xfffe
0002:0929  89 77 0C                     mov word ptr [bx + 0xc], si
0002:092C  5F                           pop di
0002:092D  59                           pop cx
0002:092E  C3                           ret
0002:092F  8B D0                        mov dx, ax
0002:0931  F6 47 02 04                  test byte ptr [bx + 2], 4
0002:0935  74 02                        je 0x939
0002:0937  EB 51                        jmp 0x98a
0002:0939  52                           push dx
0002:093A  51                           push cx
0002:093B  53                           push bx
0002:093C  8B 77 06                     mov si, word ptr [bx + 6]
0002:093F  2E 8B 1E B6 05               mov bx, word ptr cs:[0x5b6]
0002:0944  33 C9                        xor cx, cx
0002:0946  0B D2                        or dx, dx
0002:0948  75 07                        jne 0x951
0002:094A  F7 C3 10 00                  test bx, 0x10
0002:094E  75 40                        jne 0x990
0002:0950  41                           inc cx
0002:0951  B8 02 20                     mov ax, 0x2002
0002:0954  F7 C3 01 00                  test bx, 1
0002:0958  75 03                        jne 0x95d
0002:095A  B8 20 20                     mov ax, 0x2020
0002:095D  56                           push si
0002:095E  51                           push cx
0002:095F  52                           push dx
0002:0960  50                           push ax
0002:0961  9A FF FF 00 00               lcall 0, 0xffff
0002:0966  0B C0                        or ax, ax
0002:0968  74 26                        je 0x990
0002:096A  3B C6                        cmp ax, si
0002:096C  75 1C                        jne 0x98a
0002:096E  56                           push si
0002:096F  9A FF FF 00 00               lcall 0, 0xffff
0002:0974  0B D0                        or dx, ax
0002:0976  74 12                        je 0x98a
0002:0978  5B                           pop bx
0002:0979  59                           pop cx
0002:097A  5A                           pop dx
0002:097B  8B C2                        mov ax, dx
0002:097D  F6 47 02 04                  test byte ptr [bx + 2], 4
0002:0981  74 04                        je 0x987
0002:0983  4A                           dec dx
0002:0984  89 57 FE                     mov word ptr [bx - 2], dx
0002:0987  F8                           clc
0002:0988  EB 0A                        jmp 0x994
0002:098A  B8 12 00                     mov ax, 0x12
0002:098D  E9 D0 FE                     jmp 0x860
0002:0990  5B                           pop bx
0002:0991  59                           pop cx
0002:0992  5A                           pop dx
0002:0993  F9                           stc
0002:0994  C3                           ret

; FUNCTION 0002:0995 (17 instructions)
0002:0995  57                           push di
0002:0996  8B 77 0A                     mov si, word ptr [bx + 0xa]
0002:0999  3B 77 0C                     cmp si, word ptr [bx + 0xc]
0002:099C  75 03                        jne 0x9a1
0002:099E  8B 77 08                     mov si, word ptr [bx + 8]
0002:09A1  AD                           lodsw ax, word ptr [si]
0002:09A2  83 F8 FE                     cmp ax, -2
0002:09A5  74 08                        je 0x9af
0002:09A7  8B FE                        mov di, si
0002:09A9  24 FE                        and al, 0xfe
0002:09AB  03 F0                        add si, ax
0002:09AD  EB F2                        jmp 0x9a1
0002:09AF  4F                           dec di
0002:09B0  4F                           dec di
0002:09B1  8B F7                        mov si, di
0002:09B3  5F                           pop di
0002:09B4  C3                           ret

; FUNCTION 0002:09B6 (6 instructions)
0002:09B6  2E 80 3E A4 0A B8            cmp byte ptr cs:[0xaa4], 0xb8
0002:09BC  74 03                        je 0x9c1
0002:09BE  8C D0                        mov ax, ss
0002:09C0  C3                           ret
0002:09C1  2E A1 A5 0A                  mov ax, word ptr cs:[0xaa5]
0002:09C5  C3                           ret

; FUNCTION 0002:09C6 (30 instructions)
0002:09C6  55                           push bp
0002:09C7  8B EC                        mov bp, sp
0002:09C9  83 EC 02                     sub sp, 2
0002:09CC  83 7E 04 00                  cmp word ptr [bp + 4], 0
0002:09D0  75 05                        jne 0x9d7
0002:09D2  C7 46 04 01 00               mov word ptr [bp + 4], 1
0002:09D7  B8 FF FF                     mov ax, 0xffff
0002:09DA  50                           push ax
0002:09DB  9A 61 0A 00 00               lcall 0, 0xa61
0002:09E0  B8 20 00                     mov ax, 0x20
0002:09E3  50                           push ax
0002:09E4  FF 76 04                     push word ptr [bp + 4]
0002:09E7  9A FF FF 00 00               lcall 0, 0xffff
0002:09EC  89 46 FE                     mov word ptr [bp - 2], ax
0002:09EF  B8 FF FF                     mov ax, 0xffff
0002:09F2  50                           push ax
0002:09F3  9A 89 0A 00 00               lcall 0, 0xa89
0002:09F8  83 7E FE 00                  cmp word ptr [bp - 2], 0
0002:09FC  75 15                        jne 0xa13
0002:09FE  83 3E E8 00 00               cmp word ptr [0xe8], 0
0002:0A03  74 0E                        je 0xa13
0002:0A05  FF 76 04                     push word ptr [bp + 4]
0002:0A08  FF 16 E8 00                  call word ptr [0xe8]
0002:0A0C  83 C4 02                     add sp, 2
0002:0A0F  0B C0                        or ax, ax
0002:0A11  75 C4                        jne 0x9d7
0002:0A13  8B 46 FE                     mov ax, word ptr [bp - 2]
0002:0A16  8B E5                        mov sp, bp
0002:0A18  5D                           pop bp
0002:0A19  C3                           ret

; FUNCTION 0002:0A1A (9 instructions)
0002:0A1A  55                           push bp
0002:0A1B  8B EC                        mov bp, sp
0002:0A1D  83 7E 04 00                  cmp word ptr [bp + 4], 0
0002:0A21  74 08                        je 0xa2b
0002:0A23  FF 76 04                     push word ptr [bp + 4]
0002:0A26  9A FF FF 00 00               lcall 0, 0xffff
0002:0A2B  8B E5                        mov sp, bp
0002:0A2D  5D                           pop bp
0002:0A2E  C3                           ret

; FUNCTION 0002:0A30 (37 instructions)
0002:0A30  55                           push bp
0002:0A31  8B EC                        mov bp, sp
0002:0A33  83 EC 04                     sub sp, 4
0002:0A36  83 7E 04 00                  cmp word ptr [bp + 4], 0
0002:0A3A  75 0C                        jne 0xa48
0002:0A3C  FF 76 06                     push word ptr [bp + 6]
0002:0A3F  E8 84 FF                     call 0x9c6
0002:0A42  83 C4 02                     add sp, 2
0002:0A45  EB 49                        jmp 0xa90
0002:0A48  83 7E 06 00                  cmp word ptr [bp + 6], 0
0002:0A4C  75 0E                        jne 0xa5c
0002:0A4E  FF 76 04                     push word ptr [bp + 4]
0002:0A51  E8 C6 FF                     call 0xa1a
0002:0A54  83 C4 02                     add sp, 2
0002:0A57  33 C0                        xor ax, ax
0002:0A59  EB 35                        jmp 0xa90
0002:0A5C  B8 FF FF                     mov ax, 0xffff
0002:0A5F  50                           push ax
0002:0A60  9A FF FF 00 00               lcall 0, 0xffff
0002:0A65  FF 76 04                     push word ptr [bp + 4]
0002:0A68  83 7E 06 00                  cmp word ptr [bp + 6], 0
0002:0A6C  74 06                        je 0xa74
0002:0A6E  8B 46 06                     mov ax, word ptr [bp + 6]
0002:0A71  EB 04                        jmp 0xa77
0002:0A74  B8 01 00                     mov ax, 1
0002:0A77  50                           push ax
0002:0A78  B8 62 00                     mov ax, 0x62
0002:0A7B  50                           push ax
0002:0A7C  9A FF FF 00 00               lcall 0, 0xffff
0002:0A81  89 46 FE                     mov word ptr [bp - 2], ax
0002:0A84  B8 FF FF                     mov ax, 0xffff
0002:0A87  50                           push ax
0002:0A88  9A FF FF 00 00               lcall 0, 0xffff
0002:0A8D  8B 46 FE                     mov ax, word ptr [bp - 2]
0002:0A90  8B E5                        mov sp, bp
0002:0A92  5D                           pop bp
0002:0A93  C3                           ret

; FUNCTION 0002:0A94 (7 instructions)
0002:0A94  55                           push bp
0002:0A95  8B EC                        mov bp, sp
0002:0A97  FF 76 04                     push word ptr [bp + 4]
0002:0A9A  9A FF FF 00 00               lcall 0, 0xffff
0002:0A9F  8B E5                        mov sp, bp
0002:0AA1  5D                           pop bp
0002:0AA2  C3                           ret

; FUNCTION 0002:0AA4 (3 instructions)
0002:0AA4  8C D8                        mov ax, ds
0002:0AA6  90                           nop
0002:0AA7  45                           inc bp

; FUNCTION 0002:0AA8 (10 instructions)
0002:0AA8  55                           push bp
0002:0AA9  8B EC                        mov bp, sp
0002:0AAB  1E                           push ds
0002:0AAC  8E D8                        mov ds, ax
0002:0AAE  33 C0                        xor ax, ax
0002:0AB0  8D 66 FE                     lea sp, [bp - 2]
0002:0AB3  1F                           pop ds
0002:0AB4  5D                           pop bp
0002:0AB5  4D                           dec bp
0002:0AB6  CB                           retf
