; FUNCTION 0001:0002 (2 instructions)
0001:0002  B8 01 00                     mov ax, 1
0001:0005  CA 02 00                     retf 2

; FUNCTION 0001:0008 (18 instructions)
0001:0008  5B                           pop bx
0001:0009  2B C4                        sub ax, sp
0001:000B  73 19                        jae 0x26
0001:000D  F7 D8                        neg ax
0001:000F  36 39 06 0A 00               cmp word ptr ss:[0xa], ax
0001:0014  77 10                        ja 0x26
0001:0016  36 39 06 0C 00               cmp word ptr ss:[0xc], ax
0001:001B  76 04                        jbe 0x21
0001:001D  36 A3 0C 00                  mov word ptr ss:[0xc], ax
0001:0021  8B E0                        mov sp, ax
0001:0023  F8                           clc
0001:0024  FF E3                        jmp bx
0001:0026  36 A1 0A 00                  mov ax, word ptr ss:[0xa]
0001:002A  36 A3 0C 00                  mov word ptr ss:[0xc], ax
0001:002E  33 C0                        xor ax, ax
0001:0030  BA 00 80                     mov dx, 0x8000
0001:0033  F9                           stc
0001:0034  FF E3                        jmp bx

; FUNCTION 0001:0036 (3 instructions)
0001:0036  8C D8                        mov ax, ds
0001:0038  90                           nop
0001:0039  45                           inc bp

; FUNCTION 0001:003A (97 instructions)
0001:003A  55                           push bp
0001:003B  8B EC                        mov bp, sp
0001:003D  1E                           push ds
0001:003E  8E D8                        mov ds, ax
0001:0040  83 EC 02                     sub sp, 2
0001:0043  56                           push si
0001:0044  57                           push di
0001:0045  06                           push es
0001:0046  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:004C  74 08                        je 0x56
0001:004E  C7 46 FC 04 00               mov word ptr [bp - 4], 4
0001:0053  EB 06                        jmp 0x5b
0001:0056  C7 46 FC 02 00               mov word ptr [bp - 4], 2
0001:005B  33 C9                        xor cx, cx
0001:005D  8B 76 14                     mov si, word ptr [bp + 0x14]
0001:0060  8B 46 12                     mov ax, word ptr [bp + 0x12]
0001:0063  2B C6                        sub ax, si
0001:0065  73 03                        jae 0x6a
0001:0067  E9 95 00                     jmp 0xff
0001:006A  40                           inc ax
0001:006B  FC                           cld
0001:006C  C4 7E 16                     les di, ptr [bp + 0x16]
0001:006F  8E 5E 10                     mov ds, word ptr [bp + 0x10]
0001:0072  8B 0E 56 00                  mov cx, word ptr [0x56]
0001:0076  E3 04                        jcxz 0x7c
0001:0078  91                           xchg cx, ax
0001:0079  E9 80 00                     jmp 0xfc
0001:007C  33 DB                        xor bx, bx
0001:007E  8A 1E 61 00                  mov bl, byte ptr [0x61]
0001:0082  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:0088  74 11                        je 0x9b
0001:008A  50                           push ax
0001:008B  D1 E3                        shl bx, 1
0001:008D  8B C3                        mov ax, bx
0001:008F  D1 E3                        shl bx, 1
0001:0091  03 D8                        add bx, ax
0001:0093  58                           pop ax
0001:0094  8B 8F 94 00                  mov cx, word ptr [bx + 0x94]
0001:0098  EB 08                        jmp 0xa2
0001:009B  C1 E3 02                     shl bx, 2
0001:009E  8B 8F 76 00                  mov cx, word ptr [bx + 0x76]
0001:00A2  93                           xchg bx, ax
0001:00A3  33 C0                        xor ax, ax
0001:00A5  A0 5F 00                     mov al, byte ptr [0x5f]
0001:00A8  2B F0                        sub si, ax
0001:00AA  7D 12                        jge 0xbe
0001:00AC  33 C0                        xor ax, ax
0001:00AE  96                           xchg si, ax
0001:00AF  F7 D8                        neg ax
0001:00B1  2B C3                        sub ax, bx
0001:00B3  99                           cdq
0001:00B4  23 C2                        and ax, dx
0001:00B6  03 C3                        add ax, bx
0001:00B8  2B D8                        sub bx, ax
0001:00BA  91                           xchg cx, ax
0001:00BB  F3 AB                        rep stosw word ptr es:[di], ax
0001:00BD  91                           xchg cx, ax
0001:00BE  33 C0                        xor ax, ax
0001:00C0  A0 60 00                     mov al, byte ptr [0x60]
0001:00C3  2B C6                        sub ax, si
0001:00C5  7C 32                        jl 0xf9
0001:00C7  40                           inc ax
0001:00C8  2B C3                        sub ax, bx
0001:00CA  99                           cdq
0001:00CB  23 C2                        and ax, dx
0001:00CD  03 C3                        add ax, bx
0001:00CF  2B D8                        sub bx, ax
0001:00D1  91                           xchg cx, ax
0001:00D2  E3 24                        jcxz 0xf8
0001:00D4  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:00DA  74 0F                        je 0xeb
0001:00DC  53                           push bx
0001:00DD  D1 E6                        shl si, 1
0001:00DF  8B DE                        mov bx, si
0001:00E1  D1 E6                        shl si, 1
0001:00E3  8D B0 94 00                  lea si, [bx + si + 0x94]
0001:00E7  5B                           pop bx
0001:00E8  EB 08                        jmp 0xf2
0001:00EB  C1 E6 02                     shl si, 2
0001:00EE  81 C6 76 00                  add si, 0x76
0001:00F2  A5                           movsw word ptr es:[di], word ptr [si]
0001:00F3  03 76 FC                     add si, word ptr [bp - 4]
0001:00F6  E2 FA                        loop 0xf2
0001:00F8  91                           xchg cx, ax
0001:00F9  91                           xchg cx, ax
0001:00FA  8B CB                        mov cx, bx
0001:00FC  F3 AB                        rep stosw word ptr es:[di], ax
0001:00FE  41                           inc cx
0001:00FF  91                           xchg cx, ax
0001:0100  07                           pop es
0001:0101  5F                           pop di
0001:0102  5E                           pop si
0001:0103  8D 66 FE                     lea sp, [bp - 2]
0001:0106  1F                           pop ds
0001:0107  5D                           pop bp
0001:0108  4D                           dec bp
0001:0109  CA 18 00                     retf 0x18

; FUNCTION 0001:010D (43 instructions)
0001:010D  C8 8E D8 B9                  enter -0x2772, -0x47
0001:0111  03 00                        add ax, word ptr [bx + si]
0001:0113  33 DB                        xor bx, bx
0001:0115  96                           xchg si, ax
0001:0116  D3 E0                        shl ax, cl
0001:0118  41                           inc cx
0001:0119  D0 EA                        shr dl, 1
0001:011B  12 D3                        adc dl, bl
0001:011D  D0 EA                        shr dl, 1
0001:011F  8A DA                        mov bl, dl
0001:0121  8A F2                        mov dh, dl
0001:0123  80 E3 FC                     and bl, 0xfc
0001:0126  8D B7 93 01                  lea si, [bx + 0x193]
0001:012A  FC                           cld
0001:012B  A5                           movsw word ptr es:[di], word ptr [si]
0001:012C  A5                           movsw word ptr es:[di], word ptr [si]
0001:012D  2B F1                        sub si, cx
0001:012F  A5                           movsw word ptr es:[di], word ptr [si]
0001:0130  A5                           movsw word ptr es:[di], word ptr [si]
0001:0131  96                           xchg si, ax
0001:0132  F6 C2 03                     test dl, 3
0001:0135  75 0F                        jne 0x146
0001:0137  F6 C2 0F                     test dl, 0xf
0001:013A  75 09                        jne 0x145
0001:013C  D3 EB                        shr bx, cl
0001:013E  2E 8A 9F 6E 01               mov bl, byte ptr cs:[bx + 0x16e]
0001:0143  0B F3                        or si, bx
0001:0145  C3                           ret
0001:0146  D1 EB                        shr bx, 1
0001:0148  80 E3 FE                     and bl, 0xfe
0001:014B  2E 8B 87 73 01               mov ax, word ptr cs:[bx + 0x173]
0001:0150  8A D8                        mov bl, al
0001:0152  83 EB 08                     sub bx, 8
0001:0155  8A C4                        mov al, ah
0001:0157  D2 E8                        shr al, cl
0001:0159  80 E2 03                     and dl, 3
0001:015C  80 FA 02                     cmp dl, 2
0001:015F  72 09                        jb 0x16a
0001:0161  74 03                        je 0x166
0001:0163  26 08 01                     or byte ptr es:[bx + di], al
0001:0166  26 08 41 04                  or byte ptr es:[bx + di + 4], al
0001:016A  26 08 21                     or byte ptr es:[bx + di], ah
0001:016D  C3                           ret

; FUNCTION 0001:01D8 (3 instructions)
0001:01D8  8C D8                        mov ax, ds
0001:01DA  90                           nop
0001:01DB  45                           inc bp

; FUNCTION 0001:01DC (37 instructions)
0001:01DC  55                           push bp
0001:01DD  8B EC                        mov bp, sp
0001:01DF  1E                           push ds
0001:01E0  8E D8                        mov ds, ax
0001:01E2  83 EC 0C                     sub sp, 0xc
0001:01E5  56                           push si
0001:01E6  57                           push di
0001:01E7  06                           push es
0001:01E8  FC                           cld
0001:01E9  8C D8                        mov ax, ds
0001:01EB  89 46 F2                     mov word ptr [bp - 0xe], ax
0001:01EE  B8 01 00                     mov ax, 1
0001:01F1  8B 5E 12                     mov bx, word ptr [bp + 0x12]
0001:01F4  0B DB                        or bx, bx
0001:01F6  78 21                        js 0x219
0001:01F8  C5 76 0E                     lds si, ptr [bp + 0xe]
0001:01FB  48                           dec ax
0001:01FC  4B                           dec bx
0001:01FD  83 FB 02                     cmp bx, 2
0001:0200  7F 17                        jg 0x219
0001:0202  D1 E3                        shl bx, 1
0001:0204  C4 7E 0A                     les di, ptr [bp + 0xa]
0001:0207  8C C1                        mov cx, es
0001:0209  0B CF                        or cx, di
0001:020B  74 07                        je 0x214
0001:020D  53                           push bx
0001:020E  2E FF 97 B5 05               call word ptr cs:[bx + 0x5b5]
0001:0213  5B                           pop bx
0001:0214  2E 8B 87 BB 05               mov ax, word ptr cs:[bx + 0x5bb]
0001:0219  07                           pop es
0001:021A  5F                           pop di
0001:021B  5E                           pop si
0001:021C  8D 66 FE                     lea sp, [bp - 2]
0001:021F  1F                           pop ds
0001:0220  5D                           pop bp
0001:0221  4D                           dec bp
0001:0222  CA 12 00                     retf 0x12

; FUNCTION 0001:0393 (2 instructions)
0001:0393  C8 D0 D4 FE                  enter -0x2b30, -2
0001:0397  CD 75                        int 0x75

; FUNCTION 0001:0418 (2 instructions)
0001:0418  C8 D0 D4 FE                  enter -0x2b30, -2
0001:041C  CD 75                        int 0x75

; FUNCTION 0001:0429 (7 instructions)
0001:0429  C8 8E D8 B9                  enter -0x2772, -0x47
0001:042D  04 00                        add al, 0
0001:042F  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:0431  BB 02 00                     mov bx, 2
0001:0434  32 F6                        xor dh, dh
0001:0436  1F                           pop ds
0001:0437  C3                           ret

; FUNCTION 0001:0602 (37 instructions)
0001:0602  55                           push bp
0001:0603  8B EC                        mov bp, sp
0001:0605  56                           push si
0001:0606  1E                           push ds
0001:0607  C5 76 08                     lds si, ptr [bp + 8]
0001:060A  E8 EF 00                     call 0x6fc
0001:060D  8B 46 04                     mov ax, word ptr [bp + 4]
0001:0610  8B 56 06                     mov dx, word ptr [bp + 6]
0001:0613  80 FE 01                     cmp dh, 1
0001:0616  74 0A                        je 0x622
0001:0618  0A F6                        or dh, dh
0001:061A  78 06                        js 0x622
0001:061C  81 FA FF 10                  cmp dx, 0x10ff
0001:0620  75 05                        jne 0x627
0001:0622  B4 80                        mov ah, 0x80
0001:0624  EB 04                        jmp 0x62a
0001:0627  E8 32 01                     call 0x75c
0001:062A  32 FF                        xor bh, bh
0001:062C  8A D8                        mov bl, al
0001:062E  C1 E3 02                     shl bx, 2
0001:0631  03 F3                        add si, bx
0001:0633  8B 0C                        mov cx, word ptr [si]
0001:0635  8A 5C 02                     mov bl, byte ptr [si + 2]
0001:0638  32 FF                        xor bh, bh
0001:063A  86 D9                        xchg cl, bl
0001:063C  D0 EC                        shr ah, 1
0001:063E  8B D3                        mov dx, bx
0001:0640  02 D1                        add dl, cl
0001:0642  D0 DA                        rcr dl, 1
0001:0644  02 D5                        add dl, ch
0001:0646  D0 D4                        rcl ah, 1
0001:0648  BA 00 FF                     mov dx, 0xff00
0001:064B  1F                           pop ds
0001:064C  5E                           pop si
0001:064D  8B E5                        mov sp, bp
0001:064F  5D                           pop bp
0001:0650  C2 08 00                     ret 8

; FUNCTION 0001:0653 (76 instructions)
0001:0653  55                           push bp
0001:0654  8B EC                        mov bp, sp
0001:0656  83 EC 04                     sub sp, 4
0001:0659  56                           push si
0001:065A  57                           push di
0001:065B  06                           push es
0001:065C  1E                           push ds
0001:065D  8B 46 0A                     mov ax, word ptr [bp + 0xa]
0001:0660  8B 76 08                     mov si, word ptr [bp + 8]
0001:0663  8B D8                        mov bx, ax
0001:0665  0B DE                        or bx, si
0001:0667  74 0E                        je 0x677
0001:0669  8B 56 0E                     mov dx, word ptr [bp + 0xe]
0001:066C  8B 7E 0C                     mov di, word ptr [bp + 0xc]
0001:066F  3B C2                        cmp ax, dx
0001:0671  75 17                        jne 0x68a
0001:0673  3B F7                        cmp si, di
0001:0675  75 13                        jne 0x68a
0001:0677  C4 7E 04                     les di, ptr [bp + 4]
0001:067A  B8 00 01                     mov ax, 0x100
0001:067D  B9 80 00                     mov cx, 0x80
0001:0680  AB                           stosw word ptr es:[di], ax
0001:0681  05 02 02                     add ax, 0x202
0001:0684  E2 FA                        loop 0x680
0001:0686  F8                           clc
0001:0687  EB 69                        jmp 0x6f2
0001:068A  8E D8                        mov ds, ax
0001:068C  E8 6D 00                     call 0x6fc
0001:068F  72 E6                        jb 0x677
0001:0691  89 76 08                     mov word ptr [bp + 8], si
0001:0694  8C 5E 0A                     mov word ptr [bp + 0xa], ds
0001:0697  89 4E FE                     mov word ptr [bp - 2], cx
0001:069A  1E                           push ds
0001:069B  07                           pop es
0001:069C  87 F7                        xchg di, si
0001:069E  8E 5E 0E                     mov ds, word ptr [bp + 0xe]
0001:06A1  E8 58 00                     call 0x6fc
0001:06A4  72 D1                        jb 0x677
0001:06A6  89 76 0C                     mov word ptr [bp + 0xc], si
0001:06A9  8C 5E 0E                     mov word ptr [bp + 0xe], ds
0001:06AC  89 4E FC                     mov word ptr [bp - 4], cx
0001:06AF  3B F7                        cmp si, di
0001:06B1  75 08                        jne 0x6bb
0001:06B3  8C C0                        mov ax, es
0001:06B5  8C DB                        mov bx, ds
0001:06B7  3B C3                        cmp ax, bx
0001:06B9  74 BC                        je 0x677
0001:06BB  8B 5E FE                     mov bx, word ptr [bp - 2]
0001:06BE  3B D9                        cmp bx, cx
0001:06C0  77 11                        ja 0x6d3
0001:06C2  8B CB                        mov cx, bx
0001:06C4  03 C9                        add cx, cx
0001:06C6  F3 A7                        repe cmpsw word ptr [si], word ptr es:[di]
0001:06C8  74 AD                        je 0x677
0001:06CA  8B 76 0C                     mov si, word ptr [bp + 0xc]
0001:06CD  8B 7E 08                     mov di, word ptr [bp + 8]
0001:06D0  8B 4E FC                     mov cx, word ptr [bp - 4]
0001:06D3  8B 5E 04                     mov bx, word ptr [bp + 4]
0001:06D6  8B 4E FC                     mov cx, word ptr [bp - 4]
0001:06D9  26 8B 05                     mov ax, word ptr es:[di]
0001:06DC  26 8B 55 02                  mov dx, word ptr es:[di + 2]
0001:06E0  86 C2                        xchg dl, al
0001:06E2  E8 77 00                     call 0x75c
0001:06E5  36 88 07                     mov byte ptr ss:[bx], al
0001:06E8  43                           inc bx
0001:06E9  83 C7 04                     add di, 4
0001:06EC  FF 4E FE                     dec word ptr [bp - 2]
0001:06EF  75 E8                        jne 0x6d9
0001:06F1  F9                           stc
0001:06F2  1F                           pop ds
0001:06F3  07                           pop es
0001:06F4  5F                           pop di
0001:06F5  5E                           pop si
0001:06F6  8B E5                        mov sp, bp
0001:06F8  5D                           pop bp
0001:06F9  C2 0C 00                     ret 0xc

; FUNCTION 0001:06FC (38 instructions)
0001:06FC  83 3C 28                     cmp word ptr [si], 0x28
0001:06FF  74 23                        je 0x724
0001:0701  81 3C 49 44                  cmp word ptr [si], 0x4449
0001:0705  74 14                        je 0x71b
0001:0707  C5 74 12                     lds si, ptr [si + 0x12]
0001:070A  8C D8                        mov ax, ds
0001:070C  0B C0                        or ax, ax
0001:070E  75 F1                        jne 0x701
0001:0710  0E                           push cs
0001:0711  1F                           pop ds
0001:0712  8D 36 C2 05                  lea si, [0x5c2]
0001:0716  B9 10 00                     mov cx, 0x10
0001:0719  F9                           stc
0001:071A  C3                           ret
0001:071B  C5 74 1C                     lds si, ptr [si + 0x1c]
0001:071E  8C D8                        mov ax, ds
0001:0720  0B C0                        or ax, ax
0001:0722  74 EC                        je 0x710
0001:0724  E8 22 00                     call 0x749
0001:0727  8B C8                        mov cx, ax
0001:0729  8B 5C 24                     mov bx, word ptr [si + 0x24]
0001:072C  03 34                        add si, word ptr [si]
0001:072E  8B D1                        mov dx, cx
0001:0730  0B DB                        or bx, bx
0001:0732  74 02                        je 0x736
0001:0734  8B CB                        mov cx, bx
0001:0736  33 DB                        xor bx, bx
0001:0738  33 C0                        xor ax, ax
0001:073A  39 00                        cmp word ptr [bx + si], ax
0001:073C  75 07                        jne 0x745
0001:073E  40                           inc ax
0001:073F  43                           inc bx
0001:0740  43                           inc bx
0001:0741  E2 F7                        loop 0x73a
0001:0743  EB CB                        jmp 0x710
0001:0745  8B CA                        mov cx, dx
0001:0747  F8                           clc
0001:0748  C3                           ret

; FUNCTION 0001:0728 (24 instructions)
0001:0710  0E                           push cs
0001:0711  1F                           pop ds
0001:0712  8D 36 C2 05                  lea si, [0x5c2]
0001:0716  B9 10 00                     mov cx, 0x10
0001:0719  F9                           stc
0001:071A  C3                           ret
0001:0728  C8 8B 5C 24                  enter 0x5c8b, 0x24
0001:072C  03 34                        add si, word ptr [si]
0001:072E  8B D1                        mov dx, cx
0001:0730  0B DB                        or bx, bx
0001:0732  74 02                        je 0x736
0001:0734  8B CB                        mov cx, bx
0001:0736  33 DB                        xor bx, bx
0001:0738  33 C0                        xor ax, ax
0001:073A  39 00                        cmp word ptr [bx + si], ax
0001:073C  75 07                        jne 0x745
0001:073E  40                           inc ax
0001:073F  43                           inc bx
0001:0740  43                           inc bx
0001:0741  E2 F7                        loop 0x73a
0001:0743  EB CB                        jmp 0x710
0001:0745  8B CA                        mov cx, dx
0001:0747  F8                           clc
0001:0748  C3                           ret

; FUNCTION 0001:0749 (9 instructions)
0001:0749  8B 44 20                     mov ax, word ptr [si + 0x20]
0001:074C  0B C0                        or ax, ax
0001:074E  75 0B                        jne 0x75b
0001:0750  8A 4C 0E                     mov cl, byte ptr [si + 0xe]
0001:0753  80 F9 18                     cmp cl, 0x18
0001:0756  74 03                        je 0x75b
0001:0758  40                           inc ax
0001:0759  D3 E0                        shl ax, cl
0001:075B  C3                           ret

; FUNCTION 0001:075C (64 instructions)
0001:075C  55                           push bp
0001:075D  8B EC                        mov bp, sp
0001:075F  83 EC 06                     sub sp, 6
0001:0762  53                           push bx
0001:0763  51                           push cx
0001:0764  56                           push si
0001:0765  57                           push di
0001:0766  81 FA FF 10                  cmp dx, 0x10ff
0001:076A  74 62                        je 0x7ce
0001:076C  8B D8                        mov bx, ax
0001:076E  33 C0                        xor ax, ax
0001:0770  48                           dec ax
0001:0771  89 46 FA                     mov word ptr [bp - 6], ax
0001:0774  89 46 FC                     mov word ptr [bp - 4], ax
0001:0777  51                           push cx
0001:0778  2A F6                        sub dh, dh
0001:077A  AC                           lodsb al, byte ptr [si]
0001:077B  2A C2                        sub al, dl
0001:077D  77 02                        ja 0x781
0001:077F  F6 D8                        neg al
0001:0781  F6 E0                        mul al
0001:0783  8B F8                        mov di, ax
0001:0785  AC                           lodsb al, byte ptr [si]
0001:0786  2A C7                        sub al, bh
0001:0788  77 02                        ja 0x78c
0001:078A  F6 D8                        neg al
0001:078C  F6 E0                        mul al
0001:078E  03 F8                        add di, ax
0001:0790  12 F6                        adc dh, dh
0001:0792  AC                           lodsb al, byte ptr [si]
0001:0793  2A C3                        sub al, bl
0001:0795  77 02                        ja 0x799
0001:0797  F6 D8                        neg al
0001:0799  F6 E0                        mul al
0001:079B  03 F8                        add di, ax
0001:079D  80 D6 00                     adc dh, 0
0001:07A0  AC                           lodsb al, byte ptr [si]
0001:07A1  0B FF                        or di, di
0001:07A3  74 1F                        je 0x7c4
0001:07A5  38 76 FC                     cmp byte ptr [bp - 4], dh
0001:07A8  77 0F                        ja 0x7b9
0001:07AA  72 05                        jb 0x7b1
0001:07AC  39 7E FA                     cmp word ptr [bp - 6], di
0001:07AF  77 08                        ja 0x7b9
0001:07B1  E2 C5                        loop 0x778
0001:07B3  58                           pop ax
0001:07B4  2B 46 FE                     sub ax, word ptr [bp - 2]
0001:07B7  EB 15                        jmp 0x7ce
0001:07B9  89 4E FE                     mov word ptr [bp - 2], cx
0001:07BC  88 76 FC                     mov byte ptr [bp - 4], dh
0001:07BF  89 7E FA                     mov word ptr [bp - 6], di
0001:07C2  EB ED                        jmp 0x7b1
0001:07C4  0A F6                        or dh, dh
0001:07C6  75 DD                        jne 0x7a5
0001:07C8  58                           pop ax
0001:07C9  2B C1                        sub ax, cx
0001:07CB  80 CC 80                     or ah, 0x80
0001:07CE  5F                           pop di
0001:07CF  5E                           pop si
0001:07D0  59                           pop cx
0001:07D1  5B                           pop bx
0001:07D2  8B E5                        mov sp, bp
0001:07D4  5D                           pop bp
0001:07D5  C3                           ret

; FUNCTION 0001:07F6 (23 instructions)
0001:07F6  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:07F9  A8 40                        test al, 0x40
0001:07FB  74 0C                        je 0x809
0001:07FD  8B 46 1A                     mov ax, word ptr [bp + 0x1a]
0001:0800  8B 5E 1C                     mov bx, word ptr [bp + 0x1c]
0001:0803  8D 76 AA                     lea si, [bp - 0x56]
0001:0806  E8 8F 0C                     call 0x1498
0001:0809  8B 46 22                     mov ax, word ptr [bp + 0x22]
0001:080C  8B 5E 24                     mov bx, word ptr [bp + 0x24]
0001:080F  8D 76 86                     lea si, [bp - 0x7a]
0001:0812  E8 83 0C                     call 0x1498
0001:0815  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:0818  8A 5E B1                     mov bl, byte ptr [bp - 0x4f]
0001:081B  8A 7E 8D                     mov bh, byte ptr [bp - 0x73]
0001:081E  A8 40                        test al, 0x40
0001:0820  75 02                        jne 0x824
0001:0822  8A DF                        mov bl, bh
0001:0824  D0 EF                        shr bh, 1
0001:0826  D0 E3                        shl bl, 1
0001:0828  81 E3 18 06                  and bx, 0x618
0001:082C  0A DF                        or bl, bh
0001:082E  32 FF                        xor bh, bh
0001:0830  2E FF A7 D6 07               jmp word ptr cs:[bx + 0x7d6]

; FUNCTION 0001:088F (3 instructions)
0001:088F  C8 F3 AB 8B                  enter -0x540d, -0x75
0001:0893  46                           inc si
0001:0894  F4                           hlt

; FUNCTION 0001:099F (50 instructions)
0001:099F  C8 F3 26 A4                  enter 0x26f3, -0x5c
0001:09A3  2B F0                        sub si, ax
0001:09A5  0B D2                        or dx, dx
0001:09A7  7E 05                        jle 0x9ae
0001:09A9  8B DE                        mov bx, si
0001:09AB  E8 32 08                     call 0x11e0
0001:09AE  8B 56 EE                     mov dx, word ptr [bp - 0x12]
0001:09B1  0A D2                        or dl, dl
0001:09B3  74 31                        je 0x9e6
0001:09B5  8B 4E DA                     mov cx, word ptr [bp - 0x26]
0001:09B8  8B 76 DC                     mov si, word ptr [bp - 0x24]
0001:09BB  8A 46 FD                     mov al, byte ptr [bp - 3]
0001:09BE  8A 66 F2                     mov ah, byte ptr [bp - 0xe]
0001:09C1  0A C0                        or al, al
0001:09C3  74 07                        je 0x9cc
0001:09C5  02 C4                        add al, ah
0001:09C7  3C 07                        cmp al, 7
0001:09C9  7F 01                        jg 0x9cc
0001:09CB  46                           inc si
0001:09CC  2B CE                        sub cx, si
0001:09CE  F3 26 A4                     rep movsb byte ptr es:[di], byte ptr es:[si]
0001:09D1  B0 26                        mov al, 0x26
0001:09D3  AA                           stosb byte ptr es:[di], al
0001:09D4  B8 8A 25                     mov ax, 0x258a
0001:09D7  AB                           stosw word ptr es:[di], ax
0001:09D8  B0 25                        mov al, 0x25
0001:09DA  AA                           stosb byte ptr es:[di], al
0001:09DB  8B 46 EE                     mov ax, word ptr [bp - 0x12]
0001:09DE  AB                           stosw word ptr es:[di], ax
0001:09DF  B8 0A C4                     mov ax, 0xc40a
0001:09E2  AB                           stosw word ptr es:[di], ax
0001:09E3  B0 AA                        mov al, 0xaa
0001:09E5  AA                           stosb byte ptr es:[di], al
0001:09E6  8A 7E F8                     mov bh, byte ptr [bp - 8]
0001:09E9  F6 C7 40                     test bh, 0x40
0001:09EC  74 03                        je 0x9f1
0001:09EE  B0 5E                        mov al, 0x5e
0001:09F0  AA                           stosb byte ptr es:[di], al
0001:09F1  B0 5F                        mov al, 0x5f
0001:09F3  B4 59                        mov ah, 0x59
0001:09F5  AB                           stosw word ptr es:[di], ax
0001:09F6  F6 C7 40                     test bh, 0x40
0001:09F9  74 03                        je 0x9fe
0001:09FB  E8 53 0B                     call 0x1551
0001:09FE  E8 A4 0C                     call 0x16a5
0001:0A01  8B 5E D4                     mov bx, word ptr [bp - 0x2c]
0001:0A04  E8 D9 07                     call 0x11e0
0001:0A07  B0 CB                        mov al, 0xcb
0001:0A09  AA                           stosb byte ptr es:[di], al
0001:0A0A  C3                           ret

; FUNCTION 0001:0A38 (21 instructions)
0001:0A38  C8 07 E8 F1                  enter -0x17f9, -0xf
0001:0A3C  07                           pop es
0001:0A3D  8B 46 18                     mov ax, word ptr [bp + 0x18]
0001:0A40  3D 02 00                     cmp ax, 2
0001:0A43  72 06                        jb 0xa4b
0001:0A45  8B 5E DC                     mov bx, word ptr [bp - 0x24]
0001:0A48  E8 95 07                     call 0x11e0
0001:0A4B  B0 5E                        mov al, 0x5e
0001:0A4D  AA                           stosb byte ptr es:[di], al
0001:0A4E  B0 5F                        mov al, 0x5f
0001:0A50  AA                           stosb byte ptr es:[di], al
0001:0A51  B0 59                        mov al, 0x59
0001:0A53  AA                           stosb byte ptr es:[di], al
0001:0A54  E8 FA 0A                     call 0x1551
0001:0A57  E8 4B 0C                     call 0x16a5
0001:0A5A  E8 D4 08                     call 0x1331
0001:0A5D  8B 5E D4                     mov bx, word ptr [bp - 0x2c]
0001:0A60  E8 7D 07                     call 0x11e0
0001:0A63  B0 CB                        mov al, 0xcb
0001:0A65  AA                           stosb byte ptr es:[di], al
0001:0A66  C3                           ret

; FUNCTION 0001:0BA5 (21 instructions)
0001:0BA5  C8 AB EB 10                  enter -0x1455, 0x10
0001:0BA9  90                           nop
0001:0BAA  8B 46 82                     mov ax, word ptr [bp - 0x7e]
0001:0BAD  0A E4                        or ah, ah
0001:0BAF  74 03                        je 0xbb4
0001:0BB1  B0 2C                        mov al, 0x2c
0001:0BB3  AB                           stosw word ptr es:[di], ax
0001:0BB4  B0 3C                        mov al, 0x3c
0001:0BB6  B4 01                        mov ah, 1
0001:0BB8  AB                           stosw word ptr es:[di], ax
0001:0BB9  B8 D0 D4                     mov ax, 0xd4d0
0001:0BBC  AB                           stosw word ptr es:[di], ax
0001:0BBD  58                           pop ax
0001:0BBE  2B C7                        sub ax, di
0001:0BC0  2C 02                        sub al, 2
0001:0BC2  86 E0                        xchg al, ah
0001:0BC4  B0 73                        mov al, 0x73
0001:0BC6  AB                           stosw word ptr es:[di], ax
0001:0BC7  B8 8A C4                     mov ax, 0xc48a
0001:0BCA  AB                           stosw word ptr es:[di], ax
0001:0BCB  C3                           ret

; FUNCTION 0001:0BE1 (8 instructions)
0001:0BE1  C8 B8 D0 C0                  enter -0x2f48, -0x40
0001:0BE5  80 F9 05                     cmp cl, 5
0001:0BE8  72 08                        jb 0xbf2
0001:0BEA  F7 D9                        neg cx
0001:0BEC  83 C1 08                     add cx, 8
0001:0BEF  B8 D0 C8                     mov ax, 0xc8d0
0001:0BF2  F3 AB                        rep stosw word ptr es:[di], ax
0001:0BF4  C3                           ret

; FUNCTION 0001:0BF1 (17 instructions)
0001:0BF1  C8 F3 AB C3                  enter -0x540d, -0x3d
0001:0BF5  0A E4                        or ah, ah
0001:0BF7  74 11                        je 0xc0a
0001:0BF9  50                           push ax
0001:0BFA  B0 26                        mov al, 0x26
0001:0BFC  AA                           stosb byte ptr es:[di], al
0001:0BFD  B8 8A 25                     mov ax, 0x258a
0001:0C00  AB                           stosw word ptr es:[di], ax
0001:0C01  B0 25                        mov al, 0x25
0001:0C03  AA                           stosb byte ptr es:[di], al
0001:0C04  58                           pop ax
0001:0C05  AB                           stosw word ptr es:[di], ax
0001:0C06  B8 0A C4                     mov ax, 0xc40a
0001:0C09  AB                           stosw word ptr es:[di], ax
0001:0C0A  B0 AA                        mov al, 0xaa
0001:0C0C  AA                           stosb byte ptr es:[di], al
0001:0C0D  C3                           ret

; FUNCTION 0001:0E96 (8 instructions)
0001:0E96  C8 B8 D0 C0                  enter -0x2f48, -0x40
0001:0E9A  80 F9 05                     cmp cl, 5
0001:0E9D  72 08                        jb 0xea7
0001:0E9F  F7 D9                        neg cx
0001:0EA1  83 C1 08                     add cx, 8
0001:0EA4  B8 D0 C8                     mov ax, 0xc8d0
0001:0EA7  F3 AB                        rep stosw word ptr es:[di], ax
0001:0EA9  C3                           ret

; FUNCTION 0001:0EA6 (17 instructions)
0001:0EA6  C8 F3 AB C3                  enter -0x540d, -0x3d
0001:0EAA  0A E4                        or ah, ah
0001:0EAC  74 11                        je 0xebf
0001:0EAE  50                           push ax
0001:0EAF  B0 26                        mov al, 0x26
0001:0EB1  AA                           stosb byte ptr es:[di], al
0001:0EB2  B8 8A 25                     mov ax, 0x258a
0001:0EB5  AB                           stosw word ptr es:[di], ax
0001:0EB6  B0 25                        mov al, 0x25
0001:0EB8  AA                           stosb byte ptr es:[di], al
0001:0EB9  58                           pop ax
0001:0EBA  AB                           stosw word ptr es:[di], ax
0001:0EBB  B8 0A C4                     mov ax, 0xc40a
0001:0EBE  AB                           stosw word ptr es:[di], ax
0001:0EBF  B0 AA                        mov al, 0xaa
0001:0EC1  AA                           stosb byte ptr es:[di], al
0001:0EC2  C3                           ret

; FUNCTION 0001:0EFF (104 instructions)
0001:0EFF  C8 AB B0 04                  enter -0x4f55, 4
0001:0F03  AA                           stosb byte ptr es:[di], al
0001:0F04  B8 C0 EC                     mov ax, 0xecc0
0001:0F07  AB                           stosw word ptr es:[di], ax
0001:0F08  B0 04                        mov al, 4
0001:0F0A  AA                           stosb byte ptr es:[di], al
0001:0F0B  B8 88 E7                     mov ax, 0xe788
0001:0F0E  AB                           stosw word ptr es:[di], ax
0001:0F0F  F6 46 F7 FF                  test byte ptr [bp - 9], 0xff
0001:0F13  74 0C                        je 0xf21
0001:0F15  8B F7                        mov si, di
0001:0F17  87 76 DC                     xchg word ptr [bp - 0x24], si
0001:0F1A  8B CF                        mov cx, di
0001:0F1C  2B CE                        sub cx, si
0001:0F1E  F3 26 A4                     rep movsb byte ptr es:[di], byte ptr es:[si]
0001:0F21  89 7E DA                     mov word ptr [bp - 0x26], di
0001:0F24  E8 4F 04                     call 0x1376
0001:0F27  E8 B4 04                     call 0x13de
0001:0F2A  8A 46 FB                     mov al, byte ptr [bp - 5]
0001:0F2D  04 02                        add al, 2
0001:0F2F  24 06                        and al, 6
0001:0F31  88 46 FB                     mov byte ptr [bp - 5], al
0001:0F34  E8 CB 02                     call 0x1202
0001:0F37  8B 5E F0                     mov bx, word ptr [bp - 0x10]
0001:0F3A  0A DB                        or bl, bl
0001:0F3C  74 15                        je 0xf53
0001:0F3E  8A FB                        mov bh, bl
0001:0F40  F6 D7                        not bh
0001:0F42  B0 26                        mov al, 0x26
0001:0F44  AA                           stosb byte ptr es:[di], al
0001:0F45  B8 8A 25                     mov ax, 0x258a
0001:0F48  AB                           stosw word ptr es:[di], ax
0001:0F49  B0 25                        mov al, 0x25
0001:0F4B  AA                           stosb byte ptr es:[di], al
0001:0F4C  8B C3                        mov ax, bx
0001:0F4E  AB                           stosw word ptr es:[di], ax
0001:0F4F  B8 0A C4                     mov ax, 0xc40a
0001:0F52  AB                           stosw word ptr es:[di], ax
0001:0F53  E8 F7 02                     call 0x124d
0001:0F56  8B 4E EC                     mov cx, word ptr [bp - 0x14]
0001:0F59  E3 33                        jcxz 0xf8e
0001:0F5B  83 F9 01                     cmp cx, 1
0001:0F5E  7E 06                        jle 0xf66
0001:0F60  B0 B9                        mov al, 0xb9
0001:0F62  AA                           stosb byte ptr es:[di], al
0001:0F63  8B C1                        mov ax, cx
0001:0F65  AB                           stosw word ptr es:[di], ax
0001:0F66  89 7E D8                     mov word ptr [bp - 0x28], di
0001:0F69  8B 4E DA                     mov cx, word ptr [bp - 0x26]
0001:0F6C  8B 76 DC                     mov si, word ptr [bp - 0x24]
0001:0F6F  2B CE                        sub cx, si
0001:0F71  F3 26 A4                     rep movsb byte ptr es:[di], byte ptr es:[si]
0001:0F74  E8 FF 03                     call 0x1376
0001:0F77  E8 88 02                     call 0x1202
0001:0F7A  E8 D0 02                     call 0x124d
0001:0F7D  8B 4E EC                     mov cx, word ptr [bp - 0x14]
0001:0F80  83 F9 01                     cmp cx, 1
0001:0F83  7E 06                        jle 0xf8b
0001:0F85  8B 5E D8                     mov bx, word ptr [bp - 0x28]
0001:0F88  E8 55 02                     call 0x11e0
0001:0F8B  E8 50 04                     call 0x13de
0001:0F8E  8B 56 EE                     mov dx, word ptr [bp - 0x12]
0001:0F91  0A D2                        or dl, dl
0001:0F93  74 34                        je 0xfc9
0001:0F95  8B 4E DA                     mov cx, word ptr [bp - 0x26]
0001:0F98  8B 76 DC                     mov si, word ptr [bp - 0x24]
0001:0F9B  2B CE                        sub cx, si
0001:0F9D  F3 26 A4                     rep movsb byte ptr es:[di], byte ptr es:[si]
0001:0FA0  8B 4E EC                     mov cx, word ptr [bp - 0x14]
0001:0FA3  D1 E1                        shl cx, 1
0001:0FA5  00 4E FB                     add byte ptr [bp - 5], cl
0001:0FA8  E8 CB 03                     call 0x1376
0001:0FAB  E8 54 02                     call 0x1202
0001:0FAE  8A F2                        mov dh, dl
0001:0FB0  F6 D6                        not dh
0001:0FB2  B0 26                        mov al, 0x26
0001:0FB4  AA                           stosb byte ptr es:[di], al
0001:0FB5  B8 8A 25                     mov ax, 0x258a
0001:0FB8  AB                           stosw word ptr es:[di], ax
0001:0FB9  B0 25                        mov al, 0x25
0001:0FBB  AA                           stosb byte ptr es:[di], al
0001:0FBC  8B C2                        mov ax, dx
0001:0FBE  AB                           stosw word ptr es:[di], ax
0001:0FBF  B8 0A C4                     mov ax, 0xc40a
0001:0FC2  AB                           stosw word ptr es:[di], ax
0001:0FC3  E8 87 02                     call 0x124d
0001:0FC6  E8 15 04                     call 0x13de
0001:0FC9  8A 7E F8                     mov bh, byte ptr [bp - 8]
0001:0FCC  F6 C7 40                     test bh, 0x40
0001:0FCF  74 03                        je 0xfd4
0001:0FD1  B0 5E                        mov al, 0x5e
0001:0FD3  AA                           stosb byte ptr es:[di], al
0001:0FD4  B0 5F                        mov al, 0x5f
0001:0FD6  B4 59                        mov ah, 0x59
0001:0FD8  AB                           stosw word ptr es:[di], ax
0001:0FD9  F6 C7 40                     test bh, 0x40
0001:0FDC  74 03                        je 0xfe1
0001:0FDE  E8 70 05                     call 0x1551
0001:0FE1  E8 C1 06                     call 0x16a5
0001:0FE4  8B 5E D4                     mov bx, word ptr [bp - 0x2c]
0001:0FE7  E8 F6 01                     call 0x11e0
0001:0FEA  B0 CB                        mov al, 0xcb
0001:0FEC  AA                           stosb byte ptr es:[di], al
0001:0FED  C3                           ret

; FUNCTION 0001:1024 (19 instructions)
0001:1024  C8 A9 01 00                  enter 0x1a9, 0
0001:1028  74 03                        je 0x102d
0001:102A  BB 0F F0                     mov bx, 0xf00f
0001:102D  F7 C1 01 00                  test cx, 1
0001:1031  74 03                        je 0x1036
0001:1033  BA F0 0F                     mov dx, 0xff0
0001:1036  40                           inc ax
0001:1037  25 FE FF                     and ax, 0xfffe
0001:103A  83 E1 FE                     and cx, 0xfffe
0001:103D  2B C8                        sub cx, ax
0001:103F  D1 E9                        shr cx, 1
0001:1041  7F 06                        jg 0x1049
0001:1043  0B DB                        or bx, bx
0001:1045  75 02                        jne 0x1049
0001:1047  87 DA                        xchg dx, bx
0001:1049  89 4E EC                     mov word ptr [bp - 0x14], cx
0001:104C  89 5E F0                     mov word ptr [bp - 0x10], bx
0001:104F  89 56 EE                     mov word ptr [bp - 0x12], dx
0001:1052  C3                           ret

; FUNCTION 0001:103E (9 instructions)
0001:103E  C8 D1 E9 7F                  enter -0x162f, 0x7f
0001:1042  06                           push es
0001:1043  0B DB                        or bx, bx
0001:1045  75 02                        jne 0x1049
0001:1047  87 DA                        xchg dx, bx
0001:1049  89 4E EC                     mov word ptr [bp - 0x14], cx
0001:104C  89 5E F0                     mov word ptr [bp - 0x10], bx
0001:104F  89 56 EE                     mov word ptr [bp - 0x12], dx
0001:1052  C3                           ret

; FUNCTION 0001:1138 (1 instructions)
0001:1138  C8 00 8B 4E                  enter -0x7500, 0x4e

; FUNCTION 0001:11E0 (19 instructions)
0001:11E0  2B DF                        sub bx, di
0001:11E2  83 FB 83                     cmp bx, -0x7d
0001:11E5  72 09                        jb 0x11f0
0001:11E7  B0 E2                        mov al, 0xe2
0001:11E9  8A E3                        mov ah, bl
0001:11EB  80 EC 02                     sub ah, 2
0001:11EE  AB                           stosw word ptr es:[di], ax
0001:11EF  C3                           ret
0001:11F0  B0 49                        mov al, 0x49
0001:11F2  AA                           stosb byte ptr es:[di], al
0001:11F3  B0 74                        mov al, 0x74
0001:11F5  B4 03                        mov ah, 3
0001:11F7  AB                           stosw word ptr es:[di], ax
0001:11F8  B0 E9                        mov al, 0xe9
0001:11FA  AA                           stosb byte ptr es:[di], al
0001:11FB  8B C3                        mov ax, bx
0001:11FD  2D 06 00                     sub ax, 6
0001:1200  AB                           stosw word ptr es:[di], ax
0001:1201  C3                           ret

; FUNCTION 0001:1202 (17 instructions)
0001:1202  8B 46 EA                     mov ax, word ptr [bp - 0x16]
0001:1205  8A DC                        mov bl, ah
0001:1207  83 E3 1C                     and bx, 0x1c
0001:120A  D1 EB                        shr bx, 1
0001:120C  D1 EB                        shr bx, 1
0001:120E  2E 8A 8F CA 36               mov cl, byte ptr cs:[bx + 0x36ca]
0001:1213  32 ED                        xor ch, ch
0001:1215  8B D8                        mov bx, ax
0001:1217  81 E3 FF 03                  and bx, 0x3ff
0001:121B  74 07                        je 0x1224
0001:121D  8D B7 CA 35                  lea si, [bx + 0x35ca]
0001:1221  F3 2E A4                     rep movsb byte ptr es:[di], byte ptr cs:[si]
0001:1224  A9 00 80                     test ax, 0x8000
0001:1227  74 04                        je 0x122d
0001:1229  B8 F6 D0                     mov ax, 0xd0f6
0001:122C  AB                           stosw word ptr es:[di], ax
0001:122D  C3                           ret

; FUNCTION 0001:124D (17 instructions)
0001:124D  83 7E 84 01                  cmp word ptr [bp - 0x7c], 1
0001:1251  74 04                        je 0x1257
0001:1253  B0 AA                        mov al, 0xaa
0001:1255  AA                           stosb byte ptr es:[di], al
0001:1256  C3                           ret
0001:1257  B0 B2                        mov al, 0xb2
0001:1259  AA                           stosb byte ptr es:[di], al
0001:125A  8A 46 83                     mov al, byte ptr [bp - 0x7d]
0001:125D  8A E0                        mov ah, al
0001:125F  C0 E4 04                     shl ah, 4
0001:1262  0A C4                        or al, ah
0001:1264  AA                           stosb byte ptr es:[di], al
0001:1265  8D 36 71 12                  lea si, [0x1271]
0001:1269  B9 1F 00                     mov cx, 0x1f
0001:126C  90                           nop
0001:126D  F3 2E A4                     rep movsb byte ptr es:[di], byte ptr cs:[si]
0001:1270  C3                           ret

; FUNCTION 0001:1331 (34 instructions)
0001:1331  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:1334  8A 7E FA                     mov bh, byte ptr [bp - 6]
0001:1337  F6 C3 80                     test bl, 0x80
0001:133A  74 39                        je 0x1375
0001:133C  F6 86 78 FF 08               test byte ptr [bp - 0x88], 8
0001:1341  75 32                        jne 0x1375
0001:1343  B0 36                        mov al, 0x36
0001:1345  AA                           stosb byte ptr es:[di], al
0001:1346  D0 C7                        rol bh, 1
0001:1348  1B C0                        sbb ax, ax
0001:134A  25 00 28                     and ax, 0x2800
0001:134D  35 80 06                     xor ax, 0x680
0001:1350  AB                           stosw word ptr es:[di], ax
0001:1351  8B 46 E2                     mov ax, word ptr [bp - 0x1e]
0001:1354  AB                           stosw word ptr es:[di], ax
0001:1355  B0 08                        mov al, 8
0001:1357  AA                           stosb byte ptr es:[di], al
0001:1358  B0 36                        mov al, 0x36
0001:135A  AA                           stosb byte ptr es:[di], al
0001:135B  B8 80 26                     mov ax, 0x2680
0001:135E  AB                           stosw word ptr es:[di], ax
0001:135F  8B 46 E2                     mov ax, word ptr [bp - 0x1e]
0001:1362  AB                           stosw word ptr es:[di], ax
0001:1363  B0 38                        mov al, 0x38
0001:1365  AA                           stosb byte ptr es:[di], al
0001:1366  B0 36                        mov al, 0x36
0001:1368  AA                           stosb byte ptr es:[di], al
0001:1369  B8 C6 06                     mov ax, 0x6c6
0001:136C  AB                           stosw word ptr es:[di], ax
0001:136D  8B 46 E4                     mov ax, word ptr [bp - 0x1c]
0001:1370  AB                           stosw word ptr es:[di], ax
0001:1371  8A 46 FB                     mov al, byte ptr [bp - 5]
0001:1374  AA                           stosb byte ptr es:[di], al
0001:1375  C3                           ret

; FUNCTION 0001:1376 (50 instructions)
0001:1376  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:1379  8A 7E FA                     mov bh, byte ptr [bp - 6]
0001:137C  F6 C3 80                     test bl, 0x80
0001:137F  74 53                        je 0x13d4
0001:1381  F6 86 78 FF 08               test byte ptr [bp - 0x88], 8
0001:1386  75 4D                        jne 0x13d5
0001:1388  B0 BD                        mov al, 0xbd
0001:138A  AA                           stosb byte ptr es:[di], al
0001:138B  8D 86 2E FF                  lea ax, [bp - 0xd2]
0001:138F  AB                           stosw word ptr es:[di], ax
0001:1390  B8 83 C5                     mov ax, 0xc583
0001:1393  AB                           stosw word ptr es:[di], ax
0001:1394  89 7E E2                     mov word ptr [bp - 0x1e], di
0001:1397  8A 46 FC                     mov al, byte ptr [bp - 4]
0001:139A  C0 E0 02                     shl al, 2
0001:139D  AA                           stosb byte ptr es:[di], al
0001:139E  B8 83 C5                     mov ax, 0xc583
0001:13A1  AB                           stosw word ptr es:[di], ax
0001:13A2  89 7E E4                     mov word ptr [bp - 0x1c], di
0001:13A5  8A 46 FB                     mov al, byte ptr [bp - 5]
0001:13A8  24 07                        and al, 7
0001:13AA  D0 E8                        shr al, 1
0001:13AC  AA                           stosb byte ptr es:[di], al
0001:13AD  B8 8A 76                     mov ax, 0x768a
0001:13B0  AB                           stosw word ptr es:[di], ax
0001:13B1  32 C0                        xor al, al
0001:13B3  AA                           stosb byte ptr es:[di], al
0001:13B4  B0 36                        mov al, 0x36
0001:13B6  AA                           stosb byte ptr es:[di], al
0001:13B7  D0 C7                        rol bh, 1
0001:13B9  1B C0                        sbb ax, ax
0001:13BB  25 00 08                     and ax, 0x800
0001:13BE  35 FE 06                     xor ax, 0x6fe
0001:13C1  AB                           stosw word ptr es:[di], ax
0001:13C2  8B 46 E4                     mov ax, word ptr [bp - 0x1c]
0001:13C5  AB                           stosw word ptr es:[di], ax
0001:13C6  B0 36                        mov al, 0x36
0001:13C8  AA                           stosb byte ptr es:[di], al
0001:13C9  B8 80 26                     mov ax, 0x2680
0001:13CC  AB                           stosw word ptr es:[di], ax
0001:13CD  8B 46 E4                     mov ax, word ptr [bp - 0x1c]
0001:13D0  AB                           stosw word ptr es:[di], ax
0001:13D1  B0 03                        mov al, 3
0001:13D3  AA                           stosb byte ptr es:[di], al
0001:13D4  C3                           ret
0001:13D5  B0 B6                        mov al, 0xb6
0001:13D7  AA                           stosb byte ptr es:[di], al
0001:13D8  8A 86 2E FF                  mov al, byte ptr [bp - 0xd2]
0001:13DC  AA                           stosb byte ptr es:[di], al
0001:13DD  C3                           ret

; FUNCTION 0001:13DE (36 instructions)
0001:13DE  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:13E1  8A 7E FA                     mov bh, byte ptr [bp - 6]
0001:13E4  F6 C3 80                     test bl, 0x80
0001:13E7  74 3D                        je 0x1426
0001:13E9  F6 86 78 FF 08               test byte ptr [bp - 0x88], 8
0001:13EE  75 36                        jne 0x1426
0001:13F0  B0 36                        mov al, 0x36
0001:13F2  AA                           stosb byte ptr es:[di], al
0001:13F3  D0 C7                        rol bh, 1
0001:13F5  1B C0                        sbb ax, ax
0001:13F7  25 00 28                     and ax, 0x2800
0001:13FA  35 80 06                     xor ax, 0x680
0001:13FD  AB                           stosw word ptr es:[di], ax
0001:13FE  8B 46 E2                     mov ax, word ptr [bp - 0x1e]
0001:1401  AB                           stosw word ptr es:[di], ax
0001:1402  B0 04                        mov al, 4
0001:1404  AA                           stosb byte ptr es:[di], al
0001:1405  B0 36                        mov al, 0x36
0001:1407  AA                           stosb byte ptr es:[di], al
0001:1408  B8 80 26                     mov ax, 0x2680
0001:140B  AB                           stosw word ptr es:[di], ax
0001:140C  8B 46 E2                     mov ax, word ptr [bp - 0x1e]
0001:140F  AB                           stosw word ptr es:[di], ax
0001:1410  B0 1F                        mov al, 0x1f
0001:1412  AA                           stosb byte ptr es:[di], al
0001:1413  B0 36                        mov al, 0x36
0001:1415  AA                           stosb byte ptr es:[di], al
0001:1416  B8 C6 06                     mov ax, 0x6c6
0001:1419  AB                           stosw word ptr es:[di], ax
0001:141A  8B 46 E4                     mov ax, word ptr [bp - 0x1c]
0001:141D  AB                           stosw word ptr es:[di], ax
0001:141E  8A 46 FB                     mov al, byte ptr [bp - 5]
0001:1421  24 07                        and al, 7
0001:1423  D0 E8                        shr al, 1
0001:1425  AA                           stosb byte ptr es:[di], al
0001:1426  C3                           ret

; FUNCTION 0001:1498 (52 instructions)
0001:1498  36 8B 54 04                  mov dx, word ptr ss:[si + 4]
0001:149C  80 7E FA 01                  cmp byte ptr [bp - 6], 1
0001:14A0  74 0A                        je 0x14ac
0001:14A2  F7 DA                        neg dx
0001:14A4  03 46 16                     add ax, word ptr [bp + 0x16]
0001:14A7  48                           dec ax
0001:14A8  03 5E 18                     add bx, word ptr [bp + 0x18]
0001:14AB  4B                           dec bx
0001:14AC  36 89 54 16                  mov word ptr ss:[si + 0x16], dx
0001:14B0  36 8A 54 12                  mov dl, byte ptr ss:[si + 0x12]
0001:14B4  F6 C2 01                     test dl, 1
0001:14B7  75 03                        jne 0x14bc
0001:14B9  C1 EB 03                     shr bx, 3
0001:14BC  36 81 7C 06 01 04            cmp word ptr ss:[si + 6], 0x401
0001:14C2  75 02                        jne 0x14c6
0001:14C4  D1 EB                        shr bx, 1
0001:14C6  36 8B 4C 0C                  mov cx, word ptr ss:[si + 0xc]
0001:14CA  F6 C2 04                     test dl, 4
0001:14CD  75 29                        jne 0x14f8
0001:14CF  36 8B 54 0A                  mov dx, word ptr ss:[si + 0xa]
0001:14D3  E3 0E                        jcxz 0x14e3
0001:14D5  03 D1                        add dx, cx
0001:14D7  36 2B 44 0E                  sub ax, word ptr ss:[si + 0xe]
0001:14DB  73 F8                        jae 0x14d5
0001:14DD  2B D1                        sub dx, cx
0001:14DF  36 03 44 0E                  add ax, word ptr ss:[si + 0xe]
0001:14E3  36 89 54 1C                  mov word ptr ss:[si + 0x1c], dx
0001:14E7  36 8B 54 04                  mov dx, word ptr ss:[si + 4]
0001:14EB  F7 E2                        mul dx
0001:14ED  03 C3                        add ax, bx
0001:14EF  36 03 44 08                  add ax, word ptr ss:[si + 8]
0001:14F3  36 89 44 1A                  mov word ptr ss:[si + 0x1a], ax
0001:14F7  C3                           ret
0001:14F8  36 2B 44 02                  sub ax, word ptr ss:[si + 2]
0001:14FC  F7 D8                        neg ax
0001:14FE  48                           dec ax
0001:14FF  36 03 5C 08                  add bx, word ptr ss:[si + 8]
0001:1503  36 8B 54 04                  mov dx, word ptr ss:[si + 4]
0001:1507  F7 E2                        mul dx
0001:1509  03 C3                        add ax, bx
0001:150B  83 D2 00                     adc dx, 0
0001:150E  E3 34                        jcxz 0x1544
0001:1510  50                           push ax
0001:1511  52                           push dx
0001:1512  06                           push es
0001:1513  B8 00 00                     mov ax, 0
0001:1516  B9 01 00                     mov cx, 1
0001:1519  CD 31                        int 0x31
0001:1544  36 8B 54 0A                  mov dx, word ptr ss:[si + 0xa]
0001:1548  36 89 44 1A                  mov word ptr ss:[si + 0x1a], ax
0001:154C  36 89 54 1C                  mov word ptr ss:[si + 0x1c], dx
0001:1550  C3                           ret

; FUNCTION 0001:152D (11 instructions)
0001:152D  C8 36 89 4C                  enter -0x76ca, 0x4c
0001:1531  1C 07                        sbb al, 7
0001:1533  5A                           pop dx
0001:1534  58                           pop ax
0001:1535  51                           push cx
0001:1536  6A 00                        push 0
0001:1538  52                           push dx
0001:1539  50                           push ax
0001:153A  9A AE 44 FF FF               lcall 0xffff, 0x44ae
0001:153F  36 89 44 1A                  mov word ptr ss:[si + 0x1a], ax
0001:1543  C3                           ret

; FUNCTION 0001:1551 (173 instructions)
0001:1551  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:1554  0B C0                        or ax, ax
0001:1556  75 01                        jne 0x1559
0001:1558  C3                           ret
0001:1559  8A 56 BC                     mov dl, byte ptr [bp - 0x44]
0001:155C  8A 76 FA                     mov dh, byte ptr [bp - 6]
0001:155F  F6 C2 04                     test dl, 4
0001:1562  74 37                        je 0x159b
0001:1564  8B 46 C0                     mov ax, word ptr [bp - 0x40]
0001:1567  F7 D8                        neg ax
0001:1569  99                           cdq
0001:156A  8B D8                        mov bx, ax
0001:156C  8B 4E B6                     mov cx, word ptr [bp - 0x4a]
0001:156F  E3 22                        jcxz 0x1593
0001:1571  B0 1E                        mov al, 0x1e
0001:1573  AA                           stosb byte ptr es:[di], al
0001:1574  B0 56                        mov al, 0x56
0001:1576  AA                           stosb byte ptr es:[di], al
0001:1577  B0 68                        mov al, 0x68
0001:1579  AA                           stosb byte ptr es:[di], al
0001:157A  8B C2                        mov ax, dx
0001:157C  AB                           stosw word ptr es:[di], ax
0001:157D  B0 68                        mov al, 0x68
0001:157F  AA                           stosb byte ptr es:[di], al
0001:1580  8B C3                        mov ax, bx
0001:1582  AB                           stosw word ptr es:[di], ax
0001:1583  B0 9A                        mov al, 0x9a
0001:1585  AA                           stosb byte ptr es:[di], al
0001:1586  B8 AE 44                     mov ax, 0x44ae
0001:1589  AB                           stosw word ptr es:[di], ax
0001:158A  B8 3D 15                     mov ax, 0x153d
0001:158D  AB                           stosw word ptr es:[di], ax
0001:158E  B8 8B F0                     mov ax, 0xf08b
0001:1591  AB                           stosw word ptr es:[di], ax
0001:1592  C3                           ret
0001:1593  B8 81 C6                     mov ax, 0xc681
0001:1596  AB                           stosw word ptr es:[di], ax
0001:1597  8B C3                        mov ax, bx
0001:1599  AB                           stosw word ptr es:[di], ax
0001:159A  C3                           ret
0001:159B  80 FE 01                     cmp dh, 1
0001:159E  74 03                        je 0x15a3
0001:15A0  E9 84 00                     jmp 0x1627
0001:15A3  F6 46 BC 02                  test byte ptr [bp - 0x44], 2
0001:15A7  75 58                        jne 0x1601
0001:15A9  8B 4E B6                     mov cx, word ptr [bp - 0x4a]
0001:15AC  E3 4A                        jcxz 0x15f8
0001:15AE  B8 8B C6                     mov ax, 0xc68b
0001:15B1  AB                           stosw word ptr es:[di], ax
0001:15B2  B0 3D                        mov al, 0x3d
0001:15B4  AA                           stosb byte ptr es:[di], al
0001:15B5  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0001:15B8  03 46 AE                     add ax, word ptr [bp - 0x52]
0001:15BB  F7 D8                        neg ax
0001:15BD  AB                           stosw word ptr es:[di], ax
0001:15BE  B0 72                        mov al, 0x72
0001:15C0  32 E4                        xor ah, ah
0001:15C2  AB                           stosw word ptr es:[di], ax
0001:15C3  8B DF                        mov bx, di
0001:15C5  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0001:15C8  0B C0                        or ax, ax
0001:15CA  74 08                        je 0x15d4
0001:15CC  B8 81 C6                     mov ax, 0xc681
0001:15CF  AB                           stosw word ptr es:[di], ax
0001:15D0  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0001:15D3  AB                           stosw word ptr es:[di], ax
0001:15D4  B8 8C D8                     mov ax, 0xd88c
0001:15D7  AB                           stosw word ptr es:[di], ax
0001:15D8  B0 05                        mov al, 5
0001:15DA  AA                           stosb byte ptr es:[di], al
0001:15DB  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:15DE  AB                           stosw word ptr es:[di], ax
0001:15DF  B8 83 F9                     mov ax, 0xf983
0001:15E2  AB                           stosw word ptr es:[di], ax
0001:15E3  B0 01                        mov al, 1
0001:15E5  AA                           stosb byte ptr es:[di], al
0001:15E6  B0 74                        mov al, 0x74
0001:15E8  AA                           stosb byte ptr es:[di], al
0001:15E9  B0 02                        mov al, 2
0001:15EB  AA                           stosb byte ptr es:[di], al
0001:15EC  B8 8E D8                     mov ax, 0xd88e
0001:15EF  AB                           stosw word ptr es:[di], ax
0001:15F0  8B C7                        mov ax, di
0001:15F2  2B C3                        sub ax, bx
0001:15F4  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:15F8  B8 81 C6                     mov ax, 0xc681
0001:15FB  AB                           stosw word ptr es:[di], ax
0001:15FC  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:15FF  AB                           stosw word ptr es:[di], ax
0001:1600  C3                           ret
0001:1601  B8 81 C6                     mov ax, 0xc681
0001:1604  AB                           stosw word ptr es:[di], ax
0001:1605  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:1608  AB                           stosw word ptr es:[di], ax
0001:1609  B0 73                        mov al, 0x73
0001:160B  32 E4                        xor ah, ah
0001:160D  AB                           stosw word ptr es:[di], ax
0001:160E  8B DF                        mov bx, di
0001:1610  B0 36                        mov al, 0x36
0001:1612  AA                           stosb byte ptr es:[di], al
0001:1613  B8 FE 06                     mov ax, 0x6fe
0001:1616  AB                           stosw word ptr es:[di], ax
0001:1617  8D 46 BD                     lea ax, [bp - 0x43]
0001:161A  AB                           stosw word ptr es:[di], ax
0001:161B  E8 DC 01                     call 0x17fa
0001:161E  8B C7                        mov ax, di
0001:1620  2B C3                        sub ax, bx
0001:1622  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:1626  C3                           ret
0001:1627  F6 C2 02                     test dl, 2
0001:162A  75 53                        jne 0x167f
0001:162C  8B 4E B6                     mov cx, word ptr [bp - 0x4a]
0001:162F  E3 45                        jcxz 0x1676
0001:1631  B8 8B C6                     mov ax, 0xc68b
0001:1634  AB                           stosw word ptr es:[di], ax
0001:1635  B0 3D                        mov al, 0x3d
0001:1637  AA                           stosb byte ptr es:[di], al
0001:1638  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:163B  AB                           stosw word ptr es:[di], ax
0001:163C  B0 73                        mov al, 0x73
0001:163E  32 E4                        xor ah, ah
0001:1640  AB                           stosw word ptr es:[di], ax
0001:1641  8B DF                        mov bx, di
0001:1643  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0001:1646  0B C0                        or ax, ax
0001:1648  74 08                        je 0x1652
0001:164A  B8 81 EE                     mov ax, 0xee81
0001:164D  AB                           stosw word ptr es:[di], ax
0001:164E  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0001:1651  AB                           stosw word ptr es:[di], ax
0001:1652  B8 8C D8                     mov ax, 0xd88c
0001:1655  AB                           stosw word ptr es:[di], ax
0001:1656  B0 2D                        mov al, 0x2d
0001:1658  AA                           stosb byte ptr es:[di], al
0001:1659  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:165C  AB                           stosw word ptr es:[di], ax
0001:165D  B8 83 F9                     mov ax, 0xf983
0001:1660  AB                           stosw word ptr es:[di], ax
0001:1661  B0 01                        mov al, 1
0001:1663  AA                           stosb byte ptr es:[di], al
0001:1664  B0 74                        mov al, 0x74
0001:1666  AA                           stosb byte ptr es:[di], al
0001:1667  B0 02                        mov al, 2
0001:1669  AA                           stosb byte ptr es:[di], al
0001:166A  B8 8E D8                     mov ax, 0xd88e
0001:166D  AB                           stosw word ptr es:[di], ax
0001:166E  8B C7                        mov ax, di
0001:1670  2B C3                        sub ax, bx
0001:1672  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:1676  B8 81 EE                     mov ax, 0xee81
0001:1679  AB                           stosw word ptr es:[di], ax
0001:167A  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:167D  AB                           stosw word ptr es:[di], ax
0001:167E  C3                           ret
0001:167F  B8 81 EE                     mov ax, 0xee81
0001:1682  AB                           stosw word ptr es:[di], ax
0001:1683  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0001:1686  AB                           stosw word ptr es:[di], ax
0001:1687  B0 73                        mov al, 0x73
0001:1689  32 E4                        xor ah, ah
0001:168B  AB                           stosw word ptr es:[di], ax
0001:168C  8B DF                        mov bx, di
0001:168E  B0 36                        mov al, 0x36
0001:1690  AA                           stosb byte ptr es:[di], al
0001:1691  B8 FE 0E                     mov ax, 0xefe
0001:1694  AB                           stosw word ptr es:[di], ax
0001:1695  8D 46 BD                     lea ax, [bp - 0x43]
0001:1698  AB                           stosw word ptr es:[di], ax
0001:1699  E8 5E 01                     call 0x17fa
0001:169C  8B C7                        mov ax, di
0001:169E  2B C3                        sub ax, bx
0001:16A0  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:16A4  C3                           ret

; FUNCTION 0001:16A5 (173 instructions)
0001:16A5  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:16A8  0B C0                        or ax, ax
0001:16AA  75 01                        jne 0x16ad
0001:16AC  C3                           ret
0001:16AD  8A 56 98                     mov dl, byte ptr [bp - 0x68]
0001:16B0  8A 76 FA                     mov dh, byte ptr [bp - 6]
0001:16B3  F6 C2 04                     test dl, 4
0001:16B6  74 37                        je 0x16ef
0001:16B8  8B 46 9C                     mov ax, word ptr [bp - 0x64]
0001:16BB  F7 D8                        neg ax
0001:16BD  99                           cdq
0001:16BE  8B D8                        mov bx, ax
0001:16C0  8B 4E 92                     mov cx, word ptr [bp - 0x6e]
0001:16C3  E3 22                        jcxz 0x16e7
0001:16C5  B0 06                        mov al, 6
0001:16C7  AA                           stosb byte ptr es:[di], al
0001:16C8  B0 57                        mov al, 0x57
0001:16CA  AA                           stosb byte ptr es:[di], al
0001:16CB  B0 68                        mov al, 0x68
0001:16CD  AA                           stosb byte ptr es:[di], al
0001:16CE  8B C2                        mov ax, dx
0001:16D0  AB                           stosw word ptr es:[di], ax
0001:16D1  B0 68                        mov al, 0x68
0001:16D3  AA                           stosb byte ptr es:[di], al
0001:16D4  8B C3                        mov ax, bx
0001:16D6  AB                           stosw word ptr es:[di], ax
0001:16D7  B0 9A                        mov al, 0x9a
0001:16D9  AA                           stosb byte ptr es:[di], al
0001:16DA  B8 AE 44                     mov ax, 0x44ae
0001:16DD  AB                           stosw word ptr es:[di], ax
0001:16DE  B8 8B 15                     mov ax, 0x158b
0001:16E1  AB                           stosw word ptr es:[di], ax
0001:16E2  B8 8B F8                     mov ax, 0xf88b
0001:16E5  AB                           stosw word ptr es:[di], ax
0001:16E6  C3                           ret
0001:16E7  B8 81 C7                     mov ax, 0xc781
0001:16EA  AB                           stosw word ptr es:[di], ax
0001:16EB  8B C3                        mov ax, bx
0001:16ED  AB                           stosw word ptr es:[di], ax
0001:16EE  C3                           ret
0001:16EF  80 FE 01                     cmp dh, 1
0001:16F2  74 03                        je 0x16f7
0001:16F4  E9 84 00                     jmp 0x177b
0001:16F7  F6 46 98 02                  test byte ptr [bp - 0x68], 2
0001:16FB  75 58                        jne 0x1755
0001:16FD  8B 4E 92                     mov cx, word ptr [bp - 0x6e]
0001:1700  E3 4A                        jcxz 0x174c
0001:1702  B8 8B C7                     mov ax, 0xc78b
0001:1705  AB                           stosw word ptr es:[di], ax
0001:1706  B0 3D                        mov al, 0x3d
0001:1708  AA                           stosb byte ptr es:[di], al
0001:1709  8B 46 96                     mov ax, word ptr [bp - 0x6a]
0001:170C  03 46 8A                     add ax, word ptr [bp - 0x76]
0001:170F  F7 D8                        neg ax
0001:1711  AB                           stosw word ptr es:[di], ax
0001:1712  B0 72                        mov al, 0x72
0001:1714  32 E4                        xor ah, ah
0001:1716  AB                           stosw word ptr es:[di], ax
0001:1717  8B DF                        mov bx, di
0001:1719  8B 46 96                     mov ax, word ptr [bp - 0x6a]
0001:171C  0B C0                        or ax, ax
0001:171E  74 08                        je 0x1728
0001:1720  B8 81 C7                     mov ax, 0xc781
0001:1723  AB                           stosw word ptr es:[di], ax
0001:1724  8B 46 96                     mov ax, word ptr [bp - 0x6a]
0001:1727  AB                           stosw word ptr es:[di], ax
0001:1728  B8 8C C0                     mov ax, 0xc08c
0001:172B  AB                           stosw word ptr es:[di], ax
0001:172C  B0 05                        mov al, 5
0001:172E  AA                           stosb byte ptr es:[di], al
0001:172F  8B 46 92                     mov ax, word ptr [bp - 0x6e]
0001:1732  AB                           stosw word ptr es:[di], ax
0001:1733  B8 83 F9                     mov ax, 0xf983
0001:1736  AB                           stosw word ptr es:[di], ax
0001:1737  B0 01                        mov al, 1
0001:1739  AA                           stosb byte ptr es:[di], al
0001:173A  B0 74                        mov al, 0x74
0001:173C  AA                           stosb byte ptr es:[di], al
0001:173D  B0 02                        mov al, 2
0001:173F  AA                           stosb byte ptr es:[di], al
0001:1740  B8 8E C0                     mov ax, 0xc08e
0001:1743  AB                           stosw word ptr es:[di], ax
0001:1744  8B C7                        mov ax, di
0001:1746  2B C3                        sub ax, bx
0001:1748  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:174C  B8 81 C7                     mov ax, 0xc781
0001:174F  AB                           stosw word ptr es:[di], ax
0001:1750  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1753  AB                           stosw word ptr es:[di], ax
0001:1754  C3                           ret
0001:1755  B8 81 C7                     mov ax, 0xc781
0001:1758  AB                           stosw word ptr es:[di], ax
0001:1759  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:175C  AB                           stosw word ptr es:[di], ax
0001:175D  B0 73                        mov al, 0x73
0001:175F  32 E4                        xor ah, ah
0001:1761  AB                           stosw word ptr es:[di], ax
0001:1762  8B DF                        mov bx, di
0001:1764  B0 36                        mov al, 0x36
0001:1766  AA                           stosb byte ptr es:[di], al
0001:1767  B8 FE 06                     mov ax, 0x6fe
0001:176A  AB                           stosw word ptr es:[di], ax
0001:176B  8D 46 99                     lea ax, [bp - 0x67]
0001:176E  AB                           stosw word ptr es:[di], ax
0001:176F  E8 89 00                     call 0x17fb
0001:1772  8B C7                        mov ax, di
0001:1774  2B C3                        sub ax, bx
0001:1776  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:177A  C3                           ret
0001:177B  F6 46 98 02                  test byte ptr [bp - 0x68], 2
0001:177F  75 53                        jne 0x17d4
0001:1781  8B 4E 92                     mov cx, word ptr [bp - 0x6e]
0001:1784  E3 45                        jcxz 0x17cb
0001:1786  B8 8B C7                     mov ax, 0xc78b
0001:1789  AB                           stosw word ptr es:[di], ax
0001:178A  B0 3D                        mov al, 0x3d
0001:178C  AA                           stosb byte ptr es:[di], al
0001:178D  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1790  AB                           stosw word ptr es:[di], ax
0001:1791  B0 73                        mov al, 0x73
0001:1793  32 E4                        xor ah, ah
0001:1795  AB                           stosw word ptr es:[di], ax
0001:1796  8B DF                        mov bx, di
0001:1798  8B 46 96                     mov ax, word ptr [bp - 0x6a]
0001:179B  0B C0                        or ax, ax
0001:179D  74 08                        je 0x17a7
0001:179F  B8 81 EF                     mov ax, 0xef81
0001:17A2  AB                           stosw word ptr es:[di], ax
0001:17A3  8B 46 96                     mov ax, word ptr [bp - 0x6a]
0001:17A6  AB                           stosw word ptr es:[di], ax
0001:17A7  B8 8C C0                     mov ax, 0xc08c
0001:17AA  AB                           stosw word ptr es:[di], ax
0001:17AB  B0 2D                        mov al, 0x2d
0001:17AD  AA                           stosb byte ptr es:[di], al
0001:17AE  8B 46 92                     mov ax, word ptr [bp - 0x6e]
0001:17B1  AB                           stosw word ptr es:[di], ax
0001:17B2  B8 83 F9                     mov ax, 0xf983
0001:17B5  AB                           stosw word ptr es:[di], ax
0001:17B6  B0 01                        mov al, 1
0001:17B8  AA                           stosb byte ptr es:[di], al
0001:17B9  B0 74                        mov al, 0x74
0001:17BB  AA                           stosb byte ptr es:[di], al
0001:17BC  B0 02                        mov al, 2
0001:17BE  AA                           stosb byte ptr es:[di], al
0001:17BF  B8 8E C0                     mov ax, 0xc08e
0001:17C2  AB                           stosw word ptr es:[di], ax
0001:17C3  8B C7                        mov ax, di
0001:17C5  2B C3                        sub ax, bx
0001:17C7  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:17CB  B8 81 EF                     mov ax, 0xef81
0001:17CE  AB                           stosw word ptr es:[di], ax
0001:17CF  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:17D2  AB                           stosw word ptr es:[di], ax
0001:17D3  C3                           ret
0001:17D4  B8 81 EF                     mov ax, 0xef81
0001:17D7  AB                           stosw word ptr es:[di], ax
0001:17D8  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:17DB  AB                           stosw word ptr es:[di], ax
0001:17DC  B0 73                        mov al, 0x73
0001:17DE  32 E4                        xor ah, ah
0001:17E0  AB                           stosw word ptr es:[di], ax
0001:17E1  8B DF                        mov bx, di
0001:17E3  B0 36                        mov al, 0x36
0001:17E5  AA                           stosb byte ptr es:[di], al
0001:17E6  B8 FE 0E                     mov ax, 0xefe
0001:17E9  AB                           stosw word ptr es:[di], ax
0001:17EA  8D 46 99                     lea ax, [bp - 0x67]
0001:17ED  AB                           stosw word ptr es:[di], ax
0001:17EE  E8 0A 00                     call 0x17fb
0001:17F1  8B C7                        mov ax, di
0001:17F3  2B C3                        sub ax, bx
0001:17F5  26 88 47 FF                  mov byte ptr es:[bx - 1], al
0001:17F9  C3                           ret

; FUNCTION 0001:16DF (5 instructions)
0001:16DF  8B 15                        mov dx, word ptr [di]
0001:16E1  AB                           stosw word ptr es:[di], ax
0001:16E2  B8 8B F8                     mov ax, 0xf88b
0001:16E5  AB                           stosw word ptr es:[di], ax
0001:16E6  C3                           ret

; FUNCTION 0001:17FA (1 instructions)
0001:17FA  C3                           ret

; FUNCTION 0001:17FB (1 instructions)
0001:17FB  C3                           ret

; FUNCTION 0001:17FC (17 instructions)
0001:17FC  8B DC                        mov bx, sp
0001:17FE  36 8B 47 1A                  mov ax, word ptr ss:[bx + 0x1a]
0001:1802  3D 12 00                     cmp ax, 0x12
0001:1805  74 23                        je 0x182a
0001:1807  3D 04 00                     cmp ax, 4
0001:180A  74 19                        je 0x1825
0001:180C  3D 50 00                     cmp ax, 0x50
0001:180F  74 0A                        je 0x181b
0001:1811  3D 51 00                     cmp ax, 0x51
0001:1814  74 0A                        je 0x1820
0001:1816  33 C0                        xor ax, ax
0001:1818  CA 1C 00                     retf 0x1c
0001:181B  EA FF FF 00 00               ljmp 0:0xffff
0001:1820  EA FF FF 00 00               ljmp 0:0xffff
0001:1825  EA FF FF 00 00               ljmp 0:0xffff
0001:182A  EA FF FF 00 00               ljmp 0:0xffff
0001:182F  00 00                        add byte ptr [bx + si], al

; FUNCTION 0001:1831 (10 instructions)
0001:1831  59                           pop cx
0001:1832  5B                           pop bx
0001:1833  33 C0                        xor ax, ax
0001:1835  50                           push ax
0001:1836  50                           push ax
0001:1837  50                           push ax
0001:1838  50                           push ax
0001:1839  50                           push ax
0001:183A  53                           push bx
0001:183B  51                           push cx

; FUNCTION 0001:183C (3 instructions)
0001:183C  8C D8                        mov ax, ds
0001:183E  90                           nop
0001:183F  45                           inc bp

; FUNCTION 0001:1840 (113 instructions)
0001:1840  55                           push bp
0001:1841  8B EC                        mov bp, sp
0001:1843  1E                           push ds
0001:1844  8E D8                        mov ds, ax
0001:1846  B8 FA 00                     mov ax, 0xfa
0001:1849  E8 BC E7                     call 8
0001:184C  56                           push si
0001:184D  57                           push di
0001:184E  06                           push es
0001:184F  9F                           lahf
0001:1850  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1856  74 08                        je 0x1860
0001:1858  66 56                        push esi
0001:185A  66 57                        push edi
0001:185C  66 55                        push ebp
0001:185E  66 53                        push ebx
0001:1860  9E                           sahf
0001:1861  73 03                        jae 0x1866
0001:1863  EB 30                        jmp 0x1895
0001:1866  A0 04 00                     mov al, byte ptr [4]
0001:1869  88 46 FD                     mov byte ptr [bp - 3], al
0001:186C  8B 46 14                     mov ax, word ptr [bp + 0x14]
0001:186F  8B 5E 16                     mov bx, word ptr [bp + 0x16]
0001:1872  89 86 5A FF                  mov word ptr [bp - 0xa6], ax
0001:1876  89 9E 5C FF                  mov word ptr [bp - 0xa4], bx
0001:187A  E8 D7 00                     call 0x1954
0001:187D  E8 53 01                     call 0x19d3
0001:1880  8B 46 1C                     mov ax, word ptr [bp + 0x1c]
0001:1883  0B C0                        or ax, ax
0001:1885  7F 2D                        jg 0x18b4
0001:1887  74 17                        je 0x18a0
0001:1889  88 7E F9                     mov byte ptr [bp - 7], bh
0001:188C  88 5E F8                     mov byte ptr [bp - 8], bl
0001:188F  E8 43 03                     call 0x1bd5
0001:1892  E9 A3 00                     jmp 0x1938
0001:1895  33 C0                        xor ax, ax
0001:1897  BA 00 80                     mov dx, 0x8000
0001:189A  E9 9B 00                     jmp 0x1938
0001:189D  E9 95 00                     jmp 0x1935
0001:18A0  E8 B2 01                     call 0x1a55
0001:18A3  F6 C3 01                     test bl, 1
0001:18A6  74 F5                        je 0x189d
0001:18A8  88 7E F9                     mov byte ptr [bp - 7], bh
0001:18AB  88 5E F8                     mov byte ptr [bp - 8], bl
0001:18AE  E8 DC 05                     call 0x1e8d
0001:18B1  EB 71                        jmp 0x1924
0001:18B4  E8 9E 01                     call 0x1a55
0001:18B7  E8 88 02                     call 0x1b42
0001:18BA  F6 C3 02                     test bl, 2
0001:18BD  74 E4                        je 0x18a3
0001:18BF  88 7E F9                     mov byte ptr [bp - 7], bh
0001:18C2  88 5E F8                     mov byte ptr [bp - 8], bl
0001:18C5  F6 C3 01                     test bl, 1
0001:18C8  74 0B                        je 0x18d5
0001:18CA  80 66 F8 FE                  and byte ptr [bp - 8], 0xfe
0001:18CE  83 66 06 FD                  and word ptr [bp + 6], 0xfffd
0001:18D2  E8 50 05                     call 0x1e25
0001:18D5  E8 B5 05                     call 0x1e8d
0001:18D8  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:18DB  F6 C3 01                     test bl, 1
0001:18DE  75 13                        jne 0x18f3
0001:18E0  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:18E3  A8 01                        test al, 1
0001:18E5  74 0C                        je 0x18f3
0001:18E7  24 FE                        and al, 0xfe
0001:18E9  88 46 F8                     mov byte ptr [bp - 8], al
0001:18EC  93                           xchg bx, ax
0001:18ED  E8 35 05                     call 0x1e25
0001:18F0  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:18F3  B8 BE 1F                     mov ax, 0x1fbe
0001:18F6  8C DA                        mov dx, ds
0001:18F8  8C D3                        mov bx, ss
0001:18FA  8E DB                        mov ds, bx
0001:18FC  8E C3                        mov es, bx
0001:18FE  33 F6                        xor si, si
0001:1900  8D BE 68 FF                  lea di, [bp - 0x98]
0001:1904  B9 08 00                     mov cx, 8
0001:1907  FC                           cld
0001:1908  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:190A  8E DA                        mov ds, dx
0001:190C  FF D0                        call ax
0001:190E  8C DA                        mov dx, ds
0001:1910  8C D3                        mov bx, ss
0001:1912  8E DB                        mov ds, bx
0001:1914  8E C3                        mov es, bx
0001:1916  8D B6 68 FF                  lea si, [bp - 0x98]
0001:191A  33 FF                        xor di, di
0001:191C  B9 08 00                     mov cx, 8
0001:191F  FC                           cld
0001:1920  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:1922  8E DA                        mov ds, dx
0001:1924  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:1927  F6 C3 01                     test bl, 1
0001:192A  74 03                        je 0x192f
0001:192C  E8 F6 04                     call 0x1e25
0001:192F  F6 46 F8 08                  test byte ptr [bp - 8], 8
0001:1933  74 00                        je 0x1935
0001:1935  33 C0                        xor ax, ax
0001:1937  99                           cdq
0001:1938  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:193E  74 08                        je 0x1948
0001:1940  66 5B                        pop ebx
0001:1942  66 5D                        pop ebp
0001:1944  66 5F                        pop edi
0001:1946  66 5E                        pop esi
0001:1948  07                           pop es
0001:1949  5F                           pop di
0001:194A  5E                           pop si
0001:194B  8D 66 FE                     lea sp, [bp - 2]
0001:194E  1F                           pop ds
0001:194F  5D                           pop bp
0001:1950  4D                           dec bp
0001:1951  CA 28 00                     retf 0x28

; FUNCTION 0001:1954 (48 instructions)
0001:1954  8B 5E 0C                     mov bx, word ptr [bp + 0xc]
0001:1957  0B 5E 0E                     or bx, word ptr [bp + 0xe]
0001:195A  F7 DB                        neg bx
0001:195C  1B DB                        sbb bx, bx
0001:195E  81 E3 00 08                  and bx, 0x800
0001:1962  C5 76 2A                     lds si, ptr [bp + 0x2a]
0001:1965  8A 54 09                     mov dl, byte ptr [si + 9]
0001:1968  88 96 62 FF                  mov byte ptr [bp - 0x9e], dl
0001:196C  C5 B6 5A FF                  lds si, ptr [bp - 0xa6]
0001:1970  8A 44 08                     mov al, byte ptr [si + 8]
0001:1973  8A 64 04                     mov ah, byte ptr [si + 4]
0001:1976  80 FA 01                     cmp dl, 1
0001:1979  75 0B                        jne 0x1986
0001:197B  8A 44 09                     mov al, byte ptr [si + 9]
0001:197E  24 01                        and al, 1
0001:1980  8A 64 05                     mov ah, byte ptr [si + 5]
0001:1983  80 E4 01                     and ah, 1
0001:1986  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:1989  8B 44 0C                     mov ax, word ptr [si + 0xc]
0001:198C  89 46 E8                     mov word ptr [bp - 0x18], ax
0001:198F  0B C0                        or ax, ax
0001:1991  74 22                        je 0x19b5
0001:1993  8B 4C 0E                     mov cx, word ptr [si + 0xe]
0001:1996  89 4E F0                     mov word ptr [bp - 0x10], cx
0001:1999  E3 03                        jcxz 0x199e
0001:199B  80 CF 02                     or bh, 2
0001:199E  8B 4C 12                     mov cx, word ptr [si + 0x12]
0001:19A1  E3 12                        jcxz 0x19b5
0001:19A3  89 4E EA                     mov word ptr [bp - 0x16], cx
0001:19A6  80 CF 01                     or bh, 1
0001:19A9  8B 4C 10                     mov cx, word ptr [si + 0x10]
0001:19AC  89 4E EE                     mov word ptr [bp - 0x12], cx
0001:19AF  8B 4C 14                     mov cx, word ptr [si + 0x14]
0001:19B2  89 4E EC                     mov word ptr [bp - 0x14], cx
0001:19B5  8B 4C 16                     mov cx, word ptr [si + 0x16]
0001:19B8  89 4E F2                     mov word ptr [bp - 0xe], cx
0001:19BB  0B C1                        or ax, cx
0001:19BD  7C 0F                        jl 0x19ce
0001:19BF  F7 D9                        neg cx
0001:19C1  D0 D7                        rcl bh, 1
0001:19C3  8A 44 02                     mov al, byte ptr [si + 2]
0001:19C6  2C 02                        sub al, 2
0001:19C8  F6 D8                        neg al
0001:19CA  F5                           cmc
0001:19CB  D0 D7                        rcl bh, 1
0001:19CD  C3                           ret
0001:19CE  80 CF 04                     or bh, 4
0001:19D1  EB EC                        jmp 0x19bf

; FUNCTION 0001:19D3 (70 instructions)
0001:1895  33 C0                        xor ax, ax
0001:1897  BA 00 80                     mov dx, 0x8000
0001:189A  E9 9B 00                     jmp 0x1938
0001:1938  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:193E  74 08                        je 0x1948
0001:1940  66 5B                        pop ebx
0001:1942  66 5D                        pop ebp
0001:1944  66 5F                        pop edi
0001:1946  66 5E                        pop esi
0001:1948  07                           pop es
0001:1949  5F                           pop di
0001:194A  5E                           pop si
0001:194B  8D 66 FE                     lea sp, [bp - 2]
0001:194E  1F                           pop ds
0001:194F  5D                           pop bp
0001:1950  4D                           dec bp
0001:1951  CA 28 00                     retf 0x28
0001:19D3  C5 76 18                     lds si, ptr [bp + 0x18]
0001:19D6  8D 7E 90                     lea di, [bp - 0x70]
0001:19D9  8C D0                        mov ax, ss
0001:19DB  8E C0                        mov es, ax
0001:19DD  81 FE 42 00                  cmp si, 0x42
0001:19E1  75 6E                        jne 0x1a51
0001:19E3  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:19E9  74 0B                        je 0x19f6
0001:19EB  81 3E 00 00 00 03            cmp word ptr [0], 0x300
0001:19F1  75 5E                        jne 0x1a51
0001:19F3  EB 09                        jmp 0x19fe
0001:19F6  81 3E 00 00 00 02            cmp word ptr [0], 0x200
0001:19FC  75 53                        jne 0x1a51
0001:19FE  BE 56 00                     mov si, 0x56
0001:1A01  AD                           lodsw ax, word ptr [si]
0001:1A02  AB                           stosw word ptr es:[di], ax
0001:1A03  D0 C7                        rol bh, 1
0001:1A05  D0 C7                        rol bh, 1
0001:1A07  F7 D8                        neg ax
0001:1A09  D0 DF                        rcr bh, 1
0001:1A0B  05 08 00                     add ax, 8
0001:1A0E  3D 01 00                     cmp ax, 1
0001:1A11  D0 DF                        rcr bh, 1
0001:1A13  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A14  83 C6 03                     add si, 3
0001:1A17  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A18  AD                           lodsw ax, word ptr [si]
0001:1A19  2A E0                        sub ah, al
0001:1A1B  AB                           stosw word ptr es:[di], ax
0001:1A1C  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A1D  86 E0                        xchg al, ah
0001:1A1F  32 E4                        xor ah, ah
0001:1A21  40                           inc ax
0001:1A22  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1A28  74 14                        je 0x1a3e
0001:1A2A  D1 E0                        shl ax, 1
0001:1A2C  8B F0                        mov si, ax
0001:1A2E  D1 E0                        shl ax, 1
0001:1A30  03 F0                        add si, ax
0001:1A32  66 8B 84 96 00               mov eax, dword ptr [si + 0x96]
0001:1A37  66 89 46 CA                  mov dword ptr [bp - 0x36], eax
0001:1A3B  EB 0D                        jmp 0x1a4a
0001:1A3E  C1 E0 02                     shl ax, 2
0001:1A41  8B F0                        mov si, ax
0001:1A43  8B 84 78 00                  mov ax, word ptr [si + 0x78]
0001:1A47  89 46 CA                     mov word ptr [bp - 0x36], ax
0001:1A4A  BE 6D 00                     mov si, 0x6d
0001:1A4D  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A4E  AD                           lodsw ax, word ptr [si]
0001:1A4F  AB                           stosw word ptr es:[di], ax
0001:1A50  C3                           ret
0001:1A51  58                           pop ax
0001:1A52  E9 40 FE                     jmp 0x1895

; FUNCTION 0001:1A55 (118 instructions)
0001:1935  33 C0                        xor ax, ax
0001:1937  99                           cdq
0001:1938  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:193E  74 08                        je 0x1948
0001:1940  66 5B                        pop ebx
0001:1942  66 5D                        pop ebp
0001:1944  66 5F                        pop edi
0001:1946  66 5E                        pop esi
0001:1948  07                           pop es
0001:1949  5F                           pop di
0001:194A  5E                           pop si
0001:194B  8D 66 FE                     lea sp, [bp - 2]
0001:194E  1F                           pop ds
0001:194F  5D                           pop bp
0001:1950  4D                           dec bp
0001:1951  CA 28 00                     retf 0x28
0001:1A55  FC                           cld
0001:1A56  C5 76 22                     lds si, ptr [bp + 0x22]
0001:1A59  8B 46 06                     mov ax, word ptr [bp + 6]
0001:1A5C  A9 06 00                     test ax, 6
0001:1A5F  75 10                        jne 0x1a71
0001:1A61  8C D0                        mov ax, ss
0001:1A63  8E C0                        mov es, ax
0001:1A65  8D 7E 88                     lea di, [bp - 0x78]
0001:1A68  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A69  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A6A  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A6B  A5                           movsw word ptr es:[di], word ptr [si]
0001:1A6C  C3                           ret
0001:1A6D  5B                           pop bx
0001:1A6E  E9 C4 FE                     jmp 0x1935
0001:1A71  8B 4E 0A                     mov cx, word ptr [bp + 0xa]
0001:1A74  E3 F7                        jcxz 0x1a6d
0001:1A76  8B 7E 08                     mov di, word ptr [bp + 8]
0001:1A79  8E C1                        mov es, cx
0001:1A7B  A9 04 00                     test ax, 4
0001:1A7E  74 5C                        je 0x1adc
0001:1A80  AD                           lodsw ax, word ptr [si]
0001:1A81  26 8B 0D                     mov cx, word ptr es:[di]
0001:1A84  2B C1                        sub ax, cx
0001:1A86  99                           cdq
0001:1A87  F7 D2                        not dx
0001:1A89  23 C2                        and ax, dx
0001:1A8B  03 C1                        add ax, cx
0001:1A8D  89 86 78 FF                  mov word ptr [bp - 0x88], ax
0001:1A91  89 46 88                     mov word ptr [bp - 0x78], ax
0001:1A94  AD                           lodsw ax, word ptr [si]
0001:1A95  26 8B 4D 02                  mov cx, word ptr es:[di + 2]
0001:1A99  2B C1                        sub ax, cx
0001:1A9B  99                           cdq
0001:1A9C  F7 D2                        not dx
0001:1A9E  23 C2                        and ax, dx
0001:1AA0  03 C1                        add ax, cx
0001:1AA2  89 86 7A FF                  mov word ptr [bp - 0x86], ax
0001:1AA6  89 46 8A                     mov word ptr [bp - 0x76], ax
0001:1AA9  AD                           lodsw ax, word ptr [si]
0001:1AAA  26 8B 4D 04                  mov cx, word ptr es:[di + 4]
0001:1AAE  2B C1                        sub ax, cx
0001:1AB0  99                           cdq
0001:1AB1  23 C2                        and ax, dx
0001:1AB3  03 C1                        add ax, cx
0001:1AB5  3B 46 88                     cmp ax, word ptr [bp - 0x78]
0001:1AB8  7E B3                        jle 0x1a6d
0001:1ABA  89 86 7C FF                  mov word ptr [bp - 0x84], ax
0001:1ABE  89 46 8C                     mov word ptr [bp - 0x74], ax
0001:1AC1  AD                           lodsw ax, word ptr [si]
0001:1AC2  26 8B 4D 06                  mov cx, word ptr es:[di + 6]
0001:1AC6  2B C1                        sub ax, cx
0001:1AC8  99                           cdq
0001:1AC9  23 C2                        and ax, dx
0001:1ACB  03 C1                        add ax, cx
0001:1ACD  3B 46 8A                     cmp ax, word ptr [bp - 0x76]
0001:1AD0  7E 9B                        jle 0x1a6d
0001:1AD2  89 86 7E FF                  mov word ptr [bp - 0x82], ax
0001:1AD6  89 46 8E                     mov word ptr [bp - 0x72], ax
0001:1AD9  EB 5C                        jmp 0x1b37
0001:1ADC  AD                           lodsw ax, word ptr [si]
0001:1ADD  89 46 88                     mov word ptr [bp - 0x78], ax
0001:1AE0  26 8B 0D                     mov cx, word ptr es:[di]
0001:1AE3  2B C1                        sub ax, cx
0001:1AE5  99                           cdq
0001:1AE6  F7 D2                        not dx
0001:1AE8  23 C2                        and ax, dx
0001:1AEA  03 C1                        add ax, cx
0001:1AEC  89 86 78 FF                  mov word ptr [bp - 0x88], ax
0001:1AF0  AD                           lodsw ax, word ptr [si]
0001:1AF1  89 46 8A                     mov word ptr [bp - 0x76], ax
0001:1AF4  26 8B 4D 02                  mov cx, word ptr es:[di + 2]
0001:1AF8  2B C1                        sub ax, cx
0001:1AFA  99                           cdq
0001:1AFB  F7 D2                        not dx
0001:1AFD  23 C2                        and ax, dx
0001:1AFF  03 C1                        add ax, cx
0001:1B01  89 86 7A FF                  mov word ptr [bp - 0x86], ax
0001:1B05  AD                           lodsw ax, word ptr [si]
0001:1B06  89 46 8C                     mov word ptr [bp - 0x74], ax
0001:1B09  26 8B 4D 04                  mov cx, word ptr es:[di + 4]
0001:1B0D  2B C1                        sub ax, cx
0001:1B0F  99                           cdq
0001:1B10  23 C2                        and ax, dx
0001:1B12  03 C1                        add ax, cx
0001:1B14  89 86 7C FF                  mov word ptr [bp - 0x84], ax
0001:1B18  3B 86 78 FF                  cmp ax, word ptr [bp - 0x88]
0001:1B1C  AD                           lodsw ax, word ptr [si]
0001:1B1D  89 46 8E                     mov word ptr [bp - 0x72], ax
0001:1B20  7E 1F                        jle 0x1b41
0001:1B22  26 8B 4D 06                  mov cx, word ptr es:[di + 6]
0001:1B26  2B C1                        sub ax, cx
0001:1B28  99                           cdq
0001:1B29  23 C2                        and ax, dx
0001:1B2B  03 C1                        add ax, cx
0001:1B2D  3B 86 7A FF                  cmp ax, word ptr [bp - 0x86]
0001:1B31  7E 0E                        jle 0x1b41
0001:1B33  89 86 7E FF                  mov word ptr [bp - 0x82], ax
0001:1B37  F7 46 06 02 00               test word ptr [bp + 6], 2
0001:1B3C  74 03                        je 0x1b41
0001:1B3E  80 CB 01                     or bl, 1
0001:1B41  C3                           ret

; FUNCTION 0001:1B42 (60 instructions)
0001:1B42  33 D2                        xor dx, dx
0001:1B44  8B 4E 26                     mov cx, word ptr [bp + 0x26]
0001:1B47  8B 7E 92                     mov di, word ptr [bp - 0x6e]
0001:1B4A  8B C1                        mov ax, cx
0001:1B4C  2B 46 8A                     sub ax, word ptr [bp - 0x76]
0001:1B4F  7D 09                        jge 0x1b5a
0001:1B51  03 F8                        add di, ax
0001:1B53  7E 7A                        jle 0x1bcf
0001:1B55  2B C8                        sub cx, ax
0001:1B57  F7 D8                        neg ax
0001:1B59  92                           xchg dx, ax
0001:1B5A  89 4E 82                     mov word ptr [bp - 0x7e], cx
0001:1B5D  89 56 D2                     mov word ptr [bp - 0x2e], dx
0001:1B60  8B C1                        mov ax, cx
0001:1B62  03 C7                        add ax, di
0001:1B64  8B D0                        mov dx, ax
0001:1B66  2B 46 8E                     sub ax, word ptr [bp - 0x72]
0001:1B69  72 06                        jb 0x1b71
0001:1B6B  2B F8                        sub di, ax
0001:1B6D  7E 60                        jle 0x1bcf
0001:1B6F  2B D0                        sub dx, ax
0001:1B71  89 7E D4                     mov word ptr [bp - 0x2c], di
0001:1B74  89 56 86                     mov word ptr [bp - 0x7a], dx
0001:1B77  F6 C3 01                     test bl, 1
0001:1B7A  74 0F                        je 0x1b8b
0001:1B7C  3B 96 7E FF                  cmp dx, word ptr [bp - 0x82]
0001:1B80  7F 09                        jg 0x1b8b
0001:1B82  3B 8E 7A FF                  cmp cx, word ptr [bp - 0x86]
0001:1B86  7C 03                        jl 0x1b8b
0001:1B88  80 CB 04                     or bl, 4
0001:1B8B  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:1B8E  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:1B91  89 7E 80                     mov word ptr [bp - 0x80], di
0001:1B94  3B F9                        cmp di, cx
0001:1B96  7D 37                        jge 0x1bcf
0001:1B98  F6 C7 30                     test bh, 0x30
0001:1B9B  75 33                        jne 0x1bd0
0001:1B9D  8B 46 94                     mov ax, word ptr [bp - 0x6c]
0001:1BA0  03 46 F2                     add ax, word ptr [bp - 0xe]
0001:1BA3  F7 6E 1C                     imul word ptr [bp + 0x1c]
0001:1BA6  70 28                        jo 0x1bd0
0001:1BA8  03 46 E8                     add ax, word ptr [bp - 0x18]
0001:1BAB  70 23                        jo 0x1bd0
0001:1BAD  03 C7                        add ax, di
0001:1BAF  70 1F                        jo 0x1bd0
0001:1BB1  8B 56 88                     mov dx, word ptr [bp - 0x78]
0001:1BB4  3B FA                        cmp di, dx
0001:1BB6  7D 0A                        jge 0x1bc2
0001:1BB8  3B C2                        cmp ax, dx
0001:1BBA  7C 13                        jl 0x1bcf
0001:1BBC  80 CB 80                     or bl, 0x80
0001:1BBF  89 56 80                     mov word ptr [bp - 0x80], dx
0001:1BC2  3B C1                        cmp ax, cx
0001:1BC4  7C 03                        jl 0x1bc9
0001:1BC6  80 CB 40                     or bl, 0x40
0001:1BC9  80 CB 02                     or bl, 2
0001:1BCC  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:1BCF  C3                           ret
0001:1BD0  B8 FF 7F                     mov ax, 0x7fff
0001:1BD3  EB DC                        jmp 0x1bb1

; FUNCTION 0001:1B56 (50 instructions)
0001:1B56  C8 F7 D8 92                  enter -0x2709, -0x6e
0001:1B5A  89 4E 82                     mov word ptr [bp - 0x7e], cx
0001:1B5D  89 56 D2                     mov word ptr [bp - 0x2e], dx
0001:1B60  8B C1                        mov ax, cx
0001:1B62  03 C7                        add ax, di
0001:1B64  8B D0                        mov dx, ax
0001:1B66  2B 46 8E                     sub ax, word ptr [bp - 0x72]
0001:1B69  72 06                        jb 0x1b71
0001:1B6B  2B F8                        sub di, ax
0001:1B6D  7E 60                        jle 0x1bcf
0001:1B6F  2B D0                        sub dx, ax
0001:1B71  89 7E D4                     mov word ptr [bp - 0x2c], di
0001:1B74  89 56 86                     mov word ptr [bp - 0x7a], dx
0001:1B77  F6 C3 01                     test bl, 1
0001:1B7A  74 0F                        je 0x1b8b
0001:1B7C  3B 96 7E FF                  cmp dx, word ptr [bp - 0x82]
0001:1B80  7F 09                        jg 0x1b8b
0001:1B82  3B 8E 7A FF                  cmp cx, word ptr [bp - 0x86]
0001:1B86  7C 03                        jl 0x1b8b
0001:1B88  80 CB 04                     or bl, 4
0001:1B8B  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:1B8E  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:1B91  89 7E 80                     mov word ptr [bp - 0x80], di
0001:1B94  3B F9                        cmp di, cx
0001:1B96  7D 37                        jge 0x1bcf
0001:1B98  F6 C7 30                     test bh, 0x30
0001:1B9B  75 33                        jne 0x1bd0
0001:1B9D  8B 46 94                     mov ax, word ptr [bp - 0x6c]
0001:1BA0  03 46 F2                     add ax, word ptr [bp - 0xe]
0001:1BA3  F7 6E 1C                     imul word ptr [bp + 0x1c]
0001:1BA6  70 28                        jo 0x1bd0
0001:1BA8  03 46 E8                     add ax, word ptr [bp - 0x18]
0001:1BAB  70 23                        jo 0x1bd0
0001:1BAD  03 C7                        add ax, di
0001:1BAF  70 1F                        jo 0x1bd0
0001:1BB1  8B 56 88                     mov dx, word ptr [bp - 0x78]
0001:1BB4  3B FA                        cmp di, dx
0001:1BB6  7D 0A                        jge 0x1bc2
0001:1BB8  3B C2                        cmp ax, dx
0001:1BBA  7C 13                        jl 0x1bcf
0001:1BBC  80 CB 80                     or bl, 0x80
0001:1BBF  89 56 80                     mov word ptr [bp - 0x80], dx
0001:1BC2  3B C1                        cmp ax, cx
0001:1BC4  7C 03                        jl 0x1bc9
0001:1BC6  80 CB 40                     or bl, 0x40
0001:1BC9  80 CB 02                     or bl, 2
0001:1BCC  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:1BCF  C3                           ret
0001:1BD0  B8 FF 7F                     mov ax, 0x7fff
0001:1BD3  EB DC                        jmp 0x1bb1

; FUNCTION 0001:1BD5 (110 instructions)
0001:1BD5  F7 D8                        neg ax
0001:1BD7  F6 C7 30                     test bh, 0x30
0001:1BDA  75 1F                        jne 0x1bfb
0001:1BDC  F6 C7 40                     test bh, 0x40
0001:1BDF  74 24                        je 0x1c05
0001:1BE1  8B 56 90                     mov dx, word ptr [bp - 0x70]
0001:1BE4  03 56 F2                     add dx, word ptr [bp - 0xe]
0001:1BE7  F7 EA                        imul dx
0001:1BE9  70 09                        jo 0x1bf4
0001:1BEB  F6 C7 0C                     test bh, 0xc
0001:1BEE  75 6B                        jne 0x1c5b
0001:1BF0  8B 56 92                     mov dx, word ptr [bp - 0x6e]
0001:1BF3  C3                           ret
0001:1BF4  8B 56 28                     mov dx, word ptr [bp + 0x28]
0001:1BF7  B8 FF 7F                     mov ax, 0x7fff
0001:1BFA  C3                           ret
0001:1BFB  91                           xchg cx, ax
0001:1BFC  E8 D7 00                     call 0x1cd6
0001:1BFF  8B 46 EE                     mov ax, word ptr [bp - 0x12]
0001:1C02  E9 BE 00                     jmp 0x1cc3
0001:1C05  91                           xchg cx, ax
0001:1C06  33 C0                        xor ax, ax
0001:1C08  F6 C7 02                     test bh, 2
0001:1C0B  74 07                        je 0x1c14
0001:1C0D  8B 46 F2                     mov ax, word ptr [bp - 0xe]
0001:1C10  F7 E9                        imul cx
0001:1C12  70 E0                        jo 0x1bf4
0001:1C14  8A 56 96                     mov dl, byte ptr [bp - 0x6a]
0001:1C17  8A 76 97                     mov dh, byte ptr [bp - 0x69]
0001:1C1A  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:1C1D  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:1C20  8A 1C                        mov bl, byte ptr [si]
0001:1C22  46                           inc si
0001:1C23  2A DA                        sub bl, dl
0001:1C25  3A DE                        cmp bl, dh
0001:1C27  77 2D                        ja 0x1c56
0001:1C29  32 FF                        xor bh, bh
0001:1C2B  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1C31  74 12                        je 0x1c45
0001:1C33  50                           push ax
0001:1C34  D1 E3                        shl bx, 1
0001:1C36  8B C3                        mov ax, bx
0001:1C38  D1 E3                        shl bx, 1
0001:1C3A  03 D8                        add bx, ax
0001:1C3C  58                           pop ax
0001:1C3D  26 03 87 94 00               add ax, word ptr es:[bx + 0x94]
0001:1C42  EB 09                        jmp 0x1c4d
0001:1C45  C1 E3 02                     shl bx, 2
0001:1C48  26 03 87 76 00               add ax, word ptr es:[bx + 0x76]
0001:1C4D  70 A5                        jo 0x1bf4
0001:1C4F  E2 CF                        loop 0x1c20
0001:1C51  8A 7E F9                     mov bh, byte ptr [bp - 7]
0001:1C54  EB 95                        jmp 0x1beb
0001:1C56  8A 5E 98                     mov bl, byte ptr [bp - 0x68]
0001:1C59  EB CE                        jmp 0x1c29
0001:1C5B  FC                           cld
0001:1C5C  93                           xchg bx, ax
0001:1C5D  33 D2                        xor dx, dx
0001:1C5F  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:1C62  F7 D9                        neg cx
0001:1C64  8A 46 99                     mov al, byte ptr [bp - 0x67]
0001:1C67  8A E0                        mov ah, al
0001:1C69  02 46 96                     add al, byte ptr [bp - 0x6a]
0001:1C6C  C4 7E 1E                     les di, ptr [bp + 0x1e]
0001:1C6F  F2 AE                        repne scasb al, byte ptr es:[di]
0001:1C71  75 04                        jne 0x1c77
0001:1C73  42                           inc dx
0001:1C74  41                           inc cx
0001:1C75  E2 F8                        loop 0x1c6f
0001:1C77  3A 66 99                     cmp ah, byte ptr [bp - 0x67]
0001:1C7A  75 20                        jne 0x1c9c
0001:1C7C  8B FA                        mov di, dx
0001:1C7E  8A 56 96                     mov dl, byte ptr [bp - 0x6a]
0001:1C81  8A 76 97                     mov dh, byte ptr [bp - 0x69]
0001:1C84  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:1C87  F7 D9                        neg cx
0001:1C89  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:1C8C  AC                           lodsb al, byte ptr [si]
0001:1C8D  2A C2                        sub al, dl
0001:1C8F  3A C6                        cmp al, dh
0001:1C91  77 04                        ja 0x1c97
0001:1C93  E2 F7                        loop 0x1c8c
0001:1C95  EB 03                        jmp 0x1c9a
0001:1C97  47                           inc di
0001:1C98  E2 F2                        loop 0x1c8c
0001:1C9A  8B D7                        mov dx, di
0001:1C9C  8B CA                        mov cx, dx
0001:1C9E  E3 2A                        jcxz 0x1cca
0001:1CA0  8B 46 F0                     mov ax, word ptr [bp - 0x10]
0001:1CA3  F7 E1                        mul cx
0001:1CA5  03 D8                        add bx, ax
0001:1CA7  70 2A                        jo 0x1cd3
0001:1CA9  F6 46 F9 04                  test byte ptr [bp - 7], 4
0001:1CAD  74 1B                        je 0x1cca
0001:1CAF  8B 56 EA                     mov dx, word ptr [bp - 0x16]
0001:1CB2  8B 46 EE                     mov ax, word ptr [bp - 0x12]
0001:1CB5  8B 7E EC                     mov di, word ptr [bp - 0x14]
0001:1CB8  2B C2                        sub ax, dx
0001:1CBA  7F 05                        jg 0x1cc1
0001:1CBC  03 C7                        add ax, di
0001:1CBE  43                           inc bx
0001:1CBF  70 0D                        jo 0x1cce
0001:1CC1  E2 F5                        loop 0x1cb8
0001:1CC3  C5 B6 5A FF                  lds si, ptr [bp - 0xa6]
0001:1CC7  89 44 10                     mov word ptr [si + 0x10], ax
0001:1CCA  93                           xchg bx, ax
0001:1CCB  E9 22 FF                     jmp 0x1bf0
0001:1CCE  BB FF 7F                     mov bx, 0x7fff
0001:1CD1  EB F0                        jmp 0x1cc3
0001:1CD3  E9 1E FF                     jmp 0x1bf4

; FUNCTION 0001:1CD6 (86 instructions)
0001:1CD6  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:1CD9  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:1CDC  33 FF                        xor di, di
0001:1CDE  89 7E C8                     mov word ptr [bp - 0x38], di
0001:1CE1  EB 38                        jmp 0x1d1b
0001:1CE3  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:1CE6  EB 3C                        jmp 0x1d24
0001:1CE8  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:1CEB  80 E3 0C                     and bl, 0xc
0001:1CEE  74 3C                        je 0x1d2c
0001:1CF0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:1CF3  F6 C3 04                     test bl, 4
0001:1CF6  74 34                        je 0x1d2c
0001:1CF8  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:1CFB  0B DB                        or bx, bx
0001:1CFD  7C 0E                        jl 0x1d0d
0001:1CFF  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:1D02  7F 28                        jg 0x1d2c
0001:1D04  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D07  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D0A  42                           inc dx
0001:1D0B  EB 1F                        jmp 0x1d2c
0001:1D0D  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D10  7F 1A                        jg 0x1d2c
0001:1D12  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D15  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D18  4A                           dec dx
0001:1D19  EB 11                        jmp 0x1d2c
0001:1D1B  AC                           lodsb al, byte ptr [si]
0001:1D1C  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:1D1F  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:1D22  77 BF                        ja 0x1ce3
0001:1D24  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:1D27  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:1D2A  74 BC                        je 0x1ce8
0001:1D2C  32 E4                        xor ah, ah
0001:1D2E  93                           xchg bx, ax
0001:1D2F  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1D35  74 12                        je 0x1d49
0001:1D37  50                           push ax
0001:1D38  D1 E3                        shl bx, 1
0001:1D3A  8B C3                        mov ax, bx
0001:1D3C  D1 E3                        shl bx, 1
0001:1D3E  03 D8                        add bx, ax
0001:1D40  58                           pop ax
0001:1D41  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:1D46  EB 09                        jmp 0x1d51
0001:1D49  C1 E3 02                     shl bx, 2
0001:1D4C  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:1D51  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:1D55  74 0F                        je 0x1d66
0001:1D57  C5 5E 0C                     lds bx, ptr [bp + 0xc]
0001:1D5A  03 17                        add dx, word ptr [bx]
0001:1D5C  43                           inc bx
0001:1D5D  43                           inc bx
0001:1D5E  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:1D61  8E 5E 20                     mov ds, word ptr [bp + 0x20]
0001:1D64  2B D0                        sub dx, ax
0001:1D66  0B D2                        or dx, dx
0001:1D68  7D 10                        jge 0x1d7a
0001:1D6A  49                           dec cx
0001:1D6B  74 0C                        je 0x1d79
0001:1D6D  80 4E F7 08                  or byte ptr [bp - 9], 8
0001:1D71  03 D0                        add dx, ax
0001:1D73  1B DB                        sbb bx, bx
0001:1D75  23 D3                        and dx, bx
0001:1D77  2B D0                        sub dx, ax
0001:1D79  41                           inc cx
0001:1D7A  8B 5E C8                     mov bx, word ptr [bp - 0x38]
0001:1D7D  03 F8                        add di, ax
0001:1D7F  70 19                        jo 0x1d9a
0001:1D81  3B DF                        cmp bx, di
0001:1D83  7F 02                        jg 0x1d87
0001:1D85  8B DF                        mov bx, di
0001:1D87  03 FA                        add di, dx
0001:1D89  70 0F                        jo 0x1d9a
0001:1D8B  3B DF                        cmp bx, di
0001:1D8D  7F 02                        jg 0x1d91
0001:1D8F  8B DF                        mov bx, di
0001:1D91  89 5E C8                     mov word ptr [bp - 0x38], bx
0001:1D94  49                           dec cx
0001:1D95  E3 02                        jcxz 0x1d99
0001:1D97  EB 82                        jmp 0x1d1b
0001:1D99  C3                           ret
0001:1D9A  BB FF 7F                     mov bx, 0x7fff
0001:1D9D  C3                           ret

; FUNCTION 0001:1CE0 (84 instructions)
0001:1CE0  C8 EB 38 8A                  enter 0x38eb, -0x76
0001:1CE3  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:1CE4  46                           inc si
0001:1CE5  98                           cwde
0001:1CE6  EB 3C                        jmp 0x1d24
0001:1CE8  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:1CEB  80 E3 0C                     and bl, 0xc
0001:1CEE  74 3C                        je 0x1d2c
0001:1CF0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:1CF3  F6 C3 04                     test bl, 4
0001:1CF6  74 34                        je 0x1d2c
0001:1CF8  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:1CFB  0B DB                        or bx, bx
0001:1CFD  7C 0E                        jl 0x1d0d
0001:1CFF  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:1D02  7F 28                        jg 0x1d2c
0001:1D04  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D07  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D0A  42                           inc dx
0001:1D0B  EB 1F                        jmp 0x1d2c
0001:1D0D  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D10  7F 1A                        jg 0x1d2c
0001:1D12  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D15  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D18  4A                           dec dx
0001:1D19  EB 11                        jmp 0x1d2c
0001:1D1B  AC                           lodsb al, byte ptr [si]
0001:1D1C  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:1D1F  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:1D22  77 BF                        ja 0x1ce3
0001:1D24  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:1D27  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:1D2A  74 BC                        je 0x1ce8
0001:1D2C  32 E4                        xor ah, ah
0001:1D2E  93                           xchg bx, ax
0001:1D2F  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1D35  74 12                        je 0x1d49
0001:1D37  50                           push ax
0001:1D38  D1 E3                        shl bx, 1
0001:1D3A  8B C3                        mov ax, bx
0001:1D3C  D1 E3                        shl bx, 1
0001:1D3E  03 D8                        add bx, ax
0001:1D40  58                           pop ax
0001:1D41  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:1D46  EB 09                        jmp 0x1d51
0001:1D49  C1 E3 02                     shl bx, 2
0001:1D4C  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:1D51  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:1D55  74 0F                        je 0x1d66
0001:1D57  C5 5E 0C                     lds bx, ptr [bp + 0xc]
0001:1D5A  03 17                        add dx, word ptr [bx]
0001:1D5C  43                           inc bx
0001:1D5D  43                           inc bx
0001:1D5E  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:1D61  8E 5E 20                     mov ds, word ptr [bp + 0x20]
0001:1D64  2B D0                        sub dx, ax
0001:1D66  0B D2                        or dx, dx
0001:1D68  7D 10                        jge 0x1d7a
0001:1D6A  49                           dec cx
0001:1D6B  74 0C                        je 0x1d79
0001:1D6D  80 4E F7 08                  or byte ptr [bp - 9], 8
0001:1D71  03 D0                        add dx, ax
0001:1D73  1B DB                        sbb bx, bx
0001:1D75  23 D3                        and dx, bx
0001:1D77  2B D0                        sub dx, ax
0001:1D79  41                           inc cx
0001:1D7A  8B 5E C8                     mov bx, word ptr [bp - 0x38]
0001:1D7D  03 F8                        add di, ax
0001:1D7F  70 19                        jo 0x1d9a
0001:1D81  3B DF                        cmp bx, di
0001:1D83  7F 02                        jg 0x1d87
0001:1D85  8B DF                        mov bx, di
0001:1D87  03 FA                        add di, dx
0001:1D89  70 0F                        jo 0x1d9a
0001:1D8B  3B DF                        cmp bx, di
0001:1D8D  7F 02                        jg 0x1d91
0001:1D8F  8B DF                        mov bx, di
0001:1D91  89 5E C8                     mov word ptr [bp - 0x38], bx
0001:1D94  49                           dec cx
0001:1D95  E3 02                        jcxz 0x1d99
0001:1D97  EB 82                        jmp 0x1d1b
0001:1D99  C3                           ret
0001:1D9A  BB FF 7F                     mov bx, 0x7fff
0001:1D9D  C3                           ret

; FUNCTION 0001:1D7C (84 instructions)
0001:1CE3  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:1CE6  EB 3C                        jmp 0x1d24
0001:1CE8  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:1CEB  80 E3 0C                     and bl, 0xc
0001:1CEE  74 3C                        je 0x1d2c
0001:1CF0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:1CF3  F6 C3 04                     test bl, 4
0001:1CF6  74 34                        je 0x1d2c
0001:1CF8  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:1CFB  0B DB                        or bx, bx
0001:1CFD  7C 0E                        jl 0x1d0d
0001:1CFF  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:1D02  7F 28                        jg 0x1d2c
0001:1D04  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D07  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D0A  42                           inc dx
0001:1D0B  EB 1F                        jmp 0x1d2c
0001:1D0D  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D10  7F 1A                        jg 0x1d2c
0001:1D12  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D15  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D18  4A                           dec dx
0001:1D19  EB 11                        jmp 0x1d2c
0001:1D1B  AC                           lodsb al, byte ptr [si]
0001:1D1C  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:1D1F  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:1D22  77 BF                        ja 0x1ce3
0001:1D24  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:1D27  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:1D2A  74 BC                        je 0x1ce8
0001:1D2C  32 E4                        xor ah, ah
0001:1D2E  93                           xchg bx, ax
0001:1D2F  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1D35  74 12                        je 0x1d49
0001:1D37  50                           push ax
0001:1D38  D1 E3                        shl bx, 1
0001:1D3A  8B C3                        mov ax, bx
0001:1D3C  D1 E3                        shl bx, 1
0001:1D3E  03 D8                        add bx, ax
0001:1D40  58                           pop ax
0001:1D41  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:1D46  EB 09                        jmp 0x1d51
0001:1D49  C1 E3 02                     shl bx, 2
0001:1D4C  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:1D51  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:1D55  74 0F                        je 0x1d66
0001:1D57  C5 5E 0C                     lds bx, ptr [bp + 0xc]
0001:1D5A  03 17                        add dx, word ptr [bx]
0001:1D5C  43                           inc bx
0001:1D5D  43                           inc bx
0001:1D5E  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:1D61  8E 5E 20                     mov ds, word ptr [bp + 0x20]
0001:1D64  2B D0                        sub dx, ax
0001:1D66  0B D2                        or dx, dx
0001:1D68  7D 10                        jge 0x1d7a
0001:1D6A  49                           dec cx
0001:1D6B  74 0C                        je 0x1d79
0001:1D6D  80 4E F7 08                  or byte ptr [bp - 9], 8
0001:1D71  03 D0                        add dx, ax
0001:1D73  1B DB                        sbb bx, bx
0001:1D75  23 D3                        and dx, bx
0001:1D77  2B D0                        sub dx, ax
0001:1D79  41                           inc cx
0001:1D7A  8B 5E C8                     mov bx, word ptr [bp - 0x38]
0001:1D7C  C8 03 F8 70                  enter -0x7fd, 0x70
0001:1D7D  03 F8                        add di, ax
0001:1D7F  70 19                        jo 0x1d9a
0001:1D80  19 3B                        sbb word ptr [bp + di], di
0001:1D81  3B DF                        cmp bx, di
0001:1D82  DF 7F 02                     fistp qword ptr [bx + 2]
0001:1D83  7F 02                        jg 0x1d87
0001:1D85  8B DF                        mov bx, di
0001:1D87  03 FA                        add di, dx
0001:1D89  70 0F                        jo 0x1d9a
0001:1D8B  3B DF                        cmp bx, di
0001:1D8D  7F 02                        jg 0x1d91
0001:1D8F  8B DF                        mov bx, di
0001:1D91  89 5E C8                     mov word ptr [bp - 0x38], bx
0001:1D94  49                           dec cx
0001:1D95  E3 02                        jcxz 0x1d99
0001:1D97  EB 82                        jmp 0x1d1b
0001:1D99  C3                           ret
0001:1D9A  BB FF 7F                     mov bx, 0x7fff
0001:1D9D  C3                           ret

; FUNCTION 0001:1D93 (82 instructions)
0001:1CE3  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:1CE6  EB 3C                        jmp 0x1d24
0001:1CE8  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:1CEB  80 E3 0C                     and bl, 0xc
0001:1CEE  74 3C                        je 0x1d2c
0001:1CF0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:1CF3  F6 C3 04                     test bl, 4
0001:1CF6  74 34                        je 0x1d2c
0001:1CF8  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:1CFB  0B DB                        or bx, bx
0001:1CFD  7C 0E                        jl 0x1d0d
0001:1CFF  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:1D02  7F 28                        jg 0x1d2c
0001:1D04  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D07  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D0A  42                           inc dx
0001:1D0B  EB 1F                        jmp 0x1d2c
0001:1D0D  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D10  7F 1A                        jg 0x1d2c
0001:1D12  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:1D15  01 5E EE                     add word ptr [bp - 0x12], bx
0001:1D18  4A                           dec dx
0001:1D19  EB 11                        jmp 0x1d2c
0001:1D1B  AC                           lodsb al, byte ptr [si]
0001:1D1C  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:1D1F  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:1D22  77 BF                        ja 0x1ce3
0001:1D24  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:1D27  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:1D2A  74 BC                        je 0x1ce8
0001:1D2C  32 E4                        xor ah, ah
0001:1D2E  93                           xchg bx, ax
0001:1D2F  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:1D35  74 12                        je 0x1d49
0001:1D37  50                           push ax
0001:1D38  D1 E3                        shl bx, 1
0001:1D3A  8B C3                        mov ax, bx
0001:1D3C  D1 E3                        shl bx, 1
0001:1D3E  03 D8                        add bx, ax
0001:1D40  58                           pop ax
0001:1D41  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:1D46  EB 09                        jmp 0x1d51
0001:1D49  C1 E3 02                     shl bx, 2
0001:1D4C  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:1D51  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:1D55  74 0F                        je 0x1d66
0001:1D57  C5 5E 0C                     lds bx, ptr [bp + 0xc]
0001:1D5A  03 17                        add dx, word ptr [bx]
0001:1D5C  43                           inc bx
0001:1D5D  43                           inc bx
0001:1D5E  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:1D61  8E 5E 20                     mov ds, word ptr [bp + 0x20]
0001:1D64  2B D0                        sub dx, ax
0001:1D66  0B D2                        or dx, dx
0001:1D68  7D 10                        jge 0x1d7a
0001:1D6A  49                           dec cx
0001:1D6B  74 0C                        je 0x1d79
0001:1D6D  80 4E F7 08                  or byte ptr [bp - 9], 8
0001:1D71  03 D0                        add dx, ax
0001:1D73  1B DB                        sbb bx, bx
0001:1D75  23 D3                        and dx, bx
0001:1D77  2B D0                        sub dx, ax
0001:1D79  41                           inc cx
0001:1D7A  8B 5E C8                     mov bx, word ptr [bp - 0x38]
0001:1D7D  03 F8                        add di, ax
0001:1D7F  70 19                        jo 0x1d9a
0001:1D81  3B DF                        cmp bx, di
0001:1D83  7F 02                        jg 0x1d87
0001:1D85  8B DF                        mov bx, di
0001:1D87  03 FA                        add di, dx
0001:1D89  70 0F                        jo 0x1d9a
0001:1D8B  3B DF                        cmp bx, di
0001:1D8D  7F 02                        jg 0x1d91
0001:1D8F  8B DF                        mov bx, di
0001:1D91  89 5E C8                     mov word ptr [bp - 0x38], bx
0001:1D93  C8 49 E3 02                  enter -0x1cb7, 2
0001:1D94  49                           dec cx
0001:1D95  E3 02                        jcxz 0x1d99
0001:1D97  EB 82                        jmp 0x1d1b
0001:1D99  C3                           ret
0001:1D9A  BB FF 7F                     mov bx, 0x7fff
0001:1D9D  C3                           ret

; FUNCTION 0001:1DA0 (68 instructions)
0001:1D9E  F9                           stc
0001:1D9F  C3                           ret
0001:1DA0  2B DA                        sub bx, dx
0001:1DA2  7E FA                        jle 0x1d9e
0001:1DA4  4B                           dec bx
0001:1DA5  8B FA                        mov di, dx
0001:1DA7  8A 86 62 FF                  mov al, byte ptr [bp - 0x9e]
0001:1DAB  3C 01                        cmp al, 1
0001:1DAD  74 3B                        je 0x1dea
0001:1DAF  3C 04                        cmp al, 4
0001:1DB1  74 07                        je 0x1dba
0001:1DB3  43                           inc bx
0001:1DB4  8B F3                        mov si, bx
0001:1DB6  33 C0                        xor ax, ax
0001:1DB8  F8                           clc
0001:1DB9  C3                           ret
0001:1DBA  43                           inc bx
0001:1DBB  8B FA                        mov di, dx
0001:1DBD  D1 EF                        shr di, 1
0001:1DBF  33 C0                        xor ax, ax
0001:1DC1  03 DA                        add bx, dx
0001:1DC3  F7 C2 01 00                  test dx, 1
0001:1DC7  74 02                        je 0x1dcb
0001:1DC9  B0 0F                        mov al, 0xf
0001:1DCB  F7 C3 01 00                  test bx, 1
0001:1DCF  74 02                        je 0x1dd3
0001:1DD1  B4 F0                        mov ah, 0xf0
0001:1DD3  42                           inc dx
0001:1DD4  83 E2 FE                     and dx, 0xfffe
0001:1DD7  83 E3 FE                     and bx, 0xfffe
0001:1DDA  2B DA                        sub bx, dx
0001:1DDC  D1 EB                        shr bx, 1
0001:1DDE  7F 06                        jg 0x1de6
0001:1DE0  0A C0                        or al, al
0001:1DE2  75 02                        jne 0x1de6
0001:1DE4  86 C4                        xchg ah, al
0001:1DE6  8B F3                        mov si, bx
0001:1DE8  F8                           clc
0001:1DE9  C3                           ret
0001:1DEA  C1 EF 03                     shr di, 3
0001:1DED  80 E2 07                     and dl, 7
0001:1DF0  32 F6                        xor dh, dh
0001:1DF2  03 DA                        add bx, dx
0001:1DF4  8B F3                        mov si, bx
0001:1DF6  80 E3 07                     and bl, 7
0001:1DF9  8A CA                        mov cl, dl
0001:1DFB  B8 FF FF                     mov ax, 0xffff
0001:1DFE  8B D0                        mov dx, ax
0001:1E00  D2 E8                        shr al, cl
0001:1E02  8A CB                        mov cl, bl
0001:1E04  B4 80                        mov ah, 0x80
0001:1E06  D2 FC                        sar ah, cl
0001:1E08  C1 EE 03                     shr si, 3
0001:1E0B  75 05                        jne 0x1e12
0001:1E0D  22 C4                        and al, ah
0001:1E0F  32 E4                        xor ah, ah
0001:1E11  46                           inc si
0001:1E12  4E                           dec si
0001:1E13  3A C2                        cmp al, dl
0001:1E15  1B F2                        sbb si, dx
0001:1E17  3A C2                        cmp al, dl
0001:1E19  1A C2                        sbb al, dl
0001:1E1B  3A E2                        cmp ah, dl
0001:1E1D  1B F2                        sbb si, dx
0001:1E1F  3A E2                        cmp ah, dl
0001:1E21  1A E2                        sbb ah, dl
0001:1E23  F8                           clc
0001:1E24  C3                           ret

; FUNCTION 0001:1E25 (36 instructions)
0001:1E25  C7 86 4C FF 00 00            mov word ptr [bp - 0xb4], 0
0001:1E2B  C6 86 4E FF 08               mov byte ptr [bp - 0xb2], 8
0001:1E30  8A 46 F5                     mov al, byte ptr [bp - 0xb]
0001:1E33  80 BE 62 FF 04               cmp byte ptr [bp - 0x9e], 4
0001:1E38  75 07                        jne 0x1e41
0001:1E3A  8A E0                        mov ah, al
0001:1E3C  C0 E4 04                     shl ah, 4
0001:1E3F  0A C4                        or al, ah
0001:1E41  88 86 04 FF                  mov byte ptr [bp - 0xfc], al
0001:1E45  D1 E8                        shr ax, 1
0001:1E47  1A C0                        sbb al, al
0001:1E49  88 86 44 FF                  mov byte ptr [bp - 0xbc], al
0001:1E4D  8B 86 7C FF                  mov ax, word ptr [bp - 0x84]
0001:1E51  8B 9E 7E FF                  mov bx, word ptr [bp - 0x82]
0001:1E55  2B 86 78 FF                  sub ax, word ptr [bp - 0x88]
0001:1E59  2B 9E 7A FF                  sub bx, word ptr [bp - 0x86]
0001:1E5D  33 C9                        xor cx, cx
0001:1E5F  8D 96 04 FF                  lea dx, [bp - 0xfc]
0001:1E63  FF 76 2C                     push word ptr [bp + 0x2c]
0001:1E66  FF 76 2A                     push word ptr [bp + 0x2a]
0001:1E69  FF B6 78 FF                  push word ptr [bp - 0x88]
0001:1E6D  FF B6 7A FF                  push word ptr [bp - 0x86]
0001:1E71  51                           push cx
0001:1E72  51                           push cx
0001:1E73  51                           push cx
0001:1E74  51                           push cx
0001:1E75  50                           push ax
0001:1E76  53                           push bx
0001:1E77  68 F0 00                     push 0xf0
0001:1E7A  6A 21                        push 0x21
0001:1E7C  16                           push ss
0001:1E7D  52                           push dx
0001:1E7E  51                           push cx
0001:1E7F  51                           push cx
0001:1E80  9A 54 39 DF 16               lcall 0x16df, 0x3954
0001:1E85  C3                           ret

; FUNCTION 0001:1E83 (3 instructions)
0001:1E83  DF 16 C3 EB                  fist word ptr [0xebc3]
0001:1E87  0B 90 58 E9                  or dx, word ptr [bx + si - 0x16a8]
0001:1E8B  08 FA                        or dl, bh

; FUNCTION 0001:1E8D (33 instructions)
0001:1E8D  E8 70 00                     call 0x1f00
0001:1E90  C5 76 2A                     lds si, ptr [bp + 0x2a]
0001:1E93  8B 44 06                     mov ax, word ptr [si + 6]
0001:1E96  89 46 E6                     mov word ptr [bp - 0x1a], ax
0001:1E99  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1E9C  2B 46 8A                     sub ax, word ptr [bp - 0x76]
0001:1E9F  89 86 58 FF                  mov word ptr [bp - 0xa8], ax
0001:1EA3  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1EA6  48                           dec ax
0001:1EA7  E8 3B 00                     call 0x1ee5
0001:1EAA  89 46 DE                     mov word ptr [bp - 0x22], ax
0001:1EAD  89 56 E0                     mov word ptr [bp - 0x20], dx
0001:1EB0  8B 86 58 FF                  mov ax, word ptr [bp - 0xa8]
0001:1EB4  48                           dec ax
0001:1EB5  F7 66 E6                     mul word ptr [bp - 0x1a]
0001:1EB8  01 46 DE                     add word ptr [bp - 0x22], ax
0001:1EBB  F7 5E E6                     neg word ptr [bp - 0x1a]
0001:1EBE  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1EC1  29 46 82                     sub word ptr [bp - 0x7e], ax
0001:1EC4  29 46 86                     sub word ptr [bp - 0x7a], ax
0001:1EC7  8A 9E 62 FF                  mov bl, byte ptr [bp - 0x9e]
0001:1ECB  32 FF                        xor bh, bh
0001:1ECD  8B 46 E6                     mov ax, word ptr [bp - 0x1a]
0001:1ED0  F7 66 D4                     mul word ptr [bp - 0x2c]
0001:1ED3  2B C3                        sub ax, bx
0001:1ED5  89 46 D0                     mov word ptr [bp - 0x30], ax
0001:1ED8  80 FB 08                     cmp bl, 8
0001:1EDB  74 07                        je 0x1ee4
0001:1EDD  80 FB 04                     cmp bl, 4
0001:1EE0  74 01                        je 0x1ee3
0001:1EE2  C3                           ret
0001:1EE3  C3                           ret
0001:1EE4  C3                           ret

; FUNCTION 0001:1EE5 (12 instructions)
0001:1EE5  2B 44 04                     sub ax, word ptr [si + 4]
0001:1EE8  40                           inc ax
0001:1EE9  F7 D8                        neg ax
0001:1EEB  F7 64 06                     mul word ptr [si + 6]
0001:1EEE  03 44 0A                     add ax, word ptr [si + 0xa]
0001:1EF1  83 D2 00                     adc dx, 0
0001:1EF4  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0001:1EF7  53                           push bx
0001:1EF8  52                           push dx
0001:1EF9  50                           push ax
0001:1EFA  9A 0B 45 83 1E               lcall 0x1e83, 0x450b
0001:1EFF  C3                           ret

; FUNCTION 0001:1EFD (83 instructions)
0001:1EFD  83 1E C3 8A 5E               sbb word ptr [0x8ac3], 0x5e
0001:1F02  F8                           clc
0001:1F03  F6 C3 02                     test bl, 2
0001:1F06  74 0C                        je 0x1f14
0001:1F08  F6 C3 01                     test bl, 1
0001:1F0B  74 1A                        je 0x1f27
0001:1F0D  F7 46 06 04 00               test word ptr [bp + 6], 4
0001:1F12  74 13                        je 0x1f27
0001:1F14  8B 8E 78 FF                  mov cx, word ptr [bp - 0x88]
0001:1F18  8B 96 7A FF                  mov dx, word ptr [bp - 0x86]
0001:1F1C  8B B6 7C FF                  mov si, word ptr [bp - 0x84]
0001:1F20  8B BE 7E FF                  mov di, word ptr [bp - 0x82]
0001:1F24  EB 53                        jmp 0x1f79
0001:1F27  8B 46 80                     mov ax, word ptr [bp - 0x80]
0001:1F2A  99                           cdq
0001:1F2B  23 C2                        and ax, dx
0001:1F2D  8B C8                        mov cx, ax
0001:1F2F  8B 76 84                     mov si, word ptr [bp - 0x7c]
0001:1F32  8B 56 82                     mov dx, word ptr [bp - 0x7e]
0001:1F35  8B 7E 86                     mov di, word ptr [bp - 0x7a]
0001:1F38  F6 C3 01                     test bl, 1
0001:1F3B  74 3C                        je 0x1f79
0001:1F3D  8B DA                        mov bx, dx
0001:1F3F  8B 86 7A FF                  mov ax, word ptr [bp - 0x86]
0001:1F43  2B C3                        sub ax, bx
0001:1F45  99                           cdq
0001:1F46  23 C2                        and ax, dx
0001:1F48  03 C3                        add ax, bx
0001:1F4A  8B D8                        mov bx, ax
0001:1F4C  8B 86 78 FF                  mov ax, word ptr [bp - 0x88]
0001:1F50  2B C1                        sub ax, cx
0001:1F52  99                           cdq
0001:1F53  23 C2                        and ax, dx
0001:1F55  03 C1                        add ax, cx
0001:1F57  8B C8                        mov cx, ax
0001:1F59  8B 86 7C FF                  mov ax, word ptr [bp - 0x84]
0001:1F5D  2B C6                        sub ax, si
0001:1F5F  99                           cdq
0001:1F60  F7 D2                        not dx
0001:1F62  23 C2                        and ax, dx
0001:1F64  03 C6                        add ax, si
0001:1F66  8B F0                        mov si, ax
0001:1F68  8B 86 7E FF                  mov ax, word ptr [bp - 0x82]
0001:1F6C  2B C7                        sub ax, di
0001:1F6E  99                           cdq
0001:1F6F  F7 D2                        not dx
0001:1F71  23 C2                        and ax, dx
0001:1F73  03 C7                        add ax, di
0001:1F75  8B F8                        mov di, ax
0001:1F77  8B D3                        mov dx, bx
0001:1F79  8B DA                        mov bx, dx
0001:1F7B  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1F7E  2B C3                        sub ax, bx
0001:1F80  99                           cdq
0001:1F81  F7 D2                        not dx
0001:1F83  23 C2                        and ax, dx
0001:1F85  03 C3                        add ax, bx
0001:1F87  8B D8                        mov bx, ax
0001:1F89  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:1F8C  2B C1                        sub ax, cx
0001:1F8E  99                           cdq
0001:1F8F  F7 D2                        not dx
0001:1F91  23 C2                        and ax, dx
0001:1F93  03 C1                        add ax, cx
0001:1F95  8B C8                        mov cx, ax
0001:1F97  8B 46 8C                     mov ax, word ptr [bp - 0x74]
0001:1F9A  2B C6                        sub ax, si
0001:1F9C  99                           cdq
0001:1F9D  23 C2                        and ax, dx
0001:1F9F  03 C6                        add ax, si
0001:1FA1  8B F0                        mov si, ax
0001:1FA3  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1FA6  2B C7                        sub ax, di
0001:1FA8  99                           cdq
0001:1FA9  23 C2                        and ax, dx
0001:1FAB  03 C7                        add ax, di
0001:1FAD  8B F8                        mov di, ax
0001:1FAF  8B D3                        mov dx, bx
0001:1FB1  89 4E 88                     mov word ptr [bp - 0x78], cx
0001:1FB4  89 56 8A                     mov word ptr [bp - 0x76], dx
0001:1FB7  89 76 8C                     mov word ptr [bp - 0x74], si
0001:1FBA  89 7E 8E                     mov word ptr [bp - 0x72], di
0001:1FBD  C3                           ret

; FUNCTION 0001:1F00 (82 instructions)
0001:1F00  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:1F03  F6 C3 02                     test bl, 2
0001:1F06  74 0C                        je 0x1f14
0001:1F08  F6 C3 01                     test bl, 1
0001:1F0B  74 1A                        je 0x1f27
0001:1F0D  F7 46 06 04 00               test word ptr [bp + 6], 4
0001:1F12  74 13                        je 0x1f27
0001:1F14  8B 8E 78 FF                  mov cx, word ptr [bp - 0x88]
0001:1F18  8B 96 7A FF                  mov dx, word ptr [bp - 0x86]
0001:1F1C  8B B6 7C FF                  mov si, word ptr [bp - 0x84]
0001:1F20  8B BE 7E FF                  mov di, word ptr [bp - 0x82]
0001:1F24  EB 53                        jmp 0x1f79
0001:1F27  8B 46 80                     mov ax, word ptr [bp - 0x80]
0001:1F2A  99                           cdq
0001:1F2B  23 C2                        and ax, dx
0001:1F2D  8B C8                        mov cx, ax
0001:1F2F  8B 76 84                     mov si, word ptr [bp - 0x7c]
0001:1F32  8B 56 82                     mov dx, word ptr [bp - 0x7e]
0001:1F35  8B 7E 86                     mov di, word ptr [bp - 0x7a]
0001:1F38  F6 C3 01                     test bl, 1
0001:1F3B  74 3C                        je 0x1f79
0001:1F3D  8B DA                        mov bx, dx
0001:1F3F  8B 86 7A FF                  mov ax, word ptr [bp - 0x86]
0001:1F43  2B C3                        sub ax, bx
0001:1F45  99                           cdq
0001:1F46  23 C2                        and ax, dx
0001:1F48  03 C3                        add ax, bx
0001:1F4A  8B D8                        mov bx, ax
0001:1F4C  8B 86 78 FF                  mov ax, word ptr [bp - 0x88]
0001:1F50  2B C1                        sub ax, cx
0001:1F52  99                           cdq
0001:1F53  23 C2                        and ax, dx
0001:1F55  03 C1                        add ax, cx
0001:1F57  8B C8                        mov cx, ax
0001:1F59  8B 86 7C FF                  mov ax, word ptr [bp - 0x84]
0001:1F5D  2B C6                        sub ax, si
0001:1F5F  99                           cdq
0001:1F60  F7 D2                        not dx
0001:1F62  23 C2                        and ax, dx
0001:1F64  03 C6                        add ax, si
0001:1F66  8B F0                        mov si, ax
0001:1F68  8B 86 7E FF                  mov ax, word ptr [bp - 0x82]
0001:1F6C  2B C7                        sub ax, di
0001:1F6E  99                           cdq
0001:1F6F  F7 D2                        not dx
0001:1F71  23 C2                        and ax, dx
0001:1F73  03 C7                        add ax, di
0001:1F75  8B F8                        mov di, ax
0001:1F77  8B D3                        mov dx, bx
0001:1F79  8B DA                        mov bx, dx
0001:1F7B  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1F7E  2B C3                        sub ax, bx
0001:1F80  99                           cdq
0001:1F81  F7 D2                        not dx
0001:1F83  23 C2                        and ax, dx
0001:1F85  03 C3                        add ax, bx
0001:1F87  8B D8                        mov bx, ax
0001:1F89  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:1F8C  2B C1                        sub ax, cx
0001:1F8E  99                           cdq
0001:1F8F  F7 D2                        not dx
0001:1F91  23 C2                        and ax, dx
0001:1F93  03 C1                        add ax, cx
0001:1F95  8B C8                        mov cx, ax
0001:1F97  8B 46 8C                     mov ax, word ptr [bp - 0x74]
0001:1F9A  2B C6                        sub ax, si
0001:1F9C  99                           cdq
0001:1F9D  23 C2                        and ax, dx
0001:1F9F  03 C6                        add ax, si
0001:1FA1  8B F0                        mov si, ax
0001:1FA3  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1FA6  2B C7                        sub ax, di
0001:1FA8  99                           cdq
0001:1FA9  23 C2                        and ax, dx
0001:1FAB  03 C7                        add ax, di
0001:1FAD  8B F8                        mov di, ax
0001:1FAF  8B D3                        mov dx, bx
0001:1FB1  89 4E 88                     mov word ptr [bp - 0x78], cx
0001:1FB4  89 56 8A                     mov word ptr [bp - 0x76], dx
0001:1FB7  89 76 8C                     mov word ptr [bp - 0x74], si
0001:1FBA  89 7E 8E                     mov word ptr [bp - 0x72], di
0001:1FBD  C3                           ret

; FUNCTION 0001:1F2E (66 instructions)
0001:1F2E  C8 8B 76 84                  enter 0x768b, -0x7c
0001:1F32  8B 56 82                     mov dx, word ptr [bp - 0x7e]
0001:1F35  8B 7E 86                     mov di, word ptr [bp - 0x7a]
0001:1F38  F6 C3 01                     test bl, 1
0001:1F3B  74 3C                        je 0x1f79
0001:1F3D  8B DA                        mov bx, dx
0001:1F3F  8B 86 7A FF                  mov ax, word ptr [bp - 0x86]
0001:1F43  2B C3                        sub ax, bx
0001:1F45  99                           cdq
0001:1F46  23 C2                        and ax, dx
0001:1F48  03 C3                        add ax, bx
0001:1F4A  8B D8                        mov bx, ax
0001:1F4C  8B 86 78 FF                  mov ax, word ptr [bp - 0x88]
0001:1F50  2B C1                        sub ax, cx
0001:1F52  99                           cdq
0001:1F53  23 C2                        and ax, dx
0001:1F55  03 C1                        add ax, cx
0001:1F57  8B C8                        mov cx, ax
0001:1F59  8B 86 7C FF                  mov ax, word ptr [bp - 0x84]
0001:1F5D  2B C6                        sub ax, si
0001:1F5F  99                           cdq
0001:1F60  F7 D2                        not dx
0001:1F62  23 C2                        and ax, dx
0001:1F64  03 C6                        add ax, si
0001:1F66  8B F0                        mov si, ax
0001:1F68  8B 86 7E FF                  mov ax, word ptr [bp - 0x82]
0001:1F6C  2B C7                        sub ax, di
0001:1F6E  99                           cdq
0001:1F6F  F7 D2                        not dx
0001:1F71  23 C2                        and ax, dx
0001:1F73  03 C7                        add ax, di
0001:1F75  8B F8                        mov di, ax
0001:1F77  8B D3                        mov dx, bx
0001:1F79  8B DA                        mov bx, dx
0001:1F7B  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0001:1F7E  2B C3                        sub ax, bx
0001:1F80  99                           cdq
0001:1F81  F7 D2                        not dx
0001:1F83  23 C2                        and ax, dx
0001:1F85  03 C3                        add ax, bx
0001:1F87  8B D8                        mov bx, ax
0001:1F89  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:1F8C  2B C1                        sub ax, cx
0001:1F8E  99                           cdq
0001:1F8F  F7 D2                        not dx
0001:1F91  23 C2                        and ax, dx
0001:1F93  03 C1                        add ax, cx
0001:1F95  8B C8                        mov cx, ax
0001:1F97  8B 46 8C                     mov ax, word ptr [bp - 0x74]
0001:1F9A  2B C6                        sub ax, si
0001:1F9C  99                           cdq
0001:1F9D  23 C2                        and ax, dx
0001:1F9F  03 C6                        add ax, si
0001:1FA1  8B F0                        mov si, ax
0001:1FA3  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1FA6  2B C7                        sub ax, di
0001:1FA8  99                           cdq
0001:1FA9  23 C2                        and ax, dx
0001:1FAB  03 C7                        add ax, di
0001:1FAD  8B F8                        mov di, ax
0001:1FAF  8B D3                        mov dx, bx
0001:1FB1  89 4E 88                     mov word ptr [bp - 0x78], cx
0001:1FB4  89 56 8A                     mov word ptr [bp - 0x76], dx
0001:1FB7  89 76 8C                     mov word ptr [bp - 0x74], si
0001:1FBA  89 7E 8E                     mov word ptr [bp - 0x72], di
0001:1FBD  C3                           ret

; FUNCTION 0001:1F58 (2 instructions)
0001:1F58  C8 8B 86 7C                  enter -0x7975, 0x7c
0001:1F5C  FF 2B                        ljmp [bp + di]

; FUNCTION 0001:1F96 (18 instructions)
0001:1F96  C8 8B 46 8C                  enter 0x468b, -0x74
0001:1F9A  2B C6                        sub ax, si
0001:1F9C  99                           cdq
0001:1F9D  23 C2                        and ax, dx
0001:1F9F  03 C6                        add ax, si
0001:1FA1  8B F0                        mov si, ax
0001:1FA3  8B 46 8E                     mov ax, word ptr [bp - 0x72]
0001:1FA6  2B C7                        sub ax, di
0001:1FA8  99                           cdq
0001:1FA9  23 C2                        and ax, dx
0001:1FAB  03 C7                        add ax, di
0001:1FAD  8B F8                        mov di, ax
0001:1FAF  8B D3                        mov dx, bx
0001:1FB1  89 4E 88                     mov word ptr [bp - 0x78], cx
0001:1FB4  89 56 8A                     mov word ptr [bp - 0x76], dx
0001:1FB7  89 76 8C                     mov word ptr [bp - 0x74], si
0001:1FBA  89 7E 8E                     mov word ptr [bp - 0x72], di
0001:1FBD  C3                           ret

; FUNCTION 0001:1FC3 (37 instructions)
0001:1FC3  C8 00 89 46                  enter -0x7700, 0x46
0001:1FC7  C4 8B 46 80                  les cx, ptr [bp + di - 0x7fba]
0001:1FCB  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:1FCE  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:1FD1  8A 46 F9                     mov al, byte ptr [bp - 7]
0001:1FD4  8A D8                        mov bl, al
0001:1FD6  24 01                        and al, 1
0001:1FD8  88 46 F7                     mov byte ptr [bp - 9], al
0001:1FDB  8A 66 F8                     mov ah, byte ptr [bp - 8]
0001:1FDE  80 E4 FD                     and ah, 0xfd
0001:1FE1  88 66 F8                     mov byte ptr [bp - 8], ah
0001:1FE4  B9 D3 20                     mov cx, 0x20d3
0001:1FE7  F6 C3 3E                     test bl, 0x3e
0001:1FEA  74 19                        je 0x2005
0001:1FEC  B9 52 22                     mov cx, 0x2252
0001:1FEF  F6 C3 30                     test bl, 0x30
0001:1FF2  74 11                        je 0x2005
0001:1FF4  F6 C3 01                     test bl, 1
0001:1FF7  74 03                        je 0x1ffc
0001:1FF9  E8 08 0B                     call 0x2b04
0001:1FFC  B9 15 25                     mov cx, 0x2515
0001:1FFF  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2002  8A 66 F8                     mov ah, byte ptr [bp - 8]
0001:2005  89 4E C2                     mov word ptr [bp - 0x3e], cx
0001:2008  E8 67 0D                     call 0x2d72
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]

; FUNCTION 0001:2440 (230 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2393  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2396  EB 50                        jmp 0x23e8
0001:2398  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:239B  80 E3 0C                     and bl, 0xc
0001:239E  74 50                        je 0x23f0
0001:23A0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:23A3  F6 C3 04                     test bl, 4
0001:23A6  74 48                        je 0x23f0
0001:23A8  8B 5E EE                     mov bx, word ptr [bp - 0x12]
0001:23AB  2B 5E EA                     sub bx, word ptr [bp - 0x16]
0001:23AE  7F 04                        jg 0x23b4
0001:23B0  03 5E EC                     add bx, word ptr [bp - 0x14]
0001:23B3  42                           inc dx
0001:23B4  89 5E EE                     mov word ptr [bp - 0x12], bx
0001:23B7  EB 37                        jmp 0x23f0
0001:23B9  F7 D8                        neg ax
0001:23BB  25 07 00                     and ax, 7
0001:23BE  74 08                        je 0x23c8
0001:23C0  3B C2                        cmp ax, dx
0001:23C2  7C 02                        jl 0x23c6
0001:23C4  8B C2                        mov ax, dx
0001:23C6  2B D0                        sub dx, ax
0001:23C8  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23CE  74 08                        je 0x23d8
0001:23D0  26 03 87 94 00               add ax, word ptr es:[bx + 0x94]
0001:23D5  EB 06                        jmp 0x23dd
0001:23D8  26 03 87 76 00               add ax, word ptr es:[bx + 0x76]
0001:23DD  EB 38                        jmp 0x2417
0001:23DF  AC                           lodsb al, byte ptr [si]
0001:23E0  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:23E3  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:23E6  77 AB                        ja 0x2393
0001:23E8  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:23EB  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:23EE  74 A8                        je 0x2398
0001:23F0  32 E4                        xor ah, ah
0001:23F2  93                           xchg bx, ax
0001:23F3  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23F9  74 10                        je 0x240b
0001:23FB  D1 E3                        shl bx, 1
0001:23FD  8B C3                        mov ax, bx
0001:23FF  D1 E3                        shl bx, 1
0001:2401  03 D8                        add bx, ax
0001:2403  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:2408  EB 09                        jmp 0x2413
0001:240B  C1 E3 02                     shl bx, 2
0001:240E  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:2413  0B D2                        or dx, dx
0001:2415  75 A2                        jne 0x23b9
0001:2417  0B C0                        or ax, ax
0001:2419  74 6E                        je 0x2489
0001:241B  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2421  74 13                        je 0x2436
0001:2423  50                           push ax
0001:2424  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:2429  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:242F  66 03 D8                     add ebx, eax
0001:2432  58                           pop ax
0001:2433  EB 09                        jmp 0x243e
0001:2436  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:243B  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:243E  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2440  C8 8B D7 80                  enter -0x2875, -0x80
0001:2441  8B D7                        mov dx, di
0001:2443  80 E2 07                     and dl, 7
0001:2444  E2 07                        loop 0x244d
0001:2446  03 F8                        add di, ax
0001:2448  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:244B  7C 03                        jl 0x2450
0001:244D  E9 9F 00                     jmp 0x24ef
0001:2450  8A F2                        mov dh, dl
0001:2452  B2 08                        mov dl, 8
0001:2454  3D 08 00                     cmp ax, 8
0001:2457  76 1B                        jbe 0x2474
0001:2459  52                           push dx
0001:245A  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2460  74 05                        je 0x2467
0001:2462  66 53                        push ebx
0001:2464  EB 03                        jmp 0x2469
0001:2467  53                           push bx
0001:2468  53                           push bx
0001:2469  2D 08 00                     sub ax, 8
0001:246C  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:246F  3D 08 00                     cmp ax, 8
0001:2472  77 E5                        ja 0x2459
0001:2474  8A E6                        mov ah, dh
0001:2476  50                           push ax
0001:2477  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:247D  74 05                        je 0x2484
0001:247F  66 53                        push ebx
0001:2481  EB 03                        jmp 0x2486
0001:2484  53                           push bx
0001:2485  53                           push bx
0001:2486  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:2489  0B D2                        or dx, dx
0001:248B  74 52                        je 0x24df
0001:248D  92                           xchg dx, ax
0001:248E  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2494  74 07                        je 0x249d
0001:2496  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:249A  EB 04                        jmp 0x24a0
0001:249D  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:24A0  8B D7                        mov dx, di
0001:24A2  80 E2 07                     and dl, 7
0001:24A5  03 F8                        add di, ax
0001:24A7  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:24AA  7D 55                        jge 0x2501
0001:24AC  8A F2                        mov dh, dl
0001:24AE  B2 08                        mov dl, 8
0001:24B0  3D 08 00                     cmp ax, 8
0001:24B3  76 18                        jbe 0x24cd
0001:24B5  52                           push dx
0001:24B6  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24BC  74 05                        je 0x24c3
0001:24BE  66 53                        push ebx
0001:24C0  EB 03                        jmp 0x24c5
0001:24C3  53                           push bx
0001:24C4  53                           push bx
0001:24C5  2D 08 00                     sub ax, 8
0001:24C8  3D 08 00                     cmp ax, 8
0001:24CB  77 E8                        ja 0x24b5
0001:24CD  8A E6                        mov ah, dh
0001:24CF  50                           push ax
0001:24D0  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24D6  74 05                        je 0x24dd
0001:24D8  66 53                        push ebx
0001:24DA  EB 03                        jmp 0x24df
0001:24DD  53                           push bx
0001:24DE  53                           push bx
0001:24DF  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:24E2  7C 2B                        jl 0x250f
0001:24E4  49                           dec cx
0001:24E5  7E 03                        jle 0x24ea
0001:24E7  E9 F5 FE                     jmp 0x23df
0001:24EA  8B C7                        mov ax, di
0001:24EC  E9 3B FB                     jmp 0x202a
0001:24EF  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:24F2  2B F9                        sub di, cx
0001:24F4  2B C7                        sub ax, di
0001:24F6  8B F9                        mov di, cx
0001:24F8  33 C9                        xor cx, cx
0001:24FA  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:24FD  41                           inc cx
0001:24FE  E9 4F FF                     jmp 0x2450
0001:2501  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:2504  2B F9                        sub di, cx
0001:2506  2B C7                        sub ax, di
0001:2508  8B F9                        mov di, cx
0001:250A  B9 01 00                     mov cx, 1
0001:250D  EB 9D                        jmp 0x24ac
0001:250F  49                           dec cx
0001:2510  8B C7                        mov ax, di
0001:2512  E9 15 FB                     jmp 0x202a

; FUNCTION 0001:2488 (230 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2393  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2396  EB 50                        jmp 0x23e8
0001:2398  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:239B  80 E3 0C                     and bl, 0xc
0001:239E  74 50                        je 0x23f0
0001:23A0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:23A3  F6 C3 04                     test bl, 4
0001:23A6  74 48                        je 0x23f0
0001:23A8  8B 5E EE                     mov bx, word ptr [bp - 0x12]
0001:23AB  2B 5E EA                     sub bx, word ptr [bp - 0x16]
0001:23AE  7F 04                        jg 0x23b4
0001:23B0  03 5E EC                     add bx, word ptr [bp - 0x14]
0001:23B3  42                           inc dx
0001:23B4  89 5E EE                     mov word ptr [bp - 0x12], bx
0001:23B7  EB 37                        jmp 0x23f0
0001:23B9  F7 D8                        neg ax
0001:23BB  25 07 00                     and ax, 7
0001:23BE  74 08                        je 0x23c8
0001:23C0  3B C2                        cmp ax, dx
0001:23C2  7C 02                        jl 0x23c6
0001:23C4  8B C2                        mov ax, dx
0001:23C6  2B D0                        sub dx, ax
0001:23C8  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23CE  74 08                        je 0x23d8
0001:23D0  26 03 87 94 00               add ax, word ptr es:[bx + 0x94]
0001:23D5  EB 06                        jmp 0x23dd
0001:23D8  26 03 87 76 00               add ax, word ptr es:[bx + 0x76]
0001:23DD  EB 38                        jmp 0x2417
0001:23DF  AC                           lodsb al, byte ptr [si]
0001:23E0  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:23E3  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:23E6  77 AB                        ja 0x2393
0001:23E8  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:23EB  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:23EE  74 A8                        je 0x2398
0001:23F0  32 E4                        xor ah, ah
0001:23F2  93                           xchg bx, ax
0001:23F3  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23F9  74 10                        je 0x240b
0001:23FB  D1 E3                        shl bx, 1
0001:23FD  8B C3                        mov ax, bx
0001:23FF  D1 E3                        shl bx, 1
0001:2401  03 D8                        add bx, ax
0001:2403  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:2408  EB 09                        jmp 0x2413
0001:240B  C1 E3 02                     shl bx, 2
0001:240E  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:2413  0B D2                        or dx, dx
0001:2415  75 A2                        jne 0x23b9
0001:2417  0B C0                        or ax, ax
0001:2419  74 6E                        je 0x2489
0001:241B  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2421  74 13                        je 0x2436
0001:2423  50                           push ax
0001:2424  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:2429  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:242F  66 03 D8                     add ebx, eax
0001:2432  58                           pop ax
0001:2433  EB 09                        jmp 0x243e
0001:2436  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:243B  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:243E  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2441  8B D7                        mov dx, di
0001:2443  80 E2 07                     and dl, 7
0001:2446  03 F8                        add di, ax
0001:2448  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:244B  7C 03                        jl 0x2450
0001:244D  E9 9F 00                     jmp 0x24ef
0001:2450  8A F2                        mov dh, dl
0001:2452  B2 08                        mov dl, 8
0001:2454  3D 08 00                     cmp ax, 8
0001:2457  76 1B                        jbe 0x2474
0001:2459  52                           push dx
0001:245A  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2460  74 05                        je 0x2467
0001:2462  66 53                        push ebx
0001:2464  EB 03                        jmp 0x2469
0001:2467  53                           push bx
0001:2468  53                           push bx
0001:2469  2D 08 00                     sub ax, 8
0001:246C  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:246F  3D 08 00                     cmp ax, 8
0001:2472  77 E5                        ja 0x2459
0001:2474  8A E6                        mov ah, dh
0001:2476  50                           push ax
0001:2477  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:247D  74 05                        je 0x2484
0001:247F  66 53                        push ebx
0001:2481  EB 03                        jmp 0x2486
0001:2484  53                           push bx
0001:2485  53                           push bx
0001:2486  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:2488  C8 0B D2 74                  enter -0x2df5, 0x74
0001:2489  0B D2                        or dx, dx
0001:248B  74 52                        je 0x24df
0001:248C  52                           push dx
0001:248D  92                           xchg dx, ax
0001:248E  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2494  74 07                        je 0x249d
0001:2496  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:249A  EB 04                        jmp 0x24a0
0001:249D  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:24A0  8B D7                        mov dx, di
0001:24A2  80 E2 07                     and dl, 7
0001:24A5  03 F8                        add di, ax
0001:24A7  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:24AA  7D 55                        jge 0x2501
0001:24AC  8A F2                        mov dh, dl
0001:24AE  B2 08                        mov dl, 8
0001:24B0  3D 08 00                     cmp ax, 8
0001:24B3  76 18                        jbe 0x24cd
0001:24B5  52                           push dx
0001:24B6  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24BC  74 05                        je 0x24c3
0001:24BE  66 53                        push ebx
0001:24C0  EB 03                        jmp 0x24c5
0001:24C3  53                           push bx
0001:24C4  53                           push bx
0001:24C5  2D 08 00                     sub ax, 8
0001:24C8  3D 08 00                     cmp ax, 8
0001:24CB  77 E8                        ja 0x24b5
0001:24CD  8A E6                        mov ah, dh
0001:24CF  50                           push ax
0001:24D0  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24D6  74 05                        je 0x24dd
0001:24D8  66 53                        push ebx
0001:24DA  EB 03                        jmp 0x24df
0001:24DD  53                           push bx
0001:24DE  53                           push bx
0001:24DF  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:24E2  7C 2B                        jl 0x250f
0001:24E4  49                           dec cx
0001:24E5  7E 03                        jle 0x24ea
0001:24E7  E9 F5 FE                     jmp 0x23df
0001:24EA  8B C7                        mov ax, di
0001:24EC  E9 3B FB                     jmp 0x202a
0001:24EF  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:24F2  2B F9                        sub di, cx
0001:24F4  2B C7                        sub ax, di
0001:24F6  8B F9                        mov di, cx
0001:24F8  33 C9                        xor cx, cx
0001:24FA  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:24FD  41                           inc cx
0001:24FE  E9 4F FF                     jmp 0x2450
0001:2501  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:2504  2B F9                        sub di, cx
0001:2506  2B C7                        sub ax, di
0001:2508  8B F9                        mov di, cx
0001:250A  B9 01 00                     mov cx, 1
0001:250D  EB 9D                        jmp 0x24ac
0001:250F  49                           dec cx
0001:2510  8B C7                        mov ax, di
0001:2512  E9 15 FB                     jmp 0x202a

; FUNCTION 0001:24FC (230 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2393  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2396  EB 50                        jmp 0x23e8
0001:2398  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:239B  80 E3 0C                     and bl, 0xc
0001:239E  74 50                        je 0x23f0
0001:23A0  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:23A3  F6 C3 04                     test bl, 4
0001:23A6  74 48                        je 0x23f0
0001:23A8  8B 5E EE                     mov bx, word ptr [bp - 0x12]
0001:23AB  2B 5E EA                     sub bx, word ptr [bp - 0x16]
0001:23AE  7F 04                        jg 0x23b4
0001:23B0  03 5E EC                     add bx, word ptr [bp - 0x14]
0001:23B3  42                           inc dx
0001:23B4  89 5E EE                     mov word ptr [bp - 0x12], bx
0001:23B7  EB 37                        jmp 0x23f0
0001:23B9  F7 D8                        neg ax
0001:23BB  25 07 00                     and ax, 7
0001:23BE  74 08                        je 0x23c8
0001:23C0  3B C2                        cmp ax, dx
0001:23C2  7C 02                        jl 0x23c6
0001:23C4  8B C2                        mov ax, dx
0001:23C6  2B D0                        sub dx, ax
0001:23C8  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23CE  74 08                        je 0x23d8
0001:23D0  26 03 87 94 00               add ax, word ptr es:[bx + 0x94]
0001:23D5  EB 06                        jmp 0x23dd
0001:23D8  26 03 87 76 00               add ax, word ptr es:[bx + 0x76]
0001:23DD  EB 38                        jmp 0x2417
0001:23DF  AC                           lodsb al, byte ptr [si]
0001:23E0  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:23E3  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:23E6  77 AB                        ja 0x2393
0001:23E8  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:23EB  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:23EE  74 A8                        je 0x2398
0001:23F0  32 E4                        xor ah, ah
0001:23F2  93                           xchg bx, ax
0001:23F3  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:23F9  74 10                        je 0x240b
0001:23FB  D1 E3                        shl bx, 1
0001:23FD  8B C3                        mov ax, bx
0001:23FF  D1 E3                        shl bx, 1
0001:2401  03 D8                        add bx, ax
0001:2403  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:2408  EB 09                        jmp 0x2413
0001:240B  C1 E3 02                     shl bx, 2
0001:240E  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:2413  0B D2                        or dx, dx
0001:2415  75 A2                        jne 0x23b9
0001:2417  0B C0                        or ax, ax
0001:2419  74 6E                        je 0x2489
0001:241B  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2421  74 13                        je 0x2436
0001:2423  50                           push ax
0001:2424  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:2429  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:242F  66 03 D8                     add ebx, eax
0001:2432  58                           pop ax
0001:2433  EB 09                        jmp 0x243e
0001:2436  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:243B  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:243E  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2441  8B D7                        mov dx, di
0001:2443  80 E2 07                     and dl, 7
0001:2446  03 F8                        add di, ax
0001:2448  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:244B  7C 03                        jl 0x2450
0001:244D  E9 9F 00                     jmp 0x24ef
0001:2450  8A F2                        mov dh, dl
0001:2452  B2 08                        mov dl, 8
0001:2454  3D 08 00                     cmp ax, 8
0001:2457  76 1B                        jbe 0x2474
0001:2459  52                           push dx
0001:245A  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2460  74 05                        je 0x2467
0001:2462  66 53                        push ebx
0001:2464  EB 03                        jmp 0x2469
0001:2467  53                           push bx
0001:2468  53                           push bx
0001:2469  2D 08 00                     sub ax, 8
0001:246C  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:246F  3D 08 00                     cmp ax, 8
0001:2472  77 E5                        ja 0x2459
0001:2474  8A E6                        mov ah, dh
0001:2476  50                           push ax
0001:2477  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:247D  74 05                        je 0x2484
0001:247F  66 53                        push ebx
0001:2481  EB 03                        jmp 0x2486
0001:2484  53                           push bx
0001:2485  53                           push bx
0001:2486  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:2489  0B D2                        or dx, dx
0001:248B  74 52                        je 0x24df
0001:248D  92                           xchg dx, ax
0001:248E  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2494  74 07                        je 0x249d
0001:2496  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:249A  EB 04                        jmp 0x24a0
0001:249D  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:24A0  8B D7                        mov dx, di
0001:24A2  80 E2 07                     and dl, 7
0001:24A5  03 F8                        add di, ax
0001:24A7  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:24AA  7D 55                        jge 0x2501
0001:24AC  8A F2                        mov dh, dl
0001:24AE  B2 08                        mov dl, 8
0001:24B0  3D 08 00                     cmp ax, 8
0001:24B3  76 18                        jbe 0x24cd
0001:24B5  52                           push dx
0001:24B6  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24BC  74 05                        je 0x24c3
0001:24BE  66 53                        push ebx
0001:24C0  EB 03                        jmp 0x24c5
0001:24C3  53                           push bx
0001:24C4  53                           push bx
0001:24C5  2D 08 00                     sub ax, 8
0001:24C8  3D 08 00                     cmp ax, 8
0001:24CB  77 E8                        ja 0x24b5
0001:24CD  8A E6                        mov ah, dh
0001:24CF  50                           push ax
0001:24D0  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:24D6  74 05                        je 0x24dd
0001:24D8  66 53                        push ebx
0001:24DA  EB 03                        jmp 0x24df
0001:24DD  53                           push bx
0001:24DE  53                           push bx
0001:24DF  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:24E2  7C 2B                        jl 0x250f
0001:24E4  49                           dec cx
0001:24E5  7E 03                        jle 0x24ea
0001:24E7  E9 F5 FE                     jmp 0x23df
0001:24EA  8B C7                        mov ax, di
0001:24EC  E9 3B FB                     jmp 0x202a
0001:24EF  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:24F2  2B F9                        sub di, cx
0001:24F4  2B C7                        sub ax, di
0001:24F6  8B F9                        mov di, cx
0001:24F8  33 C9                        xor cx, cx
0001:24FA  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:24FC  C8 41 E9 4F                  enter -0x16bf, 0x4f
0001:24FD  41                           inc cx
0001:24FE  E9 4F FF                     jmp 0x2450
0001:2500  FF 8B 4E 8C                  dec word ptr [bp + di - 0x73b2]
0001:2501  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:2504  2B F9                        sub di, cx
0001:2506  2B C7                        sub ax, di
0001:2508  8B F9                        mov di, cx
0001:250A  B9 01 00                     mov cx, 1
0001:250D  EB 9D                        jmp 0x24ac
0001:250F  49                           dec cx
0001:2510  8B C7                        mov ax, di
0001:2512  E9 15 FB                     jmp 0x202a

; FUNCTION 0001:2708 (276 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2641  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2644  EB 3C                        jmp 0x2682
0001:2646  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2649  80 E3 0C                     and bl, 0xc
0001:264C  74 3C                        je 0x268a
0001:264E  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:2651  F6 C3 04                     test bl, 4
0001:2654  74 34                        je 0x268a
0001:2656  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:2659  0B DB                        or bx, bx
0001:265B  7C 0E                        jl 0x266b
0001:265D  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:2660  7F 28                        jg 0x268a
0001:2662  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2665  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2668  42                           inc dx
0001:2669  EB 1F                        jmp 0x268a
0001:266B  01 5E EE                     add word ptr [bp - 0x12], bx
0001:266E  7F 1A                        jg 0x268a
0001:2670  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2673  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2676  4A                           dec dx
0001:2677  EB 11                        jmp 0x268a
0001:2679  AC                           lodsb al, byte ptr [si]
0001:267A  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:267D  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:2680  77 BF                        ja 0x2641
0001:2682  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:2685  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:2688  74 BC                        je 0x2646
0001:268A  32 E4                        xor ah, ah
0001:268C  93                           xchg bx, ax
0001:268D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2693  74 20                        je 0x26b5
0001:2695  D1 E3                        shl bx, 1
0001:2697  8B C3                        mov ax, bx
0001:2699  D1 E3                        shl bx, 1
0001:269B  03 D8                        add bx, ax
0001:269D  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:26A2  50                           push ax
0001:26A3  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:26A8  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:26AE  66 03 D8                     add ebx, eax
0001:26B1  58                           pop ax
0001:26B2  EB 11                        jmp 0x26c5
0001:26B5  C1 E3 02                     shl bx, 2
0001:26B8  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:26BD  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:26C2  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:26C5  53                           push bx
0001:26C6  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:26CA  74 10                        je 0x26dc
0001:26CC  C4 5E 0C                     les bx, ptr [bp + 0xc]
0001:26CF  26 03 17                     add dx, word ptr es:[bx]
0001:26D2  43                           inc bx
0001:26D3  43                           inc bx
0001:26D4  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:26D7  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:26DA  2B D0                        sub dx, ax
0001:26DC  0B D2                        or dx, dx
0001:26DE  7D 08                        jge 0x26e8
0001:26E0  03 D0                        add dx, ax
0001:26E2  1B DB                        sbb bx, bx
0001:26E4  23 D3                        and dx, bx
0001:26E6  2B D0                        sub dx, ax
0001:26E8  5B                           pop bx
0001:26E9  0B C0                        or ax, ax
0001:26EB  74 6E                        je 0x275b
0001:26ED  0B D2                        or dx, dx
0001:26EF  7E 15                        jle 0x2706
0001:26F1  53                           push bx
0001:26F2  8B D8                        mov bx, ax
0001:26F4  F7 D8                        neg ax
0001:26F6  25 07 00                     and ax, 7
0001:26F9  74 08                        je 0x2703
0001:26FB  3B C2                        cmp ax, dx
0001:26FD  7C 02                        jl 0x2701
0001:26FF  8B C2                        mov ax, dx
0001:2701  2B D0                        sub dx, ax
0001:2703  03 C3                        add ax, bx
0001:2705  5B                           pop bx
0001:2706  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2708  C8 8B D7 80                  enter -0x2875, -0x80
0001:2709  8B D7                        mov dx, di
0001:270B  80 E2 07                     and dl, 7
0001:270C  E2 07                        loop 0x2715
0001:270E  03 F8                        add di, ax
0001:2710  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2713  7C 03                        jl 0x2718
0001:2715  E9 BC 00                     jmp 0x27d4
0001:2718  8A F2                        mov dh, dl
0001:271A  B2 08                        mov dl, 8
0001:271C  3D 08 00                     cmp ax, 8
0001:271F  76 25                        jbe 0x2746
0001:2721  52                           push dx
0001:2722  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2728  74 0F                        je 0x2739
0001:272A  66 53                        push ebx
0001:272C  50                           push ax
0001:272D  66 0F B7 46 92               movzx eax, word ptr [bp - 0x6e]
0001:2732  66 03 D8                     add ebx, eax
0001:2735  58                           pop ax
0001:2736  EB 06                        jmp 0x273e
0001:2739  53                           push bx
0001:273A  53                           push bx
0001:273B  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:273E  2D 08 00                     sub ax, 8
0001:2741  3D 08 00                     cmp ax, 8
0001:2744  77 DB                        ja 0x2721
0001:2746  8A E6                        mov ah, dh
0001:2748  50                           push ax
0001:2749  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:274F  74 05                        je 0x2756
0001:2751  66 53                        push ebx
0001:2753  EB 03                        jmp 0x2758
0001:2756  53                           push bx
0001:2757  53                           push bx
0001:2758  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:275B  92                           xchg dx, ax
0001:275C  0B C0                        or ax, ax
0001:275E  74 56                        je 0x27b6
0001:2760  7F 03                        jg 0x2765
0001:2762  E9 A6 00                     jmp 0x280b
0001:2765  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:276B  74 07                        je 0x2774
0001:276D  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:2771  EB 04                        jmp 0x2777
0001:2774  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:2777  8B D7                        mov dx, di
0001:2779  80 E2 07                     and dl, 7
0001:277C  03 F8                        add di, ax
0001:277E  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2781  7D 43                        jge 0x27c6
0001:2783  8A F2                        mov dh, dl
0001:2785  B2 08                        mov dl, 8
0001:2787  3D 08 00                     cmp ax, 8
0001:278A  76 18                        jbe 0x27a4
0001:278C  52                           push dx
0001:278D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2793  74 05                        je 0x279a
0001:2795  66 53                        push ebx
0001:2797  EB 03                        jmp 0x279c
0001:279A  53                           push bx
0001:279B  53                           push bx
0001:279C  2D 08 00                     sub ax, 8
0001:279F  3D 08 00                     cmp ax, 8
0001:27A2  77 E8                        ja 0x278c
0001:27A4  8A E6                        mov ah, dh
0001:27A6  50                           push ax
0001:27A7  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:27AD  74 05                        je 0x27b4
0001:27AF  66 53                        push ebx
0001:27B1  EB 03                        jmp 0x27b6
0001:27B4  53                           push bx
0001:27B5  53                           push bx
0001:27B6  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:27B9  72 56                        jb 0x2811
0001:27BB  49                           dec cx
0001:27BC  7E 03                        jle 0x27c1
0001:27BE  E9 B8 FE                     jmp 0x2679
0001:27C1  8B C7                        mov ax, di
0001:27C3  E9 64 F8                     jmp 0x202a
0001:27C6  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27C9  2B F9                        sub di, cx
0001:27CB  2B C7                        sub ax, di
0001:27CD  8B F9                        mov di, cx
0001:27CF  B9 01 00                     mov cx, 1
0001:27D2  EB AF                        jmp 0x2783
0001:27D4  52                           push dx
0001:27D5  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:27D8  0B D2                        or dx, dx
0001:27DA  7C 13                        jl 0x27ef
0001:27DC  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27DF  2B F9                        sub di, cx
0001:27E1  2B C7                        sub ax, di
0001:27E3  8B F9                        mov di, cx
0001:27E5  33 C9                        xor cx, cx
0001:27E7  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:27EA  41                           inc cx
0001:27EB  5A                           pop dx
0001:27EC  E9 29 FF                     jmp 0x2718
0001:27EF  83 F9 01                     cmp cx, 1
0001:27F2  7E E8                        jle 0x27dc
0001:27F4  03 D7                        add dx, di
0001:27F6  2B 56 8C                     sub dx, word ptr [bp - 0x74]
0001:27F9  7D E1                        jge 0x27dc
0001:27FB  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:27FE  8B 56 8C                     mov dx, word ptr [bp - 0x74]
0001:2801  2B FA                        sub di, dx
0001:2803  2B C7                        sub ax, di
0001:2805  8B FA                        mov di, dx
0001:2807  5A                           pop dx
0001:2808  E9 0D FF                     jmp 0x2718
0001:280B  03 C7                        add ax, di
0001:280D  49                           dec cx
0001:280E  E9 19 F8                     jmp 0x202a
0001:2811  8B C7                        mov ax, di
0001:2813  49                           dec cx
0001:2814  E9 13 F8                     jmp 0x202a

; FUNCTION 0001:275A (275 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2641  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2644  EB 3C                        jmp 0x2682
0001:2646  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2649  80 E3 0C                     and bl, 0xc
0001:264C  74 3C                        je 0x268a
0001:264E  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:2651  F6 C3 04                     test bl, 4
0001:2654  74 34                        je 0x268a
0001:2656  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:2659  0B DB                        or bx, bx
0001:265B  7C 0E                        jl 0x266b
0001:265D  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:2660  7F 28                        jg 0x268a
0001:2662  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2665  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2668  42                           inc dx
0001:2669  EB 1F                        jmp 0x268a
0001:266B  01 5E EE                     add word ptr [bp - 0x12], bx
0001:266E  7F 1A                        jg 0x268a
0001:2670  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2673  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2676  4A                           dec dx
0001:2677  EB 11                        jmp 0x268a
0001:2679  AC                           lodsb al, byte ptr [si]
0001:267A  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:267D  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:2680  77 BF                        ja 0x2641
0001:2682  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:2685  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:2688  74 BC                        je 0x2646
0001:268A  32 E4                        xor ah, ah
0001:268C  93                           xchg bx, ax
0001:268D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2693  74 20                        je 0x26b5
0001:2695  D1 E3                        shl bx, 1
0001:2697  8B C3                        mov ax, bx
0001:2699  D1 E3                        shl bx, 1
0001:269B  03 D8                        add bx, ax
0001:269D  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:26A2  50                           push ax
0001:26A3  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:26A8  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:26AE  66 03 D8                     add ebx, eax
0001:26B1  58                           pop ax
0001:26B2  EB 11                        jmp 0x26c5
0001:26B5  C1 E3 02                     shl bx, 2
0001:26B8  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:26BD  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:26C2  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:26C5  53                           push bx
0001:26C6  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:26CA  74 10                        je 0x26dc
0001:26CC  C4 5E 0C                     les bx, ptr [bp + 0xc]
0001:26CF  26 03 17                     add dx, word ptr es:[bx]
0001:26D2  43                           inc bx
0001:26D3  43                           inc bx
0001:26D4  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:26D7  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:26DA  2B D0                        sub dx, ax
0001:26DC  0B D2                        or dx, dx
0001:26DE  7D 08                        jge 0x26e8
0001:26E0  03 D0                        add dx, ax
0001:26E2  1B DB                        sbb bx, bx
0001:26E4  23 D3                        and dx, bx
0001:26E6  2B D0                        sub dx, ax
0001:26E8  5B                           pop bx
0001:26E9  0B C0                        or ax, ax
0001:26EB  74 6E                        je 0x275b
0001:26ED  0B D2                        or dx, dx
0001:26EF  7E 15                        jle 0x2706
0001:26F1  53                           push bx
0001:26F2  8B D8                        mov bx, ax
0001:26F4  F7 D8                        neg ax
0001:26F6  25 07 00                     and ax, 7
0001:26F9  74 08                        je 0x2703
0001:26FB  3B C2                        cmp ax, dx
0001:26FD  7C 02                        jl 0x2701
0001:26FF  8B C2                        mov ax, dx
0001:2701  2B D0                        sub dx, ax
0001:2703  03 C3                        add ax, bx
0001:2705  5B                           pop bx
0001:2706  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2709  8B D7                        mov dx, di
0001:270B  80 E2 07                     and dl, 7
0001:270E  03 F8                        add di, ax
0001:2710  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2713  7C 03                        jl 0x2718
0001:2715  E9 BC 00                     jmp 0x27d4
0001:2718  8A F2                        mov dh, dl
0001:271A  B2 08                        mov dl, 8
0001:271C  3D 08 00                     cmp ax, 8
0001:271F  76 25                        jbe 0x2746
0001:2721  52                           push dx
0001:2722  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2728  74 0F                        je 0x2739
0001:272A  66 53                        push ebx
0001:272C  50                           push ax
0001:272D  66 0F B7 46 92               movzx eax, word ptr [bp - 0x6e]
0001:2732  66 03 D8                     add ebx, eax
0001:2735  58                           pop ax
0001:2736  EB 06                        jmp 0x273e
0001:2739  53                           push bx
0001:273A  53                           push bx
0001:273B  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:273E  2D 08 00                     sub ax, 8
0001:2741  3D 08 00                     cmp ax, 8
0001:2744  77 DB                        ja 0x2721
0001:2746  8A E6                        mov ah, dh
0001:2748  50                           push ax
0001:2749  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:274F  74 05                        je 0x2756
0001:2751  66 53                        push ebx
0001:2753  EB 03                        jmp 0x2758
0001:2756  53                           push bx
0001:2757  53                           push bx
0001:2758  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:275A  C8 92 0B C0                  enter 0xb92, -0x40
0001:275B  92                           xchg dx, ax
0001:275C  0B C0                        or ax, ax
0001:275E  74 56                        je 0x27b6
0001:2760  7F 03                        jg 0x2765
0001:2762  E9 A6 00                     jmp 0x280b
0001:2765  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:276B  74 07                        je 0x2774
0001:276D  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:2771  EB 04                        jmp 0x2777
0001:2774  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:2777  8B D7                        mov dx, di
0001:2779  80 E2 07                     and dl, 7
0001:277C  03 F8                        add di, ax
0001:277E  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2781  7D 43                        jge 0x27c6
0001:2783  8A F2                        mov dh, dl
0001:2785  B2 08                        mov dl, 8
0001:2787  3D 08 00                     cmp ax, 8
0001:278A  76 18                        jbe 0x27a4
0001:278C  52                           push dx
0001:278D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2793  74 05                        je 0x279a
0001:2795  66 53                        push ebx
0001:2797  EB 03                        jmp 0x279c
0001:279A  53                           push bx
0001:279B  53                           push bx
0001:279C  2D 08 00                     sub ax, 8
0001:279F  3D 08 00                     cmp ax, 8
0001:27A2  77 E8                        ja 0x278c
0001:27A4  8A E6                        mov ah, dh
0001:27A6  50                           push ax
0001:27A7  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:27AD  74 05                        je 0x27b4
0001:27AF  66 53                        push ebx
0001:27B1  EB 03                        jmp 0x27b6
0001:27B4  53                           push bx
0001:27B5  53                           push bx
0001:27B6  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:27B9  72 56                        jb 0x2811
0001:27BB  49                           dec cx
0001:27BC  7E 03                        jle 0x27c1
0001:27BE  E9 B8 FE                     jmp 0x2679
0001:27C1  8B C7                        mov ax, di
0001:27C3  E9 64 F8                     jmp 0x202a
0001:27C6  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27C9  2B F9                        sub di, cx
0001:27CB  2B C7                        sub ax, di
0001:27CD  8B F9                        mov di, cx
0001:27CF  B9 01 00                     mov cx, 1
0001:27D2  EB AF                        jmp 0x2783
0001:27D4  52                           push dx
0001:27D5  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:27D8  0B D2                        or dx, dx
0001:27DA  7C 13                        jl 0x27ef
0001:27DC  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27DF  2B F9                        sub di, cx
0001:27E1  2B C7                        sub ax, di
0001:27E3  8B F9                        mov di, cx
0001:27E5  33 C9                        xor cx, cx
0001:27E7  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:27EA  41                           inc cx
0001:27EB  5A                           pop dx
0001:27EC  E9 29 FF                     jmp 0x2718
0001:27EF  83 F9 01                     cmp cx, 1
0001:27F2  7E E8                        jle 0x27dc
0001:27F4  03 D7                        add dx, di
0001:27F6  2B 56 8C                     sub dx, word ptr [bp - 0x74]
0001:27F9  7D E1                        jge 0x27dc
0001:27FB  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:27FE  8B 56 8C                     mov dx, word ptr [bp - 0x74]
0001:2801  2B FA                        sub di, dx
0001:2803  2B C7                        sub ax, di
0001:2805  8B FA                        mov di, dx
0001:2807  5A                           pop dx
0001:2808  E9 0D FF                     jmp 0x2718
0001:280B  03 C7                        add ax, di
0001:280D  49                           dec cx
0001:280E  E9 19 F8                     jmp 0x202a
0001:2811  8B C7                        mov ax, di
0001:2813  49                           dec cx
0001:2814  E9 13 F8                     jmp 0x202a

; FUNCTION 0001:27D7 (276 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2641  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2644  EB 3C                        jmp 0x2682
0001:2646  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2649  80 E3 0C                     and bl, 0xc
0001:264C  74 3C                        je 0x268a
0001:264E  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:2651  F6 C3 04                     test bl, 4
0001:2654  74 34                        je 0x268a
0001:2656  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:2659  0B DB                        or bx, bx
0001:265B  7C 0E                        jl 0x266b
0001:265D  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:2660  7F 28                        jg 0x268a
0001:2662  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2665  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2668  42                           inc dx
0001:2669  EB 1F                        jmp 0x268a
0001:266B  01 5E EE                     add word ptr [bp - 0x12], bx
0001:266E  7F 1A                        jg 0x268a
0001:2670  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2673  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2676  4A                           dec dx
0001:2677  EB 11                        jmp 0x268a
0001:2679  AC                           lodsb al, byte ptr [si]
0001:267A  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:267D  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:2680  77 BF                        ja 0x2641
0001:2682  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:2685  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:2688  74 BC                        je 0x2646
0001:268A  32 E4                        xor ah, ah
0001:268C  93                           xchg bx, ax
0001:268D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2693  74 20                        je 0x26b5
0001:2695  D1 E3                        shl bx, 1
0001:2697  8B C3                        mov ax, bx
0001:2699  D1 E3                        shl bx, 1
0001:269B  03 D8                        add bx, ax
0001:269D  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:26A2  50                           push ax
0001:26A3  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:26A8  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:26AE  66 03 D8                     add ebx, eax
0001:26B1  58                           pop ax
0001:26B2  EB 11                        jmp 0x26c5
0001:26B5  C1 E3 02                     shl bx, 2
0001:26B8  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:26BD  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:26C2  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:26C5  53                           push bx
0001:26C6  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:26CA  74 10                        je 0x26dc
0001:26CC  C4 5E 0C                     les bx, ptr [bp + 0xc]
0001:26CF  26 03 17                     add dx, word ptr es:[bx]
0001:26D2  43                           inc bx
0001:26D3  43                           inc bx
0001:26D4  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:26D7  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:26DA  2B D0                        sub dx, ax
0001:26DC  0B D2                        or dx, dx
0001:26DE  7D 08                        jge 0x26e8
0001:26E0  03 D0                        add dx, ax
0001:26E2  1B DB                        sbb bx, bx
0001:26E4  23 D3                        and dx, bx
0001:26E6  2B D0                        sub dx, ax
0001:26E8  5B                           pop bx
0001:26E9  0B C0                        or ax, ax
0001:26EB  74 6E                        je 0x275b
0001:26ED  0B D2                        or dx, dx
0001:26EF  7E 15                        jle 0x2706
0001:26F1  53                           push bx
0001:26F2  8B D8                        mov bx, ax
0001:26F4  F7 D8                        neg ax
0001:26F6  25 07 00                     and ax, 7
0001:26F9  74 08                        je 0x2703
0001:26FB  3B C2                        cmp ax, dx
0001:26FD  7C 02                        jl 0x2701
0001:26FF  8B C2                        mov ax, dx
0001:2701  2B D0                        sub dx, ax
0001:2703  03 C3                        add ax, bx
0001:2705  5B                           pop bx
0001:2706  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2709  8B D7                        mov dx, di
0001:270B  80 E2 07                     and dl, 7
0001:270E  03 F8                        add di, ax
0001:2710  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2713  7C 03                        jl 0x2718
0001:2715  E9 BC 00                     jmp 0x27d4
0001:2718  8A F2                        mov dh, dl
0001:271A  B2 08                        mov dl, 8
0001:271C  3D 08 00                     cmp ax, 8
0001:271F  76 25                        jbe 0x2746
0001:2721  52                           push dx
0001:2722  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2728  74 0F                        je 0x2739
0001:272A  66 53                        push ebx
0001:272C  50                           push ax
0001:272D  66 0F B7 46 92               movzx eax, word ptr [bp - 0x6e]
0001:2732  66 03 D8                     add ebx, eax
0001:2735  58                           pop ax
0001:2736  EB 06                        jmp 0x273e
0001:2739  53                           push bx
0001:273A  53                           push bx
0001:273B  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:273E  2D 08 00                     sub ax, 8
0001:2741  3D 08 00                     cmp ax, 8
0001:2744  77 DB                        ja 0x2721
0001:2746  8A E6                        mov ah, dh
0001:2748  50                           push ax
0001:2749  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:274F  74 05                        je 0x2756
0001:2751  66 53                        push ebx
0001:2753  EB 03                        jmp 0x2758
0001:2756  53                           push bx
0001:2757  53                           push bx
0001:2758  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:275B  92                           xchg dx, ax
0001:275C  0B C0                        or ax, ax
0001:275E  74 56                        je 0x27b6
0001:2760  7F 03                        jg 0x2765
0001:2762  E9 A6 00                     jmp 0x280b
0001:2765  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:276B  74 07                        je 0x2774
0001:276D  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:2771  EB 04                        jmp 0x2777
0001:2774  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:2777  8B D7                        mov dx, di
0001:2779  80 E2 07                     and dl, 7
0001:277C  03 F8                        add di, ax
0001:277E  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2781  7D 43                        jge 0x27c6
0001:2783  8A F2                        mov dh, dl
0001:2785  B2 08                        mov dl, 8
0001:2787  3D 08 00                     cmp ax, 8
0001:278A  76 18                        jbe 0x27a4
0001:278C  52                           push dx
0001:278D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2793  74 05                        je 0x279a
0001:2795  66 53                        push ebx
0001:2797  EB 03                        jmp 0x279c
0001:279A  53                           push bx
0001:279B  53                           push bx
0001:279C  2D 08 00                     sub ax, 8
0001:279F  3D 08 00                     cmp ax, 8
0001:27A2  77 E8                        ja 0x278c
0001:27A4  8A E6                        mov ah, dh
0001:27A6  50                           push ax
0001:27A7  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:27AD  74 05                        je 0x27b4
0001:27AF  66 53                        push ebx
0001:27B1  EB 03                        jmp 0x27b6
0001:27B4  53                           push bx
0001:27B5  53                           push bx
0001:27B6  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:27B9  72 56                        jb 0x2811
0001:27BB  49                           dec cx
0001:27BC  7E 03                        jle 0x27c1
0001:27BE  E9 B8 FE                     jmp 0x2679
0001:27C1  8B C7                        mov ax, di
0001:27C3  E9 64 F8                     jmp 0x202a
0001:27C6  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27C9  2B F9                        sub di, cx
0001:27CB  2B C7                        sub ax, di
0001:27CD  8B F9                        mov di, cx
0001:27CF  B9 01 00                     mov cx, 1
0001:27D2  EB AF                        jmp 0x2783
0001:27D4  52                           push dx
0001:27D5  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:27D7  C8 0B D2 7C                  enter -0x2df5, 0x7c
0001:27D8  0B D2                        or dx, dx
0001:27DA  7C 13                        jl 0x27ef
0001:27DB  13 8B 4E 8C                  adc cx, word ptr [bp + di - 0x73b2]
0001:27DC  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27DF  2B F9                        sub di, cx
0001:27E1  2B C7                        sub ax, di
0001:27E3  8B F9                        mov di, cx
0001:27E5  33 C9                        xor cx, cx
0001:27E7  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:27EA  41                           inc cx
0001:27EB  5A                           pop dx
0001:27EC  E9 29 FF                     jmp 0x2718
0001:27EF  83 F9 01                     cmp cx, 1
0001:27F2  7E E8                        jle 0x27dc
0001:27F4  03 D7                        add dx, di
0001:27F6  2B 56 8C                     sub dx, word ptr [bp - 0x74]
0001:27F9  7D E1                        jge 0x27dc
0001:27FB  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:27FE  8B 56 8C                     mov dx, word ptr [bp - 0x74]
0001:2801  2B FA                        sub di, dx
0001:2803  2B C7                        sub ax, di
0001:2805  8B FA                        mov di, dx
0001:2807  5A                           pop dx
0001:2808  E9 0D FF                     jmp 0x2718
0001:280B  03 C7                        add ax, di
0001:280D  49                           dec cx
0001:280E  E9 19 F8                     jmp 0x202a
0001:2811  8B C7                        mov ax, di
0001:2813  49                           dec cx
0001:2814  E9 13 F8                     jmp 0x202a

; FUNCTION 0001:27E9 (276 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2641  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2644  EB 3C                        jmp 0x2682
0001:2646  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2649  80 E3 0C                     and bl, 0xc
0001:264C  74 3C                        je 0x268a
0001:264E  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:2651  F6 C3 04                     test bl, 4
0001:2654  74 34                        je 0x268a
0001:2656  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:2659  0B DB                        or bx, bx
0001:265B  7C 0E                        jl 0x266b
0001:265D  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:2660  7F 28                        jg 0x268a
0001:2662  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2665  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2668  42                           inc dx
0001:2669  EB 1F                        jmp 0x268a
0001:266B  01 5E EE                     add word ptr [bp - 0x12], bx
0001:266E  7F 1A                        jg 0x268a
0001:2670  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2673  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2676  4A                           dec dx
0001:2677  EB 11                        jmp 0x268a
0001:2679  AC                           lodsb al, byte ptr [si]
0001:267A  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:267D  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:2680  77 BF                        ja 0x2641
0001:2682  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:2685  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:2688  74 BC                        je 0x2646
0001:268A  32 E4                        xor ah, ah
0001:268C  93                           xchg bx, ax
0001:268D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2693  74 20                        je 0x26b5
0001:2695  D1 E3                        shl bx, 1
0001:2697  8B C3                        mov ax, bx
0001:2699  D1 E3                        shl bx, 1
0001:269B  03 D8                        add bx, ax
0001:269D  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:26A2  50                           push ax
0001:26A3  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:26A8  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:26AE  66 03 D8                     add ebx, eax
0001:26B1  58                           pop ax
0001:26B2  EB 11                        jmp 0x26c5
0001:26B5  C1 E3 02                     shl bx, 2
0001:26B8  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:26BD  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:26C2  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:26C5  53                           push bx
0001:26C6  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:26CA  74 10                        je 0x26dc
0001:26CC  C4 5E 0C                     les bx, ptr [bp + 0xc]
0001:26CF  26 03 17                     add dx, word ptr es:[bx]
0001:26D2  43                           inc bx
0001:26D3  43                           inc bx
0001:26D4  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:26D7  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:26DA  2B D0                        sub dx, ax
0001:26DC  0B D2                        or dx, dx
0001:26DE  7D 08                        jge 0x26e8
0001:26E0  03 D0                        add dx, ax
0001:26E2  1B DB                        sbb bx, bx
0001:26E4  23 D3                        and dx, bx
0001:26E6  2B D0                        sub dx, ax
0001:26E8  5B                           pop bx
0001:26E9  0B C0                        or ax, ax
0001:26EB  74 6E                        je 0x275b
0001:26ED  0B D2                        or dx, dx
0001:26EF  7E 15                        jle 0x2706
0001:26F1  53                           push bx
0001:26F2  8B D8                        mov bx, ax
0001:26F4  F7 D8                        neg ax
0001:26F6  25 07 00                     and ax, 7
0001:26F9  74 08                        je 0x2703
0001:26FB  3B C2                        cmp ax, dx
0001:26FD  7C 02                        jl 0x2701
0001:26FF  8B C2                        mov ax, dx
0001:2701  2B D0                        sub dx, ax
0001:2703  03 C3                        add ax, bx
0001:2705  5B                           pop bx
0001:2706  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2709  8B D7                        mov dx, di
0001:270B  80 E2 07                     and dl, 7
0001:270E  03 F8                        add di, ax
0001:2710  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2713  7C 03                        jl 0x2718
0001:2715  E9 BC 00                     jmp 0x27d4
0001:2718  8A F2                        mov dh, dl
0001:271A  B2 08                        mov dl, 8
0001:271C  3D 08 00                     cmp ax, 8
0001:271F  76 25                        jbe 0x2746
0001:2721  52                           push dx
0001:2722  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2728  74 0F                        je 0x2739
0001:272A  66 53                        push ebx
0001:272C  50                           push ax
0001:272D  66 0F B7 46 92               movzx eax, word ptr [bp - 0x6e]
0001:2732  66 03 D8                     add ebx, eax
0001:2735  58                           pop ax
0001:2736  EB 06                        jmp 0x273e
0001:2739  53                           push bx
0001:273A  53                           push bx
0001:273B  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:273E  2D 08 00                     sub ax, 8
0001:2741  3D 08 00                     cmp ax, 8
0001:2744  77 DB                        ja 0x2721
0001:2746  8A E6                        mov ah, dh
0001:2748  50                           push ax
0001:2749  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:274F  74 05                        je 0x2756
0001:2751  66 53                        push ebx
0001:2753  EB 03                        jmp 0x2758
0001:2756  53                           push bx
0001:2757  53                           push bx
0001:2758  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:275B  92                           xchg dx, ax
0001:275C  0B C0                        or ax, ax
0001:275E  74 56                        je 0x27b6
0001:2760  7F 03                        jg 0x2765
0001:2762  E9 A6 00                     jmp 0x280b
0001:2765  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:276B  74 07                        je 0x2774
0001:276D  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:2771  EB 04                        jmp 0x2777
0001:2774  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:2777  8B D7                        mov dx, di
0001:2779  80 E2 07                     and dl, 7
0001:277C  03 F8                        add di, ax
0001:277E  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2781  7D 43                        jge 0x27c6
0001:2783  8A F2                        mov dh, dl
0001:2785  B2 08                        mov dl, 8
0001:2787  3D 08 00                     cmp ax, 8
0001:278A  76 18                        jbe 0x27a4
0001:278C  52                           push dx
0001:278D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2793  74 05                        je 0x279a
0001:2795  66 53                        push ebx
0001:2797  EB 03                        jmp 0x279c
0001:279A  53                           push bx
0001:279B  53                           push bx
0001:279C  2D 08 00                     sub ax, 8
0001:279F  3D 08 00                     cmp ax, 8
0001:27A2  77 E8                        ja 0x278c
0001:27A4  8A E6                        mov ah, dh
0001:27A6  50                           push ax
0001:27A7  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:27AD  74 05                        je 0x27b4
0001:27AF  66 53                        push ebx
0001:27B1  EB 03                        jmp 0x27b6
0001:27B4  53                           push bx
0001:27B5  53                           push bx
0001:27B6  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:27B9  72 56                        jb 0x2811
0001:27BB  49                           dec cx
0001:27BC  7E 03                        jle 0x27c1
0001:27BE  E9 B8 FE                     jmp 0x2679
0001:27C1  8B C7                        mov ax, di
0001:27C3  E9 64 F8                     jmp 0x202a
0001:27C6  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27C9  2B F9                        sub di, cx
0001:27CB  2B C7                        sub ax, di
0001:27CD  8B F9                        mov di, cx
0001:27CF  B9 01 00                     mov cx, 1
0001:27D2  EB AF                        jmp 0x2783
0001:27D4  52                           push dx
0001:27D5  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:27D8  0B D2                        or dx, dx
0001:27DA  7C 13                        jl 0x27ef
0001:27DC  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27DF  2B F9                        sub di, cx
0001:27E1  2B C7                        sub ax, di
0001:27E3  8B F9                        mov di, cx
0001:27E5  33 C9                        xor cx, cx
0001:27E7  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:27E9  C8 41 5A E9                  enter 0x5a41, -0x17
0001:27EA  41                           inc cx
0001:27EB  5A                           pop dx
0001:27EC  E9 29 FF                     jmp 0x2718
0001:27ED  29 FF                        sub di, di
0001:27EF  83 F9 01                     cmp cx, 1
0001:27F2  7E E8                        jle 0x27dc
0001:27F4  03 D7                        add dx, di
0001:27F6  2B 56 8C                     sub dx, word ptr [bp - 0x74]
0001:27F9  7D E1                        jge 0x27dc
0001:27FB  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:27FE  8B 56 8C                     mov dx, word ptr [bp - 0x74]
0001:2801  2B FA                        sub di, dx
0001:2803  2B C7                        sub ax, di
0001:2805  8B FA                        mov di, dx
0001:2807  5A                           pop dx
0001:2808  E9 0D FF                     jmp 0x2718
0001:280B  03 C7                        add ax, di
0001:280D  49                           dec cx
0001:280E  E9 19 F8                     jmp 0x202a
0001:2811  8B C7                        mov ax, di
0001:2813  49                           dec cx
0001:2814  E9 13 F8                     jmp 0x202a

; FUNCTION 0001:27FD (275 instructions)
0001:200B  89 66 C6                     mov word ptr [bp - 0x3a], sp
0001:200E  8B C4                        mov ax, sp
0001:2010  48                           dec ax
0001:2011  48                           dec ax
0001:2012  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2015  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:2018  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:201B  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:201E  8A 66 F9                     mov ah, byte ptr [bp - 7]
0001:2021  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2024  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:2027  FF 66 C2                     jmp word ptr [bp - 0x3e]
0001:202A  89 4E 1C                     mov word ptr [bp + 0x1c], cx
0001:202D  89 46 28                     mov word ptr [bp + 0x28], ax
0001:2030  89 76 1E                     mov word ptr [bp + 0x1e], si
0001:2033  E8 1E 08                     call 0x2854
0001:2036  89 7E B4                     mov word ptr [bp - 0x4c], di
0001:2039  8B DF                        mov bx, di
0001:203B  8B 56 B6                     mov dx, word ptr [bp - 0x4a]
0001:203E  E8 5F FD                     call 0x1da0
0001:2041  72 74                        jb 0x20b7
0001:2043  88 46 FB                     mov byte ptr [bp - 5], al
0001:2046  88 66 FA                     mov byte ptr [bp - 6], ah
0001:2049  89 76 B8                     mov word ptr [bp - 0x48], si
0001:204C  89 7E D6                     mov word ptr [bp - 0x2a], di
0001:204F  E8 3B 08                     call 0x288d
0001:2052  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:2055  80 4E F8 02                  or byte ptr [bp - 8], 2
0001:2059  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:205D  74 22                        je 0x2081
0001:205F  8B 46 B6                     mov ax, word ptr [bp - 0x4a]
0001:2062  8B 5E 80                     mov bx, word ptr [bp - 0x80]
0001:2065  2B C3                        sub ax, bx
0001:2067  99                           cdq
0001:2068  23 C2                        and ax, dx
0001:206A  03 C3                        add ax, bx
0001:206C  89 46 80                     mov word ptr [bp - 0x80], ax
0001:206F  8B 46 B4                     mov ax, word ptr [bp - 0x4c]
0001:2072  8B 5E 84                     mov bx, word ptr [bp - 0x7c]
0001:2075  2B C3                        sub ax, bx
0001:2077  99                           cdq
0001:2078  F7 D2                        not dx
0001:207A  23 C2                        and ax, dx
0001:207C  03 C3                        add ax, bx
0001:207E  89 46 84                     mov word ptr [bp - 0x7c], ax
0001:2081  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2084  E3 34                        jcxz 0x20ba
0001:2086  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2089  80 E3 6F                     and bl, 0x6f
0001:208C  8B 7E 28                     mov di, word ptr [bp + 0x28]
0001:208F  8B C7                        mov ax, di
0001:2091  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:2095  75 05                        jne 0x209c
0001:2097  3B 7E 88                     cmp di, word ptr [bp - 0x78]
0001:209A  7D 12                        jge 0x20ae
0001:209C  80 CB 80                     or bl, 0x80
0001:209F  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:20A2  2B C7                        sub ax, di
0001:20A4  99                           cdq
0001:20A5  F7 D2                        not dx
0001:20A7  23 C2                        and ax, dx
0001:20A9  03 C7                        add ax, di
0001:20AB  89 46 88                     mov word ptr [bp - 0x78], ax
0001:20AE  88 5E F8                     mov byte ptr [bp - 8], bl
0001:20B1  89 46 B6                     mov word ptr [bp - 0x4a], ax
0001:20B4  E9 54 FF                     jmp 0x200b
0001:20B7  8B 66 C6                     mov sp, word ptr [bp - 0x3a]
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2641  8A 46 98                     mov al, byte ptr [bp - 0x68]
0001:2644  EB 3C                        jmp 0x2682
0001:2646  8A 5E F9                     mov bl, byte ptr [bp - 7]
0001:2649  80 E3 0C                     and bl, 0xc
0001:264C  74 3C                        je 0x268a
0001:264E  03 56 F0                     add dx, word ptr [bp - 0x10]
0001:2651  F6 C3 04                     test bl, 4
0001:2654  74 34                        je 0x268a
0001:2656  8B 5E EA                     mov bx, word ptr [bp - 0x16]
0001:2659  0B DB                        or bx, bx
0001:265B  7C 0E                        jl 0x266b
0001:265D  29 5E EE                     sub word ptr [bp - 0x12], bx
0001:2660  7F 28                        jg 0x268a
0001:2662  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2665  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2668  42                           inc dx
0001:2669  EB 1F                        jmp 0x268a
0001:266B  01 5E EE                     add word ptr [bp - 0x12], bx
0001:266E  7F 1A                        jg 0x268a
0001:2670  8B 5E EC                     mov bx, word ptr [bp - 0x14]
0001:2673  01 5E EE                     add word ptr [bp - 0x12], bx
0001:2676  4A                           dec dx
0001:2677  EB 11                        jmp 0x268a
0001:2679  AC                           lodsb al, byte ptr [si]
0001:267A  2A 46 96                     sub al, byte ptr [bp - 0x6a]
0001:267D  3A 46 97                     cmp al, byte ptr [bp - 0x69]
0001:2680  77 BF                        ja 0x2641
0001:2682  8B 56 F2                     mov dx, word ptr [bp - 0xe]
0001:2685  3A 46 99                     cmp al, byte ptr [bp - 0x67]
0001:2688  74 BC                        je 0x2646
0001:268A  32 E4                        xor ah, ah
0001:268C  93                           xchg bx, ax
0001:268D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2693  74 20                        je 0x26b5
0001:2695  D1 E3                        shl bx, 1
0001:2697  8B C3                        mov ax, bx
0001:2699  D1 E3                        shl bx, 1
0001:269B  03 D8                        add bx, ax
0001:269D  26 8B 87 94 00               mov ax, word ptr es:[bx + 0x94]
0001:26A2  50                           push ax
0001:26A3  66 0F B7 46 D2               movzx eax, word ptr [bp - 0x2e]
0001:26A8  26 66 8B 9F 96 00            mov ebx, dword ptr es:[bx + 0x96]
0001:26AE  66 03 D8                     add ebx, eax
0001:26B1  58                           pop ax
0001:26B2  EB 11                        jmp 0x26c5
0001:26B5  C1 E3 02                     shl bx, 2
0001:26B8  26 8B 87 76 00               mov ax, word ptr es:[bx + 0x76]
0001:26BD  26 8B 9F 78 00               mov bx, word ptr es:[bx + 0x78]
0001:26C2  03 5E D2                     add bx, word ptr [bp - 0x2e]
0001:26C5  53                           push bx
0001:26C6  F6 46 F9 20                  test byte ptr [bp - 7], 0x20
0001:26CA  74 10                        je 0x26dc
0001:26CC  C4 5E 0C                     les bx, ptr [bp + 0xc]
0001:26CF  26 03 17                     add dx, word ptr es:[bx]
0001:26D2  43                           inc bx
0001:26D3  43                           inc bx
0001:26D4  89 5E 0C                     mov word ptr [bp + 0xc], bx
0001:26D7  8E 46 1A                     mov es, word ptr [bp + 0x1a]
0001:26DA  2B D0                        sub dx, ax
0001:26DC  0B D2                        or dx, dx
0001:26DE  7D 08                        jge 0x26e8
0001:26E0  03 D0                        add dx, ax
0001:26E2  1B DB                        sbb bx, bx
0001:26E4  23 D3                        and dx, bx
0001:26E6  2B D0                        sub dx, ax
0001:26E8  5B                           pop bx
0001:26E9  0B C0                        or ax, ax
0001:26EB  74 6E                        je 0x275b
0001:26ED  0B D2                        or dx, dx
0001:26EF  7E 15                        jle 0x2706
0001:26F1  53                           push bx
0001:26F2  8B D8                        mov bx, ax
0001:26F4  F7 D8                        neg ax
0001:26F6  25 07 00                     and ax, 7
0001:26F9  74 08                        je 0x2703
0001:26FB  3B C2                        cmp ax, dx
0001:26FD  7C 02                        jl 0x2701
0001:26FF  8B C2                        mov ax, dx
0001:2701  2B D0                        sub dx, ax
0001:2703  03 C3                        add ax, bx
0001:2705  5B                           pop bx
0001:2706  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:2709  8B D7                        mov dx, di
0001:270B  80 E2 07                     and dl, 7
0001:270E  03 F8                        add di, ax
0001:2710  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2713  7C 03                        jl 0x2718
0001:2715  E9 BC 00                     jmp 0x27d4
0001:2718  8A F2                        mov dh, dl
0001:271A  B2 08                        mov dl, 8
0001:271C  3D 08 00                     cmp ax, 8
0001:271F  76 25                        jbe 0x2746
0001:2721  52                           push dx
0001:2722  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2728  74 0F                        je 0x2739
0001:272A  66 53                        push ebx
0001:272C  50                           push ax
0001:272D  66 0F B7 46 92               movzx eax, word ptr [bp - 0x6e]
0001:2732  66 03 D8                     add ebx, eax
0001:2735  58                           pop ax
0001:2736  EB 06                        jmp 0x273e
0001:2739  53                           push bx
0001:273A  53                           push bx
0001:273B  03 5E 92                     add bx, word ptr [bp - 0x6e]
0001:273E  2D 08 00                     sub ax, 8
0001:2741  3D 08 00                     cmp ax, 8
0001:2744  77 DB                        ja 0x2721
0001:2746  8A E6                        mov ah, dh
0001:2748  50                           push ax
0001:2749  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:274F  74 05                        je 0x2756
0001:2751  66 53                        push ebx
0001:2753  EB 03                        jmp 0x2758
0001:2756  53                           push bx
0001:2757  53                           push bx
0001:2758  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:275B  92                           xchg dx, ax
0001:275C  0B C0                        or ax, ax
0001:275E  74 56                        je 0x27b6
0001:2760  7F 03                        jg 0x2765
0001:2762  E9 A6 00                     jmp 0x280b
0001:2765  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:276B  74 07                        je 0x2774
0001:276D  66 8B 5E CA                  mov ebx, dword ptr [bp - 0x36]
0001:2771  EB 04                        jmp 0x2777
0001:2774  8B 5E CA                     mov bx, word ptr [bp - 0x36]
0001:2777  8B D7                        mov dx, di
0001:2779  80 E2 07                     and dl, 7
0001:277C  03 F8                        add di, ax
0001:277E  3B 7E 8C                     cmp di, word ptr [bp - 0x74]
0001:2781  7D 43                        jge 0x27c6
0001:2783  8A F2                        mov dh, dl
0001:2785  B2 08                        mov dl, 8
0001:2787  3D 08 00                     cmp ax, 8
0001:278A  76 18                        jbe 0x27a4
0001:278C  52                           push dx
0001:278D  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2793  74 05                        je 0x279a
0001:2795  66 53                        push ebx
0001:2797  EB 03                        jmp 0x279c
0001:279A  53                           push bx
0001:279B  53                           push bx
0001:279C  2D 08 00                     sub ax, 8
0001:279F  3D 08 00                     cmp ax, 8
0001:27A2  77 E8                        ja 0x278c
0001:27A4  8A E6                        mov ah, dh
0001:27A6  50                           push ax
0001:27A7  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:27AD  74 05                        je 0x27b4
0001:27AF  66 53                        push ebx
0001:27B1  EB 03                        jmp 0x27b6
0001:27B4  53                           push bx
0001:27B5  53                           push bx
0001:27B6  3B 66 C4                     cmp sp, word ptr [bp - 0x3c]
0001:27B9  72 56                        jb 0x2811
0001:27BB  49                           dec cx
0001:27BC  7E 03                        jle 0x27c1
0001:27BE  E9 B8 FE                     jmp 0x2679
0001:27C1  8B C7                        mov ax, di
0001:27C3  E9 64 F8                     jmp 0x202a
0001:27C6  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27C9  2B F9                        sub di, cx
0001:27CB  2B C7                        sub ax, di
0001:27CD  8B F9                        mov di, cx
0001:27CF  B9 01 00                     mov cx, 1
0001:27D2  EB AF                        jmp 0x2783
0001:27D4  52                           push dx
0001:27D5  8B 56 C8                     mov dx, word ptr [bp - 0x38]
0001:27D8  0B D2                        or dx, dx
0001:27DA  7C 13                        jl 0x27ef
0001:27DC  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0001:27DF  2B F9                        sub di, cx
0001:27E1  2B C7                        sub ax, di
0001:27E3  8B F9                        mov di, cx
0001:27E5  33 C9                        xor cx, cx
0001:27E7  89 4E C8                     mov word ptr [bp - 0x38], cx
0001:27EA  41                           inc cx
0001:27EB  5A                           pop dx
0001:27EC  E9 29 FF                     jmp 0x2718
0001:27EF  83 F9 01                     cmp cx, 1
0001:27F2  7E E8                        jle 0x27dc
0001:27F4  03 D7                        add dx, di
0001:27F6  2B 56 8C                     sub dx, word ptr [bp - 0x74]
0001:27F9  7D E1                        jge 0x27dc
0001:27FB  89 56 C8                     mov word ptr [bp - 0x38], dx
0001:27FD  C8 8B 56 8C                  enter 0x568b, -0x74
0001:27FE  8B 56 8C                     mov dx, word ptr [bp - 0x74]
0001:2801  2B FA                        sub di, dx
0001:2803  2B C7                        sub ax, di
0001:2805  8B FA                        mov di, dx
0001:2807  5A                           pop dx
0001:2808  E9 0D FF                     jmp 0x2718
0001:280B  03 C7                        add ax, di
0001:280D  49                           dec cx
0001:280E  E9 19 F8                     jmp 0x202a
0001:2811  8B C7                        mov ax, di
0001:2813  49                           dec cx
0001:2814  E9 13 F8                     jmp 0x202a

; FUNCTION 0001:2854 (27 instructions)
0001:2854  8B C7                        mov ax, di
0001:2856  24 07                        and al, 7
0001:2858  74 32                        je 0x288c
0001:285A  8A E0                        mov ah, al
0001:285C  F6 D8                        neg al
0001:285E  24 07                        and al, 7
0001:2860  5B                           pop bx
0001:2861  50                           push ax
0001:2862  FF 76 CC                     push word ptr [bp - 0x34]
0001:2865  FF 76 CA                     push word ptr [bp - 0x36]
0001:2868  53                           push bx
0001:2869  32 E4                        xor ah, ah
0001:286B  F6 46 F9 01                  test byte ptr [bp - 7], 1
0001:286F  74 19                        je 0x288a
0001:2871  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2874  F6 D3                        not bl
0001:2876  F6 C3 05                     test bl, 5
0001:2879  75 11                        jne 0x288c
0001:287B  8B 9E 7C FF                  mov bx, word ptr [bp - 0x84]
0001:287F  2B DF                        sub bx, di
0001:2881  7E 09                        jle 0x288c
0001:2883  2B C3                        sub ax, bx
0001:2885  99                           cdq
0001:2886  23 C2                        and ax, dx
0001:2888  03 C3                        add ax, bx
0001:288A  03 F8                        add di, ax
0001:288C  C3                           ret

; FUNCTION 0001:288D (124 instructions)
0001:288D  C4 7E DE                     les di, ptr [bp - 0x22]
0001:2890  8E 5E 9C                     mov ds, word ptr [bp - 0x64]
0001:2893  8B 46 82                     mov ax, word ptr [bp - 0x7e]
0001:2896  F7 66 E6                     mul word ptr [bp - 0x1a]
0001:2899  03 F8                        add di, ax
0001:289B  12 D6                        adc dl, dh
0001:289D  03 7E D6                     add di, word ptr [bp - 0x2a]
0001:28A0  12 D6                        adc dl, dh
0001:28A2  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:28A8  74 22                        je 0x28cc
0001:28AA  66 0F B7 C0                  movzx eax, ax
0001:28AE  66 0F B7 DB                  movzx ebx, bx
0001:28B2  66 0F B7 C9                  movzx ecx, cx
0001:28B6  66 0F B7 D2                  movzx edx, dx
0001:28BA  66 0F B7 F6                  movzx esi, si
0001:28BE  66 0F B7 FF                  movzx edi, di
0001:28C2  66 0F B7 ED                  movzx ebp, bp
0001:28C6  BB 66 2A                     mov bx, 0x2a66
0001:28C9  EB 04                        jmp 0x28cf
0001:28CC  BB C9 29                     mov bx, 0x29c9
0001:28CF  80 BE 62 FF 01               cmp byte ptr [bp - 0x9e], 1
0001:28D4  74 02                        je 0x28d8
0001:28D6  FF E3                        jmp bx
0001:28D8  8B 5E BA                     mov bx, word ptr [bp - 0x46]
0001:28DB  B2 FF                        mov dl, 0xff
0001:28DD  8A 46 FB                     mov al, byte ptr [bp - 5]
0001:28E0  0A C0                        or al, al
0001:28E2  74 08                        je 0x28ec
0001:28E4  FF 46 B8                     inc word ptr [bp - 0x48]
0001:28E7  8B 5E BC                     mov bx, word ptr [bp - 0x44]
0001:28EA  FE C2                        inc dl
0001:28EC  0A C2                        or al, dl
0001:28EE  36 A2 0A 00                  mov byte ptr ss:[0xa], al
0001:28F2  B0 10                        mov al, 0x10
0001:28F4  F6 46 F8 10                  test byte ptr [bp - 8], 0x10
0001:28F8  75 02                        jne 0x28fc
0001:28FA  B0 08                        mov al, 8
0001:28FC  33 F6                        xor si, si
0001:28FE  8B D5                        mov dx, bp
0001:2900  8B 6E CE                     mov bp, word ptr [bp - 0x32]
0001:2903  8B 4E 00                     mov cx, word ptr [bp]
0001:2906  02 E9                        add ch, cl
0001:2908  3A E8                        cmp ch, al
0001:290A  77 4F                        ja 0x295b
0001:290C  74 1E                        je 0x292c
0001:290E  46                           inc si
0001:290F  02 6E FA                     add ch, byte ptr [bp - 6]
0001:2912  3A E8                        cmp ch, al
0001:2914  77 45                        ja 0x295b
0001:2916  74 14                        je 0x292c
0001:2918  46                           inc si
0001:2919  02 6E F4                     add ch, byte ptr [bp - 0xc]
0001:291C  3A E8                        cmp ch, al
0001:291E  77 3B                        ja 0x295b
0001:2920  74 0A                        je 0x292c
0001:2922  46                           inc si
0001:2923  02 6E EE                     add ch, byte ptr [bp - 0x12]
0001:2926  3A E8                        cmp ch, al
0001:2928  72 5F                        jb 0x2989
0001:292A  77 2F                        ja 0x295b
0001:292C  8B CE                        mov cx, si
0001:292E  D1 E6                        shl si, 1
0001:2930  2E 8B 18                     mov bx, word ptr cs:[bx + si]
0001:2933  8B C6                        mov ax, si
0001:2935  D1 E6                        shl si, 1
0001:2937  03 F0                        add si, ax
0001:2939  F7 DE                        neg si
0001:293B  8D 42 FA                     lea ax, [bp + si - 6]
0001:293E  87 EA                        xchg dx, bp
0001:2940  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2943  8B 46 D4                     mov ax, word ptr [bp - 0x2c]
0001:2946  FF D3                        call bx
0001:2948  B0 08                        mov al, 8
0001:294A  8B 5E BA                     mov bx, word ptr [bp - 0x46]
0001:294D  36 C6 06 0A 00 FF            mov byte ptr ss:[0xa], 0xff
0001:2953  FF 4E B8                     dec word ptr [bp - 0x48]
0001:2956  7F A4                        jg 0x28fc
0001:2958  EB 58                        jmp 0x29b2
0001:295B  8B CE                        mov cx, si
0001:295D  D1 E6                        shl si, 1
0001:295F  2E 8B 18                     mov bx, word ptr cs:[bx + si]
0001:2962  8B C6                        mov ax, si
0001:2964  D1 E6                        shl si, 1
0001:2966  03 F0                        add si, ax
0001:2968  F7 DE                        neg si
0001:296A  8D 02                        lea ax, [bp + si]
0001:296C  87 EA                        xchg dx, bp
0001:296E  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:2971  8B 46 D4                     mov ax, word ptr [bp - 0x2c]
0001:2974  FF D3                        call bx
0001:2976  B0 10                        mov al, 0x10
0001:2978  8B 5E BA                     mov bx, word ptr [bp - 0x46]
0001:297B  36 C6 06 0A 00 FF            mov byte ptr ss:[0xa], 0xff
0001:2981  FF 4E B8                     dec word ptr [bp - 0x48]
0001:2984  7E 2C                        jle 0x29b2
0001:2986  E9 73 FF                     jmp 0x28fc
0001:2989  46                           inc si
0001:298A  02 6E E8                     add ch, byte ptr [bp - 0x18]
0001:298D  3A E8                        cmp ch, al
0001:298F  77 CA                        ja 0x295b
0001:2991  74 99                        je 0x292c
0001:2993  46                           inc si
0001:2994  02 6E E2                     add ch, byte ptr [bp - 0x1e]
0001:2997  3A E8                        cmp ch, al
0001:2999  77 C0                        ja 0x295b
0001:299B  74 8F                        je 0x292c
0001:299D  46                           inc si
0001:299E  02 6E DC                     add ch, byte ptr [bp - 0x24]
0001:29A1  3A E8                        cmp ch, al
0001:29A3  77 B6                        ja 0x295b
0001:29A5  74 85                        je 0x292c
0001:29A7  46                           inc si
0001:29A8  02 6E D6                     add ch, byte ptr [bp - 0x2a]
0001:29AB  3A E8                        cmp ch, al
0001:29AD  77 AC                        ja 0x295b
0001:29AF  E9 7A FF                     jmp 0x292c
0001:29B2  80 66 F8 DF                  and byte ptr [bp - 8], 0xdf
0001:29B6  33 C9                        xor cx, cx
0001:29B8  86 4E FA                     xchg byte ptr [bp - 6], cl
0001:29BB  E3 0B                        jcxz 0x29c8
0001:29BD  36 88 0E 0A 00               mov byte ptr ss:[0xa], cl
0001:29C2  8B 5E BC                     mov bx, word ptr [bp - 0x44]
0001:29C5  E9 34 FF                     jmp 0x28fc
0001:29C8  C3                           ret

; FUNCTION 0001:2B04 (63 instructions)
0001:20BA  8A 46 F7                     mov al, byte ptr [bp - 9]
0001:20BD  A8 02                        test al, 2
0001:20BF  74 0C                        je 0x20cd
0001:20C1  8B 5E B2                     mov bx, word ptr [bp - 0x4e]
0001:20C4  89 5E 80                     mov word ptr [bp - 0x80], bx
0001:20C7  8B 5E B0                     mov bx, word ptr [bp - 0x50]
0001:20CA  89 5E 84                     mov word ptr [bp - 0x7c], bx
0001:20CD  24 01                        and al, 1
0001:20CF  08 46 F9                     or byte ptr [bp - 7], al
0001:20D2  C3                           ret
0001:2B04  FF 76 EE                     push word ptr [bp - 0x12]
0001:2B07  FF 76 EC                     push word ptr [bp - 0x14]
0001:2B0A  FF 76 EA                     push word ptr [bp - 0x16]
0001:2B0D  FF 76 0C                     push word ptr [bp + 0xc]
0001:2B10  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:2B13  E8 C0 F1                     call 0x1cd6
0001:2B16  8F 46 0C                     pop word ptr [bp + 0xc]
0001:2B19  8F 46 EA                     pop word ptr [bp - 0x16]
0001:2B1C  8F 46 EC                     pop word ptr [bp - 0x14]
0001:2B1F  8F 46 EE                     pop word ptr [bp - 0x12]
0001:2B22  F6 46 F7 08                  test byte ptr [bp - 9], 8
0001:2B26  74 6D                        je 0x2b95
0001:2B28  8B 46 8C                     mov ax, word ptr [bp - 0x74]
0001:2B2B  8B 4E 28                     mov cx, word ptr [bp + 0x28]
0001:2B2E  03 D9                        add bx, cx
0001:2B30  70 07                        jo 0x2b39
0001:2B32  2B C3                        sub ax, bx
0001:2B34  99                           cdq
0001:2B35  23 C2                        and ax, dx
0001:2B37  03 C3                        add ax, bx
0001:2B39  93                           xchg bx, ax
0001:2B3A  8B 46 88                     mov ax, word ptr [bp - 0x78]
0001:2B3D  2B C1                        sub ax, cx
0001:2B3F  99                           cdq
0001:2B40  F7 D2                        not dx
0001:2B42  23 C2                        and ax, dx
0001:2B44  03 C1                        add ax, cx
0001:2B46  3B D8                        cmp bx, ax
0001:2B48  F9                           stc
0001:2B49  7E 4B                        jle 0x2b96
0001:2B4B  89 46 B2                     mov word ptr [bp - 0x4e], ax
0001:2B4E  89 5E B0                     mov word ptr [bp - 0x50], bx
0001:2B51  80 4E F7 02                  or byte ptr [bp - 9], 2
0001:2B55  FF B6 78 FF                  push word ptr [bp - 0x88]
0001:2B59  FF B6 7C FF                  push word ptr [bp - 0x84]
0001:2B5D  FF B6 7A FF                  push word ptr [bp - 0x86]
0001:2B61  FF B6 7E FF                  push word ptr [bp - 0x82]
0001:2B65  8B 4E 82                     mov cx, word ptr [bp - 0x7e]
0001:2B68  8B 56 86                     mov dx, word ptr [bp - 0x7a]
0001:2B6B  89 86 78 FF                  mov word ptr [bp - 0x88], ax
0001:2B6F  89 9E 7C FF                  mov word ptr [bp - 0x84], bx
0001:2B73  89 8E 7A FF                  mov word ptr [bp - 0x86], cx
0001:2B77  89 96 7E FF                  mov word ptr [bp - 0x82], dx
0001:2B7B  8A 5E F8                     mov bl, byte ptr [bp - 8]
0001:2B7E  E8 A4 F2                     call 0x1e25
0001:2B81  8F 86 7E FF                  pop word ptr [bp - 0x82]
0001:2B85  8F 86 7A FF                  pop word ptr [bp - 0x86]
0001:2B89  8F 86 7C FF                  pop word ptr [bp - 0x84]
0001:2B8D  8F 86 78 FF                  pop word ptr [bp - 0x88]
0001:2B91  80 66 F9 FE                  and byte ptr [bp - 7], 0xfe
0001:2B95  C3                           ret
0001:2B96  58                           pop ax
0001:2B97  E9 20 F5                     jmp 0x20ba

; FUNCTION 0001:2CDC (5 instructions)
0001:2CDC  F6 D0                        not al
0001:2CDE  AA                           stosb byte ptr es:[di], al
0001:2CDF  4F                           dec di
0001:2CE0  36 03 3E 02 00               add di, word ptr ss:[2]
0001:2CE5  C3                           ret

; FUNCTION 0001:2D72 (33 instructions)
0001:2D72  36 89 2E 0E 00               mov word ptr ss:[0xe], bp
0001:2D77  8B 4E E6                     mov cx, word ptr [bp - 0x1a]
0001:2D7A  36 89 0E 02 00               mov word ptr ss:[2], cx
0001:2D7F  8B 4E F4                     mov cx, word ptr [bp - 0xc]
0001:2D82  36 89 0E 0C 00               mov word ptr ss:[0xc], cx
0001:2D87  83 E3 01                     and bx, 1
0001:2D8A  D0 E9                        shr cl, 1
0001:2D8C  D0 D3                        rcl bl, 1
0001:2D8E  D0 ED                        shr ch, 1
0001:2D90  D0 D3                        rcl bl, 1
0001:2D92  80 E4 08                     and ah, 8
0001:2D95  0A DC                        or bl, ah
0001:2D97  D1 E3                        shl bx, 1
0001:2D99  2E 8B 87 7A 2C               mov ax, word ptr cs:[bx + 0x2c7a]
0001:2D9E  2E 8B 8F 7A 2C               mov cx, word ptr cs:[bx + 0x2c7a]
0001:2DA3  8B F0                        mov si, ax
0001:2DA5  8B F9                        mov di, cx
0001:2DA7  F6 C3 10                     test bl, 0x10
0001:2DAA  75 29                        jne 0x2dd5
0001:2DAC  2E 8B 87 9A 2C               mov ax, word ptr cs:[bx + 0x2c9a]
0001:2DB1  2E 8B 8F AA 2C               mov cx, word ptr cs:[bx + 0x2caa]
0001:2DB6  2E F6 06 30 18 FF            test byte ptr cs:[0x1830], 0xff
0001:2DBC  74 0D                        je 0x2dcb
0001:2DBE  2E 8B B7 2A 2C               mov si, word ptr cs:[bx + 0x2c2a]
0001:2DC3  2E 8B BF 0A 2C               mov di, word ptr cs:[bx + 0x2c0a]
0001:2DC8  EB 0B                        jmp 0x2dd5
0001:2DCB  2E 8B B7 BA 2B               mov si, word ptr cs:[bx + 0x2bba]
0001:2DD0  2E 8B BF 9A 2B               mov di, word ptr cs:[bx + 0x2b9a]
0001:2DD5  89 76 BA                     mov word ptr [bp - 0x46], si
0001:2DD8  89 7E BC                     mov word ptr [bp - 0x44], di
0001:2DDB  36 A3 04 00                  mov word ptr ss:[4], ax
0001:2DDF  36 89 0E 06 00               mov word ptr ss:[6], cx
0001:2DE4  C3                           ret

; FUNCTION 0001:34D2 (59 instructions)
0001:34D2  C8 32 E4 D0                  enter -0x1bce, -0x30
0001:34D6  E8 03 F8                     call 0x2cdc
0001:34D9  AC                           lodsb al, byte ptr [si]
0001:34DA  D2 E0                        shl al, cl
0001:34DC  D0 C0                        rol al, 1
0001:34DE  1B C0                        sbb ax, ax
0001:34E0  F6 D4                        not ah
0001:34E2  23 C2                        and ax, dx
0001:34E4  0A C4                        or al, ah
0001:34E6  C0 E0 04                     shl al, 4
0001:34E9  26 8A 25                     mov ah, byte ptr es:[di]
0001:34EC  80 E4 0F                     and ah, 0xf
0001:34EF  0A C4                        or al, ah
0001:34F1  26 88 05                     mov byte ptr es:[di], al
0001:34F4  36 03 3E 08 00               add di, word ptr ss:[8]
0001:34F9  4D                           dec bp
0001:34FA  75 DD                        jne 0x34d9
0001:34FC  5D                           pop bp
0001:34FD  59                           pop cx
0001:34FE  5F                           pop di
0001:34FF  5E                           pop si
0001:3500  FE CB                        dec bl
0001:3502  74 3F                        je 0x3543
0001:3504  0A DB                        or bl, bl
0001:3506  74 3B                        je 0x3543
0001:3508  57                           push di
0001:3509  57                           push di
0001:350A  53                           push bx
0001:350B  AC                           lodsb al, byte ptr [si]
0001:350C  D2 E0                        shl al, cl
0001:350E  8A E8                        mov ch, al
0001:3510  D0 C5                        rol ch, 1
0001:3512  1B C0                        sbb ax, ax
0001:3514  F6 D4                        not ah
0001:3516  23 C2                        and ax, dx
0001:3518  0A C4                        or al, ah
0001:351A  8A F8                        mov bh, al
0001:351C  C0 E7 04                     shl bh, 4
0001:351F  D0 C5                        rol ch, 1
0001:3521  1B C0                        sbb ax, ax
0001:3523  F6 D4                        not ah
0001:3525  23 C2                        and ax, dx
0001:3527  0A C4                        or al, ah
0001:3529  0A C7                        or al, bh
0001:352B  AA                           stosb byte ptr es:[di], al
0001:352C  FE CB                        dec bl
0001:352E  FE CB                        dec bl
0001:3530  7F DE                        jg 0x3510
0001:3532  5B                           pop bx
0001:3533  5F                           pop di
0001:3534  36 03 3E 08 00               add di, word ptr ss:[8]
0001:3539  4D                           dec bp
0001:353A  75 CD                        jne 0x3509
0001:353C  5F                           pop di
0001:353D  32 FF                        xor bh, bh
0001:353F  D0 EB                        shr bl, 1
0001:3541  03 FB                        add di, bx
0001:3543  59                           pop cx
0001:3544  C3                           ret

; FUNCTION 0001:3648 (442 instructions)
0001:35A5  FF 03                        inc word ptr [bp + di]
0001:35A7  FB                           sti
0001:35A8  C3                           ret
0001:35BF  FC                           cld
0001:35C0  07                           pop es
0001:35C1  F8                           clc
0001:35C5  E0 3F                        loopne 0x3606
0001:35C7  C0 7F 80 08                  sar byte ptr [bx - 0x80], 8
0001:35CB  01 23                        add word ptr [bp + di], sp
0001:35CD  ED                           in ax, dx
0001:35CE  13 71 13                     adc si, word ptr [bx + di + 0x13]
0001:35D1  E1 21                        loope 0x35f4
0001:35D3  F1                           int1
0001:35D4  1C CD                        sbb al, 0xcd
0001:35D6  A5                           movsw word ptr es:[di], word ptr [si]
0001:35D7  F2 17                        pop ss
0001:35D9  ED                           in ax, dx
0001:35DA  0E                           push cs
0001:35DB  F1                           int1
0001:35DC  12 EE                        adc ch, dh
0001:35DE  0A 51 7A                     or dl, byte ptr [bx + di + 0x7a]
0001:35E1  F5                           cmc
0001:35E2  11 E9                        adc cx, bp
0001:35E4  15 F1 1E                     adc ax, 0x1ef1
0001:35E7  F1                           int1
0001:35E8  0A C1                        or al, cl
0001:35EA  25 71 25                     and ax, 0x2571
0001:35EB  71 25                        jno 0x3612
0001:35ED  A5                           movsw word ptr es:[di], word ptr [si]
0001:35EE  2C F5                        sub al, 0xf5
0001:35F0  D3 F1                        sal cx, cl
0001:35F2  74 F7                        je 0x35eb
0001:35F4  58                           pop ax
0001:35F5  ED                           in ax, dx
0001:35F6  42                           inc dx
0001:35F7  7D 35                        jge 0x362e
0001:35F9  FD                           std
0001:35FA  A0 75 42                     mov al, byte ptr [0x4275]
0001:35FD  F9                           stc
0001:35FE  58                           pop ax
0001:35FF  71 5F                        jno 0x3660
0001:3601  F5                           cmc
0001:3602  D3 75 68                     sal word ptr [di + 0x68], cl
0001:3605  F9                           stc
0001:3606  5A                           pop dx
0001:3607  6D                           insw word ptr es:[di], dx
0001:3608  AD                           lodsw ax, word ptr [si]
0001:3609  F1                           int1
0001:360A  73 71                        jae 0x367d
0001:360B  71 B8                        jno 0x35c5
0001:360C  B8 F1 46                     mov ax, 0x46f1
0001:360D  F1                           int1
0001:360E  46                           inc si
0001:360F  2D 83 F5                     sub ax, 0xf583
0001:3612  37                           aaa
0001:3613  75 4F                        jne 0x3664
0001:3615  F5                           cmc
0001:3616  93                           xchg bx, ax
0001:3617  75 8C                        jne 0x35a5
0001:3619  F1                           int1
0001:361A  61                           popaw
0001:361B  6D                           insw word ptr es:[di], dx
0001:361C  93                           xchg bx, ax
0001:361D  F9                           stc
0001:361E  4F                           dec di
0001:361F  71 9E                        jno 0x35bf
0001:3621  FD                           std
0001:3622  AB                           stosw word ptr es:[di], ax
0001:3623  79 51                        jns 0x3676
0001:3625  F1                           int1
0001:3626  B8 75 C1                     mov ax, 0xc175
0001:3629  F5                           cmc
0001:362A  73 69                        jae 0x3695
0001:362C  CA F5 DC                     retf 0xdcf5
0001:362D  F5                           cmc
0001:362E  DC 75 00                     fdiv qword ptr [di]
0001:3631  A0 E5 75                     mov al, byte ptr [0x75e5]
0001:3634  EE                           out dx, al
0001:3635  F5                           cmc
0001:3636  F7 71 FE                     div word ptr [bx + di - 2]
0001:3639  F1                           int1
0001:3648  C8 E1 64 F2                  enter 0x64e1, -0xe
0001:364A  64 F2 83 EE 38               sub si, 0x38
0001:364C  83 EE 38                     sub si, 0x38
0001:364F  77 3A                        ja 0x368b
0001:3651  FA                           cli
0001:3652  66 AE                        scasb al, byte ptr es:[di]
0001:365E  5B                           pop bx
0001:365F  76 66                        jbe 0x36c7
0001:3660  66 72 6D                     jb 0x36d0
0001:3661  72 6D                        jb 0x36d0
0001:3663  76 76                        jbe 0x36db
0001:3664  76 FE                        jbe 0x3664
0001:3665  FE 83 72 76                  inc byte ptr [bp + di + 0x7672]
0001:3666  83 72 76 F7                  xor word ptr [bp + si + 0x76], 0xfff7
0001:3669  F7 8A 52 D0 F6 91            test word ptr [bp + si - 0x2fae], 0x91f6
0001:366A  8A 52 D0                     mov dl, byte ptr [bp + si - 0x30]
0001:366D  F6 91 76 9A                  not byte ptr [bx + di - 0x658a]
0001:366F  76 9A                        jbe 0x360b
0001:3671  F6 01 F3                     test byte ptr [bx + di], 0xf3
0001:3674  8A 86 B3 6E                  mov al, byte ptr [bp + 0x6eb3]
0001:3676  B3 6E                        mov bl, 0x6e
0001:3678  AA                           stosb byte ptr es:[di], al
0001:3679  EE                           out dx, al
0001:367A  AA                           stosb byte ptr es:[di], al
0001:367B  72 B1                        jb 0x362e
0001:367D  72 A3                        jb 0x3622
0001:367E  A3 4E BC                     mov word ptr [0xbc4e], ax
0001:367F  4E                           dec si
0001:3680  BC 7A C7                     mov sp, 0xc77a
0001:3681  7A C7                        jp 0x364a
0001:3683  76 A8                        jbe 0x362d
0001:3685  F2 D0 7A DB                  sar byte ptr [bp + si - 0x25], 1
0001:3689  CE                           into
0001:368A  9C                           pushf
0001:368B  6E                           outsb dx, byte ptr [si]
0001:368C  E0 FE                        loopne 0x368c
0001:368E  1E                           push ds
0001:368F  7B ED                        jnp 0x367e
0001:3691  76 0C                        jbe 0x369f
0001:3693  77 F6                        ja 0x368b
0001:3695  F2 FA                        cli
0001:369F  6E                           outsb dx, byte ptr [si]
0001:36A0  0C FB                        or al, 0xfb
0001:36A2  17                           pop ss
0001:36A3  73 1E                        jae 0x36c3
0001:36A5  FF 2B                        ljmp [bp + di]
0001:36A7  7B B5                        jnp 0x365e
0001:36A9  F2 3C 72                     cmp al, 0x72
0001:36AC  36 FF 43 77                  inc word ptr ss:[bp + di + 0x77]
0001:36B0  4C                           dec sp
0001:36B1  F7 55 7B                     not word ptr [di + 0x7b]
0001:36B4  6B F7 60                     imul si, di, 0x60
0001:36B7  7B 3C                        jnp 0x36f5
0001:36B9  A6                           cmpsb byte ptr [si], byte ptr es:[di]
0001:36BA  AC                           lodsb al, byte ptr [si]
0001:36BB  6E                           outsb dx, byte ptr [si]
0001:36BC  AB                           stosw word ptr es:[di], ax
0001:36BD  FD                           std
0001:36BE  6B 7B 81 F7                  imul di, word ptr [bp + di - 0x7f], -9
0001:36C2  76 7B                        jbe 0x373f
0001:36C3  7B 2D                        jnp 0x36f2
0001:36C4  2D F6 78                     sub ax, 0x78f6
0001:36C5  F6 78 76                     idiv byte ptr [bx + si + 0x76]
0001:36C7  76 75                        jbe 0x373e
0001:36C8  75 ED                        jne 0x36b7
0001:36C9  ED                           in ax, dx
0001:36CA  02 03                        add al, byte ptr [bp + di]
0001:36CC  04 05                        add al, 5
0001:36CE  07                           pop es
0001:36CF  09 0B                        or word ptr [bp + di], cx
0001:36D0  0B 0D                        or cx, word ptr [di]
0001:36D1  0D 32 C0                     or ax, 0xc032
0001:36D2  32 C0                        xor al, al
0001:36D4  8A C6                        mov al, dh
0001:36D6  F6 D0                        not al
0001:36D8  26 22 05                     and al, byte ptr es:[di]
0001:36DB  F6 D0                        not al
0001:36DD  0A C6                        or al, dh
0001:36DF  F6 D0                        not al
0001:36E1  26 22 05                     and al, byte ptr es:[di]
0001:36E4  0A C6                        or al, dh
0001:36E6  8A C6                        mov al, dh
0001:36E8  26 0A 05                     or al, byte ptr es:[di]
0001:36EB  F6 D0                        not al
0001:36ED  0A C6                        or al, dh
0001:36EF  26 0A 05                     or al, byte ptr es:[di]
0001:36F2  F6 D0                        not al
0001:36F4  22 C6                        and al, dh
0001:36F6  26 8A 25                     mov ah, byte ptr es:[di]
0001:36F9  32 E6                        xor ah, dh
0001:36FB  F6 D4                        not ah
0001:36FD  0A C4                        or al, ah
0001:36FF  8A D0                        mov dl, al
0001:3701  8A E6                        mov ah, dh
0001:3703  32 E0                        xor ah, al
0001:3705  26 32 05                     xor al, byte ptr es:[di]
0001:3708  22 C4                        and al, ah
0001:370A  32 C2                        xor al, dl
0001:370C  8A D0                        mov dl, al
0001:370E  22 C6                        and al, dh
0001:3710  F6 D0                        not al
0001:3712  26 22 05                     and al, byte ptr es:[di]
0001:3715  32 C2                        xor al, dl
0001:3717  32 C6                        xor al, dh
0001:3719  22 C6                        and al, dh
0001:371B  F6 D0                        not al
0001:371D  26 22 05                     and al, byte ptr es:[di]
0001:3720  32 C6                        xor al, dh
0001:3722  22 C6                        and al, dh
0001:3724  26 0A 05                     or al, byte ptr es:[di]
0001:3727  32 C6                        xor al, dh
0001:3729  8A D0                        mov dl, al
0001:372B  32 C6                        xor al, dh
0001:372D  26 22 05                     and al, byte ptr es:[di]
0001:3730  32 C2                        xor al, dl
0001:3732  26 8A 25                     mov ah, byte ptr es:[di]
0001:3735  8A D4                        mov dl, ah
0001:3737  32 D6                        xor dl, dh
0001:3739  22 C2                        and al, dl
0001:373B  32 C4                        xor al, ah
0001:373D  F6 D0                        not al
0001:373E  D0 22                        shl byte ptr [bp + si], 1
0001:373F  22 C6                        and al, dh
0001:3741  26 22 05                     and al, byte ptr es:[di]
0001:3744  26 8A 25                     mov ah, byte ptr es:[di]
0001:3747  F6 D4                        not ah
0001:3749  22 C4                        and al, ah
0001:374B  0A C6                        or al, dh
0001:374D  26 8A 25                     mov ah, byte ptr es:[di]
0001:3750  F6 D4                        not ah
0001:3752  22 E6                        and ah, dh
0001:3754  0A C4                        or al, ah
0001:3756  32 C6                        xor al, dh
0001:3758  26 22 05                     and al, byte ptr es:[di]
0001:375B  32 C6                        xor al, dh
0001:375D  8A D0                        mov dl, al
0001:375F  22 C6                        and al, dh
0001:3761  26 0A 05                     or al, byte ptr es:[di]
0001:3764  32 C2                        xor al, dl
0001:3766  32 C6                        xor al, dh
0001:3768  8A D0                        mov dl, al
0001:376A  26 8A 25                     mov ah, byte ptr es:[di]
0001:376D  32 E6                        xor ah, dh
0001:376F  32 C6                        xor al, dh
0001:3771  22 C4                        and al, ah
0001:3773  32 C2                        xor al, dl
0001:3775  8A D0                        mov dl, al
0001:3777  26 8A 25                     mov ah, byte ptr es:[di]
0001:377A  0A C4                        or al, ah
0001:377C  22 C6                        and al, dh
0001:377E  32 C2                        xor al, dl
0001:3780  32 C4                        xor al, ah
0001:3782  26 8A 25                     mov ah, byte ptr es:[di]
0001:3785  32 E6                        xor ah, dh
0001:3787  0A C4                        or al, ah
0001:3789  32 C6                        xor al, dh
0001:378B  26 8A 25                     mov ah, byte ptr es:[di]
0001:378E  F6 D4                        not ah
0001:3790  0A C4                        or al, ah
0001:3792  22 C6                        and al, dh
0001:3794  8A E6                        mov ah, dh
0001:3796  F6 D4                        not ah
0001:3798  26 22 25                     and ah, byte ptr es:[di]
0001:379B  0A C4                        or al, ah
0001:379D  26 8A 25                     mov ah, byte ptr es:[di]
0001:37A0  22 E6                        and ah, dh
0001:37A2  0A C4                        or al, ah
0001:37A4  32 C6                        xor al, dh
0001:37A6  8A D0                        mov dl, al
0001:37A8  0A C6                        or al, dh
0001:37AA  26 0A 05                     or al, byte ptr es:[di]
0001:37AD  32 C2                        xor al, dl
0001:37AF  8A D0                        mov dl, al
0001:37B1  26 22 05                     and al, byte ptr es:[di]
0001:37B4  0A C6                        or al, dh
0001:37B6  32 C2                        xor al, dl
0001:37B8  26 8A 25                     mov ah, byte ptr es:[di]
0001:37BB  32 C4                        xor al, ah
0001:37BD  22 C6                        and al, dh
0001:37BF  32 C4                        xor al, ah
0001:37C1  26 8A 25                     mov ah, byte ptr es:[di]
0001:37C4  0A E6                        or ah, dh
0001:37C6  32 C4                        xor al, ah
0001:37C8  26 8A 25                     mov ah, byte ptr es:[di]
0001:37CB  0A E6                        or ah, dh
0001:37CD  22 C4                        and al, ah
0001:37CF  32 C6                        xor al, dh
0001:37D1  26 8A 25                     mov ah, byte ptr es:[di]
0001:37D4  F6 D4                        not ah
0001:37D6  0A E6                        or ah, dh
0001:37D8  32 C4                        xor al, ah
0001:37DA  8A D0                        mov dl, al
0001:37DC  26 32 05                     xor al, byte ptr es:[di]
0001:37DF  0A C6                        or al, dh
0001:37E1  32 C2                        xor al, dl
0001:37E3  26 8A 25                     mov ah, byte ptr es:[di]
0001:37E6  F6 D4                        not ah
0001:37E8  0A E6                        or ah, dh
0001:37EA  22 C4                        and al, ah
0001:37EC  8A D0                        mov dl, al
0001:37EE  26 0A 05                     or al, byte ptr es:[di]
0001:37F1  F6 D0                        not al
0001:37F3  0A C6                        or al, dh
0001:37F5  32 C2                        xor al, dl
0001:37F7  32 C6                        xor al, dh
0001:37F9  8A D0                        mov dl, al
0001:37FB  F6 D0                        not al
0001:37FD  26 22 05                     and al, byte ptr es:[di]
0001:3800  0A C6                        or al, dh
0001:3802  32 C2                        xor al, dl
0001:3804  8A D0                        mov dl, al
0001:3806  26 22 05                     and al, byte ptr es:[di]
0001:3809  F6 D0                        not al
0001:380B  22 C6                        and al, dh
0001:380D  32 C2                        xor al, dl
0001:380F  26 8A 25                     mov ah, byte ptr es:[di]
0001:3812  32 E6                        xor ah, dh
0001:3814  22 C4                        and al, ah
0001:3816  32 C6                        xor al, dh
0001:3818  26 8A 25                     mov ah, byte ptr es:[di]
0001:381B  8A D4                        mov dl, ah
0001:381D  22 D6                        and dl, dh
0001:381F  0A C2                        or al, dl
0001:3821  32 C4                        xor al, ah
0001:3823  32 C6                        xor al, dh
0001:3825  26 8A 25                     mov ah, byte ptr es:[di]
0001:3828  0A C4                        or al, ah
0001:382A  22 C6                        and al, dh
0001:382C  32 C4                        xor al, ah
0001:382E  22 C6                        and al, dh
0001:3830  F6 D0                        not al
0001:3832  26 0A 05                     or al, byte ptr es:[di]
0001:3835  32 C6                        xor al, dh
0001:3837  26 8A 25                     mov ah, byte ptr es:[di]
0001:383A  22 E6                        and ah, dh
0001:383C  F6 D4                        not ah
0001:383E  22 C4                        and al, ah
0001:3840  8A D0                        mov dl, al
0001:3842  8A E0                        mov ah, al
0001:3844  32 E6                        xor ah, dh
0001:3846  26 32 05                     xor al, byte ptr es:[di]
0001:3849  0A C4                        or al, ah
0001:384B  32 C2                        xor al, dl
0001:384D  32 C6                        xor al, dh
0001:384F  26 0A 05                     or al, byte ptr es:[di]
0001:3852  32 C6                        xor al, dh
0001:3854  26 8A 05                     mov al, byte ptr es:[di]
0001:3857  F6 D0                        not al
0001:3859  22 C6                        and al, dh
0001:385B  26 8A 25                     mov ah, byte ptr es:[di]
0001:385E  22 C4                        and al, ah
0001:3860  0A C6                        or al, dh
0001:3862  32 C4                        xor al, ah
0001:3864  8A D0                        mov dl, al
0001:3866  26 32 05                     xor al, byte ptr es:[di]
0001:3869  22 C6                        and al, dh
0001:386B  32 C2                        xor al, dl
0001:386D  8A C6                        mov al, dh
0001:386F  26 32 05                     xor al, byte ptr es:[di]
0001:3872  F6 D0                        not al
0001:3874  0A C6                        or al, dh
0001:3876  26 22 05                     and al, byte ptr es:[di]
0001:3879  32 C6                        xor al, dh
0001:387B  F6 D0                        not al
0001:387D  0A C6                        or al, dh
0001:387F  26 32 05                     xor al, byte ptr es:[di]
0001:3882  F6 D0                        not al
0001:3884  22 C6                        and al, dh
0001:3886  26 8A 25                     mov ah, byte ptr es:[di]
0001:3889  0A C4                        or al, ah
0001:388B  F6 D0                        not al
0001:388D  0A C6                        or al, dh
0001:388F  32 C4                        xor al, ah
0001:3891  26 8A 25                     mov ah, byte ptr es:[di]
0001:3894  32 C4                        xor al, ah
0001:3896  0A C6                        or al, dh
0001:3898  32 C4                        xor al, ah
0001:389A  8A E6                        mov ah, dh
0001:389C  F6 D4                        not ah
0001:389E  22 C4                        and al, ah
0001:38A0  26 0A 05                     or al, byte ptr es:[di]
0001:38A3  32 C6                        xor al, dh
0001:38A5  8A C6                        mov al, dh
0001:38A7  26 22 05                     and al, byte ptr es:[di]
0001:38AA  8A D0                        mov dl, al
0001:38AC  26 8A 25                     mov ah, byte ptr es:[di]
0001:38AF  22 C4                        and al, ah
0001:38B1  0A C6                        or al, dh
0001:38B3  32 C2                        xor al, dl
0001:38B5  32 C4                        xor al, ah
0001:38B7  8A E6                        mov ah, dh
0001:38B9  F6 D4                        not ah
0001:38BB  26 0A 25                     or ah, byte ptr es:[di]
0001:38BE  32 C4                        xor al, ah
0001:38C0  F6 D0                        not al
0001:38C2  22 C6                        and al, dh
0001:38C4  26 32 05                     xor al, byte ptr es:[di]
0001:38C7  32 C6                        xor al, dh
0001:38C9  8A D0                        mov dl, al
0001:38CB  0A C6                        or al, dh
0001:38CD  F6 D0                        not al
0001:38CF  26 0A 05                     or al, byte ptr es:[di]
0001:38D2  32 C2                        xor al, dl
0001:38D4  32 C6                        xor al, dh
0001:38D6  8A D0                        mov dl, al
0001:38D8  0A C6                        or al, dh
0001:38DA  26 22 05                     and al, byte ptr es:[di]
0001:38DD  32 C2                        xor al, dl
0001:38DF  32 C6                        xor al, dh
0001:38E1  26 8A 25                     mov ah, byte ptr es:[di]
0001:38E4  22 E6                        and ah, dh
0001:38E6  32 C4                        xor al, ah
0001:38E8  26 8A 25                     mov ah, byte ptr es:[di]
0001:38EB  8A D4                        mov dl, ah
0001:38ED  0A E6                        or ah, dh
0001:38EF  22 C4                        and al, ah
0001:38F1  32 C2                        xor al, dl
0001:38F3  32 C6                        xor al, dh
0001:38F5  8A D0                        mov dl, al
0001:38F7  F6 D0                        not al
0001:38F9  0A C6                        or al, dh
0001:38FB  26 22 05                     and al, byte ptr es:[di]
0001:38FE  32 C2                        xor al, dl
0001:3900  8A D0                        mov dl, al
0001:3902  26 8A 25                     mov ah, byte ptr es:[di]
0001:3905  32 C4                        xor al, ah
0001:3907  32 E6                        xor ah, dh
0001:3909  22 C4                        and al, ah
0001:390B  32 C2                        xor al, dl
0001:390D  8A D0                        mov dl, al
0001:390F  32 C6                        xor al, dh
0001:3911  26 0A 05                     or al, byte ptr es:[di]
0001:3914  32 C2                        xor al, dl
0001:3916  8A E6                        mov ah, dh
0001:3918  F6 D4                        not ah
0001:391A  26 0A 25                     or ah, byte ptr es:[di]
0001:391D  22 C4                        and al, ah
0001:391F  26 8A 25                     mov ah, byte ptr es:[di]
0001:3922  8A D4                        mov dl, ah
0001:3924  32 E6                        xor ah, dh
0001:3926  0A C4                        or al, ah
0001:3928  32 C2                        xor al, dl
0001:392A  8A D0                        mov dl, al
0001:392C  F6 D0                        not al
0001:392E  22 C6                        and al, dh
0001:3930  26 0A 05                     or al, byte ptr es:[di]
0001:3933  32 C2                        xor al, dl
0001:3935  8A E6                        mov ah, dh
0001:3937  F6 D4                        not ah
0001:3939  0A C4                        or al, ah
0001:393B  26 22 05                     and al, byte ptr es:[di]
0001:393E  32 C6                        xor al, dh
0001:3940  8A D0                        mov dl, al
0001:3942  F6 D0                        not al
0001:3944  26 0A 05                     or al, byte ptr es:[di]
0001:3947  22 C6                        and al, dh
0001:3949  32 C2                        xor al, dl
0001:394B  26 8A 25                     mov ah, byte ptr es:[di]
0001:394E  32 E6                        xor ah, dh
0001:3950  F6 D4                        not ah
0001:3952  22 C4                        and al, ah

; FUNCTION 0001:3954 (8 instructions)
0001:3954  33 C0                        xor ax, ax
0001:3956  8B D0                        mov dx, ax
0001:3958  8B DC                        mov bx, sp
0001:395A  36 87 07                     xchg word ptr ss:[bx], ax
0001:395D  36 87 57 02                  xchg word ptr ss:[bx + 2], dx
0001:3961  52                           push dx
0001:3962  50                           push ax
0001:3963  45                           inc bp

; FUNCTION 0001:3964 (306 instructions)
0001:3964  55                           push bp
0001:3965  8B EC                        mov bp, sp
0001:3967  1E                           push ds
0001:3968  B8 14 02                     mov ax, 0x214
0001:396B  E8 9A C6                     call 8
0001:396E  56                           push si
0001:396F  57                           push di
0001:3970  2E A1 00 00                  mov ax, word ptr cs:[0]
0001:3974  8E D8                        mov ds, ax
0001:3976  73 03                        jae 0x397b
0001:3978  E9 D2 02                     jmp 0x3c4d
0001:397B  FC                           cld
0001:397C  A0 04 00                     mov al, byte ptr [4]
0001:397F  88 46 F9                     mov byte ptr [bp - 7], al
0001:3982  A1 05 00                     mov ax, word ptr [5]
0001:3985  89 46 CE                     mov word ptr [bp - 0x32], ax
0001:3988  8D 9E 2A FE                  lea bx, [bp - 0x1d6]
0001:398C  FF 76 28                     push word ptr [bp + 0x28]
0001:398F  FF 76 26                     push word ptr [bp + 0x26]
0001:3992  FF 76 20                     push word ptr [bp + 0x20]
0001:3995  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3998  16                           push ss
0001:3999  53                           push bx
0001:399A  E8 B6 CC                     call 0x653
0001:399D  1A C0                        sbb al, al
0001:399F  88 86 2B FF                  mov byte ptr [bp - 0xd5], al
0001:39A3  C5 76 0A                     lds si, ptr [bp + 0xa]
0001:39A6  B9 02 00                     mov cx, 2
0001:39A9  8C D8                        mov ax, ds
0001:39AB  0B C6                        or ax, si
0001:39AD  74 11                        je 0x39c0
0001:39AF  8B 44 02                     mov ax, word ptr [si + 2]
0001:39B2  3B C1                        cmp ax, cx
0001:39B4  7E 01                        jle 0x39b7
0001:39B6  49                           dec cx
0001:39B7  8A 64 04                     mov ah, byte ptr [si + 4]
0001:39BA  8A 44 08                     mov al, byte ptr [si + 8]
0001:39BD  89 46 82                     mov word ptr [bp - 0x7e], ax
0001:39C0  89 4E 84                     mov word ptr [bp - 0x7c], cx
0001:39C3  83 F9 01                     cmp cx, 1
0001:39C6  75 22                        jne 0x39ea
0001:39C8  C5 76 26                     lds si, ptr [bp + 0x26]
0001:39CB  81 7C 08 01 01               cmp word ptr [si + 8], 0x101
0001:39D0  75 18                        jne 0x39ea
0001:39D2  BA AA 00                     mov dx, 0xaa
0001:39D5  0A E4                        or ah, ah
0001:39D7  74 06                        je 0x39df
0001:39D9  21 56 14                     and word ptr [bp + 0x14], dx
0001:39DC  EB 0C                        jmp 0x39ea
0001:39DF  09 56 14                     or word ptr [bp + 0x14], dx
0001:39E2  EB 06                        jmp 0x39ea
0001:39E5  33 C0                        xor ax, ax
0001:39E7  E9 62 02                     jmp 0x3c4c
0001:39EA  33 C0                        xor ax, ax
0001:39EC  8B 5E 14                     mov bx, word ptr [bp + 0x14]
0001:39EF  0A FF                        or bh, bh
0001:39F1  75 F2                        jne 0x39e5
0001:39F3  0A DB                        or bl, bl
0001:39F5  79 04                        jns 0x39fb
0001:39F7  F6 D3                        not bl
0001:39F9  B4 80                        mov ah, 0x80
0001:39FB  03 DB                        add bx, bx
0001:39FD  2E 33 87 CA 35               xor ax, word ptr cs:[bx + 0x35ca]
0001:3A02  89 46 EA                     mov word ptr [bp - 0x16], ax
0001:3A05  8A DC                        mov bl, ah
0001:3A07  80 E3 60                     and bl, 0x60
0001:3A0A  D0 E3                        shl bl, 1
0001:3A0C  E8 49 02                     call 0x3c58
0001:3A0F  72 D4                        jb 0x39e5
0001:3A11  F6 C7 12                     test bh, 0x12
0001:3A14  74 06                        je 0x3a1c
0001:3A16  F6 46 F9 FF                  test byte ptr [bp - 7], 0xff
0001:3A1A  74 C9                        je 0x39e5
0001:3A1C  88 7E F8                     mov byte ptr [bp - 8], bh
0001:3A1F  F6 C7 80                     test bh, 0x80
0001:3A22  74 23                        je 0x3a47
0001:3A24  C5 76 0E                     lds si, ptr [bp + 0xe]
0001:3A27  8C D8                        mov ax, ds
0001:3A29  0B C6                        or ax, si
0001:3A2B  74 B8                        je 0x39e5
0001:3A2D  C4 7E 0A                     les di, ptr [bp + 0xa]
0001:3A30  8C D1                        mov cx, ss
0001:3A32  8D 86 2E FF                  lea ax, [bp - 0xd2]
0001:3A36  8A 5E 8D                     mov bl, byte ptr [bp - 0x73]
0001:3A39  E8 8F 02                     call 0x3ccb
0001:3A3C  72 A7                        jb 0x39e5
0001:3A3E  89 7E D0                     mov word ptr [bp - 0x30], di
0001:3A41  8C 46 D2                     mov word ptr [bp - 0x2e], es
0001:3A44  88 46 81                     mov byte ptr [bp - 0x7f], al
0001:3A47  8B 76 18                     mov si, word ptr [bp + 0x18]
0001:3A4A  8B 7E 16                     mov di, word ptr [bp + 0x16]
0001:3A4D  F6 46 F8 40                  test byte ptr [bp - 8], 0x40
0001:3A51  74 49                        je 0x3a9c
0001:3A53  8B 46 1C                     mov ax, word ptr [bp + 0x1c]
0001:3A56  8B 5E AA                     mov bx, word ptr [bp - 0x56]
0001:3A59  0B C0                        or ax, ax
0001:3A5B  79 0C                        jns 0x3a69
0001:3A5D  03 F0                        add si, ax
0001:3A5F  78 35                        js 0x3a96
0001:3A61  29 46 24                     sub word ptr [bp + 0x24], ax
0001:3A64  33 C0                        xor ax, ax
0001:3A66  89 46 1C                     mov word ptr [bp + 0x1c], ax
0001:3A69  03 C6                        add ax, si
0001:3A6B  2B C3                        sub ax, bx
0001:3A6D  76 04                        jbe 0x3a73
0001:3A6F  2B F0                        sub si, ax
0001:3A71  78 23                        js 0x3a96
0001:3A73  89 76 18                     mov word ptr [bp + 0x18], si
0001:3A76  8B 46 1A                     mov ax, word ptr [bp + 0x1a]
0001:3A79  8B 5E AC                     mov bx, word ptr [bp - 0x54]
0001:3A7C  0B C0                        or ax, ax
0001:3A7E  79 0C                        jns 0x3a8c
0001:3A80  03 F8                        add di, ax
0001:3A82  78 12                        js 0x3a96
0001:3A84  29 46 22                     sub word ptr [bp + 0x22], ax
0001:3A87  33 C0                        xor ax, ax
0001:3A89  89 46 1A                     mov word ptr [bp + 0x1a], ax
0001:3A8C  03 C7                        add ax, di
0001:3A8E  2B C3                        sub ax, bx
0001:3A90  76 07                        jbe 0x3a99
0001:3A92  2B F8                        sub di, ax
0001:3A94  79 03                        jns 0x3a99
0001:3A96  E9 B0 01                     jmp 0x3c49
0001:3A99  89 7E 16                     mov word ptr [bp + 0x16], di
0001:3A9C  0B F6                        or si, si
0001:3A9E  74 F6                        je 0x3a96
0001:3AA0  0B FF                        or di, di
0001:3AA2  74 F2                        je 0x3a96
0001:3AA4  B4 01                        mov ah, 1
0001:3AA6  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:3AA9  A8 40                        test al, 0x40
0001:3AAB  74 4E                        je 0x3afb
0001:3AAD  8B 56 1E                     mov dx, word ptr [bp + 0x1e]
0001:3AB0  3B 56 26                     cmp dx, word ptr [bp + 0x26]
0001:3AB3  75 46                        jne 0x3afb
0001:3AB5  8B 56 20                     mov dx, word ptr [bp + 0x20]
0001:3AB8  3B 56 28                     cmp dx, word ptr [bp + 0x28]
0001:3ABB  75 3E                        jne 0x3afb
0001:3ABD  8B 56 18                     mov dx, word ptr [bp + 0x18]
0001:3AC0  03 56 1C                     add dx, word ptr [bp + 0x1c]
0001:3AC3  3B 56 24                     cmp dx, word ptr [bp + 0x24]
0001:3AC6  76 33                        jbe 0x3afb
0001:3AC8  8B 56 18                     mov dx, word ptr [bp + 0x18]
0001:3ACB  03 56 24                     add dx, word ptr [bp + 0x24]
0001:3ACE  3B 56 1C                     cmp dx, word ptr [bp + 0x1c]
0001:3AD1  76 28                        jbe 0x3afb
0001:3AD3  8B 56 16                     mov dx, word ptr [bp + 0x16]
0001:3AD6  03 56 1A                     add dx, word ptr [bp + 0x1a]
0001:3AD9  3B 56 22                     cmp dx, word ptr [bp + 0x22]
0001:3ADC  76 1D                        jbe 0x3afb
0001:3ADE  8B 56 16                     mov dx, word ptr [bp + 0x16]
0001:3AE1  03 56 22                     add dx, word ptr [bp + 0x22]
0001:3AE4  3B 56 1A                     cmp dx, word ptr [bp + 0x1a]
0001:3AE7  76 12                        jbe 0x3afb
0001:3AE9  8B 56 22                     mov dx, word ptr [bp + 0x22]
0001:3AEC  3B 56 1A                     cmp dx, word ptr [bp + 0x1a]
0001:3AEF  75 06                        jne 0x3af7
0001:3AF1  8B 56 24                     mov dx, word ptr [bp + 0x24]
0001:3AF4  3B 56 1C                     cmp dx, word ptr [bp + 0x1c]
0001:3AF7  76 02                        jbe 0x3afb
0001:3AF9  B4 FF                        mov ah, 0xff
0001:3AFB  88 66 FA                     mov byte ptr [bp - 6], ah
0001:3AFE  8B 46 22                     mov ax, word ptr [bp + 0x22]
0001:3B01  8B 5E 24                     mov bx, word ptr [bp + 0x24]
0001:3B04  80 7E FA 01                  cmp byte ptr [bp - 6], 1
0001:3B08  74 08                        je 0x3b12
0001:3B0A  03 46 16                     add ax, word ptr [bp + 0x16]
0001:3B0D  03 5E 18                     add bx, word ptr [bp + 0x18]
0001:3B10  48                           dec ax
0001:3B11  4B                           dec bx
0001:3B12  24 07                        and al, 7
0001:3B14  80 E3 07                     and bl, 7
0001:3B17  88 46 FC                     mov byte ptr [bp - 4], al
0001:3B1A  88 5E FB                     mov byte ptr [bp - 5], bl
0001:3B1D  C6 46 F7 00                  mov byte ptr [bp - 9], 0
0001:3B21  C6 46 FD 00                  mov byte ptr [bp - 3], 0
0001:3B25  F6 46 F8 01                  test byte ptr [bp - 8], 1
0001:3B29  74 03                        je 0x3b2e
0001:3B2B  E9 8D 00                     jmp 0x3bbb
0001:3B2E  8B 5E 24                     mov bx, word ptr [bp + 0x24]
0001:3B31  8B CB                        mov cx, bx
0001:3B33  83 E1 F8                     and cx, 0xfff8
0001:3B36  03 5E 18                     add bx, word ptr [bp + 0x18]
0001:3B39  4B                           dec bx
0001:3B3A  83 E3 F8                     and bx, 0xfff8
0001:3B3D  2B D9                        sub bx, cx
0001:3B3F  D1 EB                        shr bx, 1
0001:3B41  D1 EB                        shr bx, 1
0001:3B43  D1 EB                        shr bx, 1
0001:3B45  8B 4E 24                     mov cx, word ptr [bp + 0x24]
0001:3B48  83 E1 07                     and cx, 7
0001:3B4B  B2 FF                        mov dl, 0xff
0001:3B4D  D2 EA                        shr dl, cl
0001:3B4F  88 4E F3                     mov byte ptr [bp - 0xd], cl
0001:3B52  03 4E 18                     add cx, word ptr [bp + 0x18]
0001:3B55  B8 00 FF                     mov ax, 0xff00
0001:3B58  83 E1 07                     and cx, 7
0001:3B5B  75 02                        jne 0x3b5f
0001:3B5D  8A C4                        mov al, ah
0001:3B5F  D3 E8                        shr ax, cl
0001:3B61  FE C9                        dec cl
0001:3B63  80 E1 07                     and cl, 7
0001:3B66  88 4E F2                     mov byte ptr [bp - 0xe], cl
0001:3B69  4B                           dec bx
0001:3B6A  7F 0C                        jg 0x3b78
0001:3B6C  74 11                        je 0x3b7f
0001:3B6E  22 C2                        and al, dl
0001:3B70  2B DB                        sub bx, bx
0001:3B72  2A D2                        sub dl, dl
0001:3B74  92                           xchg dx, ax
0001:3B75  EB 08                        jmp 0x3b7f
0001:3B78  3C FF                        cmp al, 0xff
0001:3B7A  75 03                        jne 0x3b7f
0001:3B7C  B0 00                        mov al, 0
0001:3B7E  43                           inc bx
0001:3B7F  8A F2                        mov dh, dl
0001:3B81  F6 D6                        not dh
0001:3B83  89 56 F0                     mov word ptr [bp - 0x10], dx
0001:3B86  8A E0                        mov ah, al
0001:3B88  F6 D4                        not ah
0001:3B8A  89 46 EE                     mov word ptr [bp - 0x12], ax
0001:3B8D  89 5E EC                     mov word ptr [bp - 0x14], bx
0001:3B90  F6 46 F8 40                  test byte ptr [bp - 8], 0x40
0001:3B94  74 2B                        je 0x3bc1
0001:3B96  8B 5E 24                     mov bx, word ptr [bp + 0x24]
0001:3B99  80 E3 07                     and bl, 7
0001:3B9C  8B 4E 1C                     mov cx, word ptr [bp + 0x1c]
0001:3B9F  80 E1 07                     and cl, 7
0001:3BA2  2A CB                        sub cl, bl
0001:3BA4  74 08                        je 0x3bae
0001:3BA6  72 03                        jb 0x3bab
0001:3BA8  FE 46 F7                     inc byte ptr [bp - 9]
0001:3BAB  80 E1 07                     and cl, 7
0001:3BAE  88 4E FD                     mov byte ptr [bp - 3], cl
0001:3BB1  B8 00 FF                     mov ax, 0xff00
0001:3BB4  D3 C0                        rol ax, cl
0001:3BB6  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:3BB9  EB 06                        jmp 0x3bc1
0001:3BBB  8B 46 18                     mov ax, word ptr [bp + 0x18]
0001:3BBE  89 46 EC                     mov word ptr [bp - 0x14], ax
0001:3BC1  E8 F2 01                     call 0x3db6
0001:3BC4  73 03                        jae 0x3bc9
0001:3BC6  E9 80 00                     jmp 0x3c49
0001:3BC9  B8 78 02                     mov ax, 0x278
0001:3BCC  E8 39 C4                     call 8
0001:3BCF  72 7B                        jb 0x3c4c
0001:3BD1  83 C4 20                     add sp, 0x20
0001:3BD4  8B FC                        mov di, sp
0001:3BD6  89 7E D4                     mov word ptr [bp - 0x2c], di
0001:3BD9  8C D0                        mov ax, ss
0001:3BDB  8E C0                        mov es, ax
0001:3BDD  8B 46 CE                     mov ax, word ptr [bp - 0x32]
0001:3BE0  06                           push es
0001:3BE1  16                           push ss
0001:3BE2  50                           push ax
0001:3BE3  9A 28 15 00 00               lcall 0, 0x1528
0001:3BE8  89 46 D6                     mov word ptr [bp - 0x2a], ax
0001:3BEB  07                           pop es
0001:3BEC  8C C8                        mov ax, cs
0001:3BEE  8E D8                        mov ds, ax
0001:3BF0  33 C9                        xor cx, cx
0001:3BF2  E8 01 CC                     call 0x7f6
0001:3BF5  F6 46 F8 40                  test byte ptr [bp - 8], 0x40
0001:3BF9  74 03                        je 0x3bfe
0001:3BFB  C5 76 C4                     lds si, ptr [bp - 0x3c]
0001:3BFE  C4 7E A0                     les di, ptr [bp - 0x60]
0001:3C01  8B 4E 16                     mov cx, word ptr [bp + 0x16]
0001:3C04  FC                           cld
0001:3C05  80 7E FA 01                  cmp byte ptr [bp - 6], 1
0001:3C09  74 01                        je 0x3c0c
0001:3C0B  FD                           std
0001:3C0C  55                           push bp
0001:3C0D  FF 5E D4                     lcall [bp - 0x2c]
0001:3C10  5D                           pop bp
0001:3C11  81 C4 58 02                  add sp, 0x258
0001:3C15  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:3C18  A8 40                        test al, 0x40
0001:3C1A  74 15                        je 0x3c31
0001:3C1C  A8 20                        test al, 0x20
0001:3C1E  74 11                        je 0x3c31
0001:3C20  83 7E B6 00                  cmp word ptr [bp - 0x4a], 0
0001:3C24  74 0B                        je 0x3c31
0001:3C26  6A 00                        push 0
0001:3C28  1F                           pop ds
0001:3C29  8B 5E C6                     mov bx, word ptr [bp - 0x3a]
0001:3C2C  B8 01 00                     mov ax, 1
0001:3C2F  CD 31                        int 0x31
0001:3C31  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:3C34  A8 04                        test al, 4
0001:3C36  74 11                        je 0x3c49
0001:3C38  83 7E 92 00                  cmp word ptr [bp - 0x6e], 0
0001:3C3C  74 0B                        je 0x3c49
0001:3C3E  6A 00                        push 0
0001:3C40  07                           pop es
0001:3C41  8B 5E A2                     mov bx, word ptr [bp - 0x5e]
0001:3C44  B8 01 00                     mov ax, 1
0001:3C47  CD 31                        int 0x31
0001:3C49  B8 01 00                     mov ax, 1
0001:3C4C  FC                           cld
0001:3C4D  5F                           pop di
0001:3C4E  5E                           pop si
0001:3C4F  8D 66 FE                     lea sp, [bp - 2]
0001:3C52  1F                           pop ds
0001:3C53  5D                           pop bp
0001:3C54  4D                           dec bp
0001:3C55  CA 24 00                     retf 0x24

; FUNCTION 0001:3BED (47 instructions)
0001:3BED  C8 8E D8 33                  enter -0x2772, 0x33
0001:3BF1  C9                           leave
0001:3BF2  E8 01 CC                     call 0x7f6
0001:3BF5  F6 46 F8 40                  test byte ptr [bp - 8], 0x40
0001:3BF9  74 03                        je 0x3bfe
0001:3BFB  C5 76 C4                     lds si, ptr [bp - 0x3c]
0001:3BFE  C4 7E A0                     les di, ptr [bp - 0x60]
0001:3C01  8B 4E 16                     mov cx, word ptr [bp + 0x16]
0001:3C04  FC                           cld
0001:3C05  80 7E FA 01                  cmp byte ptr [bp - 6], 1
0001:3C09  74 01                        je 0x3c0c
0001:3C0B  FD                           std
0001:3C0C  55                           push bp
0001:3C0D  FF 5E D4                     lcall [bp - 0x2c]
0001:3C10  5D                           pop bp
0001:3C11  81 C4 58 02                  add sp, 0x258
0001:3C15  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:3C18  A8 40                        test al, 0x40
0001:3C1A  74 15                        je 0x3c31
0001:3C1C  A8 20                        test al, 0x20
0001:3C1E  74 11                        je 0x3c31
0001:3C20  83 7E B6 00                  cmp word ptr [bp - 0x4a], 0
0001:3C24  74 0B                        je 0x3c31
0001:3C26  6A 00                        push 0
0001:3C28  1F                           pop ds
0001:3C29  8B 5E C6                     mov bx, word ptr [bp - 0x3a]
0001:3C2C  B8 01 00                     mov ax, 1
0001:3C2F  CD 31                        int 0x31
0001:3C31  8A 46 F8                     mov al, byte ptr [bp - 8]
0001:3C34  A8 04                        test al, 4
0001:3C36  74 11                        je 0x3c49
0001:3C38  83 7E 92 00                  cmp word ptr [bp - 0x6e], 0
0001:3C3C  74 0B                        je 0x3c49
0001:3C3E  6A 00                        push 0
0001:3C40  07                           pop es
0001:3C41  8B 5E A2                     mov bx, word ptr [bp - 0x5e]
0001:3C44  B8 01 00                     mov ax, 1
0001:3C47  CD 31                        int 0x31
0001:3C49  B8 01 00                     mov ax, 1
0001:3C4C  FC                           cld
0001:3C4D  5F                           pop di
0001:3C4E  5E                           pop si
0001:3C4F  8D 66 FE                     lea sp, [bp - 2]
0001:3C52  1F                           pop ds
0001:3C53  5D                           pop bp
0001:3C54  4D                           dec bp
0001:3C55  CA 24 00                     retf 0x24

; FUNCTION 0001:3C58 (21 instructions)
0001:3C58  8C D0                        mov ax, ss
0001:3C5A  8E C0                        mov es, ax
0001:3C5C  32 FF                        xor bh, bh
0001:3C5E  F6 C3 40                     test bl, 0x40
0001:3C61  74 11                        je 0x3c74
0001:3C63  C5 76 1E                     lds si, ptr [bp + 0x1e]
0001:3C66  8C D8                        mov ax, ds
0001:3C68  0B C6                        or ax, si
0001:3C6A  74 17                        je 0x3c83
0001:3C6C  8D 7E AA                     lea di, [bp - 0x56]
0001:3C6F  E8 13 00                     call 0x3c85
0001:3C72  72 0F                        jb 0x3c83
0001:3C74  C5 76 26                     lds si, ptr [bp + 0x26]
0001:3C77  8D 7E 86                     lea di, [bp - 0x7a]
0001:3C7A  E8 08 00                     call 0x3c85
0001:3C7D  72 04                        jb 0x3c83
0001:3C7F  0A FB                        or bh, bl
0001:3C81  F8                           clc
0001:3C82  C3                           ret
0001:3C83  F9                           stc
0001:3C84  C3                           ret

; FUNCTION 0001:3C85 (36 instructions)
0001:3C85  AD                           lodsw ax, word ptr [si]
0001:3C86  D0 E7                        shl bh, 1
0001:3C88  3D 49 44                     cmp ax, 0x4449
0001:3C8B  75 07                        jne 0x3c94
0001:3C8D  80 CF 01                     or bh, 1
0001:3C90  D0 E7                        shl bh, 1
0001:3C92  EB 06                        jmp 0x3c9a
0001:3C94  3D 01 00                     cmp ax, 1
0001:3C97  F5                           cmc
0001:3C98  D0 D7                        rcl bh, 1
0001:3C9A  A5                           movsw word ptr es:[di], word ptr [si]
0001:3C9B  A5                           movsw word ptr es:[di], word ptr [si]
0001:3C9C  A5                           movsw word ptr es:[di], word ptr [si]
0001:3C9D  AD                           lodsw ax, word ptr [si]
0001:3C9E  3D 01 01                     cmp ax, 0x101
0001:3CA1  74 01                        je 0x3ca4
0001:3CA3  F9                           stc
0001:3CA4  D0 D7                        rcl bh, 1
0001:3CA6  AB                           stosw word ptr es:[di], ax
0001:3CA7  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CA8  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CA9  83 C6 08                     add si, 8
0001:3CAC  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CAD  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CAE  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CAF  8A C7                        mov al, bh
0001:3CB1  24 07                        and al, 7
0001:3CB3  AA                           stosb byte ptr es:[di], al
0001:3CB4  A8 04                        test al, 4
0001:3CB6  74 08                        je 0x3cc0
0001:3CB8  83 C6 F6                     add si, -0xa
0001:3CBB  83 C7 0D                     add di, 0xd
0001:3CBE  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CBF  A5                           movsw word ptr es:[di], word ptr [si]
0001:3CC0  F8                           clc
0001:3CC1  C3                           ret

; FUNCTION 0001:3CCB (103 instructions)
0001:3CC8  E9 E9 00                     jmp 0x3db4
0001:3CCB  83 7C 48 01                  cmp word ptr [si + 0x48], 1
0001:3CCF  74 F7                        je 0x3cc8
0001:3CD1  FF 74 4A                     push word ptr [si + 0x4a]
0001:3CD4  83 7C 48 00                  cmp word ptr [si + 0x48], 0
0001:3CD8  75 03                        jne 0x3cdd
0001:3CDA  E9 C5 00                     jmp 0x3da2
0001:3CDD  83 7C 48 02                  cmp word ptr [si + 0x48], 2
0001:3CE1  75 03                        jne 0x3ce6
0001:3CE3  E9 BC 00                     jmp 0x3da2
0001:3CE6  F6 44 4A 04                  test byte ptr [si + 0x4a], 4
0001:3CEA  75 03                        jne 0x3cef
0001:3CEC  E9 8F 00                     jmp 0x3d7e
0001:3CEF  F6 C7 01                     test bh, 1
0001:3CF2  75 31                        jne 0x3d25
0001:3CF4  83 C6 40                     add si, 0x40
0001:3CF7  26 8A 75 05                  mov dh, byte ptr es:[di + 5]
0001:3CFB  26 8A 55 09                  mov dl, byte ptr es:[di + 9]
0001:3CFF  D0 EE                        shr dh, 1
0001:3D01  1A F6                        sbb dh, dh
0001:3D03  D0 EA                        shr dl, 1
0001:3D05  1A D2                        sbb dl, dl
0001:3D07  8E C1                        mov es, cx
0001:3D09  8B F8                        mov di, ax
0001:3D0B  83 C7 40                     add di, 0x40
0001:3D0E  B9 08 00                     mov cx, 8
0001:3D11  AC                           lodsb al, byte ptr [si]
0001:3D12  8A E0                        mov ah, al
0001:3D14  F6 D0                        not al
0001:3D16  22 C2                        and al, dl
0001:3D18  22 E6                        and ah, dh
0001:3D1A  0A C4                        or al, ah
0001:3D1C  AA                           stosb byte ptr es:[di], al
0001:3D1D  E2 F2                        loop 0x3d11
0001:3D1F  83 EF 48                     sub di, 0x48
0001:3D22  E9 88 00                     jmp 0x3dad
0001:3D25  83 C6 40                     add si, 0x40
0001:3D28  26 8A 75 04                  mov dh, byte ptr es:[di + 4]
0001:3D2C  26 8A 55 08                  mov dl, byte ptr es:[di + 8]
0001:3D30  32 F2                        xor dh, dl
0001:3D32  8E C1                        mov es, cx
0001:3D34  8B F8                        mov di, ax
0001:3D36  B1 08                        mov cl, 8
0001:3D38  80 FB 04                     cmp bl, 4
0001:3D3B  74 1A                        je 0x3d57
0001:3D3D  B5 08                        mov ch, 8
0001:3D3F  AC                           lodsb al, byte ptr [si]
0001:3D40  8A E0                        mov ah, al
0001:3D42  D0 C4                        rol ah, 1
0001:3D44  1A C0                        sbb al, al
0001:3D46  22 C6                        and al, dh
0001:3D48  32 C2                        xor al, dl
0001:3D4A  AA                           stosb byte ptr es:[di], al
0001:3D4B  FE CD                        dec ch
0001:3D4D  75 F3                        jne 0x3d42
0001:3D4F  E2 EC                        loop 0x3d3d
0001:3D51  83 EF 40                     sub di, 0x40
0001:3D54  EB 57                        jmp 0x3dad
0001:3D57  B5 04                        mov ch, 4
0001:3D59  AC                           lodsb al, byte ptr [si]
0001:3D5A  8A E0                        mov ah, al
0001:3D5C  D0 C4                        rol ah, 1
0001:3D5E  1A C0                        sbb al, al
0001:3D60  22 C6                        and al, dh
0001:3D62  32 C2                        xor al, dl
0001:3D64  C0 E0 04                     shl al, 4
0001:3D67  D0 C4                        rol ah, 1
0001:3D69  1A DB                        sbb bl, bl
0001:3D6B  22 DE                        and bl, dh
0001:3D6D  32 DA                        xor bl, dl
0001:3D6F  0A C3                        or al, bl
0001:3D71  AA                           stosb byte ptr es:[di], al
0001:3D72  FE CD                        dec ch
0001:3D74  75 E6                        jne 0x3d5c
0001:3D76  E2 DF                        loop 0x3d57
0001:3D78  83 EF 20                     sub di, 0x20
0001:3D7B  EB 30                        jmp 0x3dad
0001:3D7E  F6 C7 01                     test bh, 1
0001:3D81  75 11                        jne 0x3d94
0001:3D83  8E C1                        mov es, cx
0001:3D85  8B F8                        mov di, ax
0001:3D87  8D 74 40                     lea si, [si + 0x40]
0001:3D8A  B9 08 00                     mov cx, 8
0001:3D8D  F3 A4                        rep movsb byte ptr es:[di], byte ptr [si]
0001:3D8F  8B F8                        mov di, ax
0001:3D91  EB 1A                        jmp 0x3dad
0001:3D94  8E C1                        mov es, cx
0001:3D96  8B F8                        mov di, ax
0001:3D98  B9 53 00                     mov cx, 0x53
0001:3D9B  F3 A4                        rep movsb byte ptr es:[di], byte ptr [si]
0001:3D9D  8B F8                        mov di, ax
0001:3D9F  EB 0C                        jmp 0x3dad
0001:3DA2  8E C1                        mov es, cx
0001:3DA4  8B F8                        mov di, ax
0001:3DA6  B9 53 00                     mov cx, 0x53
0001:3DA9  F3 A4                        rep movsb byte ptr es:[di], byte ptr [si]
0001:3DAB  8B F8                        mov di, ax
0001:3DAD  58                           pop ax
0001:3DAE  26 88 45 4A                  mov byte ptr es:[di + 0x4a], al
0001:3DB2  F8                           clc
0001:3DB3  C3                           ret
0001:3DB4  F9                           stc
0001:3DB5  C3                           ret

; FUNCTION 0001:3DB6 (2 instructions)
0001:3DB6  F8                           clc
0001:3DB7  C3                           ret

; FUNCTION 0001:3DBA (3 instructions)
0001:3DBA  8C D8                        mov ax, ds
0001:3DBC  90                           nop
0001:3DBD  45                           inc bp

; FUNCTION 0001:3DBE (158 instructions)
0001:3DBE  55                           push bp
0001:3DBF  8B EC                        mov bp, sp
0001:3DC1  1E                           push ds
0001:3DC2  8E D8                        mov ds, ax
0001:3DC4  81 EC A4 02                  sub sp, 0x2a4
0001:3DC8  56                           push si
0001:3DC9  57                           push di
0001:3DCA  C4 5E 0E                     les bx, ptr [bp + 0xe]
0001:3DCD  26 80 7F 10 01               cmp byte ptr es:[bx + 0x10], 1
0001:3DD2  74 07                        je 0x3ddb
0001:3DD4  26 80 7F 10 02               cmp byte ptr es:[bx + 0x10], 2
0001:3DD9  75 2F                        jne 0x3e0a
0001:3DDB  83 7E 1A 00                  cmp word ptr [bp + 0x1a], 0
0001:3DDF  75 1A                        jne 0x3dfb
0001:3DE1  33 C0                        xor ax, ax
0001:3DE3  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3DE6  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3DE9  50                           push ax
0001:3DEA  50                           push ax
0001:3DEB  FF 76 14                     push word ptr [bp + 0x14]
0001:3DEE  FF 76 12                     push word ptr [bp + 0x12]
0001:3DF1  06                           push es
0001:3DF2  53                           push bx
0001:3DF3  50                           push ax
0001:3DF4  50                           push ax
0001:3DF5  E8 AC 09                     call 0x47a4
0001:3DF8  E9 1B 01                     jmp 0x3f16
0001:3DFB  83 7E 1A 01                  cmp word ptr [bp + 0x1a], 1
0001:3DFF  74 03                        je 0x3e04
0001:3E01  E9 10 01                     jmp 0x3f14
0001:3E04  B8 FF FF                     mov ax, 0xffff
0001:3E07  E9 0C 01                     jmp 0x3f16
0001:3E0A  8B 46 12                     mov ax, word ptr [bp + 0x12]
0001:3E0D  0B 46 14                     or ax, word ptr [bp + 0x14]
0001:3E10  75 03                        jne 0x3e15
0001:3E12  E9 FF 00                     jmp 0x3f14
0001:3E15  83 7E 1A 00                  cmp word ptr [bp + 0x1a], 0
0001:3E19  75 68                        jne 0x3e83
0001:3E1B  8D 46 CE                     lea ax, [bp - 0x32]
0001:3E1E  16                           push ss
0001:3E1F  50                           push ax
0001:3E20  FF 76 10                     push word ptr [bp + 0x10]
0001:3E23  FF 76 0E                     push word ptr [bp + 0xe]
0001:3E26  FF 76 14                     push word ptr [bp + 0x14]
0001:3E29  FF 76 12                     push word ptr [bp + 0x12]
0001:3E2C  E8 BA 04                     call 0x42e9
0001:3E2F  0B C0                        or ax, ax
0001:3E31  75 03                        jne 0x3e36
0001:3E33  E9 DE 00                     jmp 0x3f14
0001:3E36  8B 5E D2                     mov bx, word ptr [bp - 0x2e]
0001:3E39  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:3E3C  2B 5E 16                     sub bx, word ptr [bp + 0x16]
0001:3E3F  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3E42  89 46 D2                     mov word ptr [bp - 0x2e], ax
0001:3E45  8D 46 CE                     lea ax, [bp - 0x32]
0001:3E48  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3E4B  33 C9                        xor cx, cx
0001:3E4D  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3E50  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3E53  51                           push cx
0001:3E54  53                           push bx
0001:3E55  16                           push ss
0001:3E56  50                           push ax
0001:3E57  51                           push cx
0001:3E58  51                           push cx
0001:3E59  52                           push dx
0001:3E5A  FF 76 16                     push word ptr [bp + 0x16]
0001:3E5D  68 CC 00                     push 0xcc
0001:3E60  6A 20                        push 0x20
0001:3E62  51                           push cx
0001:3E63  51                           push cx
0001:3E64  FF 76 0C                     push word ptr [bp + 0xc]
0001:3E67  FF 76 0A                     push word ptr [bp + 0xa]
0001:3E6A  9A 54 39 FD 1E               lcall 0x1efd, 0x3954
0001:3E6F  8D 5E CE                     lea bx, [bp - 0x32]
0001:3E72  33 C0                        xor ax, ax
0001:3E74  16                           push ss
0001:3E75  53                           push bx
0001:3E76  50                           push ax
0001:3E77  50                           push ax
0001:3E78  50                           push ax
0001:3E79  50                           push ax
0001:3E7A  E8 6C 04                     call 0x42e9
0001:3E7D  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3E80  E9 93 00                     jmp 0x3f16
0001:3E83  83 7E 1A 01                  cmp word ptr [bp + 0x1a], 1
0001:3E87  74 03                        je 0x3e8c
0001:3E89  E9 88 00                     jmp 0x3f14
0001:3E8C  8D 46 CE                     lea ax, [bp - 0x32]
0001:3E8F  16                           push ss
0001:3E90  50                           push ax
0001:3E91  FF 76 10                     push word ptr [bp + 0x10]
0001:3E94  FF 76 0E                     push word ptr [bp + 0xe]
0001:3E97  FF 76 14                     push word ptr [bp + 0x14]
0001:3E9A  FF 76 12                     push word ptr [bp + 0x12]
0001:3E9D  E8 49 04                     call 0x42e9
0001:3EA0  0B C0                        or ax, ax
0001:3EA2  74 70                        je 0x3f14
0001:3EA4  C4 7E 0E                     les di, ptr [bp + 0xe]
0001:3EA7  26 8B 4D 0E                  mov cx, word ptr es:[di + 0xe]
0001:3EAB  B8 01 00                     mov ax, 1
0001:3EAE  D3 E0                        shl ax, cl
0001:3EB0  50                           push ax
0001:3EB1  26 03 3D                     add di, word ptr es:[di]
0001:3EB4  C5 76 1C                     lds si, ptr [bp + 0x1c]
0001:3EB7  E8 42 C8                     call 0x6fc
0001:3EBA  58                           pop ax
0001:3EBB  2B C1                        sub ax, cx
0001:3EBD  99                           cdq
0001:3EBE  23 C2                        and ax, dx
0001:3EC0  03 C1                        add ax, cx
0001:3EC2  8B C8                        mov cx, ax
0001:3EC4  03 C9                        add cx, cx
0001:3EC6  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:3EC8  8B 5E D2                     mov bx, word ptr [bp - 0x2e]
0001:3ECB  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:3ECE  2B 5E 16                     sub bx, word ptr [bp + 0x16]
0001:3ED1  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3ED4  89 46 D2                     mov word ptr [bp - 0x2e], ax
0001:3ED7  8D 46 CE                     lea ax, [bp - 0x32]
0001:3EDA  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3EDD  33 C9                        xor cx, cx
0001:3EDF  16                           push ss
0001:3EE0  50                           push ax
0001:3EE1  51                           push cx
0001:3EE2  51                           push cx
0001:3EE3  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3EE6  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3EE9  51                           push cx
0001:3EEA  53                           push bx
0001:3EEB  52                           push dx
0001:3EEC  FF 76 16                     push word ptr [bp + 0x16]
0001:3EEF  68 CC 00                     push 0xcc
0001:3EF2  6A 20                        push 0x20
0001:3EF4  51                           push cx
0001:3EF5  51                           push cx
0001:3EF6  FF 76 0C                     push word ptr [bp + 0xc]
0001:3EF9  FF 76 0A                     push word ptr [bp + 0xa]
0001:3EFC  9A 54 39 6D 3E               lcall 0x3e6d, 0x3954
0001:3F01  8D 5E CE                     lea bx, [bp - 0x32]
0001:3F04  33 C0                        xor ax, ax
0001:3F06  16                           push ss
0001:3F07  53                           push bx
0001:3F08  50                           push ax
0001:3F09  50                           push ax
0001:3F0A  50                           push ax
0001:3F0B  50                           push ax
0001:3F0C  E8 DA 03                     call 0x42e9
0001:3F0F  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3F12  EB 02                        jmp 0x3f16
0001:3F14  33 C0                        xor ax, ax
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a

; FUNCTION 0001:3E6D (20 instructions)
0001:3E6D  FD                           std
0001:3E6E  1E                           push ds
0001:3E6F  8D 5E CE                     lea bx, [bp - 0x32]
0001:3E72  33 C0                        xor ax, ax
0001:3E74  16                           push ss
0001:3E75  53                           push bx
0001:3E76  50                           push ax
0001:3E77  50                           push ax
0001:3E78  50                           push ax
0001:3E79  50                           push ax
0001:3E7A  E8 6C 04                     call 0x42e9
0001:3E7D  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3E80  E9 93 00                     jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a

; FUNCTION 0001:3EB9 (50 instructions)
0001:3EB9  C8 58 2B C1                  enter 0x2b58, -0x3f
0001:3EBD  99                           cdq
0001:3EBE  23 C2                        and ax, dx
0001:3EC0  03 C1                        add ax, cx
0001:3EC2  8B C8                        mov cx, ax
0001:3EC4  03 C9                        add cx, cx
0001:3EC6  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:3EC8  8B 5E D2                     mov bx, word ptr [bp - 0x2e]
0001:3ECB  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:3ECE  2B 5E 16                     sub bx, word ptr [bp + 0x16]
0001:3ED1  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3ED4  89 46 D2                     mov word ptr [bp - 0x2e], ax
0001:3ED7  8D 46 CE                     lea ax, [bp - 0x32]
0001:3EDA  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3EDD  33 C9                        xor cx, cx
0001:3EDF  16                           push ss
0001:3EE0  50                           push ax
0001:3EE1  51                           push cx
0001:3EE2  51                           push cx
0001:3EE3  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3EE6  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3EE9  51                           push cx
0001:3EEA  53                           push bx
0001:3EEB  52                           push dx
0001:3EEC  FF 76 16                     push word ptr [bp + 0x16]
0001:3EEF  68 CC 00                     push 0xcc
0001:3EF2  6A 20                        push 0x20
0001:3EF4  51                           push cx
0001:3EF5  51                           push cx
0001:3EF6  FF 76 0C                     push word ptr [bp + 0xc]
0001:3EF9  FF 76 0A                     push word ptr [bp + 0xa]
0001:3EFC  9A 54 39 6D 3E               lcall 0x3e6d, 0x3954
0001:3F01  8D 5E CE                     lea bx, [bp - 0x32]
0001:3F04  33 C0                        xor ax, ax
0001:3F06  16                           push ss
0001:3F07  53                           push bx
0001:3F08  50                           push ax
0001:3F09  50                           push ax
0001:3F0A  50                           push ax
0001:3F0B  50                           push ax
0001:3F0C  E8 DA 03                     call 0x42e9
0001:3F0F  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3F12  EB 02                        jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a

; FUNCTION 0001:3EC3 (45 instructions)
0001:3EC3  C8 03 C9 F3                  enter -0x36fd, -0xd
0001:3EC7  A5                           movsw word ptr es:[di], word ptr [si]
0001:3EC8  8B 5E D2                     mov bx, word ptr [bp - 0x2e]
0001:3ECB  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:3ECE  2B 5E 16                     sub bx, word ptr [bp + 0x16]
0001:3ED1  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3ED4  89 46 D2                     mov word ptr [bp - 0x2e], ax
0001:3ED7  8D 46 CE                     lea ax, [bp - 0x32]
0001:3EDA  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3EDD  33 C9                        xor cx, cx
0001:3EDF  16                           push ss
0001:3EE0  50                           push ax
0001:3EE1  51                           push cx
0001:3EE2  51                           push cx
0001:3EE3  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3EE6  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3EE9  51                           push cx
0001:3EEA  53                           push bx
0001:3EEB  52                           push dx
0001:3EEC  FF 76 16                     push word ptr [bp + 0x16]
0001:3EEF  68 CC 00                     push 0xcc
0001:3EF2  6A 20                        push 0x20
0001:3EF4  51                           push cx
0001:3EF5  51                           push cx
0001:3EF6  FF 76 0C                     push word ptr [bp + 0xc]
0001:3EF9  FF 76 0A                     push word ptr [bp + 0xa]
0001:3EFC  9A 54 39 6D 3E               lcall 0x3e6d, 0x3954
0001:3F01  8D 5E CE                     lea bx, [bp - 0x32]
0001:3F04  33 C0                        xor ax, ax
0001:3F06  16                           push ss
0001:3F07  53                           push bx
0001:3F08  50                           push ax
0001:3F09  50                           push ax
0001:3F0A  50                           push ax
0001:3F0B  50                           push ax
0001:3F0C  E8 DA 03                     call 0x42e9
0001:3F0F  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3F12  EB 02                        jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a

; FUNCTION 0001:3EFF (19 instructions)
0001:3EFF  6D                           insw word ptr es:[di], dx
0001:3F00  3E 8D 5E CE                  lea bx, ds:[bp - 0x32]
0001:3F04  33 C0                        xor ax, ax
0001:3F06  16                           push ss
0001:3F07  53                           push bx
0001:3F08  50                           push ax
0001:3F09  50                           push ax
0001:3F0A  50                           push ax
0001:3F0B  50                           push ax
0001:3F0C  E8 DA 03                     call 0x42e9
0001:3F0F  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3F12  EB 02                        jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a

; FUNCTION 0001:3F21 (3 instructions)
0001:3F21  8C D8                        mov ax, ds
0001:3F23  90                           nop
0001:3F24  45                           inc bp

; FUNCTION 0001:3F25 (10 instructions)
0001:3F25  55                           push bp
0001:3F26  8B EC                        mov bp, sp
0001:3F28  1E                           push ds
0001:3F29  8E D8                        mov ds, ax
0001:3F2B  33 C0                        xor ax, ax
0001:3F2D  8D 66 FE                     lea sp, [bp - 2]
0001:3F30  1F                           pop ds
0001:3F31  5D                           pop bp
0001:3F32  4D                           dec bp
0001:3F33  CB                           retf

; FUNCTION 0001:3F34 (3 instructions)
0001:3F34  8C D8                        mov ax, ds
0001:3F36  90                           nop
0001:3F37  45                           inc bp

; FUNCTION 0001:3F38 (25 instructions)
0001:3F38  55                           push bp
0001:3F39  8B EC                        mov bp, sp
0001:3F3B  1E                           push ds
0001:3F3C  8E D8                        mov ds, ax
0001:3F3E  57                           push di
0001:3F3F  FF 76 10                     push word ptr [bp + 0x10]
0001:3F42  FF 76 0E                     push word ptr [bp + 0xe]
0001:3F45  FF 76 0C                     push word ptr [bp + 0xc]
0001:3F48  FF 76 0A                     push word ptr [bp + 0xa]
0001:3F4B  E8 B4 C6                     call 0x602
0001:3F4E  83 7E 08 00                  cmp word ptr [bp + 8], 0
0001:3F52  74 07                        je 0x3f5b
0001:3F54  C4 7E 06                     les di, ptr [bp + 6]
0001:3F57  AB                           stosw word ptr es:[di], ax
0001:3F58  8B C2                        mov ax, dx
0001:3F5A  AB                           stosw word ptr es:[di], ax
0001:3F5B  8B C1                        mov ax, cx
0001:3F5D  8B D3                        mov dx, bx
0001:3F5F  32 F6                        xor dh, dh
0001:3F61  5F                           pop di
0001:3F62  8D 66 FE                     lea sp, [bp - 2]
0001:3F65  1F                           pop ds
0001:3F66  5D                           pop bp
0001:3F67  4D                           dec bp
0001:3F68  CA 0C 00                     retf 0xc

; FUNCTION 0001:4033 (13 instructions)
0001:4033  56                           push si
0001:4034  E3 16                        jcxz 0x404c
0001:4036  81 3F 49 44                  cmp word ptr [bx], 0x4449
0001:403A  75 10                        jne 0x404c
0001:403C  83 C3 20                     add bx, 0x20
0001:403F  46                           inc si
0001:4040  36 8A 04                     mov al, byte ptr ss:[si]
0001:4043  D7                           xlatb
0001:4044  36 88 04                     mov byte ptr ss:[si], al
0001:4047  83 C6 02                     add si, 2
0001:404A  E2 F4                        loop 0x4040
0001:404C  5E                           pop si
0001:404D  C3                           ret

; FUNCTION 0001:404E (15 instructions)
0001:404E  2B C0                        sub ax, ax
0001:4050  8A EA                        mov ch, dl
0001:4052  3A DD                        cmp bl, ch
0001:4054  73 02                        jae 0x4058
0001:4056  86 DD                        xchg ch, bl
0001:4058  D1 D0                        rcl ax, 1
0001:405A  3A CD                        cmp cl, ch
0001:405C  73 02                        jae 0x4060
0001:405E  86 CD                        xchg ch, cl
0001:4060  D1 D0                        rcl ax, 1
0001:4062  3A D9                        cmp bl, cl
0001:4064  73 02                        jae 0x4068
0001:4066  86 D9                        xchg cl, bl
0001:4068  D1 D0                        rcl ax, 1
0001:406A  C3                           ret

; FUNCTION 0001:406B (23 instructions)
0001:406B  BE 6C 3F                     mov si, 0x3f6c
0001:406E  55                           push bp
0001:406F  2B FF                        sub di, di
0001:4071  BD 03 00                     mov bp, 3
0001:4074  2B C0                        sub ax, ax
0001:4076  8A C3                        mov al, bl
0001:4078  2E 2B 04                     sub ax, word ptr cs:[si]
0001:407B  2E F7 6C 06                  imul word ptr cs:[si + 6]
0001:407F  46                           inc si
0001:4080  46                           inc si
0001:4081  86 D9                        xchg cl, bl
0001:4083  86 CD                        xchg ch, cl
0001:4085  03 F8                        add di, ax
0001:4087  4D                           dec bp
0001:4088  75 EA                        jne 0x4074
0001:408A  FE C7                        inc bh
0001:408C  83 C6 06                     add si, 6
0001:408F  0B FF                        or di, di
0001:4091  78 DC                        js 0x406f
0001:4093  8A C7                        mov al, bh
0001:4095  48                           dec ax
0001:4096  5D                           pop bp
0001:4097  C3                           ret

; FUNCTION 0001:4098 (30 instructions)
0001:4098  87 DD                        xchg bp, bx
0001:409A  2B FF                        sub di, di
0001:409C  B9 03 00                     mov cx, 3
0001:409F  2E AC                        lodsb al, byte ptr cs:[si]
0001:40A1  29 03                        sub word ptr [bp + di], ax
0001:40A3  47                           inc di
0001:40A4  47                           inc di
0001:40A5  E2 F8                        loop 0x409f
0001:40A7  53                           push bx
0001:40A8  B9 03 00                     mov cx, 3
0001:40AB  51                           push cx
0001:40AC  2B FF                        sub di, di
0001:40AE  2B DB                        sub bx, bx
0001:40B0  B9 03 00                     mov cx, 3
0001:40B3  2E AC                        lodsb al, byte ptr cs:[si]
0001:40B5  F6 2B                        imul byte ptr [bp + di]
0001:40B7  47                           inc di
0001:40B8  47                           inc di
0001:40B9  03 D8                        add bx, ax
0001:40BB  E2 F6                        loop 0x40b3
0001:40BD  59                           pop cx
0001:40BE  D1 EF                        shr di, 1
0001:40C0  2B F9                        sub di, cx
0001:40C2  D1 E7                        shl di, 1
0001:40C4  89 5B 06                     mov word ptr [bp + di + 6], bx
0001:40C7  E2 E2                        loop 0x40ab
0001:40C9  5B                           pop bx
0001:40CA  83 C5 06                     add bp, 6
0001:40CD  87 DD                        xchg bp, bx
0001:40CF  C3                           ret

; FUNCTION 0001:40D0 (34 instructions)
0001:40D0  56                           push si
0001:40D1  8A E8                        mov ch, al
0001:40D3  36 AD                        lodsw ax, word ptr ss:[si]
0001:40D5  8A C4                        mov al, ah
0001:40D7  2E D7                        xlatb
0001:40D9  D0 E8                        shr al, 1
0001:40DB  1A D2                        sbb dl, dl
0001:40DD  D0 E8                        shr al, 1
0001:40DF  1A F6                        sbb dh, dh
0001:40E1  D0 E8                        shr al, 1
0001:40E3  1A E4                        sbb ah, ah
0001:40E5  50                           push ax
0001:40E6  8A C5                        mov al, ch
0001:40E8  D0 E8                        shr al, 1
0001:40EA  73 02                        jae 0x40ee
0001:40EC  86 D6                        xchg dh, dl
0001:40EE  D0 E8                        shr al, 1
0001:40F0  73 02                        jae 0x40f4
0001:40F2  86 F4                        xchg ah, dh
0001:40F4  D0 E8                        shr al, 1
0001:40F6  73 02                        jae 0x40fa
0001:40F8  86 D4                        xchg ah, dl
0001:40FA  D0 EC                        shr ah, 1
0001:40FC  58                           pop ax
0001:40FD  D0 D0                        rcl al, 1
0001:40FF  D0 EE                        shr dh, 1
0001:4101  D0 D0                        rcl al, 1
0001:4103  D0 EA                        shr dl, 1
0001:4105  D0 D0                        rcl al, 1
0001:4107  36 88 44 FF                  mov byte ptr ss:[si - 1], al
0001:410B  FE C9                        dec cl
0001:410D  75 C4                        jne 0x40d3
0001:410F  5E                           pop si
0001:4110  C3                           ret

; FUNCTION 0001:4111 (32 instructions)
0001:4111  2B D2                        sub dx, dx
0001:4113  87 EB                        xchg bx, bp
0001:4115  B8 40 00                     mov ax, 0x40
0001:4118  36 2B 05                     sub ax, word ptr ss:[di]
0001:411B  36 2B 45 02                  sub ax, word ptr ss:[di + 2]
0001:411F  36 2B 45 04                  sub ax, word ptr ss:[di + 4]
0001:4123  8A E0                        mov ah, al
0001:4125  2E AC                        lodsb al, byte ptr cs:[si]
0001:4127  74 08                        je 0x4131
0001:4129  86 C4                        xchg ah, al
0001:412B  89 46 00                     mov word ptr [bp], ax
0001:412E  42                           inc dx
0001:412F  45                           inc bp
0001:4130  45                           inc bp
0001:4131  B9 03 00                     mov cx, 3
0001:4134  36 8A 25                     mov ah, byte ptr ss:[di]
0001:4137  47                           inc di
0001:4138  47                           inc di
0001:4139  2E AC                        lodsb al, byte ptr cs:[si]
0001:413B  0A E4                        or ah, ah
0001:413D  74 08                        je 0x4147
0001:413F  86 C4                        xchg ah, al
0001:4141  89 46 00                     mov word ptr [bp], ax
0001:4144  45                           inc bp
0001:4145  45                           inc bp
0001:4146  42                           inc dx
0001:4147  E2 EB                        loop 0x4134
0001:4149  8B C2                        mov ax, dx
0001:414B  D1 E2                        shl dx, 1
0001:414D  2B EA                        sub bp, dx
0001:414F  87 EB                        xchg bx, bp
0001:4151  C3                           ret

; FUNCTION 0001:4152 (52 instructions)
0001:4152  80 F9 01                     cmp cl, 1
0001:4155  76 59                        jbe 0x41b0
0001:4157  55                           push bp
0001:4158  8B C1                        mov ax, cx
0001:415A  D1 E0                        shl ax, 1
0001:415C  2B E0                        sub sp, ax
0001:415E  8B EC                        mov bp, sp
0001:4160  50                           push ax
0001:4161  8A F1                        mov dh, cl
0001:4163  8B FB                        mov di, bx
0001:4165  51                           push cx
0001:4166  56                           push si
0001:4167  2B DB                        sub bx, bx
0001:4169  8A CE                        mov cl, dh
0001:416B  B2 FF                        mov dl, 0xff
0001:416D  36 AD                        lodsw ax, word ptr ss:[si]
0001:416F  8A C4                        mov al, ah
0001:4171  87 DF                        xchg di, bx
0001:4173  2E D7                        xlatb
0001:4175  87 DF                        xchg di, bx
0001:4177  3A C2                        cmp al, dl
0001:4179  77 04                        ja 0x417f
0001:417B  8A D0                        mov dl, al
0001:417D  8A FB                        mov bh, bl
0001:417F  43                           inc bx
0001:4180  E2 EB                        loop 0x416d
0001:4182  5E                           pop si
0001:4183  8A DF                        mov bl, bh
0001:4185  2A FF                        sub bh, bh
0001:4187  D1 E3                        shl bx, 1
0001:4189  36 8B 00                     mov ax, word ptr ss:[bx + si]
0001:418C  89 46 00                     mov word ptr [bp], ax
0001:418F  43                           inc bx
0001:4190  45                           inc bp
0001:4191  45                           inc bp
0001:4192  36 C6 00 08                  mov byte ptr ss:[bx + si], 8
0001:4196  59                           pop cx
0001:4197  E2 CC                        loop 0x4165
0001:4199  8A CE                        mov cl, dh
0001:419B  5A                           pop dx
0001:419C  2B EA                        sub bp, dx
0001:419E  87 F5                        xchg bp, si
0001:41A0  8B FD                        mov di, bp
0001:41A2  36 AD                        lodsw ax, word ptr ss:[si]
0001:41A4  89 46 00                     mov word ptr [bp], ax
0001:41A7  45                           inc bp
0001:41A8  45                           inc bp
0001:41A9  E2 F7                        loop 0x41a2
0001:41AB  03 E2                        add sp, dx
0001:41AD  5D                           pop bp
0001:41AE  8B F7                        mov si, di
0001:41B0  C3                           ret

; FUNCTION 0001:41B1 (48 instructions)
0001:41B1  55                           push bp
0001:41B2  8B EC                        mov bp, sp
0001:41B4  83 EC 04                     sub sp, 4
0001:41B7  57                           push di
0001:41B8  2B C0                        sub ax, ax
0001:41BA  89 46 FE                     mov word ptr [bp - 2], ax
0001:41BD  C7 46 FC 08 00               mov word ptr [bp - 4], 8
0001:41C2  57                           push di
0001:41C3  52                           push dx
0001:41C4  53                           push bx
0001:41C5  8B 46 FE                     mov ax, word ptr [bp - 2]
0001:41C8  36 02 04                     add al, byte ptr ss:[si]
0001:41CB  89 46 FE                     mov word ptr [bp - 2], ax
0001:41CE  8A E8                        mov ch, al
0001:41D0  46                           inc si
0001:41D1  87 D5                        xchg bp, dx
0001:41D3  8A 66 00                     mov ah, byte ptr [bp]
0001:41D6  B1 08                        mov cl, 8
0001:41D8  2E 38 2F                     cmp byte ptr cs:[bx], ch
0001:41DB  D0 D0                        rcl al, 1
0001:41DD  43                           inc bx
0001:41DE  FE C9                        dec cl
0001:41E0  75 F6                        jne 0x41d8
0001:41E2  88 46 00                     mov byte ptr [bp], al
0001:41E5  45                           inc bp
0001:41E6  32 C4                        xor al, ah
0001:41E8  8A E0                        mov ah, al
0001:41EA  36 8A 04                     mov al, byte ptr ss:[si]
0001:41ED  B1 08                        mov cl, 8
0001:41EF  D0 E4                        shl ah, 1
0001:41F1  73 03                        jae 0x41f6
0001:41F3  36 88 05                     mov byte ptr ss:[di], al
0001:41F6  47                           inc di
0001:41F7  FE C9                        dec cl
0001:41F9  75 F4                        jne 0x41ef
0001:41FB  87 D5                        xchg bp, dx
0001:41FD  FF 4E FC                     dec word ptr [bp - 4]
0001:4200  75 CF                        jne 0x41d1
0001:4202  46                           inc si
0001:4203  5B                           pop bx
0001:4204  5A                           pop dx
0001:4205  5F                           pop di
0001:4206  FF 4E 04                     dec word ptr [bp + 4]
0001:4209  75 B2                        jne 0x41bd
0001:420B  5F                           pop di
0001:420C  8B E5                        mov sp, bp
0001:420E  5D                           pop bp
0001:420F  C2 02 00                     ret 2

; FUNCTION 0001:4212 (3 instructions)
0001:4212  B9 40 00                     mov cx, 0x40
0001:4215  F3 36 A4                     rep movsb byte ptr es:[di], byte ptr ss:[si]
0001:4218  C3                           ret

; FUNCTION 0001:4219 (69 instructions)
0001:4219  55                           push bp
0001:421A  8B EC                        mov bp, sp
0001:421C  83 EC 64                     sub sp, 0x64
0001:421F  8A F4                        mov dh, ah
0001:4221  2A E4                        sub ah, ah
0001:4223  8B D8                        mov bx, ax
0001:4225  8A C6                        mov al, dh
0001:4227  8B C8                        mov cx, ax
0001:4229  8A F4                        mov dh, ah
0001:422B  E8 20 FE                     call 0x404e
0001:422E  88 46 9D                     mov byte ptr [bp - 0x63], al
0001:4231  88 5E 9E                     mov byte ptr [bp - 0x62], bl
0001:4234  89 4E 9F                     mov word ptr [bp - 0x61], cx
0001:4237  2B C0                        sub ax, ax
0001:4239  89 46 EA                     mov word ptr [bp - 0x16], ax
0001:423C  89 46 EC                     mov word ptr [bp - 0x14], ax
0001:423F  89 46 EE                     mov word ptr [bp - 0x12], ax
0001:4242  89 46 F0                     mov word ptr [bp - 0x10], ax
0001:4245  8A 5E 9E                     mov bl, byte ptr [bp - 0x62]
0001:4248  8B 4E 9F                     mov cx, word ptr [bp - 0x61]
0001:424B  2A FF                        sub bh, bh
0001:424D  57                           push di
0001:424E  E8 1A FE                     call 0x406b
0001:4251  C1 E0 04                     shl ax, 4
0001:4254  8B F0                        mov si, ax
0001:4256  81 C6 9C 3F                  add si, 0x3f9c
0001:425A  8A C3                        mov al, bl
0001:425C  D0 E8                        shr al, 1
0001:425E  12 C4                        adc al, ah
0001:4260  D0 E8                        shr al, 1
0001:4262  89 46 F2                     mov word ptr [bp - 0xe], ax
0001:4265  8A C1                        mov al, cl
0001:4267  D0 E8                        shr al, 1
0001:4269  12 C4                        adc al, ah
0001:426B  D0 E8                        shr al, 1
0001:426D  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:4270  8A C5                        mov al, ch
0001:4272  D0 E8                        shr al, 1
0001:4274  12 C4                        adc al, ah
0001:4276  D0 E8                        shr al, 1
0001:4278  89 46 F6                     mov word ptr [bp - 0xa], ax
0001:427B  8D 5E F2                     lea bx, [bp - 0xe]
0001:427E  E8 17 FE                     call 0x4098
0001:4281  8B FB                        mov di, bx
0001:4283  8D 5E E2                     lea bx, [bp - 0x1e]
0001:4286  E8 88 FE                     call 0x4111
0001:4289  89 46 FE                     mov word ptr [bp - 2], ax
0001:428C  8B F3                        mov si, bx
0001:428E  BB DC 3F                     mov bx, 0x3fdc
0001:4291  8B C8                        mov cx, ax
0001:4293  8A 46 9D                     mov al, byte ptr [bp - 0x63]
0001:4296  E8 37 FE                     call 0x40d0
0001:4299  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:429C  BB E3 3F                     mov bx, 0x3fe3
0001:429F  E8 B0 FE                     call 0x4152
0001:42A2  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:42A5  C5 5E 04                     lds bx, ptr [bp + 4]
0001:42A8  E8 88 FD                     call 0x4033
0001:42AB  8D 7E A2                     lea di, [bp - 0x5e]
0001:42AE  8D 56 EA                     lea dx, [bp - 0x16]
0001:42B1  BB F3 3F                     mov bx, 0x3ff3
0001:42B4  FF 76 FE                     push word ptr [bp - 2]
0001:42B7  E8 F7 FE                     call 0x41b1
0001:42BA  8B F7                        mov si, di
0001:42BC  5F                           pop di
0001:42BD  E8 52 FF                     call 0x4212
0001:42C0  8B E5                        mov sp, bp
0001:42C2  5D                           pop bp
0001:42C3  C2 04 00                     ret 4

; FUNCTION 0001:4228 (61 instructions)
0001:4228  C8 8A F4 E8                  enter -0xb76, -0x18
0001:422C  20 FE                        and dh, bh
0001:422E  88 46 9D                     mov byte ptr [bp - 0x63], al
0001:4231  88 5E 9E                     mov byte ptr [bp - 0x62], bl
0001:4234  89 4E 9F                     mov word ptr [bp - 0x61], cx
0001:4237  2B C0                        sub ax, ax
0001:4239  89 46 EA                     mov word ptr [bp - 0x16], ax
0001:423C  89 46 EC                     mov word ptr [bp - 0x14], ax
0001:423F  89 46 EE                     mov word ptr [bp - 0x12], ax
0001:4242  89 46 F0                     mov word ptr [bp - 0x10], ax
0001:4245  8A 5E 9E                     mov bl, byte ptr [bp - 0x62]
0001:4248  8B 4E 9F                     mov cx, word ptr [bp - 0x61]
0001:424B  2A FF                        sub bh, bh
0001:424D  57                           push di
0001:424E  E8 1A FE                     call 0x406b
0001:4251  C1 E0 04                     shl ax, 4
0001:4254  8B F0                        mov si, ax
0001:4256  81 C6 9C 3F                  add si, 0x3f9c
0001:425A  8A C3                        mov al, bl
0001:425C  D0 E8                        shr al, 1
0001:425E  12 C4                        adc al, ah
0001:4260  D0 E8                        shr al, 1
0001:4262  89 46 F2                     mov word ptr [bp - 0xe], ax
0001:4265  8A C1                        mov al, cl
0001:4267  D0 E8                        shr al, 1
0001:4269  12 C4                        adc al, ah
0001:426B  D0 E8                        shr al, 1
0001:426D  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:4270  8A C5                        mov al, ch
0001:4272  D0 E8                        shr al, 1
0001:4274  12 C4                        adc al, ah
0001:4276  D0 E8                        shr al, 1
0001:4278  89 46 F6                     mov word ptr [bp - 0xa], ax
0001:427B  8D 5E F2                     lea bx, [bp - 0xe]
0001:427E  E8 17 FE                     call 0x4098
0001:4281  8B FB                        mov di, bx
0001:4283  8D 5E E2                     lea bx, [bp - 0x1e]
0001:4286  E8 88 FE                     call 0x4111
0001:4289  89 46 FE                     mov word ptr [bp - 2], ax
0001:428C  8B F3                        mov si, bx
0001:428E  BB DC 3F                     mov bx, 0x3fdc
0001:4291  8B C8                        mov cx, ax
0001:4293  8A 46 9D                     mov al, byte ptr [bp - 0x63]
0001:4296  E8 37 FE                     call 0x40d0
0001:4299  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:429C  BB E3 3F                     mov bx, 0x3fe3
0001:429F  E8 B0 FE                     call 0x4152
0001:42A2  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:42A5  C5 5E 04                     lds bx, ptr [bp + 4]
0001:42A8  E8 88 FD                     call 0x4033
0001:42AB  8D 7E A2                     lea di, [bp - 0x5e]
0001:42AE  8D 56 EA                     lea dx, [bp - 0x16]
0001:42B1  BB F3 3F                     mov bx, 0x3ff3
0001:42B4  FF 76 FE                     push word ptr [bp - 2]
0001:42B7  E8 F7 FE                     call 0x41b1
0001:42BA  8B F7                        mov si, di
0001:42BC  5F                           pop di
0001:42BD  E8 52 FF                     call 0x4212
0001:42C0  8B E5                        mov sp, bp
0001:42C2  5D                           pop bp
0001:42C3  C2 04 00                     ret 4

; FUNCTION 0001:4292 (19 instructions)
0001:4292  C8 8A 46 9D                  enter 0x468a, -0x63
0001:4296  E8 37 FE                     call 0x40d0
0001:4299  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:429C  BB E3 3F                     mov bx, 0x3fe3
0001:429F  E8 B0 FE                     call 0x4152
0001:42A2  8B 4E FE                     mov cx, word ptr [bp - 2]
0001:42A5  C5 5E 04                     lds bx, ptr [bp + 4]
0001:42A8  E8 88 FD                     call 0x4033
0001:42AB  8D 7E A2                     lea di, [bp - 0x5e]
0001:42AE  8D 56 EA                     lea dx, [bp - 0x16]
0001:42B1  BB F3 3F                     mov bx, 0x3ff3
0001:42B4  FF 76 FE                     push word ptr [bp - 2]
0001:42B7  E8 F7 FE                     call 0x41b1
0001:42BA  8B F7                        mov si, di
0001:42BC  5F                           pop di
0001:42BD  E8 52 FF                     call 0x4212
0001:42C0  8B E5                        mov sp, bp
0001:42C2  5D                           pop bp
0001:42C3  C2 04 00                     ret 4

; FUNCTION 0001:42C7 (15 instructions)
0001:42C7  55                           push bp
0001:42C8  8B EC                        mov bp, sp
0001:42CA  1E                           push ds
0001:42CB  FF 76 10                     push word ptr [bp + 0x10]
0001:42CE  FF 76 0E                     push word ptr [bp + 0xe]
0001:42D1  FF 76 0C                     push word ptr [bp + 0xc]
0001:42D4  FF 76 0A                     push word ptr [bp + 0xa]
0001:42D7  FF 76 08                     push word ptr [bp + 8]
0001:42DA  FF 76 06                     push word ptr [bp + 6]
0001:42DD  E8 09 00                     call 0x42e9
0001:42E0  8D 66 FE                     lea sp, [bp - 2]
0001:42E3  1F                           pop ds
0001:42E4  5D                           pop bp
0001:42E5  4D                           dec bp
0001:42E6  CA 0C 00                     retf 0xc

; FUNCTION 0001:42E9 (88 instructions)
0001:42E9  55                           push bp
0001:42EA  8B EC                        mov bp, sp
0001:42EC  56                           push si
0001:42ED  57                           push di
0001:42EE  1E                           push ds
0001:42EF  C4 7E 0C                     les di, ptr [bp + 0xc]
0001:42F2  8B 46 08                     mov ax, word ptr [bp + 8]
0001:42F5  0B 46 0A                     or ax, word ptr [bp + 0xa]
0001:42F8  74 2B                        je 0x4325
0001:42FA  C5 76 08                     lds si, ptr [bp + 8]
0001:42FD  83 3C 28                     cmp word ptr [si], 0x28
0001:4300  75 1E                        jne 0x4320
0001:4302  83 7C 0C 01                  cmp word ptr [si + 0xc], 1
0001:4306  75 18                        jne 0x4320
0001:4308  83 7C 10 00                  cmp word ptr [si + 0x10], 0
0001:430C  75 12                        jne 0x4320
0001:430E  83 7C 0E 08                  cmp word ptr [si + 0xe], 8
0001:4312  74 43                        je 0x4357
0001:4314  83 7C 0E 04                  cmp word ptr [si + 0xe], 4
0001:4318  74 3D                        je 0x4357
0001:431A  83 7C 0E 01                  cmp word ptr [si + 0xe], 1
0001:431E  74 37                        je 0x4357
0001:4320  33 C0                        xor ax, ax
0001:4322  E9 B7 00                     jmp 0x43dc
0001:4325  33 C0                        xor ax, ax
0001:4327  26 C7 05 49 44               mov word ptr es:[di], 0x4449
0001:432C  26 89 45 02                  mov word ptr es:[di + 2], ax
0001:4330  26 89 45 04                  mov word ptr es:[di + 4], ax
0001:4334  26 89 45 06                  mov word ptr es:[di + 6], ax
0001:4338  26 89 45 0C                  mov word ptr es:[di + 0xc], ax
0001:433C  26 89 45 0A                  mov word ptr es:[di + 0xa], ax
0001:4340  26 89 45 1E                  mov word ptr es:[di + 0x1e], ax
0001:4344  26 89 45 1C                  mov word ptr es:[di + 0x1c], ax
0001:4348  26 39 45 08                  cmp word ptr es:[di + 8], ax
0001:434C  75 06                        jne 0x4354
0001:434E  26 C7 45 08 01 08            mov word ptr es:[di + 8], 0x801
0001:4354  E9 82 00                     jmp 0x43d9
0001:4357  8B 44 04                     mov ax, word ptr [si + 4]
0001:435A  8B 5C 08                     mov bx, word ptr [si + 8]
0001:435D  8B 4C 0E                     mov cx, word ptr [si + 0xe]
0001:4360  8B 54 0C                     mov dx, word ptr [si + 0xc]
0001:4363  26 C7 05 49 44               mov word ptr es:[di], 0x4449
0001:4368  26 89 45 02                  mov word ptr es:[di + 2], ax
0001:436C  26 89 5D 04                  mov word ptr es:[di + 4], bx
0001:4370  26 88 55 08                  mov byte ptr es:[di + 8], dl
0001:4374  26 88 4D 09                  mov byte ptr es:[di + 9], cl
0001:4378  F7 E1                        mul cx
0001:437A  05 1F 00                     add ax, 0x1f
0001:437D  25 E0 FF                     and ax, 0xffe0
0001:4380  C1 E8 03                     shr ax, 3
0001:4383  26 89 45 06                  mov word ptr es:[di + 6], ax
0001:4387  8B 46 04                     mov ax, word ptr [bp + 4]
0001:438A  8B 56 06                     mov dx, word ptr [bp + 6]
0001:438D  0B D2                        or dx, dx
0001:438F  75 1B                        jne 0x43ac
0001:4391  8B 44 20                     mov ax, word ptr [si + 0x20]
0001:4394  0B C0                        or ax, ax
0001:4396  75 0B                        jne 0x43a3
0001:4398  8B 4C 0E                     mov cx, word ptr [si + 0xe]
0001:439B  83 F9 18                     cmp cx, 0x18
0001:439E  74 03                        je 0x43a3
0001:43A0  40                           inc ax
0001:43A1  D3 E0                        shl ax, cl
0001:43A3  C1 E0 02                     shl ax, 2
0001:43A6  8C DA                        mov dx, ds
0001:43A8  03 C6                        add ax, si
0001:43AA  03 04                        add ax, word ptr [si]
0001:43AC  26 89 55 0C                  mov word ptr es:[di + 0xc], dx
0001:43B0  26 89 45 0A                  mov word ptr es:[di + 0xa], ax
0001:43B4  8B D8                        mov bx, ax
0001:43B6  26 8B 45 06                  mov ax, word ptr es:[di + 6]
0001:43BA  26 F7 65 04                  mul word ptr es:[di + 4]
0001:43BE  03 C3                        add ax, bx
0001:43C0  83 D2 00                     adc dx, 0
0001:43C3  74 07                        je 0x43cc
0001:43C5  B8 FF FF                     mov ax, 0xffff
0001:43C8  26 89 45 16                  mov word ptr es:[di + 0x16], ax
0001:43CC  8C DA                        mov dx, ds
0001:43CE  26 89 55 1E                  mov word ptr es:[di + 0x1e], dx
0001:43D2  26 89 75 1C                  mov word ptr es:[di + 0x1c], si
0001:43D6  E8 0C 00                     call 0x43e5
0001:43D9  B8 01 00                     mov ax, 1
0001:43DC  1F                           pop ds
0001:43DD  5F                           pop di
0001:43DE  5E                           pop si
0001:43DF  8B E5                        mov sp, bp
0001:43E1  5D                           pop bp
0001:43E2  C2 0C 00                     ret 0xc

; FUNCTION 0001:43E5 (26 instructions)
0001:43E5  56                           push si
0001:43E6  57                           push di
0001:43E7  55                           push bp
0001:43E8  8B 4C 20                     mov cx, word ptr [si + 0x20]
0001:43EB  0B C9                        or cx, cx
0001:43ED  75 0A                        jne 0x43f9
0001:43EF  B8 01 00                     mov ax, 1
0001:43F2  8A 4C 0E                     mov cl, byte ptr [si + 0xe]
0001:43F5  D3 E0                        shl ax, cl
0001:43F7  8B C8                        mov cx, ax
0001:43F9  03 34                        add si, word ptr [si]
0001:43FB  83 C7 20                     add di, 0x20
0001:43FE  8D 1E C2 05                  lea bx, [0x5c2]
0001:4402  BD 10 00                     mov bp, 0x10
0001:4405  2E 8B 07                     mov ax, word ptr cs:[bx]
0001:4408  2E 8B 57 02                  mov dx, word ptr cs:[bx + 2]
0001:440C  86 D0                        xchg al, dl
0001:440E  E8 4B C3                     call 0x75c
0001:4411  AA                           stosb byte ptr es:[di], al
0001:4412  83 C3 04                     add bx, 4
0001:4415  4D                           dec bp
0001:4416  75 ED                        jne 0x4405
0001:4418  5D                           pop bp
0001:4419  5F                           pop di
0001:441A  5E                           pop si
0001:441B  C3                           ret

; FUNCTION 0001:43F8 (1 instructions)
0001:43F8  C8 03 34 83                  enter 0x3403, -0x7d

; FUNCTION 0001:441C (21 instructions)
0001:441C  26 8A 4D 09                  mov cl, byte ptr es:[di + 9]
0001:4420  80 F9 08                     cmp cl, 8
0001:4423  74 0A                        je 0x442f
0001:4425  D1 EB                        shr bx, 1
0001:4427  80 F9 04                     cmp cl, 4
0001:442A  74 03                        je 0x442f
0001:442C  C1 EB 02                     shr bx, 2
0001:442F  26 2B 45 04                  sub ax, word ptr es:[di + 4]
0001:4433  F7 D0                        not ax
0001:4435  26 03 5D 0A                  add bx, word ptr es:[di + 0xa]
0001:4439  26 F7 6D 06                  imul word ptr es:[di + 6]
0001:443D  03 C3                        add ax, bx
0001:443F  83 D2 00                     adc dx, 0
0001:4442  26 8B 5D 0C                  mov bx, word ptr es:[di + 0xc]
0001:4446  53                           push bx
0001:4447  52                           push dx
0001:4448  50                           push ax
0001:4449  9A 0B 45 FF 3E               lcall 0x3eff, 0x450b
0001:444E  8B F8                        mov di, ax
0001:4450  8E C2                        mov es, dx
0001:4452  C3                           ret

; FUNCTION 0001:4474 (6 instructions)
0001:4474  4C                           dec sp
0001:4475  44                           inc sp
0001:4476  EB 09                        jmp 0x4481
0001:4481  8B F8                        mov di, ax
0001:4483  8E C2                        mov es, dx
0001:4485  C3                           ret

; FUNCTION 0001:44AF (34 instructions)
0001:44AF  55                           push bp
0001:44B0  8B EC                        mov bp, sp
0001:44B2  1E                           push ds
0001:44B3  53                           push bx
0001:44B4  51                           push cx
0001:44B5  56                           push si
0001:44B6  57                           push di
0001:44B7  06                           push es
0001:44B8  8B 76 0C                     mov si, word ptr [bp + 0xc]
0001:44BB  56                           push si
0001:44BC  9A FF FF 00 00               lcall 0, 0xffff
0001:44C1  03 46 0A                     add ax, word ptr [bp + 0xa]
0001:44C4  83 D2 00                     adc dx, 0
0001:44C7  03 46 06                     add ax, word ptr [bp + 6]
0001:44CA  13 56 08                     adc dx, word ptr [bp + 8]
0001:44CD  50                           push ax
0001:44CE  25 F0 FF                     and ax, 0xfff0
0001:44D1  56                           push si
0001:44D2  52                           push dx
0001:44D3  50                           push ax
0001:44D4  9A FF FF 00 00               lcall 0, 0xffff
0001:44D9  58                           pop ax
0001:44DA  25 0F 00                     and ax, 0xf
0001:44DD  8B D6                        mov dx, si
0001:44DF  07                           pop es
0001:44E0  5F                           pop di
0001:44E1  5E                           pop si
0001:44E2  59                           pop cx
0001:44E3  5B                           pop bx
0001:44E4  8D 66 FE                     lea sp, [bp - 2]
0001:44E7  1F                           pop ds
0001:44E8  5D                           pop bp
0001:44E9  4D                           dec bp
0001:44EA  CA 08 00                     retf 8

; FUNCTION 0001:44ED (14 instructions)
0001:44ED  55                           push bp
0001:44EE  8B EC                        mov bp, sp
0001:44F0  06                           push es
0001:44F1  8B 46 06                     mov ax, word ptr [bp + 6]
0001:44F4  FF 76 04                     push word ptr [bp + 4]
0001:44F7  50                           push ax
0001:44F8  50                           push ax
0001:44F9  50                           push ax
0001:44FA  9A E4 3B 00 00               lcall 0, 0x3be4
0001:44FF  9A FB 44 00 00               lcall 0, 0x44fb
0001:4504  07                           pop es
0001:4505  8B E5                        mov sp, bp
0001:4507  5D                           pop bp
0001:4508  C2 04 00                     ret 4

; FUNCTION 0001:450C (23 instructions)
0001:450C  55                           push bp
0001:450D  8B EC                        mov bp, sp
0001:450F  1E                           push ds
0001:4510  06                           push es
0001:4511  B8 10 11                     mov ax, 0x1110
0001:4514  8E D8                        mov ds, ax
0001:4516  FF 76 0A                     push word ptr [bp + 0xa]
0001:4519  9A BD 44 00 00               lcall 0, 0x44bd
0001:451E  03 46 06                     add ax, word ptr [bp + 6]
0001:4521  13 56 08                     adc dx, word ptr [bp + 8]
0001:4524  8B 1E 07 00                  mov bx, word ptr [7]
0001:4528  53                           push bx
0001:4529  52                           push dx
0001:452A  50                           push ax
0001:452B  9A D5 44 00 00               lcall 0, 0x44d5
0001:4530  33 C0                        xor ax, ax
0001:4532  8B 16 07 00                  mov dx, word ptr [7]
0001:4536  07                           pop es
0001:4537  8D 66 FE                     lea sp, [bp - 2]
0001:453A  1F                           pop ds
0001:453B  5D                           pop bp
0001:453C  4D                           dec bp
0001:453D  CA 06 00                     retf 6

; FUNCTION 0001:4541 (8 instructions)
0001:4541  55                           push bp
0001:4542  8B EC                        mov bp, sp
0001:4544  1E                           push ds
0001:4545  8D 66 FE                     lea sp, [bp - 2]
0001:4548  1F                           pop ds
0001:4549  5D                           pop bp
0001:454A  4D                           dec bp
0001:454B  CA 02 00                     retf 2

; FUNCTION 0001:454E (3 instructions)
0001:454E  8C D8                        mov ax, ds
0001:4550  90                           nop
0001:4551  45                           inc bp

; FUNCTION 0001:4552 (42 instructions)
0001:4552  55                           push bp
0001:4553  8B EC                        mov bp, sp
0001:4555  1E                           push ds
0001:4556  8E D8                        mov ds, ax
0001:4558  56                           push si
0001:4559  57                           push di
0001:455A  C5 76 0A                     lds si, ptr [bp + 0xa]
0001:455D  8B 4C 04                     mov cx, word ptr [si + 4]
0001:4560  8B 54 08                     mov dx, word ptr [si + 8]
0001:4563  8B 5E 1E                     mov bx, word ptr [bp + 0x1e]
0001:4566  03 DA                        add bx, dx
0001:4568  2B 5E 1C                     sub bx, word ptr [bp + 0x1c]
0001:456B  2B 5E 1A                     sub bx, word ptr [bp + 0x1a]
0001:456E  33 C0                        xor ax, ax
0001:4570  FF 76 24                     push word ptr [bp + 0x24]
0001:4573  FF 76 22                     push word ptr [bp + 0x22]
0001:4576  FF 76 20                     push word ptr [bp + 0x20]
0001:4579  53                           push bx
0001:457A  1E                           push ds
0001:457B  56                           push si
0001:457C  FF 76 10                     push word ptr [bp + 0x10]
0001:457F  FF 76 0E                     push word ptr [bp + 0xe]
0001:4582  50                           push ax
0001:4583  50                           push ax
0001:4584  51                           push cx
0001:4585  FF 76 1A                     push word ptr [bp + 0x1a]
0001:4588  68 CC 00                     push 0xcc
0001:458B  6A 20                        push 0x20
0001:458D  50                           push ax
0001:458E  50                           push ax
0001:458F  FF 76 14                     push word ptr [bp + 0x14]
0001:4592  FF 76 12                     push word ptr [bp + 0x12]
0001:4595  FF 76 18                     push word ptr [bp + 0x18]
0001:4598  FF 76 16                     push word ptr [bp + 0x16]
0001:459B  E8 0B 00                     call 0x45a9
0001:459E  5F                           pop di
0001:459F  5E                           pop si
0001:45A0  8D 66 FE                     lea sp, [bp - 2]
0001:45A3  1F                           pop ds
0001:45A4  5D                           pop bp
0001:45A5  4D                           dec bp
0001:45A6  CA 20 00                     retf 0x20

; FUNCTION 0001:45A9 (69 instructions)
0001:45A9  55                           push bp
0001:45AA  8B EC                        mov bp, sp
0001:45AC  83 EC 30                     sub sp, 0x30
0001:45AF  56                           push si
0001:45B0  57                           push di
0001:45B1  1E                           push ds
0001:45B2  C5 76 20                     lds si, ptr [bp + 0x20]
0001:45B5  F6 44 10 03                  test byte ptr [si + 0x10], 3
0001:45B9  74 24                        je 0x45df
0001:45BB  FF 76 2A                     push word ptr [bp + 0x2a]
0001:45BE  FF 76 28                     push word ptr [bp + 0x28]
0001:45C1  FF 76 26                     push word ptr [bp + 0x26]
0001:45C4  FF 76 24                     push word ptr [bp + 0x24]
0001:45C7  FF 76 1E                     push word ptr [bp + 0x1e]
0001:45CA  FF 76 1C                     push word ptr [bp + 0x1c]
0001:45CD  FF 76 22                     push word ptr [bp + 0x22]
0001:45D0  FF 76 20                     push word ptr [bp + 0x20]
0001:45D3  FF 76 06                     push word ptr [bp + 6]
0001:45D6  FF 76 04                     push word ptr [bp + 4]
0001:45D9  E8 C8 01                     call 0x47a4
0001:45DC  EB 67                        jmp 0x4645
0001:45DF  E8 6E 00                     call 0x4650
0001:45E2  72 61                        jb 0x4645
0001:45E4  8D 5E D0                     lea bx, [bp - 0x30]
0001:45E7  16                           push ss
0001:45E8  53                           push bx
0001:45E9  FF 76 22                     push word ptr [bp + 0x22]
0001:45EC  FF 76 20                     push word ptr [bp + 0x20]
0001:45EF  FF 76 1E                     push word ptr [bp + 0x1e]
0001:45F2  FF 76 1C                     push word ptr [bp + 0x1c]
0001:45F5  E8 F1 FC                     call 0x42e9
0001:45F8  0B C0                        or ax, ax
0001:45FA  74 49                        je 0x4645
0001:45FC  8B 5E D4                     mov bx, word ptr [bp - 0x2c]
0001:45FF  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:4602  2B 5E 14                     sub bx, word ptr [bp + 0x14]
0001:4605  8D 46 D0                     lea ax, [bp - 0x30]
0001:4608  FF 76 2A                     push word ptr [bp + 0x2a]
0001:460B  FF 76 28                     push word ptr [bp + 0x28]
0001:460E  FF 76 26                     push word ptr [bp + 0x26]
0001:4611  FF 76 24                     push word ptr [bp + 0x24]
0001:4614  16                           push ss
0001:4615  50                           push ax
0001:4616  FF 76 1A                     push word ptr [bp + 0x1a]
0001:4619  53                           push bx
0001:461A  FF 76 16                     push word ptr [bp + 0x16]
0001:461D  FF 76 14                     push word ptr [bp + 0x14]
0001:4620  FF 76 12                     push word ptr [bp + 0x12]
0001:4623  FF 76 10                     push word ptr [bp + 0x10]
0001:4626  FF 76 0E                     push word ptr [bp + 0xe]
0001:4629  FF 76 0C                     push word ptr [bp + 0xc]
0001:462C  FF 76 0A                     push word ptr [bp + 0xa]
0001:462F  FF 76 08                     push word ptr [bp + 8]
0001:4632  9A 54 39 74 44               lcall 0x4474, 0x3954
0001:4637  8D 5E D0                     lea bx, [bp - 0x30]
0001:463A  33 C0                        xor ax, ax
0001:463C  16                           push ss
0001:463D  53                           push bx
0001:463E  50                           push ax
0001:463F  50                           push ax
0001:4640  50                           push ax
0001:4641  50                           push ax
0001:4642  E8 A4 FC                     call 0x42e9
0001:4645  1F                           pop ds
0001:4646  5F                           pop di
0001:4647  5E                           pop si
0001:4648  8B E5                        mov sp, bp
0001:464A  5D                           pop bp
0001:464B  C2 28 00                     ret 0x28

; FUNCTION 0001:45DA (50 instructions)
0001:45DA  C8 01 EB 67                  enter -0x14ff, 0x67
0001:45DE  90                           nop
0001:45DF  E8 6E 00                     call 0x4650
0001:45E2  72 61                        jb 0x4645
0001:45E4  8D 5E D0                     lea bx, [bp - 0x30]
0001:45E7  16                           push ss
0001:45E8  53                           push bx
0001:45E9  FF 76 22                     push word ptr [bp + 0x22]
0001:45EC  FF 76 20                     push word ptr [bp + 0x20]
0001:45EF  FF 76 1E                     push word ptr [bp + 0x1e]
0001:45F2  FF 76 1C                     push word ptr [bp + 0x1c]
0001:45F5  E8 F1 FC                     call 0x42e9
0001:45F8  0B C0                        or ax, ax
0001:45FA  74 49                        je 0x4645
0001:45FC  8B 5E D4                     mov bx, word ptr [bp - 0x2c]
0001:45FF  2B 5E 18                     sub bx, word ptr [bp + 0x18]
0001:4602  2B 5E 14                     sub bx, word ptr [bp + 0x14]
0001:4605  8D 46 D0                     lea ax, [bp - 0x30]
0001:4608  FF 76 2A                     push word ptr [bp + 0x2a]
0001:460B  FF 76 28                     push word ptr [bp + 0x28]
0001:460E  FF 76 26                     push word ptr [bp + 0x26]
0001:4611  FF 76 24                     push word ptr [bp + 0x24]
0001:4614  16                           push ss
0001:4615  50                           push ax
0001:4616  FF 76 1A                     push word ptr [bp + 0x1a]
0001:4619  53                           push bx
0001:461A  FF 76 16                     push word ptr [bp + 0x16]
0001:461D  FF 76 14                     push word ptr [bp + 0x14]
0001:4620  FF 76 12                     push word ptr [bp + 0x12]
0001:4623  FF 76 10                     push word ptr [bp + 0x10]
0001:4626  FF 76 0E                     push word ptr [bp + 0xe]
0001:4629  FF 76 0C                     push word ptr [bp + 0xc]
0001:462C  FF 76 0A                     push word ptr [bp + 0xa]
0001:462F  FF 76 08                     push word ptr [bp + 8]
0001:4632  9A 54 39 74 44               lcall 0x4474, 0x3954
0001:4637  8D 5E D0                     lea bx, [bp - 0x30]
0001:463A  33 C0                        xor ax, ax
0001:463C  16                           push ss
0001:463D  53                           push bx
0001:463E  50                           push ax
0001:463F  50                           push ax
0001:4640  50                           push ax
0001:4641  50                           push ax
0001:4642  E8 A4 FC                     call 0x42e9
0001:4645  1F                           pop ds
0001:4646  5F                           pop di
0001:4647  5E                           pop si
0001:4648  8B E5                        mov sp, bp
0001:464A  5D                           pop bp
0001:464B  C2 28 00                     ret 0x28

; FUNCTION 0001:4650 (77 instructions)
0001:464E  F9                           stc
0001:464F  C3                           ret
0001:4650  C5 5E 04                     lds bx, ptr [bp + 4]
0001:4653  8C D8                        mov ax, ds
0001:4655  0B C3                        or ax, bx
0001:4657  74 F5                        je 0x464e
0001:4659  C4 7E 28                     les di, ptr [bp + 0x28]
0001:465C  8B 07                        mov ax, word ptr [bx]
0001:465E  99                           cdq
0001:465F  F7 D2                        not dx
0001:4661  23 C2                        and ax, dx
0001:4663  89 07                        mov word ptr [bx], ax
0001:4665  8B 47 02                     mov ax, word ptr [bx + 2]
0001:4668  99                           cdq
0001:4669  F7 D2                        not dx
0001:466B  23 C2                        and ax, dx
0001:466D  89 47 02                     mov word ptr [bx + 2], ax
0001:4670  26 8B 4D 02                  mov cx, word ptr es:[di + 2]
0001:4674  8B 47 04                     mov ax, word ptr [bx + 4]
0001:4677  2B C1                        sub ax, cx
0001:4679  99                           cdq
0001:467A  23 C2                        and ax, dx
0001:467C  03 C1                        add ax, cx
0001:467E  89 47 04                     mov word ptr [bx + 4], ax
0001:4681  26 8B 4D 04                  mov cx, word ptr es:[di + 4]
0001:4685  8B 47 06                     mov ax, word ptr [bx + 6]
0001:4688  2B C1                        sub ax, cx
0001:468A  99                           cdq
0001:468B  23 C2                        and ax, dx
0001:468D  03 C1                        add ax, cx
0001:468F  89 47 06                     mov word ptr [bx + 6], ax
0001:4692  8B 76 24                     mov si, word ptr [bp + 0x24]
0001:4695  8B 7E 14                     mov di, word ptr [bp + 0x14]
0001:4698  8B 47 02                     mov ax, word ptr [bx + 2]
0001:469B  2B C6                        sub ax, si
0001:469D  99                           cdq
0001:469E  F7 D2                        not dx
0001:46A0  23 C2                        and ax, dx
0001:46A2  03 F0                        add si, ax
0001:46A4  2B F8                        sub di, ax
0001:46A6  7E 49                        jle 0x46f1
0001:46A8  8B C6                        mov ax, si
0001:46AA  03 C7                        add ax, di
0001:46AC  2B 47 06                     sub ax, word ptr [bx + 6]
0001:46AF  99                           cdq
0001:46B0  F7 D2                        not dx
0001:46B2  23 C2                        and ax, dx
0001:46B4  01 46 18                     add word ptr [bp + 0x18], ax
0001:46B7  2B F8                        sub di, ax
0001:46B9  7E 36                        jle 0x46f1
0001:46BB  89 76 24                     mov word ptr [bp + 0x24], si
0001:46BE  89 7E 14                     mov word ptr [bp + 0x14], di
0001:46C1  8B 76 26                     mov si, word ptr [bp + 0x26]
0001:46C4  8B 7E 16                     mov di, word ptr [bp + 0x16]
0001:46C7  8B 07                        mov ax, word ptr [bx]
0001:46C9  2B C6                        sub ax, si
0001:46CB  99                           cdq
0001:46CC  F7 D2                        not dx
0001:46CE  23 C2                        and ax, dx
0001:46D0  01 46 1A                     add word ptr [bp + 0x1a], ax
0001:46D3  03 F0                        add si, ax
0001:46D5  2B F8                        sub di, ax
0001:46D7  7E 18                        jle 0x46f1
0001:46D9  8B C6                        mov ax, si
0001:46DB  03 C7                        add ax, di
0001:46DD  2B 47 04                     sub ax, word ptr [bx + 4]
0001:46E0  99                           cdq
0001:46E1  F7 D2                        not dx
0001:46E3  23 C2                        and ax, dx
0001:46E5  2B F8                        sub di, ax
0001:46E7  7E 08                        jle 0x46f1
0001:46E9  89 76 26                     mov word ptr [bp + 0x26], si
0001:46EC  89 7E 16                     mov word ptr [bp + 0x16], di
0001:46EF  F8                           clc
0001:46F0  C3                           ret
0001:46F1  F9                           stc
0001:46F2  C3                           ret

; FUNCTION 0001:46F3 (3 instructions)
0001:46F3  8C D8                        mov ax, ds
0001:46F5  90                           nop
0001:46F6  45                           inc bp

; FUNCTION 0001:46F7 (47 instructions)
0001:46F7  55                           push bp
0001:46F8  8B EC                        mov bp, sp
0001:46FA  1E                           push ds
0001:46FB  8E D8                        mov ds, ax
0001:46FD  83 7E 32 01                  cmp word ptr [bp + 0x32], 1
0001:4701  74 5F                        je 0x4762
0001:4703  8B 46 22                     mov ax, word ptr [bp + 0x22]
0001:4706  3B 46 2A                     cmp ax, word ptr [bp + 0x2a]
0001:4709  75 5C                        jne 0x4767
0001:470B  78 5A                        js 0x4767
0001:470D  8B 46 24                     mov ax, word ptr [bp + 0x24]
0001:4710  3B 46 2C                     cmp ax, word ptr [bp + 0x2c]
0001:4713  75 52                        jne 0x4767
0001:4715  78 50                        js 0x4767
0001:4717  C4 5E 1A                     les bx, ptr [bp + 0x1a]
0001:471A  26 83 7F 10 00               cmp word ptr es:[bx + 0x10], 0
0001:471F  75 41                        jne 0x4762
0001:4721  FF 76 36                     push word ptr [bp + 0x36]
0001:4724  FF 76 34                     push word ptr [bp + 0x34]
0001:4727  FF 76 30                     push word ptr [bp + 0x30]
0001:472A  FF 76 2E                     push word ptr [bp + 0x2e]
0001:472D  FF 76 1C                     push word ptr [bp + 0x1c]
0001:4730  FF 76 1A                     push word ptr [bp + 0x1a]
0001:4733  FF 76 20                     push word ptr [bp + 0x20]
0001:4736  FF 76 1E                     push word ptr [bp + 0x1e]
0001:4739  FF 76 28                     push word ptr [bp + 0x28]
0001:473C  FF 76 26                     push word ptr [bp + 0x26]
0001:473F  FF 76 24                     push word ptr [bp + 0x24]
0001:4742  FF 76 22                     push word ptr [bp + 0x22]
0001:4745  FF 76 14                     push word ptr [bp + 0x14]
0001:4748  FF 76 12                     push word ptr [bp + 0x12]
0001:474B  FF 76 10                     push word ptr [bp + 0x10]
0001:474E  FF 76 0E                     push word ptr [bp + 0xe]
0001:4751  FF 76 0C                     push word ptr [bp + 0xc]
0001:4754  FF 76 0A                     push word ptr [bp + 0xa]
0001:4757  FF 76 08                     push word ptr [bp + 8]
0001:475A  FF 76 06                     push word ptr [bp + 6]
0001:475D  E8 49 FE                     call 0x45a9
0001:4760  EB 08                        jmp 0x476a
0001:4762  B8 FF FF                     mov ax, 0xffff
0001:4765  EB 03                        jmp 0x476a
0001:4767  B8 FF FF                     mov ax, 0xffff
0001:476A  8D 66 FE                     lea sp, [bp - 2]
0001:476D  1F                           pop ds
0001:476E  5D                           pop bp
0001:476F  4D                           dec bp
0001:4770  CA 32 00                     retf 0x32

; FUNCTION 0001:47A4 (89 instructions)
0001:47A4  55                           push bp
0001:47A5  8B EC                        mov bp, sp
0001:47A7  81 EC 1C 01                  sub sp, 0x11c
0001:47AB  56                           push si
0001:47AC  57                           push di
0001:47AD  06                           push es
0001:47AE  1E                           push ds
0001:47AF  FC                           cld
0001:47B0  E8 BC 00                     call 0x486f
0001:47B3  73 03                        jae 0x47b8
0001:47B5  E9 A4 00                     jmp 0x485c
0001:47B8  AD                           lodsw ax, word ptr [si]
0001:47B9  0B F6                        or si, si
0001:47BB  75 08                        jne 0x47c5
0001:47BD  8C D9                        mov cx, ds
0001:47BF  81 C1 C6 43                  add cx, 0x43c6
0001:47C3  8E D9                        mov ds, cx
0001:47C5  0A C0                        or al, al
0001:47C7  74 0B                        je 0x47d4
0001:47C9  32 ED                        xor ch, ch
0001:47CB  8A C8                        mov cl, al
0001:47CD  8A C4                        mov al, ah
0001:47CF  FF 56 F6                     call word ptr [bp - 0xa]
0001:47D2  EB E4                        jmp 0x47b8
0001:47D4  3A E0                        cmp ah, al
0001:47D6  74 67                        je 0x483f
0001:47D8  FE C0                        inc al
0001:47DA  3A E0                        cmp ah, al
0001:47DC  74 7B                        je 0x4859
0001:47DE  FE C0                        inc al
0001:47E0  3A E0                        cmp ah, al
0001:47E2  74 1D                        je 0x4801
0001:47E4  32 ED                        xor ch, ch
0001:47E6  8A CC                        mov cl, ah
0001:47E8  FF 56 F8                     call word ptr [bp - 8]
0001:47EB  F7 C6 01 00                  test si, 1
0001:47EF  74 C7                        je 0x47b8
0001:47F1  4E                           dec si
0001:47F2  AD                           lodsw ax, word ptr [si]
0001:47F3  0B F6                        or si, si
0001:47F5  75 08                        jne 0x47ff
0001:47F7  8C D9                        mov cx, ds
0001:47F9  81 C1 C1 47                  add cx, 0x47c1
0001:47FD  8E D9                        mov ds, cx
0001:47FF  EB B7                        jmp 0x47b8
0001:4801  AD                           lodsw ax, word ptr [si]
0001:4802  0B F6                        or si, si
0001:4804  75 08                        jne 0x480e
0001:4806  8C D9                        mov cx, ds
0001:4808  81 C1 FB 47                  add cx, 0x47fb
0001:480C  8E D9                        mov ds, cx
0001:480E  0A E4                        or ah, ah
0001:4810  75 04                        jne 0x4816
0001:4812  03 F8                        add di, ax
0001:4814  EB A2                        jmp 0x47b8
0001:4816  8A CC                        mov cl, ah
0001:4818  32 ED                        xor ch, ch
0001:481A  8A E5                        mov ah, ch
0001:481C  03 F8                        add di, ax
0001:481E  8B 56 10                     mov dx, word ptr [bp + 0x10]
0001:4821  2B D1                        sub dx, cx
0001:4823  3B 56 E8                     cmp dx, word ptr [bp - 0x18]
0001:4826  89 56 10                     mov word ptr [bp + 0x10], dx
0001:4829  7C 2E                        jl 0x4859
0001:482B  8B C7                        mov ax, di
0001:482D  2B 46 F2                     sub ax, word ptr [bp - 0xe]
0001:4830  2B F8                        sub di, ax
0001:4832  FF 56 F4                     call word ptr [bp - 0xc]
0001:4835  E2 FB                        loop 0x4832
0001:4837  89 7E F2                     mov word ptr [bp - 0xe], di
0001:483A  03 F8                        add di, ax
0001:483C  E9 79 FF                     jmp 0x47b8
0001:483F  FF 4E 10                     dec word ptr [bp + 0x10]
0001:4842  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:4845  3B 46 E8                     cmp ax, word ptr [bp - 0x18]
0001:4848  7C 0F                        jl 0x4859
0001:484A  8B 7E F2                     mov di, word ptr [bp - 0xe]
0001:484D  FF 56 F4                     call word ptr [bp - 0xc]
0001:4850  89 7E F2                     mov word ptr [bp - 0xe], di
0001:4853  03 7E 12                     add di, word ptr [bp + 0x12]
0001:4856  E9 5F FF                     jmp 0x47b8
0001:4859  B8 01 00                     mov ax, 1
0001:485C  1F                           pop ds
0001:485D  07                           pop es
0001:485E  5F                           pop di
0001:485F  5E                           pop si
0001:4860  8B E5                        mov sp, bp
0001:4862  5D                           pop bp
0001:4863  C2 14 00                     ret 0x14

; FUNCTION 0001:47CC (85 instructions)
0001:47B8  AD                           lodsw ax, word ptr [si]
0001:47B9  0B F6                        or si, si
0001:47BB  75 08                        jne 0x47c5
0001:47BD  8C D9                        mov cx, ds
0001:47BF  81 C1 C6 43                  add cx, 0x43c6
0001:47C3  8E D9                        mov ds, cx
0001:47C5  0A C0                        or al, al
0001:47C7  74 0B                        je 0x47d4
0001:47C9  32 ED                        xor ch, ch
0001:47CB  8A C8                        mov cl, al
0001:47CC  C8 8A C4 FF                  enter -0x3b76, -1
0001:47CD  8A C4                        mov al, ah
0001:47CF  FF 56 F6                     call word ptr [bp - 0xa]
0001:47D0  56                           push si
0001:47D1  F6 EB                        imul bl
0001:47D2  EB E4                        jmp 0x47b8
0001:47D3  E4 3A                        in al, 0x3a
0001:47D4  3A E0                        cmp ah, al
0001:47D5  E0 74                        loopne 0x484b
0001:47D6  74 67                        je 0x483f
0001:47D7  67 FE C0                     inc al
0001:47D8  FE C0                        inc al
0001:47DA  3A E0                        cmp ah, al
0001:47DC  74 7B                        je 0x4859
0001:47DE  FE C0                        inc al
0001:47E0  3A E0                        cmp ah, al
0001:47E2  74 1D                        je 0x4801
0001:47E4  32 ED                        xor ch, ch
0001:47E6  8A CC                        mov cl, ah
0001:47E8  FF 56 F8                     call word ptr [bp - 8]
0001:47EB  F7 C6 01 00                  test si, 1
0001:47EF  74 C7                        je 0x47b8
0001:47F1  4E                           dec si
0001:47F2  AD                           lodsw ax, word ptr [si]
0001:47F3  0B F6                        or si, si
0001:47F5  75 08                        jne 0x47ff
0001:47F7  8C D9                        mov cx, ds
0001:47F9  81 C1 C1 47                  add cx, 0x47c1
0001:47FD  8E D9                        mov ds, cx
0001:47FF  EB B7                        jmp 0x47b8
0001:4801  AD                           lodsw ax, word ptr [si]
0001:4802  0B F6                        or si, si
0001:4804  75 08                        jne 0x480e
0001:4806  8C D9                        mov cx, ds
0001:4808  81 C1 FB 47                  add cx, 0x47fb
0001:480C  8E D9                        mov ds, cx
0001:480E  0A E4                        or ah, ah
0001:4810  75 04                        jne 0x4816
0001:4812  03 F8                        add di, ax
0001:4814  EB A2                        jmp 0x47b8
0001:4816  8A CC                        mov cl, ah
0001:4818  32 ED                        xor ch, ch
0001:481A  8A E5                        mov ah, ch
0001:481C  03 F8                        add di, ax
0001:481E  8B 56 10                     mov dx, word ptr [bp + 0x10]
0001:4821  2B D1                        sub dx, cx
0001:4823  3B 56 E8                     cmp dx, word ptr [bp - 0x18]
0001:4826  89 56 10                     mov word ptr [bp + 0x10], dx
0001:4829  7C 2E                        jl 0x4859
0001:482B  8B C7                        mov ax, di
0001:482D  2B 46 F2                     sub ax, word ptr [bp - 0xe]
0001:4830  2B F8                        sub di, ax
0001:4832  FF 56 F4                     call word ptr [bp - 0xc]
0001:4835  E2 FB                        loop 0x4832
0001:4837  89 7E F2                     mov word ptr [bp - 0xe], di
0001:483A  03 F8                        add di, ax
0001:483C  E9 79 FF                     jmp 0x47b8
0001:483F  FF 4E 10                     dec word ptr [bp + 0x10]
0001:4842  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:4845  3B 46 E8                     cmp ax, word ptr [bp - 0x18]
0001:4848  7C 0F                        jl 0x4859
0001:484A  8B 7E F2                     mov di, word ptr [bp - 0xe]
0001:484B  7E F2                        jle 0x483f
0001:484D  FF 56 F4                     call word ptr [bp - 0xc]
0001:4850  89 7E F2                     mov word ptr [bp - 0xe], di
0001:4853  03 7E 12                     add di, word ptr [bp + 0x12]
0001:4856  E9 5F FF                     jmp 0x47b8
0001:4859  B8 01 00                     mov ax, 1
0001:485C  1F                           pop ds
0001:485D  07                           pop es
0001:485E  5F                           pop di
0001:485F  5E                           pop si
0001:4860  8B E5                        mov sp, bp
0001:4862  5D                           pop bp
0001:4863  C2 14 00                     ret 0x14

; FUNCTION 0001:486F (79 instructions)
0001:4866  33 C0                        xor ax, ax
0001:4868  F9                           stc
0001:4869  C3                           ret
0001:486A  B8 FF FF                     mov ax, 0xffff
0001:486D  F9                           stc
0001:486E  C3                           ret
0001:486F  C5 76 08                     lds si, ptr [bp + 8]
0001:4872  8B 44 04                     mov ax, word ptr [si + 4]
0001:4875  8B 54 08                     mov dx, word ptr [si + 8]
0001:4878  89 46 F0                     mov word ptr [bp - 0x10], ax
0001:487B  89 56 EE                     mov word ptr [bp - 0x12], dx
0001:487E  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:4881  03 C2                        add ax, dx
0001:4883  48                           dec ax
0001:4884  89 46 10                     mov word ptr [bp + 0x10], ax
0001:4887  8A 5C 10                     mov bl, byte ptr [si + 0x10]
0001:488A  80 E3 03                     and bl, 3
0001:488D  74 D7                        je 0x4866
0001:488F  80 CB 10                     or bl, 0x10
0001:4892  33 C0                        xor ax, ax
0001:4894  39 44 16                     cmp word ptr [si + 0x16], ax
0001:4897  75 10                        jne 0x48a9
0001:4899  39 44 14                     cmp word ptr [si + 0x14], ax
0001:489C  74 0B                        je 0x48a9
0001:489E  8B 46 0C                     mov ax, word ptr [bp + 0xc]
0001:48A1  03 44 14                     add ax, word ptr [si + 0x14]
0001:48A4  72 03                        jb 0x48a9
0001:48A6  80 E3 EF                     and bl, 0xef
0001:48A9  88 5E FF                     mov byte ptr [bp - 1], bl
0001:48AC  E8 86 00                     call 0x4935
0001:48AF  E8 9B 00                     call 0x494d
0001:48B2  C5 76 14                     lds si, ptr [bp + 0x14]
0001:48B5  8B 44 06                     mov ax, word ptr [si + 6]
0001:48B8  89 46 FC                     mov word ptr [bp - 4], ax
0001:48BB  8B 44 1A                     mov ax, word ptr [si + 0x1a]
0001:48BE  89 46 FA                     mov word ptr [bp - 6], ax
0001:48C1  8A 44 09                     mov al, byte ptr [si + 9]
0001:48C4  3C 01                        cmp al, 1
0001:48C6  74 A2                        je 0x486a
0001:48C8  3C 08                        cmp al, 8
0001:48CA  75 9E                        jne 0x486a
0001:48CC  8A 5E FF                     mov bl, byte ptr [bp - 1]
0001:48CF  83 E3 1E                     and bx, 0x1e
0001:48D2  2E 8B 87 74 47               mov ax, word ptr cs:[bx + 0x4774]
0001:48D7  89 46 F8                     mov word ptr [bp - 8], ax
0001:48DA  80 E3 EF                     and bl, 0xef
0001:48DD  2E 8B 87 94 47               mov ax, word ptr cs:[bx + 0x4794]
0001:48E2  89 46 F6                     mov word ptr [bp - 0xa], ax
0001:48E5  8B 0C                        mov cx, word ptr [si]
0001:48E7  E3 14                        jcxz 0x48fd
0001:48E9  8D 06 AB 49                  lea ax, [0x49ab]
0001:48ED  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:48F0  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:48F3  33 DB                        xor bx, bx
0001:48F5  C4 7E 14                     les di, ptr [bp + 0x14]
0001:48F8  E8 21 FB                     call 0x441c
0001:48FB  EB 29                        jmp 0x4926
0001:48FD  8D 06 C5 49                  lea ax, [0x49c5]
0001:4901  89 46 F4                     mov word ptr [bp - 0xc], ax
0001:4904  8B 7C 0A                     mov di, word ptr [si + 0xa]
0001:4907  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:490A  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0001:490D  8B 4C 16                     mov cx, word ptr [si + 0x16]
0001:4910  8B 54 18                     mov dx, word ptr [si + 0x18]
0001:4913  E3 0A                        jcxz 0x491f
0001:4915  3B C2                        cmp ax, dx
0001:4917  72 06                        jb 0x491f
0001:4919  03 D9                        add bx, cx
0001:491B  2B C2                        sub ax, dx
0001:491D  EB F6                        jmp 0x4915
0001:491F  8E C3                        mov es, bx
0001:4921  F7 66 FC                     mul word ptr [bp - 4]
0001:4924  03 F8                        add di, ax
0001:4926  89 7E F2                     mov word ptr [bp - 0xe], di
0001:4929  03 7E 12                     add di, word ptr [bp + 0x12]
0001:492C  C5 76 0C                     lds si, ptr [bp + 0xc]
0001:492F  8D 9E E6 FE                  lea bx, [bp - 0x11a]
0001:4933  F8                           clc
0001:4934  C3                           ret

; FUNCTION 0001:4935 (11 instructions)
0001:4935  8D BE E6 FE                  lea di, [bp - 0x11a]
0001:4939  FF 76 16                     push word ptr [bp + 0x16]
0001:493C  FF 76 14                     push word ptr [bp + 0x14]
0001:493F  1E                           push ds
0001:4940  56                           push si
0001:4941  16                           push ss
0001:4942  57                           push di
0001:4943  E8 0D BD                     call 0x653
0001:4946  73 04                        jae 0x494c
0001:4948  80 4E FF 08                  or byte ptr [bp - 1], 8
0001:494C  C3                           ret

; FUNCTION 0001:494D (37 instructions)
0001:494D  83 7E 06 00                  cmp word ptr [bp + 6], 0
0001:4951  74 3E                        je 0x4991
0001:4953  C5 76 04                     lds si, ptr [bp + 4]
0001:4956  8B 04                        mov ax, word ptr [si]
0001:4958  8B 5C 02                     mov bx, word ptr [si + 2]
0001:495B  8B 4C 04                     mov cx, word ptr [si + 4]
0001:495E  8B 54 06                     mov dx, word ptr [si + 6]
0001:4961  89 46 E6                     mov word ptr [bp - 0x1a], ax
0001:4964  89 5E E8                     mov word ptr [bp - 0x18], bx
0001:4967  89 4E EA                     mov word ptr [bp - 0x16], cx
0001:496A  89 56 EC                     mov word ptr [bp - 0x14], dx
0001:496D  3B 46 12                     cmp ax, word ptr [bp + 0x12]
0001:4970  7F 1A                        jg 0x498c
0001:4972  8B 46 12                     mov ax, word ptr [bp + 0x12]
0001:4975  03 46 F0                     add ax, word ptr [bp - 0x10]
0001:4978  3B C8                        cmp cx, ax
0001:497A  7C 10                        jl 0x498c
0001:497C  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:497F  3B C2                        cmp ax, dx
0001:4981  7D 09                        jge 0x498c
0001:4983  2B 46 EE                     sub ax, word ptr [bp - 0x12]
0001:4986  40                           inc ax
0001:4987  3B C3                        cmp ax, bx
0001:4989  7C 01                        jl 0x498c
0001:498B  C3                           ret
0001:498C  80 4E FF 44                  or byte ptr [bp - 1], 0x44
0001:4990  C3                           ret
0001:4991  8B 46 12                     mov ax, word ptr [bp + 0x12]
0001:4994  89 46 E6                     mov word ptr [bp - 0x1a], ax
0001:4997  03 46 F0                     add ax, word ptr [bp - 0x10]
0001:499A  89 46 EA                     mov word ptr [bp - 0x16], ax
0001:499D  8B 46 10                     mov ax, word ptr [bp + 0x10]
0001:49A0  40                           inc ax
0001:49A1  89 46 EC                     mov word ptr [bp - 0x14], ax
0001:49A4  2B 46 EE                     sub ax, word ptr [bp - 0x12]
0001:49A7  89 46 E8                     mov word ptr [bp - 0x18], ax
0001:49AA  C3                           ret

; FUNCTION 0001:4979 (4 instructions)
0001:4979  C8 7C 10 8B                  enter 0x107c, -0x75
0001:497D  46                           inc si
0001:497E  10 3B                        adc byte ptr [bp + di], bh
0001:4980  C2 7D 09                     ret 0x97d

; FUNCTION 0001:4A27 (15 instructions)
0001:4A15  F7 C7 01 00                  test di, 1
0001:4A19  74 02                        je 0x4a1d
0001:4A1B  A4                           movsb byte ptr es:[di], byte ptr [si]
0001:4A1C  49                           dec cx
0001:4A1D  D1 E9                        shr cx, 1
0001:4A1F  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0001:4A21  12 C9                        adc cl, cl
0001:4A23  F3 A4                        rep movsb byte ptr es:[di], byte ptr [si]
0001:4A25  C3                           ret
0001:4A27  C8 50 E8 E9                  enter -0x17b0, -0x17
0001:4A2B  FF 8C D8 05                  dec word ptr [si + 0x5d8]
0001:4A2F  F7 49 8E D8 59               test word ptr [bx + di - 0x72], 0x59d8
0001:4A34  E3 61                        jcxz 0x4a97
0001:4A36  EB DD                        jmp 0x4a15
0001:4A97  C3                           ret

; FUNCTION 0001:4A99 (28 instructions)
0001:4A76  F7 C7 01 00                  test di, 1
0001:4A7A  74 05                        je 0x4a81
0001:4A7C  AC                           lodsb al, byte ptr [si]
0001:4A7D  36 D7                        xlatb
0001:4A7F  AA                           stosb byte ptr es:[di], al
0001:4A80  49                           dec cx
0001:4A81  D1 E9                        shr cx, 1
0001:4A83  74 0C                        je 0x4a91
0001:4A85  AD                           lodsw ax, word ptr [si]
0001:4A86  86 C4                        xchg ah, al
0001:4A88  36 D7                        xlatb
0001:4A8A  86 C4                        xchg ah, al
0001:4A8C  36 D7                        xlatb
0001:4A8E  AB                           stosw word ptr es:[di], ax
0001:4A8F  E2 F4                        loop 0x4a85
0001:4A91  73 04                        jae 0x4a97
0001:4A93  AC                           lodsb al, byte ptr [si]
0001:4A94  36 D7                        xlatb
0001:4A96  AA                           stosb byte ptr es:[di], al
0001:4A97  C3                           ret
0001:4A99  C8 50 E8 D8                  enter -0x17b0, -0x28
0001:4A9D  FF 8C D8 05                  dec word ptr [si + 0x5d8]
0001:4AA1  58                           pop ax
0001:4AA2  4A                           dec dx
0001:4AA3  8E D8                        mov ds, ax
0001:4AA5  59                           pop cx
0001:4AA6  E3 EF                        jcxz 0x4a97
0001:4AA8  EB CC                        jmp 0x4a76

; FUNCTION 0001:4B29 (28 instructions)
0001:4AFD  51                           push cx
0001:4AFE  D1 E9                        shr cx, 1
0001:4B00  E3 11                        jcxz 0x4b13
0001:4B02  AC                           lodsb al, byte ptr [si]
0001:4B03  8A E0                        mov ah, al
0001:4B05  24 0F                        and al, 0xf
0001:4B07  36 D7                        xlatb
0001:4B09  86 C4                        xchg ah, al
0001:4B0B  C0 E8 04                     shr al, 4
0001:4B0E  36 D7                        xlatb
0001:4B10  AB                           stosw word ptr es:[di], ax
0001:4B11  E2 EF                        loop 0x4b02
0001:4B13  58                           pop ax
0001:4B14  D1 E8                        shr ax, 1
0001:4B16  72 01                        jb 0x4b19
0001:4B18  C3                           ret
0001:4B19  AC                           lodsb al, byte ptr [si]
0001:4B1A  C0 E8 04                     shr al, 4
0001:4B1D  36 D7                        xlatb
0001:4B1F  AA                           stosb byte ptr es:[di], al
0001:4B20  C3                           ret
0001:4B29  C8 E8 D0 FF                  enter -0x2f18, -1
0001:4B2D  8C D8                        mov ax, ds
0001:4B2F  05 F0 4A                     add ax, 0x4af0
0001:4B32  8E D8                        mov ds, ax
0001:4B34  59                           pop cx
0001:4B35  E3 E1                        jcxz 0x4b18
0001:4B37  EB C4                        jmp 0x4afd

; FUNCTION 0001:4BD7 (2 instructions)
0001:4BD7  C8 2B CA 3B                  enter -0x35d5, 0x3b
0001:4BDB  C2 75 0C                     ret 0xc75

; FUNCTION 0001:5080 (46 instructions)
0001:5080  8B D9                        mov bx, cx
0001:5082  F6 DD                        neg ch
0001:5084  80 C5 08                     add ch, 8
0001:5087  2A CD                        sub cl, ch
0001:5089  72 38                        jb 0x50c3
0001:508B  8A E1                        mov ah, cl
0001:508D  C0 EC 03                     shr ah, 3
0001:5090  80 E1 07                     and cl, 7
0001:5093  B3 FF                        mov bl, 0xff
0001:5095  D2 EB                        shr bl, cl
0001:5097  F6 D3                        not bl
0001:5099  B1 FF                        mov cl, 0xff
0001:509B  86 CF                        xchg bh, cl
0001:509D  D2 EF                        shr bh, cl
0001:509F  F6 D7                        not bh
0001:50A1  26 20 3D                     and byte ptr es:[di], bh
0001:50A4  F6 D7                        not bh
0001:50A6  22 F8                        and bh, al
0001:50A8  26 08 3D                     or byte ptr es:[di], bh
0001:50AB  47                           inc di
0001:50AC  8A CC                        mov cl, ah
0001:50AE  32 ED                        xor ch, ch
0001:50B0  F3 AA                        rep stosb byte ptr es:[di], al
0001:50B2  0A DB                        or bl, bl
0001:50B4  74 0C                        je 0x50c2
0001:50B6  F6 D3                        not bl
0001:50B8  26 20 1D                     and byte ptr es:[di], bl
0001:50BB  F6 D3                        not bl
0001:50BD  22 C3                        and al, bl
0001:50BF  26 08 05                     or byte ptr es:[di], al
0001:50C2  C3                           ret
0001:50C3  B5 FF                        mov ch, 0xff
0001:50C5  8A CF                        mov cl, bh
0001:50C7  D2 ED                        shr ch, cl
0001:50C9  02 CB                        add cl, bl
0001:50CB  F6 D9                        neg cl
0001:50CD  80 C1 08                     add cl, 8
0001:50D0  B7 FF                        mov bh, 0xff
0001:50D2  D2 E7                        shl bh, cl
0001:50D4  22 EF                        and ch, bh
0001:50D6  F6 D5                        not ch
0001:50D8  26 20 2D                     and byte ptr es:[di], ch
0001:50DB  F6 D5                        not ch
0001:50DD  22 E8                        and ch, al
0001:50DF  26 08 2D                     or byte ptr es:[di], ch
0001:50E2  C3                           ret

; FUNCTION 0001:510C (2 instructions)
0001:510C  C8 E8 70 FF                  enter 0x70e8, -1
0001:5110  C3                           ret

; FUNCTION 0001:5125 (12 instructions)
0001:5125  50                           push ax
0001:5126  F7 C7 01 00                  test di, 1
0001:512A  74 04                        je 0x5130
0001:512C  AA                           stosb byte ptr es:[di], al
0001:512D  49                           dec cx
0001:512E  86 C4                        xchg ah, al
0001:5130  D1 E9                        shr cx, 1
0001:5132  F3 AB                        rep stosw word ptr es:[di], ax
0001:5134  D1 D1                        rcl cx, 1
0001:5136  F3 AA                        rep stosb byte ptr es:[di], al
0001:5138  58                           pop ax
0001:5139  C3                           ret

; FUNCTION 0001:513F (1 instructions)
0001:513F  C8 D0 C8 D0                  enter -0x3730, -0x30

; FUNCTION 0001:5141 (1 instructions)
0001:5141  C8 D0 C8 D0                  enter -0x3730, -0x30

; FUNCTION 0001:5143 (55 instructions)
0001:3E44  D2 8D 46 CE                  ror byte ptr [di - 0x31ba], cl
0001:3E48  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3E4B  33 C9                        xor cx, cx
0001:3E4D  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3E50  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3E53  51                           push cx
0001:3E54  53                           push bx
0001:3E55  16                           push ss
0001:3E56  50                           push ax
0001:3E57  51                           push cx
0001:3E58  51                           push cx
0001:3E59  52                           push dx
0001:3E5A  FF 76 16                     push word ptr [bp + 0x16]
0001:3E5D  68 CC 00                     push 0xcc
0001:3E60  6A 20                        push 0x20
0001:3E62  51                           push cx
0001:3E63  51                           push cx
0001:3E64  FF 76 0C                     push word ptr [bp + 0xc]
0001:3E67  FF 76 0A                     push word ptr [bp + 0xa]
0001:3E6A  9A 54 39 FD 1E               lcall 0x1efd, 0x3954
0001:3E6F  8D 5E CE                     lea bx, [bp - 0x32]
0001:3E72  33 C0                        xor ax, ax
0001:3E74  16                           push ss
0001:3E75  53                           push bx
0001:3E76  50                           push ax
0001:3E77  50                           push ax
0001:3E78  50                           push ax
0001:3E79  50                           push ax
0001:3E7A  E8 6C 04                     call 0x42e9
0001:3E7D  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3E80  E9 93 00                     jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a
0001:5119  D8 36 8A 07                  fdiv dword ptr [0x78a]
0001:511D  D0 E8                        shr al, 1
0001:511F  1A C0                        sbb al, al
0001:5121  E8 5C FF                     call 0x5080
0001:5124  C3                           ret
0001:5143  C8 D0 C8 8A                  enter -0x3730, -0x76
0001:5147  E0 D0                        loopne 0x5119
0001:5149  E0 24                        loopne 0x516f
0001:514B  1E                           push ds
0001:514C  36 D7                        xlatb
0001:514E  86 E0                        xchg al, ah
0001:5150  C0 E8 03                     shr al, 3
0001:5153  24 1E                        and al, 0x1e
0001:5155  36 D7                        xlatb
0001:5157  E8 CB FF                     call 0x5125
0001:515A  C3                           ret
0001:516F  E9 D2 EC                     jmp 0x3e44

; FUNCTION 0001:5145 (49 instructions)
0001:3E44  D2 8D 46 CE                  ror byte ptr [di - 0x31ba], cl
0001:3E48  8B 56 D0                     mov dx, word ptr [bp - 0x30]
0001:3E4B  33 C9                        xor cx, cx
0001:3E4D  FF 76 1E                     push word ptr [bp + 0x1e]
0001:3E50  FF 76 1C                     push word ptr [bp + 0x1c]
0001:3E53  51                           push cx
0001:3E54  53                           push bx
0001:3E55  16                           push ss
0001:3E56  50                           push ax
0001:3E57  51                           push cx
0001:3E58  51                           push cx
0001:3E59  52                           push dx
0001:3E5A  FF 76 16                     push word ptr [bp + 0x16]
0001:3E5D  68 CC 00                     push 0xcc
0001:3E60  6A 20                        push 0x20
0001:3E62  51                           push cx
0001:3E63  51                           push cx
0001:3E64  FF 76 0C                     push word ptr [bp + 0xc]
0001:3E67  FF 76 0A                     push word ptr [bp + 0xa]
0001:3E6A  9A 54 39 FD 1E               lcall 0x1efd, 0x3954
0001:3E6F  8D 5E CE                     lea bx, [bp - 0x32]
0001:3E72  33 C0                        xor ax, ax
0001:3E74  16                           push ss
0001:3E75  53                           push bx
0001:3E76  50                           push ax
0001:3E77  50                           push ax
0001:3E78  50                           push ax
0001:3E79  50                           push ax
0001:3E7A  E8 6C 04                     call 0x42e9
0001:3E7D  8B 46 16                     mov ax, word ptr [bp + 0x16]
0001:3E80  E9 93 00                     jmp 0x3f16
0001:3F16  5F                           pop di
0001:3F17  5E                           pop si
0001:3F18  8D 66 FE                     lea sp, [bp - 2]
0001:3F1B  1F                           pop ds
0001:3F1C  5D                           pop bp
0001:3F1D  4D                           dec bp
0001:3F1E  CA 1A 00                     retf 0x1a
0001:5145  C8 8A E0 D0                  enter -0x1f76, -0x30
0001:5149  E0 24                        loopne 0x516f
0001:514B  1E                           push ds
0001:514C  36 D7                        xlatb
0001:514E  86 E0                        xchg al, ah
0001:5150  C0 E8 03                     shr al, 3
0001:5153  24 1E                        and al, 0x1e
0001:5155  36 D7                        xlatb
0001:5157  E8 CB FF                     call 0x5125
0001:515A  C3                           ret
0001:516F  E9 D2 EC                     jmp 0x3e44

; FUNCTION 0002:0000 (5 instructions)
0002:0000  47                           inc di
0002:0001  44                           inc sp
0002:0002  49                           dec cx
0002:0003  00 8C D8 90                  add byte ptr [si - 0x6f28], cl
0002:0007  45                           inc bp

; FUNCTION 0002:0004 (3 instructions)
0002:0004  8C D8                        mov ax, ds
0002:0006  90                           nop
0002:0007  45                           inc bp

; FUNCTION 0002:0008 (10 instructions)
0002:0008  55                           push bp
0002:0009  8B EC                        mov bp, sp
0002:000B  1E                           push ds
0002:000C  8E D8                        mov ds, ax
0002:000E  B8 01 00                     mov ax, 1
0002:0011  8D 66 FE                     lea sp, [bp - 2]
0002:0014  1F                           pop ds
0002:0015  5D                           pop bp
0002:0016  4D                           dec bp
0002:0017  CB                           retf

; FUNCTION 0002:00A6 (3 instructions)
0002:00A6  8C D8                        mov ax, ds
0002:00A8  90                           nop
0002:00A9  45                           inc bp

; FUNCTION 0002:00AA (111 instructions)
0002:00AA  55                           push bp
0002:00AB  8B EC                        mov bp, sp
0002:00AD  1E                           push ds
0002:00AE  8E D8                        mov ds, ax
0002:00B0  56                           push si
0002:00B1  57                           push di
0002:00B2  06                           push es
0002:00B3  FC                           cld
0002:00B4  C4 7E 14                     les di, ptr [bp + 0x14]
0002:00B7  83 66 12 01                  and word ptr [bp + 0x12], 1
0002:00BB  75 6B                        jne 0x128
0002:00BD  33 C0                        xor ax, ax
0002:00BF  B9 18 00                     mov cx, 0x18
0002:00C2  57                           push di
0002:00C3  F3 AB                        rep stosw word ptr es:[di], ax
0002:00C5  5F                           pop di
0002:00C6  33 C0                        xor ax, ax
0002:00C8  FF 76 16                     push word ptr [bp + 0x16]
0002:00CB  FF 76 14                     push word ptr [bp + 0x14]
0002:00CE  FF 76 08                     push word ptr [bp + 8]
0002:00D1  FF 76 06                     push word ptr [bp + 6]
0002:00D4  50                           push ax
0002:00D5  50                           push ax
0002:00D6  9A C6 42 FF FF               lcall 0xffff, 0x42c6
0002:00DB  0B C0                        or ax, ax
0002:00DD  74 47                        je 0x126
0002:00DF  A0 04 00                     mov al, byte ptr [4]
0002:00E2  FE 06 04 00                  inc byte ptr [4]
0002:00E6  0A C0                        or al, al
0002:00E8  75 3C                        jne 0x126
0002:00EA  1E                           push ds
0002:00EB  9A FF FF 00 00               lcall 0, 0xffff
0002:00F0  A3 05 00                     mov word ptr [5], ax
0002:00F3  50                           push ax
0002:00F4  6A 00                        push 0
0002:00F6  6A FF                        push -1
0002:00F8  9A FF FF 00 00               lcall 0, 0xffff
0002:00FD  1E                           push ds
0002:00FE  9A EC 00 00 00               lcall 0, 0xec
0002:0103  A3 07 00                     mov word ptr [7], ax
0002:0106  50                           push ax
0002:0107  6A 00                        push 0
0002:0109  6A FF                        push -1
0002:010B  9A F9 00 00 00               lcall 0, 0xf9
0002:0110  1E                           push ds
0002:0111  9A FF 00 00 00               lcall 0, 0xff
0002:0116  A3 09 00                     mov word ptr [9], ax
0002:0119  50                           push ax
0002:011A  6A 00                        push 0
0002:011C  6A FF                        push -1
0002:011E  9A 0C 01 00 00               lcall 0, 0x10c
0002:0123  B8 01 00                     mov ax, 1
0002:0126  EB 7C                        jmp 0x1a4
0002:0128  06                           push es
0002:0129  57                           push di
0002:012A  6A 00                        push 0
0002:012C  9A FF FF 00 00               lcall 0, 0xffff
0002:0131  8B F8                        mov di, ax
0002:0133  57                           push di
0002:0134  6A 26                        push 0x26
0002:0136  9A FF FF 00 00               lcall 0, 0xffff
0002:013B  50                           push ax
0002:013C  6A 00                        push 0
0002:013E  57                           push di
0002:013F  9A FF FF 00 00               lcall 0, 0xffff
0002:0144  5A                           pop dx
0002:0145  5F                           pop di
0002:0146  07                           pop es
0002:0147  81 E2 00 04                  and dx, 0x400
0002:014B  74 1B                        je 0x168
0002:014D  52                           push dx
0002:014E  06                           push es
0002:014F  B8 D9 00                     mov ax, 0xd9
0002:0152  50                           push ax
0002:0153  9A FF FF 00 00               lcall 0, 0xffff
0002:0158  8E C0                        mov es, ax
0002:015A  26 C6 06 30 18 FF            mov byte ptr es:[0x1830], 0xff
0002:0160  06                           push es
0002:0161  9A FF FF 00 00               lcall 0, 0xffff
0002:0166  07                           pop es
0002:0167  5A                           pop dx
0002:0168  1E                           push ds
0002:0169  8C C8                        mov ax, cs
0002:016B  8E D8                        mov ds, ax
0002:016D  BE 38 00                     mov si, 0x38
0002:0170  B9 37 00                     mov cx, 0x37
0002:0173  57                           push di
0002:0174  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:0176  5F                           pop di
0002:0177  26 09 55 26                  or word ptr es:[di + 0x26], dx
0002:017B  1F                           pop ds
0002:017C  83 7E 08 00                  cmp word ptr [bp + 8], 0
0002:0180  74 1F                        je 0x1a1
0002:0182  C5 76 06                     lds si, ptr [bp + 6]
0002:0185  8B 5C 04                     mov bx, word ptr [si + 4]
0002:0188  26 89 5D 08                  mov word ptr es:[di + 8], bx
0002:018C  8B 5C 08                     mov bx, word ptr [si + 8]
0002:018F  26 89 5D 0A                  mov word ptr es:[di + 0xa], bx
0002:0193  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0002:0196  26 89 5D 0E                  mov word ptr es:[di + 0xe], bx
0002:019A  8B 5C 0E                     mov bx, word ptr [si + 0xe]
0002:019D  26 89 5D 0C                  mov word ptr es:[di + 0xc], bx
0002:01A1  B8 6E 00                     mov ax, 0x6e
0002:01A4  07                           pop es
0002:01A5  5F                           pop di
0002:01A6  5E                           pop si
0002:01A7  8D 66 FE                     lea sp, [bp - 2]
0002:01AA  1F                           pop ds
0002:01AB  5D                           pop bp
0002:01AC  4D                           dec bp
0002:01AD  CA 12 00                     retf 0x12

; FUNCTION 0002:0150 (39 instructions)
0002:0150  D9 00                        fld dword ptr [bx + si]
0002:0152  50                           push ax
0002:0153  9A FF FF 00 00               lcall 0, 0xffff
0002:0158  8E C0                        mov es, ax
0002:015A  26 C6 06 30 18 FF            mov byte ptr es:[0x1830], 0xff
0002:0160  06                           push es
0002:0161  9A FF FF 00 00               lcall 0, 0xffff
0002:0166  07                           pop es
0002:0167  5A                           pop dx
0002:0168  1E                           push ds
0002:0169  8C C8                        mov ax, cs
0002:016B  8E D8                        mov ds, ax
0002:016D  BE 38 00                     mov si, 0x38
0002:0170  B9 37 00                     mov cx, 0x37
0002:0173  57                           push di
0002:0174  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:0176  5F                           pop di
0002:0177  26 09 55 26                  or word ptr es:[di + 0x26], dx
0002:017B  1F                           pop ds
0002:017C  83 7E 08 00                  cmp word ptr [bp + 8], 0
0002:0180  74 1F                        je 0x1a1
0002:0182  C5 76 06                     lds si, ptr [bp + 6]
0002:0185  8B 5C 04                     mov bx, word ptr [si + 4]
0002:0188  26 89 5D 08                  mov word ptr es:[di + 8], bx
0002:018C  8B 5C 08                     mov bx, word ptr [si + 8]
0002:018F  26 89 5D 0A                  mov word ptr es:[di + 0xa], bx
0002:0193  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0002:0196  26 89 5D 0E                  mov word ptr es:[di + 0xe], bx
0002:019A  8B 5C 0E                     mov bx, word ptr [si + 0xe]
0002:019D  26 89 5D 0C                  mov word ptr es:[di + 0xc], bx
0002:01A1  B8 6E 00                     mov ax, 0x6e
0002:01A4  07                           pop es
0002:01A5  5F                           pop di
0002:01A6  5E                           pop si
0002:01A7  8D 66 FE                     lea sp, [bp - 2]
0002:01AA  1F                           pop ds
0002:01AB  5D                           pop bp
0002:01AC  4D                           dec bp
0002:01AD  CA 12 00                     retf 0x12

; FUNCTION 0002:016A (28 instructions)
0002:016A  C8 8E D8 BE                  enter -0x2772, -0x42
0002:016E  38 00                        cmp byte ptr [bx + si], al
0002:0170  B9 37 00                     mov cx, 0x37
0002:0173  57                           push di
0002:0174  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0002:0176  5F                           pop di
0002:0177  26 09 55 26                  or word ptr es:[di + 0x26], dx
0002:017B  1F                           pop ds
0002:017C  83 7E 08 00                  cmp word ptr [bp + 8], 0
0002:0180  74 1F                        je 0x1a1
0002:0182  C5 76 06                     lds si, ptr [bp + 6]
0002:0185  8B 5C 04                     mov bx, word ptr [si + 4]
0002:0188  26 89 5D 08                  mov word ptr es:[di + 8], bx
0002:018C  8B 5C 08                     mov bx, word ptr [si + 8]
0002:018F  26 89 5D 0A                  mov word ptr es:[di + 0xa], bx
0002:0193  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0002:0196  26 89 5D 0E                  mov word ptr es:[di + 0xe], bx
0002:019A  8B 5C 0E                     mov bx, word ptr [si + 0xe]
0002:019D  26 89 5D 0C                  mov word ptr es:[di + 0xc], bx
0002:01A1  B8 6E 00                     mov ax, 0x6e
0002:01A4  07                           pop es
0002:01A5  5F                           pop di
0002:01A6  5E                           pop si
0002:01A7  8D 66 FE                     lea sp, [bp - 2]
0002:01AA  1F                           pop ds
0002:01AB  5D                           pop bp
0002:01AC  4D                           dec bp
0002:01AD  CA 12 00                     retf 0x12

; FUNCTION 0002:01B0 (3 instructions)
0002:01B0  8C D8                        mov ax, ds
0002:01B2  90                           nop
0002:01B3  45                           inc bp

; FUNCTION 0002:01B4 (32 instructions)
0002:01B4  55                           push bp
0002:01B5  8B EC                        mov bp, sp
0002:01B7  1E                           push ds
0002:01B8  8E D8                        mov ds, ax
0002:01BA  56                           push si
0002:01BB  57                           push di
0002:01BC  06                           push es
0002:01BD  33 C0                        xor ax, ax
0002:01BF  FF 76 08                     push word ptr [bp + 8]
0002:01C2  FF 76 06                     push word ptr [bp + 6]
0002:01C5  50                           push ax
0002:01C6  50                           push ax
0002:01C7  50                           push ax
0002:01C8  50                           push ax
0002:01C9  9A C6 42 50 01               lcall 0x150, 0x42c6
0002:01CE  FE 0E 04 00                  dec byte ptr [4]
0002:01D2  75 1B                        jne 0x1ef
0002:01D4  FF 36 05 00                  push word ptr [5]
0002:01D8  9A 62 01 00 00               lcall 0, 0x162
0002:01DD  FF 36 07 00                  push word ptr [7]
0002:01E1  9A D9 01 00 00               lcall 0, 0x1d9
0002:01E6  FF 36 09 00                  push word ptr [9]
0002:01EA  9A E2 01 00 00               lcall 0, 0x1e2
0002:01EF  B8 01 00                     mov ax, 1
0002:01F2  07                           pop es
0002:01F3  5F                           pop di
0002:01F4  5E                           pop si
0002:01F5  8D 66 FE                     lea sp, [bp - 2]
0002:01F8  1F                           pop ds
0002:01F9  5D                           pop bp
0002:01FA  4D                           dec bp
0002:01FB  CA 04 00                     retf 4

; FUNCTION 0003:0000 (2 instructions)
0003:0000  B8 FF FF                     mov ax, 0xffff
0003:0003  CA 0C 00                     retf 0xc

; FUNCTION 0003:0006 (3 instructions)
0003:0006  8C D8                        mov ax, ds
0003:0008  90                           nop
0003:0009  45                           inc bp

; FUNCTION 0003:000A (48 instructions)
0003:000A  55                           push bp
0003:000B  8B EC                        mov bp, sp
0003:000D  1E                           push ds
0003:000E  8E D8                        mov ds, ax
0003:0010  56                           push si
0003:0011  57                           push di
0003:0012  06                           push es
0003:0013  33 C0                        xor ax, ax
0003:0015  C5 7E 0A                     lds di, ptr [bp + 0xa]
0003:0018  8B 5E 0E                     mov bx, word ptr [bp + 0xe]
0003:001B  83 FB 28                     cmp bx, 0x28
0003:001E  74 1D                        je 0x3d
0003:0020  83 FB 29                     cmp bx, 0x29
0003:0023  74 29                        je 0x4e
0003:0025  83 FB 08                     cmp bx, 8
0003:0028  75 21                        jne 0x4b
0003:002A  8B 1D                        mov bx, word ptr [di]
0003:002C  83 FB 08                     cmp bx, 8
0003:002F  74 19                        je 0x4a
0003:0031  83 FB 28                     cmp bx, 0x28
0003:0034  74 14                        je 0x4a
0003:0036  83 FB 29                     cmp bx, 0x29
0003:0039  74 0F                        je 0x4a
0003:003B  EB 0E                        jmp 0x4b
0003:003D  33 C0                        xor ax, ax
0003:003F  8B 5D 02                     mov bx, word ptr [di + 2]
0003:0042  81 FB 00 01                  cmp bx, 0x100
0003:0046  7E 02                        jle 0x4a
0003:0048  7F 01                        jg 0x4b
0003:004A  40                           inc ax
0003:004B  EB 1C                        jmp 0x69
0003:004E  68 FF FF                     push 0xffff
0003:0051  1F                           pop ds
0003:0052  FF 76 12                     push word ptr [bp + 0x12]
0003:0055  FF 76 10                     push word ptr [bp + 0x10]
0003:0058  FF 76 0C                     push word ptr [bp + 0xc]
0003:005B  FF 76 0A                     push word ptr [bp + 0xa]
0003:005E  FF 76 08                     push word ptr [bp + 8]
0003:0061  FF 76 06                     push word ptr [bp + 6]
0003:0064  9A C6 42 FF FF               lcall 0xffff, 0x42c6
0003:0069  07                           pop es
0003:006A  5F                           pop di
0003:006B  5E                           pop si
0003:006C  8D 66 FE                     lea sp, [bp - 2]
0003:006F  1F                           pop ds
0003:0070  5D                           pop bp
0003:0071  4D                           dec bp
0003:0072  CA 0E 00                     retf 0xe

; FUNCTION 0003:0075 (2 instructions)
0003:0075  33 C0                        xor ax, ax
0003:0077  CA 0E 00                     retf 0xe

; FUNCTION 0003:007A (2 instructions)
0003:007A  33 C0                        xor ax, ax
0003:007C  CA 0C 00                     retf 0xc

; FUNCTION 0003:0080 (2 instructions)
0003:0080  B8 01 00                     mov ax, 1
0003:0083  CA 10 00                     retf 0x10

; FUNCTION 0003:0086 (3 instructions)
0003:0086  8C D8                        mov ax, ds
0003:0088  90                           nop
0003:0089  45                           inc bp

; FUNCTION 0003:008A (52 instructions)
0003:008A  55                           push bp
0003:008B  8B EC                        mov bp, sp
0003:008D  1E                           push ds
0003:008E  8E D8                        mov ds, ax
0003:0090  83 EC 10                     sub sp, 0x10
0003:0093  56                           push si
0003:0094  57                           push di
0003:0095  06                           push es
0003:0096  32 C0                        xor al, al
0003:0098  C5 76 10                     lds si, ptr [bp + 0x10]
0003:009B  80 7C 09 01                  cmp byte ptr [si + 9], 1
0003:009F  74 02                        je 0xa3
0003:00A1  FE C0                        inc al
0003:00A3  88 46 FD                     mov byte ptr [bp - 3], al
0003:00A6  89 66 FA                     mov word ptr [bp - 6], sp
0003:00A9  83 7E 0E 01                  cmp word ptr [bp + 0xe], 1
0003:00AD  74 2D                        je 0xdc
0003:00AF  83 7E 0E 02                  cmp word ptr [bp + 0xe], 2
0003:00B3  74 45                        je 0xfa
0003:00B5  B8 01 00                     mov ax, 1
0003:00B8  8B 66 FA                     mov sp, word ptr [bp - 6]
0003:00BB  07                           pop es
0003:00BC  5F                           pop di
0003:00BD  5E                           pop si
0003:00BE  8D 66 FE                     lea sp, [bp - 2]
0003:00C1  1F                           pop ds
0003:00C2  5D                           pop bp
0003:00C3  4D                           dec bp
0003:00C4  CA 0E 00                     retf 0xe
0003:00DC  33 F6                        xor si, si
0003:00DE  89 76 F0                     mov word ptr [bp - 0x10], si
0003:00E1  89 76 F2                     mov word ptr [bp - 0xe], si
0003:00E4  89 76 EE                     mov word ptr [bp - 0x12], si
0003:00E7  8D 7E F4                     lea di, [bp - 0xc]
0003:00EA  E8 31 00                     call 0x11e
0003:00ED  46                           inc si
0003:00EE  83 FE 05                     cmp si, 5
0003:00F1  72 F1                        jb 0xe4
0003:00F3  EB C3                        jmp 0xb8
0003:00FA  33 C0                        xor ax, ax
0003:00FC  89 46 EE                     mov word ptr [bp - 0x12], ax
0003:00FF  89 46 F4                     mov word ptr [bp - 0xc], ax
0003:0102  8D 7E F0                     lea di, [bp - 0x10]
0003:0105  E8 16 00                     call 0x11e
0003:0108  C7 46 EE 02 00               mov word ptr [bp - 0x12], 2
0003:010D  BE 05 00                     mov si, 5
0003:0110  89 76 F4                     mov word ptr [bp - 0xc], si
0003:0113  8D 7E F0                     lea di, [bp - 0x10]
0003:0116  E8 05 00                     call 0x11e
0003:0119  4E                           dec si
0003:011A  79 F4                        jns 0x110
0003:011C  EB 9A                        jmp 0xb8

; FUNCTION 0003:00C7 (20 instructions)
0003:00B8  8B 66 FA                     mov sp, word ptr [bp - 6]
0003:00BB  07                           pop es
0003:00BC  5F                           pop di
0003:00BD  5E                           pop si
0003:00BE  8D 66 FE                     lea sp, [bp - 2]
0003:00C1  1F                           pop ds
0003:00C2  5D                           pop bp
0003:00C3  4D                           dec bp
0003:00C4  CA 0E 00                     retf 0xe
0003:00C7  06                           push es
0003:00C8  8D 46 EE                     lea ax, [bp - 0x12]
0003:00CB  16                           push ss
0003:00CC  50                           push ax
0003:00CD  FF 76 08                     push word ptr [bp + 8]
0003:00D0  FF 76 06                     push word ptr [bp + 6]
0003:00D3  FF 5E 0A                     lcall [bp + 0xa]
0003:00D6  07                           pop es
0003:00D7  0B C0                        or ax, ax
0003:00D9  74 DD                        je 0xb8
0003:00DB  C3                           ret

; FUNCTION 0003:011E (58 instructions)
0003:011E  FC                           cld
0003:011F  56                           push si
0003:0120  8A 46 FD                     mov al, byte ptr [bp - 3]
0003:0123  0A C0                        or al, al
0003:0125  75 20                        jne 0x147
0003:0127  33 C0                        xor ax, ax
0003:0129  36 89 05                     mov word ptr ss:[di], ax
0003:012C  36 89 45 02                  mov word ptr ss:[di + 2], ax
0003:0130  E8 94 FF                     call 0xc7
0003:0133  33 C0                        xor ax, ax
0003:0135  8B D0                        mov dx, ax
0003:0137  48                           dec ax
0003:0138  FE CA                        dec dl
0003:013A  36 89 05                     mov word ptr ss:[di], ax
0003:013D  36 89 55 02                  mov word ptr ss:[di + 2], dx
0003:0141  E8 83 FF                     call 0xc7
0003:0144  EB 57                        jmp 0x19d
0003:0147  8D 36 C2 05                  lea si, [0x5c2]
0003:014B  B9 10 00                     mov cx, 0x10
0003:014E  83 E9 07                     sub cx, 7
0003:0151  C1 E1 02                     shl cx, 2
0003:0154  03 F1                        add si, cx
0003:0156  B9 07 00                     mov cx, 7
0003:0159  1E                           push ds
0003:015A  B8 67 00                     mov ax, 0x67
0003:015D  8E D8                        mov ds, ax
0003:015F  AD                           lodsw ax, word ptr [si]
0003:0160  8B D0                        mov dx, ax
0003:0162  AD                           lodsw ax, word ptr [si]
0003:0163  32 E4                        xor ah, ah
0003:0165  86 C2                        xchg dl, al
0003:0167  36 89 15                     mov word ptr ss:[di], dx
0003:016A  36 89 45 02                  mov word ptr ss:[di + 2], ax
0003:016E  1F                           pop ds
0003:016F  51                           push cx
0003:0170  E8 54 FF                     call 0xc7
0003:0173  59                           pop cx
0003:0174  E2 E3                        loop 0x159
0003:0176  8D 36 C2 05                  lea si, [0x5c2]
0003:017A  B9 10 00                     mov cx, 0x10
0003:017D  83 E9 07                     sub cx, 7
0003:0180  1E                           push ds
0003:0181  B8 5B 01                     mov ax, 0x15b
0003:0184  8E D8                        mov ds, ax
0003:0186  AD                           lodsw ax, word ptr [si]
0003:0187  8B D0                        mov dx, ax
0003:0189  AD                           lodsw ax, word ptr [si]
0003:018A  32 E4                        xor ah, ah
0003:018C  86 C2                        xchg dl, al
0003:018E  36 89 15                     mov word ptr ss:[di], dx
0003:0191  36 89 45 02                  mov word ptr ss:[di + 2], ax
0003:0195  1F                           pop ds
0003:0196  51                           push cx
0003:0197  E8 2D FF                     call 0xc7
0003:019A  59                           pop cx
0003:019B  E2 E3                        loop 0x180
0003:019D  5E                           pop si
0003:019E  C3                           ret

; FUNCTION 0003:0182 (19 instructions)
0003:0180  1E                           push ds
0003:0181  B8 5B 01                     mov ax, 0x15b
0003:0182  5B                           pop bx
0003:0183  01 8E D8 AD                  add word ptr [bp - 0x5228], cx
0003:0184  8E D8                        mov ds, ax
0003:0186  AD                           lodsw ax, word ptr [si]
0003:0187  8B D0                        mov dx, ax
0003:0189  AD                           lodsw ax, word ptr [si]
0003:018A  32 E4                        xor ah, ah
0003:018C  86 C2                        xchg dl, al
0003:018E  36 89 15                     mov word ptr ss:[di], dx
0003:0191  36 89 45 02                  mov word ptr ss:[di + 2], ax
0003:0195  1F                           pop ds
0003:0196  51                           push cx
0003:0197  E8 2D FF                     call 0xc7
0003:019A  59                           pop cx
0003:019B  E2 E3                        loop 0x180
0003:019D  5E                           pop si
0003:019E  C3                           ret

; FUNCTION 0003:01A8 (3 instructions)
0003:01A8  8C D8                        mov ax, ds
0003:01AA  90                           nop
0003:01AB  45                           inc bp

; FUNCTION 0003:01AC (181 instructions)
0003:01AC  55                           push bp
0003:01AD  8B EC                        mov bp, sp
0003:01AF  1E                           push ds
0003:01B0  8E D8                        mov ds, ax
0003:01B2  83 EC 02                     sub sp, 2
0003:01B5  56                           push si
0003:01B6  57                           push di
0003:01B7  06                           push es
0003:01B8  C5 76 10                     lds si, ptr [bp + 0x10]
0003:01BB  8B 0C                        mov cx, word ptr [si]
0003:01BD  8B 46 0C                     mov ax, word ptr [bp + 0xc]
0003:01C0  3B 44 04                     cmp ax, word ptr [si + 4]
0003:01C3  73 34                        jae 0x1f9
0003:01C5  8B 4C 02                     mov cx, word ptr [si + 2]
0003:01C8  39 4E 0E                     cmp word ptr [bp + 0xe], cx
0003:01CB  73 2C                        jae 0x1f9
0003:01CD  89 4E FC                     mov word ptr [bp - 4], cx
0003:01D0  E8 62 01                     call 0x335
0003:01D3  8B 7C 06                     mov di, word ptr [si + 6]
0003:01D6  8A 4C 09                     mov cl, byte ptr [si + 9]
0003:01D9  8B F0                        mov si, ax
0003:01DB  8E DA                        mov ds, dx
0003:01DD  8B 5E 0E                     mov bx, word ptr [bp + 0xe]
0003:01E0  8C D8                        mov ax, ds
0003:01E2  8E C0                        mov es, ax
0003:01E4  80 F9 01                     cmp cl, 1
0003:01E7  75 03                        jne 0x1ec
0003:01E9  E9 C0 00                     jmp 0x2ac
0003:01EC  80 F9 08                     cmp cl, 8
0003:01EF  74 0E                        je 0x1ff
0003:01F1  80 F9 04                     cmp cl, 4
0003:01F4  74 49                        je 0x23f
0003:01F6  E9 A4 00                     jmp 0x29d
0003:01F9  B8 00 80                     mov ax, 0x8000
0003:01FC  E9 29 01                     jmp 0x328
0003:01FF  03 F3                        add si, bx
0003:0201  FD                           std
0003:0202  8B CB                        mov cx, bx
0003:0204  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:0208  75 06                        jne 0x210
0003:020A  FC                           cld
0003:020B  2B 4E FC                     sub cx, word ptr [bp - 4]
0003:020E  F7 D1                        not cx
0003:0210  41                           inc cx
0003:0211  8A 66 08                     mov ah, byte ptr [bp + 8]
0003:0214  F6 46 06 01                  test byte ptr [bp + 6], 1
0003:0218  74 0A                        je 0x224
0003:021A  AC                           lodsb al, byte ptr [si]
0003:021B  3A C4                        cmp al, ah
0003:021D  74 0F                        je 0x22e
0003:021F  E2 F9                        loop 0x21a
0003:0221  EB 7A                        jmp 0x29d
0003:0224  AC                           lodsb al, byte ptr [si]
0003:0225  3A C4                        cmp al, ah
0003:0227  75 05                        jne 0x22e
0003:0229  E2 F9                        loop 0x224
0003:022B  EB 70                        jmp 0x29d
0003:022E  49                           dec cx
0003:022F  8B C1                        mov ax, cx
0003:0231  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:0235  75 05                        jne 0x23c
0003:0237  2B 46 FC                     sub ax, word ptr [bp - 4]
0003:023A  F7 D0                        not ax
0003:023C  E9 E9 00                     jmp 0x328
0003:023F  8B CB                        mov cx, bx
0003:0241  D1 E9                        shr cx, 1
0003:0243  03 F1                        add si, cx
0003:0245  FD                           std
0003:0246  B6 F0                        mov dh, 0xf0
0003:0248  8A D3                        mov dl, bl
0003:024A  80 E2 01                     and dl, 1
0003:024D  74 02                        je 0x251
0003:024F  B6 0F                        mov dh, 0xf
0003:0251  8B CB                        mov cx, bx
0003:0253  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:0257  75 09                        jne 0x262
0003:0259  FC                           cld
0003:025A  80 F2 01                     xor dl, 1
0003:025D  2B 4E FC                     sub cx, word ptr [bp - 4]
0003:0260  F7 D1                        not cx
0003:0262  41                           inc cx
0003:0263  8A 46 08                     mov al, byte ptr [bp + 8]
0003:0266  24 0F                        and al, 0xf
0003:0268  8A E0                        mov ah, al
0003:026A  C0 E4 04                     shl ah, 4
0003:026D  0A E0                        or ah, al
0003:026F  F6 46 06 01                  test byte ptr [bp + 6], 1
0003:0273  74 14                        je 0x289
0003:0275  AC                           lodsb al, byte ptr [si]
0003:0276  32 C4                        xor al, ah
0003:0278  84 C6                        test dh, al
0003:027A  74 B2                        je 0x22e
0003:027C  C0 CE 04                     ror dh, 4
0003:027F  49                           dec cx
0003:0280  E3 1B                        jcxz 0x29d
0003:0282  80 F2 01                     xor dl, 1
0003:0285  74 F1                        je 0x278
0003:0287  75 EC                        jne 0x275
0003:0289  AC                           lodsb al, byte ptr [si]
0003:028A  32 C4                        xor al, ah
0003:028C  84 C6                        test dh, al
0003:028E  75 9E                        jne 0x22e
0003:0290  C0 CE 04                     ror dh, 4
0003:0293  49                           dec cx
0003:0294  74 07                        je 0x29d
0003:0296  80 F2 01                     xor dl, 1
0003:0299  74 F1                        je 0x28c
0003:029B  75 EC                        jne 0x289
0003:029D  B8 FF FF                     mov ax, 0xffff
0003:02A0  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:02A4  75 03                        jne 0x2a9
0003:02A6  8B 46 FC                     mov ax, word ptr [bp - 4]
0003:02A9  EB 7D                        jmp 0x328
0003:02AC  8B CB                        mov cx, bx
0003:02AE  C1 E9 03                     shr cx, 3
0003:02B1  03 F1                        add si, cx
0003:02B3  41                           inc cx
0003:02B4  83 E3 07                     and bx, 7
0003:02B7  2E 8A 9F A0 01               mov bl, byte ptr cs:[bx + 0x1a0]
0003:02BC  FE CB                        dec bl
0003:02BE  FD                           std
0003:02BF  BA 01 00                     mov dx, 1
0003:02C2  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:02C6  75 0E                        jne 0x2d6
0003:02C8  FC                           cld
0003:02C9  D0 E3                        shl bl, 1
0003:02CB  FE C3                        inc bl
0003:02CD  F6 D3                        not bl
0003:02CF  2B CF                        sub cx, di
0003:02D1  F7 D9                        neg cx
0003:02D3  41                           inc cx
0003:02D4  F7 DA                        neg dx
0003:02D6  F6 D3                        not bl
0003:02D8  C1 E7 03                     shl di, 3
0003:02DB  8A 66 06                     mov ah, byte ptr [bp + 6]
0003:02DE  D0 EC                        shr ah, 1
0003:02E0  1A E4                        sbb ah, ah
0003:02E2  8A 46 08                     mov al, byte ptr [bp + 8]
0003:02E5  D0 E8                        shr al, 1
0003:02E7  1A C0                        sbb al, al
0003:02E9  32 E0                        xor ah, al
0003:02EB  AC                           lodsb al, byte ptr [si]
0003:02EC  32 C4                        xor al, ah
0003:02EE  22 C3                        and al, bl
0003:02F0  75 13                        jne 0x305
0003:02F2  8A C4                        mov al, ah
0003:02F4  49                           dec cx
0003:02F5  74 A6                        je 0x29d
0003:02F7  87 F7                        xchg di, si
0003:02F9  F3 AE                        repe scasb al, byte ptr es:[di]
0003:02FB  74 A0                        je 0x29d
0003:02FD  41                           inc cx
0003:02FE  87 F7                        xchg di, si
0003:0300  03 F2                        add si, dx
0003:0302  AC                           lodsb al, byte ptr [si]
0003:0303  32 C4                        xor al, ah
0003:0305  C1 E1 03                     shl cx, 3
0003:0308  F6 46 06 02                  test byte ptr [bp + 6], 2
0003:030C  75 10                        jne 0x31e
0003:030E  2B CF                        sub cx, di
0003:0310  F7 D1                        not cx
0003:0312  41                           inc cx
0003:0313  D0 E0                        shl al, 1
0003:0315  73 FB                        jae 0x312
0003:0317  3B 4E FC                     cmp cx, word ptr [bp - 4]
0003:031A  7D 81                        jge 0x29d
0003:031C  EB 05                        jmp 0x323
0003:031E  49                           dec cx
0003:031F  D1 E8                        shr ax, 1
0003:0321  73 FB                        jae 0x31e
0003:0323  8B C1                        mov ax, cx
0003:0325  EB 01                        jmp 0x328
0003:0328  FC                           cld
0003:0329  07                           pop es
0003:032A  5F                           pop di
0003:032B  5E                           pop si
0003:032C  8D 66 FE                     lea sp, [bp - 2]
0003:032F  1F                           pop ds
0003:0330  5D                           pop bp
0003:0331  4D                           dec bp
0003:0332  CA 0E 00                     retf 0xe

; FUNCTION 0003:0335 (19 instructions)
0003:0335  2B 44 04                     sub ax, word ptr [si + 4]
0003:0338  40                           inc ax
0003:0339  F7 D8                        neg ax
0003:033B  8B 5C 06                     mov bx, word ptr [si + 6]
0003:033E  F7 E3                        mul bx
0003:0340  03 44 0A                     add ax, word ptr [si + 0xa]
0003:0343  83 D2 00                     adc dx, 0
0003:0346  03 D8                        add bx, ax
0003:0348  73 0C                        jae 0x356
0003:034A  8B 5C 0C                     mov bx, word ptr [si + 0xc]
0003:034D  53                           push bx
0003:034E  52                           push dx
0003:034F  50                           push ax
0003:0350  9A 0B 45 82 01               lcall 0x182, 0x450b
0003:0355  C3                           ret
0003:0356  B9 FF FF                     mov cx, 0xffff
0003:0359  D3 E2                        shl dx, cl
0003:035B  03 54 0C                     add dx, word ptr [si + 0xc]
0003:035E  C3                           ret

; FUNCTION 0004:0000 (18 instructions)
0004:0000  5B                           pop bx
0004:0001  2B C4                        sub ax, sp
0004:0003  73 19                        jae 0x1e
0004:0005  F7 D8                        neg ax
0004:0007  36 39 06 0A 00               cmp word ptr ss:[0xa], ax
0004:000C  77 10                        ja 0x1e
0004:000E  36 39 06 0C 00               cmp word ptr ss:[0xc], ax
0004:0013  76 04                        jbe 0x19
0004:0015  36 A3 0C 00                  mov word ptr ss:[0xc], ax
0004:0019  8B E0                        mov sp, ax
0004:001B  F8                           clc
0004:001C  FF E3                        jmp bx
0004:001E  36 A1 0A 00                  mov ax, word ptr ss:[0xa]
0004:0022  36 A3 0C 00                  mov word ptr ss:[0xc], ax
0004:0026  33 C0                        xor ax, ax
0004:0028  BA 00 80                     mov dx, 0x8000
0004:002B  F9                           stc
0004:002C  FF E3                        jmp bx

; FUNCTION 0004:0030 (1 instructions)
0004:0030  C8 07 36 07                  enter 0x3607, 7

; FUNCTION 0004:0034 (57 instructions)
0004:0034  C8 07 7B 07                  enter 0x7b07, 7
0004:0038  F7 07 5F 07                  test word ptr [bx], 0x75f
0004:003C  F7 07 3F 0A                  test word ptr [bx], 0xa3f
0004:0040  84 0A                        test byte ptr [bp + si], cl
0004:0042  CC                           int3
0004:0043  09 84 0A 3F                  or word ptr [si + 0x3f0a], ax
0004:0047  0A D9                        or bl, cl
0004:0049  0A 1D                        or bl, byte ptr [di]
0004:004B  0A D9                        or bl, cl
0004:004D  0A B1 08 C1                  or dh, byte ptr [bx + di - 0x3ef8]
0004:0051  08 5D 08                     or byte ptr [di + 8], bl
0004:0054  C1 08 B1                     ror word ptr [bx + si], 0xb1
0004:0057  08 FA                        or dl, bh
0004:0059  08 95 08 FA                  or byte ptr [di - 0x5f8], dl
0004:005D  08 7D 0B                     or byte ptr [di + 0xb], bh
0004:0060  B2 0B                        mov dl, 0xb
0004:0062  FB                           sti
0004:0063  0A B2 0B 7D                  or dh, byte ptr [bp + si + 0x7d0b]
0004:0067  0B 11                        or dx, word ptr [bx + di]
0004:0069  0C 5B                        or al, 0x5b
0004:006B  0B 11                        or dx, word ptr [bx + di]
0004:006D  0C 4B                        or al, 0x4b
0004:006F  08 45 08                     or byte ptr [di + 8], al
0004:0072  4B                           dec bx
0004:0073  08 13                        or byte ptr [bp + di], dl
0004:0075  08 54 08                     or byte ptr [si + 8], dl
0004:0078  45                           inc bp
0004:0079  08 54 08                     or byte ptr [si + 8], dl
0004:007C  26 08 78 09                  or byte ptr es:[bx + si + 9], bh
0004:0080  76 09                        jbe 0x8b
0004:0082  78 09                        js 0x8d
0004:0084  16                           push ss
0004:0085  09 7D 09                     or word ptr [di + 9], di
0004:0088  76 09                        jbe 0x93
0004:008A  7D 09                        jge 0x95
0004:008B  09 40 09                     or word ptr [bx + si + 9], ax
0004:008C  40                           inc ax
0004:008D  09 82 09 86                  or word ptr [bp + si - 0x79f7], ax
0004:008E  82 09 86                     or byte ptr [bx + di], 0x86
0004:0091  09 8B 09 92                  or word ptr [bp + di - 0x6df7], cx
0004:0093  09 92 09 99                  or word ptr [bp + si - 0x66f7], dx
0004:0095  09 99 09 A2                  or word ptr [bx + di - 0x5df7], bx
0004:0097  09 A2 09 A5                  or word ptr [bp + si - 0x5af7], sp
0004:0099  09 A5 09 A8                  or word ptr [di - 0x57f7], sp
0004:009B  09 A8 09 AD                  or word ptr [bx + si - 0x52f7], bp
0004:009D  09 AD 09 B0                  or word ptr [di - 0x4ff7], bp
0004:009F  09 B0 09 B5                  or word ptr [bx + si - 0x4af7], si
0004:00A1  09 B5 09 B6                  or word ptr [di - 0x49f7], si
0004:00A3  09 B6 09 BD                  or word ptr [bp - 0x42f7], si
0004:00A5  09 BD 09 C0                  or word ptr [di - 0x3ff7], di
0004:00A7  09 C0                        or ax, ax
0004:00A9  09 C5                        or bp, ax
0004:00AB  09 C8                        or ax, cx
0004:00AD  09 FF                        or di, di
0004:00AF  00 00                        add byte ptr [bx + si], al
0004:00B1  FF 00                        inc word ptr [bx + si]
0004:00B3  00 FF                        add bh, bh

; FUNCTION 0004:00AC (3 instructions)
0004:00AC  C8 09 FF 00                  enter -0xf7, 0
0004:00B0  00 FF                        add bh, bh
0004:00B2  00 00                        add byte ptr [bx + si], al

; FUNCTION 0004:0100 (3 instructions)
0004:0100  8C D8                        mov ax, ds
0004:0102  90                           nop
0004:0103  45                           inc bp

; FUNCTION 0004:0104 (123 instructions)
0004:0104  55                           push bp
0004:0105  8B EC                        mov bp, sp
0004:0107  1E                           push ds
0004:0108  8E D8                        mov ds, ax
0004:010A  B8 76 00                     mov ax, 0x76
0004:010D  9A FF FF 00 00               lcall 0, 0xffff
0004:0112  56                           push si
0004:0113  57                           push di
0004:0114  06                           push es
0004:0115  73 03                        jae 0x11a
0004:0117  E9 2C 01                     jmp 0x246
0004:011A  FC                           cld
0004:011B  A0 04 00                     mov al, byte ptr [4]
0004:011E  C5 76 1E                     lds si, ptr [bp + 0x1e]
0004:0121  8B 7C 0A                     mov di, word ptr [si + 0xa]
0004:0124  89 7E DE                     mov word ptr [bp - 0x22], di
0004:0127  8B 7C 0C                     mov di, word ptr [si + 0xc]
0004:012A  89 7E E0                     mov word ptr [bp - 0x20], di
0004:012D  C6 46 F8 00                  mov byte ptr [bp - 8], 0
0004:0131  8B 0C                        mov cx, word ptr [si]
0004:0133  E3 0B                        jcxz 0x140
0004:0135  3C 00                        cmp al, 0
0004:0137  75 03                        jne 0x13c
0004:0139  E9 0A 01                     jmp 0x246
0004:013C  80 4E F8 82                  or byte ptr [bp - 8], 0x82
0004:0140  80 7C 09 08                  cmp byte ptr [si + 9], 8
0004:0144  75 04                        jne 0x14a
0004:0146  80 4E F8 02                  or byte ptr [bp - 8], 2
0004:014A  8B 7C 06                     mov di, word ptr [si + 6]
0004:014D  89 7E F2                     mov word ptr [bp - 0xe], di
0004:0150  8B 7C 0C                     mov di, word ptr [si + 0xc]
0004:0153  89 7E F6                     mov word ptr [bp - 0xa], di
0004:0156  8B 7C 0A                     mov di, word ptr [si + 0xa]
0004:0159  89 7E F4                     mov word ptr [bp - 0xc], di
0004:015C  C7 46 F0 FF FF               mov word ptr [bp - 0x10], 0xffff
0004:0161  C7 46 EC 00 00               mov word ptr [bp - 0x14], 0
0004:0166  C7 46 EE 00 00               mov word ptr [bp - 0x12], 0
0004:016B  8B 4C 16                     mov cx, word ptr [si + 0x16]
0004:016E  F6 46 F8 80                  test byte ptr [bp - 8], 0x80
0004:0172  74 01                        je 0x175
0004:0174  41                           inc cx
0004:0175  E3 13                        jcxz 0x18a
0004:0177  89 4E EC                     mov word ptr [bp - 0x14], cx
0004:017A  80 4E F8 40                  or byte ptr [bp - 8], 0x40
0004:017E  8B 4C 1A                     mov cx, word ptr [si + 0x1a]
0004:0181  89 4E EE                     mov word ptr [bp - 0x12], cx
0004:0184  8B 4C 18                     mov cx, word ptr [si + 0x18]
0004:0187  89 4E F0                     mov word ptr [bp - 0x10], cx
0004:018A  C7 46 98 00 00               mov word ptr [bp - 0x68], 0
0004:018F  C5 5E 06                     lds bx, ptr [bp + 6]
0004:0192  8C D8                        mov ax, ds
0004:0194  0B C3                        or ax, bx
0004:0196  74 1C                        je 0x1b4
0004:0198  8B 07                        mov ax, word ptr [bx]
0004:019A  89 46 8E                     mov word ptr [bp - 0x72], ax
0004:019D  8B 47 02                     mov ax, word ptr [bx + 2]
0004:01A0  89 46 8A                     mov word ptr [bp - 0x76], ax
0004:01A3  8B 47 04                     mov ax, word ptr [bx + 4]
0004:01A6  89 46 8C                     mov word ptr [bp - 0x74], ax
0004:01A9  8B 47 06                     mov ax, word ptr [bx + 6]
0004:01AC  89 46 88                     mov word ptr [bp - 0x78], ax
0004:01AF  C7 46 98 01 00               mov word ptr [bp - 0x68], 1
0004:01B4  C5 76 12                     lds si, ptr [bp + 0x12]
0004:01B7  8A 24                        mov ah, byte ptr [si]
0004:01B9  F6 46 F8 02                  test byte ptr [bp - 8], 2
0004:01BD  75 07                        jne 0x1c6
0004:01BF  8A 64 01                     mov ah, byte ptr [si + 1]
0004:01C2  D0 EC                        shr ah, 1
0004:01C4  1A E4                        sbb ah, ah
0004:01C6  88 66 FC                     mov byte ptr [bp - 4], ah
0004:01C9  C4 7E 0A                     les di, ptr [bp + 0xa]
0004:01CC  26 8B 55 02                  mov dx, word ptr es:[di + 2]
0004:01D0  88 56 E7                     mov byte ptr [bp - 0x19], dl
0004:01D3  26 8A 55 04                  mov dl, byte ptr es:[di + 4]
0004:01D7  F6 46 F8 02                  test byte ptr [bp - 8], 2
0004:01DB  75 08                        jne 0x1e5
0004:01DD  26 8A 55 05                  mov dl, byte ptr es:[di + 5]
0004:01E1  D0 EA                        shr dl, 1
0004:01E3  1A D2                        sbb dl, dl
0004:01E5  88 56 FD                     mov byte ptr [bp - 3], dl
0004:01E8  26 8B 1D                     mov bx, word ptr es:[di]
0004:01EB  4B                           dec bx
0004:01EC  83 E3 0F                     and bx, 0xf
0004:01EF  89 5E FA                     mov word ptr [bp - 6], bx
0004:01F2  D1 E3                        shl bx, 1
0004:01F4  2E 8B 9F 8E 00               mov bx, word ptr cs:[bx + 0x8e]
0004:01F9  89 5E EA                     mov word ptr [bp - 0x16], bx
0004:01FC  8B 4C 04                     mov cx, word ptr [si + 4]
0004:01FF  88 4E A1                     mov byte ptr [bp - 0x5f], cl
0004:0202  80 F9 05                     cmp cl, 5
0004:0205  7F 05                        jg 0x20c
0004:0207  7C 06                        jl 0x20f
0004:0209  EB 3D                        jmp 0x248
0004:020C  EB 38                        jmp 0x246
0004:020F  8B F1                        mov si, cx
0004:0211  D1 E6                        shl si, 1
0004:0213  2E 8B 84 B6 00               mov ax, word ptr cs:[si + 0xb6]
0004:0218  89 46 B4                     mov word ptr [bp - 0x4c], ax
0004:021B  C7 46 B6 00 00               mov word ptr [bp - 0x4a], 0
0004:0220  88 46 CC                     mov byte ptr [bp - 0x34], al
0004:0223  C7 46 C8 65 06               mov word ptr [bp - 0x38], 0x665
0004:0228  E3 09                        jcxz 0x233
0004:022A  C7 46 C8 55 06               mov word ptr [bp - 0x38], 0x655
0004:022F  80 4E F8 01                  or byte ptr [bp - 8], 1
0004:0233  C5 76 16                     lds si, ptr [bp + 0x16]
0004:0236  AD                           lodsw ax, word ptr [si]
0004:0237  8B D0                        mov dx, ax
0004:0239  AD                           lodsw ax, word ptr [si]
0004:023A  8B C8                        mov cx, ax
0004:023C  06                           push es
0004:023D  E8 14 00                     call 0x254
0004:0240  07                           pop es
0004:0241  B8 01 00                     mov ax, 1
0004:0244  EB 02                        jmp 0x248
0004:0246  33 C0                        xor ax, ax
0004:0248  07                           pop es
0004:0249  5F                           pop di
0004:024A  5E                           pop si
0004:024B  8D 66 FE                     lea sp, [bp - 2]
0004:024E  1F                           pop ds
0004:024F  5D                           pop bp
0004:0250  4D                           dec bp
0004:0251  CA 1C 00                     retf 0x1c

; FUNCTION 0004:0225 (3 instructions)
0004:0225  C8 65 06 E3                  enter 0x665, -0x1d
0004:0229  09 C7                        or di, ax
0004:022B  46                           inc si

; FUNCTION 0004:022C (22 instructions)
0004:022C  C8 55 06 80                  enter 0x655, -0x80
0004:0230  4E                           dec si
0004:0231  F8                           clc
0004:0232  01 C5                        add bp, ax
0004:0234  76 16                        jbe 0x24c
0004:0236  AD                           lodsw ax, word ptr [si]
0004:0237  8B D0                        mov dx, ax
0004:0239  AD                           lodsw ax, word ptr [si]
0004:023A  8B C8                        mov cx, ax
0004:023C  06                           push es
0004:023D  E8 14 00                     call 0x254
0004:0240  07                           pop es
0004:0241  B8 01 00                     mov ax, 1
0004:0244  EB 02                        jmp 0x248
0004:0248  07                           pop es
0004:0249  5F                           pop di
0004:024A  5E                           pop si
0004:024B  8D 66 FE                     lea sp, [bp - 2]
0004:024E  1F                           pop ds
0004:024F  5D                           pop bp
0004:0250  4D                           dec bp
0004:0251  CA 1C 00                     retf 0x1c

; FUNCTION 0004:023B (12 instructions)
0004:023B  C8 06 E8 14                  enter -0x17fa, 0x14
0004:023F  00 07                        add byte ptr [bx], al
0004:0241  B8 01 00                     mov ax, 1
0004:0244  EB 02                        jmp 0x248
0004:0248  07                           pop es
0004:0249  5F                           pop di
0004:024A  5E                           pop si
0004:024B  8D 66 FE                     lea sp, [bp - 2]
0004:024E  1F                           pop ds
0004:024F  5D                           pop bp
0004:0250  4D                           dec bp
0004:0251  CA 1C 00                     retf 0x1c

; FUNCTION 0004:0254 (24 instructions)
0004:0254  8B 46 1A                     mov ax, word ptr [bp + 0x1a]
0004:0257  48                           dec ax
0004:0258  74 1D                        je 0x277
0004:025A  8B D9                        mov bx, cx
0004:025C  8B C8                        mov cx, ax
0004:025E  51                           push cx
0004:025F  AD                           lodsw ax, word ptr [si]
0004:0260  8B F8                        mov di, ax
0004:0262  AD                           lodsw ax, word ptr [si]
0004:0263  56                           push si
0004:0264  8B F0                        mov si, ax
0004:0266  8B CA                        mov cx, dx
0004:0268  87 CB                        xchg bx, cx
0004:026A  56                           push si
0004:026B  57                           push di
0004:026C  1E                           push ds
0004:026D  E8 08 00                     call 0x278
0004:0270  1F                           pop ds
0004:0271  5A                           pop dx
0004:0272  5B                           pop bx
0004:0273  5E                           pop si
0004:0274  59                           pop cx
0004:0275  E2 E7                        loop 0x25e
0004:0277  C3                           ret

; FUNCTION 0004:025D (21 instructions)
0004:025D  C8 51 AD 8B                  enter -0x52af, -0x75
0004:025E  51                           push cx
0004:025F  AD                           lodsw ax, word ptr [si]
0004:0260  8B F8                        mov di, ax
0004:0261  F8                           clc
0004:0262  AD                           lodsw ax, word ptr [si]
0004:0263  56                           push si
0004:0264  8B F0                        mov si, ax
0004:0266  8B CA                        mov cx, dx
0004:0268  87 CB                        xchg bx, cx
0004:026A  56                           push si
0004:026B  57                           push di
0004:026C  1E                           push ds
0004:026D  E8 08 00                     call 0x278
0004:0270  1F                           pop ds
0004:0271  5A                           pop dx
0004:0272  5B                           pop bx
0004:0273  5E                           pop si
0004:0274  59                           pop cx
0004:0275  E2 E7                        loop 0x25e
0004:0277  C3                           ret

; FUNCTION 0004:0278 (112 instructions)
0004:0278  C7 46 A8 00 00               mov word ptr [bp - 0x58], 0
0004:027D  F7 46 98 01 00               test word ptr [bp - 0x68], 1
0004:0282  74 06                        je 0x28a
0004:0284  E8 F5 03                     call 0x67c
0004:0287  EB 33                        jmp 0x2bc
0004:028A  3B DF                        cmp bx, di
0004:028C  7E 09                        jle 0x297
0004:028E  87 DF                        xchg di, bx
0004:0290  87 CE                        xchg si, cx
0004:0292  81 4E A8 80 00               or word ptr [bp - 0x58], 0x80
0004:0297  89 5E C6                     mov word ptr [bp - 0x3a], bx
0004:029A  89 4E C4                     mov word ptr [bp - 0x3c], cx
0004:029D  2B FB                        sub di, bx
0004:029F  2B F1                        sub si, cx
0004:02A1  7D 07                        jge 0x2aa
0004:02A3  F7 DE                        neg si
0004:02A5  81 4E A8 04 01               or word ptr [bp - 0x58], 0x104
0004:02AA  3B F7                        cmp si, di
0004:02AC  76 06                        jbe 0x2b4
0004:02AE  87 FE                        xchg si, di
0004:02B0  83 4E A8 02                  or word ptr [bp - 0x58], 2
0004:02B4  C7 46 C2 00 00               mov word ptr [bp - 0x3e], 0
0004:02B9  89 7E BE                     mov word ptr [bp - 0x42], di
0004:02BC  F7 46 A8 80 00               test word ptr [bp - 0x58], 0x80
0004:02C1  74 0D                        je 0x2d0
0004:02C3  83 7E C2 01                  cmp word ptr [bp - 0x3e], 1
0004:02C7  73 1D                        jae 0x2e6
0004:02C9  C7 46 C2 01 00               mov word ptr [bp - 0x3e], 1
0004:02CE  EB 16                        jmp 0x2e6
0004:02D0  39 7E BE                     cmp word ptr [bp - 0x42], di
0004:02D3  72 11                        jb 0x2e6
0004:02D5  4F                           dec di
0004:02D6  89 7E BE                     mov word ptr [bp - 0x42], di
0004:02D9  47                           inc di
0004:02DA  75 0A                        jne 0x2e6
0004:02DC  C7 46 C2 01 00               mov word ptr [bp - 0x3e], 1
0004:02E1  C7 46 BE 00 00               mov word ptr [bp - 0x42], 0
0004:02E6  80 7E A1 00                  cmp byte ptr [bp - 0x5f], 0
0004:02EA  74 08                        je 0x2f4
0004:02EC  80 7E A1 05                  cmp byte ptr [bp - 0x5f], 5
0004:02F0  74 02                        je 0x2f4
0004:02F2  EB 03                        jmp 0x2f7
0004:02F4  E9 86 00                     jmp 0x37d
0004:02F7  F7 46 A8 02 00               test word ptr [bp - 0x58], 2
0004:02FC  74 02                        je 0x300
0004:02FE  87 FE                        xchg si, di
0004:0300  B8 40 00                     mov ax, 0x40
0004:0303  BB 55 00                     mov bx, 0x55
0004:0306  F7 E7                        mul di
0004:0308  93                           xchg bx, ax
0004:0309  8B CA                        mov cx, dx
0004:030B  F7 E6                        mul si
0004:030D  3B D1                        cmp dx, cx
0004:030F  72 06                        jb 0x317
0004:0311  77 17                        ja 0x32a
0004:0313  3B C3                        cmp ax, bx
0004:0315  77 13                        ja 0x32a
0004:0317  B8 40 00                     mov ax, 0x40
0004:031A  89 46 BA                     mov word ptr [bp - 0x46], ax
0004:031D  89 46 B8                     mov word ptr [bp - 0x48], ax
0004:0320  89 46 9A                     mov word ptr [bp - 0x66], ax
0004:0323  89 46 96                     mov word ptr [bp - 0x6a], ax
0004:0326  8B C8                        mov cx, ax
0004:0328  EB 1A                        jmp 0x344
0004:032A  B8 55 00                     mov ax, 0x55
0004:032D  89 46 BA                     mov word ptr [bp - 0x46], ax
0004:0330  8B C8                        mov cx, ax
0004:0332  89 46 B8                     mov word ptr [bp - 0x48], ax
0004:0335  89 46 9A                     mov word ptr [bp - 0x66], ax
0004:0338  89 46 96                     mov word ptr [bp - 0x6a], ax
0004:033B  3B FE                        cmp di, si
0004:033D  72 05                        jb 0x344
0004:033F  C7 46 96 00 00               mov word ptr [bp - 0x6a], 0
0004:0344  F7 46 A8 02 00               test word ptr [bp - 0x58], 2
0004:0349  74 02                        je 0x34d
0004:034B  87 FE                        xchg si, di
0004:034D  8B DF                        mov bx, di
0004:034F  2B DE                        sub bx, si
0004:0351  F7 E3                        mul bx
0004:0353  91                           xchg cx, ax
0004:0354  F7 E6                        mul si
0004:0356  03 C1                        add ax, cx
0004:0358  8B 5E B6                     mov bx, word ptr [bp - 0x4a]
0004:035B  03 C3                        add ax, bx
0004:035D  89 46 B6                     mov word ptr [bp - 0x4a], ax
0004:0360  8B 56 B4                     mov dx, word ptr [bp - 0x4c]
0004:0363  F7 46 A8 80 00               test word ptr [bp - 0x58], 0x80
0004:0368  74 06                        je 0x370
0004:036A  8B D8                        mov bx, ax
0004:036C  F7 D3                        not bx
0004:036E  8A D6                        mov dl, dh
0004:0370  88 5E CE                     mov byte ptr [bp - 0x32], bl
0004:0373  8A CF                        mov cl, bh
0004:0375  80 E1 07                     and cl, 7
0004:0378  D2 C2                        rol dl, cl
0004:037A  88 56 CC                     mov byte ptr [bp - 0x34], dl
0004:037D  8B C6                        mov ax, si
0004:037F  03 C0                        add ax, ax
0004:0381  3B C7                        cmp ax, di
0004:0383  76 09                        jbe 0x38e
0004:0385  2B F7                        sub si, di
0004:0387  F7 DE                        neg si
0004:0389  81 76 A8 01 01               xor word ptr [bp - 0x58], 0x101
0004:038E  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0004:0391  87 46 B8                     xchg word ptr [bp - 0x48], ax
0004:0394  89 46 BA                     mov word ptr [bp - 0x46], ax
0004:0397  8B 46 C2                     mov ax, word ptr [bp - 0x3e]
0004:039A  3B 46 BE                     cmp ax, word ptr [bp - 0x42]
0004:039D  77 06                        ja 0x3a5
0004:039F  89 76 A6                     mov word ptr [bp - 0x5a], si
0004:03A2  E8 01 00                     call 0x3a6
0004:03A5  C3                           ret

; FUNCTION 0004:0327 (49 instructions)
0004:0327  C8 EB 1A B8                  enter 0x1aeb, -0x48
0004:032B  55                           push bp
0004:032C  00 89 46 BA                  add byte ptr [bx + di - 0x45ba], cl
0004:0330  8B C8                        mov cx, ax
0004:0332  89 46 B8                     mov word ptr [bp - 0x48], ax
0004:0335  89 46 9A                     mov word ptr [bp - 0x66], ax
0004:0338  89 46 96                     mov word ptr [bp - 0x6a], ax
0004:033B  3B FE                        cmp di, si
0004:033D  72 05                        jb 0x344
0004:033F  C7 46 96 00 00               mov word ptr [bp - 0x6a], 0
0004:0344  F7 46 A8 02 00               test word ptr [bp - 0x58], 2
0004:0349  74 02                        je 0x34d
0004:034B  87 FE                        xchg si, di
0004:034D  8B DF                        mov bx, di
0004:034F  2B DE                        sub bx, si
0004:0351  F7 E3                        mul bx
0004:0353  91                           xchg cx, ax
0004:0354  F7 E6                        mul si
0004:0356  03 C1                        add ax, cx
0004:0358  8B 5E B6                     mov bx, word ptr [bp - 0x4a]
0004:035B  03 C3                        add ax, bx
0004:035D  89 46 B6                     mov word ptr [bp - 0x4a], ax
0004:0360  8B 56 B4                     mov dx, word ptr [bp - 0x4c]
0004:0363  F7 46 A8 80 00               test word ptr [bp - 0x58], 0x80
0004:0368  74 06                        je 0x370
0004:036A  8B D8                        mov bx, ax
0004:036C  F7 D3                        not bx
0004:036E  8A D6                        mov dl, dh
0004:0370  88 5E CE                     mov byte ptr [bp - 0x32], bl
0004:0373  8A CF                        mov cl, bh
0004:0375  80 E1 07                     and cl, 7
0004:0378  D2 C2                        rol dl, cl
0004:037A  88 56 CC                     mov byte ptr [bp - 0x34], dl
0004:037D  8B C6                        mov ax, si
0004:037F  03 C0                        add ax, ax
0004:0381  3B C7                        cmp ax, di
0004:0383  76 09                        jbe 0x38e
0004:0385  2B F7                        sub si, di
0004:0387  F7 DE                        neg si
0004:0389  81 76 A8 01 01               xor word ptr [bp - 0x58], 0x101
0004:038E  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0004:0391  87 46 B8                     xchg word ptr [bp - 0x48], ax
0004:0394  89 46 BA                     mov word ptr [bp - 0x46], ax
0004:0397  8B 46 C2                     mov ax, word ptr [bp - 0x3e]
0004:039A  3B 46 BE                     cmp ax, word ptr [bp - 0x42]
0004:039D  77 06                        ja 0x3a5
0004:039F  89 76 A6                     mov word ptr [bp - 0x5a], si
0004:03A2  E8 01 00                     call 0x3a6
0004:03A5  C3                           ret

; FUNCTION 0004:0331 (45 instructions)
0004:0331  C8 89 46 B8                  enter 0x4689, -0x48
0004:0335  89 46 9A                     mov word ptr [bp - 0x66], ax
0004:0338  89 46 96                     mov word ptr [bp - 0x6a], ax
0004:033B  3B FE                        cmp di, si
0004:033D  72 05                        jb 0x344
0004:033F  C7 46 96 00 00               mov word ptr [bp - 0x6a], 0
0004:0344  F7 46 A8 02 00               test word ptr [bp - 0x58], 2
0004:0349  74 02                        je 0x34d
0004:034B  87 FE                        xchg si, di
0004:034D  8B DF                        mov bx, di
0004:034F  2B DE                        sub bx, si
0004:0351  F7 E3                        mul bx
0004:0353  91                           xchg cx, ax
0004:0354  F7 E6                        mul si
0004:0356  03 C1                        add ax, cx
0004:0358  8B 5E B6                     mov bx, word ptr [bp - 0x4a]
0004:035B  03 C3                        add ax, bx
0004:035D  89 46 B6                     mov word ptr [bp - 0x4a], ax
0004:0360  8B 56 B4                     mov dx, word ptr [bp - 0x4c]
0004:0363  F7 46 A8 80 00               test word ptr [bp - 0x58], 0x80
0004:0368  74 06                        je 0x370
0004:036A  8B D8                        mov bx, ax
0004:036C  F7 D3                        not bx
0004:036E  8A D6                        mov dl, dh
0004:0370  88 5E CE                     mov byte ptr [bp - 0x32], bl
0004:0373  8A CF                        mov cl, bh
0004:0375  80 E1 07                     and cl, 7
0004:0378  D2 C2                        rol dl, cl
0004:037A  88 56 CC                     mov byte ptr [bp - 0x34], dl
0004:037D  8B C6                        mov ax, si
0004:037F  03 C0                        add ax, ax
0004:0381  3B C7                        cmp ax, di
0004:0383  76 09                        jbe 0x38e
0004:0385  2B F7                        sub si, di
0004:0387  F7 DE                        neg si
0004:0389  81 76 A8 01 01               xor word ptr [bp - 0x58], 0x101
0004:038E  8B 46 BA                     mov ax, word ptr [bp - 0x46]
0004:0391  87 46 B8                     xchg word ptr [bp - 0x48], ax
0004:0394  89 46 BA                     mov word ptr [bp - 0x46], ax
0004:0397  8B 46 C2                     mov ax, word ptr [bp - 0x3e]
0004:039A  3B 46 BE                     cmp ax, word ptr [bp - 0x42]
0004:039D  77 06                        ja 0x3a5
0004:039F  89 76 A6                     mov word ptr [bp - 0x5a], si
0004:03A2  E8 01 00                     call 0x3a6
0004:03A5  C3                           ret

; FUNCTION 0004:03A6 (268 instructions)
0004:03A6  0B F6                        or si, si
0004:03A8  75 13                        jne 0x3bd
0004:03AA  89 76 C0                     mov word ptr [bp - 0x40], si
0004:03AD  89 76 9E                     mov word ptr [bp - 0x62], si
0004:03B0  8B 46 BE                     mov ax, word ptr [bp - 0x42]
0004:03B3  2B 46 C2                     sub ax, word ptr [bp - 0x3e]
0004:03B6  40                           inc ax
0004:03B7  89 46 AA                     mov word ptr [bp - 0x56], ax
0004:03BA  E9 9A 00                     jmp 0x457
0004:03BD  8B C7                        mov ax, di
0004:03BF  33 D2                        xor dx, dx
0004:03C1  F7 F6                        div si
0004:03C3  89 46 B0                     mov word ptr [bp - 0x50], ax
0004:03C6  89 56 B2                     mov word ptr [bp - 0x4e], dx
0004:03C9  03 F6                        add si, si
0004:03CB  8B 46 C2                     mov ax, word ptr [bp - 0x3e]
0004:03CE  F7 E6                        mul si
0004:03D0  8B DF                        mov bx, di
0004:03D2  4B                           dec bx
0004:03D3  33 C9                        xor cx, cx
0004:03D5  80 7E A9 01                  cmp byte ptr [bp - 0x57], 1
0004:03D9  F5                           cmc
0004:03DA  13 C3                        adc ax, bx
0004:03DC  13 D1                        adc dx, cx
0004:03DE  D1 EA                        shr dx, 1
0004:03E0  D1 D8                        rcr ax, 1
0004:03E2  13 C9                        adc cx, cx
0004:03E4  F7 F7                        div di
0004:03E6  89 46 C0                     mov word ptr [bp - 0x40], ax
0004:03E9  8B C7                        mov ax, di
0004:03EB  2B C2                        sub ax, dx
0004:03ED  33 D2                        xor dx, dx
0004:03EF  03 C0                        add ax, ax
0004:03F1  13 D2                        adc dx, dx
0004:03F3  41                           inc cx
0004:03F4  2B C1                        sub ax, cx
0004:03F6  83 DA 00                     sbb dx, 0
0004:03F9  F7 F6                        div si
0004:03FB  40                           inc ax
0004:03FC  89 46 AC                     mov word ptr [bp - 0x54], ax
0004:03FF  D1 EA                        shr dx, 1
0004:0401  03 56 B2                     add dx, word ptr [bp - 0x4e]
0004:0404  2B 56 A6                     sub dx, word ptr [bp - 0x5a]
0004:0407  89 56 AE                     mov word ptr [bp - 0x52], dx
0004:040A  89 56 92                     mov word ptr [bp - 0x6e], dx
0004:040D  8B 46 BE                     mov ax, word ptr [bp - 0x42]
0004:0410  F7 E6                        mul si
0004:0412  8B DF                        mov bx, di
0004:0414  4B                           dec bx
0004:0415  33 C9                        xor cx, cx
0004:0417  80 7E A9 01                  cmp byte ptr [bp - 0x57], 1
0004:041B  F5                           cmc
0004:041C  13 C3                        adc ax, bx
0004:041E  13 D1                        adc dx, cx
0004:0420  D1 EA                        shr dx, 1
0004:0422  D1 D8                        rcr ax, 1
0004:0424  13 C9                        adc cx, cx
0004:0426  F7 F7                        div di
0004:0428  89 46 BC                     mov word ptr [bp - 0x44], ax
0004:042B  2B 46 C0                     sub ax, word ptr [bp - 0x40]
0004:042E  89 46 9E                     mov word ptr [bp - 0x62], ax
0004:0431  75 0C                        jne 0x43f
0004:0433  8B 46 BE                     mov ax, word ptr [bp - 0x42]
0004:0436  2B 46 C2                     sub ax, word ptr [bp - 0x3e]
0004:0439  40                           inc ax
0004:043A  89 46 AA                     mov word ptr [bp - 0x56], ax
0004:043D  EB 18                        jmp 0x457
0004:043F  8B C2                        mov ax, dx
0004:0441  33 D2                        xor dx, dx
0004:0443  03 C0                        add ax, ax
0004:0445  13 D2                        adc dx, dx
0004:0447  41                           inc cx
0004:0448  03 C1                        add ax, cx
0004:044A  83 D2 00                     adc dx, 0
0004:044D  F7 F6                        div si
0004:044F  F7 DA                        neg dx
0004:0451  15 00 00                     adc ax, 0
0004:0454  89 46 AA                     mov word ptr [bp - 0x56], ax
0004:0457  80 7E A1 00                  cmp byte ptr [bp - 0x5f], 0
0004:045B  74 25                        je 0x482
0004:045D  80 7E A1 05                  cmp byte ptr [bp - 0x5f], 5
0004:0461  74 1F                        je 0x482
0004:0463  8B 46 C2                     mov ax, word ptr [bp - 0x3e]
0004:0466  8B 5E C0                     mov bx, word ptr [bp - 0x40]
0004:0469  2B C3                        sub ax, bx
0004:046B  F7 66 BA                     mul word ptr [bp - 0x46]
0004:046E  93                           xchg bx, ax
0004:046F  F7 66 B8                     mul word ptr [bp - 0x48]
0004:0472  03 C3                        add ax, bx
0004:0474  00 46 CE                     add byte ptr [bp - 0x32], al
0004:0477  80 D4 00                     adc ah, 0
0004:047A  8A CC                        mov cl, ah
0004:047C  80 E1 07                     and cl, 7
0004:047F  D2 46 CC                     rol byte ptr [bp - 0x34], cl
0004:0482  8B 76 F2                     mov si, word ptr [bp - 0xe]
0004:0485  8B 5E C2                     mov bx, word ptr [bp - 0x3e]
0004:0488  8B 46 C0                     mov ax, word ptr [bp - 0x40]
0004:048B  B9 01 01                     mov cx, 0x101
0004:048E  8B 7E A8                     mov di, word ptr [bp - 0x58]
0004:0491  F7 C7 01 00                  test di, 1
0004:0495  74 06                        je 0x49d
0004:0497  2B C3                        sub ax, bx
0004:0499  F7 D8                        neg ax
0004:049B  32 ED                        xor ch, ch
0004:049D  F7 C7 02 00                  test di, 2
0004:04A1  74 03                        je 0x4a6
0004:04A3  93                           xchg bx, ax
0004:04A4  86 E9                        xchg cl, ch
0004:04A6  F7 C7 04 00                  test di, 4
0004:04AA  74 04                        je 0x4b0
0004:04AC  F7 D8                        neg ax
0004:04AE  F7 DE                        neg si
0004:04B0  88 4E 95                     mov byte ptr [bp - 0x6b], cl
0004:04B3  89 76 A4                     mov word ptr [bp - 0x5c], si
0004:04B6  F6 DD                        neg ch
0004:04B8  8A CD                        mov cl, ch
0004:04BA  23 F1                        and si, cx
0004:04BC  89 76 A2                     mov word ptr [bp - 0x5e], si
0004:04BF  03 5E C6                     add bx, word ptr [bp - 0x3a]
0004:04C2  03 46 C4                     add ax, word ptr [bp - 0x3c]
0004:04C5  8B FB                        mov di, bx
0004:04C7  33 D2                        xor dx, dx
0004:04C9  C7 46 D6 FF 7F               mov word ptr [bp - 0x2a], 0x7fff
0004:04CE  F6 46 F8 80                  test byte ptr [bp - 8], 0x80
0004:04D2  75 57                        jne 0x52b
0004:04D4  F6 46 F8 40                  test byte ptr [bp - 8], 0x40
0004:04D8  74 14                        je 0x4ee
0004:04DA  2B 46 F0                     sub ax, word ptr [bp - 0x10]
0004:04DD  72 05                        jb 0x4e4
0004:04DF  03 56 EC                     add dx, word ptr [bp - 0x14]
0004:04E2  EB F6                        jmp 0x4da
0004:04E4  F7 D8                        neg ax
0004:04E6  89 46 D6                     mov word ptr [bp - 0x2a], ax
0004:04E9  F7 D8                        neg ax
0004:04EB  03 46 F0                     add ax, word ptr [bp - 0x10]
0004:04EE  52                           push dx
0004:04EF  F7 66 F2                     mul word ptr [bp - 0xe]
0004:04F2  5A                           pop dx
0004:04F3  03 46 F4                     add ax, word ptr [bp - 0xc]
0004:04F6  03 56 F6                     add dx, word ptr [bp - 0xa]
0004:04F9  89 56 E0                     mov word ptr [bp - 0x20], dx
0004:04FC  8E DA                        mov ds, dx
0004:04FE  F6 46 F8 02                  test byte ptr [bp - 8], 2
0004:0502  75 19                        jne 0x51d
0004:0504  8B CF                        mov cx, di
0004:0506  C1 EF 03                     shr di, 3
0004:0509  03 C7                        add ax, di
0004:050B  89 46 DC                     mov word ptr [bp - 0x24], ax
0004:050E  89 46 DA                     mov word ptr [bp - 0x26], ax
0004:0511  83 E1 07                     and cx, 7
0004:0514  B3 80                        mov bl, 0x80
0004:0516  D2 CB                        ror bl, cl
0004:0518  88 5E D9                     mov byte ptr [bp - 0x27], bl
0004:051B  EB 3C                        jmp 0x559
0004:051D  03 C7                        add ax, di
0004:051F  89 46 DC                     mov word ptr [bp - 0x24], ax
0004:0522  89 46 DA                     mov word ptr [bp - 0x26], ax
0004:0525  C6 46 D9 FF                  mov byte ptr [bp - 0x27], 0xff
0004:0529  EB 2E                        jmp 0x559
0004:052B  42                           inc dx
0004:052C  2B 46 F0                     sub ax, word ptr [bp - 0x10]
0004:052F  73 FA                        jae 0x52b
0004:0531  4A                           dec dx
0004:0532  F7 D8                        neg ax
0004:0534  89 46 D6                     mov word ptr [bp - 0x2a], ax
0004:0537  F7 D8                        neg ax
0004:0539  03 46 F0                     add ax, word ptr [bp - 0x10]
0004:053C  88 56 91                     mov byte ptr [bp - 0x6f], dl
0004:053F  88 56 90                     mov byte ptr [bp - 0x70], dl
0004:0542  8B 56 E0                     mov dx, word ptr [bp - 0x20]
0004:0545  8E DA                        mov ds, dx
0004:0547  F7 66 F2                     mul word ptr [bp - 0xe]
0004:054A  03 C7                        add ax, di
0004:054C  03 46 DE                     add ax, word ptr [bp - 0x22]
0004:054F  89 46 DC                     mov word ptr [bp - 0x24], ax
0004:0552  89 46 DA                     mov word ptr [bp - 0x26], ax
0004:0555  C6 46 D9 FF                  mov byte ptr [bp - 0x27], 0xff
0004:0559  33 C0                        xor ax, ax
0004:055B  8A 46 F8                     mov al, byte ptr [bp - 8]
0004:055E  24 0F                        and al, 0xf
0004:0560  50                           push ax
0004:0561  C0 E0 04                     shl al, 4
0004:0564  8B F0                        mov si, ax
0004:0566  8B 5E A8                     mov bx, word ptr [bp - 0x58]
0004:0569  83 E3 0F                     and bx, 0xf
0004:056C  D1 E3                        shl bx, 1
0004:056E  2E 8B 80 2E 00               mov ax, word ptr cs:[bx + si + 0x2e]
0004:0573  89 46 E4                     mov word ptr [bp - 0x1c], ax
0004:0576  58                           pop ax
0004:0577  D0 E8                        shr al, 1
0004:0579  C0 E0 04                     shl al, 4
0004:057C  8B F0                        mov si, ax
0004:057E  2E 8B 80 6E 00               mov ax, word ptr cs:[bx + si + 0x6e]
0004:0583  89 46 E2                     mov word ptr [bp - 0x1e], ax
0004:0586  F6 46 F8 80                  test byte ptr [bp - 8], 0x80
0004:058A  75 06                        jne 0x592
0004:058C  8A 46 FC                     mov al, byte ptr [bp - 4]
0004:058F  88 46 D5                     mov byte ptr [bp - 0x2b], al
0004:0592  8A 46 FC                     mov al, byte ptr [bp - 4]
0004:0595  88 46 F9                     mov byte ptr [bp - 7], al
0004:0598  8B 46 9E                     mov ax, word ptr [bp - 0x62]
0004:059B  89 46 9C                     mov word ptr [bp - 0x64], ax
0004:059E  8A 46 CE                     mov al, byte ptr [bp - 0x32]
0004:05A1  88 46 CD                     mov byte ptr [bp - 0x33], al
0004:05A4  8A 46 CC                     mov al, byte ptr [bp - 0x34]
0004:05A7  F6 D0                        not al
0004:05A9  88 46 CB                     mov byte ptr [bp - 0x35], al
0004:05AC  C6 46 CF 00                  mov byte ptr [bp - 0x31], 0
0004:05B0  8B 76 A4                     mov si, word ptr [bp - 0x5c]
0004:05B3  8B 7E DC                     mov di, word ptr [bp - 0x24]
0004:05B6  F6 46 F8 02                  test byte ptr [bp - 8], 2
0004:05BA  75 1A                        jne 0x5d6
0004:05BC  53                           push bx
0004:05BD  8B 5E FA                     mov bx, word ptr [bp - 6]
0004:05C0  D0 4E D5                     ror byte ptr [bp - 0x2b], 1
0004:05C3  73 03                        jae 0x5c8
0004:05C5  C1 EB 02                     shr bx, 2
0004:05C8  83 E3 03                     and bx, 3
0004:05CB  03 DB                        add bx, bx
0004:05CD  2E 8B 87 AE 00               mov ax, word ptr cs:[bx + 0xae]
0004:05D2  89 46 D2                     mov word ptr [bp - 0x2e], ax
0004:05D5  5B                           pop bx
0004:05D6  8B 46 E0                     mov ax, word ptr [bp - 0x20]
0004:05D9  8E D8                        mov ds, ax
0004:05DB  8B 56 D6                     mov dx, word ptr [bp - 0x2a]
0004:05DE  8A 5E D9                     mov bl, byte ptr [bp - 0x27]
0004:05E1  8B 46 9C                     mov ax, word ptr [bp - 0x64]
0004:05E4  89 46 9E                     mov word ptr [bp - 0x62], ax
0004:05E7  0B C0                        or ax, ax
0004:05E9  74 27                        je 0x612
0004:05EB  8B 4E AC                     mov cx, word ptr [bp - 0x54]
0004:05EE  FF 56 E4                     call word ptr [bp - 0x1c]
0004:05F1  FF 56 E2                     call word ptr [bp - 0x1e]
0004:05F4  FF 56 C8                     call word ptr [bp - 0x38]
0004:05F7  FF 4E 9E                     dec word ptr [bp - 0x62]
0004:05FA  74 16                        je 0x612
0004:05FC  8B 4E B0                     mov cx, word ptr [bp - 0x50]
0004:05FF  8B 46 92                     mov ax, word ptr [bp - 0x6e]
0004:0602  0B C0                        or ax, ax
0004:0604  78 04                        js 0x60a
0004:0606  41                           inc cx
0004:0607  2B 46 A6                     sub ax, word ptr [bp - 0x5a]
0004:060A  03 46 B2                     add ax, word ptr [bp - 0x4e]
0004:060D  89 46 92                     mov word ptr [bp - 0x6e], ax
0004:0610  EB DC                        jmp 0x5ee
0004:0612  8B 4E AA                     mov cx, word ptr [bp - 0x56]
0004:0615  FF 56 E4                     call word ptr [bp - 0x1c]
0004:0618  F6 46 F8 01                  test byte ptr [bp - 8], 1
0004:061C  74 36                        je 0x654
0004:061E  80 7E E7 02                  cmp byte ptr [bp - 0x19], 2
0004:0622  75 30                        jne 0x654
0004:0624  80 76 CF 01                  xor byte ptr [bp - 0x31], 1
0004:0628  74 2A                        je 0x654
0004:062A  8A 46 FD                     mov al, byte ptr [bp - 3]
0004:062D  88 46 F9                     mov byte ptr [bp - 7], al
0004:0630  88 46 D5                     mov byte ptr [bp - 0x2b], al
0004:0633  8B 7E DA                     mov di, word ptr [bp - 0x26]
0004:0636  8A 56 90                     mov dl, byte ptr [bp - 0x70]
0004:0639  88 56 91                     mov byte ptr [bp - 0x6f], dl
0004:063C  89 7E DC                     mov word ptr [bp - 0x24], di
0004:063F  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0004:0642  89 46 92                     mov word ptr [bp - 0x6e], ax
0004:0645  8A 46 CD                     mov al, byte ptr [bp - 0x33]
0004:0648  88 46 CE                     mov byte ptr [bp - 0x32], al
0004:064B  8A 46 CB                     mov al, byte ptr [bp - 0x35]
0004:064E  88 46 CC                     mov byte ptr [bp - 0x34], al
0004:0651  E9 62 FF                     jmp 0x5b6
0004:0654  C3                           ret

; FUNCTION 0004:05F6 (59 instructions)
0004:05B6  F6 46 F8 02                  test byte ptr [bp - 8], 2
0004:05BA  75 1A                        jne 0x5d6
0004:05BC  53                           push bx
0004:05BD  8B 5E FA                     mov bx, word ptr [bp - 6]
0004:05C0  D0 4E D5                     ror byte ptr [bp - 0x2b], 1
0004:05C3  73 03                        jae 0x5c8
0004:05C5  C1 EB 02                     shr bx, 2
0004:05C8  83 E3 03                     and bx, 3
0004:05CB  03 DB                        add bx, bx
0004:05CD  2E 8B 87 AE 00               mov ax, word ptr cs:[bx + 0xae]
0004:05D2  89 46 D2                     mov word ptr [bp - 0x2e], ax
0004:05D5  5B                           pop bx
0004:05D6  8B 46 E0                     mov ax, word ptr [bp - 0x20]
0004:05D9  8E D8                        mov ds, ax
0004:05DB  8B 56 D6                     mov dx, word ptr [bp - 0x2a]
0004:05DE  8A 5E D9                     mov bl, byte ptr [bp - 0x27]
0004:05E1  8B 46 9C                     mov ax, word ptr [bp - 0x64]
0004:05E4  89 46 9E                     mov word ptr [bp - 0x62], ax
0004:05E7  0B C0                        or ax, ax
0004:05E9  74 27                        je 0x612
0004:05EB  8B 4E AC                     mov cx, word ptr [bp - 0x54]
0004:05EE  FF 56 E4                     call word ptr [bp - 0x1c]
0004:05F1  FF 56 E2                     call word ptr [bp - 0x1e]
0004:05F4  FF 56 C8                     call word ptr [bp - 0x38]
0004:05F6  C8 FF 4E 9E                  enter 0x4eff, -0x62
0004:05F7  FF 4E 9E                     dec word ptr [bp - 0x62]
0004:05FA  74 16                        je 0x612
0004:05FC  8B 4E B0                     mov cx, word ptr [bp - 0x50]
0004:05FF  8B 46 92                     mov ax, word ptr [bp - 0x6e]
0004:0602  0B C0                        or ax, ax
0004:0604  78 04                        js 0x60a
0004:0606  41                           inc cx
0004:0607  2B 46 A6                     sub ax, word ptr [bp - 0x5a]
0004:060A  03 46 B2                     add ax, word ptr [bp - 0x4e]
0004:060D  89 46 92                     mov word ptr [bp - 0x6e], ax
0004:0610  EB DC                        jmp 0x5ee
0004:0612  8B 4E AA                     mov cx, word ptr [bp - 0x56]
0004:0615  FF 56 E4                     call word ptr [bp - 0x1c]
0004:0618  F6 46 F8 01                  test byte ptr [bp - 8], 1
0004:061C  74 36                        je 0x654
0004:061E  80 7E E7 02                  cmp byte ptr [bp - 0x19], 2
0004:0622  75 30                        jne 0x654
0004:0624  80 76 CF 01                  xor byte ptr [bp - 0x31], 1
0004:0628  74 2A                        je 0x654
0004:062A  8A 46 FD                     mov al, byte ptr [bp - 3]
0004:062D  88 46 F9                     mov byte ptr [bp - 7], al
0004:0630  88 46 D5                     mov byte ptr [bp - 0x2b], al
0004:0633  8B 7E DA                     mov di, word ptr [bp - 0x26]
0004:0636  8A 56 90                     mov dl, byte ptr [bp - 0x70]
0004:0639  88 56 91                     mov byte ptr [bp - 0x6f], dl
0004:063C  89 7E DC                     mov word ptr [bp - 0x24], di
0004:063F  8B 46 AE                     mov ax, word ptr [bp - 0x52]
0004:0642  89 46 92                     mov word ptr [bp - 0x6e], ax
0004:0645  8A 46 CD                     mov al, byte ptr [bp - 0x33]
0004:0648  88 46 CE                     mov byte ptr [bp - 0x32], al
0004:064B  8A 46 CB                     mov al, byte ptr [bp - 0x35]
0004:064E  88 46 CC                     mov byte ptr [bp - 0x34], al
0004:0651  E9 62 FF                     jmp 0x5b6
0004:0654  C3                           ret

; FUNCTION 0004:067C (80 instructions)
0004:067C  3B DF                        cmp bx, di
0004:067E  7E 09                        jle 0x689
0004:0680  87 DF                        xchg di, bx
0004:0682  87 CE                        xchg si, cx
0004:0684  81 4E A8 80 00               or word ptr [bp - 0x58], 0x80
0004:0689  89 5E C6                     mov word ptr [bp - 0x3a], bx
0004:068C  89 4E C4                     mov word ptr [bp - 0x3c], cx
0004:068F  8B 46 8A                     mov ax, word ptr [bp - 0x76]
0004:0692  8B 56 88                     mov dx, word ptr [bp - 0x78]
0004:0695  2B C1                        sub ax, cx
0004:0697  2B D1                        sub dx, cx
0004:0699  2B F1                        sub si, cx
0004:069B  7D 0E                        jge 0x6ab
0004:069D  F7 DE                        neg si
0004:069F  F7 D8                        neg ax
0004:06A1  F7 DA                        neg dx
0004:06A3  40                           inc ax
0004:06A4  42                           inc dx
0004:06A5  92                           xchg dx, ax
0004:06A6  81 4E A8 04 01               or word ptr [bp - 0x58], 0x104
0004:06AB  F7 DB                        neg bx
0004:06AD  03 FB                        add di, bx
0004:06AF  8B 4E 8C                     mov cx, word ptr [bp - 0x74]
0004:06B2  03 CB                        add cx, bx
0004:06B4  03 5E 8E                     add bx, word ptr [bp - 0x72]
0004:06B7  3B F7                        cmp si, di
0004:06B9  76 09                        jbe 0x6c4
0004:06BB  87 F7                        xchg di, si
0004:06BD  93                           xchg bx, ax
0004:06BE  87 CA                        xchg dx, cx
0004:06C0  83 4E A8 02                  or word ptr [bp - 0x58], 2
0004:06C4  3B CB                        cmp cx, bx
0004:06C6  73 02                        jae 0x6ca
0004:06C8  33 DB                        xor bx, bx
0004:06CA  3B CF                        cmp cx, di
0004:06CC  76 03                        jbe 0x6d1
0004:06CE  8D 4D 01                     lea cx, [di + 1]
0004:06D1  3B CB                        cmp cx, bx
0004:06D3  77 0D                        ja 0x6e2
0004:06D5  C7 46 C2 01 00               mov word ptr [bp - 0x3e], 1
0004:06DA  C7 46 BE 00 00               mov word ptr [bp - 0x42], 0
0004:06DF  EB 54                        jmp 0x735
0004:06E2  49                           dec cx
0004:06E3  89 5E C2                     mov word ptr [bp - 0x3e], bx
0004:06E6  89 4E BE                     mov word ptr [bp - 0x42], cx
0004:06E9  8B DF                        mov bx, di
0004:06EB  80 7E A9 01                  cmp byte ptr [bp - 0x57], 1
0004:06EF  F5                           cmc
0004:06F0  83 D3 00                     adc bx, 0
0004:06F3  D1 EB                        shr bx, 1
0004:06F5  83 D3 00                     adc bx, 0
0004:06F8  8B CA                        mov cx, dx
0004:06FA  3B C8                        cmp cx, ax
0004:06FC  72 1E                        jb 0x71c
0004:06FE  0B C0                        or ax, ax
0004:0700  74 1A                        je 0x71c
0004:0702  3B C6                        cmp ax, si
0004:0704  77 CF                        ja 0x6d5
0004:0706  0B F6                        or si, si
0004:0708  74 12                        je 0x71c
0004:070A  F7 E7                        mul di
0004:070C  2B C3                        sub ax, bx
0004:070E  83 DA 00                     sbb dx, 0
0004:0711  F7 F6                        div si
0004:0713  40                           inc ax
0004:0714  3B 46 C2                     cmp ax, word ptr [bp - 0x3e]
0004:0717  72 03                        jb 0x71c
0004:0719  89 46 C2                     mov word ptr [bp - 0x3e], ax
0004:071C  3B CE                        cmp cx, si
0004:071E  77 15                        ja 0x735
0004:0720  E3 B3                        jcxz 0x6d5
0004:0722  8B C1                        mov ax, cx
0004:0724  F7 E7                        mul di
0004:0726  2B C3                        sub ax, bx
0004:0728  83 DA 00                     sbb dx, 0
0004:072B  F7 F6                        div si
0004:072D  3B 46 BE                     cmp ax, word ptr [bp - 0x42]
0004:0730  77 03                        ja 0x735
0004:0732  89 46 BE                     mov word ptr [bp - 0x42], ax
0004:0735  C3                           ret

; FUNCTION 0004:06FB (2 instructions)
0004:06FB  C8 72 1E 0B                  enter 0x1e72, 0xb
0004:06FF  C0 74 1A 3B                  sal byte ptr [si + 0x1a], 0x3b

; FUNCTION 0004:076C (6 instructions)
0004:076C  C8 FF F7 DA                  enter -0x801, -0x26
0004:0770  03 56 F0                     add dx, word ptr [bp - 0x10]
0004:0773  42                           inc dx
0004:0774  F7 5E EE                     neg word ptr [bp - 0x12]
0004:0777  F7 5E EC                     neg word ptr [bp - 0x14]
0004:077A  C3                           ret

; FUNCTION 0004:078D (31 instructions)
0004:078D  C8 3A FB 83                  enter -0x4c6, -0x7d
0004:0791  D1 00                        rol word ptr [bx + si], 1
0004:0793  8A C7                        mov al, bh
0004:0795  8A FB                        mov bh, bl
0004:0797  F6 DF                        neg bh
0004:0799  02 C0                        add al, al
0004:079B  FE C8                        dec al
0004:079D  E3 1B                        jcxz 0x7ba
0004:079F  8A E0                        mov ah, al
0004:07A1  23 C6                        and ax, si
0004:07A3  F6 D0                        not al
0004:07A5  20 05                        and byte ptr [di], al
0004:07A7  30 25                        xor byte ptr [di], ah
0004:07A9  47                           inc di
0004:07AA  49                           dec cx
0004:07AB  74 0B                        je 0x7b8
0004:07AD  8B C6                        mov ax, si
0004:07AF  F6 D0                        not al
0004:07B1  20 05                        and byte ptr [di], al
0004:07B3  30 25                        xor byte ptr [di], ah
0004:07B5  47                           inc di
0004:07B6  E2 F9                        loop 0x7b1
0004:07B8  B0 FF                        mov al, 0xff
0004:07BA  22 C7                        and al, bh
0004:07BC  8A E0                        mov ah, al
0004:07BE  23 C6                        and ax, si
0004:07C0  F6 D0                        not al
0004:07C2  20 05                        and byte ptr [di], al
0004:07C4  30 25                        xor byte ptr [di], ah
0004:07C6  5E                           pop si
0004:07C7  C3                           ret

; FUNCTION 0004:079C (26 instructions)
0004:079C  C8 E3 1B 8A                  enter 0x1be3, -0x76
0004:07A0  E0 23                        loopne 0x7c5
0004:07C5  25 5E C3                     and ax, 0xc35e
0004:07C8  8A C3                        mov al, bl
0004:07CA  8A E0                        mov ah, al
0004:07CC  23 46 D2                     and ax, word ptr [bp - 0x2e]
0004:07CF  F6 D0                        not al
0004:07D1  49                           dec cx
0004:07D2  74 1E                        je 0x7f2
0004:07D4  20 05                        and byte ptr [di], al
0004:07D6  30 25                        xor byte ptr [di], ah
0004:07D8  D0 C8                        ror al, 1
0004:07DA  D0 CC                        ror ah, 1
0004:07DC  D0 CB                        ror bl, 1
0004:07DE  13 FE                        adc di, si
0004:07E0  4A                           dec dx
0004:07E1  75 0D                        jne 0x7f0
0004:07E3  8C DA                        mov dx, ds
0004:07E5  03 56 EC                     add dx, word ptr [bp - 0x14]
0004:07E8  8E DA                        mov ds, dx
0004:07EA  03 7E EE                     add di, word ptr [bp - 0x12]
0004:07ED  8B 56 F0                     mov dx, word ptr [bp - 0x10]
0004:07F0  E2 E2                        loop 0x7d4
0004:07F2  20 05                        and byte ptr [di], al
0004:07F4  30 25                        xor byte ptr [di], ah
0004:07F6  C3                           ret

; FUNCTION 0004:07D9 (2 instructions)
0004:07D9  C8 D0 CC D0                  enter -0x3330, -0x30
0004:07DD  CB                           retf

; FUNCTION 0004:0A5F (2 instructions)
0004:0A5F  C8 D0 CC D0                  enter -0x3330, -0x30
0004:0A63  CB                           retf

; FUNCTION 0004:0AAD (2 instructions)
0004:0AAD  C8 D0 CC D0                  enter -0x3330, -0x30
0004:0AB1  CB                           retf

; FUNCTION 0005:0048 (3 instructions)
0005:0048  8C D8                        mov ax, ds
0005:004A  90                           nop
0005:004B  45                           inc bp

; FUNCTION 0005:004C (188 instructions)
0005:004C  55                           push bp
0005:004D  8B EC                        mov bp, sp
0005:004F  1E                           push ds
0005:0050  8E D8                        mov ds, ax
0005:0052  56                           push si
0005:0053  57                           push di
0005:0054  06                           push es
0005:0055  C5 76 12                     lds si, ptr [bp + 0x12]
0005:0058  8B 4E 10                     mov cx, word ptr [bp + 0x10]
0005:005B  3B 4C 02                     cmp cx, word ptr [si + 2]
0005:005E  73 6C                        jae 0xcc
0005:0060  8B 4E 0E                     mov cx, word ptr [bp + 0xe]
0005:0063  3B 4C 04                     cmp cx, word ptr [si + 4]
0005:0066  73 64                        jae 0xcc
0005:0068  8B 46 0E                     mov ax, word ptr [bp + 0xe]
0005:006B  8B 5E 10                     mov bx, word ptr [bp + 0x10]
0005:006E  2B 44 04                     sub ax, word ptr [si + 4]
0005:0071  40                           inc ax
0005:0072  F7 D8                        neg ax
0005:0074  8B 7C 08                     mov di, word ptr [si + 8]
0005:0077  81 FF 01 08                  cmp di, 0x801
0005:007B  74 20                        je 0x9d
0005:007D  81 FF 01 04                  cmp di, 0x401
0005:0081  75 0B                        jne 0x8e
0005:0083  B9 00 F0                     mov cx, 0xf000
0005:0086  D1 EB                        shr bx, 1
0005:0088  1A C9                        sbb cl, cl
0005:008A  32 E9                        xor ch, cl
0005:008C  EB 0F                        jmp 0x9d
0005:008E  8B D3                        mov dx, bx
0005:0090  83 E3 07                     and bx, 7
0005:0093  2E 8A AF 40 00               mov ch, byte ptr cs:[bx + 0x40]
0005:0098  8B DA                        mov bx, dx
0005:009A  C1 EB 03                     shr bx, 3
0005:009D  51                           push cx
0005:009E  03 5C 0A                     add bx, word ptr [si + 0xa]
0005:00A1  8B 54 06                     mov dx, word ptr [si + 6]
0005:00A4  F7 E2                        mul dx
0005:00A6  03 C3                        add ax, bx
0005:00A8  83 D2 00                     adc dx, 0
0005:00AB  B9 FF FF                     mov cx, 0xffff
0005:00AE  D3 E2                        shl dx, cl
0005:00B0  03 54 0C                     add dx, word ptr [si + 0xc]
0005:00B3  59                           pop cx
0005:00B4  8B F0                        mov si, ax
0005:00B6  8E DA                        mov ds, dx
0005:00B8  8A 4E 0A                     mov cl, byte ptr [bp + 0xa]
0005:00BB  8B D7                        mov dx, di
0005:00BD  8B 7E 06                     mov di, word ptr [bp + 6]
0005:00C0  8B 5E 08                     mov bx, word ptr [bp + 8]
0005:00C3  8B C3                        mov ax, bx
0005:00C5  0B C7                        or ax, di
0005:00C7  75 0B                        jne 0xd4
0005:00C9  E9 1F 01                     jmp 0x1eb
0005:00CC  BA 00 80                     mov dx, 0x8000
0005:00CF  33 C0                        xor ax, ax
0005:00D1  E9 40 01                     jmp 0x214
0005:00D4  8E C3                        mov es, bx
0005:00D6  26 8B 1D                     mov bx, word ptr es:[di]
0005:00D9  4B                           dec bx
0005:00DA  83 E3 0F                     and bx, 0xf
0005:00DD  81 FA 01 04                  cmp dx, 0x401
0005:00E1  74 66                        je 0x149
0005:00E3  81 FA 01 01                  cmp dx, 0x101
0005:00E7  75 03                        jne 0xec
0005:00E9  E9 D0 00                     jmp 0x1bc
0005:00EC  2E F6 87 10 00 01            test byte ptr cs:[bx + 0x10], 1
0005:00F2  74 32                        je 0x126
0005:00F4  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:00F9  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:00FE  2E 8A A7 00 00               mov ah, byte ptr cs:[bx]
0005:0103  80 FC 18                     cmp ah, 0x18
0005:0106  74 19                        je 0x121
0005:0108  80 FC 08                     cmp ah, 8
0005:010B  74 0A                        je 0x117
0005:010D  80 FC 10                     cmp ah, 0x10
0005:0110  74 0A                        je 0x11c
0005:0112  88 0C                        mov byte ptr [si], cl
0005:0114  E9 CF 00                     jmp 0x1e6
0005:0117  20 0C                        and byte ptr [si], cl
0005:0119  E9 CA 00                     jmp 0x1e6
0005:011C  08 0C                        or byte ptr [si], cl
0005:011E  E9 C5 00                     jmp 0x1e6
0005:0121  30 0C                        xor byte ptr [si], cl
0005:0123  E9 C0 00                     jmp 0x1e6
0005:0126  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:012B  8A E9                        mov ch, cl
0005:012D  F6 D5                        not ch
0005:012F  8B C1                        mov ax, cx
0005:0131  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:0136  22 2C                        and ch, byte ptr [si]
0005:0138  0A CD                        or cl, ch
0005:013A  8A E9                        mov ch, cl
0005:013C  F6 D5                        not ch
0005:013E  22 EC                        and ch, ah
0005:0140  22 C8                        and cl, al
0005:0142  0A CD                        or cl, ch
0005:0144  88 0C                        mov byte ptr [si], cl
0005:0146  E9 9D 00                     jmp 0x1e6
0005:0149  8A C1                        mov al, cl
0005:014B  C0 E0 04                     shl al, 4
0005:014E  80 E1 0F                     and cl, 0xf
0005:0151  0A C8                        or cl, al
0005:0153  8A D5                        mov dl, ch
0005:0155  8A F2                        mov dh, dl
0005:0157  F6 D6                        not dh
0005:0159  8A 04                        mov al, byte ptr [si]
0005:015B  2E F6 87 10 00 01            test byte ptr cs:[bx + 0x10], 1
0005:0161  74 35                        je 0x198
0005:0163  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:0168  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:016D  2E 8A A7 00 00               mov ah, byte ptr cs:[bx]
0005:0172  C0 EC 03                     shr ah, 3
0005:0175  0A E4                        or ah, ah
0005:0177  75 02                        jne 0x17b
0005:0179  EB 12                        jmp 0x18d
0005:017B  FE CC                        dec ah
0005:017D  75 04                        jne 0x183
0005:017F  22 C8                        and cl, al
0005:0181  EB 0A                        jmp 0x18d
0005:0183  FE CC                        dec ah
0005:0185  75 04                        jne 0x18b
0005:0187  0A C8                        or cl, al
0005:0189  EB 02                        jmp 0x18d
0005:018B  32 C8                        xor cl, al
0005:018D  22 C6                        and al, dh
0005:018F  22 CA                        and cl, dl
0005:0191  0A C1                        or al, cl
0005:0193  88 04                        mov byte ptr [si], al
0005:0195  EB 4F                        jmp 0x1e6
0005:0198  8B FA                        mov di, dx
0005:019A  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:019F  8A E9                        mov ch, cl
0005:01A1  F6 D5                        not ch
0005:01A3  8B D1                        mov dx, cx
0005:01A5  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:01AA  22 E8                        and ch, al
0005:01AC  0A CD                        or cl, ch
0005:01AE  8A E9                        mov ch, cl
0005:01B0  F6 D5                        not ch
0005:01B2  22 EE                        and ch, dh
0005:01B4  22 CA                        and cl, dl
0005:01B6  0A CD                        or cl, ch
0005:01B8  8B D7                        mov dx, di
0005:01BA  EB D1                        jmp 0x18d
0005:01BC  D1 E3                        shl bx, 1
0005:01BE  8D BF 20 02                  lea di, [bx + 0x220]
0005:01C2  8A E5                        mov ah, ch
0005:01C4  8A C4                        mov al, ah
0005:01C6  F6 D4                        not ah
0005:01C8  8A 6E 0A                     mov ch, byte ptr [bp + 0xa]
0005:01CB  8A DD                        mov bl, ch
0005:01CD  22 D9                        and bl, cl
0005:01CF  80 FB 01                     cmp bl, 1
0005:01D2  1B DB                        sbb bx, bx
0005:01D4  43                           inc bx
0005:01D5  2E 8A 19                     mov bl, byte ptr cs:[bx + di]
0005:01D8  81 C3 DE 01                  add bx, 0x1de
0005:01DC  FF E3                        jmp bx
0005:01E6  33 C0                        xor ax, ax
0005:01E8  99                           cdq
0005:01E9  EB 29                        jmp 0x214
0005:01EB  8B DA                        mov bx, dx
0005:01ED  BA 00 FF                     mov dx, 0xff00
0005:01F0  33 C0                        xor ax, ax
0005:01F2  81 FB 01 08                  cmp bx, 0x801
0005:01F6  74 1B                        je 0x213
0005:01F8  81 FB 01 01                  cmp bx, 0x101
0005:01FC  74 0D                        je 0x20b
0005:01FE  AC                           lodsb al, byte ptr [si]
0005:01FF  F6 C5 01                     test ch, 1
0005:0202  75 03                        jne 0x207
0005:0204  C0 C0 04                     rol al, 4
0005:0207  24 0F                        and al, 0xf
0005:0209  EB 09                        jmp 0x214
0005:020B  84 2C                        test byte ptr [si], ch
0005:020D  74 05                        je 0x214
0005:020F  FE C0                        inc al
0005:0211  EB 01                        jmp 0x214
0005:0213  AC                           lodsb al, byte ptr [si]
0005:0214  07                           pop es
0005:0215  5F                           pop di
0005:0216  5E                           pop si
0005:0217  8D 66 FE                     lea sp, [bp - 2]
0005:021A  1F                           pop ds
0005:021B  5D                           pop bp
0005:021C  4D                           dec bp
0005:021D  CA 10 00                     retf 0x10

; FUNCTION 0005:0141 (60 instructions)
0005:0141  C8 0A CD 88                  enter -0x32f6, -0x78
0005:0145  0C E9                        or al, 0xe9
0005:0147  9D                           popf
0005:0148  00 8A C1 C0                  add byte ptr [bp + si - 0x3f3f], cl
0005:014C  E0 04                        loopne 0x152
0005:014E  80 E1 0F                     and cl, 0xf
0005:0151  0A C8                        or cl, al
0005:0153  8A D5                        mov dl, ch
0005:0155  8A F2                        mov dh, dl
0005:0157  F6 D6                        not dh
0005:0159  8A 04                        mov al, byte ptr [si]
0005:015B  2E F6 87 10 00 01            test byte ptr cs:[bx + 0x10], 1
0005:0161  74 35                        je 0x198
0005:0163  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:0168  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:016D  2E 8A A7 00 00               mov ah, byte ptr cs:[bx]
0005:0172  C0 EC 03                     shr ah, 3
0005:0175  0A E4                        or ah, ah
0005:0177  75 02                        jne 0x17b
0005:0179  EB 12                        jmp 0x18d
0005:017B  FE CC                        dec ah
0005:017D  75 04                        jne 0x183
0005:017F  22 C8                        and cl, al
0005:0181  EB 0A                        jmp 0x18d
0005:0183  FE CC                        dec ah
0005:0185  75 04                        jne 0x18b
0005:0187  0A C8                        or cl, al
0005:0189  EB 02                        jmp 0x18d
0005:018B  32 C8                        xor cl, al
0005:018D  22 C6                        and al, dh
0005:018F  22 CA                        and cl, dl
0005:0191  0A C1                        or al, cl
0005:0193  88 04                        mov byte ptr [si], al
0005:0195  EB 4F                        jmp 0x1e6
0005:0198  8B FA                        mov di, dx
0005:019A  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:019F  8A E9                        mov ch, cl
0005:01A1  F6 D5                        not ch
0005:01A3  8B D1                        mov dx, cx
0005:01A5  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:01AA  22 E8                        and ch, al
0005:01AC  0A CD                        or cl, ch
0005:01AE  8A E9                        mov ch, cl
0005:01B0  F6 D5                        not ch
0005:01B2  22 EE                        and ch, dh
0005:01B4  22 CA                        and cl, dl
0005:01B6  0A CD                        or cl, ch
0005:01B8  8B D7                        mov dx, di
0005:01BA  EB D1                        jmp 0x18d
0005:01E6  33 C0                        xor ax, ax
0005:01E8  99                           cdq
0005:01E9  EB 29                        jmp 0x214
0005:0214  07                           pop es
0005:0215  5F                           pop di
0005:0216  5E                           pop si
0005:0217  8D 66 FE                     lea sp, [bp - 2]
0005:021A  1F                           pop ds
0005:021B  5D                           pop bp
0005:021C  4D                           dec bp
0005:021D  CA 10 00                     retf 0x10

; FUNCTION 0005:0152 (52 instructions)
0005:0152  C8 8A D5 8A                  enter -0x2a76, -0x76
0005:0156  F2 F6 D6                     not dh
0005:0159  8A 04                        mov al, byte ptr [si]
0005:015B  2E F6 87 10 00 01            test byte ptr cs:[bx + 0x10], 1
0005:0161  74 35                        je 0x198
0005:0163  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:0168  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:016D  2E 8A A7 00 00               mov ah, byte ptr cs:[bx]
0005:0172  C0 EC 03                     shr ah, 3
0005:0175  0A E4                        or ah, ah
0005:0177  75 02                        jne 0x17b
0005:0179  EB 12                        jmp 0x18d
0005:017B  FE CC                        dec ah
0005:017D  75 04                        jne 0x183
0005:017F  22 C8                        and cl, al
0005:0181  EB 0A                        jmp 0x18d
0005:0183  FE CC                        dec ah
0005:0185  75 04                        jne 0x18b
0005:0187  0A C8                        or cl, al
0005:0189  EB 02                        jmp 0x18d
0005:018B  32 C8                        xor cl, al
0005:018D  22 C6                        and al, dh
0005:018F  22 CA                        and cl, dl
0005:0191  0A C1                        or al, cl
0005:0193  88 04                        mov byte ptr [si], al
0005:0195  EB 4F                        jmp 0x1e6
0005:0198  8B FA                        mov di, dx
0005:019A  2E 32 8F 30 00               xor cl, byte ptr cs:[bx + 0x30]
0005:019F  8A E9                        mov ch, cl
0005:01A1  F6 D5                        not ch
0005:01A3  8B D1                        mov dx, cx
0005:01A5  2E 22 8F 20 00               and cl, byte ptr cs:[bx + 0x20]
0005:01AA  22 E8                        and ch, al
0005:01AC  0A CD                        or cl, ch
0005:01AE  8A E9                        mov ch, cl
0005:01B0  F6 D5                        not ch
0005:01B2  22 EE                        and ch, dh
0005:01B4  22 CA                        and cl, dl
0005:01B6  0A CD                        or cl, ch
0005:01B8  8B D7                        mov dx, di
0005:01BA  EB D1                        jmp 0x18d
0005:01E6  33 C0                        xor ax, ax
0005:01E8  99                           cdq
0005:01E9  EB 29                        jmp 0x214
0005:0214  07                           pop es
0005:0215  5F                           pop di
0005:0216  5E                           pop si
0005:0217  8D 66 FE                     lea sp, [bp - 2]
0005:021A  1F                           pop ds
0005:021B  5D                           pop bp
0005:021C  4D                           dec bp
0005:021D  CA 10 00                     retf 0x10

; FUNCTION 0005:0180 (22 instructions)
0005:0180  C8 EB 0A FE                  enter 0xaeb, -2
0005:0184  CC                           int3
0005:0185  75 04                        jne 0x18b
0005:0187  0A C8                        or cl, al
0005:0189  EB 02                        jmp 0x18d
0005:018B  32 C8                        xor cl, al
0005:018D  22 C6                        and al, dh
0005:018F  22 CA                        and cl, dl
0005:0191  0A C1                        or al, cl
0005:0193  88 04                        mov byte ptr [si], al
0005:0195  EB 4F                        jmp 0x1e6
0005:01E6  33 C0                        xor ax, ax
0005:01E8  99                           cdq
0005:01E9  EB 29                        jmp 0x214
0005:0214  07                           pop es
0005:0215  5F                           pop di
0005:0216  5E                           pop si
0005:0217  8D 66 FE                     lea sp, [bp - 2]
0005:021A  1F                           pop ds
0005:021B  5D                           pop bp
0005:021C  4D                           dec bp
0005:021D  CA 10 00                     retf 0x10

; FUNCTION 0005:0188 (1 instructions)
0005:0188  C8 EB 02 32                  enter 0x2eb, 0x32

; FUNCTION 0005:018C (2 instructions)
0005:018C  C8 22 C6 22                  enter -0x39de, 0x22
0005:0190  CA 0A C1                     retf 0xc10a

; FUNCTION 0006:0101 (1 instructions)
0006:0101  45                           inc bp

; FUNCTION 0006:0102 (77 instructions)
0006:00FC  33 C0                        xor ax, ax
0006:00FE  E9 AA 00                     jmp 0x1ab
0006:0102  55                           push bp
0006:0103  8B EC                        mov bp, sp
0006:0105  1E                           push ds
0006:0106  83 EC 1A                     sub sp, 0x1a
0006:0109  56                           push si
0006:010A  57                           push di
0006:010B  06                           push es
0006:010C  FC                           cld
0006:010D  2E 8E 06 2E 00               mov es, word ptr cs:[0x2e]
0006:0112  8B 46 18                     mov ax, word ptr [bp + 0x18]
0006:0115  0B C0                        or ax, ax
0006:0117  74 E3                        je 0xfc
0006:0119  26 80 3E 0C 00 00            cmp byte ptr es:[0xc], 0
0006:011F  75 03                        jne 0x124
0006:0121  E8 B6 00                     call 0x1da
0006:0124  FF 4E 1A                     dec word ptr [bp + 0x1a]
0006:0127  74 D3                        je 0xfc
0006:0129  C5 76 16                     lds si, ptr [bp + 0x16]
0006:012C  26 A0 0D 00                  mov al, byte ptr es:[0xd]
0006:0130  88 46 E5                     mov byte ptr [bp - 0x1b], al
0006:0133  26 A1 65 00                  mov ax, word ptr es:[0x65]
0006:0137  89 46 EA                     mov word ptr [bp - 0x16], ax
0006:013A  26 A1 61 00                  mov ax, word ptr es:[0x61]
0006:013E  89 46 E8                     mov word ptr [bp - 0x18], ax
0006:0141  26 A1 63 00                  mov ax, word ptr es:[0x63]
0006:0145  89 46 E6                     mov word ptr [bp - 0x1a], ax
0006:0148  8B 44 02                     mov ax, word ptr [si + 2]
0006:014B  26 FF 16 67 00               call word ptr es:[0x67]
0006:0150  8B 44 02                     mov ax, word ptr [si + 2]
0006:0153  C4 7E 1E                     les di, ptr [bp + 0x1e]
0006:0156  E8 30 08                     call 0x989
0006:0159  89 7E EC                     mov word ptr [bp - 0x14], di
0006:015C  83 C6 04                     add si, 4
0006:015F  AD                           lodsw ax, word ptr [si]
0006:0160  8B D0                        mov dx, ax
0006:0162  AD                           lodsw ax, word ptr [si]
0006:0163  56                           push si
0006:0164  8B C8                        mov cx, ax
0006:0166  2B CA                        sub cx, dx
0006:0168  FF 56 EA                     call word ptr [bp - 0x16]
0006:016B  72 35                        jb 0x1a2
0006:016D  8B F7                        mov si, di
0006:016F  83 E6 06                     and si, 6
0006:0172  03 7E EC                     add di, word ptr [bp - 0x14]
0006:0175  53                           push bx
0006:0176  51                           push cx
0006:0177  0B C0                        or ax, ax
0006:0179  74 0C                        je 0x187
0006:017B  B9 01 00                     mov cx, 1
0006:017E  23 42 EE                     and ax, word ptr [bp + si - 0x12]
0006:0181  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:0184  FF 56 E6                     call word ptr [bp - 0x1a]
0006:0187  59                           pop cx
0006:0188  E3 09                        jcxz 0x193
0006:018A  8B 42 EE                     mov ax, word ptr [bp + si - 0x12]
0006:018D  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:0190  FF 56 E8                     call word ptr [bp - 0x18]
0006:0193  58                           pop ax
0006:0194  23 42 EE                     and ax, word ptr [bp + si - 0x12]
0006:0197  74 09                        je 0x1a2
0006:0199  B9 01 00                     mov cx, 1
0006:019C  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:019F  FF 56 E6                     call word ptr [bp - 0x1a]
0006:01A2  5E                           pop si
0006:01A3  FF 4E 1A                     dec word ptr [bp + 0x1a]
0006:01A6  75 B7                        jne 0x15f
0006:01A8  B8 01 00                     mov ax, 1
0006:01AB  07                           pop es
0006:01AC  5F                           pop di
0006:01AD  5E                           pop si
0006:01AE  8D 66 FE                     lea sp, [bp - 2]
0006:01B1  1F                           pop ds
0006:01B2  5D                           pop bp
0006:01B3  4D                           dec bp
0006:01B4  CA 1C 00                     retf 0x1c

; FUNCTION 0006:0165 (45 instructions)
0006:015F  AD                           lodsw ax, word ptr [si]
0006:0160  8B D0                        mov dx, ax
0006:0162  AD                           lodsw ax, word ptr [si]
0006:0163  56                           push si
0006:0164  8B C8                        mov cx, ax
0006:0165  C8 2B CA FF                  enter -0x35d5, -1
0006:0166  2B CA                        sub cx, dx
0006:0168  FF 56 EA                     call word ptr [bp - 0x16]
0006:0169  56                           push si
0006:016A  EA 72 35 8B F7               ljmp 0xf78b:0x3572
0006:016B  72 35                        jb 0x1a2
0006:016D  8B F7                        mov si, di
0006:016F  83 E6 06                     and si, 6
0006:0172  03 7E EC                     add di, word ptr [bp - 0x14]
0006:0175  53                           push bx
0006:0176  51                           push cx
0006:0177  0B C0                        or ax, ax
0006:0179  74 0C                        je 0x187
0006:017B  B9 01 00                     mov cx, 1
0006:017E  23 42 EE                     and ax, word ptr [bp + si - 0x12]
0006:0181  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:0184  FF 56 E6                     call word ptr [bp - 0x1a]
0006:0187  59                           pop cx
0006:0188  E3 09                        jcxz 0x193
0006:018A  8B 42 EE                     mov ax, word ptr [bp + si - 0x12]
0006:018D  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:0190  FF 56 E8                     call word ptr [bp - 0x18]
0006:0193  58                           pop ax
0006:0194  23 42 EE                     and ax, word ptr [bp + si - 0x12]
0006:0197  74 09                        je 0x1a2
0006:0199  B9 01 00                     mov cx, 1
0006:019C  8B 5A F6                     mov bx, word ptr [bp + si - 0xa]
0006:019F  FF 56 E6                     call word ptr [bp - 0x1a]
0006:01A2  5E                           pop si
0006:01A3  FF 4E 1A                     dec word ptr [bp + 0x1a]
0006:01A6  75 B7                        jne 0x15f
0006:01A8  B8 01 00                     mov ax, 1
0006:01AB  07                           pop es
0006:01AC  5F                           pop di
0006:01AD  5E                           pop si
0006:01AE  8D 66 FE                     lea sp, [bp - 2]
0006:01B1  1F                           pop ds
0006:01B2  5D                           pop bp
0006:01B3  4D                           dec bp
0006:01B4  CA 1C 00                     retf 0x1c

; FUNCTION 0006:01B7 (1 instructions)
0006:01B7  45                           inc bp

; FUNCTION 0006:01B8 (18 instructions)
0006:01B8  55                           push bp
0006:01B9  8B EC                        mov bp, sp
0006:01BB  1E                           push ds
0006:01BC  56                           push si
0006:01BD  57                           push di
0006:01BE  06                           push es
0006:01BF  2E 8E 06 2E 00               mov es, word ptr cs:[0x2e]
0006:01C4  E8 13 00                     call 0x1da
0006:01C7  B8 01 00                     mov ax, 1
0006:01CA  26 A2 0C 00                  mov byte ptr es:[0xc], al
0006:01CE  07                           pop es
0006:01CF  5F                           pop di
0006:01D0  5E                           pop si
0006:01D1  8D 66 FE                     lea sp, [bp - 2]
0006:01D4  1F                           pop ds
0006:01D5  5D                           pop bp
0006:01D6  4D                           dec bp
0006:01D7  CA 1C 00                     retf 0x1c

; FUNCTION 0006:01DA (18 instructions)
0006:01DA  C5 76 1E                     lds si, ptr [bp + 0x1e]
0006:01DD  8A 5C 09                     mov bl, byte ptr [si + 9]
0006:01E0  26 88 1E 0D 00               mov byte ptr es:[0xd], bl
0006:01E5  E8 12 01                     call 0x2fa
0006:01E8  2E 8B 87 30 00               mov ax, word ptr cs:[bx + 0x30]
0006:01ED  26 A3 61 00                  mov word ptr es:[0x61], ax
0006:01F1  83 CB 02                     or bx, 2
0006:01F4  2E 8B 87 30 00               mov ax, word ptr cs:[bx + 0x30]
0006:01F9  26 A3 63 00                  mov word ptr es:[0x63], ax
0006:01FD  81 E3 C0 00                  and bx, 0xc0
0006:0201  C1 EB 05                     shr bx, 5
0006:0204  2E 8B 87 F6 00               mov ax, word ptr cs:[bx + 0xf6]
0006:0209  26 A3 67 00                  mov word ptr es:[0x67], ax
0006:020D  26 8A 1E 0D 00               mov bl, byte ptr es:[0xd]
0006:0212  D0 EB                        shr bl, 1
0006:0214  2E 8B 87 F0 00               mov ax, word ptr cs:[bx + 0xf0]
0006:0219  26 A3 65 00                  mov word ptr es:[0x65], ax
0006:021D  C3                           ret

; FUNCTION 0006:021E (1 instructions)
0006:021E  45                           inc bp

; FUNCTION 0006:021F (11 instructions)
0006:021F  55                           push bp
0006:0220  8B EC                        mov bp, sp
0006:0222  1E                           push ds
0006:0223  32 C0                        xor al, al
0006:0225  2E 8E 06 2E 00               mov es, word ptr cs:[0x2e]
0006:022A  26 A2 0C 00                  mov byte ptr es:[0xc], al
0006:022E  8D 66 FE                     lea sp, [bp - 2]
0006:0231  1F                           pop ds
0006:0232  5D                           pop bp
0006:0233  4D                           dec bp
0006:0234  CA 1C 00                     retf 0x1c

; FUNCTION 0006:02FA (88 instructions)
0006:02FA  C5 76 0A                     lds si, ptr [bp + 0xa]
0006:02FD  8A FB                        mov bh, bl
0006:02FF  8A 04                        mov al, byte ptr [si]
0006:0301  FE C8                        dec al
0006:0303  24 0F                        and al, 0xf
0006:0305  80 E3 0C                     and bl, 0xc
0006:0308  C0 E3 02                     shl bl, 2
0006:030B  0A D8                        or bl, al
0006:030D  C0 E3 02                     shl bl, 2
0006:0310  8A 44 02                     mov al, byte ptr [si + 2]
0006:0313  24 01                        and al, 1
0006:0315  D0 E0                        shl al, 1
0006:0317  0A D8                        or bl, al
0006:0319  BF 59 00                     mov di, 0x59
0006:031C  B9 04 00                     mov cx, 4
0006:031F  B8 FF FF                     mov ax, 0xffff
0006:0322  F3 AB                        rep stosw word ptr es:[di], ax
0006:0324  C5 76 0E                     lds si, ptr [bp + 0xe]
0006:0327  8C D8                        mov ax, ds
0006:0329  0B C6                        or ax, si
0006:032B  75 3D                        jne 0x36a
0006:032D  80 E3 FD                     and bl, 0xfd
0006:0330  C5 76 12                     lds si, ptr [bp + 0x12]
0006:0333  8B 04                        mov ax, word ptr [si]
0006:0335  80 FF 01                     cmp bh, 1
0006:0338  74 13                        je 0x34d
0006:033A  80 FF 04                     cmp bh, 4
0006:033D  74 02                        je 0x341
0006:033F  75 10                        jne 0x351
0006:0341  24 0F                        and al, 0xf
0006:0343  8A E0                        mov ah, al
0006:0345  C0 E0 04                     shl al, 4
0006:0348  0A C4                        or al, ah
0006:034A  EB 05                        jmp 0x351
0006:034D  D0 EC                        shr ah, 1
0006:034F  1A C0                        sbb al, al
0006:0351  BF 4E 00                     mov di, 0x4e
0006:0354  B9 04 00                     mov cx, 4
0006:0357  8A E0                        mov ah, al
0006:0359  F3 AB                        rep stosw word ptr es:[di], ax
0006:035B  80 E3 3D                     and bl, 0x3d
0006:035E  32 FF                        xor bh, bh
0006:0360  C3                           ret
0006:0361  80 E3 C1                     and bl, 0xc1
0006:0364  80 CB 28                     or bl, 0x28
0006:0367  32 FF                        xor bh, bh
0006:0369  C3                           ret
0006:036A  83 7C 48 01                  cmp word ptr [si + 0x48], 1
0006:036E  74 F1                        je 0x361
0006:0370  F6 44 4A 08                  test byte ptr [si + 0x4a], 8
0006:0374  74 0C                        je 0x382
0006:0376  8A 04                        mov al, byte ptr [si]
0006:0378  80 FF 01                     cmp bh, 1
0006:037B  75 D4                        jne 0x351
0006:037D  8A 44 40                     mov al, byte ptr [si + 0x40]
0006:0380  74 CF                        je 0x351
0006:0382  8B C6                        mov ax, si
0006:0384  BF 0E 00                     mov di, 0xe
0006:0387  B9 25 00                     mov cx, 0x25
0006:038A  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0006:038C  A4                           movsb byte ptr es:[di], byte ptr [si]
0006:038D  8B F0                        mov si, ax
0006:038F  8B 4C 48                     mov cx, word ptr [si + 0x48]
0006:0392  E3 33                        jcxz 0x3c7
0006:0394  83 F9 02                     cmp cx, 2
0006:0397  75 13                        jne 0x3ac
0006:0399  F6 C3 02                     test bl, 2
0006:039C  74 2C                        je 0x3ca
0006:039E  83 C6 4B                     add si, 0x4b
0006:03A1  BF 59 00                     mov di, 0x59
0006:03A4  B9 04 00                     mov cx, 4
0006:03A7  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0006:03A9  EB 1F                        jmp 0x3ca
0006:03AC  53                           push bx
0006:03AD  06                           push es
0006:03AE  C4 7E 0A                     les di, ptr [bp + 0xa]
0006:03B1  2E 8B 0E 2E 00               mov cx, word ptr cs:[0x2e]
0006:03B6  B8 0E 00                     mov ax, 0xe
0006:03B9  8A DF                        mov bl, bh
0006:03BB  D0 EF                        shr bh, 1
0006:03BD  F5                           cmc
0006:03BE  1A FF                        sbb bh, bh
0006:03C0  9A C4 3C FF FF               lcall 0xffff, 0x3cc4
0006:03C5  07                           pop es
0006:03C6  5B                           pop bx
0006:03C7  80 E3 FD                     and bl, 0xfd
0006:03CA  32 FF                        xor bh, bh
0006:03CC  C3                           ret

; FUNCTION 0006:0302 (87 instructions)
0006:0302  C8 24 0F 80                  enter 0xf24, -0x80
0006:0306  E3 0C                        jcxz 0x314
0006:0308  C0 E3 02                     shl bl, 2
0006:030B  0A D8                        or bl, al
0006:030D  C0 E3 02                     shl bl, 2
0006:0310  8A 44 02                     mov al, byte ptr [si + 2]
0006:0313  24 01                        and al, 1
0006:0314  01 D0                        add ax, dx
0006:0315  D0 E0                        shl al, 1
0006:0316  E0 0A                        loopne 0x322
0006:0317  0A D8                        or bl, al
0006:0318  D8 BF 59 00                  fdivr dword ptr [bx + 0x59]
0006:0319  BF 59 00                     mov di, 0x59
0006:031C  B9 04 00                     mov cx, 4
0006:031F  B8 FF FF                     mov ax, 0xffff
0006:0322  F3 AB                        rep stosw word ptr es:[di], ax
0006:0324  C5 76 0E                     lds si, ptr [bp + 0xe]
0006:0327  8C D8                        mov ax, ds
0006:0329  0B C6                        or ax, si
0006:032B  75 3D                        jne 0x36a
0006:032D  80 E3 FD                     and bl, 0xfd
0006:0330  C5 76 12                     lds si, ptr [bp + 0x12]
0006:0333  8B 04                        mov ax, word ptr [si]
0006:0335  80 FF 01                     cmp bh, 1
0006:0338  74 13                        je 0x34d
0006:033A  80 FF 04                     cmp bh, 4
0006:033D  74 02                        je 0x341
0006:033F  75 10                        jne 0x351
0006:0341  24 0F                        and al, 0xf
0006:0343  8A E0                        mov ah, al
0006:0345  C0 E0 04                     shl al, 4
0006:0348  0A C4                        or al, ah
0006:034A  EB 05                        jmp 0x351
0006:034D  D0 EC                        shr ah, 1
0006:034F  1A C0                        sbb al, al
0006:0351  BF 4E 00                     mov di, 0x4e
0006:0354  B9 04 00                     mov cx, 4
0006:0357  8A E0                        mov ah, al
0006:0359  F3 AB                        rep stosw word ptr es:[di], ax
0006:035B  80 E3 3D                     and bl, 0x3d
0006:035E  32 FF                        xor bh, bh
0006:0360  C3                           ret
0006:0361  80 E3 C1                     and bl, 0xc1
0006:0364  80 CB 28                     or bl, 0x28
0006:0367  32 FF                        xor bh, bh
0006:0369  C3                           ret
0006:036A  83 7C 48 01                  cmp word ptr [si + 0x48], 1
0006:036E  74 F1                        je 0x361
0006:0370  F6 44 4A 08                  test byte ptr [si + 0x4a], 8
0006:0374  74 0C                        je 0x382
0006:0376  8A 04                        mov al, byte ptr [si]
0006:0378  80 FF 01                     cmp bh, 1
0006:037B  75 D4                        jne 0x351
0006:037D  8A 44 40                     mov al, byte ptr [si + 0x40]
0006:0380  74 CF                        je 0x351
0006:0382  8B C6                        mov ax, si
0006:0384  BF 0E 00                     mov di, 0xe
0006:0387  B9 25 00                     mov cx, 0x25
0006:038A  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0006:038C  A4                           movsb byte ptr es:[di], byte ptr [si]
0006:038D  8B F0                        mov si, ax
0006:038F  8B 4C 48                     mov cx, word ptr [si + 0x48]
0006:0392  E3 33                        jcxz 0x3c7
0006:0394  83 F9 02                     cmp cx, 2
0006:0397  75 13                        jne 0x3ac
0006:0399  F6 C3 02                     test bl, 2
0006:039C  74 2C                        je 0x3ca
0006:039E  83 C6 4B                     add si, 0x4b
0006:03A1  BF 59 00                     mov di, 0x59
0006:03A4  B9 04 00                     mov cx, 4
0006:03A7  F3 A5                        rep movsw word ptr es:[di], word ptr [si]
0006:03A9  EB 1F                        jmp 0x3ca
0006:03AC  53                           push bx
0006:03AD  06                           push es
0006:03AE  C4 7E 0A                     les di, ptr [bp + 0xa]
0006:03B1  2E 8B 0E 2E 00               mov cx, word ptr cs:[0x2e]
0006:03B6  B8 0E 00                     mov ax, 0xe
0006:03B9  8A DF                        mov bl, bh
0006:03BB  D0 EF                        shr bh, 1
0006:03BD  F5                           cmc
0006:03BE  1A FF                        sbb bh, bh
0006:03C0  9A C4 3C FF FF               lcall 0xffff, 0x3cc4
0006:03C5  07                           pop es
0006:03C6  5B                           pop bx
0006:03C7  80 E3 FD                     and bl, 0xfd
0006:03CA  32 FF                        xor bh, bh
0006:03CC  C3                           ret

; FUNCTION 0006:0989 (21 instructions)
0006:0989  26 2B 45 04                  sub ax, word ptr es:[di + 4]
0006:098D  40                           inc ax
0006:098E  F7 D8                        neg ax
0006:0990  26 8B 5D 06                  mov bx, word ptr es:[di + 6]
0006:0994  F7 E3                        mul bx
0006:0996  26 03 45 0A                  add ax, word ptr es:[di + 0xa]
0006:099A  83 D2 00                     adc dx, 0
0006:099D  03 D8                        add bx, ax
0006:099F  73 0E                        jae 0x9af
0006:09A1  26 8B 5D 0C                  mov bx, word ptr es:[di + 0xc]
0006:09A5  53                           push bx
0006:09A6  52                           push dx
0006:09A7  50                           push ax
0006:09A8  9A 0B 45 C3 03               lcall 0x3c3, 0x450b
0006:09AD  EB 09                        jmp 0x9b8
0006:09AF  B9 FF FF                     mov cx, 0xffff
0006:09B2  D3 E2                        shl dx, cl
0006:09B4  26 03 55 0C                  add dx, word ptr es:[di + 0xc]
0006:09B8  8B F8                        mov di, ax
0006:09BA  8E C2                        mov es, dx
0006:09BC  C3                           ret

; FUNCTION 0006:09D9 (37 instructions)
0006:09D9  C8 8B FA D3                  enter -0x575, -0x2d
0006:09DD  EF                           out dx, ax
0006:09DE  D1 E7                        shl di, 1
0006:09E0  22 D5                        and dl, ch
0006:09E2  32 F6                        xor dh, dh
0006:09E4  03 DA                        add bx, dx
0006:09E6  8B F3                        mov si, bx
0006:09E8  22 DD                        and bl, ch
0006:09EA  8A E9                        mov ch, cl
0006:09EC  8A CA                        mov cl, dl
0006:09EE  B8 FF FF                     mov ax, 0xffff
0006:09F1  8B D0                        mov dx, ax
0006:09F3  D3 E8                        shr ax, cl
0006:09F5  8A CB                        mov cl, bl
0006:09F7  BB 00 80                     mov bx, 0x8000
0006:09FA  D3 FB                        sar bx, cl
0006:09FC  8A CD                        mov cl, ch
0006:09FE  D3 EE                        shr si, cl
0006:0A00  75 05                        jne 0xa07
0006:0A02  23 C3                        and ax, bx
0006:0A04  33 DB                        xor bx, bx
0006:0A06  46                           inc si
0006:0A07  4E                           dec si
0006:0A08  86 C4                        xchg ah, al
0006:0A0A  86 DF                        xchg bh, bl
0006:0A0C  3B C2                        cmp ax, dx
0006:0A0E  1B F2                        sbb si, dx
0006:0A10  3B C2                        cmp ax, dx
0006:0A12  1B C2                        sbb ax, dx
0006:0A14  3B DA                        cmp bx, dx
0006:0A16  1B F2                        sbb si, dx
0006:0A18  3B DA                        cmp bx, dx
0006:0A1A  1B DA                        sbb bx, dx
0006:0A1C  8B CE                        mov cx, si
0006:0A1E  5E                           pop si
0006:0A1F  F8                           clc
0006:0A20  C3                           ret
