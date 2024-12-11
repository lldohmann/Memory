                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Battle
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _BattleUpdate
                                     12 	.globl _BattleSetup
                                     13 	.globl _InvertColor
                                     14 	.globl _fadeFromBlack
                                     15 	.globl _DrawText
                                     16 	.globl _DrawNumber
                                     17 	.globl _performantdelay
                                     18 	.globl _set_bkg_tiles
                                     19 	.globl _set_bkg_data
                                     20 	.globl _cursor
                                     21 ;--------------------------------------------------------
                                     22 ; special function registers
                                     23 ;--------------------------------------------------------
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area _DATA
                         00000000    28 G$cursor$0_0$0==.
    0000C0C0                         29 _cursor::
    0000C0C0                         30 	.ds 4
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area _INITIALIZED
                                     35 ;--------------------------------------------------------
                                     36 ; absolute external ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area _DABS (ABS)
                                     39 ;--------------------------------------------------------
                                     40 ; global & static initialisations
                                     41 ;--------------------------------------------------------
                                     42 	.area _HOME
                                     43 	.area _GSINIT
                                     44 	.area _GSFINAL
                                     45 	.area _GSINIT
                                     46 ;--------------------------------------------------------
                                     47 ; Home
                                     48 ;--------------------------------------------------------
                                     49 	.area _HOME
                                     50 	.area _HOME
                                     51 ;--------------------------------------------------------
                                     52 ; code
                                     53 ;--------------------------------------------------------
                                     54 	.area _CODE
                         00000000    55 	G$BattleSetup$0$0	= .
                                     56 	.globl	G$BattleSetup$0$0
                         00000000    57 	C$Battle.c$50$0_0$137	= .
                                     58 	.globl	C$Battle.c$50$0_0$137
                                     59 ;src\Battle.c:50: void BattleSetup(void)
                                     60 ;	---------------------------------
                                     61 ; Function BattleSetup
                                     62 ; ---------------------------------
    00005B12                         63 _BattleSetup::
                                     64 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    00005B12 AF               [ 4]   65 	xor	a, a
    00005B13 E0 43            [12]   66 	ldh	(_SCX_REG + 0), a
    00005B15 AF               [ 4]   67 	xor	a, a
    00005B16 E0 42            [12]   68 	ldh	(_SCY_REG + 0), a
                         00000006    69 	C$Battle.c$53$1_0$137	= .
                                     70 	.globl	C$Battle.c$53$1_0$137
                                     71 ;src\Battle.c:53: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00005B18 11 DC 46         [12]   72 	ld	de, #_FontTiles
    00005B1B D5               [16]   73 	push	de
    00005B1C 21 00 35         [12]   74 	ld	hl, #0x3500
    00005B1F E5               [16]   75 	push	hl
    00005B20 CD 08 63         [24]   76 	call	_set_bkg_data
    00005B23 E8 04            [16]   77 	add	sp, #4
                         00000013    78 	C$Battle.c$54$1_0$137	= .
                                     79 	.globl	C$Battle.c$54$1_0$137
                                     80 ;src\Battle.c:54: set_bkg_tiles(0, 0, Battle_MapWidth, Battle_MapHeight, Battle_Map); // draw background window & text
    00005B25 11 04 D1         [12]   81 	ld	de, #_Battle_Map
    00005B28 D5               [16]   82 	push	de
    00005B29 21 14 17         [12]   83 	ld	hl, #0x1714
    00005B2C E5               [16]   84 	push	hl
    00005B2D AF               [ 4]   85 	xor	a, a
    00005B2E 0F               [ 4]   86 	rrca
    00005B2F F5               [16]   87 	push	af
    00005B30 CD 35 64         [24]   88 	call	_set_bkg_tiles
    00005B33 E8 06            [16]   89 	add	sp, #6
                         00000023    90 	C$Battle.c$56$1_0$137	= .
                                     91 	.globl	C$Battle.c$56$1_0$137
                                     92 ;src\Battle.c:56: DrawNumber(1, 14, 123456, 6, TRUE);
    00005B35 21 06 01         [12]   93 	ld	hl, #0x106
    00005B38 E5               [16]   94 	push	hl
    00005B39 11 40 E2         [12]   95 	ld	de, #0xe240
    00005B3C D5               [16]   96 	push	de
    00005B3D 1E 0E            [ 8]   97 	ld	e, #0x0e
    00005B3F 3E 01            [ 8]   98 	ld	a, #0x01
    00005B41 CD AA 24         [24]   99 	call	_DrawNumber
                         00000032   100 	C$Battle.c$57$1_0$137	= .
                                    101 	.globl	C$Battle.c$57$1_0$137
                                    102 ;src\Battle.c:57: DrawNumber(8, 14, 110, 3, TRUE);
    00005B44 21 03 01         [12]  103 	ld	hl, #0x103
    00005B47 E5               [16]  104 	push	hl
    00005B48 11 6E 00         [12]  105 	ld	de, #0x006e
    00005B4B D5               [16]  106 	push	de
    00005B4C 1E 0E            [ 8]  107 	ld	e, #0x0e
    00005B4E 3E 08            [ 8]  108 	ld	a, #0x08
    00005B50 CD AA 24         [24]  109 	call	_DrawNumber
                         00000041   110 	C$Battle.c$58$1_0$137	= .
                                    111 	.globl	C$Battle.c$58$1_0$137
                                    112 ;src\Battle.c:58: DrawNumber(13, 14, 70, 2, TRUE);
    00005B53 21 02 01         [12]  113 	ld	hl, #0x102
    00005B56 E5               [16]  114 	push	hl
    00005B57 11 46 00         [12]  115 	ld	de, #0x0046
    00005B5A D5               [16]  116 	push	de
    00005B5B 1E 0E            [ 8]  117 	ld	e, #0x0e
    00005B5D 3E 0D            [ 8]  118 	ld	a, #0x0d
    00005B5F CD AA 24         [24]  119 	call	_DrawNumber
                         00000050   120 	C$Battle.c$59$1_0$137	= .
                                    121 	.globl	C$Battle.c$59$1_0$137
                                    122 ;src\Battle.c:59: DrawNumber(17, 14, 11, 2, TRUE);
    00005B62 21 02 01         [12]  123 	ld	hl, #0x102
    00005B65 E5               [16]  124 	push	hl
    00005B66 11 0B 00         [12]  125 	ld	de, #0x000b
    00005B69 D5               [16]  126 	push	de
    00005B6A 1E 0E            [ 8]  127 	ld	e, #0x0e
    00005B6C 3E 11            [ 8]  128 	ld	a, #0x11
    00005B6E CD AA 24         [24]  129 	call	_DrawNumber
                         0000005F   130 	C$Battle.c$61$1_0$137	= .
                                    131 	.globl	C$Battle.c$61$1_0$137
                                    132 ;src\Battle.c:61: DrawNumber(1, 15, 123456, 6, TRUE);
    00005B71 21 06 01         [12]  133 	ld	hl, #0x106
    00005B74 E5               [16]  134 	push	hl
    00005B75 11 40 E2         [12]  135 	ld	de, #0xe240
    00005B78 D5               [16]  136 	push	de
    00005B79 1E 0F            [ 8]  137 	ld	e, #0x0f
    00005B7B 3E 01            [ 8]  138 	ld	a, #0x01
    00005B7D CD AA 24         [24]  139 	call	_DrawNumber
                         0000006E   140 	C$Battle.c$62$1_0$137	= .
                                    141 	.globl	C$Battle.c$62$1_0$137
                                    142 ;src\Battle.c:62: DrawNumber(9, 15, 80, 2, TRUE);
    00005B80 21 02 01         [12]  143 	ld	hl, #0x102
    00005B83 E5               [16]  144 	push	hl
    00005B84 11 50 00         [12]  145 	ld	de, #0x0050
    00005B87 D5               [16]  146 	push	de
    00005B88 1E 0F            [ 8]  147 	ld	e, #0x0f
    00005B8A 3E 09            [ 8]  148 	ld	a, #0x09
    00005B8C CD AA 24         [24]  149 	call	_DrawNumber
                         0000007D   150 	C$Battle.c$63$1_0$137	= .
                                    151 	.globl	C$Battle.c$63$1_0$137
                                    152 ;src\Battle.c:63: DrawNumber(13, 15, 33, 2, TRUE);
    00005B8F 21 02 01         [12]  153 	ld	hl, #0x102
    00005B92 E5               [16]  154 	push	hl
    00005B93 11 21 00         [12]  155 	ld	de, #0x0021
    00005B96 D5               [16]  156 	push	de
    00005B97 1E 0F            [ 8]  157 	ld	e, #0x0f
    00005B99 3E 0D            [ 8]  158 	ld	a, #0x0d
    00005B9B CD AA 24         [24]  159 	call	_DrawNumber
                         0000008C   160 	C$Battle.c$64$1_0$137	= .
                                    161 	.globl	C$Battle.c$64$1_0$137
                                    162 ;src\Battle.c:64: DrawNumber(17, 15, 11, 2, TRUE);
    00005B9E 21 02 01         [12]  163 	ld	hl, #0x102
    00005BA1 E5               [16]  164 	push	hl
    00005BA2 11 0B 00         [12]  165 	ld	de, #0x000b
    00005BA5 D5               [16]  166 	push	de
    00005BA6 1E 0F            [ 8]  167 	ld	e, #0x0f
    00005BA8 3E 11            [ 8]  168 	ld	a, #0x11
    00005BAA CD AA 24         [24]  169 	call	_DrawNumber
                         0000009B   170 	C$Battle.c$67$1_0$137	= .
                                    171 	.globl	C$Battle.c$67$1_0$137
                                    172 ;src\Battle.c:67: cursor.x = 8;
    00005BAD 21 C0 C0         [12]  173 	ld	hl, #_cursor
    00005BB0 36 08            [12]  174 	ld	(hl), #0x08
                         000000A0   175 	C$Battle.c$68$1_0$137	= .
                                    176 	.globl	C$Battle.c$68$1_0$137
                                    177 ;src\Battle.c:68: cursor.y = 144;
    00005BB2 01 C1 C0         [12]  178 	ld	bc, #_cursor + 1
    00005BB5 3E 90            [ 8]  179 	ld	a, #0x90
    00005BB7 02               [ 8]  180 	ld	(bc), a
                                    181 ;c:\gbdk\include\gb\gb.h:1875: shadow_OAM[nb].tile=tile;
    00005BB8 21 02 C0         [12]  182 	ld	hl, #(_shadow_OAM + 2)
    00005BBB 36 FF            [12]  183 	ld	(hl), #0xff
                                    184 ;src\Battle.c:70: move_sprite(0, cursor.x, cursor.y);
    00005BBD 0A               [ 8]  185 	ld	a, (bc)
    00005BBE 47               [ 4]  186 	ld	b, a
    00005BBF 21 C0 C0         [12]  187 	ld	hl, #_cursor
    00005BC2 4E               [ 8]  188 	ld	c, (hl)
                                    189 ;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    00005BC3 21 00 C0         [12]  190 	ld	hl, #_shadow_OAM
                                    191 ;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
    00005BC6 78               [ 4]  192 	ld	a, b
    00005BC7 22               [ 8]  193 	ld	(hl+), a
    00005BC8 71               [ 8]  194 	ld	(hl), c
                         000000B7   195 	C$Battle.c$73$1_0$137	= .
                                    196 	.globl	C$Battle.c$73$1_0$137
                                    197 ;src\Battle.c:73: SHOW_BKG; 
    00005BC9 F0 40            [12]  198 	ldh	a, (_LCDC_REG + 0)
    00005BCB F6 01            [ 8]  199 	or	a, #0x01
    00005BCD E0 40            [12]  200 	ldh	(_LCDC_REG + 0), a
                         000000BD   201 	C$Battle.c$74$1_0$137	= .
                                    202 	.globl	C$Battle.c$74$1_0$137
                                    203 ;src\Battle.c:74: fadeFromBlack(5);
    00005BCF 3E 05            [ 8]  204 	ld	a, #0x05
    00005BD1 CD CA 26         [24]  205 	call	_fadeFromBlack
                         000000C2   206 	C$Battle.c$75$1_0$137	= .
                                    207 	.globl	C$Battle.c$75$1_0$137
                                    208 ;src\Battle.c:75: if (index == 0) // JIM
    00005BD4 FA 6F CD         [16]  209 	ld	a, (#_index)
    00005BD7 B7               [ 4]  210 	or	a, a
    00005BD8 20 3E            [12]  211 	jr	NZ, 00155$
                         000000C8   212 	C$Battle.c$77$2_0$138	= .
                                    213 	.globl	C$Battle.c$77$2_0$138
                                    214 ;src\Battle.c:77: DrawText(1, 1, "Jim Crow draws", TRUE);
    00005BDA 3E 01            [ 8]  215 	ld	a, #0x01
    00005BDC F5               [16]  216 	push	af
    00005BDD 33               [ 8]  217 	inc	sp
    00005BDE 11 46 5F         [12]  218 	ld	de, #___str_0
    00005BE1 D5               [16]  219 	push	de
    00005BE2 3E 01            [ 8]  220 	ld	a,#0x01
    00005BE4 5F               [ 4]  221 	ld	e,a
    00005BE5 CD 84 25         [24]  222 	call	_DrawText
                         000000D6   223 	C$Battle.c$78$2_0$138	= .
                                    224 	.globl	C$Battle.c$78$2_0$138
                                    225 ;src\Battle.c:78: DrawText(1, 3, "near.", TRUE);
    00005BE8 3E 01            [ 8]  226 	ld	a, #0x01
    00005BEA F5               [16]  227 	push	af
    00005BEB 33               [ 8]  228 	inc	sp
    00005BEC 11 55 5F         [12]  229 	ld	de, #___str_1
    00005BEF D5               [16]  230 	push	de
    00005BF0 1E 03            [ 8]  231 	ld	e, #0x03
    00005BF2 3E 01            [ 8]  232 	ld	a, #0x01
    00005BF4 CD 84 25         [24]  233 	call	_DrawText
                         000000E5   234 	C$Battle.c$79$2_0$138	= .
                                    235 	.globl	C$Battle.c$79$2_0$138
                                    236 ;src\Battle.c:79: set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
    00005BF7 11 A8 35         [12]  237 	ld	de, #_Crow_Tiles
    00005BFA D5               [16]  238 	push	de
    00005BFB 21 80 17         [12]  239 	ld	hl, #0x1780
    00005BFE E5               [16]  240 	push	hl
    00005BFF CD 08 63         [24]  241 	call	_set_bkg_data
    00005C02 E8 04            [16]  242 	add	sp, #4
                         000000F2   243 	C$Battle.c$80$2_0$138	= .
                                    244 	.globl	C$Battle.c$80$2_0$138
                                    245 ;src\Battle.c:80: set_bkg_tiles(7, 6, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
    00005C04 11 38 37         [12]  246 	ld	de, #_Crow_Map
    00005C07 D5               [16]  247 	push	de
    00005C08 21 05 07         [12]  248 	ld	hl, #0x705
    00005C0B E5               [16]  249 	push	hl
    00005C0C 21 07 06         [12]  250 	ld	hl, #0x607
    00005C0F E5               [16]  251 	push	hl
    00005C10 CD 35 64         [24]  252 	call	_set_bkg_tiles
    00005C13 E8 06            [16]  253 	add	sp, #6
    00005C15 C3 3A 5F         [16]  254 	jp	00156$
    00005C18                        255 00155$:
                         00000106   256 	C$Battle.c$82$1_0$137	= .
                                    257 	.globl	C$Battle.c$82$1_0$137
                                    258 ;src\Battle.c:82: else if (index == 1) // GYPSY
    00005C18 FA 6F CD         [16]  259 	ld	a, (#_index)
    00005C1B 3D               [ 4]  260 	dec	a
    00005C1C 20 3E            [12]  261 	jr	NZ, 00152$
                         0000010C   262 	C$Battle.c$84$2_0$139	= .
                                    263 	.globl	C$Battle.c$84$2_0$139
                                    264 ;src\Battle.c:84: DrawText(1, 1, "Gypsy Moth draws", TRUE);
    00005C1E 3E 01            [ 8]  265 	ld	a, #0x01
    00005C20 F5               [16]  266 	push	af
    00005C21 33               [ 8]  267 	inc	sp
    00005C22 11 5B 5F         [12]  268 	ld	de, #___str_2
    00005C25 D5               [16]  269 	push	de
    00005C26 3E 01            [ 8]  270 	ld	a,#0x01
    00005C28 5F               [ 4]  271 	ld	e,a
    00005C29 CD 84 25         [24]  272 	call	_DrawText
                         0000011A   273 	C$Battle.c$85$2_0$139	= .
                                    274 	.globl	C$Battle.c$85$2_0$139
                                    275 ;src\Battle.c:85: DrawText(1, 3, "near.", TRUE);
    00005C2C 3E 01            [ 8]  276 	ld	a, #0x01
    00005C2E F5               [16]  277 	push	af
    00005C2F 33               [ 8]  278 	inc	sp
    00005C30 11 55 5F         [12]  279 	ld	de, #___str_1
    00005C33 D5               [16]  280 	push	de
    00005C34 1E 03            [ 8]  281 	ld	e, #0x03
    00005C36 3E 01            [ 8]  282 	ld	a, #0x01
    00005C38 CD 84 25         [24]  283 	call	_DrawText
                         00000129   284 	C$Battle.c$86$2_0$139	= .
                                    285 	.globl	C$Battle.c$86$2_0$139
                                    286 ;src\Battle.c:86: set_bkg_data(128, 29, GypsyTiles); 
    00005C3B 11 3C 4A         [12]  287 	ld	de, #_GypsyTiles
    00005C3E D5               [16]  288 	push	de
    00005C3F 21 80 1D         [12]  289 	ld	hl, #0x1d80
    00005C42 E5               [16]  290 	push	hl
    00005C43 CD 08 63         [24]  291 	call	_set_bkg_data
    00005C46 E8 04            [16]  292 	add	sp, #4
                         00000136   293 	C$Battle.c$87$2_0$139	= .
                                    294 	.globl	C$Battle.c$87$2_0$139
                                    295 ;src\Battle.c:87: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    00005C48 11 2C 4C         [12]  296 	ld	de, #_Gypsy_Map
    00005C4B D5               [16]  297 	push	de
    00005C4C 21 06 07         [12]  298 	ld	hl, #0x706
    00005C4F E5               [16]  299 	push	hl
    00005C50 21 07 05         [12]  300 	ld	hl, #0x507
    00005C53 E5               [16]  301 	push	hl
    00005C54 CD 35 64         [24]  302 	call	_set_bkg_tiles
    00005C57 E8 06            [16]  303 	add	sp, #6
    00005C59 C3 3A 5F         [16]  304 	jp	00156$
    00005C5C                        305 00152$:
                         0000014A   306 	C$Battle.c$89$1_0$137	= .
                                    307 	.globl	C$Battle.c$89$1_0$137
                                    308 ;src\Battle.c:89: else if (index == 2) // WALLY
    00005C5C FA 6F CD         [16]  309 	ld	a, (#_index)
    00005C5F D6 02            [ 8]  310 	sub	a, #0x02
    00005C61 20 2F            [12]  311 	jr	NZ, 00149$
                         00000151   312 	C$Battle.c$91$2_0$140	= .
                                    313 	.globl	C$Battle.c$91$2_0$140
                                    314 ;src\Battle.c:91: DrawText(1, 1, "Wally butts in.", TRUE);
    00005C63 3E 01            [ 8]  315 	ld	a, #0x01
    00005C65 F5               [16]  316 	push	af
    00005C66 33               [ 8]  317 	inc	sp
    00005C67 11 6C 5F         [12]  318 	ld	de, #___str_3
    00005C6A D5               [16]  319 	push	de
    00005C6B 3E 01            [ 8]  320 	ld	a,#0x01
    00005C6D 5F               [ 4]  321 	ld	e,a
    00005C6E CD 84 25         [24]  322 	call	_DrawText
                         0000015F   323 	C$Battle.c$92$2_0$140	= .
                                    324 	.globl	C$Battle.c$92$2_0$140
                                    325 ;src\Battle.c:92: set_bkg_data(128, 27, WallyTiles); 
    00005C71 11 E9 CE         [12]  326 	ld	de, #_WallyTiles
    00005C74 D5               [16]  327 	push	de
    00005C75 21 80 1B         [12]  328 	ld	hl, #0x1b80
    00005C78 E5               [16]  329 	push	hl
    00005C79 CD 08 63         [24]  330 	call	_set_bkg_data
    00005C7C E8 04            [16]  331 	add	sp, #4
                         0000016C   332 	C$Battle.c$93$2_0$140	= .
                                    333 	.globl	C$Battle.c$93$2_0$140
                                    334 ;src\Battle.c:93: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    00005C7E 11 2C 4C         [12]  335 	ld	de, #_Gypsy_Map
    00005C81 D5               [16]  336 	push	de
    00005C82 21 06 07         [12]  337 	ld	hl, #0x706
    00005C85 E5               [16]  338 	push	hl
    00005C86 21 07 05         [12]  339 	ld	hl, #0x507
    00005C89 E5               [16]  340 	push	hl
    00005C8A CD 35 64         [24]  341 	call	_set_bkg_tiles
    00005C8D E8 06            [16]  342 	add	sp, #6
    00005C8F C3 3A 5F         [16]  343 	jp	00156$
    00005C92                        344 00149$:
                         00000180   345 	C$Battle.c$95$1_0$137	= .
                                    346 	.globl	C$Battle.c$95$1_0$137
                                    347 ;src\Battle.c:95: else if (index == 3) // TICK
    00005C92 FA 6F CD         [16]  348 	ld	a, (#_index)
    00005C95 D6 03            [ 8]  349 	sub	a, #0x03
    00005C97 20 2F            [12]  350 	jr	NZ, 00146$
                         00000187   351 	C$Battle.c$97$2_0$141	= .
                                    352 	.globl	C$Battle.c$97$2_0$141
                                    353 ;src\Battle.c:97: DrawText(1, 1, "A tick draws near.", TRUE);
    00005C99 3E 01            [ 8]  354 	ld	a, #0x01
    00005C9B F5               [16]  355 	push	af
    00005C9C 33               [ 8]  356 	inc	sp
    00005C9D 11 7C 5F         [12]  357 	ld	de, #___str_4
    00005CA0 D5               [16]  358 	push	de
    00005CA1 3E 01            [ 8]  359 	ld	a,#0x01
    00005CA3 5F               [ 4]  360 	ld	e,a
    00005CA4 CD 84 25         [24]  361 	call	_DrawText
                         00000195   362 	C$Battle.c$98$2_0$141	= .
                                    363 	.globl	C$Battle.c$98$2_0$141
                                    364 ;src\Battle.c:98: set_bkg_data(128, 20, Tick_Tiles); 
    00005CA7 11 9E 50         [12]  365 	ld	de, #_Tick_Tiles
    00005CAA D5               [16]  366 	push	de
    00005CAB 21 80 14         [12]  367 	ld	hl, #0x1480
    00005CAE E5               [16]  368 	push	hl
    00005CAF CD 08 63         [24]  369 	call	_set_bkg_data
    00005CB2 E8 04            [16]  370 	add	sp, #4
                         000001A2   371 	C$Battle.c$99$2_0$141	= .
                                    372 	.globl	C$Battle.c$99$2_0$141
                                    373 ;src\Battle.c:99: set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
    00005CB4 11 C7 D0         [12]  374 	ld	de, #_Tick_Map
    00005CB7 D5               [16]  375 	push	de
    00005CB8 21 05 05         [12]  376 	ld	hl, #0x505
    00005CBB E5               [16]  377 	push	hl
    00005CBC 21 07 05         [12]  378 	ld	hl, #0x507
    00005CBF E5               [16]  379 	push	hl
    00005CC0 CD 35 64         [24]  380 	call	_set_bkg_tiles
    00005CC3 E8 06            [16]  381 	add	sp, #6
    00005CC5 C3 3A 5F         [16]  382 	jp	00156$
    00005CC8                        383 00146$:
                         000001B6   384 	C$Battle.c$101$1_0$137	= .
                                    385 	.globl	C$Battle.c$101$1_0$137
                                    386 ;src\Battle.c:101: else if (index == 4) // OFFICER
    00005CC8 FA 6F CD         [16]  387 	ld	a, (#_index)
    00005CCB D6 04            [ 8]  388 	sub	a, #0x04
    00005CCD 20 3E            [12]  389 	jr	NZ, 00143$
                         000001BD   390 	C$Battle.c$103$2_0$142	= .
                                    391 	.globl	C$Battle.c$103$2_0$142
                                    392 ;src\Battle.c:103: DrawText(1, 1, "An Officer draws", TRUE);
    00005CCF 3E 01            [ 8]  393 	ld	a, #0x01
    00005CD1 F5               [16]  394 	push	af
    00005CD2 33               [ 8]  395 	inc	sp
    00005CD3 11 8F 5F         [12]  396 	ld	de, #___str_5
    00005CD6 D5               [16]  397 	push	de
    00005CD7 3E 01            [ 8]  398 	ld	a,#0x01
    00005CD9 5F               [ 4]  399 	ld	e,a
    00005CDA CD 84 25         [24]  400 	call	_DrawText
                         000001CB   401 	C$Battle.c$104$2_0$142	= .
                                    402 	.globl	C$Battle.c$104$2_0$142
                                    403 ;src\Battle.c:104: DrawText(1, 3, "near.", TRUE);
    00005CDD 3E 01            [ 8]  404 	ld	a, #0x01
    00005CDF F5               [16]  405 	push	af
    00005CE0 33               [ 8]  406 	inc	sp
    00005CE1 11 55 5F         [12]  407 	ld	de, #___str_1
    00005CE4 D5               [16]  408 	push	de
    00005CE5 1E 03            [ 8]  409 	ld	e, #0x03
    00005CE7 3E 01            [ 8]  410 	ld	a, #0x01
    00005CE9 CD 84 25         [24]  411 	call	_DrawText
                         000001DA   412 	C$Battle.c$105$2_0$142	= .
                                    413 	.globl	C$Battle.c$105$2_0$142
                                    414 ;src\Battle.c:105: set_bkg_data(128, 39, Cop_Tiles); 
    00005CEC 11 66 4D         [12]  415 	ld	de, #_Cop_Tiles
    00005CEF D5               [16]  416 	push	de
    00005CF0 21 80 27         [12]  417 	ld	hl, #0x2780
    00005CF3 E5               [16]  418 	push	hl
    00005CF4 CD 08 63         [24]  419 	call	_set_bkg_data
    00005CF7 E8 04            [16]  420 	add	sp, #4
                         000001E7   421 	C$Battle.c$106$2_0$142	= .
                                    422 	.globl	C$Battle.c$106$2_0$142
                                    423 ;src\Battle.c:106: set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
    00005CF9 11 F6 4F         [12]  424 	ld	de, #_Officer_Map
    00005CFC D5               [16]  425 	push	de
    00005CFD 21 06 07         [12]  426 	ld	hl, #0x706
    00005D00 E5               [16]  427 	push	hl
    00005D01 21 07 05         [12]  428 	ld	hl, #0x507
    00005D04 E5               [16]  429 	push	hl
    00005D05 CD 35 64         [24]  430 	call	_set_bkg_tiles
    00005D08 E8 06            [16]  431 	add	sp, #6
    00005D0A C3 3A 5F         [16]  432 	jp	00156$
    00005D0D                        433 00143$:
                         000001FB   434 	C$Battle.c$108$1_0$137	= .
                                    435 	.globl	C$Battle.c$108$1_0$137
                                    436 ;src\Battle.c:108: else if (index == 5) // POLICE
    00005D0D FA 6F CD         [16]  437 	ld	a, (#_index)
    00005D10 D6 05            [ 8]  438 	sub	a, #0x05
    00005D12 20 21            [12]  439 	jr	NZ, 00140$
                         00000202   440 	C$Battle.c$110$2_0$143	= .
                                    441 	.globl	C$Battle.c$110$2_0$143
                                    442 ;src\Battle.c:110: set_bkg_data(128, 39, Cop_Tiles); 
    00005D14 11 66 4D         [12]  443 	ld	de, #_Cop_Tiles
    00005D17 D5               [16]  444 	push	de
    00005D18 21 80 27         [12]  445 	ld	hl, #0x2780
    00005D1B E5               [16]  446 	push	hl
    00005D1C CD 08 63         [24]  447 	call	_set_bkg_data
    00005D1F E8 04            [16]  448 	add	sp, #4
                         0000020F   449 	C$Battle.c$111$2_0$143	= .
                                    450 	.globl	C$Battle.c$111$2_0$143
                                    451 ;src\Battle.c:111: set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
    00005D21 11 20 50         [12]  452 	ld	de, #_Police_Map
    00005D24 D5               [16]  453 	push	de
    00005D25 21 06 07         [12]  454 	ld	hl, #0x706
    00005D28 E5               [16]  455 	push	hl
    00005D29 21 07 05         [12]  456 	ld	hl, #0x507
    00005D2C E5               [16]  457 	push	hl
    00005D2D CD 35 64         [24]  458 	call	_set_bkg_tiles
    00005D30 E8 06            [16]  459 	add	sp, #6
    00005D32 C3 3A 5F         [16]  460 	jp	00156$
    00005D35                        461 00140$:
                         00000223   462 	C$Battle.c$113$1_0$137	= .
                                    463 	.globl	C$Battle.c$113$1_0$137
                                    464 ;src\Battle.c:113: else if (index == 6) // SHERIFF
    00005D35 FA 6F CD         [16]  465 	ld	a, (#_index)
    00005D38 D6 06            [ 8]  466 	sub	a, #0x06
    00005D3A 20 21            [12]  467 	jr	NZ, 00137$
                         0000022A   468 	C$Battle.c$115$2_0$144	= .
                                    469 	.globl	C$Battle.c$115$2_0$144
                                    470 ;src\Battle.c:115: set_bkg_data(128, 39, Cop_Tiles); 
    00005D3C 11 66 4D         [12]  471 	ld	de, #_Cop_Tiles
    00005D3F D5               [16]  472 	push	de
    00005D40 21 80 27         [12]  473 	ld	hl, #0x2780
    00005D43 E5               [16]  474 	push	hl
    00005D44 CD 08 63         [24]  475 	call	_set_bkg_data
    00005D47 E8 04            [16]  476 	add	sp, #4
                         00000237   477 	C$Battle.c$116$2_0$144	= .
                                    478 	.globl	C$Battle.c$116$2_0$144
                                    479 ;src\Battle.c:116: set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
    00005D49 11 4A 50         [12]  480 	ld	de, #_Sheriff_Map
    00005D4C D5               [16]  481 	push	de
    00005D4D 21 06 07         [12]  482 	ld	hl, #0x706
    00005D50 E5               [16]  483 	push	hl
    00005D51 21 07 05         [12]  484 	ld	hl, #0x507
    00005D54 E5               [16]  485 	push	hl
    00005D55 CD 35 64         [24]  486 	call	_set_bkg_tiles
    00005D58 E8 06            [16]  487 	add	sp, #6
    00005D5A C3 3A 5F         [16]  488 	jp	00156$
    00005D5D                        489 00137$:
                         0000024B   490 	C$Battle.c$118$1_0$137	= .
                                    491 	.globl	C$Battle.c$118$1_0$137
                                    492 ;src\Battle.c:118: else if (index == 7) // CHIEF
    00005D5D FA 6F CD         [16]  493 	ld	a, (#_index)
    00005D60 D6 07            [ 8]  494 	sub	a, #0x07
    00005D62 20 21            [12]  495 	jr	NZ, 00134$
                         00000252   496 	C$Battle.c$120$2_0$145	= .
                                    497 	.globl	C$Battle.c$120$2_0$145
                                    498 ;src\Battle.c:120: set_bkg_data(128, 39, Cop_Tiles); 
    00005D64 11 66 4D         [12]  499 	ld	de, #_Cop_Tiles
    00005D67 D5               [16]  500 	push	de
    00005D68 21 80 27         [12]  501 	ld	hl, #0x2780
    00005D6B E5               [16]  502 	push	hl
    00005D6C CD 08 63         [24]  503 	call	_set_bkg_data
    00005D6F E8 04            [16]  504 	add	sp, #4
                         0000025F   505 	C$Battle.c$121$2_0$145	= .
                                    506 	.globl	C$Battle.c$121$2_0$145
                                    507 ;src\Battle.c:121: set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
    00005D71 11 74 50         [12]  508 	ld	de, #_Chief_Map
    00005D74 D5               [16]  509 	push	de
    00005D75 21 06 07         [12]  510 	ld	hl, #0x706
    00005D78 E5               [16]  511 	push	hl
    00005D79 21 07 05         [12]  512 	ld	hl, #0x507
    00005D7C E5               [16]  513 	push	hl
    00005D7D CD 35 64         [24]  514 	call	_set_bkg_tiles
    00005D80 E8 06            [16]  515 	add	sp, #6
    00005D82 C3 3A 5F         [16]  516 	jp	00156$
    00005D85                        517 00134$:
                         00000273   518 	C$Battle.c$123$1_0$137	= .
                                    519 	.globl	C$Battle.c$123$1_0$137
                                    520 ;src\Battle.c:123: else if (index == 8)
    00005D85 FA 6F CD         [16]  521 	ld	a, (#_index)
    00005D88 D6 08            [ 8]  522 	sub	a, #0x08
    00005D8A 20 24            [12]  523 	jr	NZ, 00131$
                         0000027A   524 	C$Battle.c$125$2_0$146	= .
                                    525 	.globl	C$Battle.c$125$2_0$146
                                    526 ;src\Battle.c:125: InvertColor();
    00005D8C CD AD 27         [24]  527 	call	_InvertColor
                         0000027D   528 	C$Battle.c$126$2_0$146	= .
                                    529 	.globl	C$Battle.c$126$2_0$146
                                    530 ;src\Battle.c:126: set_bkg_data(128, 30, Man_Tiles); 
    00005D8F 11 EE 51         [12]  531 	ld	de, #_Man_Tiles
    00005D92 D5               [16]  532 	push	de
    00005D93 21 80 1E         [12]  533 	ld	hl, #0x1e80
    00005D96 E5               [16]  534 	push	hl
    00005D97 CD 08 63         [24]  535 	call	_set_bkg_data
    00005D9A E8 04            [16]  536 	add	sp, #4
                         0000028A   537 	C$Battle.c$127$2_0$146	= .
                                    538 	.globl	C$Battle.c$127$2_0$146
                                    539 ;src\Battle.c:127: set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
    00005D9C 11 E0 D0         [12]  540 	ld	de, #_Man_Map
    00005D9F D5               [16]  541 	push	de
    00005DA0 21 06 06         [12]  542 	ld	hl, #0x606
    00005DA3 E5               [16]  543 	push	hl
    00005DA4 21 07 05         [12]  544 	ld	hl, #0x507
    00005DA7 E5               [16]  545 	push	hl
    00005DA8 CD 35 64         [24]  546 	call	_set_bkg_tiles
    00005DAB E8 06            [16]  547 	add	sp, #6
    00005DAD C3 3A 5F         [16]  548 	jp	00156$
    00005DB0                        549 00131$:
                         0000029E   550 	C$Battle.c$129$1_0$137	= .
                                    551 	.globl	C$Battle.c$129$1_0$137
                                    552 ;src\Battle.c:129: else if (index == 9)
    00005DB0 FA 6F CD         [16]  553 	ld	a, (#_index)
    00005DB3 D6 09            [ 8]  554 	sub	a, #0x09
    00005DB5 20 21            [12]  555 	jr	NZ, 00128$
                         000002A5   556 	C$Battle.c$131$2_0$147	= .
                                    557 	.globl	C$Battle.c$131$2_0$147
                                    558 ;src\Battle.c:131: set_bkg_data(128, 26, Car_Tiles); 
    00005DB7 11 24 56         [12]  559 	ld	de, #_Car_Tiles
    00005DBA D5               [16]  560 	push	de
    00005DBB 21 80 1A         [12]  561 	ld	hl, #0x1a80
    00005DBE E5               [16]  562 	push	hl
    00005DBF CD 08 63         [24]  563 	call	_set_bkg_data
    00005DC2 E8 04            [16]  564 	add	sp, #4
                         000002B2   565 	C$Battle.c$132$2_0$147	= .
                                    566 	.globl	C$Battle.c$132$2_0$147
                                    567 ;src\Battle.c:132: set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
    00005DC4 11 D4 57         [12]  568 	ld	de, #_Car_Map
    00005DC7 D5               [16]  569 	push	de
    00005DC8 21 06 05         [12]  570 	ld	hl, #0x506
    00005DCB E5               [16]  571 	push	hl
    00005DCC 21 07 05         [12]  572 	ld	hl, #0x507
    00005DCF E5               [16]  573 	push	hl
    00005DD0 CD 35 64         [24]  574 	call	_set_bkg_tiles
    00005DD3 E8 06            [16]  575 	add	sp, #6
    00005DD5 C3 3A 5F         [16]  576 	jp	00156$
    00005DD8                        577 00128$:
                         000002C6   578 	C$Battle.c$134$1_0$137	= .
                                    579 	.globl	C$Battle.c$134$1_0$137
                                    580 ;src\Battle.c:134: else if (index == 10)
    00005DD8 FA 6F CD         [16]  581 	ld	a, (#_index)
    00005DDB D6 0A            [ 8]  582 	sub	a, #0x0a
    00005DDD 20 21            [12]  583 	jr	NZ, 00125$
                         000002CD   584 	C$Battle.c$136$2_0$148	= .
                                    585 	.globl	C$Battle.c$136$2_0$148
                                    586 ;src\Battle.c:136: set_bkg_data(128, 46, Semi_Tiles); 
    00005DDF 11 F2 57         [12]  587 	ld	de, #_Semi_Tiles
    00005DE2 D5               [16]  588 	push	de
    00005DE3 21 80 2E         [12]  589 	ld	hl, #0x2e80
    00005DE6 E5               [16]  590 	push	hl
    00005DE7 CD 08 63         [24]  591 	call	_set_bkg_data
    00005DEA E8 04            [16]  592 	add	sp, #4
                         000002DA   593 	C$Battle.c$137$2_0$148	= .
                                    594 	.globl	C$Battle.c$137$2_0$148
                                    595 ;src\Battle.c:137: set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
    00005DEC 11 E2 5A         [12]  596 	ld	de, #_Semi_Map
    00005DEF D5               [16]  597 	push	de
    00005DF0 21 06 08         [12]  598 	ld	hl, #0x806
    00005DF3 E5               [16]  599 	push	hl
    00005DF4 21 07 05         [12]  600 	ld	hl, #0x507
    00005DF7 E5               [16]  601 	push	hl
    00005DF8 CD 35 64         [24]  602 	call	_set_bkg_tiles
    00005DFB E8 06            [16]  603 	add	sp, #6
    00005DFD C3 3A 5F         [16]  604 	jp	00156$
    00005E00                        605 00125$:
                         000002EE   606 	C$Battle.c$139$1_0$137	= .
                                    607 	.globl	C$Battle.c$139$1_0$137
                                    608 ;src\Battle.c:139: else if (index == 11)
    00005E00 FA 6F CD         [16]  609 	ld	a, (#_index)
    00005E03 D6 0B            [ 8]  610 	sub	a, #0x0b
    00005E05 20 21            [12]  611 	jr	NZ, 00122$
                         000002F5   612 	C$Battle.c$141$2_0$149	= .
                                    613 	.globl	C$Battle.c$141$2_0$149
                                    614 ;src\Battle.c:141: set_bkg_data(128, 31, Sis_Tiles); 
    00005E07 11 DE 53         [12]  615 	ld	de, #_Sis_Tiles
    00005E0A D5               [16]  616 	push	de
    00005E0B 21 80 1F         [12]  617 	ld	hl, #0x1f80
    00005E0E E5               [16]  618 	push	hl
    00005E0F CD 08 63         [24]  619 	call	_set_bkg_data
    00005E12 E8 04            [16]  620 	add	sp, #4
                         00000302   621 	C$Battle.c$142$2_0$149	= .
                                    622 	.globl	C$Battle.c$142$2_0$149
                                    623 ;src\Battle.c:142: set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
    00005E14 11 DE 55         [12]  624 	ld	de, #_BigSis_Map
    00005E17 D5               [16]  625 	push	de
    00005E18 21 05 07         [12]  626 	ld	hl, #0x705
    00005E1B E5               [16]  627 	push	hl
    00005E1C 21 07 05         [12]  628 	ld	hl, #0x507
    00005E1F E5               [16]  629 	push	hl
    00005E20 CD 35 64         [24]  630 	call	_set_bkg_tiles
    00005E23 E8 06            [16]  631 	add	sp, #6
    00005E25 C3 3A 5F         [16]  632 	jp	00156$
    00005E28                        633 00122$:
                         00000316   634 	C$Battle.c$144$1_0$137	= .
                                    635 	.globl	C$Battle.c$144$1_0$137
                                    636 ;src\Battle.c:144: else if (index == 12)
    00005E28 FA 6F CD         [16]  637 	ld	a, (#_index)
    00005E2B D6 0C            [ 8]  638 	sub	a, #0x0c
    00005E2D 20 21            [12]  639 	jr	NZ, 00119$
                         0000031D   640 	C$Battle.c$146$2_0$150	= .
                                    641 	.globl	C$Battle.c$146$2_0$150
                                    642 ;src\Battle.c:146: set_bkg_data(128, 31, Sis_Tiles); 
    00005E2F 11 DE 53         [12]  643 	ld	de, #_Sis_Tiles
    00005E32 D5               [16]  644 	push	de
    00005E33 21 80 1F         [12]  645 	ld	hl, #0x1f80
    00005E36 E5               [16]  646 	push	hl
    00005E37 CD 08 63         [24]  647 	call	_set_bkg_data
    00005E3A E8 04            [16]  648 	add	sp, #4
                         0000032A   649 	C$Battle.c$147$2_0$150	= .
                                    650 	.globl	C$Battle.c$147$2_0$150
                                    651 ;src\Battle.c:147: set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
    00005E3C 11 01 56         [12]  652 	ld	de, #_MadSis_Map
    00005E3F D5               [16]  653 	push	de
    00005E40 21 05 07         [12]  654 	ld	hl, #0x705
    00005E43 E5               [16]  655 	push	hl
    00005E44 21 07 05         [12]  656 	ld	hl, #0x507
    00005E47 E5               [16]  657 	push	hl
    00005E48 CD 35 64         [24]  658 	call	_set_bkg_tiles
    00005E4B E8 06            [16]  659 	add	sp, #6
    00005E4D C3 3A 5F         [16]  660 	jp	00156$
    00005E50                        661 00119$:
                         0000033E   662 	C$Battle.c$149$1_0$137	= .
                                    663 	.globl	C$Battle.c$149$1_0$137
                                    664 ;src\Battle.c:149: else if (index == 13)
    00005E50 FA 6F CD         [16]  665 	ld	a, (#_index)
    00005E53 D6 0D            [ 8]  666 	sub	a, #0x0d
    00005E55 20 21            [12]  667 	jr	NZ, 00116$
                         00000345   668 	C$Battle.c$151$2_0$151	= .
                                    669 	.globl	C$Battle.c$151$2_0$151
                                    670 ;src\Battle.c:151: set_bkg_data(128, 29, Experiment_Tiles);
    00005E57 11 78 D4         [12]  671 	ld	de, #_Experiment_Tiles
    00005E5A D5               [16]  672 	push	de
    00005E5B 21 80 1D         [12]  673 	ld	hl, #0x1d80
    00005E5E E5               [16]  674 	push	hl
    00005E5F CD 08 63         [24]  675 	call	_set_bkg_data
    00005E62 E8 04            [16]  676 	add	sp, #4
                         00000352   677 	C$Battle.c$152$2_0$151	= .
                                    678 	.globl	C$Battle.c$152$2_0$151
                                    679 ;src\Battle.c:152: set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
    00005E64 11 58 D6         [12]  680 	ld	de, #_Experiment_Map
    00005E67 D5               [16]  681 	push	de
    00005E68 21 05 07         [12]  682 	ld	hl, #0x705
    00005E6B E5               [16]  683 	push	hl
    00005E6C 21 07 05         [12]  684 	ld	hl, #0x507
    00005E6F E5               [16]  685 	push	hl
    00005E70 CD 35 64         [24]  686 	call	_set_bkg_tiles
    00005E73 E8 06            [16]  687 	add	sp, #6
    00005E75 C3 3A 5F         [16]  688 	jp	00156$
    00005E78                        689 00116$:
                         00000366   690 	C$Battle.c$154$1_0$137	= .
                                    691 	.globl	C$Battle.c$154$1_0$137
                                    692 ;src\Battle.c:154: else if (index == 14)
    00005E78 FA 6F CD         [16]  693 	ld	a, (#_index)
    00005E7B D6 0E            [ 8]  694 	sub	a, #0x0e
    00005E7D 20 21            [12]  695 	jr	NZ, 00113$
                         0000036D   696 	C$Battle.c$156$2_0$152	= .
                                    697 	.globl	C$Battle.c$156$2_0$152
                                    698 ;src\Battle.c:156: set_bkg_data(128, 19, Ghost_Tiles);
    00005E7F 11 8F D6         [12]  699 	ld	de, #_Ghost_Tiles
    00005E82 D5               [16]  700 	push	de
    00005E83 21 80 13         [12]  701 	ld	hl, #0x1380
    00005E86 E5               [16]  702 	push	hl
    00005E87 CD 08 63         [24]  703 	call	_set_bkg_data
    00005E8A E8 04            [16]  704 	add	sp, #4
                         0000037A   705 	C$Battle.c$157$2_0$152	= .
                                    706 	.globl	C$Battle.c$157$2_0$152
                                    707 ;src\Battle.c:157: set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
    00005E8C 11 7B D6         [12]  708 	ld	de, #_Ghost_Map
    00005E8F D5               [16]  709 	push	de
    00005E90 21 04 05         [12]  710 	ld	hl, #0x504
    00005E93 E5               [16]  711 	push	hl
    00005E94 21 07 05         [12]  712 	ld	hl, #0x507
    00005E97 E5               [16]  713 	push	hl
    00005E98 CD 35 64         [24]  714 	call	_set_bkg_tiles
    00005E9B E8 06            [16]  715 	add	sp, #6
    00005E9D C3 3A 5F         [16]  716 	jp	00156$
    00005EA0                        717 00113$:
                         0000038E   718 	C$Battle.c$159$1_0$137	= .
                                    719 	.globl	C$Battle.c$159$1_0$137
                                    720 ;src\Battle.c:159: else if (index == 15)
    00005EA0 FA 6F CD         [16]  721 	ld	a, (#_index)
    00005EA3 D6 0F            [ 8]  722 	sub	a, #0x0f
    00005EA5 20 20            [12]  723 	jr	NZ, 00110$
                         00000395   724 	C$Battle.c$161$2_0$153	= .
                                    725 	.globl	C$Battle.c$161$2_0$153
                                    726 ;src\Battle.c:161: set_bkg_data(128, 14, Saucer_Tiles);
    00005EA7 11 CF D7         [12]  727 	ld	de, #_Saucer_Tiles
    00005EAA D5               [16]  728 	push	de
    00005EAB 21 80 0E         [12]  729 	ld	hl, #0xe80
    00005EAE E5               [16]  730 	push	hl
    00005EAF CD 08 63         [24]  731 	call	_set_bkg_data
    00005EB2 E8 04            [16]  732 	add	sp, #4
                         000003A2   733 	C$Battle.c$162$2_0$153	= .
                                    734 	.globl	C$Battle.c$162$2_0$153
                                    735 ;src\Battle.c:162: set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
    00005EB4 11 7B D6         [12]  736 	ld	de, #_Ghost_Map
    00005EB7 D5               [16]  737 	push	de
    00005EB8 21 05 03         [12]  738 	ld	hl, #0x305
    00005EBB E5               [16]  739 	push	hl
    00005EBC 21 07 05         [12]  740 	ld	hl, #0x507
    00005EBF E5               [16]  741 	push	hl
    00005EC0 CD 35 64         [24]  742 	call	_set_bkg_tiles
    00005EC3 E8 06            [16]  743 	add	sp, #6
    00005EC5 18 73            [12]  744 	jr	00156$
    00005EC7                        745 00110$:
                         000003B5   746 	C$Battle.c$164$1_0$137	= .
                                    747 	.globl	C$Battle.c$164$1_0$137
                                    748 ;src\Battle.c:164: else if (index == 16)
    00005EC7 FA 6F CD         [16]  749 	ld	a, (#_index)
    00005ECA D6 10            [ 8]  750 	sub	a, #0x10
    00005ECC 20 20            [12]  751 	jr	NZ, 00107$
                         000003BC   752 	C$Battle.c$166$2_0$154	= .
                                    753 	.globl	C$Battle.c$166$2_0$154
                                    754 ;src\Battle.c:166: set_bkg_data(128, 20, SockHead_Tiles);
    00005ECE 11 EA D8         [12]  755 	ld	de, #_SockHead_Tiles
    00005ED1 D5               [16]  756 	push	de
    00005ED2 21 80 14         [12]  757 	ld	hl, #0x1480
    00005ED5 E5               [16]  758 	push	hl
    00005ED6 CD 08 63         [24]  759 	call	_set_bkg_data
    00005ED9 E8 04            [16]  760 	add	sp, #4
                         000003C9   761 	C$Battle.c$167$2_0$154	= .
                                    762 	.globl	C$Battle.c$167$2_0$154
                                    763 ;src\Battle.c:167: set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
    00005EDB 11 CE D8         [12]  764 	ld	de, #_SockHead_Map
    00005EDE D5               [16]  765 	push	de
    00005EDF 21 04 07         [12]  766 	ld	hl, #0x704
    00005EE2 E5               [16]  767 	push	hl
    00005EE3 21 07 05         [12]  768 	ld	hl, #0x507
    00005EE6 E5               [16]  769 	push	hl
    00005EE7 CD 35 64         [24]  770 	call	_set_bkg_tiles
    00005EEA E8 06            [16]  771 	add	sp, #6
    00005EEC 18 4C            [12]  772 	jr	00156$
    00005EEE                        773 00107$:
                         000003DC   774 	C$Battle.c$169$1_0$137	= .
                                    775 	.globl	C$Battle.c$169$1_0$137
                                    776 ;src\Battle.c:169: else if (index == 17)
    00005EEE FA 6F CD         [16]  777 	ld	a, (#_index)
    00005EF1 D6 11            [ 8]  778 	sub	a, #0x11
    00005EF3 20 20            [12]  779 	jr	NZ, 00104$
                         000003E3   780 	C$Battle.c$171$2_0$155	= .
                                    781 	.globl	C$Battle.c$171$2_0$155
                                    782 ;src\Battle.c:171: set_bkg_data(128, 26, Toby_Tiles);
    00005EF5 11 56 DA         [12]  783 	ld	de, #_Toby_Tiles
    00005EF8 D5               [16]  784 	push	de
    00005EF9 21 80 1A         [12]  785 	ld	hl, #0x1a80
    00005EFC E5               [16]  786 	push	hl
    00005EFD CD 08 63         [24]  787 	call	_set_bkg_data
    00005F00 E8 04            [16]  788 	add	sp, #4
                         000003F0   789 	C$Battle.c$172$2_0$155	= .
                                    790 	.globl	C$Battle.c$172$2_0$155
                                    791 ;src\Battle.c:172: set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
    00005F02 11 3A DA         [12]  792 	ld	de, #_Toby_Map
    00005F05 D5               [16]  793 	push	de
    00005F06 21 04 07         [12]  794 	ld	hl, #0x704
    00005F09 E5               [16]  795 	push	hl
    00005F0A 21 07 05         [12]  796 	ld	hl, #0x507
    00005F0D E5               [16]  797 	push	hl
    00005F0E CD 35 64         [24]  798 	call	_set_bkg_tiles
    00005F11 E8 06            [16]  799 	add	sp, #6
    00005F13 18 25            [12]  800 	jr	00156$
    00005F15                        801 00104$:
                         00000403   802 	C$Battle.c$174$1_0$137	= .
                                    803 	.globl	C$Battle.c$174$1_0$137
                                    804 ;src\Battle.c:174: else if (index == 18)
    00005F15 FA 6F CD         [16]  805 	ld	a, (#_index)
    00005F18 D6 12            [ 8]  806 	sub	a, #0x12
    00005F1A 20 1E            [12]  807 	jr	NZ, 00156$
                         0000040A   808 	C$Battle.c$176$2_0$156	= .
                                    809 	.globl	C$Battle.c$176$2_0$156
                                    810 ;src\Battle.c:176: set_bkg_data(128, 24, Drunk_Tiles);
    00005F1C 11 D0 D2         [12]  811 	ld	de, #_Drunk_Tiles
    00005F1F D5               [16]  812 	push	de
    00005F20 21 80 18         [12]  813 	ld	hl, #0x1880
    00005F23 E5               [16]  814 	push	hl
    00005F24 CD 08 63         [24]  815 	call	_set_bkg_data
    00005F27 E8 04            [16]  816 	add	sp, #4
                         00000417   817 	C$Battle.c$177$2_0$156	= .
                                    818 	.globl	C$Battle.c$177$2_0$156
                                    819 ;src\Battle.c:177: set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
    00005F29 11 60 D4         [12]  820 	ld	de, #_Drunk_Map
    00005F2C D5               [16]  821 	push	de
    00005F2D 21 04 06         [12]  822 	ld	hl, #0x604
    00005F30 E5               [16]  823 	push	hl
    00005F31 21 07 05         [12]  824 	ld	hl, #0x507
    00005F34 E5               [16]  825 	push	hl
    00005F35 CD 35 64         [24]  826 	call	_set_bkg_tiles
    00005F38 E8 06            [16]  827 	add	sp, #6
    00005F3A                        828 00156$:
                         00000428   829 	C$Battle.c$179$1_0$137	= .
                                    830 	.globl	C$Battle.c$179$1_0$137
                                    831 ;src\Battle.c:179: performantdelay(120);
    00005F3A 3E 78            [ 8]  832 	ld	a, #0x78
    00005F3C CD 9E 24         [24]  833 	call	_performantdelay
                                    834 ;c:\gbdk\include\gb\gb.h:1463: SCX_REG+=x, SCY_REG+=y;
    00005F3F F0 42            [12]  835 	ldh	a, (_SCY_REG + 0)
    00005F41 C6 28            [ 8]  836 	add	a, #0x28
    00005F43 E0 42            [12]  837 	ldh	(_SCY_REG + 0), a
                         00000433   838 	C$Battle.c$180$3_0$137	= .
                                    839 	.globl	C$Battle.c$180$3_0$137
                                    840 ;src\Battle.c:180: scroll_bkg(0, 40);
                         00000433   841 	C$Battle.c$182$3_0$137	= .
                                    842 	.globl	C$Battle.c$182$3_0$137
                                    843 ;src\Battle.c:182: }
                         00000433   844 	C$Battle.c$182$3_0$137	= .
                                    845 	.globl	C$Battle.c$182$3_0$137
                         00000433   846 	XG$BattleSetup$0$0	= .
                                    847 	.globl	XG$BattleSetup$0$0
    00005F45 C9               [16]  848 	ret
                         00000434   849 FBattle$__str_0$0_0$0 == .
    00005F46                        850 ___str_0:
    00005F46 4A 69 6D 20 43 72 6F   851 	.ascii "Jim Crow draws"
             77 20 64 72 61 77 73
    00005F54 00                     852 	.db 0x00
                         00000443   853 FBattle$__str_1$0_0$0 == .
    00005F55                        854 ___str_1:
    00005F55 6E 65 61 72 2E         855 	.ascii "near."
    00005F5A 00                     856 	.db 0x00
                         00000449   857 FBattle$__str_2$0_0$0 == .
    00005F5B                        858 ___str_2:
    00005F5B 47 79 70 73 79 20 4D   859 	.ascii "Gypsy Moth draws"
             6F 74 68 20 64 72 61
             77 73
    00005F6B 00                     860 	.db 0x00
                         0000045A   861 FBattle$__str_3$0_0$0 == .
    00005F6C                        862 ___str_3:
    00005F6C 57 61 6C 6C 79 20 62   863 	.ascii "Wally butts in."
             75 74 74 73 20 69 6E
             2E
    00005F7B 00                     864 	.db 0x00
                         0000046A   865 FBattle$__str_4$0_0$0 == .
    00005F7C                        866 ___str_4:
    00005F7C 41 20 74 69 63 6B 20   867 	.ascii "A tick draws near."
             64 72 61 77 73 20 6E
             65 61 72 2E
    00005F8E 00                     868 	.db 0x00
                         0000047D   869 FBattle$__str_5$0_0$0 == .
    00005F8F                        870 ___str_5:
    00005F8F 41 6E 20 4F 66 66 69   871 	.ascii "An Officer draws"
             63 65 72 20 64 72 61
             77 73
    00005F9F 00                     872 	.db 0x00
                         0000048E   873 	G$BattleUpdate$0$0	= .
                                    874 	.globl	G$BattleUpdate$0$0
                         0000048E   875 	C$Battle.c$184$3_0$170	= .
                                    876 	.globl	C$Battle.c$184$3_0$170
                                    877 ;src\Battle.c:184: uint8_t BattleUpdate(void)
                                    878 ;	---------------------------------
                                    879 ; Function BattleUpdate
                                    880 ; ---------------------------------
    00005FA0                        881 _BattleUpdate::
                         0000048E   882 	C$Battle.c$186$1_0$170	= .
                                    883 	.globl	C$Battle.c$186$1_0$170
                                    884 ;src\Battle.c:186: if (joypadCurrent & J_SELECT)
    00005FA0 FA 6E CD         [16]  885 	ld	a, (#_joypadCurrent)
    00005FA3 CB 77            [ 8]  886 	bit	6, a
    00005FA5 28 03            [12]  887 	jr	Z, 00106$
                         00000495   888 	C$Battle.c$188$2_0$171	= .
                                    889 	.globl	C$Battle.c$188$2_0$171
                                    890 ;src\Battle.c:188: return GAMETITLE;
    00005FA7 3E 01            [ 8]  891 	ld	a, #0x01
    00005FA9 C9               [16]  892 	ret
    00005FAA                        893 00106$:
                         00000498   894 	C$Battle.c$190$1_0$170	= .
                                    895 	.globl	C$Battle.c$190$1_0$170
                                    896 ;src\Battle.c:190: else if ((joypadCurrent & J_DOWN) && !(joypadCurrent & J_DOWN))
    00005FAA E6 08            [ 8]  897 	and	a,#0x08
    00005FAC 28 1D            [12]  898 	jr	Z, 00102$
    00005FAE B7               [ 4]  899 	or	a, a
    00005FAF 20 1A            [12]  900 	jr	NZ, 00102$
                         0000049F   901 	C$Battle.c$192$2_0$172	= .
                                    902 	.globl	C$Battle.c$192$2_0$172
                                    903 ;src\Battle.c:192: cursor.x += 0;
    00005FB1 01 C0 C0         [12]  904 	ld	bc, #_cursor+0
    00005FB4 0A               [ 8]  905 	ld	a, (bc)
    00005FB5 02               [ 8]  906 	ld	(bc), a
                         000004A4   907 	C$Battle.c$193$2_0$172	= .
                                    908 	.globl	C$Battle.c$193$2_0$172
                                    909 ;src\Battle.c:193: cursor.y += 8;
    00005FB6 21 C1 C0         [12]  910 	ld	hl, #_cursor + 1
    00005FB9 7E               [ 8]  911 	ld	a, (hl)
    00005FBA C6 08            [ 8]  912 	add	a, #0x08
    00005FBC 77               [ 8]  913 	ld	(hl), a
                                    914 ;src\Battle.c:194: move_sprite(0, cursor.x, cursor.y);
    00005FBD 4E               [ 8]  915 	ld	c, (hl)
    00005FBE 21 C0 C0         [12]  916 	ld	hl, #_cursor
    00005FC1 46               [ 8]  917 	ld	b, (hl)
                                    918 ;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    00005FC2 21 00 C0         [12]  919 	ld	hl, #_shadow_OAM
                                    920 ;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
    00005FC5 79               [ 4]  921 	ld	a, c
    00005FC6 22               [ 8]  922 	ld	(hl+), a
    00005FC7 70               [ 8]  923 	ld	(hl), b
                         000004B6   924 	C$Battle.c$195$2_0$172	= .
                                    925 	.globl	C$Battle.c$195$2_0$172
                                    926 ;src\Battle.c:195: return BATTLE;
    00005FC8 3E 05            [ 8]  927 	ld	a, #0x05
    00005FCA C9               [16]  928 	ret
    00005FCB                        929 00102$:
                         000004B9   930 	C$Battle.c$199$2_0$173	= .
                                    931 	.globl	C$Battle.c$199$2_0$173
                                    932 ;src\Battle.c:199: return BATTLE;
    00005FCB 3E 05            [ 8]  933 	ld	a, #0x05
                         000004BB   934 	C$Battle.c$201$1_0$170	= .
                                    935 	.globl	C$Battle.c$201$1_0$170
                                    936 ;src\Battle.c:201: }
                         000004BB   937 	C$Battle.c$201$1_0$170	= .
                                    938 	.globl	C$Battle.c$201$1_0$170
                         000004BB   939 	XG$BattleUpdate$0$0	= .
                                    940 	.globl	XG$BattleUpdate$0$0
    00005FCD C9               [16]  941 	ret
                                    942 	.area _CODE
                                    943 	.area _INITIALIZER
                                    944 	.area _CABS (ABS)
