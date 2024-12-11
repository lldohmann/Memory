                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module common
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _DrawWindow
                                     12 	.globl _RandomNumber
                                     13 	.globl _ResetColor
                                     14 	.globl _InvertColor
                                     15 	.globl _fadeFromWhite
                                     16 	.globl _fadeToWhite
                                     17 	.globl _fadeFromBlack
                                     18 	.globl _fadeToBlack
                                     19 	.globl _DrawText
                                     20 	.globl _DrawNumber
                                     21 	.globl _performantdelay
                                     22 	.globl _strlen
                                     23 	.globl _uitoa
                                     24 	.globl _get_win_xy_addr
                                     25 	.globl _get_bkg_xy_addr
                                     26 	.globl _set_vram_byte
                                     27 	.globl _wait_vbl_done
                                     28 	.globl _index
                                     29 	.globl _joypadCurrent
                                     30 	.globl _joypadPrevious
                                     31 ;--------------------------------------------------------
                                     32 ; special function registers
                                     33 ;--------------------------------------------------------
                                     34 ;--------------------------------------------------------
                                     35 ; ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area _DATA
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area _INITIALIZED
                         00000000    42 G$joypadPrevious$0_0$0==.
    0000CD6D                         43 _joypadPrevious::
    0000CD6D                         44 	.ds 1
                         00000001    45 G$joypadCurrent$0_0$0==.
    0000CD6E                         46 _joypadCurrent::
    0000CD6E                         47 	.ds 1
                         00000002    48 G$index$0_0$0==.
    0000CD6F                         49 _index::
    0000CD6F                         50 	.ds 1
                                     51 ;--------------------------------------------------------
                                     52 ; absolute external ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area _DABS (ABS)
                                     55 ;--------------------------------------------------------
                                     56 ; global & static initialisations
                                     57 ;--------------------------------------------------------
                                     58 	.area _HOME
                                     59 	.area _GSINIT
                                     60 	.area _GSFINAL
                                     61 	.area _GSINIT
                                     62 ;--------------------------------------------------------
                                     63 ; Home
                                     64 ;--------------------------------------------------------
                                     65 	.area _HOME
                                     66 	.area _HOME
                                     67 ;--------------------------------------------------------
                                     68 ; code
                                     69 ;--------------------------------------------------------
                                     70 	.area _CODE
                         00000000    71 	G$performantdelay$0$0	= .
                                     72 	.globl	G$performantdelay$0$0
                         00000000    73 	C$common.c$13$0_0$164	= .
                                     74 	.globl	C$common.c$13$0_0$164
                                     75 ;src\common.c:13: void performantdelay(uint8_t numloops)
                                     76 ;	---------------------------------
                                     77 ; Function performantdelay
                                     78 ; ---------------------------------
    0000249E                         79 _performantdelay::
    0000249E 4F               [ 4]   80 	ld	c, a
                         00000001    81 	C$common.c$15$2_0$164	= .
                                     82 	.globl	C$common.c$15$2_0$164
                                     83 ;src\common.c:15: for (uint8_t i = 0; i < numloops; i++)
    0000249F 06 00            [ 8]   84 	ld	b, #0x00
    000024A1                         85 00103$:
    000024A1 78               [ 4]   86 	ld	a, b
    000024A2 91               [ 4]   87 	sub	a, c
    000024A3 D0               [20]   88 	ret	NC
                         00000006    89 	C$common.c$17$3_0$165	= .
                                     90 	.globl	C$common.c$17$3_0$165
                                     91 ;src\common.c:17: wait_vbl_done();
    000024A4 CD BD 01         [24]   92 	call	_wait_vbl_done
                         00000009    93 	C$common.c$15$2_0$164	= .
                                     94 	.globl	C$common.c$15$2_0$164
                                     95 ;src\common.c:15: for (uint8_t i = 0; i < numloops; i++)
    000024A7 04               [ 4]   96 	inc	b
                         0000000A    97 	C$common.c$19$2_0$164	= .
                                     98 	.globl	C$common.c$19$2_0$164
                                     99 ;src\common.c:19: }
                         0000000A   100 	C$common.c$19$2_0$164	= .
                                    101 	.globl	C$common.c$19$2_0$164
                         0000000A   102 	XG$performantdelay$0$0	= .
                                    103 	.globl	XG$performantdelay$0$0
    000024A8 18 F7            [12]  104 	jr	00103$
                         0000000C   105 	G$DrawNumber$0$0	= .
                                    106 	.globl	G$DrawNumber$0$0
                         0000000C   107 	C$common.c$22$2_0$167	= .
                                    108 	.globl	C$common.c$22$2_0$167
                                    109 ;src\common.c:22: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits, BOOLEAN bkg)
                                    110 ;	---------------------------------
                                    111 ; Function DrawNumber
                                    112 ; ---------------------------------
    000024AA                        113 _DrawNumber::
    000024AA E8 F0            [16]  114 	add	sp, #-16
    000024AC 47               [ 4]  115 	ld	b, a
    000024AD 4B               [ 4]  116 	ld	c, e
                         00000010   117 	C$common.c$24$2_0$167	= .
                                    118 	.globl	C$common.c$24$2_0$167
                                    119 ;src\common.c:24: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
    000024AE F8 00            [12]  120 	ldhl	sp,	#0
    000024B0 3E 30            [ 8]  121 	ld	a,#0x30
    000024B2 22               [ 8]  122 	ld	(hl+),a
    000024B3 22               [ 8]  123 	ld	(hl+), a
    000024B4 3E 30            [ 8]  124 	ld	a,#0x30
    000024B6 22               [ 8]  125 	ld	(hl+),a
    000024B7 22               [ 8]  126 	ld	(hl+), a
    000024B8 3E 30            [ 8]  127 	ld	a,#0x30
    000024BA 22               [ 8]  128 	ld	(hl+),a
    000024BB 22               [ 8]  129 	ld	(hl+), a
    000024BC 3E 30            [ 8]  130 	ld	a, #0x30
    000024BE 22               [ 8]  131 	ld	(hl+), a
    000024BF 36 30            [12]  132 	ld	(hl), #0x30
                         00000023   133 	C$common.c$27$1_0$167	= .
                                    134 	.globl	C$common.c$27$1_0$167
                                    135 ;src\common.c:27: uitoa(number, buffer, 10);
    000024C1 F8 12            [12]  136 	ldhl	sp,	#18
    000024C3 2A               [ 8]  137 	ld	a, (hl+)
    000024C4 5F               [ 4]  138 	ld	e, a
    000024C5 56               [ 8]  139 	ld	d, (hl)
    000024C6 C5               [16]  140 	push	bc
    000024C7 3E 0A            [ 8]  141 	ld	a, #0x0a
    000024C9 F5               [16]  142 	push	af
    000024CA 33               [ 8]  143 	inc	sp
    000024CB 21 03 00         [12]  144 	ld	hl, #3
    000024CE 39               [ 8]  145 	add	hl, sp
    000024CF E5               [16]  146 	push	hl
    000024D0 D5               [16]  147 	push	de
    000024D1 CD 5D 62         [24]  148 	call	_uitoa
    000024D4 E8 05            [16]  149 	add	sp, #5
    000024D6 C1               [12]  150 	pop	bc
                         00000039   151 	C$common.c$31$1_1$168	= .
                                    152 	.globl	C$common.c$31$1_1$168
                                    153 ;src\common.c:31: if (bkg)
    000024D7 F8 15            [12]  154 	ldhl	sp,	#21
    000024D9 7E               [ 8]  155 	ld	a, (hl)
    000024DA B7               [ 4]  156 	or	a, a
    000024DB 28 0D            [12]  157 	jr	Z, 00102$
                         0000003F   158 	C$common.c$33$2_1$169	= .
                                    159 	.globl	C$common.c$33$2_1$169
                                    160 ;src\common.c:33: vramAddr = get_bkg_xy_addr(x,y); 
    000024DD 79               [ 4]  161 	ld	a, c
    000024DE F5               [16]  162 	push	af
    000024DF 33               [ 8]  163 	inc	sp
    000024E0 C5               [16]  164 	push	bc
    000024E1 33               [ 8]  165 	inc	sp
    000024E2 CD 17 60         [24]  166 	call	_get_bkg_xy_addr
    000024E5 E1               [12]  167 	pop	hl
    000024E6 4B               [ 4]  168 	ld	c, e
    000024E7 42               [ 4]  169 	ld	b, d
    000024E8 18 0B            [12]  170 	jr	00103$
    000024EA                        171 00102$:
                         0000004C   172 	C$common.c$36$2_1$170	= .
                                    173 	.globl	C$common.c$36$2_1$170
                                    174 ;src\common.c:36: vramAddr = get_win_xy_addr(x,y);
    000024EA 79               [ 4]  175 	ld	a, c
    000024EB F5               [16]  176 	push	af
    000024EC 33               [ 8]  177 	inc	sp
    000024ED C5               [16]  178 	push	bc
    000024EE 33               [ 8]  179 	inc	sp
    000024EF CD 0F 60         [24]  180 	call	_get_win_xy_addr
    000024F2 E1               [12]  181 	pop	hl
    000024F3 4B               [ 4]  182 	ld	c, e
    000024F4 42               [ 4]  183 	ld	b, d
    000024F5                        184 00103$:
                         00000057   185 	C$common.c$40$1_2$171	= .
                                    186 	.globl	C$common.c$40$1_2$171
                                    187 ;src\common.c:40: uint8_t len = strlen(buffer);
    000024F5 21 00 00         [12]  188 	ld	hl, #0
    000024F8 39               [ 8]  189 	add	hl, sp
    000024F9 E5               [16]  190 	push	hl
    000024FA CD 27 64         [24]  191 	call	_strlen
    000024FD E1               [12]  192 	pop	hl
    000024FE F8 08            [12]  193 	ldhl	sp,	#8
    00002500 73               [ 8]  194 	ld	(hl), e
                         00000063   195 	C$common.c$45$2_2$167	= .
                                    196 	.globl	C$common.c$45$2_2$167
                                    197 ;src\common.c:45: for (uint8_t i=0; i<digits-len;i++)
    00002501 F8 0F            [12]  198 	ldhl	sp,	#15
    00002503 36 00            [12]  199 	ld	(hl), #0x00
    00002505                        200 00107$:
    00002505 F8 14            [12]  201 	ldhl	sp,	#20
    00002507 7E               [ 8]  202 	ld	a, (hl)
    00002508 F8 09            [12]  203 	ldhl	sp,	#9
    0000250A 22               [ 8]  204 	ld	(hl+), a
    0000250B AF               [ 4]  205 	xor	a, a
    0000250C 32               [ 8]  206 	ld	(hl-), a
    0000250D 2B               [ 8]  207 	dec	hl
    0000250E 7E               [ 8]  208 	ld	a, (hl)
    0000250F F8 0B            [12]  209 	ldhl	sp,	#11
    00002511 22               [ 8]  210 	ld	(hl+), a
    00002512 AF               [ 4]  211 	xor	a, a
    00002513 32               [ 8]  212 	ld	(hl-), a
    00002514 2B               [ 8]  213 	dec	hl
    00002515 2B               [ 8]  214 	dec	hl
    00002516 2A               [ 8]  215 	ld	a, (hl+)
    00002517 5F               [ 4]  216 	ld	e, a
    00002518 2A               [ 8]  217 	ld	a, (hl+)
    00002519 57               [ 4]  218 	ld	d, a
    0000251A 2A               [ 8]  219 	ld	a,	(hl+)
    0000251B 66               [ 8]  220 	ld	h, (hl)
    0000251C 6F               [ 4]  221 	ld	l, a
    0000251D 7B               [ 4]  222 	ld	a, e
    0000251E 95               [ 4]  223 	sub	a, l
    0000251F 5F               [ 4]  224 	ld	e, a
    00002520 7A               [ 4]  225 	ld	a, d
    00002521 9C               [ 4]  226 	sbc	a, h
    00002522 F8 0E            [12]  227 	ldhl	sp,	#14
    00002524 32               [ 8]  228 	ld	(hl-), a
    00002525 7B               [ 4]  229 	ld	a, e
    00002526 22               [ 8]  230 	ld	(hl+), a
    00002527 23               [ 8]  231 	inc	hl
    00002528 7E               [ 8]  232 	ld	a, (hl)
    00002529 F8 0B            [12]  233 	ldhl	sp,	#11
    0000252B 22               [ 8]  234 	ld	(hl+), a
    0000252C 36 00            [12]  235 	ld	(hl), #0x00
    0000252E F8 0B            [12]  236 	ldhl	sp,	#11
    00002530 5D               [ 4]  237 	ld	e, l
    00002531 54               [ 4]  238 	ld	d, h
    00002532 F8 0D            [12]  239 	ldhl	sp,	#13
    00002534 1A               [ 8]  240 	ld	a, (de)
    00002535 13               [ 8]  241 	inc	de
    00002536 96               [ 8]  242 	sub	a, (hl)
    00002537 23               [ 8]  243 	inc	hl
    00002538 1A               [ 8]  244 	ld	a, (de)
    00002539 9E               [ 8]  245 	sbc	a, (hl)
    0000253A 1A               [ 8]  246 	ld	a, (de)
    0000253B 57               [ 4]  247 	ld	d, a
    0000253C CB 7E            [12]  248 	bit	7, (hl)
    0000253E 28 07            [12]  249 	jr	Z, 00151$
    00002540 CB 7A            [ 8]  250 	bit	7, d
    00002542 20 08            [12]  251 	jr	NZ, 00152$
    00002544 BF               [ 4]  252 	cp	a, a
    00002545 18 05            [12]  253 	jr	00152$
    00002547                        254 00151$:
    00002547 CB 7A            [ 8]  255 	bit	7, d
    00002549 28 01            [12]  256 	jr	Z, 00152$
    0000254B 37               [ 4]  257 	scf
    0000254C                        258 00152$:
    0000254C 30 0E            [12]  259 	jr	NC, 00104$
                         000000B0   260 	C$common.c$47$3_2$173	= .
                                    261 	.globl	C$common.c$47$3_2$173
                                    262 ;src\common.c:47: set_vram_byte(vramAddr++, 283);
    0000254E 69               [ 4]  263 	ld	l, c
                                    264 ;	spillPairReg hl
                                    265 ;	spillPairReg hl
    0000254F 50               [ 4]  266 	ld	d, b
    00002550 03               [ 8]  267 	inc	bc
    00002551 3E 1B            [ 8]  268 	ld	a, #0x1b
    00002553 5D               [ 4]  269 	ld	e, l
    00002554 CD CE 5F         [24]  270 	call	_set_vram_byte
                         000000B9   271 	C$common.c$45$2_2$172	= .
                                    272 	.globl	C$common.c$45$2_2$172
                                    273 ;src\common.c:45: for (uint8_t i=0; i<digits-len;i++)
    00002557 F8 0F            [12]  274 	ldhl	sp,	#15
    00002559 34               [12]  275 	inc	(hl)
    0000255A 18 A9            [12]  276 	jr	00107$
    0000255C                        277 00104$:
                         000000BE   278 	C$common.c$52$2_2$167	= .
                                    279 	.globl	C$common.c$52$2_2$167
                                    280 ;src\common.c:52: for (uint8_t i=0; i<len; i++)
    0000255C 1E 00            [ 8]  281 	ld	e, #0x00
    0000255E                        282 00110$:
    0000255E 7B               [ 4]  283 	ld	a, e
    0000255F F8 08            [12]  284 	ldhl	sp,	#8
    00002561 96               [ 8]  285 	sub	a, (hl)
    00002562 30 1A            [12]  286 	jr	NC, 00112$
                         000000C6   287 	C$common.c$54$3_2$175	= .
                                    288 	.globl	C$common.c$54$3_2$175
                                    289 ;src\common.c:54: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
    00002564 D5               [16]  290 	push	de
    00002565 16 00            [ 8]  291 	ld	d, #0x00
    00002567 21 02 00         [12]  292 	ld	hl, #2
    0000256A 39               [ 8]  293 	add	hl, sp
    0000256B 19               [ 8]  294 	add	hl, de
    0000256C D1               [12]  295 	pop	de
    0000256D 7E               [ 8]  296 	ld	a, (hl)
    0000256E C6 EB            [ 8]  297 	add	a, #0xeb
    00002570 6F               [ 4]  298 	ld	l, a
                                    299 ;	spillPairReg hl
                                    300 ;	spillPairReg hl
    00002571 61               [ 4]  301 	ld	h, c
                                    302 ;	spillPairReg hl
                                    303 ;	spillPairReg hl
    00002572 50               [ 4]  304 	ld	d, b
    00002573 03               [ 8]  305 	inc	bc
    00002574 D5               [16]  306 	push	de
    00002575 7D               [ 4]  307 	ld	a, l
    00002576 5C               [ 4]  308 	ld	e, h
    00002577 CD CE 5F         [24]  309 	call	_set_vram_byte
    0000257A D1               [12]  310 	pop	de
                         000000DD   311 	C$common.c$52$2_2$174	= .
                                    312 	.globl	C$common.c$52$2_2$174
                                    313 ;src\common.c:52: for (uint8_t i=0; i<len; i++)
    0000257B 1C               [ 4]  314 	inc	e
    0000257C 18 E0            [12]  315 	jr	00110$
    0000257E                        316 00112$:
                         000000E0   317 	C$common.c$56$2_2$167	= .
                                    318 	.globl	C$common.c$56$2_2$167
                                    319 ;src\common.c:56: }
    0000257E E8 10            [16]  320 	add	sp, #16
    00002580 E1               [12]  321 	pop	hl
    00002581 E8 04            [16]  322 	add	sp, #4
    00002583 E9               [ 4]  323 	jp	(hl)
                         000000E6   324 	G$DrawText$0$0	= .
                                    325 	.globl	G$DrawText$0$0
                         000000E6   326 	C$common.c$58$2_2$177	= .
                                    327 	.globl	C$common.c$58$2_2$177
                                    328 ;src\common.c:58: void DrawText(uint8_t x, uint8_t y, unsigned char *text, BOOLEAN bkg ){
                                    329 ;	---------------------------------
                                    330 ; Function DrawText
                                    331 ; ---------------------------------
    00002584                        332 _DrawText::
    00002584 E8 FC            [16]  333 	add	sp, #-4
    00002586 47               [ 4]  334 	ld	b, a
    00002587 53               [ 4]  335 	ld	d, e
                         000000EA   336 	C$common.c$65$1_0$177	= .
                                    337 	.globl	C$common.c$65$1_0$177
                                    338 ;src\common.c:65: if (bkg)
    00002588 F8 08            [12]  339 	ldhl	sp,	#8
    0000258A 7E               [ 8]  340 	ld	a, (hl)
    0000258B B7               [ 4]  341 	or	a, a
    0000258C 28 0A            [12]  342 	jr	Z, 00102$
                         000000F0   343 	C$common.c$67$2_0$178	= .
                                    344 	.globl	C$common.c$67$2_0$178
                                    345 ;src\common.c:67: vramAddr = get_bkg_xy_addr(x,y); 
    0000258E 58               [ 4]  346 	ld	e, b
    0000258F D5               [16]  347 	push	de
    00002590 CD 17 60         [24]  348 	call	_get_bkg_xy_addr
    00002593 E8 04            [16]  349 	add	sp, #4
    00002595 D5               [16]  350 	push	de
    00002596 18 08            [12]  351 	jr	00137$
    00002598                        352 00102$:
                         000000FA   353 	C$common.c$70$2_0$179	= .
                                    354 	.globl	C$common.c$70$2_0$179
                                    355 ;src\common.c:70: vramAddr = get_win_xy_addr(x,y);
    00002598 58               [ 4]  356 	ld	e, b
    00002599 D5               [16]  357 	push	de
    0000259A CD 0F 60         [24]  358 	call	_get_win_xy_addr
    0000259D E8 04            [16]  359 	add	sp, #4
    0000259F D5               [16]  360 	push	de
                         00000102   361 	C$common.c$73$1_0$177	= .
                                    362 	.globl	C$common.c$73$1_0$177
                                    363 ;src\common.c:73: while(text[i]!='\0'){
    000025A0                        364 00137$:
    000025A0 0E 00            [ 8]  365 	ld	c, #0x00
    000025A2                        366 00121$:
    000025A2 F8 06            [12]  367 	ldhl	sp,#6
    000025A4 2A               [ 8]  368 	ld	a, (hl+)
    000025A5 5F               [ 4]  369 	ld	e, a
    000025A6 56               [ 8]  370 	ld	d, (hl)
    000025A7 69               [ 4]  371 	ld	l, c
    000025A8 26 00            [ 8]  372 	ld	h, #0x00
    000025AA 19               [ 8]  373 	add	hl, de
    000025AB 5D               [ 4]  374 	ld	e, l
    000025AC 54               [ 4]  375 	ld	d, h
                         0000010F   376 	C$common.c$78$1_0$177	= .
                                    377 	.globl	C$common.c$78$1_0$177
                                    378 ;src\common.c:78: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
    000025AD 1A               [ 8]  379 	ld	a, (de)
                         00000110   380 	C$common.c$73$1_0$177	= .
                                    381 	.globl	C$common.c$73$1_0$177
                                    382 ;src\common.c:73: while(text[i]!='\0'){
    000025AE 47               [ 4]  383 	ld	b, a
    000025AF B7               [ 4]  384 	or	a, a
    000025B0 CA 77 26         [16]  385 	jp	Z, 00123$
                         00000115   386 	C$common.c$77$1_0$177	= .
                                    387 	.globl	C$common.c$77$1_0$177
                                    388 ;src\common.c:77: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
    000025B3 D1               [12]  389 	pop	de
    000025B4 D5               [16]  390 	push	de
    000025B5 6B               [ 4]  391 	ld	l, e
    000025B6 62               [ 4]  392 	ld	h, d
    000025B7 23               [ 8]  393 	inc	hl
    000025B8 E5               [16]  394 	push	hl
    000025B9 7D               [ 4]  395 	ld	a, l
    000025BA F8 04            [12]  396 	ldhl	sp,	#4
    000025BC 77               [ 8]  397 	ld	(hl), a
    000025BD E1               [12]  398 	pop	hl
    000025BE 7C               [ 4]  399 	ld	a, h
    000025BF F8 03            [12]  400 	ldhl	sp,	#3
    000025C1 77               [ 8]  401 	ld	(hl), a
    000025C2 78               [ 4]  402 	ld	a,b
    000025C3 5F               [ 4]  403 	ld	e,a
    000025C4 D6 41            [ 8]  404 	sub	a, #0x41
    000025C6 38 1B            [12]  405 	jr	C, 00118$
    000025C8 3E 5A            [ 8]  406 	ld	a, #0x5a
    000025CA 90               [ 4]  407 	sub	a, b
    000025CB 38 16            [12]  408 	jr	C, 00118$
    000025CD 2B               [ 8]  409 	dec	hl
    000025CE 7B               [ 4]  410 	ld	a, e
    000025CF C6 C0            [ 8]  411 	add	a, #0xc0
    000025D1 47               [ 4]  412 	ld	b, a
    000025D2 D1               [12]  413 	pop	de
    000025D3 D5               [16]  414 	push	de
    000025D4 3A               [ 8]  415 	ld	a, (hl-)
    000025D5 2B               [ 8]  416 	dec	hl
    000025D6 77               [ 8]  417 	ld	(hl), a
    000025D7 F8 03            [12]  418 	ldhl	sp,	#3
    000025D9 3A               [ 8]  419 	ld	a, (hl-)
    000025DA 2B               [ 8]  420 	dec	hl
    000025DB 77               [ 8]  421 	ld	(hl), a
    000025DC 78               [ 4]  422 	ld	a, b
    000025DD CD CE 5F         [24]  423 	call	_set_vram_byte
    000025E0 C3 73 26         [16]  424 	jp	00119$
    000025E3                        425 00118$:
                         00000145   426 	C$common.c$78$2_0$180	= .
                                    427 	.globl	C$common.c$78$2_0$180
                                    428 ;src\common.c:78: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
    000025E3 78               [ 4]  429 	ld	a, b
    000025E4 D6 61            [ 8]  430 	sub	a, #0x61
    000025E6 38 1B            [12]  431 	jr	C, 00114$
    000025E8 3E 7A            [ 8]  432 	ld	a, #0x7a
    000025EA 90               [ 4]  433 	sub	a, b
    000025EB 38 16            [12]  434 	jr	C, 00114$
    000025ED 7B               [ 4]  435 	ld	a, e
    000025EE C6 A0            [ 8]  436 	add	a, #0xa0
    000025F0 47               [ 4]  437 	ld	b, a
    000025F1 D1               [12]  438 	pop	de
    000025F2 D5               [16]  439 	push	de
    000025F3 F8 02            [12]  440 	ldhl	sp,	#2
    000025F5 3A               [ 8]  441 	ld	a, (hl-)
    000025F6 2B               [ 8]  442 	dec	hl
    000025F7 77               [ 8]  443 	ld	(hl), a
    000025F8 F8 03            [12]  444 	ldhl	sp,	#3
    000025FA 3A               [ 8]  445 	ld	a, (hl-)
    000025FB 2B               [ 8]  446 	dec	hl
    000025FC 77               [ 8]  447 	ld	(hl), a
    000025FD 78               [ 4]  448 	ld	a, b
    000025FE CD CE 5F         [24]  449 	call	_set_vram_byte
    00002601 18 70            [12]  450 	jr	00119$
    00002603                        451 00114$:
                         00000165   452 	C$common.c$79$2_0$180	= .
                                    453 	.globl	C$common.c$79$2_0$180
                                    454 ;src\common.c:79: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
    00002603 78               [ 4]  455 	ld	a, b
    00002604 D6 30            [ 8]  456 	sub	a, #0x30
    00002606 38 1B            [12]  457 	jr	C, 00110$
    00002608 3E 39            [ 8]  458 	ld	a, #0x39
    0000260A 90               [ 4]  459 	sub	a, b
    0000260B 38 16            [12]  460 	jr	C, 00110$
    0000260D 7B               [ 4]  461 	ld	a, e
    0000260E C6 EB            [ 8]  462 	add	a, #0xeb
    00002610 47               [ 4]  463 	ld	b, a
    00002611 D1               [12]  464 	pop	de
    00002612 D5               [16]  465 	push	de
    00002613 F8 02            [12]  466 	ldhl	sp,	#2
    00002615 3A               [ 8]  467 	ld	a, (hl-)
    00002616 2B               [ 8]  468 	dec	hl
    00002617 77               [ 8]  469 	ld	(hl), a
    00002618 F8 03            [12]  470 	ldhl	sp,	#3
    0000261A 3A               [ 8]  471 	ld	a, (hl-)
    0000261B 2B               [ 8]  472 	dec	hl
    0000261C 77               [ 8]  473 	ld	(hl), a
    0000261D 78               [ 4]  474 	ld	a, b
    0000261E CD CE 5F         [24]  475 	call	_set_vram_byte
    00002621 18 50            [12]  476 	jr	00119$
    00002623                        477 00110$:
                         00000185   478 	C$common.c$85$3_0$181	= .
                                    479 	.globl	C$common.c$85$3_0$181
                                    480 ;src\common.c:85: switch(text[i]){
    00002623 78               [ 4]  481 	ld	a,b
    00002624 FE 2E            [ 8]  482 	cp	a,#0x2e
    00002626 28 1B            [12]  483 	jr	Z, 00105$
    00002628 FE 2F            [ 8]  484 	cp	a,#0x2f
    0000262A 28 2A            [12]  485 	jr	Z, 00106$
    0000262C D6 3A            [ 8]  486 	sub	a, #0x3a
    0000262E 20 39            [12]  487 	jr	NZ, 00107$
                         00000192   488 	C$common.c$86$4_0$182	= .
                                    489 	.globl	C$common.c$86$4_0$182
                                    490 ;src\common.c:86: case ':': set_vram_byte(vramAddr++,38); break;
    00002630 D1               [12]  491 	pop	de
    00002631 D5               [16]  492 	push	de
    00002632 F8 02            [12]  493 	ldhl	sp,	#2
    00002634 3A               [ 8]  494 	ld	a, (hl-)
    00002635 2B               [ 8]  495 	dec	hl
    00002636 77               [ 8]  496 	ld	(hl), a
    00002637 F8 03            [12]  497 	ldhl	sp,	#3
    00002639 3A               [ 8]  498 	ld	a, (hl-)
    0000263A 2B               [ 8]  499 	dec	hl
    0000263B 77               [ 8]  500 	ld	(hl), a
    0000263C 3E 26            [ 8]  501 	ld	a, #0x26
    0000263E CD CE 5F         [24]  502 	call	_set_vram_byte
    00002641 18 30            [12]  503 	jr	00119$
                         000001A5   504 	C$common.c$87$4_0$182	= .
                                    505 	.globl	C$common.c$87$4_0$182
                                    506 ;src\common.c:87: case '.': set_vram_byte(vramAddr++,43);break;
    00002643                        507 00105$:
    00002643 D1               [12]  508 	pop	de
    00002644 D5               [16]  509 	push	de
    00002645 F8 02            [12]  510 	ldhl	sp,	#2
    00002647 3A               [ 8]  511 	ld	a, (hl-)
    00002648 2B               [ 8]  512 	dec	hl
    00002649 77               [ 8]  513 	ld	(hl), a
    0000264A F8 03            [12]  514 	ldhl	sp,	#3
    0000264C 3A               [ 8]  515 	ld	a, (hl-)
    0000264D 2B               [ 8]  516 	dec	hl
    0000264E 77               [ 8]  517 	ld	(hl), a
    0000264F 3E 2B            [ 8]  518 	ld	a, #0x2b
    00002651 CD CE 5F         [24]  519 	call	_set_vram_byte
    00002654 18 1D            [12]  520 	jr	00119$
                         000001B8   521 	C$common.c$88$4_0$182	= .
                                    522 	.globl	C$common.c$88$4_0$182
                                    523 ;src\common.c:88: case '/': set_vram_byte(vramAddr++,40);break;
    00002656                        524 00106$:
    00002656 D1               [12]  525 	pop	de
    00002657 D5               [16]  526 	push	de
    00002658 F8 02            [12]  527 	ldhl	sp,	#2
    0000265A 3A               [ 8]  528 	ld	a, (hl-)
    0000265B 2B               [ 8]  529 	dec	hl
    0000265C 77               [ 8]  530 	ld	(hl), a
    0000265D F8 03            [12]  531 	ldhl	sp,	#3
    0000265F 3A               [ 8]  532 	ld	a, (hl-)
    00002660 2B               [ 8]  533 	dec	hl
    00002661 77               [ 8]  534 	ld	(hl), a
    00002662 3E 28            [ 8]  535 	ld	a, #0x28
    00002664 CD CE 5F         [24]  536 	call	_set_vram_byte
    00002667 18 0A            [12]  537 	jr	00119$
                         000001CB   538 	C$common.c$89$4_0$182	= .
                                    539 	.globl	C$common.c$89$4_0$182
                                    540 ;src\common.c:89: default: vramAddr++; break;
    00002669                        541 00107$:
    00002669 F8 02            [12]  542 	ldhl	sp,	#2
    0000266B 3A               [ 8]  543 	ld	a, (hl-)
    0000266C 2B               [ 8]  544 	dec	hl
    0000266D 77               [ 8]  545 	ld	(hl), a
    0000266E F8 03            [12]  546 	ldhl	sp,	#3
    00002670 3A               [ 8]  547 	ld	a, (hl-)
    00002671 2B               [ 8]  548 	dec	hl
    00002672 77               [ 8]  549 	ld	(hl), a
                         000001D5   550 	C$common.c$90$2_0$180	= .
                                    551 	.globl	C$common.c$90$2_0$180
                                    552 ;src\common.c:90: }
    00002673                        553 00119$:
                         000001D5   554 	C$common.c$94$2_0$180	= .
                                    555 	.globl	C$common.c$94$2_0$180
                                    556 ;src\common.c:94: i++;
    00002673 0C               [ 4]  557 	inc	c
    00002674 C3 A2 25         [16]  558 	jp	00121$
    00002677                        559 00123$:
                         000001D9   560 	C$common.c$96$1_0$177	= .
                                    561 	.globl	C$common.c$96$1_0$177
                                    562 ;src\common.c:96: VBK_REG=0;
    00002677 3E 00            [ 8]  563 	ld	a, #0x00
    00002679 E0 4F            [12]  564 	ldh	(_VBK_REG + 0), a
                         000001DD   565 	C$common.c$98$1_0$177	= .
                                    566 	.globl	C$common.c$98$1_0$177
                                    567 ;src\common.c:98: }
    0000267B E8 04            [16]  568 	add	sp, #4
    0000267D E1               [12]  569 	pop	hl
    0000267E E8 03            [16]  570 	add	sp, #3
    00002680 E9               [ 4]  571 	jp	(hl)
                         000001E3   572 	G$fadeToBlack$0$0	= .
                                    573 	.globl	G$fadeToBlack$0$0
                         000001E3   574 	C$common.c$101$1_0$185	= .
                                    575 	.globl	C$common.c$101$1_0$185
                                    576 ;src\common.c:101: void fadeToBlack(uint8_t frames)
                                    577 ;	---------------------------------
                                    578 ; Function fadeToBlack
                                    579 ; ---------------------------------
    00002681                        580 _fadeToBlack::
    00002681 4F               [ 4]  581 	ld	c, a
                         000001E4   582 	C$common.c$103$2_0$185	= .
                                    583 	.globl	C$common.c$103$2_0$185
                                    584 ;src\common.c:103: for (uint8_t i = 0; i < 4; i++)
    00002682 06 00            [ 8]  585 	ld	b, #0x00
    00002684                        586 00108$:
    00002684 78               [ 4]  587 	ld	a, b
    00002685 D6 04            [ 8]  588 	sub	a, #0x04
    00002687 D0               [20]  589 	ret	NC
                         000001EA   590 	C$common.c$105$3_0$186	= .
                                    591 	.globl	C$common.c$105$3_0$186
                                    592 ;src\common.c:105: switch(i) 
    00002688 78               [ 4]  593 	ld	a, b
    00002689 B7               [ 4]  594 	or	a, a
    0000268A 28 0F            [12]  595 	jr	Z, 00101$
    0000268C 78               [ 4]  596 	ld	a, b
    0000268D 3D               [ 4]  597 	dec	a
    0000268E 28 15            [12]  598 	jr	Z, 00102$
    00002690 78               [ 4]  599 	ld	a,b
    00002691 FE 02            [ 8]  600 	cp	a,#0x02
    00002693 28 1A            [12]  601 	jr	Z, 00103$
    00002695 D6 03            [ 8]  602 	sub	a, #0x03
    00002697 28 20            [12]  603 	jr	Z, 00104$
    00002699 18 26            [12]  604 	jr	00105$
                         000001FD   605 	C$common.c$107$4_0$187	= .
                                    606 	.globl	C$common.c$107$4_0$187
                                    607 ;src\common.c:107: case 0: 
    0000269B                        608 00101$:
                         000001FD   609 	C$common.c$108$4_0$187	= .
                                    610 	.globl	C$common.c$108$4_0$187
                                    611 ;src\common.c:108: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    0000269B 3E E4            [ 8]  612 	ld	a, #0xe4
    0000269D E0 47            [12]  613 	ldh	(_BGP_REG + 0), a
                         00000201   614 	C$common.c$109$4_0$187	= .
                                    615 	.globl	C$common.c$109$4_0$187
                                    616 ;src\common.c:109: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    0000269F 3E E4            [ 8]  617 	ld	a, #0xe4
    000026A1 E0 48            [12]  618 	ldh	(_OBP0_REG + 0), a
                         00000205   619 	C$common.c$110$4_0$187	= .
                                    620 	.globl	C$common.c$110$4_0$187
                                    621 ;src\common.c:110: break;
    000026A3 18 1C            [12]  622 	jr	00105$
                         00000207   623 	C$common.c$111$4_0$187	= .
                                    624 	.globl	C$common.c$111$4_0$187
                                    625 ;src\common.c:111: case 1: 
    000026A5                        626 00102$:
                         00000207   627 	C$common.c$112$4_0$187	= .
                                    628 	.globl	C$common.c$112$4_0$187
                                    629 ;src\common.c:112: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    000026A5 3E F9            [ 8]  630 	ld	a, #0xf9
    000026A7 E0 47            [12]  631 	ldh	(_BGP_REG + 0), a
                         0000020B   632 	C$common.c$113$4_0$187	= .
                                    633 	.globl	C$common.c$113$4_0$187
                                    634 ;src\common.c:113: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    000026A9 3E F9            [ 8]  635 	ld	a, #0xf9
    000026AB E0 48            [12]  636 	ldh	(_OBP0_REG + 0), a
                         0000020F   637 	C$common.c$114$4_0$187	= .
                                    638 	.globl	C$common.c$114$4_0$187
                                    639 ;src\common.c:114: break;
    000026AD 18 12            [12]  640 	jr	00105$
                         00000211   641 	C$common.c$115$4_0$187	= .
                                    642 	.globl	C$common.c$115$4_0$187
                                    643 ;src\common.c:115: case 2:
    000026AF                        644 00103$:
                         00000211   645 	C$common.c$116$4_0$187	= .
                                    646 	.globl	C$common.c$116$4_0$187
                                    647 ;src\common.c:116: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026AF 3E FE            [ 8]  648 	ld	a, #0xfe
    000026B1 E0 47            [12]  649 	ldh	(_BGP_REG + 0), a
                         00000215   650 	C$common.c$117$4_0$187	= .
                                    651 	.globl	C$common.c$117$4_0$187
                                    652 ;src\common.c:117: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026B3 3E FE            [ 8]  653 	ld	a, #0xfe
    000026B5 E0 48            [12]  654 	ldh	(_OBP0_REG + 0), a
                         00000219   655 	C$common.c$118$4_0$187	= .
                                    656 	.globl	C$common.c$118$4_0$187
                                    657 ;src\common.c:118: break;
    000026B7 18 08            [12]  658 	jr	00105$
                         0000021B   659 	C$common.c$119$4_0$187	= .
                                    660 	.globl	C$common.c$119$4_0$187
                                    661 ;src\common.c:119: case 3:
    000026B9                        662 00104$:
                         0000021B   663 	C$common.c$120$4_0$187	= .
                                    664 	.globl	C$common.c$120$4_0$187
                                    665 ;src\common.c:120: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026B9 3E FF            [ 8]  666 	ld	a, #0xff
    000026BB E0 47            [12]  667 	ldh	(_BGP_REG + 0), a
                         0000021F   668 	C$common.c$121$4_0$187	= .
                                    669 	.globl	C$common.c$121$4_0$187
                                    670 ;src\common.c:121: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026BD 3E FF            [ 8]  671 	ld	a, #0xff
    000026BF E0 48            [12]  672 	ldh	(_OBP0_REG + 0), a
                         00000223   673 	C$common.c$123$3_0$186	= .
                                    674 	.globl	C$common.c$123$3_0$186
                                    675 ;src\common.c:123: }
    000026C1                        676 00105$:
                         00000223   677 	C$common.c$124$3_0$186	= .
                                    678 	.globl	C$common.c$124$3_0$186
                                    679 ;src\common.c:124: performantdelay(frames);
    000026C1 C5               [16]  680 	push	bc
    000026C2 79               [ 4]  681 	ld	a, c
    000026C3 CD 9E 24         [24]  682 	call	_performantdelay
    000026C6 C1               [12]  683 	pop	bc
                         00000229   684 	C$common.c$103$2_0$185	= .
                                    685 	.globl	C$common.c$103$2_0$185
                                    686 ;src\common.c:103: for (uint8_t i = 0; i < 4; i++)
    000026C7 04               [ 4]  687 	inc	b
                         0000022A   688 	C$common.c$126$2_0$185	= .
                                    689 	.globl	C$common.c$126$2_0$185
                                    690 ;src\common.c:126: }
                         0000022A   691 	C$common.c$126$2_0$185	= .
                                    692 	.globl	C$common.c$126$2_0$185
                         0000022A   693 	XG$fadeToBlack$0$0	= .
                                    694 	.globl	XG$fadeToBlack$0$0
    000026C8 18 BA            [12]  695 	jr	00108$
                         0000022C   696 	G$fadeFromBlack$0$0	= .
                                    697 	.globl	G$fadeFromBlack$0$0
                         0000022C   698 	C$common.c$128$2_0$190	= .
                                    699 	.globl	C$common.c$128$2_0$190
                                    700 ;src\common.c:128: void fadeFromBlack(uint8_t frames)
                                    701 ;	---------------------------------
                                    702 ; Function fadeFromBlack
                                    703 ; ---------------------------------
    000026CA                        704 _fadeFromBlack::
    000026CA 4F               [ 4]  705 	ld	c, a
                         0000022D   706 	C$common.c$130$2_0$190	= .
                                    707 	.globl	C$common.c$130$2_0$190
                                    708 ;src\common.c:130: for (uint8_t i = 0; i < 4; i++)
    000026CB 06 00            [ 8]  709 	ld	b, #0x00
    000026CD                        710 00108$:
    000026CD 78               [ 4]  711 	ld	a, b
    000026CE D6 04            [ 8]  712 	sub	a, #0x04
    000026D0 D0               [20]  713 	ret	NC
                         00000233   714 	C$common.c$132$3_0$191	= .
                                    715 	.globl	C$common.c$132$3_0$191
                                    716 ;src\common.c:132: switch(i) 
    000026D1 78               [ 4]  717 	ld	a, b
    000026D2 B7               [ 4]  718 	or	a, a
    000026D3 28 0F            [12]  719 	jr	Z, 00101$
    000026D5 78               [ 4]  720 	ld	a, b
    000026D6 3D               [ 4]  721 	dec	a
    000026D7 28 15            [12]  722 	jr	Z, 00102$
    000026D9 78               [ 4]  723 	ld	a,b
    000026DA FE 02            [ 8]  724 	cp	a,#0x02
    000026DC 28 1A            [12]  725 	jr	Z, 00103$
    000026DE D6 03            [ 8]  726 	sub	a, #0x03
    000026E0 28 20            [12]  727 	jr	Z, 00104$
    000026E2 18 26            [12]  728 	jr	00105$
                         00000246   729 	C$common.c$134$4_0$192	= .
                                    730 	.globl	C$common.c$134$4_0$192
                                    731 ;src\common.c:134: case 0: 
    000026E4                        732 00101$:
                         00000246   733 	C$common.c$135$4_0$192	= .
                                    734 	.globl	C$common.c$135$4_0$192
                                    735 ;src\common.c:135: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026E4 3E FE            [ 8]  736 	ld	a, #0xfe
    000026E6 E0 47            [12]  737 	ldh	(_BGP_REG + 0), a
                         0000024A   738 	C$common.c$136$4_0$192	= .
                                    739 	.globl	C$common.c$136$4_0$192
                                    740 ;src\common.c:136: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    000026E8 3E FE            [ 8]  741 	ld	a, #0xfe
    000026EA E0 48            [12]  742 	ldh	(_OBP0_REG + 0), a
                         0000024E   743 	C$common.c$137$4_0$192	= .
                                    744 	.globl	C$common.c$137$4_0$192
                                    745 ;src\common.c:137: break;
    000026EC 18 1C            [12]  746 	jr	00105$
                         00000250   747 	C$common.c$138$4_0$192	= .
                                    748 	.globl	C$common.c$138$4_0$192
                                    749 ;src\common.c:138: case 1: 
    000026EE                        750 00102$:
                         00000250   751 	C$common.c$139$4_0$192	= .
                                    752 	.globl	C$common.c$139$4_0$192
                                    753 ;src\common.c:139: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    000026EE 3E F9            [ 8]  754 	ld	a, #0xf9
    000026F0 E0 47            [12]  755 	ldh	(_BGP_REG + 0), a
                         00000254   756 	C$common.c$140$4_0$192	= .
                                    757 	.globl	C$common.c$140$4_0$192
                                    758 ;src\common.c:140: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    000026F2 3E F9            [ 8]  759 	ld	a, #0xf9
    000026F4 E0 48            [12]  760 	ldh	(_OBP0_REG + 0), a
                         00000258   761 	C$common.c$141$4_0$192	= .
                                    762 	.globl	C$common.c$141$4_0$192
                                    763 ;src\common.c:141: break;
    000026F6 18 12            [12]  764 	jr	00105$
                         0000025A   765 	C$common.c$142$4_0$192	= .
                                    766 	.globl	C$common.c$142$4_0$192
                                    767 ;src\common.c:142: case 2:
    000026F8                        768 00103$:
                         0000025A   769 	C$common.c$143$4_0$192	= .
                                    770 	.globl	C$common.c$143$4_0$192
                                    771 ;src\common.c:143: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    000026F8 3E E5            [ 8]  772 	ld	a, #0xe5
    000026FA E0 47            [12]  773 	ldh	(_BGP_REG + 0), a
                         0000025E   774 	C$common.c$144$4_0$192	= .
                                    775 	.globl	C$common.c$144$4_0$192
                                    776 ;src\common.c:144: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    000026FC 3E E5            [ 8]  777 	ld	a, #0xe5
    000026FE E0 48            [12]  778 	ldh	(_OBP0_REG + 0), a
                         00000262   779 	C$common.c$145$4_0$192	= .
                                    780 	.globl	C$common.c$145$4_0$192
                                    781 ;src\common.c:145: break;
    00002700 18 08            [12]  782 	jr	00105$
                         00000264   783 	C$common.c$146$4_0$192	= .
                                    784 	.globl	C$common.c$146$4_0$192
                                    785 ;src\common.c:146: case 3:
    00002702                        786 00104$:
                         00000264   787 	C$common.c$147$4_0$192	= .
                                    788 	.globl	C$common.c$147$4_0$192
                                    789 ;src\common.c:147: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00002702 3E E4            [ 8]  790 	ld	a, #0xe4
    00002704 E0 47            [12]  791 	ldh	(_BGP_REG + 0), a
                         00000268   792 	C$common.c$148$4_0$192	= .
                                    793 	.globl	C$common.c$148$4_0$192
                                    794 ;src\common.c:148: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00002706 3E E4            [ 8]  795 	ld	a, #0xe4
    00002708 E0 48            [12]  796 	ldh	(_OBP0_REG + 0), a
                         0000026C   797 	C$common.c$150$3_0$191	= .
                                    798 	.globl	C$common.c$150$3_0$191
                                    799 ;src\common.c:150: }
    0000270A                        800 00105$:
                         0000026C   801 	C$common.c$151$3_0$191	= .
                                    802 	.globl	C$common.c$151$3_0$191
                                    803 ;src\common.c:151: performantdelay(frames);
    0000270A C5               [16]  804 	push	bc
    0000270B 79               [ 4]  805 	ld	a, c
    0000270C CD 9E 24         [24]  806 	call	_performantdelay
    0000270F C1               [12]  807 	pop	bc
                         00000272   808 	C$common.c$130$2_0$190	= .
                                    809 	.globl	C$common.c$130$2_0$190
                                    810 ;src\common.c:130: for (uint8_t i = 0; i < 4; i++)
    00002710 04               [ 4]  811 	inc	b
                         00000273   812 	C$common.c$153$2_0$190	= .
                                    813 	.globl	C$common.c$153$2_0$190
                                    814 ;src\common.c:153: }
                         00000273   815 	C$common.c$153$2_0$190	= .
                                    816 	.globl	C$common.c$153$2_0$190
                         00000273   817 	XG$fadeFromBlack$0$0	= .
                                    818 	.globl	XG$fadeFromBlack$0$0
    00002711 18 BA            [12]  819 	jr	00108$
                         00000275   820 	G$fadeToWhite$0$0	= .
                                    821 	.globl	G$fadeToWhite$0$0
                         00000275   822 	C$common.c$155$2_0$195	= .
                                    823 	.globl	C$common.c$155$2_0$195
                                    824 ;src\common.c:155: void fadeToWhite(uint8_t frames)
                                    825 ;	---------------------------------
                                    826 ; Function fadeToWhite
                                    827 ; ---------------------------------
    00002713                        828 _fadeToWhite::
    00002713 4F               [ 4]  829 	ld	c, a
                         00000276   830 	C$common.c$157$2_0$195	= .
                                    831 	.globl	C$common.c$157$2_0$195
                                    832 ;src\common.c:157: for (uint8_t i = 0; i < 5; i++)
    00002714 06 00            [ 8]  833 	ld	b, #0x00
    00002716                        834 00109$:
    00002716 78               [ 4]  835 	ld	a, b
    00002717 D6 05            [ 8]  836 	sub	a, #0x05
    00002719 D0               [20]  837 	ret	NC
                         0000027C   838 	C$common.c$159$3_0$196	= .
                                    839 	.globl	C$common.c$159$3_0$196
                                    840 ;src\common.c:159: switch(i) 
    0000271A 58               [ 4]  841 	ld	e, b
    0000271B 16 00            [ 8]  842 	ld	d, #0x00
    0000271D 21 23 27         [12]  843 	ld	hl, #00130$
    00002720 19               [ 8]  844 	add	hl, de
    00002721 19               [ 8]  845 	add	hl, de
                         00000284   846 	C$common.c$161$4_0$197	= .
                                    847 	.globl	C$common.c$161$4_0$197
                                    848 ;src\common.c:161: case 0: 
    00002722 E9               [ 4]  849 	jp	(hl)
    00002723                        850 00130$:
    00002723 18 08            [12]  851 	jr	00101$
    00002725 18 10            [12]  852 	jr	00102$
    00002727 18 18            [12]  853 	jr	00103$
    00002729 18 20            [12]  854 	jr	00104$
    0000272B 18 28            [12]  855 	jr	00105$
    0000272D                        856 00101$:
                         0000028F   857 	C$common.c$162$4_0$197	= .
                                    858 	.globl	C$common.c$162$4_0$197
                                    859 ;src\common.c:162: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    0000272D 3E E4            [ 8]  860 	ld	a, #0xe4
    0000272F E0 47            [12]  861 	ldh	(_BGP_REG + 0), a
                         00000293   862 	C$common.c$163$4_0$197	= .
                                    863 	.globl	C$common.c$163$4_0$197
                                    864 ;src\common.c:163: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00002731 3E E4            [ 8]  865 	ld	a, #0xe4
    00002733 E0 48            [12]  866 	ldh	(_OBP0_REG + 0), a
                         00000297   867 	C$common.c$164$4_0$197	= .
                                    868 	.globl	C$common.c$164$4_0$197
                                    869 ;src\common.c:164: break;
    00002735 18 24            [12]  870 	jr	00106$
                         00000299   871 	C$common.c$165$4_0$197	= .
                                    872 	.globl	C$common.c$165$4_0$197
                                    873 ;src\common.c:165: case 1: 
    00002737                        874 00102$:
                         00000299   875 	C$common.c$166$4_0$197	= .
                                    876 	.globl	C$common.c$166$4_0$197
                                    877 ;src\common.c:166: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00002737 3E D4            [ 8]  878 	ld	a, #0xd4
    00002739 E0 47            [12]  879 	ldh	(_BGP_REG + 0), a
                         0000029D   880 	C$common.c$167$4_0$197	= .
                                    881 	.globl	C$common.c$167$4_0$197
                                    882 ;src\common.c:167: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    0000273B 3E D5            [ 8]  883 	ld	a, #0xd5
    0000273D E0 48            [12]  884 	ldh	(_OBP0_REG + 0), a
                         000002A1   885 	C$common.c$168$4_0$197	= .
                                    886 	.globl	C$common.c$168$4_0$197
                                    887 ;src\common.c:168: break;
    0000273F 18 1A            [12]  888 	jr	00106$
                         000002A3   889 	C$common.c$169$4_0$197	= .
                                    890 	.globl	C$common.c$169$4_0$197
                                    891 ;src\common.c:169: case 2:
    00002741                        892 00103$:
                         000002A3   893 	C$common.c$170$4_0$197	= .
                                    894 	.globl	C$common.c$170$4_0$197
                                    895 ;src\common.c:170: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00002741 3E 90            [ 8]  896 	ld	a, #0x90
    00002743 E0 47            [12]  897 	ldh	(_BGP_REG + 0), a
                         000002A7   898 	C$common.c$171$4_0$197	= .
                                    899 	.globl	C$common.c$171$4_0$197
                                    900 ;src\common.c:171: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00002745 3E 90            [ 8]  901 	ld	a, #0x90
    00002747 E0 48            [12]  902 	ldh	(_OBP0_REG + 0), a
                         000002AB   903 	C$common.c$172$4_0$197	= .
                                    904 	.globl	C$common.c$172$4_0$197
                                    905 ;src\common.c:172: break;
    00002749 18 10            [12]  906 	jr	00106$
                         000002AD   907 	C$common.c$173$4_0$197	= .
                                    908 	.globl	C$common.c$173$4_0$197
                                    909 ;src\common.c:173: case 3:
    0000274B                        910 00104$:
                         000002AD   911 	C$common.c$174$4_0$197	= .
                                    912 	.globl	C$common.c$174$4_0$197
                                    913 ;src\common.c:174: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    0000274B 3E 40            [ 8]  914 	ld	a, #0x40
    0000274D E0 47            [12]  915 	ldh	(_BGP_REG + 0), a
                         000002B1   916 	C$common.c$175$4_0$197	= .
                                    917 	.globl	C$common.c$175$4_0$197
                                    918 ;src\common.c:175: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    0000274F 3E 40            [ 8]  919 	ld	a, #0x40
    00002751 E0 48            [12]  920 	ldh	(_OBP0_REG + 0), a
                         000002B5   921 	C$common.c$176$4_0$197	= .
                                    922 	.globl	C$common.c$176$4_0$197
                                    923 ;src\common.c:176: break;
    00002753 18 06            [12]  924 	jr	00106$
                         000002B7   925 	C$common.c$177$4_0$197	= .
                                    926 	.globl	C$common.c$177$4_0$197
                                    927 ;src\common.c:177: case 4:
    00002755                        928 00105$:
                         000002B7   929 	C$common.c$178$4_0$197	= .
                                    930 	.globl	C$common.c$178$4_0$197
                                    931 ;src\common.c:178: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
    00002755 AF               [ 4]  932 	xor	a, a
    00002756 E0 47            [12]  933 	ldh	(_BGP_REG + 0), a
                         000002BA   934 	C$common.c$179$4_0$197	= .
                                    935 	.globl	C$common.c$179$4_0$197
                                    936 ;src\common.c:179: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
    00002758 AF               [ 4]  937 	xor	a, a
    00002759 E0 48            [12]  938 	ldh	(_OBP0_REG + 0), a
                         000002BD   939 	C$common.c$181$3_0$196	= .
                                    940 	.globl	C$common.c$181$3_0$196
                                    941 ;src\common.c:181: }
    0000275B                        942 00106$:
                         000002BD   943 	C$common.c$182$3_0$196	= .
                                    944 	.globl	C$common.c$182$3_0$196
                                    945 ;src\common.c:182: performantdelay(frames);
    0000275B C5               [16]  946 	push	bc
    0000275C 79               [ 4]  947 	ld	a, c
    0000275D CD 9E 24         [24]  948 	call	_performantdelay
    00002760 C1               [12]  949 	pop	bc
                         000002C3   950 	C$common.c$157$2_0$195	= .
                                    951 	.globl	C$common.c$157$2_0$195
                                    952 ;src\common.c:157: for (uint8_t i = 0; i < 5; i++)
    00002761 04               [ 4]  953 	inc	b
                         000002C4   954 	C$common.c$184$2_0$195	= .
                                    955 	.globl	C$common.c$184$2_0$195
                                    956 ;src\common.c:184: }
                         000002C4   957 	C$common.c$184$2_0$195	= .
                                    958 	.globl	C$common.c$184$2_0$195
                         000002C4   959 	XG$fadeToWhite$0$0	= .
                                    960 	.globl	XG$fadeToWhite$0$0
    00002762 18 B2            [12]  961 	jr	00109$
                         000002C6   962 	G$fadeFromWhite$0$0	= .
                                    963 	.globl	G$fadeFromWhite$0$0
                         000002C6   964 	C$common.c$186$2_0$200	= .
                                    965 	.globl	C$common.c$186$2_0$200
                                    966 ;src\common.c:186: void fadeFromWhite(uint8_t frames)
                                    967 ;	---------------------------------
                                    968 ; Function fadeFromWhite
                                    969 ; ---------------------------------
    00002764                        970 _fadeFromWhite::
    00002764 4F               [ 4]  971 	ld	c, a
                         000002C7   972 	C$common.c$188$2_0$200	= .
                                    973 	.globl	C$common.c$188$2_0$200
                                    974 ;src\common.c:188: for (uint8_t i = 0; i < 4; i++)
    00002765 06 00            [ 8]  975 	ld	b, #0x00
    00002767                        976 00108$:
    00002767 78               [ 4]  977 	ld	a, b
    00002768 D6 04            [ 8]  978 	sub	a, #0x04
    0000276A D0               [20]  979 	ret	NC
                         000002CD   980 	C$common.c$190$3_0$201	= .
                                    981 	.globl	C$common.c$190$3_0$201
                                    982 ;src\common.c:190: switch(i) 
    0000276B 78               [ 4]  983 	ld	a, b
    0000276C B7               [ 4]  984 	or	a, a
    0000276D 28 0F            [12]  985 	jr	Z, 00101$
    0000276F 78               [ 4]  986 	ld	a, b
    00002770 3D               [ 4]  987 	dec	a
    00002771 28 15            [12]  988 	jr	Z, 00102$
    00002773 78               [ 4]  989 	ld	a,b
    00002774 FE 02            [ 8]  990 	cp	a,#0x02
    00002776 28 1A            [12]  991 	jr	Z, 00103$
    00002778 D6 03            [ 8]  992 	sub	a, #0x03
    0000277A 28 20            [12]  993 	jr	Z, 00104$
    0000277C 18 26            [12]  994 	jr	00105$
                         000002E0   995 	C$common.c$192$4_0$202	= .
                                    996 	.globl	C$common.c$192$4_0$202
                                    997 ;src\common.c:192: case 0: 
    0000277E                        998 00101$:
                         000002E0   999 	C$common.c$193$4_0$202	= .
                                   1000 	.globl	C$common.c$193$4_0$202
                                   1001 ;src\common.c:193: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    0000277E 3E 40            [ 8] 1002 	ld	a, #0x40
    00002780 E0 47            [12] 1003 	ldh	(_BGP_REG + 0), a
                         000002E4  1004 	C$common.c$194$4_0$202	= .
                                   1005 	.globl	C$common.c$194$4_0$202
                                   1006 ;src\common.c:194: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    00002782 3E 40            [ 8] 1007 	ld	a, #0x40
    00002784 E0 48            [12] 1008 	ldh	(_OBP0_REG + 0), a
                         000002E8  1009 	C$common.c$195$4_0$202	= .
                                   1010 	.globl	C$common.c$195$4_0$202
                                   1011 ;src\common.c:195: break;
    00002786 18 1C            [12] 1012 	jr	00105$
                         000002EA  1013 	C$common.c$196$4_0$202	= .
                                   1014 	.globl	C$common.c$196$4_0$202
                                   1015 ;src\common.c:196: case 1: 
    00002788                       1016 00102$:
                         000002EA  1017 	C$common.c$197$4_0$202	= .
                                   1018 	.globl	C$common.c$197$4_0$202
                                   1019 ;src\common.c:197: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00002788 3E 90            [ 8] 1020 	ld	a, #0x90
    0000278A E0 47            [12] 1021 	ldh	(_BGP_REG + 0), a
                         000002EE  1022 	C$common.c$198$4_0$202	= .
                                   1023 	.globl	C$common.c$198$4_0$202
                                   1024 ;src\common.c:198: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    0000278C 3E 90            [ 8] 1025 	ld	a, #0x90
    0000278E E0 48            [12] 1026 	ldh	(_OBP0_REG + 0), a
                         000002F2  1027 	C$common.c$199$4_0$202	= .
                                   1028 	.globl	C$common.c$199$4_0$202
                                   1029 ;src\common.c:199: break;
    00002790 18 12            [12] 1030 	jr	00105$
                         000002F4  1031 	C$common.c$200$4_0$202	= .
                                   1032 	.globl	C$common.c$200$4_0$202
                                   1033 ;src\common.c:200: case 2:
    00002792                       1034 00103$:
                         000002F4  1035 	C$common.c$201$4_0$202	= .
                                   1036 	.globl	C$common.c$201$4_0$202
                                   1037 ;src\common.c:201: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00002792 3E D4            [ 8] 1038 	ld	a, #0xd4
    00002794 E0 47            [12] 1039 	ldh	(_BGP_REG + 0), a
                         000002F8  1040 	C$common.c$202$4_0$202	= .
                                   1041 	.globl	C$common.c$202$4_0$202
                                   1042 ;src\common.c:202: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00002796 3E D5            [ 8] 1043 	ld	a, #0xd5
    00002798 E0 48            [12] 1044 	ldh	(_OBP0_REG + 0), a
                         000002FC  1045 	C$common.c$203$4_0$202	= .
                                   1046 	.globl	C$common.c$203$4_0$202
                                   1047 ;src\common.c:203: break;
    0000279A 18 08            [12] 1048 	jr	00105$
                         000002FE  1049 	C$common.c$204$4_0$202	= .
                                   1050 	.globl	C$common.c$204$4_0$202
                                   1051 ;src\common.c:204: case 3:
    0000279C                       1052 00104$:
                         000002FE  1053 	C$common.c$205$4_0$202	= .
                                   1054 	.globl	C$common.c$205$4_0$202
                                   1055 ;src\common.c:205: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    0000279C 3E E4            [ 8] 1056 	ld	a, #0xe4
    0000279E E0 47            [12] 1057 	ldh	(_BGP_REG + 0), a
                         00000302  1058 	C$common.c$206$4_0$202	= .
                                   1059 	.globl	C$common.c$206$4_0$202
                                   1060 ;src\common.c:206: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    000027A0 3E E4            [ 8] 1061 	ld	a, #0xe4
    000027A2 E0 48            [12] 1062 	ldh	(_OBP0_REG + 0), a
                         00000306  1063 	C$common.c$208$3_0$201	= .
                                   1064 	.globl	C$common.c$208$3_0$201
                                   1065 ;src\common.c:208: }
    000027A4                       1066 00105$:
                         00000306  1067 	C$common.c$209$3_0$201	= .
                                   1068 	.globl	C$common.c$209$3_0$201
                                   1069 ;src\common.c:209: performantdelay(frames);
    000027A4 C5               [16] 1070 	push	bc
    000027A5 79               [ 4] 1071 	ld	a, c
    000027A6 CD 9E 24         [24] 1072 	call	_performantdelay
    000027A9 C1               [12] 1073 	pop	bc
                         0000030C  1074 	C$common.c$188$2_0$200	= .
                                   1075 	.globl	C$common.c$188$2_0$200
                                   1076 ;src\common.c:188: for (uint8_t i = 0; i < 4; i++)
    000027AA 04               [ 4] 1077 	inc	b
                         0000030D  1078 	C$common.c$211$2_0$200	= .
                                   1079 	.globl	C$common.c$211$2_0$200
                                   1080 ;src\common.c:211: }
                         0000030D  1081 	C$common.c$211$2_0$200	= .
                                   1082 	.globl	C$common.c$211$2_0$200
                         0000030D  1083 	XG$fadeFromWhite$0$0	= .
                                   1084 	.globl	XG$fadeFromWhite$0$0
    000027AB 18 BA            [12] 1085 	jr	00108$
                         0000030F  1086 	G$InvertColor$0$0	= .
                                   1087 	.globl	G$InvertColor$0$0
                         0000030F  1088 	C$common.c$213$2_0$204	= .
                                   1089 	.globl	C$common.c$213$2_0$204
                                   1090 ;src\common.c:213: void InvertColor(void)
                                   1091 ;	---------------------------------
                                   1092 ; Function InvertColor
                                   1093 ; ---------------------------------
    000027AD                       1094 _InvertColor::
                         0000030F  1095 	C$common.c$215$1_0$204	= .
                                   1096 	.globl	C$common.c$215$1_0$204
                                   1097 ;src\common.c:215: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
    000027AD 3E 1B            [ 8] 1098 	ld	a, #0x1b
    000027AF E0 47            [12] 1099 	ldh	(_BGP_REG + 0), a
                         00000313  1100 	C$common.c$216$1_0$204	= .
                                   1101 	.globl	C$common.c$216$1_0$204
                                   1102 ;src\common.c:216: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
    000027B1 3E 1B            [ 8] 1103 	ld	a, #0x1b
    000027B3 E0 48            [12] 1104 	ldh	(_OBP0_REG + 0), a
                         00000317  1105 	C$common.c$217$1_0$204	= .
                                   1106 	.globl	C$common.c$217$1_0$204
                                   1107 ;src\common.c:217: }
                         00000317  1108 	C$common.c$217$1_0$204	= .
                                   1109 	.globl	C$common.c$217$1_0$204
                         00000317  1110 	XG$InvertColor$0$0	= .
                                   1111 	.globl	XG$InvertColor$0$0
    000027B5 C9               [16] 1112 	ret
                         00000318  1113 	G$ResetColor$0$0	= .
                                   1114 	.globl	G$ResetColor$0$0
                         00000318  1115 	C$common.c$219$1_0$206	= .
                                   1116 	.globl	C$common.c$219$1_0$206
                                   1117 ;src\common.c:219: void ResetColor(void)
                                   1118 ;	---------------------------------
                                   1119 ; Function ResetColor
                                   1120 ; ---------------------------------
    000027B6                       1121 _ResetColor::
                         00000318  1122 	C$common.c$221$1_0$206	= .
                                   1123 	.globl	C$common.c$221$1_0$206
                                   1124 ;src\common.c:221: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    000027B6 3E E4            [ 8] 1125 	ld	a, #0xe4
    000027B8 E0 47            [12] 1126 	ldh	(_BGP_REG + 0), a
                         0000031C  1127 	C$common.c$222$1_0$206	= .
                                   1128 	.globl	C$common.c$222$1_0$206
                                   1129 ;src\common.c:222: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    000027BA 3E E4            [ 8] 1130 	ld	a, #0xe4
    000027BC E0 48            [12] 1131 	ldh	(_OBP0_REG + 0), a
                         00000320  1132 	C$common.c$223$1_0$206	= .
                                   1133 	.globl	C$common.c$223$1_0$206
                                   1134 ;src\common.c:223: }
                         00000320  1135 	C$common.c$223$1_0$206	= .
                                   1136 	.globl	C$common.c$223$1_0$206
                         00000320  1137 	XG$ResetColor$0$0	= .
                                   1138 	.globl	XG$ResetColor$0$0
    000027BE C9               [16] 1139 	ret
                         00000321  1140 	G$RandomNumber$0$0	= .
                                   1141 	.globl	G$RandomNumber$0$0
                         00000321  1142 	C$common.c$225$1_0$208	= .
                                   1143 	.globl	C$common.c$225$1_0$208
                                   1144 ;src\common.c:225: uint8_t RandomNumber(uint8_t min, uint8_t max)
                                   1145 ;	---------------------------------
                                   1146 ; Function RandomNumber
                                   1147 ; ---------------------------------
    000027BF                       1148 _RandomNumber::
    000027BF 6F               [ 4] 1149 	ld	l, a
                                   1150 ;	spillPairReg hl
                                   1151 ;	spillPairReg hl
                         00000322  1152 	C$common.c$228$1_0$208	= .
                                   1153 	.globl	C$common.c$228$1_0$208
                                   1154 ;src\common.c:228: return min + (DIV_REG % (max - min)); 
    000027C0 16 00            [ 8] 1155 	ld	d, #0x00
    000027C2 4D               [ 4] 1156 	ld	c, l
    000027C3 06 00            [ 8] 1157 	ld	b, #0x00
    000027C5 7B               [ 4] 1158 	ld	a, e
    000027C6 91               [ 4] 1159 	sub	a, c
    000027C7 4F               [ 4] 1160 	ld	c, a
    000027C8 7A               [ 4] 1161 	ld	a, d
    000027C9 98               [ 4] 1162 	sbc	a, b
    000027CA 47               [ 4] 1163 	ld	b, a
    000027CB F0 04            [12] 1164 	ldh	a, (_DIV_REG + 0)
    000027CD 5F               [ 4] 1165 	ld	e, a
    000027CE 16 00            [ 8] 1166 	ld	d, #0x00
    000027D0 E5               [16] 1167 	push	hl
    000027D1 CD 71 61         [24] 1168 	call	__modsint
    000027D4 E1               [12] 1169 	pop	hl
    000027D5 79               [ 4] 1170 	ld	a, c
    000027D6 85               [ 4] 1171 	add	a, l
                         00000339  1172 	C$common.c$229$1_0$208	= .
                                   1173 	.globl	C$common.c$229$1_0$208
                                   1174 ;src\common.c:229: }
                         00000339  1175 	C$common.c$229$1_0$208	= .
                                   1176 	.globl	C$common.c$229$1_0$208
                         00000339  1177 	XG$RandomNumber$0$0	= .
                                   1178 	.globl	XG$RandomNumber$0$0
    000027D7 C9               [16] 1179 	ret
                         0000033A  1180 	G$DrawWindow$0$0	= .
                                   1181 	.globl	G$DrawWindow$0$0
                         0000033A  1182 	C$common.c$231$1_0$210	= .
                                   1183 	.globl	C$common.c$231$1_0$210
                                   1184 ;src\common.c:231: void DrawWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height, BOOLEAN bkg)
                                   1185 ;	---------------------------------
                                   1186 ; Function DrawWindow
                                   1187 ; ---------------------------------
    000027D8                       1188 _DrawWindow::
    000027D8 E8 F4            [16] 1189 	add	sp, #-12
    000027DA F8 0A            [12] 1190 	ldhl	sp,	#10
    000027DC 32               [ 8] 1191 	ld	(hl-), a
    000027DD 73               [ 8] 1192 	ld	(hl), e
                         00000340  1193 	C$common.c$236$1_0$210	= .
                                   1194 	.globl	C$common.c$236$1_0$210
                                   1195 ;src\common.c:236: if (bkg)
    000027DE F8 10            [12] 1196 	ldhl	sp,	#16
    000027E0 7E               [ 8] 1197 	ld	a, (hl)
    000027E1 B7               [ 4] 1198 	or	a, a
    000027E2 28 0E            [12] 1199 	jr	Z, 00102$
                         00000346  1200 	C$common.c$238$2_0$211	= .
                                   1201 	.globl	C$common.c$238$2_0$211
                                   1202 ;src\common.c:238: vramAddr = get_bkg_xy_addr(x,y); 
    000027E4 F8 09            [12] 1203 	ldhl	sp,	#9
    000027E6 2A               [ 8] 1204 	ld	a, (hl+)
    000027E7 57               [ 4] 1205 	ld	d, a
    000027E8 5E               [ 8] 1206 	ld	e, (hl)
    000027E9 D5               [16] 1207 	push	de
    000027EA CD 17 60         [24] 1208 	call	_get_bkg_xy_addr
    000027ED E1               [12] 1209 	pop	hl
    000027EE 4B               [ 4] 1210 	ld	c, e
    000027EF 42               [ 4] 1211 	ld	b, d
    000027F0 18 0C            [12] 1212 	jr	00103$
    000027F2                       1213 00102$:
                         00000354  1214 	C$common.c$241$2_0$212	= .
                                   1215 	.globl	C$common.c$241$2_0$212
                                   1216 ;src\common.c:241: vramAddr = get_win_xy_addr(x,y);
    000027F2 F8 09            [12] 1217 	ldhl	sp,	#9
    000027F4 2A               [ 8] 1218 	ld	a, (hl+)
    000027F5 57               [ 4] 1219 	ld	d, a
    000027F6 5E               [ 8] 1220 	ld	e, (hl)
    000027F7 D5               [16] 1221 	push	de
    000027F8 CD 0F 60         [24] 1222 	call	_get_win_xy_addr
    000027FB E1               [12] 1223 	pop	hl
    000027FC 4B               [ 4] 1224 	ld	c, e
    000027FD 42               [ 4] 1225 	ld	b, d
    000027FE                       1226 00103$:
                         00000360  1227 	C$common.c$243$1_0$210	= .
                                   1228 	.globl	C$common.c$243$1_0$210
                                   1229 ;src\common.c:243: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
    000027FE 59               [ 4] 1230 	ld	e, c
    000027FF 50               [ 4] 1231 	ld	d, b
    00002800 03               [ 8] 1232 	inc	bc
    00002801 3E 2D            [ 8] 1233 	ld	a, #0x2d
    00002803 CD CE 5F         [24] 1234 	call	_set_vram_byte
                         00000368  1235 	C$common.c$244$1_0$210	= .
                                   1236 	.globl	C$common.c$244$1_0$210
                                   1237 ;src\common.c:244: for (uint8_t i = 0; i < width - 2; i++)
    00002806 F8 0B            [12] 1238 	ldhl	sp,	#11
    00002808 36 00            [12] 1239 	ld	(hl), #0x00
    0000280A                       1240 00115$:
    0000280A F8 0E            [12] 1241 	ldhl	sp,	#14
    0000280C 7E               [ 8] 1242 	ld	a, (hl)
    0000280D F8 07            [12] 1243 	ldhl	sp,	#7
    0000280F 22               [ 8] 1244 	ld	(hl+), a
    00002810 AF               [ 4] 1245 	xor	a, a
    00002811 32               [ 8] 1246 	ld	(hl-), a
    00002812 2A               [ 8] 1247 	ld	a, (hl+)
    00002813 5F               [ 4] 1248 	ld	e, a
    00002814 56               [ 8] 1249 	ld	d, (hl)
    00002815 21 02 00         [12] 1250 	ld	hl, #0x0002
    00002818 7B               [ 4] 1251 	ld	a, e
    00002819 95               [ 4] 1252 	sub	a, l
    0000281A 5F               [ 4] 1253 	ld	e, a
    0000281B 7A               [ 4] 1254 	ld	a, d
    0000281C 9C               [ 4] 1255 	sbc	a, h
    0000281D F8 01            [12] 1256 	ldhl	sp,	#1
    0000281F 32               [ 8] 1257 	ld	(hl-), a
    00002820 73               [ 8] 1258 	ld	(hl), e
    00002821 F8 0B            [12] 1259 	ldhl	sp,	#11
    00002823 7E               [ 8] 1260 	ld	a, (hl)
    00002824 F8 07            [12] 1261 	ldhl	sp,	#7
    00002826 22               [ 8] 1262 	ld	(hl+), a
    00002827 36 00            [12] 1263 	ld	(hl), #0x00
    00002829 F8 07            [12] 1264 	ldhl	sp,	#7
    0000282B 5D               [ 4] 1265 	ld	e, l
    0000282C 54               [ 4] 1266 	ld	d, h
    0000282D F8 00            [12] 1267 	ldhl	sp,	#0
    0000282F 1A               [ 8] 1268 	ld	a, (de)
    00002830 13               [ 8] 1269 	inc	de
    00002831 96               [ 8] 1270 	sub	a, (hl)
    00002832 23               [ 8] 1271 	inc	hl
    00002833 1A               [ 8] 1272 	ld	a, (de)
    00002834 9E               [ 8] 1273 	sbc	a, (hl)
    00002835 1A               [ 8] 1274 	ld	a, (de)
    00002836 57               [ 4] 1275 	ld	d, a
    00002837 CB 7E            [12] 1276 	bit	7, (hl)
    00002839 28 07            [12] 1277 	jr	Z, 00209$
    0000283B CB 7A            [ 8] 1278 	bit	7, d
    0000283D 20 08            [12] 1279 	jr	NZ, 00210$
    0000283F BF               [ 4] 1280 	cp	a, a
    00002840 18 05            [12] 1281 	jr	00210$
    00002842                       1282 00209$:
    00002842 CB 7A            [ 8] 1283 	bit	7, d
    00002844 28 01            [12] 1284 	jr	Z, 00210$
    00002846 37               [ 4] 1285 	scf
    00002847                       1286 00210$:
    00002847 30 0D            [12] 1287 	jr	NC, 00104$
                         000003AB  1288 	C$common.c$246$3_0$214	= .
                                   1289 	.globl	C$common.c$246$3_0$214
                                   1290 ;src\common.c:246: set_vram_byte(vramAddr++,304u);         // TOP SIDE
    00002849 59               [ 4] 1291 	ld	e, c
    0000284A 50               [ 4] 1292 	ld	d, b
    0000284B 03               [ 8] 1293 	inc	bc
    0000284C 3E 30            [ 8] 1294 	ld	a, #0x30
    0000284E CD CE 5F         [24] 1295 	call	_set_vram_byte
                         000003B3  1296 	C$common.c$244$2_0$213	= .
                                   1297 	.globl	C$common.c$244$2_0$213
                                   1298 ;src\common.c:244: for (uint8_t i = 0; i < width - 2; i++)
    00002851 F8 0B            [12] 1299 	ldhl	sp,	#11
    00002853 34               [12] 1300 	inc	(hl)
    00002854 18 B4            [12] 1301 	jr	00115$
    00002856                       1302 00104$:
                         000003B8  1303 	C$common.c$248$1_0$210	= .
                                   1304 	.globl	C$common.c$248$1_0$210
                                   1305 ;src\common.c:248: set_vram_byte(vramAddr++,306u);             // TOP RIGHT CORNER
    00002856 3E 32            [ 8] 1306 	ld	a, #0x32
    00002858 59               [ 4] 1307 	ld	e, c
    00002859 50               [ 4] 1308 	ld	d, b
    0000285A CD CE 5F         [24] 1309 	call	_set_vram_byte
                         000003BF  1310 	C$common.c$252$1_0$210	= .
                                   1311 	.globl	C$common.c$252$1_0$210
                                   1312 ;src\common.c:252: vramAddr = get_bkg_xy_addr(x,y+1); 
    0000285D F8 09            [12] 1313 	ldhl	sp,	#9
    0000285F 7E               [ 8] 1314 	ld	a, (hl)
    00002860 F8 02            [12] 1315 	ldhl	sp,	#2
    00002862 77               [ 8] 1316 	ld	(hl), a
    00002863 46               [ 8] 1317 	ld	b, (hl)
    00002864 04               [ 4] 1318 	inc	b
                         000003C7  1319 	C$common.c$250$1_0$210	= .
                                   1320 	.globl	C$common.c$250$1_0$210
                                   1321 ;src\common.c:250: if (bkg) 
    00002865 F8 10            [12] 1322 	ldhl	sp,	#16
    00002867 7E               [ 8] 1323 	ld	a, (hl)
    00002868 B7               [ 4] 1324 	or	a, a
    00002869 28 12            [12] 1325 	jr	Z, 00106$
                         000003CD  1326 	C$common.c$252$2_0$215	= .
                                   1327 	.globl	C$common.c$252$2_0$215
                                   1328 ;src\common.c:252: vramAddr = get_bkg_xy_addr(x,y+1); 
    0000286B C5               [16] 1329 	push	bc
    0000286C 33               [ 8] 1330 	inc	sp
    0000286D F8 0B            [12] 1331 	ldhl	sp,	#11
    0000286F 7E               [ 8] 1332 	ld	a, (hl)
    00002870 F5               [16] 1333 	push	af
    00002871 33               [ 8] 1334 	inc	sp
    00002872 CD 17 60         [24] 1335 	call	_get_bkg_xy_addr
    00002875 E1               [12] 1336 	pop	hl
    00002876 F8 03            [12] 1337 	ldhl	sp,	#3
    00002878 7B               [ 4] 1338 	ld	a, e
    00002879 22               [ 8] 1339 	ld	(hl+), a
    0000287A 72               [ 8] 1340 	ld	(hl), d
    0000287B 18 10            [12] 1341 	jr	00136$
    0000287D                       1342 00106$:
                         000003DF  1343 	C$common.c$255$2_0$216	= .
                                   1344 	.globl	C$common.c$255$2_0$216
                                   1345 ;src\common.c:255: vramAddr = get_win_xy_addr(x,y+1);
    0000287D C5               [16] 1346 	push	bc
    0000287E 33               [ 8] 1347 	inc	sp
    0000287F F8 0B            [12] 1348 	ldhl	sp,	#11
    00002881 7E               [ 8] 1349 	ld	a, (hl)
    00002882 F5               [16] 1350 	push	af
    00002883 33               [ 8] 1351 	inc	sp
    00002884 CD 0F 60         [24] 1352 	call	_get_win_xy_addr
    00002887 E1               [12] 1353 	pop	hl
    00002888 F8 03            [12] 1354 	ldhl	sp,	#3
    0000288A 7B               [ 4] 1355 	ld	a, e
    0000288B 22               [ 8] 1356 	ld	(hl+), a
    0000288C 72               [ 8] 1357 	ld	(hl), d
                         000003EF  1358 	C$common.c$257$1_0$210	= .
                                   1359 	.globl	C$common.c$257$1_0$210
                                   1360 ;src\common.c:257: for (uint8_t j = 0; j < height - 2; j++)
    0000288D                       1361 00136$:
    0000288D F8 0B            [12] 1362 	ldhl	sp,	#11
    0000288F 36 00            [12] 1363 	ld	(hl), #0x00
    00002891                       1364 00121$:
    00002891 F8 0F            [12] 1365 	ldhl	sp,	#15
    00002893 7E               [ 8] 1366 	ld	a, (hl)
    00002894 F8 07            [12] 1367 	ldhl	sp,	#7
    00002896 22               [ 8] 1368 	ld	(hl+), a
    00002897 AF               [ 4] 1369 	xor	a, a
    00002898 32               [ 8] 1370 	ld	(hl-), a
    00002899 2A               [ 8] 1371 	ld	a, (hl+)
    0000289A 5F               [ 4] 1372 	ld	e, a
    0000289B 56               [ 8] 1373 	ld	d, (hl)
    0000289C 21 02 00         [12] 1374 	ld	hl, #0x0002
    0000289F 7B               [ 4] 1375 	ld	a, e
    000028A0 95               [ 4] 1376 	sub	a, l
    000028A1 5F               [ 4] 1377 	ld	e, a
    000028A2 7A               [ 4] 1378 	ld	a, d
    000028A3 9C               [ 4] 1379 	sbc	a, h
    000028A4 F8 06            [12] 1380 	ldhl	sp,	#6
    000028A6 32               [ 8] 1381 	ld	(hl-), a
    000028A7 73               [ 8] 1382 	ld	(hl), e
    000028A8 F8 0B            [12] 1383 	ldhl	sp,	#11
    000028AA 7E               [ 8] 1384 	ld	a, (hl)
    000028AB F8 07            [12] 1385 	ldhl	sp,	#7
    000028AD 22               [ 8] 1386 	ld	(hl+), a
    000028AE 36 00            [12] 1387 	ld	(hl), #0x00
                         00000412  1388 	C$common.c$243$1_0$210	= .
                                   1389 	.globl	C$common.c$243$1_0$210
                                   1390 ;src\common.c:243: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
    000028B0 F8 03            [12] 1391 	ldhl	sp,	#3
    000028B2 2A               [ 8] 1392 	ld	a, (hl+)
    000028B3 4F               [ 4] 1393 	ld	c, a
    000028B4 46               [ 8] 1394 	ld	b, (hl)
    000028B5 03               [ 8] 1395 	inc	bc
                         00000418  1396 	C$common.c$257$2_0$217	= .
                                   1397 	.globl	C$common.c$257$2_0$217
                                   1398 ;src\common.c:257: for (uint8_t j = 0; j < height - 2; j++)
    000028B6 F8 07            [12] 1399 	ldhl	sp,	#7
    000028B8 5D               [ 4] 1400 	ld	e, l
    000028B9 54               [ 4] 1401 	ld	d, h
    000028BA F8 05            [12] 1402 	ldhl	sp,	#5
    000028BC 1A               [ 8] 1403 	ld	a, (de)
    000028BD 13               [ 8] 1404 	inc	de
    000028BE 96               [ 8] 1405 	sub	a, (hl)
    000028BF 23               [ 8] 1406 	inc	hl
    000028C0 1A               [ 8] 1407 	ld	a, (de)
    000028C1 9E               [ 8] 1408 	sbc	a, (hl)
    000028C2 1A               [ 8] 1409 	ld	a, (de)
    000028C3 57               [ 4] 1410 	ld	d, a
    000028C4 CB 7E            [12] 1411 	bit	7, (hl)
    000028C6 28 07            [12] 1412 	jr	Z, 00211$
    000028C8 CB 7A            [ 8] 1413 	bit	7, d
    000028CA 20 08            [12] 1414 	jr	NZ, 00212$
    000028CC BF               [ 4] 1415 	cp	a, a
    000028CD 18 05            [12] 1416 	jr	00212$
    000028CF                       1417 00211$:
    000028CF CB 7A            [ 8] 1418 	bit	7, d
    000028D1 28 01            [12] 1419 	jr	Z, 00212$
    000028D3 37               [ 4] 1420 	scf
    000028D4                       1421 00212$:
    000028D4 D2 57 29         [16] 1422 	jp	NC, 00112$
                         00000439  1423 	C$common.c$259$3_0$218	= .
                                   1424 	.globl	C$common.c$259$3_0$218
                                   1425 ;src\common.c:259: set_vram_byte(vramAddr++,302u); // LEFT SIDE
    000028D7 F8 03            [12] 1426 	ldhl	sp,	#3
    000028D9 2A               [ 8] 1427 	ld	a, (hl+)
    000028DA 5F               [ 4] 1428 	ld	e, a
    000028DB 56               [ 8] 1429 	ld	d, (hl)
    000028DC 3E 2E            [ 8] 1430 	ld	a, #0x2e
    000028DE CD CE 5F         [24] 1431 	call	_set_vram_byte
                         00000443  1432 	C$common.c$260$1_0$210	= .
                                   1433 	.globl	C$common.c$260$1_0$210
                                   1434 ;src\common.c:260: for (uint8_t i = 0; i < width - 2; i++)
    000028E1 F8 08            [12] 1435 	ldhl	sp,	#8
    000028E3 36 00            [12] 1436 	ld	(hl), #0x00
    000028E5                       1437 00118$:
    000028E5 F8 08            [12] 1438 	ldhl	sp,	#8
    000028E7 3A               [ 8] 1439 	ld	a, (hl-)
    000028E8 2B               [ 8] 1440 	dec	hl
    000028E9 22               [ 8] 1441 	ld	(hl+), a
    000028EA 36 00            [12] 1442 	ld	(hl), #0x00
    000028EC F8 06            [12] 1443 	ldhl	sp,	#6
    000028EE 5D               [ 4] 1444 	ld	e, l
    000028EF 54               [ 4] 1445 	ld	d, h
    000028F0 F8 00            [12] 1446 	ldhl	sp,	#0
    000028F2 1A               [ 8] 1447 	ld	a, (de)
    000028F3 13               [ 8] 1448 	inc	de
    000028F4 96               [ 8] 1449 	sub	a, (hl)
    000028F5 23               [ 8] 1450 	inc	hl
    000028F6 1A               [ 8] 1451 	ld	a, (de)
    000028F7 9E               [ 8] 1452 	sbc	a, (hl)
    000028F8 1A               [ 8] 1453 	ld	a, (de)
    000028F9 57               [ 4] 1454 	ld	d, a
    000028FA CB 7E            [12] 1455 	bit	7, (hl)
    000028FC 28 07            [12] 1456 	jr	Z, 00213$
    000028FE CB 7A            [ 8] 1457 	bit	7, d
    00002900 20 08            [12] 1458 	jr	NZ, 00214$
    00002902 BF               [ 4] 1459 	cp	a, a
    00002903 18 05            [12] 1460 	jr	00214$
    00002905                       1461 00213$:
    00002905 CB 7A            [ 8] 1462 	bit	7, d
    00002907 28 01            [12] 1463 	jr	Z, 00214$
    00002909 37               [ 4] 1464 	scf
    0000290A                       1465 00214$:
    0000290A 30 0C            [12] 1466 	jr	NC, 00108$
                         0000046E  1467 	C$common.c$262$5_0$220	= .
                                   1468 	.globl	C$common.c$262$5_0$220
                                   1469 ;src\common.c:262: set_vram_byte(vramAddr++,256u);
    0000290C 59               [ 4] 1470 	ld	e, c
    0000290D 50               [ 4] 1471 	ld	d, b
    0000290E 03               [ 8] 1472 	inc	bc
    0000290F AF               [ 4] 1473 	xor	a, a
    00002910 CD CE 5F         [24] 1474 	call	_set_vram_byte
                         00000475  1475 	C$common.c$260$4_0$219	= .
                                   1476 	.globl	C$common.c$260$4_0$219
                                   1477 ;src\common.c:260: for (uint8_t i = 0; i < width - 2; i++)
    00002913 F8 08            [12] 1478 	ldhl	sp,	#8
    00002915 34               [12] 1479 	inc	(hl)
    00002916 18 CD            [12] 1480 	jr	00118$
    00002918                       1481 00108$:
                         0000047A  1482 	C$common.c$264$3_0$218	= .
                                   1483 	.globl	C$common.c$264$3_0$218
                                   1484 ;src\common.c:264: set_vram_byte(vramAddr++,307u); // RIGHT SIDE
    00002918 3E 33            [ 8] 1485 	ld	a, #0x33
    0000291A 59               [ 4] 1486 	ld	e, c
    0000291B 50               [ 4] 1487 	ld	d, b
    0000291C CD CE 5F         [24] 1488 	call	_set_vram_byte
                         00000481  1489 	C$common.c$267$1_0$210	= .
                                   1490 	.globl	C$common.c$267$1_0$210
                                   1491 ;src\common.c:267: vramAddr = get_bkg_xy_addr(x,y+2+j); 
    0000291F F8 0B            [12] 1492 	ldhl	sp,	#11
    00002921 7E               [ 8] 1493 	ld	a, (hl)
    00002922 F8 02            [12] 1494 	ldhl	sp,	#2
    00002924 4E               [ 8] 1495 	ld	c, (hl)
    00002925 0C               [ 4] 1496 	inc	c
    00002926 0C               [ 4] 1497 	inc	c
    00002927 81               [ 4] 1498 	add	a, c
    00002928 47               [ 4] 1499 	ld	b, a
                         0000048B  1500 	C$common.c$265$3_0$218	= .
                                   1501 	.globl	C$common.c$265$3_0$218
                                   1502 ;src\common.c:265: if (bkg)
    00002929 F8 10            [12] 1503 	ldhl	sp,	#16
    0000292B 7E               [ 8] 1504 	ld	a, (hl)
    0000292C B7               [ 4] 1505 	or	a, a
    0000292D 28 12            [12] 1506 	jr	Z, 00110$
                         00000491  1507 	C$common.c$267$4_0$221	= .
                                   1508 	.globl	C$common.c$267$4_0$221
                                   1509 ;src\common.c:267: vramAddr = get_bkg_xy_addr(x,y+2+j); 
    0000292F C5               [16] 1510 	push	bc
    00002930 33               [ 8] 1511 	inc	sp
    00002931 F8 0B            [12] 1512 	ldhl	sp,	#11
    00002933 7E               [ 8] 1513 	ld	a, (hl)
    00002934 F5               [16] 1514 	push	af
    00002935 33               [ 8] 1515 	inc	sp
    00002936 CD 17 60         [24] 1516 	call	_get_bkg_xy_addr
    00002939 E1               [12] 1517 	pop	hl
    0000293A F8 03            [12] 1518 	ldhl	sp,	#3
    0000293C 7B               [ 4] 1519 	ld	a, e
    0000293D 22               [ 8] 1520 	ld	(hl+), a
    0000293E 72               [ 8] 1521 	ld	(hl), d
    0000293F 18 10            [12] 1522 	jr	00122$
    00002941                       1523 00110$:
                         000004A3  1524 	C$common.c$270$4_0$222	= .
                                   1525 	.globl	C$common.c$270$4_0$222
                                   1526 ;src\common.c:270: vramAddr = get_win_xy_addr(x,y+2+j);
    00002941 C5               [16] 1527 	push	bc
    00002942 33               [ 8] 1528 	inc	sp
    00002943 F8 0B            [12] 1529 	ldhl	sp,	#11
    00002945 7E               [ 8] 1530 	ld	a, (hl)
    00002946 F5               [16] 1531 	push	af
    00002947 33               [ 8] 1532 	inc	sp
    00002948 CD 0F 60         [24] 1533 	call	_get_win_xy_addr
    0000294B E1               [12] 1534 	pop	hl
    0000294C F8 03            [12] 1535 	ldhl	sp,	#3
    0000294E 7B               [ 4] 1536 	ld	a, e
    0000294F 22               [ 8] 1537 	ld	(hl+), a
    00002950 72               [ 8] 1538 	ld	(hl), d
    00002951                       1539 00122$:
                         000004B3  1540 	C$common.c$257$2_0$217	= .
                                   1541 	.globl	C$common.c$257$2_0$217
                                   1542 ;src\common.c:257: for (uint8_t j = 0; j < height - 2; j++)
    00002951 F8 0B            [12] 1543 	ldhl	sp,	#11
    00002953 34               [12] 1544 	inc	(hl)
    00002954 C3 91 28         [16] 1545 	jp	00121$
    00002957                       1546 00112$:
                         000004B9  1547 	C$common.c$273$1_0$210	= .
                                   1548 	.globl	C$common.c$273$1_0$210
                                   1549 ;src\common.c:273: set_vram_byte(vramAddr++,303u);             // TOP LEFT CORNER
    00002957 F8 03            [12] 1550 	ldhl	sp,	#3
    00002959 2A               [ 8] 1551 	ld	a, (hl+)
    0000295A 5F               [ 4] 1552 	ld	e, a
    0000295B 56               [ 8] 1553 	ld	d, (hl)
    0000295C 3E 2F            [ 8] 1554 	ld	a, #0x2f
    0000295E CD CE 5F         [24] 1555 	call	_set_vram_byte
                         000004C3  1556 	C$common.c$274$1_0$210	= .
                                   1557 	.globl	C$common.c$274$1_0$210
                                   1558 ;src\common.c:274: for (uint8_t i = 0; i < width - 2; i++)
    00002961 F8 0B            [12] 1559 	ldhl	sp,	#11
    00002963 36 00            [12] 1560 	ld	(hl), #0x00
    00002965                       1561 00124$:
    00002965 F8 0B            [12] 1562 	ldhl	sp,	#11
    00002967 7E               [ 8] 1563 	ld	a, (hl)
    00002968 F8 07            [12] 1564 	ldhl	sp,	#7
    0000296A 22               [ 8] 1565 	ld	(hl+), a
    0000296B 36 00            [12] 1566 	ld	(hl), #0x00
    0000296D F8 07            [12] 1567 	ldhl	sp,	#7
    0000296F 5D               [ 4] 1568 	ld	e, l
    00002970 54               [ 4] 1569 	ld	d, h
    00002971 F8 00            [12] 1570 	ldhl	sp,	#0
    00002973 1A               [ 8] 1571 	ld	a, (de)
    00002974 13               [ 8] 1572 	inc	de
    00002975 96               [ 8] 1573 	sub	a, (hl)
    00002976 23               [ 8] 1574 	inc	hl
    00002977 1A               [ 8] 1575 	ld	a, (de)
    00002978 9E               [ 8] 1576 	sbc	a, (hl)
    00002979 1A               [ 8] 1577 	ld	a, (de)
    0000297A 57               [ 4] 1578 	ld	d, a
    0000297B CB 7E            [12] 1579 	bit	7, (hl)
    0000297D 28 07            [12] 1580 	jr	Z, 00215$
    0000297F CB 7A            [ 8] 1581 	bit	7, d
    00002981 20 08            [12] 1582 	jr	NZ, 00216$
    00002983 BF               [ 4] 1583 	cp	a, a
    00002984 18 05            [12] 1584 	jr	00216$
    00002986                       1585 00215$:
    00002986 CB 7A            [ 8] 1586 	bit	7, d
    00002988 28 01            [12] 1587 	jr	Z, 00216$
    0000298A 37               [ 4] 1588 	scf
    0000298B                       1589 00216$:
    0000298B 30 0D            [12] 1590 	jr	NC, 00113$
                         000004EF  1591 	C$common.c$276$3_0$224	= .
                                   1592 	.globl	C$common.c$276$3_0$224
                                   1593 ;src\common.c:276: set_vram_byte(vramAddr++,305u);         // TOP SIDE
    0000298D 59               [ 4] 1594 	ld	e, c
    0000298E 50               [ 4] 1595 	ld	d, b
    0000298F 03               [ 8] 1596 	inc	bc
    00002990 3E 31            [ 8] 1597 	ld	a, #0x31
    00002992 CD CE 5F         [24] 1598 	call	_set_vram_byte
                         000004F7  1599 	C$common.c$274$2_0$223	= .
                                   1600 	.globl	C$common.c$274$2_0$223
                                   1601 ;src\common.c:274: for (uint8_t i = 0; i < width - 2; i++)
    00002995 F8 0B            [12] 1602 	ldhl	sp,	#11
    00002997 34               [12] 1603 	inc	(hl)
    00002998 18 CB            [12] 1604 	jr	00124$
    0000299A                       1605 00113$:
                         000004FC  1606 	C$common.c$278$1_0$210	= .
                                   1607 	.globl	C$common.c$278$1_0$210
                                   1608 ;src\common.c:278: set_vram_byte(vramAddr++,308u);             // TOP RIGHT CORNER
    0000299A 3E 34            [ 8] 1609 	ld	a, #0x34
    0000299C 59               [ 4] 1610 	ld	e, c
    0000299D 50               [ 4] 1611 	ld	d, b
    0000299E CD CE 5F         [24] 1612 	call	_set_vram_byte
                         00000503  1613 	C$common.c$279$1_0$210	= .
                                   1614 	.globl	C$common.c$279$1_0$210
                                   1615 ;src\common.c:279: }
    000029A1 E8 0C            [16] 1616 	add	sp, #12
    000029A3 E1               [12] 1617 	pop	hl
    000029A4 E8 03            [16] 1618 	add	sp, #3
    000029A6 E9               [ 4] 1619 	jp	(hl)
                                   1620 	.area _CODE
                                   1621 	.area _INITIALIZER
                         00000000  1622 Fcommon$__xinit_joypadPrevious$0_0$0 == .
    00007149                       1623 __xinit__joypadPrevious:
    00007149 00                    1624 	.db #0x00	; 0
                         00000001  1625 Fcommon$__xinit_joypadCurrent$0_0$0 == .
    0000714A                       1626 __xinit__joypadCurrent:
    0000714A 00                    1627 	.db #0x00	; 0
                         00000002  1628 Fcommon$__xinit_index$0_0$0 == .
    0000714B                       1629 __xinit__index:
    0000714B 00                    1630 	.db #0x00	;  0
                                   1631 	.area _CABS (ABS)
