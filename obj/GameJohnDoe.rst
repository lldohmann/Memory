                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module GameJohnDoe
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl b_GameJohnDoeUpdate
                                     12 	.globl _GameJohnDoeUpdate
                                     13 	.globl b___func_GameJohnDoeUpdate
                                     14 	.globl ___func_GameJohnDoeUpdate
                                     15 	.globl b_GameJohnDoeSetup
                                     16 	.globl _GameJohnDoeSetup
                                     17 	.globl b___func_GameJohnDoeSetup
                                     18 	.globl ___func_GameJohnDoeSetup
                                     19 	.globl _scanline_isr
                                     20 	.globl b___func_const_bank_ID_John
                                     21 	.globl ___func_const_bank_ID_John
                                     22 	.globl _ResetColor
                                     23 	.globl _InvertColor
                                     24 	.globl _fadeFromWhite
                                     25 	.globl _fadeToWhite
                                     26 	.globl _fadeFromBlack
                                     27 	.globl _fadeToBlack
                                     28 	.globl _set_bkg_tiles
                                     29 	.globl _set_bkg_data
                                     30 	.globl _set_interrupts
                                     31 	.globl _joypad
                                     32 	.globl _scanline_offsets
                                     33 	.globl _invert_b
                                     34 	.globl _wabble
                                     35 	.globl _scanline_normal_tbl
                                     36 	.globl _scanline_offsets_tbl
                                     37 	.globl _const_bank_ID_John
                                     38 ;--------------------------------------------------------
                                     39 ; special function registers
                                     40 ;--------------------------------------------------------
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area _DATA
                                     45 ;--------------------------------------------------------
                                     46 ; ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area _INITIALIZED
                         00000000    49 G$wabble$0_0$0==.
    0000CD7C                         50 _wabble::
    0000CD7C                         51 	.ds 1
                         00000001    52 G$invert_b$0_0$0==.
    0000CD7D                         53 _invert_b::
    0000CD7D                         54 	.ds 1
                         00000002    55 G$scanline_offsets$0_0$0==.
    0000CD7E                         56 _scanline_offsets::
    0000CD7E                         57 	.ds 2
                                     58 ;--------------------------------------------------------
                                     59 ; absolute external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area _DABS (ABS)
                                     62 ;--------------------------------------------------------
                                     63 ; global & static initialisations
                                     64 ;--------------------------------------------------------
                                     65 	.area _HOME
                                     66 	.area _GSINIT
                                     67 	.area _GSFINAL
                                     68 	.area _GSINIT
                                     69 ;--------------------------------------------------------
                                     70 ; Home
                                     71 ;--------------------------------------------------------
                                     72 	.area _HOME
                                     73 	.area _HOME
                                     74 ;--------------------------------------------------------
                                     75 ; code
                                     76 ;--------------------------------------------------------
                                     77 	.area _CODE_1
                         00000000    78 	G$__func_const_bank_ID_John$0$0	= .
                                     79 	.globl	G$__func_const_bank_ID_John$0$0
                         00000000    80 	C$GameJohnDoe.c$10$0_0$137	= .
                                     81 	.globl	C$GameJohnDoe.c$10$0_0$137
                                     82 ;src\GameJohnDoe.c:10: BANKREF(const_bank_ID_John)
                                     83 ;	---------------------------------
                                     84 ; Function __func_const_bank_ID_John
                                     85 ; ---------------------------------
                         00000001    86 	b___func_const_bank_ID_John	= 1
    0001548A                         87 ___func_const_bank_ID_John::
                                     88 	.local b___func_const_bank_ID_John 
                         00000001    89 	___bank_const_bank_ID_John = b___func_const_bank_ID_John 
                                     90 	.globl ___bank_const_bank_ID_John 
                         00000000    91 	G$scanline_isr$0$0	= .
                                     92 	.globl	G$scanline_isr$0$0
                         00000000    93 	C$GameJohnDoe.c$21$1_0$139	= .
                                     94 	.globl	C$GameJohnDoe.c$21$1_0$139
                                     95 ;src\GameJohnDoe.c:21: void scanline_isr(void) CRITICAL INTERRUPT {
                                     96 ;	---------------------------------
                                     97 ; Function scanline_isr
                                     98 ; ---------------------------------
    0001548A                         99 _scanline_isr::
    0001548A F5               [16]  100 	push	af
    0001548B C5               [16]  101 	push bc
    0001548C D5               [16]  102 	push de
    0001548D E5               [16]  103 	push hl
                         00000004   104 	C$GameJohnDoe.c$22$1_0$139	= .
                                    105 	.globl	C$GameJohnDoe.c$22$1_0$139
                                    106 ;src\GameJohnDoe.c:22: SCX_REG = scanline_offsets[LY_REG & (uint8_t)7];
    0001548E F0 44            [12]  107 	ldh	a, (_LY_REG + 0)
    00015490 E6 07            [ 8]  108 	and	a, #0x07
    00015492 4F               [ 4]  109 	ld	c, a
    00015493 21 7E CD         [12]  110 	ld	hl, #_scanline_offsets
    00015496 2A               [ 8]  111 	ld	a, (hl+)
    00015497 81               [ 4]  112 	add	a, c
    00015498 4F               [ 4]  113 	ld	c, a
    00015499 7E               [ 8]  114 	ld	a, (hl)
    0001549A CE 00            [ 8]  115 	adc	a, #0x00
    0001549C 47               [ 4]  116 	ld	b, a
    0001549D 0A               [ 8]  117 	ld	a, (bc)
    0001549E E0 43            [12]  118 	ldh	(_SCX_REG + 0), a
                         00000016   119 	C$GameJohnDoe.c$23$1_0$139	= .
                                    120 	.globl	C$GameJohnDoe.c$23$1_0$139
                                    121 ;src\GameJohnDoe.c:23: }
    000154A0 E1               [12]  122 	pop	hl
    000154A1 D1               [12]  123 	pop de
    000154A2 C1               [12]  124 	pop bc
    000154A3 F1               [12]  125 	pop af
                         0000001A   126 	C$GameJohnDoe.c$23$1_0$139	= .
                                    127 	.globl	C$GameJohnDoe.c$23$1_0$139
                         0000001A   128 	XG$scanline_isr$0$0	= .
                                    129 	.globl	XG$scanline_isr$0$0
    000154A4 D9               [16]  130 	reti
                         0000001B   131 G$const_bank_ID_John$0_0$0 == .
    000154A5                        132 _const_bank_ID_John:
    000154A5 01                     133 	.db #0x01	; 1
                         0000001C   134 G$scanline_offsets_tbl$0_0$0 == .
    000154A6                        135 _scanline_offsets_tbl:
    000154A6 00                     136 	.db #0x00	; 0
    000154A7 01                     137 	.db #0x01	; 1
    000154A8 02                     138 	.db #0x02	; 2
    000154A9 03                     139 	.db #0x03	; 3
    000154AA 03                     140 	.db #0x03	; 3
    000154AB 02                     141 	.db #0x02	; 2
    000154AC 01                     142 	.db #0x01	; 1
    000154AD 00                     143 	.db #0x00	; 0
    000154AE 00                     144 	.db #0x00	; 0
    000154AF 01                     145 	.db #0x01	; 1
    000154B0 02                     146 	.db #0x02	; 2
    000154B1 03                     147 	.db #0x03	; 3
    000154B2 03                     148 	.db #0x03	; 3
    000154B3 02                     149 	.db #0x02	; 2
    000154B4 01                     150 	.db #0x01	; 1
    000154B5 00                     151 	.db #0x00	; 0
                         0000002C   152 G$scanline_normal_tbl$0_0$0 == .
    000154B6                        153 _scanline_normal_tbl:
    000154B6 00                     154 	.db #0x00	; 0
    000154B7 00                     155 	.db #0x00	; 0
    000154B8 00                     156 	.db #0x00	; 0
    000154B9 00                     157 	.db #0x00	; 0
    000154BA 00                     158 	.db #0x00	; 0
    000154BB 00                     159 	.db #0x00	; 0
    000154BC 00                     160 	.db #0x00	; 0
    000154BD 00                     161 	.db #0x00	; 0
    000154BE 00                     162 	.db #0x00	; 0
    000154BF 00                     163 	.db #0x00	; 0
    000154C0 00                     164 	.db #0x00	; 0
    000154C1 00                     165 	.db #0x00	; 0
    000154C2 00                     166 	.db #0x00	; 0
    000154C3 00                     167 	.db #0x00	; 0
    000154C4 00                     168 	.db #0x00	; 0
    000154C5 00                     169 	.db #0x00	; 0
                         0000003C   170 	G$__func_GameJohnDoeSetup$0$0	= .
                                    171 	.globl	G$__func_GameJohnDoeSetup$0$0
                         0000003C   172 	C$GameJohnDoe.c$33$1_0$141	= .
                                    173 	.globl	C$GameJohnDoe.c$33$1_0$141
                                    174 ;src\GameJohnDoe.c:33: BANKREF(GameJohnDoeSetup)
                                    175 ;	---------------------------------
                                    176 ; Function __func_GameJohnDoeSetup
                                    177 ; ---------------------------------
                         00000001   178 	b___func_GameJohnDoeSetup	= 1
    000154C6                        179 ___func_GameJohnDoeSetup::
                                    180 	.local b___func_GameJohnDoeSetup 
                         00000001   181 	___bank_GameJohnDoeSetup = b___func_GameJohnDoeSetup 
                                    182 	.globl ___bank_GameJohnDoeSetup 
                         0000003C   183 	G$GameJohnDoeSetup$0$0	= .
                                    184 	.globl	G$GameJohnDoeSetup$0$0
                         0000003C   185 	C$GameJohnDoe.c$34$1_0$143	= .
                                    186 	.globl	C$GameJohnDoe.c$34$1_0$143
                                    187 ;src\GameJohnDoe.c:34: void GameJohnDoeSetup(void) BANKED
                                    188 ;	---------------------------------
                                    189 ; Function GameJohnDoeSetup
                                    190 ; ---------------------------------
                         00000001   191 	b_GameJohnDoeSetup	= 1
    000154C6                        192 _GameJohnDoeSetup::
                                    193 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    000154C6 AF               [ 4]  194 	xor	a, a
    000154C7 E0 43            [12]  195 	ldh	(_SCX_REG + 0), a
    000154C9 AF               [ 4]  196 	xor	a, a
    000154CA E0 42            [12]  197 	ldh	(_SCY_REG + 0), a
                         00000042   198 	C$GameJohnDoe.c$37$1_0$143	= .
                                    199 	.globl	C$GameJohnDoe.c$37$1_0$143
                                    200 ;src\GameJohnDoe.c:37: set_bkg_data(0, 79, JohnDoe_Tiles);
    000154CC 11 8A 4F         [12]  201 	ld	de, #_JohnDoe_Tiles
    000154CF D5               [16]  202 	push	de
    000154D0 21 00 4F         [12]  203 	ld	hl, #0x4f00
    000154D3 E5               [16]  204 	push	hl
    000154D4 CD 85 0E         [24]  205 	call	_set_bkg_data
    000154D7 E8 04            [16]  206 	add	sp, #4
                         0000004F   207 	C$GameJohnDoe.c$38$1_0$143	= .
                                    208 	.globl	C$GameJohnDoe.c$38$1_0$143
                                    209 ;src\GameJohnDoe.c:38: set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
    000154D9 11 22 4E         [12]  210 	ld	de, #_JohnDoe_Map
    000154DC D5               [16]  211 	push	de
    000154DD 21 14 12         [12]  212 	ld	hl, #0x1214
    000154E0 E5               [16]  213 	push	hl
    000154E1 AF               [ 4]  214 	xor	a, a
    000154E2 0F               [ 4]  215 	rrca
    000154E3 F5               [16]  216 	push	af
    000154E4 CD CC 0F         [24]  217 	call	_set_bkg_tiles
    000154E7 E8 06            [16]  218 	add	sp, #6
                         0000005F   219 	C$GameJohnDoe.c$39$1_0$143	= .
                                    220 	.globl	C$GameJohnDoe.c$39$1_0$143
                                    221 ;src\GameJohnDoe.c:39: SHOW_BKG;
    000154E9 F0 40            [12]  222 	ldh	a, (_LCDC_REG + 0)
    000154EB F6 01            [ 8]  223 	or	a, #0x01
    000154ED E0 40            [12]  224 	ldh	(_LCDC_REG + 0), a
                         00000065   225 	C$GameJohnDoe.c$40$1_0$143	= .
                                    226 	.globl	C$GameJohnDoe.c$40$1_0$143
                                    227 ;src\GameJohnDoe.c:40: fadeFromBlack(10);
    000154EF 3E 0A            [ 8]  228 	ld	a, #0x0a
                         00000067   229 	C$GameJohnDoe.c$41$1_0$143	= .
                                    230 	.globl	C$GameJohnDoe.c$41$1_0$143
                                    231 ;src\GameJohnDoe.c:41: }
                         00000067   232 	C$GameJohnDoe.c$41$1_0$143	= .
                                    233 	.globl	C$GameJohnDoe.c$41$1_0$143
                         00000067   234 	XG$GameJohnDoeSetup$0$0	= .
                                    235 	.globl	XG$GameJohnDoeSetup$0$0
    000154F1 C3 FD 0A         [16]  236 	jp	_fadeFromBlack
                         0000006A   237 	G$__func_GameJohnDoeUpdate$0$0	= .
                                    238 	.globl	G$__func_GameJohnDoeUpdate$0$0
                         0000006A   239 	C$GameJohnDoe.c$43$1_0$148	= .
                                    240 	.globl	C$GameJohnDoe.c$43$1_0$148
                                    241 ;src\GameJohnDoe.c:43: BANKREF(GameJohnDoeUpdate)
                                    242 ;	---------------------------------
                                    243 ; Function __func_GameJohnDoeUpdate
                                    244 ; ---------------------------------
                         00000001   245 	b___func_GameJohnDoeUpdate	= 1
    000154F4                        246 ___func_GameJohnDoeUpdate::
                                    247 	.local b___func_GameJohnDoeUpdate 
                         00000001   248 	___bank_GameJohnDoeUpdate = b___func_GameJohnDoeUpdate 
                                    249 	.globl ___bank_GameJohnDoeUpdate 
                         0000006A   250 	G$GameJohnDoeUpdate$0$0	= .
                                    251 	.globl	G$GameJohnDoeUpdate$0$0
                         0000006A   252 	C$GameJohnDoe.c$44$1_0$150	= .
                                    253 	.globl	C$GameJohnDoe.c$44$1_0$150
                                    254 ;src\GameJohnDoe.c:44: uint8_t GameJohnDoeUpdate(void) BANKED
                                    255 ;	---------------------------------
                                    256 ; Function GameJohnDoeUpdate
                                    257 ; ---------------------------------
                         00000001   258 	b_GameJohnDoeUpdate	= 1
    000154F4                        259 _GameJohnDoeUpdate::
                         0000006A   260 	C$GameJohnDoe.c$46$1_0$150	= .
                                    261 	.globl	C$GameJohnDoe.c$46$1_0$150
                                    262 ;src\GameJohnDoe.c:46: joypadPrevious = joypadCurrent;
    000154F4 FA 6E CD         [16]  263 	ld	a, (#_joypadCurrent)
    000154F7 EA 6D CD         [16]  264 	ld	(#_joypadPrevious),a
                         00000070   265 	C$GameJohnDoe.c$47$1_0$150	= .
                                    266 	.globl	C$GameJohnDoe.c$47$1_0$150
                                    267 ;src\GameJohnDoe.c:47: joypadCurrent = joypad();
    000154FA CD 74 0F         [24]  268 	call	_joypad
    000154FD 21 6E CD         [12]  269 	ld	hl, #_joypadCurrent
    00015500 77               [ 8]  270 	ld	(hl), a
                         00000077   271 	C$GameJohnDoe.c$49$1_0$150	= .
                                    272 	.globl	C$GameJohnDoe.c$49$1_0$150
                                    273 ;src\GameJohnDoe.c:49: switch (joypadCurrent){
    00015501 7E               [ 8]  274 	ld	a, (hl)
    00015502 D6 10            [ 8]  275 	sub	a, #0x10
    00015504 28 38            [12]  276 	jr	Z, 00105$
    00015506 FA 6E CD         [16]  277 	ld	a, (#_joypadCurrent)
    00015509 D6 18            [ 8]  278 	sub	a, #0x18
    0001550B 28 17            [12]  279 	jr	Z, 00101$
    0001550D FA 6E CD         [16]  280 	ld	a, (#_joypadCurrent)
    00015510 D6 20            [ 8]  281 	sub	a, #0x20
    00015512 28 36            [12]  282 	jr	Z, 00106$
    00015514 FA 6E CD         [16]  283 	ld	a, (#_joypadCurrent)
    00015517 D6 40            [ 8]  284 	sub	a, #0x40
    00015519 28 58            [12]  285 	jr	Z, 00111$
    0001551B FA 6E CD         [16]  286 	ld	a, (#_joypadCurrent)
    0001551E D6 80            [ 8]  287 	sub	a, #0x80
    00015520 28 34            [12]  288 	jr	Z, 00107$
    00015522 18 57            [12]  289 	jr	00112$
                         0000009A   290 	C$GameJohnDoe.c$50$2_0$151	= .
                                    291 	.globl	C$GameJohnDoe.c$50$2_0$151
                                    292 ;src\GameJohnDoe.c:50: case J_DOWN|J_A:
    00015524                        293 00101$:
                         0000009A   294 	C$GameJohnDoe.c$51$2_0$151	= .
                                    295 	.globl	C$GameJohnDoe.c$51$2_0$151
                                    296 ;src\GameJohnDoe.c:51: if (invert_b == FALSE)
    00015524 FA 7D CD         [16]  297 	ld	a, (#_invert_b)
    00015527 B7               [ 4]  298 	or	a, a
    00015528 20 0A            [12]  299 	jr	NZ, 00103$
                         000000A0   300 	C$GameJohnDoe.c$53$3_0$152	= .
                                    301 	.globl	C$GameJohnDoe.c$53$3_0$152
                                    302 ;src\GameJohnDoe.c:53: InvertColor();
    0001552A CD E0 0B         [24]  303 	call	_InvertColor
                         000000A3   304 	C$GameJohnDoe.c$54$3_0$152	= .
                                    305 	.globl	C$GameJohnDoe.c$54$3_0$152
                                    306 ;src\GameJohnDoe.c:54: invert_b = TRUE;
    0001552D 21 7D CD         [12]  307 	ld	hl, #_invert_b
    00015530 36 01            [12]  308 	ld	(hl), #0x01
    00015532 18 66            [12]  309 	jr	00113$
    00015534                        310 00103$:
                         000000AA   311 	C$GameJohnDoe.c$57$3_0$153	= .
                                    312 	.globl	C$GameJohnDoe.c$57$3_0$153
                                    313 ;src\GameJohnDoe.c:57: ResetColor();
    00015534 CD E9 0B         [24]  314 	call	_ResetColor
                         000000AD   315 	C$GameJohnDoe.c$58$3_0$153	= .
                                    316 	.globl	C$GameJohnDoe.c$58$3_0$153
                                    317 ;src\GameJohnDoe.c:58: invert_b = FALSE;
    00015537 21 7D CD         [12]  318 	ld	hl, #_invert_b
    0001553A 36 00            [12]  319 	ld	(hl), #0x00
                         000000B2   320 	C$GameJohnDoe.c$60$2_0$151	= .
                                    321 	.globl	C$GameJohnDoe.c$60$2_0$151
                                    322 ;src\GameJohnDoe.c:60: break;
    0001553C 18 5C            [12]  323 	jr	00113$
                         000000B4   324 	C$GameJohnDoe.c$61$2_0$151	= .
                                    325 	.globl	C$GameJohnDoe.c$61$2_0$151
                                    326 ;src\GameJohnDoe.c:61: case J_A:
    0001553E                        327 00105$:
                         000000B4   328 	C$GameJohnDoe.c$62$2_0$151	= .
                                    329 	.globl	C$GameJohnDoe.c$62$2_0$151
                                    330 ;src\GameJohnDoe.c:62: fadeToBlack(10);
    0001553E 3E 0A            [ 8]  331 	ld	a, #0x0a
    00015540 CD B4 0A         [24]  332 	call	_fadeToBlack
                         000000B9   333 	C$GameJohnDoe.c$63$2_0$151	= .
                                    334 	.globl	C$GameJohnDoe.c$63$2_0$151
                                    335 ;src\GameJohnDoe.c:63: fadeFromBlack(10);
    00015543 3E 0A            [ 8]  336 	ld	a, #0x0a
    00015545 CD FD 0A         [24]  337 	call	_fadeFromBlack
                         000000BE   338 	C$GameJohnDoe.c$64$2_0$151	= .
                                    339 	.globl	C$GameJohnDoe.c$64$2_0$151
                                    340 ;src\GameJohnDoe.c:64: break;
    00015548 18 50            [12]  341 	jr	00113$
                         000000C0   342 	C$GameJohnDoe.c$65$2_0$151	= .
                                    343 	.globl	C$GameJohnDoe.c$65$2_0$151
                                    344 ;src\GameJohnDoe.c:65: case J_B:
    0001554A                        345 00106$:
                         000000C0   346 	C$GameJohnDoe.c$66$2_0$151	= .
                                    347 	.globl	C$GameJohnDoe.c$66$2_0$151
                                    348 ;src\GameJohnDoe.c:66: fadeToWhite(10);
    0001554A 3E 0A            [ 8]  349 	ld	a, #0x0a
    0001554C CD 46 0B         [24]  350 	call	_fadeToWhite
                         000000C5   351 	C$GameJohnDoe.c$67$2_0$151	= .
                                    352 	.globl	C$GameJohnDoe.c$67$2_0$151
                                    353 ;src\GameJohnDoe.c:67: fadeFromWhite(10);
    0001554F 3E 0A            [ 8]  354 	ld	a, #0x0a
    00015551 CD 97 0B         [24]  355 	call	_fadeFromWhite
                         000000CA   356 	C$GameJohnDoe.c$68$2_0$151	= .
                                    357 	.globl	C$GameJohnDoe.c$68$2_0$151
                                    358 ;src\GameJohnDoe.c:68: break;
    00015554 18 44            [12]  359 	jr	00113$
                         000000CC   360 	C$GameJohnDoe.c$69$2_0$151	= .
                                    361 	.globl	C$GameJohnDoe.c$69$2_0$151
                                    362 ;src\GameJohnDoe.c:69: case J_START:
    00015556                        363 00107$:
                         000000CC   364 	C$GameJohnDoe.c$70$2_0$151	= .
                                    365 	.globl	C$GameJohnDoe.c$70$2_0$151
                                    366 ;src\GameJohnDoe.c:70: if (wabble == FALSE)
    00015556 FA 7C CD         [16]  367 	ld	a, (#_wabble)
    00015559 B7               [ 4]  368 	or	a, a
    0001555A 20 10            [12]  369 	jr	NZ, 00109$
                         000000D2   370 	C$GameJohnDoe.c$73$3_0$154	= .
                                    371 	.globl	C$GameJohnDoe.c$73$3_0$154
                                    372 ;src\GameJohnDoe.c:73: STAT_REG = STATF_MODE00;
    0001555C 3E 08            [ 8]  373 	ld	a, #0x08
    0001555E E0 41            [12]  374 	ldh	(_STAT_REG + 0), a
                         000000D6   375 	C$GameJohnDoe.c$74$3_0$154	= .
                                    376 	.globl	C$GameJohnDoe.c$74$3_0$154
                                    377 ;src\GameJohnDoe.c:74: set_interrupts(VBL_IFLAG | LCD_IFLAG);
    00015560 3E 03            [ 8]  378 	ld	a, #0x03
    00015562 CD CC 00         [24]  379 	call	_set_interrupts
                         000000DB   380 	C$GameJohnDoe.c$76$3_0$154	= .
                                    381 	.globl	C$GameJohnDoe.c$76$3_0$154
                                    382 ;src\GameJohnDoe.c:76: wabble = TRUE;
    00015565 21 7C CD         [12]  383 	ld	hl, #_wabble
    00015568 36 01            [12]  384 	ld	(hl), #0x01
    0001556A 18 2E            [12]  385 	jr	00113$
    0001556C                        386 00109$:
                         000000E2   387 	C$GameJohnDoe.c$80$3_0$155	= .
                                    388 	.globl	C$GameJohnDoe.c$80$3_0$155
                                    389 ;src\GameJohnDoe.c:80: wabble = FALSE;
    0001556C 21 7C CD         [12]  390 	ld	hl, #_wabble
    0001556F 36 00            [12]  391 	ld	(hl), #0x00
                         000000E7   392 	C$GameJohnDoe.c$82$2_0$151	= .
                                    393 	.globl	C$GameJohnDoe.c$82$2_0$151
                                    394 ;src\GameJohnDoe.c:82: break;
    00015571 18 27            [12]  395 	jr	00113$
                         000000E9   396 	C$GameJohnDoe.c$83$2_0$151	= .
                                    397 	.globl	C$GameJohnDoe.c$83$2_0$151
                                    398 ;src\GameJohnDoe.c:83: case J_SELECT:
    00015573                        399 00111$:
                         000000E9   400 	C$GameJohnDoe.c$84$2_0$151	= .
                                    401 	.globl	C$GameJohnDoe.c$84$2_0$151
                                    402 ;src\GameJohnDoe.c:84: fadeToBlack(10);
    00015573 3E 0A            [ 8]  403 	ld	a, #0x0a
    00015575 CD B4 0A         [24]  404 	call	_fadeToBlack
                         000000EE   405 	C$GameJohnDoe.c$85$2_0$151	= .
                                    406 	.globl	C$GameJohnDoe.c$85$2_0$151
                                    407 ;src\GameJohnDoe.c:85: return GAMETITLE;
    00015578 3E 01            [ 8]  408 	ld	a, #0x01
    0001557A C9               [16]  409 	ret
                         000000F1   410 	C$GameJohnDoe.c$86$2_0$151	= .
                                    411 	.globl	C$GameJohnDoe.c$86$2_0$151
                                    412 ;src\GameJohnDoe.c:86: default:
    0001557B                        413 00112$:
                         000000F1   414 	C$GameJohnDoe.c$87$2_0$151	= .
                                    415 	.globl	C$GameJohnDoe.c$87$2_0$151
                                    416 ;src\GameJohnDoe.c:87: scanline_offsets = &scanline_offsets_tbl[(uint8_t)(sys_time >> 2) & 0x07u];
    0001557B 21 A3 C0         [12]  417 	ld	hl, #_sys_time
    0001557E 2A               [ 8]  418 	ld	a, (hl+)
    0001557F 4F               [ 4]  419 	ld	c, a
    00015580 46               [ 8]  420 	ld	b, (hl)
    00015581 CB 38            [ 8]  421 	srl	b
    00015583 CB 19            [ 8]  422 	rr	c
    00015585 CB 38            [ 8]  423 	srl	b
    00015587 CB 19            [ 8]  424 	rr	c
    00015589 79               [ 4]  425 	ld	a, c
    0001558A E6 07            [ 8]  426 	and	a, #0x07
    0001558C 06 00            [ 8]  427 	ld	b, #0x00
    0001558E C6 A6            [ 8]  428 	add	a, #<(_scanline_offsets_tbl)
    00015590 4F               [ 4]  429 	ld	c, a
    00015591 78               [ 4]  430 	ld	a, b
    00015592 CE 54            [ 8]  431 	adc	a, #>(_scanline_offsets_tbl)
    00015594 21 7E CD         [12]  432 	ld	hl, #_scanline_offsets
    00015597 71               [ 8]  433 	ld	(hl), c
    00015598 23               [ 8]  434 	inc	hl
    00015599 77               [ 8]  435 	ld	(hl), a
                         00000110   436 	C$GameJohnDoe.c$88$1_0$150	= .
                                    437 	.globl	C$GameJohnDoe.c$88$1_0$150
                                    438 ;src\GameJohnDoe.c:88: }
    0001559A                        439 00113$:
                         00000110   440 	C$GameJohnDoe.c$90$1_0$150	= .
                                    441 	.globl	C$GameJohnDoe.c$90$1_0$150
                                    442 ;src\GameJohnDoe.c:90: return GAMEJOHNDOE;
    0001559A 3E 03            [ 8]  443 	ld	a, #0x03
                         00000112   444 	C$GameJohnDoe.c$91$1_0$150	= .
                                    445 	.globl	C$GameJohnDoe.c$91$1_0$150
                                    446 ;src\GameJohnDoe.c:91: }
                         00000112   447 	C$GameJohnDoe.c$91$1_0$150	= .
                                    448 	.globl	C$GameJohnDoe.c$91$1_0$150
                         00000112   449 	XG$GameJohnDoeUpdate$0$0	= .
                                    450 	.globl	XG$GameJohnDoeUpdate$0$0
    0001559C C9               [16]  451 	ret
                                    452 	.area _CODE_1
                                    453 	.area _INITIALIZER
                         00000000   454 FGameJohnDoe$__xinit_wabble$0_0$0 == .
    00001CEF                        455 __xinit__wabble:
    00001CEF 00                     456 	.db #0x00	;  0
                         00000001   457 FGameJohnDoe$__xinit_invert_b$0_0$0 == .
    00001CF0                        458 __xinit__invert_b:
    00001CF0 00                     459 	.db #0x00	;  0
                         00000002   460 FGameJohnDoe$__xinit_scanline_offsets$0_0$0 == .
    00001CF1                        461 __xinit__scanline_offsets:
    00001CF1 A6 54                  462 	.dw _scanline_offsets_tbl
                                    463 	.area _CABS (ABS)
    00000048                        464 	.org 0x0048
                         00000048   465 FGameJohnDoe$__ISR_VECTOR_STAT$0_0$0 == .
    00000048                        466 ___ISR_VECTOR_STAT:
    00000048 C3                     467 	.db #0xc3	; 195
    00000049 8A 54                  468 	.dw _scanline_isr
