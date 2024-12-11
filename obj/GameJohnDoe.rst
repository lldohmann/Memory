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
                                     11 	.globl _GameJohnDoeUpdate
                                     12 	.globl _GameJohnDoeSetup
                                     13 	.globl _scanline_isr
                                     14 	.globl _ResetColor
                                     15 	.globl _InvertColor
                                     16 	.globl _fadeFromWhite
                                     17 	.globl _fadeToWhite
                                     18 	.globl _fadeFromBlack
                                     19 	.globl _fadeToBlack
                                     20 	.globl _set_bkg_tiles
                                     21 	.globl _set_bkg_data
                                     22 	.globl _set_interrupts
                                     23 	.globl _joypad
                                     24 	.globl _scanline_offsets
                                     25 	.globl _invert_b
                                     26 	.globl _wabble
                                     27 	.globl _scanline_normal_tbl
                                     28 	.globl _scanline_offsets_tbl
                                     29 ;--------------------------------------------------------
                                     30 ; special function registers
                                     31 ;--------------------------------------------------------
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area _DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area _INITIALIZED
                         00000000    40 G$wabble$0_0$0==.
    0000CD7C                         41 _wabble::
    0000CD7C                         42 	.ds 1
                         00000001    43 G$invert_b$0_0$0==.
    0000CD7D                         44 _invert_b::
    0000CD7D                         45 	.ds 1
                         00000002    46 G$scanline_offsets$0_0$0==.
    0000CD7E                         47 _scanline_offsets::
    0000CD7E                         48 	.ds 2
                                     49 ;--------------------------------------------------------
                                     50 ; absolute external ram data
                                     51 ;--------------------------------------------------------
                                     52 	.area _DABS (ABS)
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area _HOME
                                     57 	.area _GSINIT
                                     58 	.area _GSFINAL
                                     59 	.area _GSINIT
                                     60 ;--------------------------------------------------------
                                     61 ; Home
                                     62 ;--------------------------------------------------------
                                     63 	.area _HOME
                                     64 	.area _HOME
                                     65 ;--------------------------------------------------------
                                     66 ; code
                                     67 ;--------------------------------------------------------
                                     68 	.area _CODE
                         00000000    69 	G$scanline_isr$0$0	= .
                                     70 	.globl	G$scanline_isr$0$0
                         00000000    71 	C$GameJohnDoe.c$16$0_0$137	= .
                                     72 	.globl	C$GameJohnDoe.c$16$0_0$137
                                     73 ;src\GameJohnDoe.c:16: void scanline_isr(void) CRITICAL INTERRUPT {
                                     74 ;	---------------------------------
                                     75 ; Function scanline_isr
                                     76 ; ---------------------------------
    00003496                         77 _scanline_isr::
    00003496 F5               [16]   78 	push	af
    00003497 C5               [16]   79 	push bc
    00003498 D5               [16]   80 	push de
    00003499 E5               [16]   81 	push hl
                         00000004    82 	C$GameJohnDoe.c$17$1_0$137	= .
                                     83 	.globl	C$GameJohnDoe.c$17$1_0$137
                                     84 ;src\GameJohnDoe.c:17: SCX_REG = scanline_offsets[LY_REG & (uint8_t)7];
    0000349A F0 44            [12]   85 	ldh	a, (_LY_REG + 0)
    0000349C E6 07            [ 8]   86 	and	a, #0x07
    0000349E 4F               [ 4]   87 	ld	c, a
    0000349F 21 7E CD         [12]   88 	ld	hl, #_scanline_offsets
    000034A2 2A               [ 8]   89 	ld	a, (hl+)
    000034A3 81               [ 4]   90 	add	a, c
    000034A4 4F               [ 4]   91 	ld	c, a
    000034A5 7E               [ 8]   92 	ld	a, (hl)
    000034A6 CE 00            [ 8]   93 	adc	a, #0x00
    000034A8 47               [ 4]   94 	ld	b, a
    000034A9 0A               [ 8]   95 	ld	a, (bc)
    000034AA E0 43            [12]   96 	ldh	(_SCX_REG + 0), a
                         00000016    97 	C$GameJohnDoe.c$18$1_0$137	= .
                                     98 	.globl	C$GameJohnDoe.c$18$1_0$137
                                     99 ;src\GameJohnDoe.c:18: }
    000034AC E1               [12]  100 	pop	hl
    000034AD D1               [12]  101 	pop de
    000034AE C1               [12]  102 	pop bc
    000034AF F1               [12]  103 	pop af
                         0000001A   104 	C$GameJohnDoe.c$18$1_0$137	= .
                                    105 	.globl	C$GameJohnDoe.c$18$1_0$137
                         0000001A   106 	XG$scanline_isr$0$0	= .
                                    107 	.globl	XG$scanline_isr$0$0
    000034B0 D9               [16]  108 	reti
                         0000001B   109 G$scanline_offsets_tbl$0_0$0 == .
    000034B1                        110 _scanline_offsets_tbl:
    000034B1 00                     111 	.db #0x00	; 0
    000034B2 01                     112 	.db #0x01	; 1
    000034B3 02                     113 	.db #0x02	; 2
    000034B4 03                     114 	.db #0x03	; 3
    000034B5 03                     115 	.db #0x03	; 3
    000034B6 02                     116 	.db #0x02	; 2
    000034B7 01                     117 	.db #0x01	; 1
    000034B8 00                     118 	.db #0x00	; 0
    000034B9 00                     119 	.db #0x00	; 0
    000034BA 01                     120 	.db #0x01	; 1
    000034BB 02                     121 	.db #0x02	; 2
    000034BC 03                     122 	.db #0x03	; 3
    000034BD 03                     123 	.db #0x03	; 3
    000034BE 02                     124 	.db #0x02	; 2
    000034BF 01                     125 	.db #0x01	; 1
    000034C0 00                     126 	.db #0x00	; 0
                         0000002B   127 G$scanline_normal_tbl$0_0$0 == .
    000034C1                        128 _scanline_normal_tbl:
    000034C1 00                     129 	.db #0x00	; 0
    000034C2 00                     130 	.db #0x00	; 0
    000034C3 00                     131 	.db #0x00	; 0
    000034C4 00                     132 	.db #0x00	; 0
    000034C5 00                     133 	.db #0x00	; 0
    000034C6 00                     134 	.db #0x00	; 0
    000034C7 00                     135 	.db #0x00	; 0
    000034C8 00                     136 	.db #0x00	; 0
    000034C9 00                     137 	.db #0x00	; 0
    000034CA 00                     138 	.db #0x00	; 0
    000034CB 00                     139 	.db #0x00	; 0
    000034CC 00                     140 	.db #0x00	; 0
    000034CD 00                     141 	.db #0x00	; 0
    000034CE 00                     142 	.db #0x00	; 0
    000034CF 00                     143 	.db #0x00	; 0
    000034D0 00                     144 	.db #0x00	; 0
                         0000003B   145 	G$GameJohnDoeSetup$0$0	= .
                                    146 	.globl	G$GameJohnDoeSetup$0$0
                         0000003B   147 	C$GameJohnDoe.c$28$1_0$139	= .
                                    148 	.globl	C$GameJohnDoe.c$28$1_0$139
                                    149 ;src\GameJohnDoe.c:28: void GameJohnDoeSetup(void)
                                    150 ;	---------------------------------
                                    151 ; Function GameJohnDoeSetup
                                    152 ; ---------------------------------
    000034D1                        153 _GameJohnDoeSetup::
                                    154 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    000034D1 AF               [ 4]  155 	xor	a, a
    000034D2 E0 43            [12]  156 	ldh	(_SCX_REG + 0), a
    000034D4 AF               [ 4]  157 	xor	a, a
    000034D5 E0 42            [12]  158 	ldh	(_SCY_REG + 0), a
                         00000041   159 	C$GameJohnDoe.c$31$1_0$139	= .
                                    160 	.globl	C$GameJohnDoe.c$31$1_0$139
                                    161 ;src\GameJohnDoe.c:31: set_bkg_data(0, 79, JohnDoe_Tiles);
    000034D7 11 96 2F         [12]  162 	ld	de, #_JohnDoe_Tiles
    000034DA D5               [16]  163 	push	de
    000034DB 21 00 4F         [12]  164 	ld	hl, #0x4f00
    000034DE E5               [16]  165 	push	hl
    000034DF CD 08 63         [24]  166 	call	_set_bkg_data
    000034E2 E8 04            [16]  167 	add	sp, #4
                         0000004E   168 	C$GameJohnDoe.c$32$1_0$139	= .
                                    169 	.globl	C$GameJohnDoe.c$32$1_0$139
                                    170 ;src\GameJohnDoe.c:32: set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
    000034E4 11 2E 2E         [12]  171 	ld	de, #_JohnDoe_Map
    000034E7 D5               [16]  172 	push	de
    000034E8 21 14 12         [12]  173 	ld	hl, #0x1214
    000034EB E5               [16]  174 	push	hl
    000034EC AF               [ 4]  175 	xor	a, a
    000034ED 0F               [ 4]  176 	rrca
    000034EE F5               [16]  177 	push	af
    000034EF CD 35 64         [24]  178 	call	_set_bkg_tiles
    000034F2 E8 06            [16]  179 	add	sp, #6
                         0000005E   180 	C$GameJohnDoe.c$33$1_0$139	= .
                                    181 	.globl	C$GameJohnDoe.c$33$1_0$139
                                    182 ;src\GameJohnDoe.c:33: SHOW_BKG;
    000034F4 F0 40            [12]  183 	ldh	a, (_LCDC_REG + 0)
    000034F6 F6 01            [ 8]  184 	or	a, #0x01
    000034F8 E0 40            [12]  185 	ldh	(_LCDC_REG + 0), a
                         00000064   186 	C$GameJohnDoe.c$34$1_0$139	= .
                                    187 	.globl	C$GameJohnDoe.c$34$1_0$139
                                    188 ;src\GameJohnDoe.c:34: fadeFromBlack(10);
    000034FA 3E 0A            [ 8]  189 	ld	a, #0x0a
                         00000066   190 	C$GameJohnDoe.c$35$1_0$139	= .
                                    191 	.globl	C$GameJohnDoe.c$35$1_0$139
                                    192 ;src\GameJohnDoe.c:35: }
                         00000066   193 	C$GameJohnDoe.c$35$1_0$139	= .
                                    194 	.globl	C$GameJohnDoe.c$35$1_0$139
                         00000066   195 	XG$GameJohnDoeSetup$0$0	= .
                                    196 	.globl	XG$GameJohnDoeSetup$0$0
    000034FC C3 CA 26         [16]  197 	jp	_fadeFromBlack
                         00000069   198 	G$GameJohnDoeUpdate$0$0	= .
                                    199 	.globl	G$GameJohnDoeUpdate$0$0
                         00000069   200 	C$GameJohnDoe.c$37$1_0$144	= .
                                    201 	.globl	C$GameJohnDoe.c$37$1_0$144
                                    202 ;src\GameJohnDoe.c:37: uint8_t GameJohnDoeUpdate(void)
                                    203 ;	---------------------------------
                                    204 ; Function GameJohnDoeUpdate
                                    205 ; ---------------------------------
    000034FF                        206 _GameJohnDoeUpdate::
                         00000069   207 	C$GameJohnDoe.c$39$1_0$144	= .
                                    208 	.globl	C$GameJohnDoe.c$39$1_0$144
                                    209 ;src\GameJohnDoe.c:39: joypadPrevious = joypadCurrent;
    000034FF FA 6E CD         [16]  210 	ld	a, (#_joypadCurrent)
    00003502 EA 6D CD         [16]  211 	ld	(#_joypadPrevious),a
                         0000006F   212 	C$GameJohnDoe.c$40$1_0$144	= .
                                    213 	.globl	C$GameJohnDoe.c$40$1_0$144
                                    214 ;src\GameJohnDoe.c:40: joypadCurrent = joypad();
    00003505 CD F7 63         [24]  215 	call	_joypad
    00003508 21 6E CD         [12]  216 	ld	hl, #_joypadCurrent
    0000350B 77               [ 8]  217 	ld	(hl), a
                         00000076   218 	C$GameJohnDoe.c$42$1_0$144	= .
                                    219 	.globl	C$GameJohnDoe.c$42$1_0$144
                                    220 ;src\GameJohnDoe.c:42: switch (joypadCurrent){
    0000350C 7E               [ 8]  221 	ld	a, (hl)
    0000350D D6 10            [ 8]  222 	sub	a, #0x10
    0000350F 28 38            [12]  223 	jr	Z, 00105$
    00003511 FA 6E CD         [16]  224 	ld	a, (#_joypadCurrent)
    00003514 D6 18            [ 8]  225 	sub	a, #0x18
    00003516 28 17            [12]  226 	jr	Z, 00101$
    00003518 FA 6E CD         [16]  227 	ld	a, (#_joypadCurrent)
    0000351B D6 20            [ 8]  228 	sub	a, #0x20
    0000351D 28 36            [12]  229 	jr	Z, 00106$
    0000351F FA 6E CD         [16]  230 	ld	a, (#_joypadCurrent)
    00003522 D6 40            [ 8]  231 	sub	a, #0x40
    00003524 28 58            [12]  232 	jr	Z, 00111$
    00003526 FA 6E CD         [16]  233 	ld	a, (#_joypadCurrent)
    00003529 D6 80            [ 8]  234 	sub	a, #0x80
    0000352B 28 34            [12]  235 	jr	Z, 00107$
    0000352D 18 57            [12]  236 	jr	00112$
                         00000099   237 	C$GameJohnDoe.c$43$2_0$145	= .
                                    238 	.globl	C$GameJohnDoe.c$43$2_0$145
                                    239 ;src\GameJohnDoe.c:43: case J_DOWN|J_A:
    0000352F                        240 00101$:
                         00000099   241 	C$GameJohnDoe.c$44$2_0$145	= .
                                    242 	.globl	C$GameJohnDoe.c$44$2_0$145
                                    243 ;src\GameJohnDoe.c:44: if (invert_b == FALSE)
    0000352F FA 7D CD         [16]  244 	ld	a, (#_invert_b)
    00003532 B7               [ 4]  245 	or	a, a
    00003533 20 0A            [12]  246 	jr	NZ, 00103$
                         0000009F   247 	C$GameJohnDoe.c$46$3_0$146	= .
                                    248 	.globl	C$GameJohnDoe.c$46$3_0$146
                                    249 ;src\GameJohnDoe.c:46: InvertColor();
    00003535 CD AD 27         [24]  250 	call	_InvertColor
                         000000A2   251 	C$GameJohnDoe.c$47$3_0$146	= .
                                    252 	.globl	C$GameJohnDoe.c$47$3_0$146
                                    253 ;src\GameJohnDoe.c:47: invert_b = TRUE;
    00003538 21 7D CD         [12]  254 	ld	hl, #_invert_b
    0000353B 36 01            [12]  255 	ld	(hl), #0x01
    0000353D 18 66            [12]  256 	jr	00113$
    0000353F                        257 00103$:
                         000000A9   258 	C$GameJohnDoe.c$50$3_0$147	= .
                                    259 	.globl	C$GameJohnDoe.c$50$3_0$147
                                    260 ;src\GameJohnDoe.c:50: ResetColor();
    0000353F CD B6 27         [24]  261 	call	_ResetColor
                         000000AC   262 	C$GameJohnDoe.c$51$3_0$147	= .
                                    263 	.globl	C$GameJohnDoe.c$51$3_0$147
                                    264 ;src\GameJohnDoe.c:51: invert_b = FALSE;
    00003542 21 7D CD         [12]  265 	ld	hl, #_invert_b
    00003545 36 00            [12]  266 	ld	(hl), #0x00
                         000000B1   267 	C$GameJohnDoe.c$53$2_0$145	= .
                                    268 	.globl	C$GameJohnDoe.c$53$2_0$145
                                    269 ;src\GameJohnDoe.c:53: break;
    00003547 18 5C            [12]  270 	jr	00113$
                         000000B3   271 	C$GameJohnDoe.c$54$2_0$145	= .
                                    272 	.globl	C$GameJohnDoe.c$54$2_0$145
                                    273 ;src\GameJohnDoe.c:54: case J_A:
    00003549                        274 00105$:
                         000000B3   275 	C$GameJohnDoe.c$55$2_0$145	= .
                                    276 	.globl	C$GameJohnDoe.c$55$2_0$145
                                    277 ;src\GameJohnDoe.c:55: fadeToBlack(10);
    00003549 3E 0A            [ 8]  278 	ld	a, #0x0a
    0000354B CD 81 26         [24]  279 	call	_fadeToBlack
                         000000B8   280 	C$GameJohnDoe.c$56$2_0$145	= .
                                    281 	.globl	C$GameJohnDoe.c$56$2_0$145
                                    282 ;src\GameJohnDoe.c:56: fadeFromBlack(10);
    0000354E 3E 0A            [ 8]  283 	ld	a, #0x0a
    00003550 CD CA 26         [24]  284 	call	_fadeFromBlack
                         000000BD   285 	C$GameJohnDoe.c$57$2_0$145	= .
                                    286 	.globl	C$GameJohnDoe.c$57$2_0$145
                                    287 ;src\GameJohnDoe.c:57: break;
    00003553 18 50            [12]  288 	jr	00113$
                         000000BF   289 	C$GameJohnDoe.c$58$2_0$145	= .
                                    290 	.globl	C$GameJohnDoe.c$58$2_0$145
                                    291 ;src\GameJohnDoe.c:58: case J_B:
    00003555                        292 00106$:
                         000000BF   293 	C$GameJohnDoe.c$59$2_0$145	= .
                                    294 	.globl	C$GameJohnDoe.c$59$2_0$145
                                    295 ;src\GameJohnDoe.c:59: fadeToWhite(10);
    00003555 3E 0A            [ 8]  296 	ld	a, #0x0a
    00003557 CD 13 27         [24]  297 	call	_fadeToWhite
                         000000C4   298 	C$GameJohnDoe.c$60$2_0$145	= .
                                    299 	.globl	C$GameJohnDoe.c$60$2_0$145
                                    300 ;src\GameJohnDoe.c:60: fadeFromWhite(10);
    0000355A 3E 0A            [ 8]  301 	ld	a, #0x0a
    0000355C CD 64 27         [24]  302 	call	_fadeFromWhite
                         000000C9   303 	C$GameJohnDoe.c$61$2_0$145	= .
                                    304 	.globl	C$GameJohnDoe.c$61$2_0$145
                                    305 ;src\GameJohnDoe.c:61: break;
    0000355F 18 44            [12]  306 	jr	00113$
                         000000CB   307 	C$GameJohnDoe.c$62$2_0$145	= .
                                    308 	.globl	C$GameJohnDoe.c$62$2_0$145
                                    309 ;src\GameJohnDoe.c:62: case J_START:
    00003561                        310 00107$:
                         000000CB   311 	C$GameJohnDoe.c$63$2_0$145	= .
                                    312 	.globl	C$GameJohnDoe.c$63$2_0$145
                                    313 ;src\GameJohnDoe.c:63: if (wabble == FALSE)
    00003561 FA 7C CD         [16]  314 	ld	a, (#_wabble)
    00003564 B7               [ 4]  315 	or	a, a
    00003565 20 10            [12]  316 	jr	NZ, 00109$
                         000000D1   317 	C$GameJohnDoe.c$66$3_0$148	= .
                                    318 	.globl	C$GameJohnDoe.c$66$3_0$148
                                    319 ;src\GameJohnDoe.c:66: STAT_REG = STATF_MODE00;
    00003567 3E 08            [ 8]  320 	ld	a, #0x08
    00003569 E0 41            [12]  321 	ldh	(_STAT_REG + 0), a
                         000000D5   322 	C$GameJohnDoe.c$67$3_0$148	= .
                                    323 	.globl	C$GameJohnDoe.c$67$3_0$148
                                    324 ;src\GameJohnDoe.c:67: set_interrupts(VBL_IFLAG | LCD_IFLAG);
    0000356B 3E 03            [ 8]  325 	ld	a, #0x03
    0000356D CD CC 00         [24]  326 	call	_set_interrupts
                         000000DA   327 	C$GameJohnDoe.c$69$3_0$148	= .
                                    328 	.globl	C$GameJohnDoe.c$69$3_0$148
                                    329 ;src\GameJohnDoe.c:69: wabble = TRUE;
    00003570 21 7C CD         [12]  330 	ld	hl, #_wabble
    00003573 36 01            [12]  331 	ld	(hl), #0x01
    00003575 18 2E            [12]  332 	jr	00113$
    00003577                        333 00109$:
                         000000E1   334 	C$GameJohnDoe.c$73$3_0$149	= .
                                    335 	.globl	C$GameJohnDoe.c$73$3_0$149
                                    336 ;src\GameJohnDoe.c:73: wabble = FALSE;
    00003577 21 7C CD         [12]  337 	ld	hl, #_wabble
    0000357A 36 00            [12]  338 	ld	(hl), #0x00
                         000000E6   339 	C$GameJohnDoe.c$75$2_0$145	= .
                                    340 	.globl	C$GameJohnDoe.c$75$2_0$145
                                    341 ;src\GameJohnDoe.c:75: break;
    0000357C 18 27            [12]  342 	jr	00113$
                         000000E8   343 	C$GameJohnDoe.c$76$2_0$145	= .
                                    344 	.globl	C$GameJohnDoe.c$76$2_0$145
                                    345 ;src\GameJohnDoe.c:76: case J_SELECT:
    0000357E                        346 00111$:
                         000000E8   347 	C$GameJohnDoe.c$77$2_0$145	= .
                                    348 	.globl	C$GameJohnDoe.c$77$2_0$145
                                    349 ;src\GameJohnDoe.c:77: fadeToBlack(10);
    0000357E 3E 0A            [ 8]  350 	ld	a, #0x0a
    00003580 CD 81 26         [24]  351 	call	_fadeToBlack
                         000000ED   352 	C$GameJohnDoe.c$78$2_0$145	= .
                                    353 	.globl	C$GameJohnDoe.c$78$2_0$145
                                    354 ;src\GameJohnDoe.c:78: return GAMETITLE;
    00003583 3E 01            [ 8]  355 	ld	a, #0x01
    00003585 C9               [16]  356 	ret
                         000000F0   357 	C$GameJohnDoe.c$79$2_0$145	= .
                                    358 	.globl	C$GameJohnDoe.c$79$2_0$145
                                    359 ;src\GameJohnDoe.c:79: default:
    00003586                        360 00112$:
                         000000F0   361 	C$GameJohnDoe.c$80$2_0$145	= .
                                    362 	.globl	C$GameJohnDoe.c$80$2_0$145
                                    363 ;src\GameJohnDoe.c:80: scanline_offsets = &scanline_offsets_tbl[(uint8_t)(sys_time >> 2) & 0x07u];
    00003586 21 A3 C0         [12]  364 	ld	hl, #_sys_time
    00003589 2A               [ 8]  365 	ld	a, (hl+)
    0000358A 4F               [ 4]  366 	ld	c, a
    0000358B 46               [ 8]  367 	ld	b, (hl)
    0000358C CB 38            [ 8]  368 	srl	b
    0000358E CB 19            [ 8]  369 	rr	c
    00003590 CB 38            [ 8]  370 	srl	b
    00003592 CB 19            [ 8]  371 	rr	c
    00003594 79               [ 4]  372 	ld	a, c
    00003595 E6 07            [ 8]  373 	and	a, #0x07
    00003597 06 00            [ 8]  374 	ld	b, #0x00
    00003599 C6 B1            [ 8]  375 	add	a, #<(_scanline_offsets_tbl)
    0000359B 4F               [ 4]  376 	ld	c, a
    0000359C 78               [ 4]  377 	ld	a, b
    0000359D CE 34            [ 8]  378 	adc	a, #>(_scanline_offsets_tbl)
    0000359F 21 7E CD         [12]  379 	ld	hl, #_scanline_offsets
    000035A2 71               [ 8]  380 	ld	(hl), c
    000035A3 23               [ 8]  381 	inc	hl
    000035A4 77               [ 8]  382 	ld	(hl), a
                         0000010F   383 	C$GameJohnDoe.c$81$1_0$144	= .
                                    384 	.globl	C$GameJohnDoe.c$81$1_0$144
                                    385 ;src\GameJohnDoe.c:81: }
    000035A5                        386 00113$:
                         0000010F   387 	C$GameJohnDoe.c$83$1_0$144	= .
                                    388 	.globl	C$GameJohnDoe.c$83$1_0$144
                                    389 ;src\GameJohnDoe.c:83: return GAMEJOHNDOE;
    000035A5 3E 03            [ 8]  390 	ld	a, #0x03
                         00000111   391 	C$GameJohnDoe.c$84$1_0$144	= .
                                    392 	.globl	C$GameJohnDoe.c$84$1_0$144
                                    393 ;src\GameJohnDoe.c:84: }
                         00000111   394 	C$GameJohnDoe.c$84$1_0$144	= .
                                    395 	.globl	C$GameJohnDoe.c$84$1_0$144
                         00000111   396 	XG$GameJohnDoeUpdate$0$0	= .
                                    397 	.globl	XG$GameJohnDoeUpdate$0$0
    000035A7 C9               [16]  398 	ret
                                    399 	.area _CODE
                                    400 	.area _INITIALIZER
                         00000000   401 FGameJohnDoe$__xinit_wabble$0_0$0 == .
    00007158                        402 __xinit__wabble:
    00007158 00                     403 	.db #0x00	;  0
                         00000001   404 FGameJohnDoe$__xinit_invert_b$0_0$0 == .
    00007159                        405 __xinit__invert_b:
    00007159 00                     406 	.db #0x00	;  0
                         00000002   407 FGameJohnDoe$__xinit_scanline_offsets$0_0$0 == .
    0000715A                        408 __xinit__scanline_offsets:
    0000715A B1 34                  409 	.dw _scanline_offsets_tbl
                                    410 	.area _CABS (ABS)
    00000048                        411 	.org 0x0048
                         00000048   412 FGameJohnDoe$__ISR_VECTOR_STAT$0_0$0 == .
    00000048                        413 ___ISR_VECTOR_STAT:
    00000048 C3                     414 	.db #0xc3	; 195
    00000049 96 34                  415 	.dw _scanline_isr
