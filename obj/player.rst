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
                                     51 	.area _CODE_3
                         00000000    52 	G$check_map$0$0	= .
                                     53 	.globl	G$check_map$0$0
                         00000000    54 	C$player.c$39$0_0$185	= .
                                     55 	.globl	C$player.c$39$0_0$185
                                     56 ;src\player.c:39: char check_map(uint8_t map_num, uint8_t x_pos, uint8_t y_pos)
                                     57 ;	---------------------------------
                                     58 ; Function check_map
                                     59 ; ---------------------------------
    0003528B                         60 _check_map::
    0003528B 4B               [ 4]   61 	ld	c, e
                         00000001    62 	C$player.c$41$1_0$185	= .
                                     63 	.globl	C$player.c$41$1_0$185
                                     64 ;src\player.c:41: if (map_num == 0) // HOME
    0003528C B7               [ 4]   65 	or	a, a
    0003528D 20 07            [12]   66 	jr	NZ, 00103$
                         00000004    67 	C$player.c$43$2_0$186	= .
                                     68 	.globl	C$player.c$43$2_0$186
                                     69 ;src\player.c:43: returnCollisionValue(x_pos, y_pos);
    0003528F F8 02            [12]   70 	ldhl	sp,	#2
    00035291 5E               [ 8]   71 	ld	e, (hl)
    00035292 79               [ 4]   72 	ld	a, c
    00035293 CD 00 50         [24]   73 	call	_returnCollisionValue
    00035296                         74 00103$:
                         0000000B    75 	C$player.c$45$1_0$185	= .
                                     76 	.globl	C$player.c$45$1_0$185
                                     77 ;src\player.c:45: } 
    00035296 E1               [12]   78 	pop	hl
    00035297 33               [ 8]   79 	inc	sp
    00035298 E9               [ 4]   80 	jp	(hl)
                         0000000E    81 G$mouse_down$0_0$0 == .
    00035299                         82 _mouse_down:
    00035299 F0                      83 	.db #0xf0	; -16
    0003529A F8                      84 	.db #0xf8	; -8
    0003529B 00                      85 	.db #0x00	; 0
    0003529C 00                      86 	.db #0x00	; 0
    0003529D 00                      87 	.db #0x00	;  0
    0003529E 08                      88 	.db #0x08	;  8
    0003529F 02                      89 	.db #0x02	; 2
    000352A0 00                      90 	.db #0x00	; 0
    000352A1 80                      91 	.db #0x80	; -128
    000352A2 00                      92 	.db #0x00	;  0
    000352A3 00                      93 	.db #0x00	; 0
    000352A4 00                      94 	.db #0x00	; 0
                         0000001A    95 G$mouse_up$0_0$0 == .
    000352A5                         96 _mouse_up:
    000352A5 F0                      97 	.db #0xf0	; -16
    000352A6 F8                      98 	.db #0xf8	; -8
    000352A7 0C                      99 	.db #0x0c	; 12
    000352A8 00                     100 	.db #0x00	; 0
    000352A9 00                     101 	.db #0x00	;  0
    000352AA 08                     102 	.db #0x08	;  8
    000352AB 0E                     103 	.db #0x0e	; 14
    000352AC 00                     104 	.db #0x00	; 0
    000352AD 80                     105 	.db #0x80	; -128
    000352AE 00                     106 	.db #0x00	;  0
    000352AF 00                     107 	.db #0x00	; 0
    000352B0 00                     108 	.db #0x00	; 0
                         00000026   109 G$mouse_right0$0_0$0 == .
    000352B1                        110 _mouse_right0:
    000352B1 F0                     111 	.db #0xf0	; -16
    000352B2 F8                     112 	.db #0xf8	; -8
    000352B3 04                     113 	.db #0x04	; 4
    000352B4 00                     114 	.db #0x00	; 0
    000352B5 00                     115 	.db #0x00	;  0
    000352B6 08                     116 	.db #0x08	;  8
    000352B7 06                     117 	.db #0x06	; 6
    000352B8 00                     118 	.db #0x00	; 0
    000352B9 80                     119 	.db #0x80	; -128
    000352BA 00                     120 	.db #0x00	;  0
    000352BB 00                     121 	.db #0x00	; 0
    000352BC 00                     122 	.db #0x00	; 0
                         00000032   123 G$mouse_right1$0_0$0 == .
    000352BD                        124 _mouse_right1:
    000352BD F0                     125 	.db #0xf0	; -16
    000352BE F8                     126 	.db #0xf8	; -8
    000352BF 08                     127 	.db #0x08	; 8
    000352C0 00                     128 	.db #0x00	; 0
    000352C1 00                     129 	.db #0x00	;  0
    000352C2 08                     130 	.db #0x08	;  8
    000352C3 0A                     131 	.db #0x0a	; 10
    000352C4 00                     132 	.db #0x00	; 0
    000352C5 80                     133 	.db #0x80	; -128
    000352C6 00                     134 	.db #0x00	;  0
    000352C7 00                     135 	.db #0x00	; 0
    000352C8 00                     136 	.db #0x00	; 0
                         0000003E   137 G$mouse_metasprites$0_0$0 == .
    000352C9                        138 _mouse_metasprites:
    000352C9 99 52                  139 	.dw _mouse_down
    000352CB A5 52                  140 	.dw _mouse_up
    000352CD B1 52                  141 	.dw _mouse_right0
    000352CF BD 52                  142 	.dw _mouse_right1
                         00000046   143 	G$PlayerUpdate$0$0	= .
                                    144 	.globl	G$PlayerUpdate$0$0
                         00000046   145 	C$player.c$47$1_0$188	= .
                                    146 	.globl	C$player.c$47$1_0$188
                                    147 ;src\player.c:47: void PlayerUpdate(struct player *ptr)
                                    148 ;	---------------------------------
                                    149 ; Function PlayerUpdate
                                    150 ; ---------------------------------
    000352D1                        151 _PlayerUpdate::
    000352D1 4B               [ 4]  152 	ld	c, e
    000352D2 42               [ 4]  153 	ld	b, d
                         00000048   154 	C$player.c$50$1_0$188	= .
                                    155 	.globl	C$player.c$50$1_0$188
                                    156 ;src\player.c:50: switch (ptr->playerState)
    000352D3 21 0B 00         [12]  157 	ld	hl, #0x000b
    000352D6 09               [ 8]  158 	add	hl, bc
    000352D7 7E               [ 8]  159 	ld	a, (hl)
    000352D8 B7               [ 4]  160 	or	a, a
    000352D9 C0               [20]  161 	ret	NZ
                         0000004F   162 	C$player.c$53$2_0$189	= .
                                    163 	.globl	C$player.c$53$2_0$189
                                    164 ;src\player.c:53: joypadPrevious = joypadCurrent;
    000352DA FA 6E CD         [16]  165 	ld	a, (#_joypadCurrent)
    000352DD EA 6D CD         [16]  166 	ld	(#_joypadPrevious),a
                         00000055   167 	C$player.c$54$2_0$189	= .
                                    168 	.globl	C$player.c$54$2_0$189
                                    169 ;src\player.c:54: joypadCurrent = joypad();
    000352E0 CD 74 0F         [24]  170 	call	_joypad
    000352E3 21 6E CD         [12]  171 	ld	hl, #_joypadCurrent
    000352E6 77               [ 8]  172 	ld	(hl), a
                         0000005C   173 	C$player.c$55$1_0$188	= .
                                    174 	.globl	C$player.c$55$1_0$188
                                    175 ;src\player.c:55: if (joypadCurrent & J_UP)
    000352E7 5E               [ 8]  176 	ld	e, (hl)
                         0000005D   177 	C$player.c$59$1_0$188	= .
                                    178 	.globl	C$player.c$59$1_0$188
                                    179 ;src\player.c:59: ptr->playerDirection = up;
    000352E8 21 0A 00         [12]  180 	ld	hl, #0x000a
    000352EB 09               [ 8]  181 	add	hl, bc
                         00000061   182 	C$player.c$55$2_0$189	= .
                                    183 	.globl	C$player.c$55$2_0$189
                                    184 ;src\player.c:55: if (joypadCurrent & J_UP)
    000352EC CB 53            [ 8]  185 	bit	2, e
    000352EE 28 03            [12]  186 	jr	Z, 00111$
                         00000065   187 	C$player.c$59$3_0$190	= .
                                    188 	.globl	C$player.c$59$3_0$190
                                    189 ;src\player.c:59: ptr->playerDirection = up;
    000352F0 36 01            [12]  190 	ld	(hl), #0x01
    000352F2 C9               [16]  191 	ret
    000352F3                        192 00111$:
                         00000068   193 	C$player.c$61$2_0$189	= .
                                    194 	.globl	C$player.c$61$2_0$189
                                    195 ;src\player.c:61: else if (joypadCurrent & J_DOWN)
    000352F3 CB 5B            [ 8]  196 	bit	3, e
    000352F5 28 03            [12]  197 	jr	Z, 00108$
                         0000006C   198 	C$player.c$64$3_0$191	= .
                                    199 	.globl	C$player.c$64$3_0$191
                                    200 ;src\player.c:64: ptr->playerDirection = down;
    000352F7 36 00            [12]  201 	ld	(hl), #0x00
    000352F9 C9               [16]  202 	ret
    000352FA                        203 00108$:
                         0000006F   204 	C$player.c$66$2_0$189	= .
                                    205 	.globl	C$player.c$66$2_0$189
                                    206 ;src\player.c:66: else if (joypadCurrent & J_RIGHT)
    000352FA CB 43            [ 8]  207 	bit	0, e
    000352FC 28 03            [12]  208 	jr	Z, 00105$
                         00000073   209 	C$player.c$69$3_0$192	= .
                                    210 	.globl	C$player.c$69$3_0$192
                                    211 ;src\player.c:69: ptr->playerDirection = right;
    000352FE 36 02            [12]  212 	ld	(hl), #0x02
    00035300 C9               [16]  213 	ret
    00035301                        214 00105$:
                         00000076   215 	C$player.c$71$2_0$189	= .
                                    216 	.globl	C$player.c$71$2_0$189
                                    217 ;src\player.c:71: else if (joypadCurrent & J_LEFT)
    00035301 CB 4B            [ 8]  218 	bit	1, e
    00035303 C8               [20]  219 	ret	Z
                         00000079   220 	C$player.c$74$3_0$193	= .
                                    221 	.globl	C$player.c$74$3_0$193
                                    222 ;src\player.c:74: ptr->playerDirection = left;
    00035304 36 03            [12]  223 	ld	(hl), #0x03
                         0000007B   224 	C$player.c$80$1_0$188	= .
                                    225 	.globl	C$player.c$80$1_0$188
                                    226 ;src\player.c:80: }
                         0000007B   227 	C$player.c$81$1_0$188	= .
                                    228 	.globl	C$player.c$81$1_0$188
                                    229 ;src\player.c:81: }
                         0000007B   230 	C$player.c$81$1_0$188	= .
                                    231 	.globl	C$player.c$81$1_0$188
                         0000007B   232 	XG$PlayerUpdate$0$0	= .
                                    233 	.globl	XG$PlayerUpdate$0$0
    00035306 C9               [16]  234 	ret
                         0000007C   235 	G$DrawPlayer$0$0	= .
                                    236 	.globl	G$DrawPlayer$0$0
                         0000007C   237 	C$player.c$83$1_0$195	= .
                                    238 	.globl	C$player.c$83$1_0$195
                                    239 ;src\player.c:83: void DrawPlayer(struct player *ptr)
                                    240 ;	---------------------------------
                                    241 ; Function DrawPlayer
                                    242 ; ---------------------------------
    00035307                        243 _DrawPlayer::
    00035307 E8 FD            [16]  244 	add	sp, #-3
                         0000007E   245 	C$player.c$87$1_0$195	= .
                                    246 	.globl	C$player.c$87$1_0$195
                                    247 ;src\player.c:87: switch (ptr->playerDirection)
    00035309 21 0A 00         [12]  248 	ld	hl, #0x000a
    0003530C 19               [ 8]  249 	add	hl, de
    0003530D 7E               [ 8]  250 	ld	a, (hl)
    0003530E F8 00            [12]  251 	ldhl	sp,	#0
    00035310 77               [ 8]  252 	ld	(hl), a
                         00000086   253 	C$player.c$90$1_0$195	= .
                                    254 	.globl	C$player.c$90$1_0$195
                                    255 ;src\player.c:90: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
    00035311 4B               [ 4]  256 	ld	c, e
    00035312 42               [ 4]  257 	ld	b, d
    00035313 03               [ 8]  258 	inc	bc
    00035314 03               [ 8]  259 	inc	bc
    00035315 1A               [ 8]  260 	ld	a, (de)
    00035316 F8 02            [12]  261 	ldhl	sp,	#2
    00035318 32               [ 8]  262 	ld	(hl-), a
    00035319 0A               [ 8]  263 	ld	a, (bc)
                         0000008F   264 	C$player.c$87$1_0$195	= .
                                    265 	.globl	C$player.c$87$1_0$195
                                    266 ;src\player.c:87: switch (ptr->playerDirection)
    0003531A 32               [ 8]  267 	ld	(hl-), a
    0003531B 7E               [ 8]  268 	ld	a, (hl)
    0003531C B7               [ 4]  269 	or	a, a
    0003531D 28 3C            [12]  270 	jr	Z, 00102$
    0003531F F8 00            [12]  271 	ldhl	sp,	#0
    00035321 7E               [ 8]  272 	ld	a, (hl)
    00035322 3D               [ 4]  273 	dec	a
    00035323 28 11            [12]  274 	jr	Z, 00101$
    00035325 F8 00            [12]  275 	ldhl	sp,	#0
    00035327 7E               [ 8]  276 	ld	a, (hl)
    00035328 D6 02            [ 8]  277 	sub	a, #0x02
    0003532A 28 51            [12]  278 	jr	Z, 00103$
    0003532C F8 00            [12]  279 	ldhl	sp,	#0
    0003532E 7E               [ 8]  280 	ld	a, (hl)
    0003532F D6 03            [ 8]  281 	sub	a, #0x03
    00035331 28 6E            [12]  282 	jr	Z, 00104$
    00035333 C3 C8 53         [16]  283 	jp	00105$
                         000000AB   284 	C$player.c$89$2_0$196	= .
                                    285 	.globl	C$player.c$89$2_0$196
                                    286 ;src\player.c:89: case up:
    00035336                        287 00101$:
                                    288 ;src\player.c:90: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
    00035336 F8 01            [12]  289 	ldhl	sp,	#1
    00035338 2A               [ 8]  290 	ld	a, (hl+)
    00035339 47               [ 4]  291 	ld	b, a
    0003533A 4E               [ 8]  292 	ld	c, (hl)
    0003533B 21 CB 52         [12]  293 	ld	hl, #(_mouse_metasprites + 2)
    0003533E 2A               [ 8]  294 	ld	a,	(hl+)
    0003533F 66               [ 8]  295 	ld	h, (hl)
                                    296 ;	spillPairReg hl
                                    297 ;	spillPairReg hl
                                    298 ;	spillPairReg hl
                                    299 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00035340 5F               [ 4]  300 	ld	e, a
    00035341 54               [ 4]  301 	ld	d, h
    00035342 21 C5 C0         [12]  302 	ld	hl, #___current_metasprite
    00035345 7B               [ 4]  303 	ld	a, e
    00035346 22               [ 8]  304 	ld	(hl+), a
    00035347 72               [ 8]  305 	ld	(hl), d
                                    306 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00035348 21 C7 C0         [12]  307 	ld	hl, #___current_base_tile
    0003534B 36 00            [12]  308 	ld	(hl), #0x00
                                    309 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    0003534D 21 C8 C0         [12]  310 	ld	hl, #___current_base_prop
    00035350 36 00            [12]  311 	ld	(hl), #0x00
                                    312 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00035352 50               [ 4]  313 	ld	d, b
    00035353 59               [ 4]  314 	ld	e, c
    00035354 AF               [ 4]  315 	xor	a, a
    00035355 CD AA 06         [24]  316 	call	___move_metasprite
                         000000CD   317 	C$player.c$91$2_0$196	= .
                                    318 	.globl	C$player.c$91$2_0$196
                                    319 ;src\player.c:91: break;
    00035358 C3 ED 53         [16]  320 	jp	00112$
                         000000D0   321 	C$player.c$92$2_0$196	= .
                                    322 	.globl	C$player.c$92$2_0$196
                                    323 ;src\player.c:92: case down:
    0003535B                        324 00102$:
                                    325 ;src\player.c:93: move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
    0003535B 21 C9 52         [12]  326 	ld	hl, #_mouse_metasprites
    0003535E 2A               [ 8]  327 	ld	a, (hl+)
    0003535F 4F               [ 4]  328 	ld	c, a
    00035360 7E               [ 8]  329 	ld	a, (hl)
                                    330 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00035361 21 C5 C0         [12]  331 	ld	hl, #___current_metasprite
    00035364 71               [ 8]  332 	ld	(hl), c
    00035365 23               [ 8]  333 	inc	hl
    00035366 77               [ 8]  334 	ld	(hl), a
                                    335 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00035367 21 C7 C0         [12]  336 	ld	hl, #___current_base_tile
    0003536A 36 00            [12]  337 	ld	(hl), #0x00
                                    338 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    0003536C 21 C8 C0         [12]  339 	ld	hl, #___current_base_prop
    0003536F 36 00            [12]  340 	ld	(hl), #0x00
                                    341 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00035371 F8 01            [12]  342 	ldhl	sp,	#1
    00035373 2A               [ 8]  343 	ld	a, (hl+)
    00035374 47               [ 4]  344 	ld	b, a
    00035375 5E               [ 8]  345 	ld	e, (hl)
    00035376 50               [ 4]  346 	ld	d, b
    00035377 AF               [ 4]  347 	xor	a, a
    00035378 CD AA 06         [24]  348 	call	___move_metasprite
                         000000F0   349 	C$player.c$94$2_0$196	= .
                                    350 	.globl	C$player.c$94$2_0$196
                                    351 ;src\player.c:94: break;
    0003537B 18 70            [12]  352 	jr	00112$
                         000000F2   353 	C$player.c$95$2_0$196	= .
                                    354 	.globl	C$player.c$95$2_0$196
                                    355 ;src\player.c:95: case right:
    0003537D                        356 00103$:
                                    357 ;src\player.c:96: move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
    0003537D F8 01            [12]  358 	ldhl	sp,	#1
    0003537F 2A               [ 8]  359 	ld	a, (hl+)
    00035380 47               [ 4]  360 	ld	b, a
    00035381 4E               [ 8]  361 	ld	c, (hl)
    00035382 21 CF 52         [12]  362 	ld	hl, #(_mouse_metasprites + 6)
    00035385 2A               [ 8]  363 	ld	a,	(hl+)
    00035386 66               [ 8]  364 	ld	h, (hl)
                                    365 ;	spillPairReg hl
                                    366 ;	spillPairReg hl
                                    367 ;	spillPairReg hl
                                    368 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00035387 5F               [ 4]  369 	ld	e, a
    00035388 54               [ 4]  370 	ld	d, h
    00035389 21 C5 C0         [12]  371 	ld	hl, #___current_metasprite
    0003538C 7B               [ 4]  372 	ld	a, e
    0003538D 22               [ 8]  373 	ld	(hl+), a
    0003538E 72               [ 8]  374 	ld	(hl), d
                                    375 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    0003538F 21 C7 C0         [12]  376 	ld	hl, #___current_base_tile
    00035392 36 00            [12]  377 	ld	(hl), #0x00
                                    378 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00035394 21 C8 C0         [12]  379 	ld	hl, #___current_base_prop
    00035397 36 00            [12]  380 	ld	(hl), #0x00
                                    381 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00035399 50               [ 4]  382 	ld	d, b
    0003539A 59               [ 4]  383 	ld	e, c
    0003539B AF               [ 4]  384 	xor	a, a
    0003539C CD AA 06         [24]  385 	call	___move_metasprite
                         00000114   386 	C$player.c$97$2_0$196	= .
                                    387 	.globl	C$player.c$97$2_0$196
                                    388 ;src\player.c:97: break;
    0003539F 18 4C            [12]  389 	jr	00112$
                         00000116   390 	C$player.c$98$2_0$196	= .
                                    391 	.globl	C$player.c$98$2_0$196
                                    392 ;src\player.c:98: case left:
    000353A1                        393 00104$:
                                    394 ;src\player.c:99: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
    000353A1 F8 01            [12]  395 	ldhl	sp,	#1
    000353A3 2A               [ 8]  396 	ld	a, (hl+)
    000353A4 47               [ 4]  397 	ld	b, a
    000353A5 4E               [ 8]  398 	ld	c, (hl)
    000353A6 21 CD 52         [12]  399 	ld	hl, #(_mouse_metasprites + 4)
    000353A9 2A               [ 8]  400 	ld	a,	(hl+)
    000353AA 66               [ 8]  401 	ld	h, (hl)
                                    402 ;	spillPairReg hl
                                    403 ;	spillPairReg hl
                                    404 ;	spillPairReg hl
                                    405 ;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
    000353AB 5F               [ 4]  406 	ld	e, a
    000353AC 54               [ 4]  407 	ld	d, h
    000353AD 21 C5 C0         [12]  408 	ld	hl, #___current_metasprite
    000353B0 7B               [ 4]  409 	ld	a, e
    000353B1 22               [ 8]  410 	ld	(hl+), a
    000353B2 72               [ 8]  411 	ld	(hl), d
                                    412 ;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
    000353B3 21 C7 C0         [12]  413 	ld	hl, #___current_base_tile
    000353B6 36 00            [12]  414 	ld	(hl), #0x00
                                    415 ;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
    000353B8 21 C8 C0         [12]  416 	ld	hl, #___current_base_prop
    000353BB 36 00            [12]  417 	ld	(hl), #0x00
                                    418 ;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
    000353BD 50               [ 4]  419 	ld	d, b
    000353BE 79               [ 4]  420 	ld	a, c
    000353BF C6 F8            [ 8]  421 	add	a, #0xf8
    000353C1 5F               [ 4]  422 	ld	e, a
    000353C2 AF               [ 4]  423 	xor	a, a
    000353C3 CD 28 07         [24]  424 	call	___move_metasprite_vflip
                         0000013B   425 	C$player.c$100$2_0$196	= .
                                    426 	.globl	C$player.c$100$2_0$196
                                    427 ;src\player.c:100: break;
    000353C6 18 25            [12]  428 	jr	00112$
                         0000013D   429 	C$player.c$101$2_0$196	= .
                                    430 	.globl	C$player.c$101$2_0$196
                                    431 ;src\player.c:101: default:
    000353C8                        432 00105$:
                                    433 ;src\player.c:102: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
    000353C8 F8 01            [12]  434 	ldhl	sp,	#1
    000353CA 2A               [ 8]  435 	ld	a, (hl+)
    000353CB 47               [ 4]  436 	ld	b, a
    000353CC 4E               [ 8]  437 	ld	c, (hl)
    000353CD 21 CD 52         [12]  438 	ld	hl, #(_mouse_metasprites + 4)
    000353D0 2A               [ 8]  439 	ld	a,	(hl+)
    000353D1 66               [ 8]  440 	ld	h, (hl)
                                    441 ;	spillPairReg hl
                                    442 ;	spillPairReg hl
                                    443 ;	spillPairReg hl
                                    444 ;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
    000353D2 5F               [ 4]  445 	ld	e, a
    000353D3 54               [ 4]  446 	ld	d, h
    000353D4 21 C5 C0         [12]  447 	ld	hl, #___current_metasprite
    000353D7 7B               [ 4]  448 	ld	a, e
    000353D8 22               [ 8]  449 	ld	(hl+), a
    000353D9 72               [ 8]  450 	ld	(hl), d
                                    451 ;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
    000353DA 21 C7 C0         [12]  452 	ld	hl, #___current_base_tile
    000353DD 36 00            [12]  453 	ld	(hl), #0x00
                                    454 ;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
    000353DF 21 C8 C0         [12]  455 	ld	hl, #___current_base_prop
    000353E2 36 00            [12]  456 	ld	(hl), #0x00
                                    457 ;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
    000353E4 50               [ 4]  458 	ld	d, b
    000353E5 79               [ 4]  459 	ld	a, c
    000353E6 C6 F8            [ 8]  460 	add	a, #0xf8
    000353E8 5F               [ 4]  461 	ld	e, a
    000353E9 AF               [ 4]  462 	xor	a, a
    000353EA CD 28 07         [24]  463 	call	___move_metasprite_vflip
                         00000162   464 	C$player.c$104$1_0$195	= .
                                    465 	.globl	C$player.c$104$1_0$195
                                    466 ;src\player.c:104: }
    000353ED                        467 00112$:
                         00000162   468 	C$player.c$105$1_0$195	= .
                                    469 	.globl	C$player.c$105$1_0$195
                                    470 ;src\player.c:105: }
    000353ED E8 03            [16]  471 	add	sp, #3
                         00000164   472 	C$player.c$105$1_0$195	= .
                                    473 	.globl	C$player.c$105$1_0$195
                         00000164   474 	XG$DrawPlayer$0$0	= .
                                    475 	.globl	XG$DrawPlayer$0$0
    000353EF C9               [16]  476 	ret
                                    477 	.area _CODE_3
                                    478 	.area _INITIALIZER
                                    479 	.area _CABS (ABS)
