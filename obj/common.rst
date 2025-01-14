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
                         00000000    66 	G$performantdelay$0$0	= .
                                     67 	.globl	G$performantdelay$0$0
                         00000000    68 	C$common.c$15$0_0$164	= .
                                     69 	.globl	C$common.c$15$0_0$164
                                     70 ;src\common.c:15: void performantdelay(uint8_t numloops) NONBANKED
                                     71 ;	---------------------------------
                                     72 ; Function performantdelay
                                     73 ; ---------------------------------
    000008D1                         74 _performantdelay::
    000008D1 4F               [ 4]   75 	ld	c, a
                         00000001    76 	C$common.c$17$2_0$164	= .
                                     77 	.globl	C$common.c$17$2_0$164
                                     78 ;src\common.c:17: for (uint8_t i = 0; i < numloops; i++)
    000008D2 06 00            [ 8]   79 	ld	b, #0x00
    000008D4                         80 00103$:
    000008D4 78               [ 4]   81 	ld	a, b
    000008D5 91               [ 4]   82 	sub	a, c
    000008D6 D0               [20]   83 	ret	NC
                         00000006    84 	C$common.c$19$3_0$165	= .
                                     85 	.globl	C$common.c$19$3_0$165
                                     86 ;src\common.c:19: wait_vbl_done();
    000008D7 CD BD 01         [24]   87 	call	_wait_vbl_done
                         00000009    88 	C$common.c$17$2_0$164	= .
                                     89 	.globl	C$common.c$17$2_0$164
                                     90 ;src\common.c:17: for (uint8_t i = 0; i < numloops; i++)
    000008DA 04               [ 4]   91 	inc	b
                         0000000A    92 	C$common.c$21$2_0$164	= .
                                     93 	.globl	C$common.c$21$2_0$164
                                     94 ;src\common.c:21: }
                         0000000A    95 	C$common.c$21$2_0$164	= .
                                     96 	.globl	C$common.c$21$2_0$164
                         0000000A    97 	XG$performantdelay$0$0	= .
                                     98 	.globl	XG$performantdelay$0$0
    000008DB 18 F7            [12]   99 	jr	00103$
                         0000000C   100 	G$DrawNumber$0$0	= .
                                    101 	.globl	G$DrawNumber$0$0
                         0000000C   102 	C$common.c$24$2_0$167	= .
                                    103 	.globl	C$common.c$24$2_0$167
                                    104 ;src\common.c:24: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits, BOOLEAN bkg) NONBANKED
                                    105 ;	---------------------------------
                                    106 ; Function DrawNumber
                                    107 ; ---------------------------------
    000008DD                        108 _DrawNumber::
    000008DD E8 F0            [16]  109 	add	sp, #-16
    000008DF 47               [ 4]  110 	ld	b, a
    000008E0 4B               [ 4]  111 	ld	c, e
                         00000010   112 	C$common.c$26$2_0$167	= .
                                    113 	.globl	C$common.c$26$2_0$167
                                    114 ;src\common.c:26: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
    000008E1 F8 00            [12]  115 	ldhl	sp,	#0
    000008E3 3E 30            [ 8]  116 	ld	a,#0x30
    000008E5 22               [ 8]  117 	ld	(hl+),a
    000008E6 22               [ 8]  118 	ld	(hl+), a
    000008E7 3E 30            [ 8]  119 	ld	a,#0x30
    000008E9 22               [ 8]  120 	ld	(hl+),a
    000008EA 22               [ 8]  121 	ld	(hl+), a
    000008EB 3E 30            [ 8]  122 	ld	a,#0x30
    000008ED 22               [ 8]  123 	ld	(hl+),a
    000008EE 22               [ 8]  124 	ld	(hl+), a
    000008EF 3E 30            [ 8]  125 	ld	a, #0x30
    000008F1 22               [ 8]  126 	ld	(hl+), a
    000008F2 36 30            [12]  127 	ld	(hl), #0x30
                         00000023   128 	C$common.c$29$1_0$167	= .
                                    129 	.globl	C$common.c$29$1_0$167
                                    130 ;src\common.c:29: uitoa(number, buffer, 10);
    000008F4 F8 12            [12]  131 	ldhl	sp,	#18
    000008F6 2A               [ 8]  132 	ld	a, (hl+)
    000008F7 5F               [ 4]  133 	ld	e, a
    000008F8 56               [ 8]  134 	ld	d, (hl)
    000008F9 C5               [16]  135 	push	bc
    000008FA 3E 0A            [ 8]  136 	ld	a, #0x0a
    000008FC F5               [16]  137 	push	af
    000008FD 33               [ 8]  138 	inc	sp
    000008FE 21 03 00         [12]  139 	ld	hl, #3
    00000901 39               [ 8]  140 	add	hl, sp
    00000902 E5               [16]  141 	push	hl
    00000903 D5               [16]  142 	push	de
    00000904 CD DA 0D         [24]  143 	call	_uitoa
    00000907 E8 05            [16]  144 	add	sp, #5
    00000909 C1               [12]  145 	pop	bc
                         00000039   146 	C$common.c$33$1_1$168	= .
                                    147 	.globl	C$common.c$33$1_1$168
                                    148 ;src\common.c:33: if (bkg)
    0000090A F8 15            [12]  149 	ldhl	sp,	#21
    0000090C 7E               [ 8]  150 	ld	a, (hl)
    0000090D B7               [ 4]  151 	or	a, a
    0000090E 28 0D            [12]  152 	jr	Z, 00102$
                         0000003F   153 	C$common.c$35$2_1$169	= .
                                    154 	.globl	C$common.c$35$2_1$169
                                    155 ;src\common.c:35: vramAddr = get_bkg_xy_addr(x,y); 
    00000910 79               [ 4]  156 	ld	a, c
    00000911 F5               [16]  157 	push	af
    00000912 33               [ 8]  158 	inc	sp
    00000913 C5               [16]  159 	push	bc
    00000914 33               [ 8]  160 	inc	sp
    00000915 CD 8B 06         [24]  161 	call	_get_bkg_xy_addr
    00000918 E1               [12]  162 	pop	hl
    00000919 4B               [ 4]  163 	ld	c, e
    0000091A 42               [ 4]  164 	ld	b, d
    0000091B 18 0B            [12]  165 	jr	00103$
    0000091D                        166 00102$:
                         0000004C   167 	C$common.c$38$2_1$170	= .
                                    168 	.globl	C$common.c$38$2_1$170
                                    169 ;src\common.c:38: vramAddr = get_win_xy_addr(x,y);
    0000091D 79               [ 4]  170 	ld	a, c
    0000091E F5               [16]  171 	push	af
    0000091F 33               [ 8]  172 	inc	sp
    00000920 C5               [16]  173 	push	bc
    00000921 33               [ 8]  174 	inc	sp
    00000922 CD 83 06         [24]  175 	call	_get_win_xy_addr
    00000925 E1               [12]  176 	pop	hl
    00000926 4B               [ 4]  177 	ld	c, e
    00000927 42               [ 4]  178 	ld	b, d
    00000928                        179 00103$:
                         00000057   180 	C$common.c$42$1_2$171	= .
                                    181 	.globl	C$common.c$42$1_2$171
                                    182 ;src\common.c:42: uint8_t len = strlen(buffer);
    00000928 21 00 00         [12]  183 	ld	hl, #0
    0000092B 39               [ 8]  184 	add	hl, sp
    0000092C E5               [16]  185 	push	hl
    0000092D CD BE 0F         [24]  186 	call	_strlen
    00000930 E1               [12]  187 	pop	hl
    00000931 F8 08            [12]  188 	ldhl	sp,	#8
    00000933 73               [ 8]  189 	ld	(hl), e
                         00000063   190 	C$common.c$47$2_2$167	= .
                                    191 	.globl	C$common.c$47$2_2$167
                                    192 ;src\common.c:47: for (uint8_t i=0; i<digits-len;i++)
    00000934 F8 0F            [12]  193 	ldhl	sp,	#15
    00000936 36 00            [12]  194 	ld	(hl), #0x00
    00000938                        195 00107$:
    00000938 F8 14            [12]  196 	ldhl	sp,	#20
    0000093A 7E               [ 8]  197 	ld	a, (hl)
    0000093B F8 09            [12]  198 	ldhl	sp,	#9
    0000093D 22               [ 8]  199 	ld	(hl+), a
    0000093E AF               [ 4]  200 	xor	a, a
    0000093F 32               [ 8]  201 	ld	(hl-), a
    00000940 2B               [ 8]  202 	dec	hl
    00000941 7E               [ 8]  203 	ld	a, (hl)
    00000942 F8 0B            [12]  204 	ldhl	sp,	#11
    00000944 22               [ 8]  205 	ld	(hl+), a
    00000945 AF               [ 4]  206 	xor	a, a
    00000946 32               [ 8]  207 	ld	(hl-), a
    00000947 2B               [ 8]  208 	dec	hl
    00000948 2B               [ 8]  209 	dec	hl
    00000949 2A               [ 8]  210 	ld	a, (hl+)
    0000094A 5F               [ 4]  211 	ld	e, a
    0000094B 2A               [ 8]  212 	ld	a, (hl+)
    0000094C 57               [ 4]  213 	ld	d, a
    0000094D 2A               [ 8]  214 	ld	a,	(hl+)
    0000094E 66               [ 8]  215 	ld	h, (hl)
    0000094F 6F               [ 4]  216 	ld	l, a
    00000950 7B               [ 4]  217 	ld	a, e
    00000951 95               [ 4]  218 	sub	a, l
    00000952 5F               [ 4]  219 	ld	e, a
    00000953 7A               [ 4]  220 	ld	a, d
    00000954 9C               [ 4]  221 	sbc	a, h
    00000955 F8 0E            [12]  222 	ldhl	sp,	#14
    00000957 32               [ 8]  223 	ld	(hl-), a
    00000958 7B               [ 4]  224 	ld	a, e
    00000959 22               [ 8]  225 	ld	(hl+), a
    0000095A 23               [ 8]  226 	inc	hl
    0000095B 7E               [ 8]  227 	ld	a, (hl)
    0000095C F8 0B            [12]  228 	ldhl	sp,	#11
    0000095E 22               [ 8]  229 	ld	(hl+), a
    0000095F 36 00            [12]  230 	ld	(hl), #0x00
    00000961 F8 0B            [12]  231 	ldhl	sp,	#11
    00000963 5D               [ 4]  232 	ld	e, l
    00000964 54               [ 4]  233 	ld	d, h
    00000965 F8 0D            [12]  234 	ldhl	sp,	#13
    00000967 1A               [ 8]  235 	ld	a, (de)
    00000968 13               [ 8]  236 	inc	de
    00000969 96               [ 8]  237 	sub	a, (hl)
    0000096A 23               [ 8]  238 	inc	hl
    0000096B 1A               [ 8]  239 	ld	a, (de)
    0000096C 9E               [ 8]  240 	sbc	a, (hl)
    0000096D 1A               [ 8]  241 	ld	a, (de)
    0000096E 57               [ 4]  242 	ld	d, a
    0000096F CB 7E            [12]  243 	bit	7, (hl)
    00000971 28 07            [12]  244 	jr	Z, 00151$
    00000973 CB 7A            [ 8]  245 	bit	7, d
    00000975 20 08            [12]  246 	jr	NZ, 00152$
    00000977 BF               [ 4]  247 	cp	a, a
    00000978 18 05            [12]  248 	jr	00152$
    0000097A                        249 00151$:
    0000097A CB 7A            [ 8]  250 	bit	7, d
    0000097C 28 01            [12]  251 	jr	Z, 00152$
    0000097E 37               [ 4]  252 	scf
    0000097F                        253 00152$:
    0000097F 30 0E            [12]  254 	jr	NC, 00104$
                         000000B0   255 	C$common.c$49$3_2$173	= .
                                    256 	.globl	C$common.c$49$3_2$173
                                    257 ;src\common.c:49: set_vram_byte(vramAddr++, 283);
    00000981 69               [ 4]  258 	ld	l, c
                                    259 ;	spillPairReg hl
                                    260 ;	spillPairReg hl
    00000982 50               [ 4]  261 	ld	d, b
    00000983 03               [ 8]  262 	inc	bc
    00000984 3E 1B            [ 8]  263 	ld	a, #0x1b
    00000986 5D               [ 4]  264 	ld	e, l
    00000987 CD 42 06         [24]  265 	call	_set_vram_byte
                         000000B9   266 	C$common.c$47$2_2$172	= .
                                    267 	.globl	C$common.c$47$2_2$172
                                    268 ;src\common.c:47: for (uint8_t i=0; i<digits-len;i++)
    0000098A F8 0F            [12]  269 	ldhl	sp,	#15
    0000098C 34               [12]  270 	inc	(hl)
    0000098D 18 A9            [12]  271 	jr	00107$
    0000098F                        272 00104$:
                         000000BE   273 	C$common.c$54$2_2$167	= .
                                    274 	.globl	C$common.c$54$2_2$167
                                    275 ;src\common.c:54: for (uint8_t i=0; i<len; i++)
    0000098F 1E 00            [ 8]  276 	ld	e, #0x00
    00000991                        277 00110$:
    00000991 7B               [ 4]  278 	ld	a, e
    00000992 F8 08            [12]  279 	ldhl	sp,	#8
    00000994 96               [ 8]  280 	sub	a, (hl)
    00000995 30 1A            [12]  281 	jr	NC, 00112$
                         000000C6   282 	C$common.c$56$3_2$175	= .
                                    283 	.globl	C$common.c$56$3_2$175
                                    284 ;src\common.c:56: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
    00000997 D5               [16]  285 	push	de
    00000998 16 00            [ 8]  286 	ld	d, #0x00
    0000099A 21 02 00         [12]  287 	ld	hl, #2
    0000099D 39               [ 8]  288 	add	hl, sp
    0000099E 19               [ 8]  289 	add	hl, de
    0000099F D1               [12]  290 	pop	de
    000009A0 7E               [ 8]  291 	ld	a, (hl)
    000009A1 C6 EB            [ 8]  292 	add	a, #0xeb
    000009A3 6F               [ 4]  293 	ld	l, a
                                    294 ;	spillPairReg hl
                                    295 ;	spillPairReg hl
    000009A4 61               [ 4]  296 	ld	h, c
                                    297 ;	spillPairReg hl
                                    298 ;	spillPairReg hl
    000009A5 50               [ 4]  299 	ld	d, b
    000009A6 03               [ 8]  300 	inc	bc
    000009A7 D5               [16]  301 	push	de
    000009A8 7D               [ 4]  302 	ld	a, l
    000009A9 5C               [ 4]  303 	ld	e, h
    000009AA CD 42 06         [24]  304 	call	_set_vram_byte
    000009AD D1               [12]  305 	pop	de
                         000000DD   306 	C$common.c$54$2_2$174	= .
                                    307 	.globl	C$common.c$54$2_2$174
                                    308 ;src\common.c:54: for (uint8_t i=0; i<len; i++)
    000009AE 1C               [ 4]  309 	inc	e
    000009AF 18 E0            [12]  310 	jr	00110$
    000009B1                        311 00112$:
                         000000E0   312 	C$common.c$58$2_2$167	= .
                                    313 	.globl	C$common.c$58$2_2$167
                                    314 ;src\common.c:58: }
    000009B1 E8 10            [16]  315 	add	sp, #16
    000009B3 E1               [12]  316 	pop	hl
    000009B4 E8 04            [16]  317 	add	sp, #4
    000009B6 E9               [ 4]  318 	jp	(hl)
                         000000E6   319 	G$DrawText$0$0	= .
                                    320 	.globl	G$DrawText$0$0
                         000000E6   321 	C$common.c$60$2_2$177	= .
                                    322 	.globl	C$common.c$60$2_2$177
                                    323 ;src\common.c:60: void DrawText(uint8_t x, uint8_t y, unsigned char *text, BOOLEAN bkg ) NONBANKED
                                    324 ;	---------------------------------
                                    325 ; Function DrawText
                                    326 ; ---------------------------------
    000009B7                        327 _DrawText::
    000009B7 E8 FC            [16]  328 	add	sp, #-4
    000009B9 47               [ 4]  329 	ld	b, a
    000009BA 53               [ 4]  330 	ld	d, e
                         000000EA   331 	C$common.c$67$1_0$177	= .
                                    332 	.globl	C$common.c$67$1_0$177
                                    333 ;src\common.c:67: if (bkg)
    000009BB F8 08            [12]  334 	ldhl	sp,	#8
    000009BD 7E               [ 8]  335 	ld	a, (hl)
    000009BE B7               [ 4]  336 	or	a, a
    000009BF 28 0A            [12]  337 	jr	Z, 00102$
                         000000F0   338 	C$common.c$69$2_0$178	= .
                                    339 	.globl	C$common.c$69$2_0$178
                                    340 ;src\common.c:69: vramAddr = get_bkg_xy_addr(x,y); 
    000009C1 58               [ 4]  341 	ld	e, b
    000009C2 D5               [16]  342 	push	de
    000009C3 CD 8B 06         [24]  343 	call	_get_bkg_xy_addr
    000009C6 E8 04            [16]  344 	add	sp, #4
    000009C8 D5               [16]  345 	push	de
    000009C9 18 08            [12]  346 	jr	00137$
    000009CB                        347 00102$:
                         000000FA   348 	C$common.c$72$2_0$179	= .
                                    349 	.globl	C$common.c$72$2_0$179
                                    350 ;src\common.c:72: vramAddr = get_win_xy_addr(x,y);
    000009CB 58               [ 4]  351 	ld	e, b
    000009CC D5               [16]  352 	push	de
    000009CD CD 83 06         [24]  353 	call	_get_win_xy_addr
    000009D0 E8 04            [16]  354 	add	sp, #4
    000009D2 D5               [16]  355 	push	de
                         00000102   356 	C$common.c$75$1_0$177	= .
                                    357 	.globl	C$common.c$75$1_0$177
                                    358 ;src\common.c:75: while(text[i]!='\0'){
    000009D3                        359 00137$:
    000009D3 0E 00            [ 8]  360 	ld	c, #0x00
    000009D5                        361 00121$:
    000009D5 F8 06            [12]  362 	ldhl	sp,#6
    000009D7 2A               [ 8]  363 	ld	a, (hl+)
    000009D8 5F               [ 4]  364 	ld	e, a
    000009D9 56               [ 8]  365 	ld	d, (hl)
    000009DA 69               [ 4]  366 	ld	l, c
    000009DB 26 00            [ 8]  367 	ld	h, #0x00
    000009DD 19               [ 8]  368 	add	hl, de
    000009DE 5D               [ 4]  369 	ld	e, l
    000009DF 54               [ 4]  370 	ld	d, h
                         0000010F   371 	C$common.c$80$1_0$177	= .
                                    372 	.globl	C$common.c$80$1_0$177
                                    373 ;src\common.c:80: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
    000009E0 1A               [ 8]  374 	ld	a, (de)
                         00000110   375 	C$common.c$75$1_0$177	= .
                                    376 	.globl	C$common.c$75$1_0$177
                                    377 ;src\common.c:75: while(text[i]!='\0'){
    000009E1 47               [ 4]  378 	ld	b, a
    000009E2 B7               [ 4]  379 	or	a, a
    000009E3 CA AA 0A         [16]  380 	jp	Z, 00123$
                         00000115   381 	C$common.c$79$1_0$177	= .
                                    382 	.globl	C$common.c$79$1_0$177
                                    383 ;src\common.c:79: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
    000009E6 D1               [12]  384 	pop	de
    000009E7 D5               [16]  385 	push	de
    000009E8 6B               [ 4]  386 	ld	l, e
    000009E9 62               [ 4]  387 	ld	h, d
    000009EA 23               [ 8]  388 	inc	hl
    000009EB E5               [16]  389 	push	hl
    000009EC 7D               [ 4]  390 	ld	a, l
    000009ED F8 04            [12]  391 	ldhl	sp,	#4
    000009EF 77               [ 8]  392 	ld	(hl), a
    000009F0 E1               [12]  393 	pop	hl
    000009F1 7C               [ 4]  394 	ld	a, h
    000009F2 F8 03            [12]  395 	ldhl	sp,	#3
    000009F4 77               [ 8]  396 	ld	(hl), a
    000009F5 78               [ 4]  397 	ld	a,b
    000009F6 5F               [ 4]  398 	ld	e,a
    000009F7 D6 41            [ 8]  399 	sub	a, #0x41
    000009F9 38 1B            [12]  400 	jr	C, 00118$
    000009FB 3E 5A            [ 8]  401 	ld	a, #0x5a
    000009FD 90               [ 4]  402 	sub	a, b
    000009FE 38 16            [12]  403 	jr	C, 00118$
    00000A00 2B               [ 8]  404 	dec	hl
    00000A01 7B               [ 4]  405 	ld	a, e
    00000A02 C6 C0            [ 8]  406 	add	a, #0xc0
    00000A04 47               [ 4]  407 	ld	b, a
    00000A05 D1               [12]  408 	pop	de
    00000A06 D5               [16]  409 	push	de
    00000A07 3A               [ 8]  410 	ld	a, (hl-)
    00000A08 2B               [ 8]  411 	dec	hl
    00000A09 77               [ 8]  412 	ld	(hl), a
    00000A0A F8 03            [12]  413 	ldhl	sp,	#3
    00000A0C 3A               [ 8]  414 	ld	a, (hl-)
    00000A0D 2B               [ 8]  415 	dec	hl
    00000A0E 77               [ 8]  416 	ld	(hl), a
    00000A0F 78               [ 4]  417 	ld	a, b
    00000A10 CD 42 06         [24]  418 	call	_set_vram_byte
    00000A13 C3 A6 0A         [16]  419 	jp	00119$
    00000A16                        420 00118$:
                         00000145   421 	C$common.c$80$2_0$180	= .
                                    422 	.globl	C$common.c$80$2_0$180
                                    423 ;src\common.c:80: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
    00000A16 78               [ 4]  424 	ld	a, b
    00000A17 D6 61            [ 8]  425 	sub	a, #0x61
    00000A19 38 1B            [12]  426 	jr	C, 00114$
    00000A1B 3E 7A            [ 8]  427 	ld	a, #0x7a
    00000A1D 90               [ 4]  428 	sub	a, b
    00000A1E 38 16            [12]  429 	jr	C, 00114$
    00000A20 7B               [ 4]  430 	ld	a, e
    00000A21 C6 A0            [ 8]  431 	add	a, #0xa0
    00000A23 47               [ 4]  432 	ld	b, a
    00000A24 D1               [12]  433 	pop	de
    00000A25 D5               [16]  434 	push	de
    00000A26 F8 02            [12]  435 	ldhl	sp,	#2
    00000A28 3A               [ 8]  436 	ld	a, (hl-)
    00000A29 2B               [ 8]  437 	dec	hl
    00000A2A 77               [ 8]  438 	ld	(hl), a
    00000A2B F8 03            [12]  439 	ldhl	sp,	#3
    00000A2D 3A               [ 8]  440 	ld	a, (hl-)
    00000A2E 2B               [ 8]  441 	dec	hl
    00000A2F 77               [ 8]  442 	ld	(hl), a
    00000A30 78               [ 4]  443 	ld	a, b
    00000A31 CD 42 06         [24]  444 	call	_set_vram_byte
    00000A34 18 70            [12]  445 	jr	00119$
    00000A36                        446 00114$:
                         00000165   447 	C$common.c$81$2_0$180	= .
                                    448 	.globl	C$common.c$81$2_0$180
                                    449 ;src\common.c:81: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
    00000A36 78               [ 4]  450 	ld	a, b
    00000A37 D6 30            [ 8]  451 	sub	a, #0x30
    00000A39 38 1B            [12]  452 	jr	C, 00110$
    00000A3B 3E 39            [ 8]  453 	ld	a, #0x39
    00000A3D 90               [ 4]  454 	sub	a, b
    00000A3E 38 16            [12]  455 	jr	C, 00110$
    00000A40 7B               [ 4]  456 	ld	a, e
    00000A41 C6 EB            [ 8]  457 	add	a, #0xeb
    00000A43 47               [ 4]  458 	ld	b, a
    00000A44 D1               [12]  459 	pop	de
    00000A45 D5               [16]  460 	push	de
    00000A46 F8 02            [12]  461 	ldhl	sp,	#2
    00000A48 3A               [ 8]  462 	ld	a, (hl-)
    00000A49 2B               [ 8]  463 	dec	hl
    00000A4A 77               [ 8]  464 	ld	(hl), a
    00000A4B F8 03            [12]  465 	ldhl	sp,	#3
    00000A4D 3A               [ 8]  466 	ld	a, (hl-)
    00000A4E 2B               [ 8]  467 	dec	hl
    00000A4F 77               [ 8]  468 	ld	(hl), a
    00000A50 78               [ 4]  469 	ld	a, b
    00000A51 CD 42 06         [24]  470 	call	_set_vram_byte
    00000A54 18 50            [12]  471 	jr	00119$
    00000A56                        472 00110$:
                         00000185   473 	C$common.c$87$3_0$181	= .
                                    474 	.globl	C$common.c$87$3_0$181
                                    475 ;src\common.c:87: switch(text[i]){
    00000A56 78               [ 4]  476 	ld	a,b
    00000A57 FE 2E            [ 8]  477 	cp	a,#0x2e
    00000A59 28 1B            [12]  478 	jr	Z, 00105$
    00000A5B FE 2F            [ 8]  479 	cp	a,#0x2f
    00000A5D 28 2A            [12]  480 	jr	Z, 00106$
    00000A5F D6 3A            [ 8]  481 	sub	a, #0x3a
    00000A61 20 39            [12]  482 	jr	NZ, 00107$
                         00000192   483 	C$common.c$88$4_0$182	= .
                                    484 	.globl	C$common.c$88$4_0$182
                                    485 ;src\common.c:88: case ':': set_vram_byte(vramAddr++,38); break;
    00000A63 D1               [12]  486 	pop	de
    00000A64 D5               [16]  487 	push	de
    00000A65 F8 02            [12]  488 	ldhl	sp,	#2
    00000A67 3A               [ 8]  489 	ld	a, (hl-)
    00000A68 2B               [ 8]  490 	dec	hl
    00000A69 77               [ 8]  491 	ld	(hl), a
    00000A6A F8 03            [12]  492 	ldhl	sp,	#3
    00000A6C 3A               [ 8]  493 	ld	a, (hl-)
    00000A6D 2B               [ 8]  494 	dec	hl
    00000A6E 77               [ 8]  495 	ld	(hl), a
    00000A6F 3E 26            [ 8]  496 	ld	a, #0x26
    00000A71 CD 42 06         [24]  497 	call	_set_vram_byte
    00000A74 18 30            [12]  498 	jr	00119$
                         000001A5   499 	C$common.c$89$4_0$182	= .
                                    500 	.globl	C$common.c$89$4_0$182
                                    501 ;src\common.c:89: case '.': set_vram_byte(vramAddr++,43);break;
    00000A76                        502 00105$:
    00000A76 D1               [12]  503 	pop	de
    00000A77 D5               [16]  504 	push	de
    00000A78 F8 02            [12]  505 	ldhl	sp,	#2
    00000A7A 3A               [ 8]  506 	ld	a, (hl-)
    00000A7B 2B               [ 8]  507 	dec	hl
    00000A7C 77               [ 8]  508 	ld	(hl), a
    00000A7D F8 03            [12]  509 	ldhl	sp,	#3
    00000A7F 3A               [ 8]  510 	ld	a, (hl-)
    00000A80 2B               [ 8]  511 	dec	hl
    00000A81 77               [ 8]  512 	ld	(hl), a
    00000A82 3E 2B            [ 8]  513 	ld	a, #0x2b
    00000A84 CD 42 06         [24]  514 	call	_set_vram_byte
    00000A87 18 1D            [12]  515 	jr	00119$
                         000001B8   516 	C$common.c$90$4_0$182	= .
                                    517 	.globl	C$common.c$90$4_0$182
                                    518 ;src\common.c:90: case '/': set_vram_byte(vramAddr++,40);break;
    00000A89                        519 00106$:
    00000A89 D1               [12]  520 	pop	de
    00000A8A D5               [16]  521 	push	de
    00000A8B F8 02            [12]  522 	ldhl	sp,	#2
    00000A8D 3A               [ 8]  523 	ld	a, (hl-)
    00000A8E 2B               [ 8]  524 	dec	hl
    00000A8F 77               [ 8]  525 	ld	(hl), a
    00000A90 F8 03            [12]  526 	ldhl	sp,	#3
    00000A92 3A               [ 8]  527 	ld	a, (hl-)
    00000A93 2B               [ 8]  528 	dec	hl
    00000A94 77               [ 8]  529 	ld	(hl), a
    00000A95 3E 28            [ 8]  530 	ld	a, #0x28
    00000A97 CD 42 06         [24]  531 	call	_set_vram_byte
    00000A9A 18 0A            [12]  532 	jr	00119$
                         000001CB   533 	C$common.c$91$4_0$182	= .
                                    534 	.globl	C$common.c$91$4_0$182
                                    535 ;src\common.c:91: default: vramAddr++; break;
    00000A9C                        536 00107$:
    00000A9C F8 02            [12]  537 	ldhl	sp,	#2
    00000A9E 3A               [ 8]  538 	ld	a, (hl-)
    00000A9F 2B               [ 8]  539 	dec	hl
    00000AA0 77               [ 8]  540 	ld	(hl), a
    00000AA1 F8 03            [12]  541 	ldhl	sp,	#3
    00000AA3 3A               [ 8]  542 	ld	a, (hl-)
    00000AA4 2B               [ 8]  543 	dec	hl
    00000AA5 77               [ 8]  544 	ld	(hl), a
                         000001D5   545 	C$common.c$92$2_0$180	= .
                                    546 	.globl	C$common.c$92$2_0$180
                                    547 ;src\common.c:92: }
    00000AA6                        548 00119$:
                         000001D5   549 	C$common.c$96$2_0$180	= .
                                    550 	.globl	C$common.c$96$2_0$180
                                    551 ;src\common.c:96: i++;
    00000AA6 0C               [ 4]  552 	inc	c
    00000AA7 C3 D5 09         [16]  553 	jp	00121$
    00000AAA                        554 00123$:
                         000001D9   555 	C$common.c$98$1_0$177	= .
                                    556 	.globl	C$common.c$98$1_0$177
                                    557 ;src\common.c:98: VBK_REG=0;
    00000AAA 3E 00            [ 8]  558 	ld	a, #0x00
    00000AAC E0 4F            [12]  559 	ldh	(_VBK_REG + 0), a
                         000001DD   560 	C$common.c$100$1_0$177	= .
                                    561 	.globl	C$common.c$100$1_0$177
                                    562 ;src\common.c:100: }
    00000AAE E8 04            [16]  563 	add	sp, #4
    00000AB0 E1               [12]  564 	pop	hl
    00000AB1 E8 03            [16]  565 	add	sp, #3
    00000AB3 E9               [ 4]  566 	jp	(hl)
                         000001E3   567 	G$fadeToBlack$0$0	= .
                                    568 	.globl	G$fadeToBlack$0$0
                         000001E3   569 	C$common.c$102$1_0$185	= .
                                    570 	.globl	C$common.c$102$1_0$185
                                    571 ;src\common.c:102: void fadeToBlack(uint8_t frames) NONBANKED
                                    572 ;	---------------------------------
                                    573 ; Function fadeToBlack
                                    574 ; ---------------------------------
    00000AB4                        575 _fadeToBlack::
    00000AB4 4F               [ 4]  576 	ld	c, a
                         000001E4   577 	C$common.c$104$2_0$185	= .
                                    578 	.globl	C$common.c$104$2_0$185
                                    579 ;src\common.c:104: for (uint8_t i = 0; i < 4; i++)
    00000AB5 06 00            [ 8]  580 	ld	b, #0x00
    00000AB7                        581 00108$:
    00000AB7 78               [ 4]  582 	ld	a, b
    00000AB8 D6 04            [ 8]  583 	sub	a, #0x04
    00000ABA D0               [20]  584 	ret	NC
                         000001EA   585 	C$common.c$106$3_0$186	= .
                                    586 	.globl	C$common.c$106$3_0$186
                                    587 ;src\common.c:106: switch(i) 
    00000ABB 78               [ 4]  588 	ld	a, b
    00000ABC B7               [ 4]  589 	or	a, a
    00000ABD 28 0F            [12]  590 	jr	Z, 00101$
    00000ABF 78               [ 4]  591 	ld	a, b
    00000AC0 3D               [ 4]  592 	dec	a
    00000AC1 28 15            [12]  593 	jr	Z, 00102$
    00000AC3 78               [ 4]  594 	ld	a,b
    00000AC4 FE 02            [ 8]  595 	cp	a,#0x02
    00000AC6 28 1A            [12]  596 	jr	Z, 00103$
    00000AC8 D6 03            [ 8]  597 	sub	a, #0x03
    00000ACA 28 20            [12]  598 	jr	Z, 00104$
    00000ACC 18 26            [12]  599 	jr	00105$
                         000001FD   600 	C$common.c$108$4_0$187	= .
                                    601 	.globl	C$common.c$108$4_0$187
                                    602 ;src\common.c:108: case 0: 
    00000ACE                        603 00101$:
                         000001FD   604 	C$common.c$109$4_0$187	= .
                                    605 	.globl	C$common.c$109$4_0$187
                                    606 ;src\common.c:109: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000ACE 3E E4            [ 8]  607 	ld	a, #0xe4
    00000AD0 E0 47            [12]  608 	ldh	(_BGP_REG + 0), a
                         00000201   609 	C$common.c$110$4_0$187	= .
                                    610 	.globl	C$common.c$110$4_0$187
                                    611 ;src\common.c:110: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000AD2 3E E4            [ 8]  612 	ld	a, #0xe4
    00000AD4 E0 48            [12]  613 	ldh	(_OBP0_REG + 0), a
                         00000205   614 	C$common.c$111$4_0$187	= .
                                    615 	.globl	C$common.c$111$4_0$187
                                    616 ;src\common.c:111: break;
    00000AD6 18 1C            [12]  617 	jr	00105$
                         00000207   618 	C$common.c$112$4_0$187	= .
                                    619 	.globl	C$common.c$112$4_0$187
                                    620 ;src\common.c:112: case 1: 
    00000AD8                        621 00102$:
                         00000207   622 	C$common.c$113$4_0$187	= .
                                    623 	.globl	C$common.c$113$4_0$187
                                    624 ;src\common.c:113: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    00000AD8 3E F9            [ 8]  625 	ld	a, #0xf9
    00000ADA E0 47            [12]  626 	ldh	(_BGP_REG + 0), a
                         0000020B   627 	C$common.c$114$4_0$187	= .
                                    628 	.globl	C$common.c$114$4_0$187
                                    629 ;src\common.c:114: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    00000ADC 3E F9            [ 8]  630 	ld	a, #0xf9
    00000ADE E0 48            [12]  631 	ldh	(_OBP0_REG + 0), a
                         0000020F   632 	C$common.c$115$4_0$187	= .
                                    633 	.globl	C$common.c$115$4_0$187
                                    634 ;src\common.c:115: break;
    00000AE0 18 12            [12]  635 	jr	00105$
                         00000211   636 	C$common.c$116$4_0$187	= .
                                    637 	.globl	C$common.c$116$4_0$187
                                    638 ;src\common.c:116: case 2:
    00000AE2                        639 00103$:
                         00000211   640 	C$common.c$117$4_0$187	= .
                                    641 	.globl	C$common.c$117$4_0$187
                                    642 ;src\common.c:117: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000AE2 3E FE            [ 8]  643 	ld	a, #0xfe
    00000AE4 E0 47            [12]  644 	ldh	(_BGP_REG + 0), a
                         00000215   645 	C$common.c$118$4_0$187	= .
                                    646 	.globl	C$common.c$118$4_0$187
                                    647 ;src\common.c:118: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000AE6 3E FE            [ 8]  648 	ld	a, #0xfe
    00000AE8 E0 48            [12]  649 	ldh	(_OBP0_REG + 0), a
                         00000219   650 	C$common.c$119$4_0$187	= .
                                    651 	.globl	C$common.c$119$4_0$187
                                    652 ;src\common.c:119: break;
    00000AEA 18 08            [12]  653 	jr	00105$
                         0000021B   654 	C$common.c$120$4_0$187	= .
                                    655 	.globl	C$common.c$120$4_0$187
                                    656 ;src\common.c:120: case 3:
    00000AEC                        657 00104$:
                         0000021B   658 	C$common.c$121$4_0$187	= .
                                    659 	.globl	C$common.c$121$4_0$187
                                    660 ;src\common.c:121: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000AEC 3E FF            [ 8]  661 	ld	a, #0xff
    00000AEE E0 47            [12]  662 	ldh	(_BGP_REG + 0), a
                         0000021F   663 	C$common.c$122$4_0$187	= .
                                    664 	.globl	C$common.c$122$4_0$187
                                    665 ;src\common.c:122: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000AF0 3E FF            [ 8]  666 	ld	a, #0xff
    00000AF2 E0 48            [12]  667 	ldh	(_OBP0_REG + 0), a
                         00000223   668 	C$common.c$124$3_0$186	= .
                                    669 	.globl	C$common.c$124$3_0$186
                                    670 ;src\common.c:124: }
    00000AF4                        671 00105$:
                         00000223   672 	C$common.c$125$3_0$186	= .
                                    673 	.globl	C$common.c$125$3_0$186
                                    674 ;src\common.c:125: performantdelay(frames);
    00000AF4 C5               [16]  675 	push	bc
    00000AF5 79               [ 4]  676 	ld	a, c
    00000AF6 CD D1 08         [24]  677 	call	_performantdelay
    00000AF9 C1               [12]  678 	pop	bc
                         00000229   679 	C$common.c$104$2_0$185	= .
                                    680 	.globl	C$common.c$104$2_0$185
                                    681 ;src\common.c:104: for (uint8_t i = 0; i < 4; i++)
    00000AFA 04               [ 4]  682 	inc	b
                         0000022A   683 	C$common.c$127$2_0$185	= .
                                    684 	.globl	C$common.c$127$2_0$185
                                    685 ;src\common.c:127: }
                         0000022A   686 	C$common.c$127$2_0$185	= .
                                    687 	.globl	C$common.c$127$2_0$185
                         0000022A   688 	XG$fadeToBlack$0$0	= .
                                    689 	.globl	XG$fadeToBlack$0$0
    00000AFB 18 BA            [12]  690 	jr	00108$
                         0000022C   691 	G$fadeFromBlack$0$0	= .
                                    692 	.globl	G$fadeFromBlack$0$0
                         0000022C   693 	C$common.c$129$2_0$190	= .
                                    694 	.globl	C$common.c$129$2_0$190
                                    695 ;src\common.c:129: void fadeFromBlack(uint8_t frames) NONBANKED
                                    696 ;	---------------------------------
                                    697 ; Function fadeFromBlack
                                    698 ; ---------------------------------
    00000AFD                        699 _fadeFromBlack::
    00000AFD 4F               [ 4]  700 	ld	c, a
                         0000022D   701 	C$common.c$131$2_0$190	= .
                                    702 	.globl	C$common.c$131$2_0$190
                                    703 ;src\common.c:131: for (uint8_t i = 0; i < 4; i++)
    00000AFE 06 00            [ 8]  704 	ld	b, #0x00
    00000B00                        705 00108$:
    00000B00 78               [ 4]  706 	ld	a, b
    00000B01 D6 04            [ 8]  707 	sub	a, #0x04
    00000B03 D0               [20]  708 	ret	NC
                         00000233   709 	C$common.c$133$3_0$191	= .
                                    710 	.globl	C$common.c$133$3_0$191
                                    711 ;src\common.c:133: switch(i) 
    00000B04 78               [ 4]  712 	ld	a, b
    00000B05 B7               [ 4]  713 	or	a, a
    00000B06 28 0F            [12]  714 	jr	Z, 00101$
    00000B08 78               [ 4]  715 	ld	a, b
    00000B09 3D               [ 4]  716 	dec	a
    00000B0A 28 15            [12]  717 	jr	Z, 00102$
    00000B0C 78               [ 4]  718 	ld	a,b
    00000B0D FE 02            [ 8]  719 	cp	a,#0x02
    00000B0F 28 1A            [12]  720 	jr	Z, 00103$
    00000B11 D6 03            [ 8]  721 	sub	a, #0x03
    00000B13 28 20            [12]  722 	jr	Z, 00104$
    00000B15 18 26            [12]  723 	jr	00105$
                         00000246   724 	C$common.c$135$4_0$192	= .
                                    725 	.globl	C$common.c$135$4_0$192
                                    726 ;src\common.c:135: case 0: 
    00000B17                        727 00101$:
                         00000246   728 	C$common.c$136$4_0$192	= .
                                    729 	.globl	C$common.c$136$4_0$192
                                    730 ;src\common.c:136: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000B17 3E FE            [ 8]  731 	ld	a, #0xfe
    00000B19 E0 47            [12]  732 	ldh	(_BGP_REG + 0), a
                         0000024A   733 	C$common.c$137$4_0$192	= .
                                    734 	.globl	C$common.c$137$4_0$192
                                    735 ;src\common.c:137: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00000B1B 3E FE            [ 8]  736 	ld	a, #0xfe
    00000B1D E0 48            [12]  737 	ldh	(_OBP0_REG + 0), a
                         0000024E   738 	C$common.c$138$4_0$192	= .
                                    739 	.globl	C$common.c$138$4_0$192
                                    740 ;src\common.c:138: break;
    00000B1F 18 1C            [12]  741 	jr	00105$
                         00000250   742 	C$common.c$139$4_0$192	= .
                                    743 	.globl	C$common.c$139$4_0$192
                                    744 ;src\common.c:139: case 1: 
    00000B21                        745 00102$:
                         00000250   746 	C$common.c$140$4_0$192	= .
                                    747 	.globl	C$common.c$140$4_0$192
                                    748 ;src\common.c:140: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    00000B21 3E F9            [ 8]  749 	ld	a, #0xf9
    00000B23 E0 47            [12]  750 	ldh	(_BGP_REG + 0), a
                         00000254   751 	C$common.c$141$4_0$192	= .
                                    752 	.globl	C$common.c$141$4_0$192
                                    753 ;src\common.c:141: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
    00000B25 3E F9            [ 8]  754 	ld	a, #0xf9
    00000B27 E0 48            [12]  755 	ldh	(_OBP0_REG + 0), a
                         00000258   756 	C$common.c$142$4_0$192	= .
                                    757 	.globl	C$common.c$142$4_0$192
                                    758 ;src\common.c:142: break;
    00000B29 18 12            [12]  759 	jr	00105$
                         0000025A   760 	C$common.c$143$4_0$192	= .
                                    761 	.globl	C$common.c$143$4_0$192
                                    762 ;src\common.c:143: case 2:
    00000B2B                        763 00103$:
                         0000025A   764 	C$common.c$144$4_0$192	= .
                                    765 	.globl	C$common.c$144$4_0$192
                                    766 ;src\common.c:144: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B2B 3E E5            [ 8]  767 	ld	a, #0xe5
    00000B2D E0 47            [12]  768 	ldh	(_BGP_REG + 0), a
                         0000025E   769 	C$common.c$145$4_0$192	= .
                                    770 	.globl	C$common.c$145$4_0$192
                                    771 ;src\common.c:145: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B2F 3E E5            [ 8]  772 	ld	a, #0xe5
    00000B31 E0 48            [12]  773 	ldh	(_OBP0_REG + 0), a
                         00000262   774 	C$common.c$146$4_0$192	= .
                                    775 	.globl	C$common.c$146$4_0$192
                                    776 ;src\common.c:146: break;
    00000B33 18 08            [12]  777 	jr	00105$
                         00000264   778 	C$common.c$147$4_0$192	= .
                                    779 	.globl	C$common.c$147$4_0$192
                                    780 ;src\common.c:147: case 3:
    00000B35                        781 00104$:
                         00000264   782 	C$common.c$148$4_0$192	= .
                                    783 	.globl	C$common.c$148$4_0$192
                                    784 ;src\common.c:148: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B35 3E E4            [ 8]  785 	ld	a, #0xe4
    00000B37 E0 47            [12]  786 	ldh	(_BGP_REG + 0), a
                         00000268   787 	C$common.c$149$4_0$192	= .
                                    788 	.globl	C$common.c$149$4_0$192
                                    789 ;src\common.c:149: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B39 3E E4            [ 8]  790 	ld	a, #0xe4
    00000B3B E0 48            [12]  791 	ldh	(_OBP0_REG + 0), a
                         0000026C   792 	C$common.c$151$3_0$191	= .
                                    793 	.globl	C$common.c$151$3_0$191
                                    794 ;src\common.c:151: }
    00000B3D                        795 00105$:
                         0000026C   796 	C$common.c$152$3_0$191	= .
                                    797 	.globl	C$common.c$152$3_0$191
                                    798 ;src\common.c:152: performantdelay(frames);
    00000B3D C5               [16]  799 	push	bc
    00000B3E 79               [ 4]  800 	ld	a, c
    00000B3F CD D1 08         [24]  801 	call	_performantdelay
    00000B42 C1               [12]  802 	pop	bc
                         00000272   803 	C$common.c$131$2_0$190	= .
                                    804 	.globl	C$common.c$131$2_0$190
                                    805 ;src\common.c:131: for (uint8_t i = 0; i < 4; i++)
    00000B43 04               [ 4]  806 	inc	b
                         00000273   807 	C$common.c$154$2_0$190	= .
                                    808 	.globl	C$common.c$154$2_0$190
                                    809 ;src\common.c:154: }
                         00000273   810 	C$common.c$154$2_0$190	= .
                                    811 	.globl	C$common.c$154$2_0$190
                         00000273   812 	XG$fadeFromBlack$0$0	= .
                                    813 	.globl	XG$fadeFromBlack$0$0
    00000B44 18 BA            [12]  814 	jr	00108$
                         00000275   815 	G$fadeToWhite$0$0	= .
                                    816 	.globl	G$fadeToWhite$0$0
                         00000275   817 	C$common.c$156$2_0$195	= .
                                    818 	.globl	C$common.c$156$2_0$195
                                    819 ;src\common.c:156: void fadeToWhite(uint8_t frames) NONBANKED
                                    820 ;	---------------------------------
                                    821 ; Function fadeToWhite
                                    822 ; ---------------------------------
    00000B46                        823 _fadeToWhite::
    00000B46 4F               [ 4]  824 	ld	c, a
                         00000276   825 	C$common.c$158$2_0$195	= .
                                    826 	.globl	C$common.c$158$2_0$195
                                    827 ;src\common.c:158: for (uint8_t i = 0; i < 5; i++)
    00000B47 06 00            [ 8]  828 	ld	b, #0x00
    00000B49                        829 00109$:
    00000B49 78               [ 4]  830 	ld	a, b
    00000B4A D6 05            [ 8]  831 	sub	a, #0x05
    00000B4C D0               [20]  832 	ret	NC
                         0000027C   833 	C$common.c$160$3_0$196	= .
                                    834 	.globl	C$common.c$160$3_0$196
                                    835 ;src\common.c:160: switch(i) 
    00000B4D 58               [ 4]  836 	ld	e, b
    00000B4E 16 00            [ 8]  837 	ld	d, #0x00
    00000B50 21 56 0B         [12]  838 	ld	hl, #00130$
    00000B53 19               [ 8]  839 	add	hl, de
    00000B54 19               [ 8]  840 	add	hl, de
                         00000284   841 	C$common.c$162$4_0$197	= .
                                    842 	.globl	C$common.c$162$4_0$197
                                    843 ;src\common.c:162: case 0: 
    00000B55 E9               [ 4]  844 	jp	(hl)
    00000B56                        845 00130$:
    00000B56 18 08            [12]  846 	jr	00101$
    00000B58 18 10            [12]  847 	jr	00102$
    00000B5A 18 18            [12]  848 	jr	00103$
    00000B5C 18 20            [12]  849 	jr	00104$
    00000B5E 18 28            [12]  850 	jr	00105$
    00000B60                        851 00101$:
                         0000028F   852 	C$common.c$163$4_0$197	= .
                                    853 	.globl	C$common.c$163$4_0$197
                                    854 ;src\common.c:163: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B60 3E E4            [ 8]  855 	ld	a, #0xe4
    00000B62 E0 47            [12]  856 	ldh	(_BGP_REG + 0), a
                         00000293   857 	C$common.c$164$4_0$197	= .
                                    858 	.globl	C$common.c$164$4_0$197
                                    859 ;src\common.c:164: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000B64 3E E4            [ 8]  860 	ld	a, #0xe4
    00000B66 E0 48            [12]  861 	ldh	(_OBP0_REG + 0), a
                         00000297   862 	C$common.c$165$4_0$197	= .
                                    863 	.globl	C$common.c$165$4_0$197
                                    864 ;src\common.c:165: break;
    00000B68 18 24            [12]  865 	jr	00106$
                         00000299   866 	C$common.c$166$4_0$197	= .
                                    867 	.globl	C$common.c$166$4_0$197
                                    868 ;src\common.c:166: case 1: 
    00000B6A                        869 00102$:
                         00000299   870 	C$common.c$167$4_0$197	= .
                                    871 	.globl	C$common.c$167$4_0$197
                                    872 ;src\common.c:167: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00000B6A 3E D4            [ 8]  873 	ld	a, #0xd4
    00000B6C E0 47            [12]  874 	ldh	(_BGP_REG + 0), a
                         0000029D   875 	C$common.c$168$4_0$197	= .
                                    876 	.globl	C$common.c$168$4_0$197
                                    877 ;src\common.c:168: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00000B6E 3E D5            [ 8]  878 	ld	a, #0xd5
    00000B70 E0 48            [12]  879 	ldh	(_OBP0_REG + 0), a
                         000002A1   880 	C$common.c$169$4_0$197	= .
                                    881 	.globl	C$common.c$169$4_0$197
                                    882 ;src\common.c:169: break;
    00000B72 18 1A            [12]  883 	jr	00106$
                         000002A3   884 	C$common.c$170$4_0$197	= .
                                    885 	.globl	C$common.c$170$4_0$197
                                    886 ;src\common.c:170: case 2:
    00000B74                        887 00103$:
                         000002A3   888 	C$common.c$171$4_0$197	= .
                                    889 	.globl	C$common.c$171$4_0$197
                                    890 ;src\common.c:171: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00000B74 3E 90            [ 8]  891 	ld	a, #0x90
    00000B76 E0 47            [12]  892 	ldh	(_BGP_REG + 0), a
                         000002A7   893 	C$common.c$172$4_0$197	= .
                                    894 	.globl	C$common.c$172$4_0$197
                                    895 ;src\common.c:172: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00000B78 3E 90            [ 8]  896 	ld	a, #0x90
    00000B7A E0 48            [12]  897 	ldh	(_OBP0_REG + 0), a
                         000002AB   898 	C$common.c$173$4_0$197	= .
                                    899 	.globl	C$common.c$173$4_0$197
                                    900 ;src\common.c:173: break;
    00000B7C 18 10            [12]  901 	jr	00106$
                         000002AD   902 	C$common.c$174$4_0$197	= .
                                    903 	.globl	C$common.c$174$4_0$197
                                    904 ;src\common.c:174: case 3:
    00000B7E                        905 00104$:
                         000002AD   906 	C$common.c$175$4_0$197	= .
                                    907 	.globl	C$common.c$175$4_0$197
                                    908 ;src\common.c:175: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    00000B7E 3E 40            [ 8]  909 	ld	a, #0x40
    00000B80 E0 47            [12]  910 	ldh	(_BGP_REG + 0), a
                         000002B1   911 	C$common.c$176$4_0$197	= .
                                    912 	.globl	C$common.c$176$4_0$197
                                    913 ;src\common.c:176: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    00000B82 3E 40            [ 8]  914 	ld	a, #0x40
    00000B84 E0 48            [12]  915 	ldh	(_OBP0_REG + 0), a
                         000002B5   916 	C$common.c$177$4_0$197	= .
                                    917 	.globl	C$common.c$177$4_0$197
                                    918 ;src\common.c:177: break;
    00000B86 18 06            [12]  919 	jr	00106$
                         000002B7   920 	C$common.c$178$4_0$197	= .
                                    921 	.globl	C$common.c$178$4_0$197
                                    922 ;src\common.c:178: case 4:
    00000B88                        923 00105$:
                         000002B7   924 	C$common.c$179$4_0$197	= .
                                    925 	.globl	C$common.c$179$4_0$197
                                    926 ;src\common.c:179: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
    00000B88 AF               [ 4]  927 	xor	a, a
    00000B89 E0 47            [12]  928 	ldh	(_BGP_REG + 0), a
                         000002BA   929 	C$common.c$180$4_0$197	= .
                                    930 	.globl	C$common.c$180$4_0$197
                                    931 ;src\common.c:180: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
    00000B8B AF               [ 4]  932 	xor	a, a
    00000B8C E0 48            [12]  933 	ldh	(_OBP0_REG + 0), a
                         000002BD   934 	C$common.c$182$3_0$196	= .
                                    935 	.globl	C$common.c$182$3_0$196
                                    936 ;src\common.c:182: }
    00000B8E                        937 00106$:
                         000002BD   938 	C$common.c$183$3_0$196	= .
                                    939 	.globl	C$common.c$183$3_0$196
                                    940 ;src\common.c:183: performantdelay(frames);
    00000B8E C5               [16]  941 	push	bc
    00000B8F 79               [ 4]  942 	ld	a, c
    00000B90 CD D1 08         [24]  943 	call	_performantdelay
    00000B93 C1               [12]  944 	pop	bc
                         000002C3   945 	C$common.c$158$2_0$195	= .
                                    946 	.globl	C$common.c$158$2_0$195
                                    947 ;src\common.c:158: for (uint8_t i = 0; i < 5; i++)
    00000B94 04               [ 4]  948 	inc	b
                         000002C4   949 	C$common.c$185$2_0$195	= .
                                    950 	.globl	C$common.c$185$2_0$195
                                    951 ;src\common.c:185: }
                         000002C4   952 	C$common.c$185$2_0$195	= .
                                    953 	.globl	C$common.c$185$2_0$195
                         000002C4   954 	XG$fadeToWhite$0$0	= .
                                    955 	.globl	XG$fadeToWhite$0$0
    00000B95 18 B2            [12]  956 	jr	00109$
                         000002C6   957 	G$fadeFromWhite$0$0	= .
                                    958 	.globl	G$fadeFromWhite$0$0
                         000002C6   959 	C$common.c$187$2_0$200	= .
                                    960 	.globl	C$common.c$187$2_0$200
                                    961 ;src\common.c:187: void fadeFromWhite(uint8_t frames) NONBANKED
                                    962 ;	---------------------------------
                                    963 ; Function fadeFromWhite
                                    964 ; ---------------------------------
    00000B97                        965 _fadeFromWhite::
    00000B97 4F               [ 4]  966 	ld	c, a
                         000002C7   967 	C$common.c$189$2_0$200	= .
                                    968 	.globl	C$common.c$189$2_0$200
                                    969 ;src\common.c:189: for (uint8_t i = 0; i < 4; i++)
    00000B98 06 00            [ 8]  970 	ld	b, #0x00
    00000B9A                        971 00108$:
    00000B9A 78               [ 4]  972 	ld	a, b
    00000B9B D6 04            [ 8]  973 	sub	a, #0x04
    00000B9D D0               [20]  974 	ret	NC
                         000002CD   975 	C$common.c$191$3_0$201	= .
                                    976 	.globl	C$common.c$191$3_0$201
                                    977 ;src\common.c:191: switch(i) 
    00000B9E 78               [ 4]  978 	ld	a, b
    00000B9F B7               [ 4]  979 	or	a, a
    00000BA0 28 0F            [12]  980 	jr	Z, 00101$
    00000BA2 78               [ 4]  981 	ld	a, b
    00000BA3 3D               [ 4]  982 	dec	a
    00000BA4 28 15            [12]  983 	jr	Z, 00102$
    00000BA6 78               [ 4]  984 	ld	a,b
    00000BA7 FE 02            [ 8]  985 	cp	a,#0x02
    00000BA9 28 1A            [12]  986 	jr	Z, 00103$
    00000BAB D6 03            [ 8]  987 	sub	a, #0x03
    00000BAD 28 20            [12]  988 	jr	Z, 00104$
    00000BAF 18 26            [12]  989 	jr	00105$
                         000002E0   990 	C$common.c$193$4_0$202	= .
                                    991 	.globl	C$common.c$193$4_0$202
                                    992 ;src\common.c:193: case 0: 
    00000BB1                        993 00101$:
                         000002E0   994 	C$common.c$194$4_0$202	= .
                                    995 	.globl	C$common.c$194$4_0$202
                                    996 ;src\common.c:194: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    00000BB1 3E 40            [ 8]  997 	ld	a, #0x40
    00000BB3 E0 47            [12]  998 	ldh	(_BGP_REG + 0), a
                         000002E4   999 	C$common.c$195$4_0$202	= .
                                   1000 	.globl	C$common.c$195$4_0$202
                                   1001 ;src\common.c:195: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
    00000BB5 3E 40            [ 8] 1002 	ld	a, #0x40
    00000BB7 E0 48            [12] 1003 	ldh	(_OBP0_REG + 0), a
                         000002E8  1004 	C$common.c$196$4_0$202	= .
                                   1005 	.globl	C$common.c$196$4_0$202
                                   1006 ;src\common.c:196: break;
    00000BB9 18 1C            [12] 1007 	jr	00105$
                         000002EA  1008 	C$common.c$197$4_0$202	= .
                                   1009 	.globl	C$common.c$197$4_0$202
                                   1010 ;src\common.c:197: case 1: 
    00000BBB                       1011 00102$:
                         000002EA  1012 	C$common.c$198$4_0$202	= .
                                   1013 	.globl	C$common.c$198$4_0$202
                                   1014 ;src\common.c:198: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00000BBB 3E 90            [ 8] 1015 	ld	a, #0x90
    00000BBD E0 47            [12] 1016 	ldh	(_BGP_REG + 0), a
                         000002EE  1017 	C$common.c$199$4_0$202	= .
                                   1018 	.globl	C$common.c$199$4_0$202
                                   1019 ;src\common.c:199: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
    00000BBF 3E 90            [ 8] 1020 	ld	a, #0x90
    00000BC1 E0 48            [12] 1021 	ldh	(_OBP0_REG + 0), a
                         000002F2  1022 	C$common.c$200$4_0$202	= .
                                   1023 	.globl	C$common.c$200$4_0$202
                                   1024 ;src\common.c:200: break;
    00000BC3 18 12            [12] 1025 	jr	00105$
                         000002F4  1026 	C$common.c$201$4_0$202	= .
                                   1027 	.globl	C$common.c$201$4_0$202
                                   1028 ;src\common.c:201: case 2:
    00000BC5                       1029 00103$:
                         000002F4  1030 	C$common.c$202$4_0$202	= .
                                   1031 	.globl	C$common.c$202$4_0$202
                                   1032 ;src\common.c:202: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00000BC5 3E D4            [ 8] 1033 	ld	a, #0xd4
    00000BC7 E0 47            [12] 1034 	ldh	(_BGP_REG + 0), a
                         000002F8  1035 	C$common.c$203$4_0$202	= .
                                   1036 	.globl	C$common.c$203$4_0$202
                                   1037 ;src\common.c:203: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
    00000BC9 3E D5            [ 8] 1038 	ld	a, #0xd5
    00000BCB E0 48            [12] 1039 	ldh	(_OBP0_REG + 0), a
                         000002FC  1040 	C$common.c$204$4_0$202	= .
                                   1041 	.globl	C$common.c$204$4_0$202
                                   1042 ;src\common.c:204: break;
    00000BCD 18 08            [12] 1043 	jr	00105$
                         000002FE  1044 	C$common.c$205$4_0$202	= .
                                   1045 	.globl	C$common.c$205$4_0$202
                                   1046 ;src\common.c:205: case 3:
    00000BCF                       1047 00104$:
                         000002FE  1048 	C$common.c$206$4_0$202	= .
                                   1049 	.globl	C$common.c$206$4_0$202
                                   1050 ;src\common.c:206: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000BCF 3E E4            [ 8] 1051 	ld	a, #0xe4
    00000BD1 E0 47            [12] 1052 	ldh	(_BGP_REG + 0), a
                         00000302  1053 	C$common.c$207$4_0$202	= .
                                   1054 	.globl	C$common.c$207$4_0$202
                                   1055 ;src\common.c:207: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000BD3 3E E4            [ 8] 1056 	ld	a, #0xe4
    00000BD5 E0 48            [12] 1057 	ldh	(_OBP0_REG + 0), a
                         00000306  1058 	C$common.c$209$3_0$201	= .
                                   1059 	.globl	C$common.c$209$3_0$201
                                   1060 ;src\common.c:209: }
    00000BD7                       1061 00105$:
                         00000306  1062 	C$common.c$210$3_0$201	= .
                                   1063 	.globl	C$common.c$210$3_0$201
                                   1064 ;src\common.c:210: performantdelay(frames);
    00000BD7 C5               [16] 1065 	push	bc
    00000BD8 79               [ 4] 1066 	ld	a, c
    00000BD9 CD D1 08         [24] 1067 	call	_performantdelay
    00000BDC C1               [12] 1068 	pop	bc
                         0000030C  1069 	C$common.c$189$2_0$200	= .
                                   1070 	.globl	C$common.c$189$2_0$200
                                   1071 ;src\common.c:189: for (uint8_t i = 0; i < 4; i++)
    00000BDD 04               [ 4] 1072 	inc	b
                         0000030D  1073 	C$common.c$212$2_0$200	= .
                                   1074 	.globl	C$common.c$212$2_0$200
                                   1075 ;src\common.c:212: }
                         0000030D  1076 	C$common.c$212$2_0$200	= .
                                   1077 	.globl	C$common.c$212$2_0$200
                         0000030D  1078 	XG$fadeFromWhite$0$0	= .
                                   1079 	.globl	XG$fadeFromWhite$0$0
    00000BDE 18 BA            [12] 1080 	jr	00108$
                         0000030F  1081 	G$InvertColor$0$0	= .
                                   1082 	.globl	G$InvertColor$0$0
                         0000030F  1083 	C$common.c$214$2_0$204	= .
                                   1084 	.globl	C$common.c$214$2_0$204
                                   1085 ;src\common.c:214: void InvertColor(void) NONBANKED
                                   1086 ;	---------------------------------
                                   1087 ; Function InvertColor
                                   1088 ; ---------------------------------
    00000BE0                       1089 _InvertColor::
                         0000030F  1090 	C$common.c$216$1_0$204	= .
                                   1091 	.globl	C$common.c$216$1_0$204
                                   1092 ;src\common.c:216: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
    00000BE0 3E 1B            [ 8] 1093 	ld	a, #0x1b
    00000BE2 E0 47            [12] 1094 	ldh	(_BGP_REG + 0), a
                         00000313  1095 	C$common.c$217$1_0$204	= .
                                   1096 	.globl	C$common.c$217$1_0$204
                                   1097 ;src\common.c:217: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
    00000BE4 3E 1B            [ 8] 1098 	ld	a, #0x1b
    00000BE6 E0 48            [12] 1099 	ldh	(_OBP0_REG + 0), a
                         00000317  1100 	C$common.c$218$1_0$204	= .
                                   1101 	.globl	C$common.c$218$1_0$204
                                   1102 ;src\common.c:218: }
                         00000317  1103 	C$common.c$218$1_0$204	= .
                                   1104 	.globl	C$common.c$218$1_0$204
                         00000317  1105 	XG$InvertColor$0$0	= .
                                   1106 	.globl	XG$InvertColor$0$0
    00000BE8 C9               [16] 1107 	ret
                         00000318  1108 	G$ResetColor$0$0	= .
                                   1109 	.globl	G$ResetColor$0$0
                         00000318  1110 	C$common.c$220$1_0$206	= .
                                   1111 	.globl	C$common.c$220$1_0$206
                                   1112 ;src\common.c:220: void ResetColor(void) NONBANKED
                                   1113 ;	---------------------------------
                                   1114 ; Function ResetColor
                                   1115 ; ---------------------------------
    00000BE9                       1116 _ResetColor::
                         00000318  1117 	C$common.c$222$1_0$206	= .
                                   1118 	.globl	C$common.c$222$1_0$206
                                   1119 ;src\common.c:222: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000BE9 3E E4            [ 8] 1120 	ld	a, #0xe4
    00000BEB E0 47            [12] 1121 	ldh	(_BGP_REG + 0), a
                         0000031C  1122 	C$common.c$223$1_0$206	= .
                                   1123 	.globl	C$common.c$223$1_0$206
                                   1124 ;src\common.c:223: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
    00000BED 3E E4            [ 8] 1125 	ld	a, #0xe4
    00000BEF E0 48            [12] 1126 	ldh	(_OBP0_REG + 0), a
                         00000320  1127 	C$common.c$224$1_0$206	= .
                                   1128 	.globl	C$common.c$224$1_0$206
                                   1129 ;src\common.c:224: }
                         00000320  1130 	C$common.c$224$1_0$206	= .
                                   1131 	.globl	C$common.c$224$1_0$206
                         00000320  1132 	XG$ResetColor$0$0	= .
                                   1133 	.globl	XG$ResetColor$0$0
    00000BF1 C9               [16] 1134 	ret
                         00000321  1135 	G$RandomNumber$0$0	= .
                                   1136 	.globl	G$RandomNumber$0$0
                         00000321  1137 	C$common.c$226$1_0$208	= .
                                   1138 	.globl	C$common.c$226$1_0$208
                                   1139 ;src\common.c:226: uint8_t RandomNumber(uint8_t min, uint8_t max) NONBANKED
                                   1140 ;	---------------------------------
                                   1141 ; Function RandomNumber
                                   1142 ; ---------------------------------
    00000BF2                       1143 _RandomNumber::
    00000BF2 6F               [ 4] 1144 	ld	l, a
                                   1145 ;	spillPairReg hl
                                   1146 ;	spillPairReg hl
                         00000322  1147 	C$common.c$229$1_0$208	= .
                                   1148 	.globl	C$common.c$229$1_0$208
                                   1149 ;src\common.c:229: return min + (DIV_REG % (max - min)); 
    00000BF3 16 00            [ 8] 1150 	ld	d, #0x00
    00000BF5 4D               [ 4] 1151 	ld	c, l
    00000BF6 06 00            [ 8] 1152 	ld	b, #0x00
    00000BF8 7B               [ 4] 1153 	ld	a, e
    00000BF9 91               [ 4] 1154 	sub	a, c
    00000BFA 4F               [ 4] 1155 	ld	c, a
    00000BFB 7A               [ 4] 1156 	ld	a, d
    00000BFC 98               [ 4] 1157 	sbc	a, b
    00000BFD 47               [ 4] 1158 	ld	b, a
    00000BFE F0 04            [12] 1159 	ldh	a, (_DIV_REG + 0)
    00000C00 5F               [ 4] 1160 	ld	e, a
    00000C01 16 00            [ 8] 1161 	ld	d, #0x00
    00000C03 E5               [16] 1162 	push	hl
    00000C04 CD E5 07         [24] 1163 	call	__modsint
    00000C07 E1               [12] 1164 	pop	hl
    00000C08 79               [ 4] 1165 	ld	a, c
    00000C09 85               [ 4] 1166 	add	a, l
                         00000339  1167 	C$common.c$230$1_0$208	= .
                                   1168 	.globl	C$common.c$230$1_0$208
                                   1169 ;src\common.c:230: }
                         00000339  1170 	C$common.c$230$1_0$208	= .
                                   1171 	.globl	C$common.c$230$1_0$208
                         00000339  1172 	XG$RandomNumber$0$0	= .
                                   1173 	.globl	XG$RandomNumber$0$0
    00000C0A C9               [16] 1174 	ret
                         0000033A  1175 	G$DrawWindow$0$0	= .
                                   1176 	.globl	G$DrawWindow$0$0
                         0000033A  1177 	C$common.c$232$1_0$210	= .
                                   1178 	.globl	C$common.c$232$1_0$210
                                   1179 ;src\common.c:232: void DrawWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height, BOOLEAN bkg) NONBANKED
                                   1180 ;	---------------------------------
                                   1181 ; Function DrawWindow
                                   1182 ; ---------------------------------
    00000C0B                       1183 _DrawWindow::
    00000C0B E8 F4            [16] 1184 	add	sp, #-12
    00000C0D F8 0A            [12] 1185 	ldhl	sp,	#10
    00000C0F 32               [ 8] 1186 	ld	(hl-), a
    00000C10 73               [ 8] 1187 	ld	(hl), e
                         00000340  1188 	C$common.c$237$1_0$210	= .
                                   1189 	.globl	C$common.c$237$1_0$210
                                   1190 ;src\common.c:237: if (bkg)
    00000C11 F8 10            [12] 1191 	ldhl	sp,	#16
    00000C13 7E               [ 8] 1192 	ld	a, (hl)
    00000C14 B7               [ 4] 1193 	or	a, a
    00000C15 28 0E            [12] 1194 	jr	Z, 00102$
                         00000346  1195 	C$common.c$239$2_0$211	= .
                                   1196 	.globl	C$common.c$239$2_0$211
                                   1197 ;src\common.c:239: vramAddr = get_bkg_xy_addr(x,y); 
    00000C17 F8 09            [12] 1198 	ldhl	sp,	#9
    00000C19 2A               [ 8] 1199 	ld	a, (hl+)
    00000C1A 57               [ 4] 1200 	ld	d, a
    00000C1B 5E               [ 8] 1201 	ld	e, (hl)
    00000C1C D5               [16] 1202 	push	de
    00000C1D CD 8B 06         [24] 1203 	call	_get_bkg_xy_addr
    00000C20 E1               [12] 1204 	pop	hl
    00000C21 4B               [ 4] 1205 	ld	c, e
    00000C22 42               [ 4] 1206 	ld	b, d
    00000C23 18 0C            [12] 1207 	jr	00103$
    00000C25                       1208 00102$:
                         00000354  1209 	C$common.c$242$2_0$212	= .
                                   1210 	.globl	C$common.c$242$2_0$212
                                   1211 ;src\common.c:242: vramAddr = get_win_xy_addr(x,y);
    00000C25 F8 09            [12] 1212 	ldhl	sp,	#9
    00000C27 2A               [ 8] 1213 	ld	a, (hl+)
    00000C28 57               [ 4] 1214 	ld	d, a
    00000C29 5E               [ 8] 1215 	ld	e, (hl)
    00000C2A D5               [16] 1216 	push	de
    00000C2B CD 83 06         [24] 1217 	call	_get_win_xy_addr
    00000C2E E1               [12] 1218 	pop	hl
    00000C2F 4B               [ 4] 1219 	ld	c, e
    00000C30 42               [ 4] 1220 	ld	b, d
    00000C31                       1221 00103$:
                         00000360  1222 	C$common.c$244$1_0$210	= .
                                   1223 	.globl	C$common.c$244$1_0$210
                                   1224 ;src\common.c:244: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
    00000C31 59               [ 4] 1225 	ld	e, c
    00000C32 50               [ 4] 1226 	ld	d, b
    00000C33 03               [ 8] 1227 	inc	bc
    00000C34 3E 2D            [ 8] 1228 	ld	a, #0x2d
    00000C36 CD 42 06         [24] 1229 	call	_set_vram_byte
                         00000368  1230 	C$common.c$245$1_0$210	= .
                                   1231 	.globl	C$common.c$245$1_0$210
                                   1232 ;src\common.c:245: for (uint8_t i = 0; i < width - 2; i++)
    00000C39 F8 0B            [12] 1233 	ldhl	sp,	#11
    00000C3B 36 00            [12] 1234 	ld	(hl), #0x00
    00000C3D                       1235 00115$:
    00000C3D F8 0E            [12] 1236 	ldhl	sp,	#14
    00000C3F 7E               [ 8] 1237 	ld	a, (hl)
    00000C40 F8 07            [12] 1238 	ldhl	sp,	#7
    00000C42 22               [ 8] 1239 	ld	(hl+), a
    00000C43 AF               [ 4] 1240 	xor	a, a
    00000C44 32               [ 8] 1241 	ld	(hl-), a
    00000C45 2A               [ 8] 1242 	ld	a, (hl+)
    00000C46 5F               [ 4] 1243 	ld	e, a
    00000C47 56               [ 8] 1244 	ld	d, (hl)
    00000C48 21 02 00         [12] 1245 	ld	hl, #0x0002
    00000C4B 7B               [ 4] 1246 	ld	a, e
    00000C4C 95               [ 4] 1247 	sub	a, l
    00000C4D 5F               [ 4] 1248 	ld	e, a
    00000C4E 7A               [ 4] 1249 	ld	a, d
    00000C4F 9C               [ 4] 1250 	sbc	a, h
    00000C50 F8 01            [12] 1251 	ldhl	sp,	#1
    00000C52 32               [ 8] 1252 	ld	(hl-), a
    00000C53 73               [ 8] 1253 	ld	(hl), e
    00000C54 F8 0B            [12] 1254 	ldhl	sp,	#11
    00000C56 7E               [ 8] 1255 	ld	a, (hl)
    00000C57 F8 07            [12] 1256 	ldhl	sp,	#7
    00000C59 22               [ 8] 1257 	ld	(hl+), a
    00000C5A 36 00            [12] 1258 	ld	(hl), #0x00
    00000C5C F8 07            [12] 1259 	ldhl	sp,	#7
    00000C5E 5D               [ 4] 1260 	ld	e, l
    00000C5F 54               [ 4] 1261 	ld	d, h
    00000C60 F8 00            [12] 1262 	ldhl	sp,	#0
    00000C62 1A               [ 8] 1263 	ld	a, (de)
    00000C63 13               [ 8] 1264 	inc	de
    00000C64 96               [ 8] 1265 	sub	a, (hl)
    00000C65 23               [ 8] 1266 	inc	hl
    00000C66 1A               [ 8] 1267 	ld	a, (de)
    00000C67 9E               [ 8] 1268 	sbc	a, (hl)
    00000C68 1A               [ 8] 1269 	ld	a, (de)
    00000C69 57               [ 4] 1270 	ld	d, a
    00000C6A CB 7E            [12] 1271 	bit	7, (hl)
    00000C6C 28 07            [12] 1272 	jr	Z, 00209$
    00000C6E CB 7A            [ 8] 1273 	bit	7, d
    00000C70 20 08            [12] 1274 	jr	NZ, 00210$
    00000C72 BF               [ 4] 1275 	cp	a, a
    00000C73 18 05            [12] 1276 	jr	00210$
    00000C75                       1277 00209$:
    00000C75 CB 7A            [ 8] 1278 	bit	7, d
    00000C77 28 01            [12] 1279 	jr	Z, 00210$
    00000C79 37               [ 4] 1280 	scf
    00000C7A                       1281 00210$:
    00000C7A 30 0D            [12] 1282 	jr	NC, 00104$
                         000003AB  1283 	C$common.c$247$3_0$214	= .
                                   1284 	.globl	C$common.c$247$3_0$214
                                   1285 ;src\common.c:247: set_vram_byte(vramAddr++,304u);         // TOP SIDE
    00000C7C 59               [ 4] 1286 	ld	e, c
    00000C7D 50               [ 4] 1287 	ld	d, b
    00000C7E 03               [ 8] 1288 	inc	bc
    00000C7F 3E 30            [ 8] 1289 	ld	a, #0x30
    00000C81 CD 42 06         [24] 1290 	call	_set_vram_byte
                         000003B3  1291 	C$common.c$245$2_0$213	= .
                                   1292 	.globl	C$common.c$245$2_0$213
                                   1293 ;src\common.c:245: for (uint8_t i = 0; i < width - 2; i++)
    00000C84 F8 0B            [12] 1294 	ldhl	sp,	#11
    00000C86 34               [12] 1295 	inc	(hl)
    00000C87 18 B4            [12] 1296 	jr	00115$
    00000C89                       1297 00104$:
                         000003B8  1298 	C$common.c$249$1_0$210	= .
                                   1299 	.globl	C$common.c$249$1_0$210
                                   1300 ;src\common.c:249: set_vram_byte(vramAddr++,306u);             // TOP RIGHT CORNER
    00000C89 3E 32            [ 8] 1301 	ld	a, #0x32
    00000C8B 59               [ 4] 1302 	ld	e, c
    00000C8C 50               [ 4] 1303 	ld	d, b
    00000C8D CD 42 06         [24] 1304 	call	_set_vram_byte
                         000003BF  1305 	C$common.c$253$1_0$210	= .
                                   1306 	.globl	C$common.c$253$1_0$210
                                   1307 ;src\common.c:253: vramAddr = get_bkg_xy_addr(x,y+1); 
    00000C90 F8 09            [12] 1308 	ldhl	sp,	#9
    00000C92 7E               [ 8] 1309 	ld	a, (hl)
    00000C93 F8 02            [12] 1310 	ldhl	sp,	#2
    00000C95 77               [ 8] 1311 	ld	(hl), a
    00000C96 46               [ 8] 1312 	ld	b, (hl)
    00000C97 04               [ 4] 1313 	inc	b
                         000003C7  1314 	C$common.c$251$1_0$210	= .
                                   1315 	.globl	C$common.c$251$1_0$210
                                   1316 ;src\common.c:251: if (bkg) 
    00000C98 F8 10            [12] 1317 	ldhl	sp,	#16
    00000C9A 7E               [ 8] 1318 	ld	a, (hl)
    00000C9B B7               [ 4] 1319 	or	a, a
    00000C9C 28 12            [12] 1320 	jr	Z, 00106$
                         000003CD  1321 	C$common.c$253$2_0$215	= .
                                   1322 	.globl	C$common.c$253$2_0$215
                                   1323 ;src\common.c:253: vramAddr = get_bkg_xy_addr(x,y+1); 
    00000C9E C5               [16] 1324 	push	bc
    00000C9F 33               [ 8] 1325 	inc	sp
    00000CA0 F8 0B            [12] 1326 	ldhl	sp,	#11
    00000CA2 7E               [ 8] 1327 	ld	a, (hl)
    00000CA3 F5               [16] 1328 	push	af
    00000CA4 33               [ 8] 1329 	inc	sp
    00000CA5 CD 8B 06         [24] 1330 	call	_get_bkg_xy_addr
    00000CA8 E1               [12] 1331 	pop	hl
    00000CA9 F8 03            [12] 1332 	ldhl	sp,	#3
    00000CAB 7B               [ 4] 1333 	ld	a, e
    00000CAC 22               [ 8] 1334 	ld	(hl+), a
    00000CAD 72               [ 8] 1335 	ld	(hl), d
    00000CAE 18 10            [12] 1336 	jr	00136$
    00000CB0                       1337 00106$:
                         000003DF  1338 	C$common.c$256$2_0$216	= .
                                   1339 	.globl	C$common.c$256$2_0$216
                                   1340 ;src\common.c:256: vramAddr = get_win_xy_addr(x,y+1);
    00000CB0 C5               [16] 1341 	push	bc
    00000CB1 33               [ 8] 1342 	inc	sp
    00000CB2 F8 0B            [12] 1343 	ldhl	sp,	#11
    00000CB4 7E               [ 8] 1344 	ld	a, (hl)
    00000CB5 F5               [16] 1345 	push	af
    00000CB6 33               [ 8] 1346 	inc	sp
    00000CB7 CD 83 06         [24] 1347 	call	_get_win_xy_addr
    00000CBA E1               [12] 1348 	pop	hl
    00000CBB F8 03            [12] 1349 	ldhl	sp,	#3
    00000CBD 7B               [ 4] 1350 	ld	a, e
    00000CBE 22               [ 8] 1351 	ld	(hl+), a
    00000CBF 72               [ 8] 1352 	ld	(hl), d
                         000003EF  1353 	C$common.c$258$1_0$210	= .
                                   1354 	.globl	C$common.c$258$1_0$210
                                   1355 ;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
    00000CC0                       1356 00136$:
    00000CC0 F8 0B            [12] 1357 	ldhl	sp,	#11
    00000CC2 36 00            [12] 1358 	ld	(hl), #0x00
    00000CC4                       1359 00121$:
    00000CC4 F8 0F            [12] 1360 	ldhl	sp,	#15
    00000CC6 7E               [ 8] 1361 	ld	a, (hl)
    00000CC7 F8 07            [12] 1362 	ldhl	sp,	#7
    00000CC9 22               [ 8] 1363 	ld	(hl+), a
    00000CCA AF               [ 4] 1364 	xor	a, a
    00000CCB 32               [ 8] 1365 	ld	(hl-), a
    00000CCC 2A               [ 8] 1366 	ld	a, (hl+)
    00000CCD 5F               [ 4] 1367 	ld	e, a
    00000CCE 56               [ 8] 1368 	ld	d, (hl)
    00000CCF 21 02 00         [12] 1369 	ld	hl, #0x0002
    00000CD2 7B               [ 4] 1370 	ld	a, e
    00000CD3 95               [ 4] 1371 	sub	a, l
    00000CD4 5F               [ 4] 1372 	ld	e, a
    00000CD5 7A               [ 4] 1373 	ld	a, d
    00000CD6 9C               [ 4] 1374 	sbc	a, h
    00000CD7 F8 06            [12] 1375 	ldhl	sp,	#6
    00000CD9 32               [ 8] 1376 	ld	(hl-), a
    00000CDA 73               [ 8] 1377 	ld	(hl), e
    00000CDB F8 0B            [12] 1378 	ldhl	sp,	#11
    00000CDD 7E               [ 8] 1379 	ld	a, (hl)
    00000CDE F8 07            [12] 1380 	ldhl	sp,	#7
    00000CE0 22               [ 8] 1381 	ld	(hl+), a
    00000CE1 36 00            [12] 1382 	ld	(hl), #0x00
                         00000412  1383 	C$common.c$244$1_0$210	= .
                                   1384 	.globl	C$common.c$244$1_0$210
                                   1385 ;src\common.c:244: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
    00000CE3 F8 03            [12] 1386 	ldhl	sp,	#3
    00000CE5 2A               [ 8] 1387 	ld	a, (hl+)
    00000CE6 4F               [ 4] 1388 	ld	c, a
    00000CE7 46               [ 8] 1389 	ld	b, (hl)
    00000CE8 03               [ 8] 1390 	inc	bc
                         00000418  1391 	C$common.c$258$2_0$217	= .
                                   1392 	.globl	C$common.c$258$2_0$217
                                   1393 ;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
    00000CE9 F8 07            [12] 1394 	ldhl	sp,	#7
    00000CEB 5D               [ 4] 1395 	ld	e, l
    00000CEC 54               [ 4] 1396 	ld	d, h
    00000CED F8 05            [12] 1397 	ldhl	sp,	#5
    00000CEF 1A               [ 8] 1398 	ld	a, (de)
    00000CF0 13               [ 8] 1399 	inc	de
    00000CF1 96               [ 8] 1400 	sub	a, (hl)
    00000CF2 23               [ 8] 1401 	inc	hl
    00000CF3 1A               [ 8] 1402 	ld	a, (de)
    00000CF4 9E               [ 8] 1403 	sbc	a, (hl)
    00000CF5 1A               [ 8] 1404 	ld	a, (de)
    00000CF6 57               [ 4] 1405 	ld	d, a
    00000CF7 CB 7E            [12] 1406 	bit	7, (hl)
    00000CF9 28 07            [12] 1407 	jr	Z, 00211$
    00000CFB CB 7A            [ 8] 1408 	bit	7, d
    00000CFD 20 08            [12] 1409 	jr	NZ, 00212$
    00000CFF BF               [ 4] 1410 	cp	a, a
    00000D00 18 05            [12] 1411 	jr	00212$
    00000D02                       1412 00211$:
    00000D02 CB 7A            [ 8] 1413 	bit	7, d
    00000D04 28 01            [12] 1414 	jr	Z, 00212$
    00000D06 37               [ 4] 1415 	scf
    00000D07                       1416 00212$:
    00000D07 D2 8A 0D         [16] 1417 	jp	NC, 00112$
                         00000439  1418 	C$common.c$260$3_0$218	= .
                                   1419 	.globl	C$common.c$260$3_0$218
                                   1420 ;src\common.c:260: set_vram_byte(vramAddr++,302u); // LEFT SIDE
    00000D0A F8 03            [12] 1421 	ldhl	sp,	#3
    00000D0C 2A               [ 8] 1422 	ld	a, (hl+)
    00000D0D 5F               [ 4] 1423 	ld	e, a
    00000D0E 56               [ 8] 1424 	ld	d, (hl)
    00000D0F 3E 2E            [ 8] 1425 	ld	a, #0x2e
    00000D11 CD 42 06         [24] 1426 	call	_set_vram_byte
                         00000443  1427 	C$common.c$261$1_0$210	= .
                                   1428 	.globl	C$common.c$261$1_0$210
                                   1429 ;src\common.c:261: for (uint8_t i = 0; i < width - 2; i++)
    00000D14 F8 08            [12] 1430 	ldhl	sp,	#8
    00000D16 36 00            [12] 1431 	ld	(hl), #0x00
    00000D18                       1432 00118$:
    00000D18 F8 08            [12] 1433 	ldhl	sp,	#8
    00000D1A 3A               [ 8] 1434 	ld	a, (hl-)
    00000D1B 2B               [ 8] 1435 	dec	hl
    00000D1C 22               [ 8] 1436 	ld	(hl+), a
    00000D1D 36 00            [12] 1437 	ld	(hl), #0x00
    00000D1F F8 06            [12] 1438 	ldhl	sp,	#6
    00000D21 5D               [ 4] 1439 	ld	e, l
    00000D22 54               [ 4] 1440 	ld	d, h
    00000D23 F8 00            [12] 1441 	ldhl	sp,	#0
    00000D25 1A               [ 8] 1442 	ld	a, (de)
    00000D26 13               [ 8] 1443 	inc	de
    00000D27 96               [ 8] 1444 	sub	a, (hl)
    00000D28 23               [ 8] 1445 	inc	hl
    00000D29 1A               [ 8] 1446 	ld	a, (de)
    00000D2A 9E               [ 8] 1447 	sbc	a, (hl)
    00000D2B 1A               [ 8] 1448 	ld	a, (de)
    00000D2C 57               [ 4] 1449 	ld	d, a
    00000D2D CB 7E            [12] 1450 	bit	7, (hl)
    00000D2F 28 07            [12] 1451 	jr	Z, 00213$
    00000D31 CB 7A            [ 8] 1452 	bit	7, d
    00000D33 20 08            [12] 1453 	jr	NZ, 00214$
    00000D35 BF               [ 4] 1454 	cp	a, a
    00000D36 18 05            [12] 1455 	jr	00214$
    00000D38                       1456 00213$:
    00000D38 CB 7A            [ 8] 1457 	bit	7, d
    00000D3A 28 01            [12] 1458 	jr	Z, 00214$
    00000D3C 37               [ 4] 1459 	scf
    00000D3D                       1460 00214$:
    00000D3D 30 0C            [12] 1461 	jr	NC, 00108$
                         0000046E  1462 	C$common.c$263$5_0$220	= .
                                   1463 	.globl	C$common.c$263$5_0$220
                                   1464 ;src\common.c:263: set_vram_byte(vramAddr++,256u);
    00000D3F 59               [ 4] 1465 	ld	e, c
    00000D40 50               [ 4] 1466 	ld	d, b
    00000D41 03               [ 8] 1467 	inc	bc
    00000D42 AF               [ 4] 1468 	xor	a, a
    00000D43 CD 42 06         [24] 1469 	call	_set_vram_byte
                         00000475  1470 	C$common.c$261$4_0$219	= .
                                   1471 	.globl	C$common.c$261$4_0$219
                                   1472 ;src\common.c:261: for (uint8_t i = 0; i < width - 2; i++)
    00000D46 F8 08            [12] 1473 	ldhl	sp,	#8
    00000D48 34               [12] 1474 	inc	(hl)
    00000D49 18 CD            [12] 1475 	jr	00118$
    00000D4B                       1476 00108$:
                         0000047A  1477 	C$common.c$265$3_0$218	= .
                                   1478 	.globl	C$common.c$265$3_0$218
                                   1479 ;src\common.c:265: set_vram_byte(vramAddr++,307u); // RIGHT SIDE
    00000D4B 3E 33            [ 8] 1480 	ld	a, #0x33
    00000D4D 59               [ 4] 1481 	ld	e, c
    00000D4E 50               [ 4] 1482 	ld	d, b
    00000D4F CD 42 06         [24] 1483 	call	_set_vram_byte
                         00000481  1484 	C$common.c$268$1_0$210	= .
                                   1485 	.globl	C$common.c$268$1_0$210
                                   1486 ;src\common.c:268: vramAddr = get_bkg_xy_addr(x,y+2+j); 
    00000D52 F8 0B            [12] 1487 	ldhl	sp,	#11
    00000D54 7E               [ 8] 1488 	ld	a, (hl)
    00000D55 F8 02            [12] 1489 	ldhl	sp,	#2
    00000D57 4E               [ 8] 1490 	ld	c, (hl)
    00000D58 0C               [ 4] 1491 	inc	c
    00000D59 0C               [ 4] 1492 	inc	c
    00000D5A 81               [ 4] 1493 	add	a, c
    00000D5B 47               [ 4] 1494 	ld	b, a
                         0000048B  1495 	C$common.c$266$3_0$218	= .
                                   1496 	.globl	C$common.c$266$3_0$218
                                   1497 ;src\common.c:266: if (bkg)
    00000D5C F8 10            [12] 1498 	ldhl	sp,	#16
    00000D5E 7E               [ 8] 1499 	ld	a, (hl)
    00000D5F B7               [ 4] 1500 	or	a, a
    00000D60 28 12            [12] 1501 	jr	Z, 00110$
                         00000491  1502 	C$common.c$268$4_0$221	= .
                                   1503 	.globl	C$common.c$268$4_0$221
                                   1504 ;src\common.c:268: vramAddr = get_bkg_xy_addr(x,y+2+j); 
    00000D62 C5               [16] 1505 	push	bc
    00000D63 33               [ 8] 1506 	inc	sp
    00000D64 F8 0B            [12] 1507 	ldhl	sp,	#11
    00000D66 7E               [ 8] 1508 	ld	a, (hl)
    00000D67 F5               [16] 1509 	push	af
    00000D68 33               [ 8] 1510 	inc	sp
    00000D69 CD 8B 06         [24] 1511 	call	_get_bkg_xy_addr
    00000D6C E1               [12] 1512 	pop	hl
    00000D6D F8 03            [12] 1513 	ldhl	sp,	#3
    00000D6F 7B               [ 4] 1514 	ld	a, e
    00000D70 22               [ 8] 1515 	ld	(hl+), a
    00000D71 72               [ 8] 1516 	ld	(hl), d
    00000D72 18 10            [12] 1517 	jr	00122$
    00000D74                       1518 00110$:
                         000004A3  1519 	C$common.c$271$4_0$222	= .
                                   1520 	.globl	C$common.c$271$4_0$222
                                   1521 ;src\common.c:271: vramAddr = get_win_xy_addr(x,y+2+j);
    00000D74 C5               [16] 1522 	push	bc
    00000D75 33               [ 8] 1523 	inc	sp
    00000D76 F8 0B            [12] 1524 	ldhl	sp,	#11
    00000D78 7E               [ 8] 1525 	ld	a, (hl)
    00000D79 F5               [16] 1526 	push	af
    00000D7A 33               [ 8] 1527 	inc	sp
    00000D7B CD 83 06         [24] 1528 	call	_get_win_xy_addr
    00000D7E E1               [12] 1529 	pop	hl
    00000D7F F8 03            [12] 1530 	ldhl	sp,	#3
    00000D81 7B               [ 4] 1531 	ld	a, e
    00000D82 22               [ 8] 1532 	ld	(hl+), a
    00000D83 72               [ 8] 1533 	ld	(hl), d
    00000D84                       1534 00122$:
                         000004B3  1535 	C$common.c$258$2_0$217	= .
                                   1536 	.globl	C$common.c$258$2_0$217
                                   1537 ;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
    00000D84 F8 0B            [12] 1538 	ldhl	sp,	#11
    00000D86 34               [12] 1539 	inc	(hl)
    00000D87 C3 C4 0C         [16] 1540 	jp	00121$
    00000D8A                       1541 00112$:
                         000004B9  1542 	C$common.c$274$1_0$210	= .
                                   1543 	.globl	C$common.c$274$1_0$210
                                   1544 ;src\common.c:274: set_vram_byte(vramAddr++,303u);             // TOP LEFT CORNER
    00000D8A F8 03            [12] 1545 	ldhl	sp,	#3
    00000D8C 2A               [ 8] 1546 	ld	a, (hl+)
    00000D8D 5F               [ 4] 1547 	ld	e, a
    00000D8E 56               [ 8] 1548 	ld	d, (hl)
    00000D8F 3E 2F            [ 8] 1549 	ld	a, #0x2f
    00000D91 CD 42 06         [24] 1550 	call	_set_vram_byte
                         000004C3  1551 	C$common.c$275$1_0$210	= .
                                   1552 	.globl	C$common.c$275$1_0$210
                                   1553 ;src\common.c:275: for (uint8_t i = 0; i < width - 2; i++)
    00000D94 F8 0B            [12] 1554 	ldhl	sp,	#11
    00000D96 36 00            [12] 1555 	ld	(hl), #0x00
    00000D98                       1556 00124$:
    00000D98 F8 0B            [12] 1557 	ldhl	sp,	#11
    00000D9A 7E               [ 8] 1558 	ld	a, (hl)
    00000D9B F8 07            [12] 1559 	ldhl	sp,	#7
    00000D9D 22               [ 8] 1560 	ld	(hl+), a
    00000D9E 36 00            [12] 1561 	ld	(hl), #0x00
    00000DA0 F8 07            [12] 1562 	ldhl	sp,	#7
    00000DA2 5D               [ 4] 1563 	ld	e, l
    00000DA3 54               [ 4] 1564 	ld	d, h
    00000DA4 F8 00            [12] 1565 	ldhl	sp,	#0
    00000DA6 1A               [ 8] 1566 	ld	a, (de)
    00000DA7 13               [ 8] 1567 	inc	de
    00000DA8 96               [ 8] 1568 	sub	a, (hl)
    00000DA9 23               [ 8] 1569 	inc	hl
    00000DAA 1A               [ 8] 1570 	ld	a, (de)
    00000DAB 9E               [ 8] 1571 	sbc	a, (hl)
    00000DAC 1A               [ 8] 1572 	ld	a, (de)
    00000DAD 57               [ 4] 1573 	ld	d, a
    00000DAE CB 7E            [12] 1574 	bit	7, (hl)
    00000DB0 28 07            [12] 1575 	jr	Z, 00215$
    00000DB2 CB 7A            [ 8] 1576 	bit	7, d
    00000DB4 20 08            [12] 1577 	jr	NZ, 00216$
    00000DB6 BF               [ 4] 1578 	cp	a, a
    00000DB7 18 05            [12] 1579 	jr	00216$
    00000DB9                       1580 00215$:
    00000DB9 CB 7A            [ 8] 1581 	bit	7, d
    00000DBB 28 01            [12] 1582 	jr	Z, 00216$
    00000DBD 37               [ 4] 1583 	scf
    00000DBE                       1584 00216$:
    00000DBE 30 0D            [12] 1585 	jr	NC, 00113$
                         000004EF  1586 	C$common.c$277$3_0$224	= .
                                   1587 	.globl	C$common.c$277$3_0$224
                                   1588 ;src\common.c:277: set_vram_byte(vramAddr++,305u);         // TOP SIDE
    00000DC0 59               [ 4] 1589 	ld	e, c
    00000DC1 50               [ 4] 1590 	ld	d, b
    00000DC2 03               [ 8] 1591 	inc	bc
    00000DC3 3E 31            [ 8] 1592 	ld	a, #0x31
    00000DC5 CD 42 06         [24] 1593 	call	_set_vram_byte
                         000004F7  1594 	C$common.c$275$2_0$223	= .
                                   1595 	.globl	C$common.c$275$2_0$223
                                   1596 ;src\common.c:275: for (uint8_t i = 0; i < width - 2; i++)
    00000DC8 F8 0B            [12] 1597 	ldhl	sp,	#11
    00000DCA 34               [12] 1598 	inc	(hl)
    00000DCB 18 CB            [12] 1599 	jr	00124$
    00000DCD                       1600 00113$:
                         000004FC  1601 	C$common.c$279$1_0$210	= .
                                   1602 	.globl	C$common.c$279$1_0$210
                                   1603 ;src\common.c:279: set_vram_byte(vramAddr++,308u);             // TOP RIGHT CORNER
    00000DCD 3E 34            [ 8] 1604 	ld	a, #0x34
    00000DCF 59               [ 4] 1605 	ld	e, c
    00000DD0 50               [ 4] 1606 	ld	d, b
    00000DD1 CD 42 06         [24] 1607 	call	_set_vram_byte
                         00000503  1608 	C$common.c$280$1_0$210	= .
                                   1609 	.globl	C$common.c$280$1_0$210
                                   1610 ;src\common.c:280: }
    00000DD4 E8 0C            [16] 1611 	add	sp, #12
    00000DD6 E1               [12] 1612 	pop	hl
    00000DD7 E8 03            [16] 1613 	add	sp, #3
    00000DD9 E9               [ 4] 1614 	jp	(hl)
                                   1615 	.area _HOME
                                   1616 ;--------------------------------------------------------
                                   1617 ; code
                                   1618 ;--------------------------------------------------------
                                   1619 	.area _CODE_0
                                   1620 	.area _CODE_0
                                   1621 	.area _INITIALIZER
                         00000000  1622 Fcommon$__xinit_joypadPrevious$0_0$0 == .
    00001CE0                       1623 __xinit__joypadPrevious:
    00001CE0 00                    1624 	.db #0x00	; 0
                         00000001  1625 Fcommon$__xinit_joypadCurrent$0_0$0 == .
    00001CE1                       1626 __xinit__joypadCurrent:
    00001CE1 00                    1627 	.db #0x00	; 0
                         00000002  1628 Fcommon$__xinit_index$0_0$0 == .
    00001CE2                       1629 __xinit__index:
    00001CE2 00                    1630 	.db #0x00	;  0
                                   1631 	.area _CABS (ABS)
