                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module player
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _check_map
                                     12 	.globl _returnCollisionValue
                                     13 	.globl _joypad
                                     14 	.globl _mouse_metasprites
                                     15 	.globl _mouse_right1
                                     16 	.globl _mouse_right0
                                     17 	.globl _mouse_up
                                     18 	.globl _mouse_down
                                     19 	.globl _PlayerUpdate
                                     20 	.globl _DrawPlayer
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area _DATA
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area _INITIALIZED
                                     32 ;--------------------------------------------------------
                                     33 ; absolute external ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area _DABS (ABS)
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area _HOME
                                     40 	.area _GSINIT
                                     41 	.area _GSFINAL
                                     42 	.area _GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area _HOME
                                     47 	.area _HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area _CODE
                         00000000    52 	G$check_map$0$0	= .
                                     53 	.globl	G$check_map$0$0
                         00000000    54 	C$player.c$37$0_0$185	= .
                                     55 	.globl	C$player.c$37$0_0$185
                                     56 ;src\player.c:37: char check_map(uint8_t map_num, uint8_t x_pos, uint8_t y_pos)
                                     57 ;	---------------------------------
                                     58 ; Function check_map
                                     59 ; ---------------------------------
    00001518                         60 _check_map::
    00001518 4B               [ 4]   61 	ld	c, e
                         00000001    62 	C$player.c$39$1_0$185	= .
                                     63 	.globl	C$player.c$39$1_0$185
                                     64 ;src\player.c:39: if (map_num == 0) // HOME
    00001519 B7               [ 4]   65 	or	a, a
    0000151A 20 07            [12]   66 	jr	NZ, 00103$
                         00000004    67 	C$player.c$41$2_0$186	= .
                                     68 	.globl	C$player.c$41$2_0$186
                                     69 ;src\player.c:41: returnCollisionValue(x_pos, y_pos);
    0000151C F8 02            [12]   70 	ldhl	sp,	#2
    0000151E 5E               [ 8]   71 	ld	e, (hl)
    0000151F 79               [ 4]   72 	ld	a, c
    00001520 CD 8D 12         [24]   73 	call	_returnCollisionValue
    00001523                         74 00103$:
                         0000000B    75 	C$player.c$43$1_0$185	= .
                                     76 	.globl	C$player.c$43$1_0$185
                                     77 ;src\player.c:43: } 
    00001523 E1               [12]   78 	pop	hl
    00001524 33               [ 8]   79 	inc	sp
    00001525 E9               [ 4]   80 	jp	(hl)
                         0000000E    81 G$mouse_down$0_0$0 == .
    00001526                         82 _mouse_down:
    00001526 F0                      83 	.db #0xf0	; -16
    00001527 F8                      84 	.db #0xf8	; -8
    00001528 00                      85 	.db #0x00	; 0
    00001529 00                      86 	.db #0x00	; 0
    0000152A 00                      87 	.db #0x00	;  0
    0000152B 08                      88 	.db #0x08	;  8
    0000152C 02                      89 	.db #0x02	; 2
    0000152D 00                      90 	.db #0x00	; 0
    0000152E 80                      91 	.db #0x80	; -128
    0000152F 00                      92 	.db #0x00	;  0
    00001530 00                      93 	.db #0x00	; 0
    00001531 00                      94 	.db #0x00	; 0
                         0000001A    95 G$mouse_up$0_0$0 == .
    00001532                         96 _mouse_up:
    00001532 F0                      97 	.db #0xf0	; -16
    00001533 F8                      98 	.db #0xf8	; -8
    00001534 0C                      99 	.db #0x0c	; 12
    00001535 00                     100 	.db #0x00	; 0
    00001536 00                     101 	.db #0x00	;  0
    00001537 08                     102 	.db #0x08	;  8
    00001538 0E                     103 	.db #0x0e	; 14
    00001539 00                     104 	.db #0x00	; 0
    0000153A 80                     105 	.db #0x80	; -128
    0000153B 00                     106 	.db #0x00	;  0
    0000153C 00                     107 	.db #0x00	; 0
    0000153D 00                     108 	.db #0x00	; 0
                         00000026   109 G$mouse_right0$0_0$0 == .
    0000153E                        110 _mouse_right0:
    0000153E F0                     111 	.db #0xf0	; -16
    0000153F F8                     112 	.db #0xf8	; -8
    00001540 04                     113 	.db #0x04	; 4
    00001541 00                     114 	.db #0x00	; 0
    00001542 00                     115 	.db #0x00	;  0
    00001543 08                     116 	.db #0x08	;  8
    00001544 06                     117 	.db #0x06	; 6
    00001545 00                     118 	.db #0x00	; 0
    00001546 80                     119 	.db #0x80	; -128
    00001547 00                     120 	.db #0x00	;  0
    00001548 00                     121 	.db #0x00	; 0
    00001549 00                     122 	.db #0x00	; 0
                         00000032   123 G$mouse_right1$0_0$0 == .
    0000154A                        124 _mouse_right1:
    0000154A F0                     125 	.db #0xf0	; -16
    0000154B F8                     126 	.db #0xf8	; -8
    0000154C 08                     127 	.db #0x08	; 8
    0000154D 00                     128 	.db #0x00	; 0
    0000154E 00                     129 	.db #0x00	;  0
    0000154F 08                     130 	.db #0x08	;  8
    00001550 0A                     131 	.db #0x0a	; 10
    00001551 00                     132 	.db #0x00	; 0
    00001552 80                     133 	.db #0x80	; -128
    00001553 00                     134 	.db #0x00	;  0
    00001554 00                     135 	.db #0x00	; 0
    00001555 00                     136 	.db #0x00	; 0
                         0000003E   137 G$mouse_metasprites$0_0$0 == .
    00001556                        138 _mouse_metasprites:
    00001556 26 15                  139 	.dw _mouse_down
    00001558 32 15                  140 	.dw _mouse_up
    0000155A 3E 15                  141 	.dw _mouse_right0
    0000155C 4A 15                  142 	.dw _mouse_right1
                         00000046   143 	G$PlayerUpdate$0$0	= .
                                    144 	.globl	G$PlayerUpdate$0$0
                         00000046   145 	C$player.c$45$1_0$188	= .
                                    146 	.globl	C$player.c$45$1_0$188
                                    147 ;src\player.c:45: void PlayerUpdate(struct player *ptr)
                                    148 ;	---------------------------------
                                    149 ; Function PlayerUpdate
                                    150 ; ---------------------------------
    0000155E                        151 _PlayerUpdate::
    0000155E 4B               [ 4]  152 	ld	c, e
    0000155F 42               [ 4]  153 	ld	b, d
                         00000048   154 	C$player.c$48$1_0$188	= .
                                    155 	.globl	C$player.c$48$1_0$188
                                    156 ;src\player.c:48: switch (ptr->playerState)
    00001560 21 0B 00         [12]  157 	ld	hl, #0x000b
    00001563 09               [ 8]  158 	add	hl, bc
    00001564 7E               [ 8]  159 	ld	a, (hl)
    00001565 B7               [ 4]  160 	or	a, a
    00001566 C0               [20]  161 	ret	NZ
                         0000004F   162 	C$player.c$51$2_0$189	= .
                                    163 	.globl	C$player.c$51$2_0$189
                                    164 ;src\player.c:51: joypadPrevious = joypadCurrent;
    00001567 FA 6E CD         [16]  165 	ld	a, (#_joypadCurrent)
    0000156A EA 6D CD         [16]  166 	ld	(#_joypadPrevious),a
                         00000055   167 	C$player.c$52$2_0$189	= .
                                    168 	.globl	C$player.c$52$2_0$189
                                    169 ;src\player.c:52: joypadCurrent = joypad();
    0000156D CD F7 63         [24]  170 	call	_joypad
    00001570 21 6E CD         [12]  171 	ld	hl, #_joypadCurrent
    00001573 77               [ 8]  172 	ld	(hl), a
                         0000005C   173 	C$player.c$53$1_0$188	= .
                                    174 	.globl	C$player.c$53$1_0$188
                                    175 ;src\player.c:53: if (joypadCurrent & J_UP)
    00001574 5E               [ 8]  176 	ld	e, (hl)
                         0000005D   177 	C$player.c$57$1_0$188	= .
                                    178 	.globl	C$player.c$57$1_0$188
                                    179 ;src\player.c:57: ptr->playerDirection = up;
    00001575 21 0A 00         [12]  180 	ld	hl, #0x000a
    00001578 09               [ 8]  181 	add	hl, bc
                         00000061   182 	C$player.c$53$2_0$189	= .
                                    183 	.globl	C$player.c$53$2_0$189
                                    184 ;src\player.c:53: if (joypadCurrent & J_UP)
    00001579 CB 53            [ 8]  185 	bit	2, e
    0000157B 28 03            [12]  186 	jr	Z, 00111$
                         00000065   187 	C$player.c$57$3_0$190	= .
                                    188 	.globl	C$player.c$57$3_0$190
                                    189 ;src\player.c:57: ptr->playerDirection = up;
    0000157D 36 01            [12]  190 	ld	(hl), #0x01
    0000157F C9               [16]  191 	ret
    00001580                        192 00111$:
                         00000068   193 	C$player.c$59$2_0$189	= .
                                    194 	.globl	C$player.c$59$2_0$189
                                    195 ;src\player.c:59: else if (joypadCurrent & J_DOWN)
    00001580 CB 5B            [ 8]  196 	bit	3, e
    00001582 28 03            [12]  197 	jr	Z, 00108$
                         0000006C   198 	C$player.c$62$3_0$191	= .
                                    199 	.globl	C$player.c$62$3_0$191
                                    200 ;src\player.c:62: ptr->playerDirection = down;
    00001584 36 00            [12]  201 	ld	(hl), #0x00
    00001586 C9               [16]  202 	ret
    00001587                        203 00108$:
                         0000006F   204 	C$player.c$64$2_0$189	= .
                                    205 	.globl	C$player.c$64$2_0$189
                                    206 ;src\player.c:64: else if (joypadCurrent & J_RIGHT)
    00001587 CB 43            [ 8]  207 	bit	0, e
    00001589 28 03            [12]  208 	jr	Z, 00105$
                         00000073   209 	C$player.c$67$3_0$192	= .
                                    210 	.globl	C$player.c$67$3_0$192
                                    211 ;src\player.c:67: ptr->playerDirection = right;
    0000158B 36 02            [12]  212 	ld	(hl), #0x02
    0000158D C9               [16]  213 	ret
    0000158E                        214 00105$:
                         00000076   215 	C$player.c$69$2_0$189	= .
                                    216 	.globl	C$player.c$69$2_0$189
                                    217 ;src\player.c:69: else if (joypadCurrent & J_LEFT)
    0000158E CB 4B            [ 8]  218 	bit	1, e
    00001590 C8               [20]  219 	ret	Z
                         00000079   220 	C$player.c$72$3_0$193	= .
                                    221 	.globl	C$player.c$72$3_0$193
                                    222 ;src\player.c:72: ptr->playerDirection = left;
    00001591 36 03            [12]  223 	ld	(hl), #0x03
                         0000007B   224 	C$player.c$78$1_0$188	= .
                                    225 	.globl	C$player.c$78$1_0$188
                                    226 ;src\player.c:78: }
                         0000007B   227 	C$player.c$79$1_0$188	= .
                                    228 	.globl	C$player.c$79$1_0$188
                                    229 ;src\player.c:79: }
                         0000007B   230 	C$player.c$79$1_0$188	= .
                                    231 	.globl	C$player.c$79$1_0$188
                         0000007B   232 	XG$PlayerUpdate$0$0	= .
                                    233 	.globl	XG$PlayerUpdate$0$0
    00001593 C9               [16]  234 	ret
                         0000007C   235 	G$DrawPlayer$0$0	= .
                                    236 	.globl	G$DrawPlayer$0$0
                         0000007C   237 	C$player.c$81$1_0$195	= .
                                    238 	.globl	C$player.c$81$1_0$195
                                    239 ;src\player.c:81: void DrawPlayer(struct player *ptr)
                                    240 ;	---------------------------------
                                    241 ; Function DrawPlayer
                                    242 ; ---------------------------------
    00001594                        243 _DrawPlayer::
    00001594 E8 FD            [16]  244 	add	sp, #-3
                         0000007E   245 	C$player.c$85$1_0$195	= .
                                    246 	.globl	C$player.c$85$1_0$195
                                    247 ;src\player.c:85: switch (ptr->playerDirection)
    00001596 21 0A 00         [12]  248 	ld	hl, #0x000a
    00001599 19               [ 8]  249 	add	hl, de
    0000159A 7E               [ 8]  250 	ld	a, (hl)
    0000159B F8 00            [12]  251 	ldhl	sp,	#0
    0000159D 77               [ 8]  252 	ld	(hl), a
                         00000086   253 	C$player.c$88$1_0$195	= .
                                    254 	.globl	C$player.c$88$1_0$195
                                    255 ;src\player.c:88: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
    0000159E 4B               [ 4]  256 	ld	c, e
    0000159F 42               [ 4]  257 	ld	b, d
    000015A0 03               [ 8]  258 	inc	bc
    000015A1 03               [ 8]  259 	inc	bc
    000015A2 1A               [ 8]  260 	ld	a, (de)
    000015A3 F8 02            [12]  261 	ldhl	sp,	#2
    000015A5 32               [ 8]  262 	ld	(hl-), a
    000015A6 0A               [ 8]  263 	ld	a, (bc)
                         0000008F   264 	C$player.c$85$1_0$195	= .
                                    265 	.globl	C$player.c$85$1_0$195
                                    266 ;src\player.c:85: switch (ptr->playerDirection)
    000015A7 32               [ 8]  267 	ld	(hl-), a
    000015A8 7E               [ 8]  268 	ld	a, (hl)
    000015A9 B7               [ 4]  269 	or	a, a
    000015AA 28 3C            [12]  270 	jr	Z, 00102$
    000015AC F8 00            [12]  271 	ldhl	sp,	#0
    000015AE 7E               [ 8]  272 	ld	a, (hl)
    000015AF 3D               [ 4]  273 	dec	a
    000015B0 28 11            [12]  274 	jr	Z, 00101$
    000015B2 F8 00            [12]  275 	ldhl	sp,	#0
    000015B4 7E               [ 8]  276 	ld	a, (hl)
    000015B5 D6 02            [ 8]  277 	sub	a, #0x02
    000015B7 28 51            [12]  278 	jr	Z, 00103$
    000015B9 F8 00            [12]  279 	ldhl	sp,	#0
    000015BB 7E               [ 8]  280 	ld	a, (hl)
    000015BC D6 03            [ 8]  281 	sub	a, #0x03
    000015BE 28 6E            [12]  282 	jr	Z, 00104$
    000015C0 C3 55 16         [16]  283 	jp	00105$
                         000000AB   284 	C$player.c$87$2_0$196	= .
                                    285 	.globl	C$player.c$87$2_0$196
                                    286 ;src\player.c:87: case up:
    000015C3                        287 00101$:
                                    288 ;src\player.c:88: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
    000015C3 F8 01            [12]  289 	ldhl	sp,	#1
    000015C5 2A               [ 8]  290 	ld	a, (hl+)
    000015C6 47               [ 4]  291 	ld	b, a
    000015C7 4E               [ 8]  292 	ld	c, (hl)
    000015C8 21 58 15         [12]  293 	ld	hl, #(_mouse_metasprites + 2)
    000015CB 2A               [ 8]  294 	ld	a,	(hl+)
    000015CC 66               [ 8]  295 	ld	h, (hl)
                                    296 ;	spillPairReg hl
                                    297 ;	spillPairReg hl
                                    298 ;	spillPairReg hl
                                    299 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000015CD 5F               [ 4]  300 	ld	e, a
    000015CE 54               [ 4]  301 	ld	d, h
    000015CF 21 C5 C0         [12]  302 	ld	hl, #___current_metasprite
    000015D2 7B               [ 4]  303 	ld	a, e
    000015D3 22               [ 8]  304 	ld	(hl+), a
    000015D4 72               [ 8]  305 	ld	(hl), d
                                    306 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000015D5 21 C7 C0         [12]  307 	ld	hl, #___current_base_tile
    000015D8 36 00            [12]  308 	ld	(hl), #0x00
                                    309 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000015DA 21 C8 C0         [12]  310 	ld	hl, #___current_base_prop
    000015DD 36 00            [12]  311 	ld	(hl), #0x00
                                    312 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000015DF 50               [ 4]  313 	ld	d, b
    000015E0 59               [ 4]  314 	ld	e, c
    000015E1 AF               [ 4]  315 	xor	a, a
    000015E2 CD 36 60         [24]  316 	call	___move_metasprite
                         000000CD   317 	C$player.c$89$2_0$196	= .
                                    318 	.globl	C$player.c$89$2_0$196
                                    319 ;src\player.c:89: break;
    000015E5 C3 7A 16         [16]  320 	jp	00112$
                         000000D0   321 	C$player.c$90$2_0$196	= .
                                    322 	.globl	C$player.c$90$2_0$196
                                    323 ;src\player.c:90: case down:
    000015E8                        324 00102$:
                                    325 ;src\player.c:91: move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
    000015E8 21 56 15         [12]  326 	ld	hl, #_mouse_metasprites
    000015EB 2A               [ 8]  327 	ld	a, (hl+)
    000015EC 4F               [ 4]  328 	ld	c, a
    000015ED 7E               [ 8]  329 	ld	a, (hl)
                                    330 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000015EE 21 C5 C0         [12]  331 	ld	hl, #___current_metasprite
    000015F1 71               [ 8]  332 	ld	(hl), c
    000015F2 23               [ 8]  333 	inc	hl
    000015F3 77               [ 8]  334 	ld	(hl), a
                                    335 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000015F4 21 C7 C0         [12]  336 	ld	hl, #___current_base_tile
    000015F7 36 00            [12]  337 	ld	(hl), #0x00
                                    338 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000015F9 21 C8 C0         [12]  339 	ld	hl, #___current_base_prop
    000015FC 36 00            [12]  340 	ld	(hl), #0x00
                                    341 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000015FE F8 01            [12]  342 	ldhl	sp,	#1
    00001600 2A               [ 8]  343 	ld	a, (hl+)
    00001601 47               [ 4]  344 	ld	b, a
    00001602 5E               [ 8]  345 	ld	e, (hl)
    00001603 50               [ 4]  346 	ld	d, b
    00001604 AF               [ 4]  347 	xor	a, a
    00001605 CD 36 60         [24]  348 	call	___move_metasprite
                         000000F0   349 	C$player.c$92$2_0$196	= .
                                    350 	.globl	C$player.c$92$2_0$196
                                    351 ;src\player.c:92: break;
    00001608 18 70            [12]  352 	jr	00112$
                         000000F2   353 	C$player.c$93$2_0$196	= .
                                    354 	.globl	C$player.c$93$2_0$196
                                    355 ;src\player.c:93: case right:
    0000160A                        356 00103$:
                                    357 ;src\player.c:94: move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
    0000160A F8 01            [12]  358 	ldhl	sp,	#1
    0000160C 2A               [ 8]  359 	ld	a, (hl+)
    0000160D 47               [ 4]  360 	ld	b, a
    0000160E 4E               [ 8]  361 	ld	c, (hl)
    0000160F 21 5C 15         [12]  362 	ld	hl, #(_mouse_metasprites + 6)
    00001612 2A               [ 8]  363 	ld	a,	(hl+)
    00001613 66               [ 8]  364 	ld	h, (hl)
                                    365 ;	spillPairReg hl
                                    366 ;	spillPairReg hl
                                    367 ;	spillPairReg hl
                                    368 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00001614 5F               [ 4]  369 	ld	e, a
    00001615 54               [ 4]  370 	ld	d, h
    00001616 21 C5 C0         [12]  371 	ld	hl, #___current_metasprite
    00001619 7B               [ 4]  372 	ld	a, e
    0000161A 22               [ 8]  373 	ld	(hl+), a
    0000161B 72               [ 8]  374 	ld	(hl), d
                                    375 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    0000161C 21 C7 C0         [12]  376 	ld	hl, #___current_base_tile
    0000161F 36 00            [12]  377 	ld	(hl), #0x00
                                    378 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00001621 21 C8 C0         [12]  379 	ld	hl, #___current_base_prop
    00001624 36 00            [12]  380 	ld	(hl), #0x00
                                    381 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00001626 50               [ 4]  382 	ld	d, b
    00001627 59               [ 4]  383 	ld	e, c
    00001628 AF               [ 4]  384 	xor	a, a
    00001629 CD 36 60         [24]  385 	call	___move_metasprite
                         00000114   386 	C$player.c$95$2_0$196	= .
                                    387 	.globl	C$player.c$95$2_0$196
                                    388 ;src\player.c:95: break;
    0000162C 18 4C            [12]  389 	jr	00112$
                         00000116   390 	C$player.c$96$2_0$196	= .
                                    391 	.globl	C$player.c$96$2_0$196
                                    392 ;src\player.c:96: case left:
    0000162E                        393 00104$:
                                    394 ;src\player.c:97: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
    0000162E F8 01            [12]  395 	ldhl	sp,	#1
    00001630 2A               [ 8]  396 	ld	a, (hl+)
    00001631 47               [ 4]  397 	ld	b, a
    00001632 4E               [ 8]  398 	ld	c, (hl)
    00001633 21 5A 15         [12]  399 	ld	hl, #(_mouse_metasprites + 4)
    00001636 2A               [ 8]  400 	ld	a,	(hl+)
    00001637 66               [ 8]  401 	ld	h, (hl)
                                    402 ;	spillPairReg hl
                                    403 ;	spillPairReg hl
                                    404 ;	spillPairReg hl
                                    405 ;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
    00001638 5F               [ 4]  406 	ld	e, a
    00001639 54               [ 4]  407 	ld	d, h
    0000163A 21 C5 C0         [12]  408 	ld	hl, #___current_metasprite
    0000163D 7B               [ 4]  409 	ld	a, e
    0000163E 22               [ 8]  410 	ld	(hl+), a
    0000163F 72               [ 8]  411 	ld	(hl), d
                                    412 ;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
    00001640 21 C7 C0         [12]  413 	ld	hl, #___current_base_tile
    00001643 36 00            [12]  414 	ld	(hl), #0x00
                                    415 ;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
    00001645 21 C8 C0         [12]  416 	ld	hl, #___current_base_prop
    00001648 36 00            [12]  417 	ld	(hl), #0x00
                                    418 ;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
    0000164A 50               [ 4]  419 	ld	d, b
    0000164B 79               [ 4]  420 	ld	a, c
    0000164C C6 F8            [ 8]  421 	add	a, #0xf8
    0000164E 5F               [ 4]  422 	ld	e, a
    0000164F AF               [ 4]  423 	xor	a, a
    00001650 CD B4 60         [24]  424 	call	___move_metasprite_vflip
                         0000013B   425 	C$player.c$98$2_0$196	= .
                                    426 	.globl	C$player.c$98$2_0$196
                                    427 ;src\player.c:98: break;
    00001653 18 25            [12]  428 	jr	00112$
                         0000013D   429 	C$player.c$99$2_0$196	= .
                                    430 	.globl	C$player.c$99$2_0$196
                                    431 ;src\player.c:99: default:
    00001655                        432 00105$:
                                    433 ;src\player.c:100: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
    00001655 F8 01            [12]  434 	ldhl	sp,	#1
    00001657 2A               [ 8]  435 	ld	a, (hl+)
    00001658 47               [ 4]  436 	ld	b, a
    00001659 4E               [ 8]  437 	ld	c, (hl)
    0000165A 21 5A 15         [12]  438 	ld	hl, #(_mouse_metasprites + 4)
    0000165D 2A               [ 8]  439 	ld	a,	(hl+)
    0000165E 66               [ 8]  440 	ld	h, (hl)
                                    441 ;	spillPairReg hl
                                    442 ;	spillPairReg hl
                                    443 ;	spillPairReg hl
                                    444 ;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
    0000165F 5F               [ 4]  445 	ld	e, a
    00001660 54               [ 4]  446 	ld	d, h
    00001661 21 C5 C0         [12]  447 	ld	hl, #___current_metasprite
    00001664 7B               [ 4]  448 	ld	a, e
    00001665 22               [ 8]  449 	ld	(hl+), a
    00001666 72               [ 8]  450 	ld	(hl), d
                                    451 ;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
    00001667 21 C7 C0         [12]  452 	ld	hl, #___current_base_tile
    0000166A 36 00            [12]  453 	ld	(hl), #0x00
                                    454 ;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
    0000166C 21 C8 C0         [12]  455 	ld	hl, #___current_base_prop
    0000166F 36 00            [12]  456 	ld	(hl), #0x00
                                    457 ;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
    00001671 50               [ 4]  458 	ld	d, b
    00001672 79               [ 4]  459 	ld	a, c
    00001673 C6 F8            [ 8]  460 	add	a, #0xf8
    00001675 5F               [ 4]  461 	ld	e, a
    00001676 AF               [ 4]  462 	xor	a, a
    00001677 CD B4 60         [24]  463 	call	___move_metasprite_vflip
                         00000162   464 	C$player.c$102$1_0$195	= .
                                    465 	.globl	C$player.c$102$1_0$195
                                    466 ;src\player.c:102: }
    0000167A                        467 00112$:
                         00000162   468 	C$player.c$103$1_0$195	= .
                                    469 	.globl	C$player.c$103$1_0$195
                                    470 ;src\player.c:103: }
    0000167A E8 03            [16]  471 	add	sp, #3
                         00000164   472 	C$player.c$103$1_0$195	= .
                                    473 	.globl	C$player.c$103$1_0$195
                         00000164   474 	XG$DrawPlayer$0$0	= .
                                    475 	.globl	XG$DrawPlayer$0$0
    0000167C C9               [16]  476 	ret
                                    477 	.area _CODE
                                    478 	.area _INITIALIZER
                                    479 	.area _CABS (ABS)
