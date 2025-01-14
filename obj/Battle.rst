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
                                     11 	.globl b_BattleUpdate
                                     12 	.globl _BattleUpdate
                                     13 	.globl b___func_BattleUpdate
                                     14 	.globl ___func_BattleUpdate
                                     15 	.globl b_BattleSetup
                                     16 	.globl _BattleSetup
                                     17 	.globl b___func_BattleSetup
                                     18 	.globl ___func_BattleSetup
                                     19 	.globl b___func_const_bank_ID_battle
                                     20 	.globl ___func_const_bank_ID_battle
                                     21 	.globl _InvertColor
                                     22 	.globl _fadeFromBlack
                                     23 	.globl _DrawText
                                     24 	.globl _DrawNumber
                                     25 	.globl _performantdelay
                                     26 	.globl _set_bkg_tiles
                                     27 	.globl _set_bkg_data
                                     28 	.globl _cursor
                                     29 	.globl _const_bank_ID_battle
                                     30 ;--------------------------------------------------------
                                     31 ; special function registers
                                     32 ;--------------------------------------------------------
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area _DATA
                         00000000    37 G$cursor$0_0$0==.
    0000C0C0                         38 _cursor::
    0000C0C0                         39 	.ds 4
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area _INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area _DABS (ABS)
                                     48 ;--------------------------------------------------------
                                     49 ; global & static initialisations
                                     50 ;--------------------------------------------------------
                                     51 	.area _HOME
                                     52 	.area _GSINIT
                                     53 	.area _GSFINAL
                                     54 	.area _GSINIT
                                     55 ;--------------------------------------------------------
                                     56 ; Home
                                     57 ;--------------------------------------------------------
                                     58 	.area _HOME
                                     59 	.area _HOME
                                     60 ;--------------------------------------------------------
                                     61 ; code
                                     62 ;--------------------------------------------------------
                                     63 	.area _CODE_5
                         00000000    64 	G$__func_const_bank_ID_battle$0$0	= .
                                     65 	.globl	G$__func_const_bank_ID_battle$0$0
                         00000000    66 	C$Battle.c$42$0_0$137	= .
                                     67 	.globl	C$Battle.c$42$0_0$137
                                     68 ;src\Battle.c:42: BANKREF(const_bank_ID_battle)
                                     69 ;	---------------------------------
                                     70 ; Function __func_const_bank_ID_battle
                                     71 ; ---------------------------------
                         00000005    72 	b___func_const_bank_ID_battle	= 5
    0005647E                         73 ___func_const_bank_ID_battle::
                                     74 	.local b___func_const_bank_ID_battle 
                         00000005    75 	___bank_const_bank_ID_battle = b___func_const_bank_ID_battle 
                                     76 	.globl ___bank_const_bank_ID_battle 
                         00000000    77 	G$__func_BattleSetup$0$0	= .
                                     78 	.globl	G$__func_BattleSetup$0$0
                         00000000    79 	C$Battle.c$55$1_0$139	= .
                                     80 	.globl	C$Battle.c$55$1_0$139
                                     81 ;src\Battle.c:55: BANKREF(BattleSetup)
                                     82 ;	---------------------------------
                                     83 ; Function __func_BattleSetup
                                     84 ; ---------------------------------
                         00000005    85 	b___func_BattleSetup	= 5
    0005647E                         86 ___func_BattleSetup::
                                     87 	.local b___func_BattleSetup 
                         00000005    88 	___bank_BattleSetup = b___func_BattleSetup 
                                     89 	.globl ___bank_BattleSetup 
                         00000000    90 	G$BattleSetup$0$0	= .
                                     91 	.globl	G$BattleSetup$0$0
                         00000000    92 	C$Battle.c$56$1_0$141	= .
                                     93 	.globl	C$Battle.c$56$1_0$141
                                     94 ;src\Battle.c:56: void BattleSetup(void) BANKED
                                     95 ;	---------------------------------
                                     96 ; Function BattleSetup
                                     97 ; ---------------------------------
                         00000005    98 	b_BattleSetup	= 5
    0005647E                         99 _BattleSetup::
                                    100 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    0005647E AF               [ 4]  101 	xor	a, a
    0005647F E0 43            [12]  102 	ldh	(_SCX_REG + 0), a
    00056481 AF               [ 4]  103 	xor	a, a
    00056482 E0 42            [12]  104 	ldh	(_SCY_REG + 0), a
                         00000006   105 	C$Battle.c$59$1_0$141	= .
                                    106 	.globl	C$Battle.c$59$1_0$141
                                    107 ;src\Battle.c:59: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00056484 11 E2 02         [12]  108 	ld	de, #_FontTiles
    00056487 D5               [16]  109 	push	de
    00056488 21 00 35         [12]  110 	ld	hl, #0x3500
    0005648B E5               [16]  111 	push	hl
    0005648C CD 85 0E         [24]  112 	call	_set_bkg_data
    0005648F E8 04            [16]  113 	add	sp, #4
                         00000013   114 	C$Battle.c$60$1_0$141	= .
                                    115 	.globl	C$Battle.c$60$1_0$141
                                    116 ;src\Battle.c:60: set_bkg_tiles(0, 0, Battle_MapWidth, Battle_MapHeight, Battle_Map); // draw background window & text
    00056491 11 3B 69         [12]  117 	ld	de, #_Battle_Map
    00056494 D5               [16]  118 	push	de
    00056495 21 14 17         [12]  119 	ld	hl, #0x1714
    00056498 E5               [16]  120 	push	hl
    00056499 AF               [ 4]  121 	xor	a, a
    0005649A 0F               [ 4]  122 	rrca
    0005649B F5               [16]  123 	push	af
    0005649C CD CC 0F         [24]  124 	call	_set_bkg_tiles
    0005649F E8 06            [16]  125 	add	sp, #6
                         00000023   126 	C$Battle.c$62$1_0$141	= .
                                    127 	.globl	C$Battle.c$62$1_0$141
                                    128 ;src\Battle.c:62: DrawNumber(1, 14, 123456, 6, TRUE);
    000564A1 21 06 01         [12]  129 	ld	hl, #0x106
    000564A4 E5               [16]  130 	push	hl
    000564A5 11 40 E2         [12]  131 	ld	de, #0xe240
    000564A8 D5               [16]  132 	push	de
    000564A9 1E 0E            [ 8]  133 	ld	e, #0x0e
    000564AB 3E 01            [ 8]  134 	ld	a, #0x01
    000564AD CD DD 08         [24]  135 	call	_DrawNumber
                         00000032   136 	C$Battle.c$63$1_0$141	= .
                                    137 	.globl	C$Battle.c$63$1_0$141
                                    138 ;src\Battle.c:63: DrawNumber(8, 14, 110, 3, TRUE);
    000564B0 21 03 01         [12]  139 	ld	hl, #0x103
    000564B3 E5               [16]  140 	push	hl
    000564B4 11 6E 00         [12]  141 	ld	de, #0x006e
    000564B7 D5               [16]  142 	push	de
    000564B8 1E 0E            [ 8]  143 	ld	e, #0x0e
    000564BA 3E 08            [ 8]  144 	ld	a, #0x08
    000564BC CD DD 08         [24]  145 	call	_DrawNumber
                         00000041   146 	C$Battle.c$64$1_0$141	= .
                                    147 	.globl	C$Battle.c$64$1_0$141
                                    148 ;src\Battle.c:64: DrawNumber(13, 14, 70, 2, TRUE);
    000564BF 21 02 01         [12]  149 	ld	hl, #0x102
    000564C2 E5               [16]  150 	push	hl
    000564C3 11 46 00         [12]  151 	ld	de, #0x0046
    000564C6 D5               [16]  152 	push	de
    000564C7 1E 0E            [ 8]  153 	ld	e, #0x0e
    000564C9 3E 0D            [ 8]  154 	ld	a, #0x0d
    000564CB CD DD 08         [24]  155 	call	_DrawNumber
                         00000050   156 	C$Battle.c$65$1_0$141	= .
                                    157 	.globl	C$Battle.c$65$1_0$141
                                    158 ;src\Battle.c:65: DrawNumber(17, 14, 11, 2, TRUE);
    000564CE 21 02 01         [12]  159 	ld	hl, #0x102
    000564D1 E5               [16]  160 	push	hl
    000564D2 11 0B 00         [12]  161 	ld	de, #0x000b
    000564D5 D5               [16]  162 	push	de
    000564D6 1E 0E            [ 8]  163 	ld	e, #0x0e
    000564D8 3E 11            [ 8]  164 	ld	a, #0x11
    000564DA CD DD 08         [24]  165 	call	_DrawNumber
                         0000005F   166 	C$Battle.c$67$1_0$141	= .
                                    167 	.globl	C$Battle.c$67$1_0$141
                                    168 ;src\Battle.c:67: DrawNumber(1, 15, 123456, 6, TRUE);
    000564DD 21 06 01         [12]  169 	ld	hl, #0x106
    000564E0 E5               [16]  170 	push	hl
    000564E1 11 40 E2         [12]  171 	ld	de, #0xe240
    000564E4 D5               [16]  172 	push	de
    000564E5 1E 0F            [ 8]  173 	ld	e, #0x0f
    000564E7 3E 01            [ 8]  174 	ld	a, #0x01
    000564E9 CD DD 08         [24]  175 	call	_DrawNumber
                         0000006E   176 	C$Battle.c$68$1_0$141	= .
                                    177 	.globl	C$Battle.c$68$1_0$141
                                    178 ;src\Battle.c:68: DrawNumber(9, 15, 80, 2, TRUE);
    000564EC 21 02 01         [12]  179 	ld	hl, #0x102
    000564EF E5               [16]  180 	push	hl
    000564F0 11 50 00         [12]  181 	ld	de, #0x0050
    000564F3 D5               [16]  182 	push	de
    000564F4 1E 0F            [ 8]  183 	ld	e, #0x0f
    000564F6 3E 09            [ 8]  184 	ld	a, #0x09
    000564F8 CD DD 08         [24]  185 	call	_DrawNumber
                         0000007D   186 	C$Battle.c$69$1_0$141	= .
                                    187 	.globl	C$Battle.c$69$1_0$141
                                    188 ;src\Battle.c:69: DrawNumber(13, 15, 33, 2, TRUE);
    000564FB 21 02 01         [12]  189 	ld	hl, #0x102
    000564FE E5               [16]  190 	push	hl
    000564FF 11 21 00         [12]  191 	ld	de, #0x0021
    00056502 D5               [16]  192 	push	de
    00056503 1E 0F            [ 8]  193 	ld	e, #0x0f
    00056505 3E 0D            [ 8]  194 	ld	a, #0x0d
    00056507 CD DD 08         [24]  195 	call	_DrawNumber
                         0000008C   196 	C$Battle.c$70$1_0$141	= .
                                    197 	.globl	C$Battle.c$70$1_0$141
                                    198 ;src\Battle.c:70: DrawNumber(17, 15, 11, 2, TRUE);
    0005650A 21 02 01         [12]  199 	ld	hl, #0x102
    0005650D E5               [16]  200 	push	hl
    0005650E 11 0B 00         [12]  201 	ld	de, #0x000b
    00056511 D5               [16]  202 	push	de
    00056512 1E 0F            [ 8]  203 	ld	e, #0x0f
    00056514 3E 11            [ 8]  204 	ld	a, #0x11
    00056516 CD DD 08         [24]  205 	call	_DrawNumber
                         0000009B   206 	C$Battle.c$73$1_0$141	= .
                                    207 	.globl	C$Battle.c$73$1_0$141
                                    208 ;src\Battle.c:73: cursor.x = 8;
    00056519 21 C0 C0         [12]  209 	ld	hl, #_cursor
    0005651C 36 08            [12]  210 	ld	(hl), #0x08
                         000000A0   211 	C$Battle.c$74$1_0$141	= .
                                    212 	.globl	C$Battle.c$74$1_0$141
                                    213 ;src\Battle.c:74: cursor.y = 144;
    0005651E 01 C1 C0         [12]  214 	ld	bc, #_cursor + 1
    00056521 3E 90            [ 8]  215 	ld	a, #0x90
    00056523 02               [ 8]  216 	ld	(bc), a
                                    217 ;c:\gbdk\include\gb\gb.h:1875: shadow_OAM[nb].tile=tile;
    00056524 21 02 C0         [12]  218 	ld	hl, #(_shadow_OAM + 2)
    00056527 36 FF            [12]  219 	ld	(hl), #0xff
                                    220 ;src\Battle.c:76: move_sprite(0, cursor.x, cursor.y);
    00056529 0A               [ 8]  221 	ld	a, (bc)
    0005652A 47               [ 4]  222 	ld	b, a
    0005652B 21 C0 C0         [12]  223 	ld	hl, #_cursor
    0005652E 4E               [ 8]  224 	ld	c, (hl)
                                    225 ;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    0005652F 21 00 C0         [12]  226 	ld	hl, #_shadow_OAM
                                    227 ;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
    00056532 78               [ 4]  228 	ld	a, b
    00056533 22               [ 8]  229 	ld	(hl+), a
    00056534 71               [ 8]  230 	ld	(hl), c
                         000000B7   231 	C$Battle.c$79$1_0$141	= .
                                    232 	.globl	C$Battle.c$79$1_0$141
                                    233 ;src\Battle.c:79: SHOW_BKG; 
    00056535 F0 40            [12]  234 	ldh	a, (_LCDC_REG + 0)
    00056537 F6 01            [ 8]  235 	or	a, #0x01
    00056539 E0 40            [12]  236 	ldh	(_LCDC_REG + 0), a
                         000000BD   237 	C$Battle.c$80$1_0$141	= .
                                    238 	.globl	C$Battle.c$80$1_0$141
                                    239 ;src\Battle.c:80: fadeFromBlack(5);
    0005653B 3E 05            [ 8]  240 	ld	a, #0x05
    0005653D CD FD 0A         [24]  241 	call	_fadeFromBlack
                         000000C2   242 	C$Battle.c$81$1_0$141	= .
                                    243 	.globl	C$Battle.c$81$1_0$141
                                    244 ;src\Battle.c:81: if (index == 0) // JIM
    00056540 FA 6F CD         [16]  245 	ld	a, (#_index)
    00056543 B7               [ 4]  246 	or	a, a
    00056544 20 3E            [12]  247 	jr	NZ, 00155$
                         000000C8   248 	C$Battle.c$83$2_0$142	= .
                                    249 	.globl	C$Battle.c$83$2_0$142
                                    250 ;src\Battle.c:83: DrawText(1, 1, "Jim Crow draws", TRUE);
    00056546 3E 01            [ 8]  251 	ld	a, #0x01
    00056548 F5               [16]  252 	push	af
    00056549 33               [ 8]  253 	inc	sp
    0005654A 11 B3 68         [12]  254 	ld	de, #___str_0
    0005654D D5               [16]  255 	push	de
    0005654E 3E 01            [ 8]  256 	ld	a,#0x01
    00056550 5F               [ 4]  257 	ld	e,a
    00056551 CD B7 09         [24]  258 	call	_DrawText
                         000000D6   259 	C$Battle.c$84$2_0$142	= .
                                    260 	.globl	C$Battle.c$84$2_0$142
                                    261 ;src\Battle.c:84: DrawText(1, 3, "near.", TRUE);
    00056554 3E 01            [ 8]  262 	ld	a, #0x01
    00056556 F5               [16]  263 	push	af
    00056557 33               [ 8]  264 	inc	sp
    00056558 11 C2 68         [12]  265 	ld	de, #___str_1
    0005655B D5               [16]  266 	push	de
    0005655C 1E 03            [ 8]  267 	ld	e, #0x03
    0005655E 3E 01            [ 8]  268 	ld	a, #0x01
    00056560 CD B7 09         [24]  269 	call	_DrawText
                         000000E5   270 	C$Battle.c$85$2_0$142	= .
                                    271 	.globl	C$Battle.c$85$2_0$142
                                    272 ;src\Battle.c:85: set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
    00056563 11 68 41         [12]  273 	ld	de, #_Crow_Tiles
    00056566 D5               [16]  274 	push	de
    00056567 21 80 17         [12]  275 	ld	hl, #0x1780
    0005656A E5               [16]  276 	push	hl
    0005656B CD 85 0E         [24]  277 	call	_set_bkg_data
    0005656E E8 04            [16]  278 	add	sp, #4
                         000000F2   279 	C$Battle.c$86$2_0$142	= .
                                    280 	.globl	C$Battle.c$86$2_0$142
                                    281 ;src\Battle.c:86: set_bkg_tiles(7, 6, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
    00056570 11 F8 42         [12]  282 	ld	de, #_Crow_Map
    00056573 D5               [16]  283 	push	de
    00056574 21 05 07         [12]  284 	ld	hl, #0x705
    00056577 E5               [16]  285 	push	hl
    00056578 21 07 06         [12]  286 	ld	hl, #0x607
    0005657B E5               [16]  287 	push	hl
    0005657C CD CC 0F         [24]  288 	call	_set_bkg_tiles
    0005657F E8 06            [16]  289 	add	sp, #6
    00056581 C3 A6 68         [16]  290 	jp	00156$
    00056584                        291 00155$:
                         00000106   292 	C$Battle.c$88$1_0$141	= .
                                    293 	.globl	C$Battle.c$88$1_0$141
                                    294 ;src\Battle.c:88: else if (index == 1) // GYPSY
    00056584 FA 6F CD         [16]  295 	ld	a, (#_index)
    00056587 3D               [ 4]  296 	dec	a
    00056588 20 3E            [12]  297 	jr	NZ, 00152$
                         0000010C   298 	C$Battle.c$90$2_0$143	= .
                                    299 	.globl	C$Battle.c$90$2_0$143
                                    300 ;src\Battle.c:90: DrawText(1, 1, "Gypsy Moth draws", TRUE);
    0005658A 3E 01            [ 8]  301 	ld	a, #0x01
    0005658C F5               [16]  302 	push	af
    0005658D 33               [ 8]  303 	inc	sp
    0005658E 11 C8 68         [12]  304 	ld	de, #___str_2
    00056591 D5               [16]  305 	push	de
    00056592 3E 01            [ 8]  306 	ld	a,#0x01
    00056594 5F               [ 4]  307 	ld	e,a
    00056595 CD B7 09         [24]  308 	call	_DrawText
                         0000011A   309 	C$Battle.c$91$2_0$143	= .
                                    310 	.globl	C$Battle.c$91$2_0$143
                                    311 ;src\Battle.c:91: DrawText(1, 3, "near.", TRUE);
    00056598 3E 01            [ 8]  312 	ld	a, #0x01
    0005659A F5               [16]  313 	push	af
    0005659B 33               [ 8]  314 	inc	sp
    0005659C 11 C2 68         [12]  315 	ld	de, #___str_1
    0005659F D5               [16]  316 	push	de
    000565A0 1E 03            [ 8]  317 	ld	e, #0x03
    000565A2 3E 01            [ 8]  318 	ld	a, #0x01
    000565A4 CD B7 09         [24]  319 	call	_DrawText
                         00000129   320 	C$Battle.c$92$2_0$143	= .
                                    321 	.globl	C$Battle.c$92$2_0$143
                                    322 ;src\Battle.c:92: set_bkg_data(128, 29, GypsyTiles); 
    000565A7 11 9D 52         [12]  323 	ld	de, #_GypsyTiles
    000565AA D5               [16]  324 	push	de
    000565AB 21 80 1D         [12]  325 	ld	hl, #0x1d80
    000565AE E5               [16]  326 	push	hl
    000565AF CD 85 0E         [24]  327 	call	_set_bkg_data
    000565B2 E8 04            [16]  328 	add	sp, #4
                         00000136   329 	C$Battle.c$93$2_0$143	= .
                                    330 	.globl	C$Battle.c$93$2_0$143
                                    331 ;src\Battle.c:93: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    000565B4 11 8D 54         [12]  332 	ld	de, #_Gypsy_Map
    000565B7 D5               [16]  333 	push	de
    000565B8 21 06 07         [12]  334 	ld	hl, #0x706
    000565BB E5               [16]  335 	push	hl
    000565BC 21 07 05         [12]  336 	ld	hl, #0x507
    000565BF E5               [16]  337 	push	hl
    000565C0 CD CC 0F         [24]  338 	call	_set_bkg_tiles
    000565C3 E8 06            [16]  339 	add	sp, #6
    000565C5 C3 A6 68         [16]  340 	jp	00156$
    000565C8                        341 00152$:
                         0000014A   342 	C$Battle.c$95$1_0$141	= .
                                    343 	.globl	C$Battle.c$95$1_0$141
                                    344 ;src\Battle.c:95: else if (index == 2) // WALLY
    000565C8 FA 6F CD         [16]  345 	ld	a, (#_index)
    000565CB D6 02            [ 8]  346 	sub	a, #0x02
    000565CD 20 2F            [12]  347 	jr	NZ, 00149$
                         00000151   348 	C$Battle.c$97$2_0$144	= .
                                    349 	.globl	C$Battle.c$97$2_0$144
                                    350 ;src\Battle.c:97: DrawText(1, 1, "Wally butts in.", TRUE);
    000565CF 3E 01            [ 8]  351 	ld	a, #0x01
    000565D1 F5               [16]  352 	push	af
    000565D2 33               [ 8]  353 	inc	sp
    000565D3 11 D9 68         [12]  354 	ld	de, #___str_3
    000565D6 D5               [16]  355 	push	de
    000565D7 3E 01            [ 8]  356 	ld	a,#0x01
    000565D9 5F               [ 4]  357 	ld	e,a
    000565DA CD B7 09         [24]  358 	call	_DrawText
                         0000015F   359 	C$Battle.c$98$2_0$144	= .
                                    360 	.globl	C$Battle.c$98$2_0$144
                                    361 ;src\Battle.c:98: set_bkg_data(128, 27, WallyTiles); 
    000565DD 11 B7 54         [12]  362 	ld	de, #_WallyTiles
    000565E0 D5               [16]  363 	push	de
    000565E1 21 80 1B         [12]  364 	ld	hl, #0x1b80
    000565E4 E5               [16]  365 	push	hl
    000565E5 CD 85 0E         [24]  366 	call	_set_bkg_data
    000565E8 E8 04            [16]  367 	add	sp, #4
                         0000016C   368 	C$Battle.c$99$2_0$144	= .
                                    369 	.globl	C$Battle.c$99$2_0$144
                                    370 ;src\Battle.c:99: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    000565EA 11 8D 54         [12]  371 	ld	de, #_Gypsy_Map
    000565ED D5               [16]  372 	push	de
    000565EE 21 06 07         [12]  373 	ld	hl, #0x706
    000565F1 E5               [16]  374 	push	hl
    000565F2 21 07 05         [12]  375 	ld	hl, #0x507
    000565F5 E5               [16]  376 	push	hl
    000565F6 CD CC 0F         [24]  377 	call	_set_bkg_tiles
    000565F9 E8 06            [16]  378 	add	sp, #6
    000565FB C3 A6 68         [16]  379 	jp	00156$
    000565FE                        380 00149$:
                         00000180   381 	C$Battle.c$101$1_0$141	= .
                                    382 	.globl	C$Battle.c$101$1_0$141
                                    383 ;src\Battle.c:101: else if (index == 3) // TICK
    000565FE FA 6F CD         [16]  384 	ld	a, (#_index)
    00056601 D6 03            [ 8]  385 	sub	a, #0x03
    00056603 20 2F            [12]  386 	jr	NZ, 00146$
                         00000187   387 	C$Battle.c$103$2_0$145	= .
                                    388 	.globl	C$Battle.c$103$2_0$145
                                    389 ;src\Battle.c:103: DrawText(1, 1, "A tick draws near.", TRUE);
    00056605 3E 01            [ 8]  390 	ld	a, #0x01
    00056607 F5               [16]  391 	push	af
    00056608 33               [ 8]  392 	inc	sp
    00056609 11 E9 68         [12]  393 	ld	de, #___str_4
    0005660C D5               [16]  394 	push	de
    0005660D 3E 01            [ 8]  395 	ld	a,#0x01
    0005660F 5F               [ 4]  396 	ld	e,a
    00056610 CD B7 09         [24]  397 	call	_DrawText
                         00000195   398 	C$Battle.c$104$2_0$145	= .
                                    399 	.globl	C$Battle.c$104$2_0$145
                                    400 ;src\Battle.c:104: set_bkg_data(128, 20, Tick_Tiles); 
    00056613 11 CD 59         [12]  401 	ld	de, #_Tick_Tiles
    00056616 D5               [16]  402 	push	de
    00056617 21 80 14         [12]  403 	ld	hl, #0x1480
    0005661A E5               [16]  404 	push	hl
    0005661B CD 85 0E         [24]  405 	call	_set_bkg_data
    0005661E E8 04            [16]  406 	add	sp, #4
                         000001A2   407 	C$Battle.c$105$2_0$145	= .
                                    408 	.globl	C$Battle.c$105$2_0$145
                                    409 ;src\Battle.c:105: set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
    00056620 11 1D 5B         [12]  410 	ld	de, #_Tick_Map
    00056623 D5               [16]  411 	push	de
    00056624 21 05 05         [12]  412 	ld	hl, #0x505
    00056627 E5               [16]  413 	push	hl
    00056628 21 07 05         [12]  414 	ld	hl, #0x507
    0005662B E5               [16]  415 	push	hl
    0005662C CD CC 0F         [24]  416 	call	_set_bkg_tiles
    0005662F E8 06            [16]  417 	add	sp, #6
    00056631 C3 A6 68         [16]  418 	jp	00156$
    00056634                        419 00146$:
                         000001B6   420 	C$Battle.c$107$1_0$141	= .
                                    421 	.globl	C$Battle.c$107$1_0$141
                                    422 ;src\Battle.c:107: else if (index == 4) // OFFICER
    00056634 FA 6F CD         [16]  423 	ld	a, (#_index)
    00056637 D6 04            [ 8]  424 	sub	a, #0x04
    00056639 20 3E            [12]  425 	jr	NZ, 00143$
                         000001BD   426 	C$Battle.c$109$2_0$146	= .
                                    427 	.globl	C$Battle.c$109$2_0$146
                                    428 ;src\Battle.c:109: DrawText(1, 1, "An Officer draws", TRUE);
    0005663B 3E 01            [ 8]  429 	ld	a, #0x01
    0005663D F5               [16]  430 	push	af
    0005663E 33               [ 8]  431 	inc	sp
    0005663F 11 FC 68         [12]  432 	ld	de, #___str_5
    00056642 D5               [16]  433 	push	de
    00056643 3E 01            [ 8]  434 	ld	a,#0x01
    00056645 5F               [ 4]  435 	ld	e,a
    00056646 CD B7 09         [24]  436 	call	_DrawText
                         000001CB   437 	C$Battle.c$110$2_0$146	= .
                                    438 	.globl	C$Battle.c$110$2_0$146
                                    439 ;src\Battle.c:110: DrawText(1, 3, "near.", TRUE);
    00056649 3E 01            [ 8]  440 	ld	a, #0x01
    0005664B F5               [16]  441 	push	af
    0005664C 33               [ 8]  442 	inc	sp
    0005664D 11 C2 68         [12]  443 	ld	de, #___str_1
    00056650 D5               [16]  444 	push	de
    00056651 1E 03            [ 8]  445 	ld	e, #0x03
    00056653 3E 01            [ 8]  446 	ld	a, #0x01
    00056655 CD B7 09         [24]  447 	call	_DrawText
                         000001DA   448 	C$Battle.c$111$2_0$146	= .
                                    449 	.globl	C$Battle.c$111$2_0$146
                                    450 ;src\Battle.c:111: set_bkg_data(128, 39, Cop_Tiles); 
    00056658 11 95 56         [12]  451 	ld	de, #_Cop_Tiles
    0005665B D5               [16]  452 	push	de
    0005665C 21 80 27         [12]  453 	ld	hl, #0x2780
    0005665F E5               [16]  454 	push	hl
    00056660 CD 85 0E         [24]  455 	call	_set_bkg_data
    00056663 E8 04            [16]  456 	add	sp, #4
                         000001E7   457 	C$Battle.c$112$2_0$146	= .
                                    458 	.globl	C$Battle.c$112$2_0$146
                                    459 ;src\Battle.c:112: set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
    00056665 11 25 59         [12]  460 	ld	de, #_Officer_Map
    00056668 D5               [16]  461 	push	de
    00056669 21 06 07         [12]  462 	ld	hl, #0x706
    0005666C E5               [16]  463 	push	hl
    0005666D 21 07 05         [12]  464 	ld	hl, #0x507
    00056670 E5               [16]  465 	push	hl
    00056671 CD CC 0F         [24]  466 	call	_set_bkg_tiles
    00056674 E8 06            [16]  467 	add	sp, #6
    00056676 C3 A6 68         [16]  468 	jp	00156$
    00056679                        469 00143$:
                         000001FB   470 	C$Battle.c$114$1_0$141	= .
                                    471 	.globl	C$Battle.c$114$1_0$141
                                    472 ;src\Battle.c:114: else if (index == 5) // POLICE
    00056679 FA 6F CD         [16]  473 	ld	a, (#_index)
    0005667C D6 05            [ 8]  474 	sub	a, #0x05
    0005667E 20 21            [12]  475 	jr	NZ, 00140$
                         00000202   476 	C$Battle.c$116$2_0$147	= .
                                    477 	.globl	C$Battle.c$116$2_0$147
                                    478 ;src\Battle.c:116: set_bkg_data(128, 39, Cop_Tiles); 
    00056680 11 95 56         [12]  479 	ld	de, #_Cop_Tiles
    00056683 D5               [16]  480 	push	de
    00056684 21 80 27         [12]  481 	ld	hl, #0x2780
    00056687 E5               [16]  482 	push	hl
    00056688 CD 85 0E         [24]  483 	call	_set_bkg_data
    0005668B E8 04            [16]  484 	add	sp, #4
                         0000020F   485 	C$Battle.c$117$2_0$147	= .
                                    486 	.globl	C$Battle.c$117$2_0$147
                                    487 ;src\Battle.c:117: set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
    0005668D 11 4F 59         [12]  488 	ld	de, #_Police_Map
    00056690 D5               [16]  489 	push	de
    00056691 21 06 07         [12]  490 	ld	hl, #0x706
    00056694 E5               [16]  491 	push	hl
    00056695 21 07 05         [12]  492 	ld	hl, #0x507
    00056698 E5               [16]  493 	push	hl
    00056699 CD CC 0F         [24]  494 	call	_set_bkg_tiles
    0005669C E8 06            [16]  495 	add	sp, #6
    0005669E C3 A6 68         [16]  496 	jp	00156$
    000566A1                        497 00140$:
                         00000223   498 	C$Battle.c$119$1_0$141	= .
                                    499 	.globl	C$Battle.c$119$1_0$141
                                    500 ;src\Battle.c:119: else if (index == 6) // SHERIFF
    000566A1 FA 6F CD         [16]  501 	ld	a, (#_index)
    000566A4 D6 06            [ 8]  502 	sub	a, #0x06
    000566A6 20 21            [12]  503 	jr	NZ, 00137$
                         0000022A   504 	C$Battle.c$121$2_0$148	= .
                                    505 	.globl	C$Battle.c$121$2_0$148
                                    506 ;src\Battle.c:121: set_bkg_data(128, 39, Cop_Tiles); 
    000566A8 11 95 56         [12]  507 	ld	de, #_Cop_Tiles
    000566AB D5               [16]  508 	push	de
    000566AC 21 80 27         [12]  509 	ld	hl, #0x2780
    000566AF E5               [16]  510 	push	hl
    000566B0 CD 85 0E         [24]  511 	call	_set_bkg_data
    000566B3 E8 04            [16]  512 	add	sp, #4
                         00000237   513 	C$Battle.c$122$2_0$148	= .
                                    514 	.globl	C$Battle.c$122$2_0$148
                                    515 ;src\Battle.c:122: set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
    000566B5 11 79 59         [12]  516 	ld	de, #_Sheriff_Map
    000566B8 D5               [16]  517 	push	de
    000566B9 21 06 07         [12]  518 	ld	hl, #0x706
    000566BC E5               [16]  519 	push	hl
    000566BD 21 07 05         [12]  520 	ld	hl, #0x507
    000566C0 E5               [16]  521 	push	hl
    000566C1 CD CC 0F         [24]  522 	call	_set_bkg_tiles
    000566C4 E8 06            [16]  523 	add	sp, #6
    000566C6 C3 A6 68         [16]  524 	jp	00156$
    000566C9                        525 00137$:
                         0000024B   526 	C$Battle.c$124$1_0$141	= .
                                    527 	.globl	C$Battle.c$124$1_0$141
                                    528 ;src\Battle.c:124: else if (index == 7) // CHIEF
    000566C9 FA 6F CD         [16]  529 	ld	a, (#_index)
    000566CC D6 07            [ 8]  530 	sub	a, #0x07
    000566CE 20 21            [12]  531 	jr	NZ, 00134$
                         00000252   532 	C$Battle.c$126$2_0$149	= .
                                    533 	.globl	C$Battle.c$126$2_0$149
                                    534 ;src\Battle.c:126: set_bkg_data(128, 39, Cop_Tiles); 
    000566D0 11 95 56         [12]  535 	ld	de, #_Cop_Tiles
    000566D3 D5               [16]  536 	push	de
    000566D4 21 80 27         [12]  537 	ld	hl, #0x2780
    000566D7 E5               [16]  538 	push	hl
    000566D8 CD 85 0E         [24]  539 	call	_set_bkg_data
    000566DB E8 04            [16]  540 	add	sp, #4
                         0000025F   541 	C$Battle.c$127$2_0$149	= .
                                    542 	.globl	C$Battle.c$127$2_0$149
                                    543 ;src\Battle.c:127: set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
    000566DD 11 A3 59         [12]  544 	ld	de, #_Chief_Map
    000566E0 D5               [16]  545 	push	de
    000566E1 21 06 07         [12]  546 	ld	hl, #0x706
    000566E4 E5               [16]  547 	push	hl
    000566E5 21 07 05         [12]  548 	ld	hl, #0x507
    000566E8 E5               [16]  549 	push	hl
    000566E9 CD CC 0F         [24]  550 	call	_set_bkg_tiles
    000566EC E8 06            [16]  551 	add	sp, #6
    000566EE C3 A6 68         [16]  552 	jp	00156$
    000566F1                        553 00134$:
                         00000273   554 	C$Battle.c$129$1_0$141	= .
                                    555 	.globl	C$Battle.c$129$1_0$141
                                    556 ;src\Battle.c:129: else if (index == 8)
    000566F1 FA 6F CD         [16]  557 	ld	a, (#_index)
    000566F4 D6 08            [ 8]  558 	sub	a, #0x08
    000566F6 20 24            [12]  559 	jr	NZ, 00131$
                         0000027A   560 	C$Battle.c$131$2_0$150	= .
                                    561 	.globl	C$Battle.c$131$2_0$150
                                    562 ;src\Battle.c:131: InvertColor();
    000566F8 CD E0 0B         [24]  563 	call	_InvertColor
                         0000027D   564 	C$Battle.c$132$2_0$150	= .
                                    565 	.globl	C$Battle.c$132$2_0$150
                                    566 ;src\Battle.c:132: set_bkg_data(128, 30, Man_Tiles); 
    000566FB 11 36 5B         [12]  567 	ld	de, #_Man_Tiles
    000566FE D5               [16]  568 	push	de
    000566FF 21 80 1E         [12]  569 	ld	hl, #0x1e80
    00056702 E5               [16]  570 	push	hl
    00056703 CD 85 0E         [24]  571 	call	_set_bkg_data
    00056706 E8 04            [16]  572 	add	sp, #4
                         0000028A   573 	C$Battle.c$133$2_0$150	= .
                                    574 	.globl	C$Battle.c$133$2_0$150
                                    575 ;src\Battle.c:133: set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
    00056708 11 26 5D         [12]  576 	ld	de, #_Man_Map
    0005670B D5               [16]  577 	push	de
    0005670C 21 06 06         [12]  578 	ld	hl, #0x606
    0005670F E5               [16]  579 	push	hl
    00056710 21 07 05         [12]  580 	ld	hl, #0x507
    00056713 E5               [16]  581 	push	hl
    00056714 CD CC 0F         [24]  582 	call	_set_bkg_tiles
    00056717 E8 06            [16]  583 	add	sp, #6
    00056719 C3 A6 68         [16]  584 	jp	00156$
    0005671C                        585 00131$:
                         0000029E   586 	C$Battle.c$135$1_0$141	= .
                                    587 	.globl	C$Battle.c$135$1_0$141
                                    588 ;src\Battle.c:135: else if (index == 9)
    0005671C FA 6F CD         [16]  589 	ld	a, (#_index)
    0005671F D6 09            [ 8]  590 	sub	a, #0x09
    00056721 20 21            [12]  591 	jr	NZ, 00128$
                         000002A5   592 	C$Battle.c$137$2_0$151	= .
                                    593 	.globl	C$Battle.c$137$2_0$151
                                    594 ;src\Battle.c:137: set_bkg_data(128, 26, Car_Tiles); 
    00056723 11 90 5F         [12]  595 	ld	de, #_Car_Tiles
    00056726 D5               [16]  596 	push	de
    00056727 21 80 1A         [12]  597 	ld	hl, #0x1a80
    0005672A E5               [16]  598 	push	hl
    0005672B CD 85 0E         [24]  599 	call	_set_bkg_data
    0005672E E8 04            [16]  600 	add	sp, #4
                         000002B2   601 	C$Battle.c$138$2_0$151	= .
                                    602 	.globl	C$Battle.c$138$2_0$151
                                    603 ;src\Battle.c:138: set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
    00056730 11 40 61         [12]  604 	ld	de, #_Car_Map
    00056733 D5               [16]  605 	push	de
    00056734 21 06 05         [12]  606 	ld	hl, #0x506
    00056737 E5               [16]  607 	push	hl
    00056738 21 07 05         [12]  608 	ld	hl, #0x507
    0005673B E5               [16]  609 	push	hl
    0005673C CD CC 0F         [24]  610 	call	_set_bkg_tiles
    0005673F E8 06            [16]  611 	add	sp, #6
    00056741 C3 A6 68         [16]  612 	jp	00156$
    00056744                        613 00128$:
                         000002C6   614 	C$Battle.c$140$1_0$141	= .
                                    615 	.globl	C$Battle.c$140$1_0$141
                                    616 ;src\Battle.c:140: else if (index == 10)
    00056744 FA 6F CD         [16]  617 	ld	a, (#_index)
    00056747 D6 0A            [ 8]  618 	sub	a, #0x0a
    00056749 20 21            [12]  619 	jr	NZ, 00125$
                         000002CD   620 	C$Battle.c$142$2_0$152	= .
                                    621 	.globl	C$Battle.c$142$2_0$152
                                    622 ;src\Battle.c:142: set_bkg_data(128, 46, Semi_Tiles); 
    0005674B 11 5E 61         [12]  623 	ld	de, #_Semi_Tiles
    0005674E D5               [16]  624 	push	de
    0005674F 21 80 2E         [12]  625 	ld	hl, #0x2e80
    00056752 E5               [16]  626 	push	hl
    00056753 CD 85 0E         [24]  627 	call	_set_bkg_data
    00056756 E8 04            [16]  628 	add	sp, #4
                         000002DA   629 	C$Battle.c$143$2_0$152	= .
                                    630 	.globl	C$Battle.c$143$2_0$152
                                    631 ;src\Battle.c:143: set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
    00056758 11 4E 64         [12]  632 	ld	de, #_Semi_Map
    0005675B D5               [16]  633 	push	de
    0005675C 21 06 08         [12]  634 	ld	hl, #0x806
    0005675F E5               [16]  635 	push	hl
    00056760 21 07 05         [12]  636 	ld	hl, #0x507
    00056763 E5               [16]  637 	push	hl
    00056764 CD CC 0F         [24]  638 	call	_set_bkg_tiles
    00056767 E8 06            [16]  639 	add	sp, #6
    00056769 C3 A6 68         [16]  640 	jp	00156$
    0005676C                        641 00125$:
                         000002EE   642 	C$Battle.c$145$1_0$141	= .
                                    643 	.globl	C$Battle.c$145$1_0$141
                                    644 ;src\Battle.c:145: else if (index == 11)
    0005676C FA 6F CD         [16]  645 	ld	a, (#_index)
    0005676F D6 0B            [ 8]  646 	sub	a, #0x0b
    00056771 20 21            [12]  647 	jr	NZ, 00122$
                         000002F5   648 	C$Battle.c$147$2_0$153	= .
                                    649 	.globl	C$Battle.c$147$2_0$153
                                    650 ;src\Battle.c:147: set_bkg_data(128, 31, Sis_Tiles); 
    00056773 11 4A 5D         [12]  651 	ld	de, #_Sis_Tiles
    00056776 D5               [16]  652 	push	de
    00056777 21 80 1F         [12]  653 	ld	hl, #0x1f80
    0005677A E5               [16]  654 	push	hl
    0005677B CD 85 0E         [24]  655 	call	_set_bkg_data
    0005677E E8 04            [16]  656 	add	sp, #4
                         00000302   657 	C$Battle.c$148$2_0$153	= .
                                    658 	.globl	C$Battle.c$148$2_0$153
                                    659 ;src\Battle.c:148: set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
    00056780 11 4A 5F         [12]  660 	ld	de, #_BigSis_Map
    00056783 D5               [16]  661 	push	de
    00056784 21 05 07         [12]  662 	ld	hl, #0x705
    00056787 E5               [16]  663 	push	hl
    00056788 21 07 05         [12]  664 	ld	hl, #0x507
    0005678B E5               [16]  665 	push	hl
    0005678C CD CC 0F         [24]  666 	call	_set_bkg_tiles
    0005678F E8 06            [16]  667 	add	sp, #6
    00056791 C3 A6 68         [16]  668 	jp	00156$
    00056794                        669 00122$:
                         00000316   670 	C$Battle.c$150$1_0$141	= .
                                    671 	.globl	C$Battle.c$150$1_0$141
                                    672 ;src\Battle.c:150: else if (index == 12)
    00056794 FA 6F CD         [16]  673 	ld	a, (#_index)
    00056797 D6 0C            [ 8]  674 	sub	a, #0x0c
    00056799 20 21            [12]  675 	jr	NZ, 00119$
                         0000031D   676 	C$Battle.c$152$2_0$154	= .
                                    677 	.globl	C$Battle.c$152$2_0$154
                                    678 ;src\Battle.c:152: set_bkg_data(128, 31, Sis_Tiles); 
    0005679B 11 4A 5D         [12]  679 	ld	de, #_Sis_Tiles
    0005679E D5               [16]  680 	push	de
    0005679F 21 80 1F         [12]  681 	ld	hl, #0x1f80
    000567A2 E5               [16]  682 	push	hl
    000567A3 CD 85 0E         [24]  683 	call	_set_bkg_data
    000567A6 E8 04            [16]  684 	add	sp, #4
                         0000032A   685 	C$Battle.c$153$2_0$154	= .
                                    686 	.globl	C$Battle.c$153$2_0$154
                                    687 ;src\Battle.c:153: set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
    000567A8 11 6D 5F         [12]  688 	ld	de, #_MadSis_Map
    000567AB D5               [16]  689 	push	de
    000567AC 21 05 07         [12]  690 	ld	hl, #0x705
    000567AF E5               [16]  691 	push	hl
    000567B0 21 07 05         [12]  692 	ld	hl, #0x507
    000567B3 E5               [16]  693 	push	hl
    000567B4 CD CC 0F         [24]  694 	call	_set_bkg_tiles
    000567B7 E8 06            [16]  695 	add	sp, #6
    000567B9 C3 A6 68         [16]  696 	jp	00156$
    000567BC                        697 00119$:
                         0000033E   698 	C$Battle.c$155$1_0$141	= .
                                    699 	.globl	C$Battle.c$155$1_0$141
                                    700 ;src\Battle.c:155: else if (index == 13)
    000567BC FA 6F CD         [16]  701 	ld	a, (#_index)
    000567BF D6 0D            [ 8]  702 	sub	a, #0x0d
    000567C1 20 21            [12]  703 	jr	NZ, 00116$
                         00000345   704 	C$Battle.c$157$2_0$155	= .
                                    705 	.globl	C$Battle.c$157$2_0$155
                                    706 ;src\Battle.c:157: set_bkg_data(128, 29, Experiment_Tiles);
    000567C3 11 AF 6C         [12]  707 	ld	de, #_Experiment_Tiles
    000567C6 D5               [16]  708 	push	de
    000567C7 21 80 1D         [12]  709 	ld	hl, #0x1d80
    000567CA E5               [16]  710 	push	hl
    000567CB CD 85 0E         [24]  711 	call	_set_bkg_data
    000567CE E8 04            [16]  712 	add	sp, #4
                         00000352   713 	C$Battle.c$158$2_0$155	= .
                                    714 	.globl	C$Battle.c$158$2_0$155
                                    715 ;src\Battle.c:158: set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
    000567D0 11 8F 6E         [12]  716 	ld	de, #_Experiment_Map
    000567D3 D5               [16]  717 	push	de
    000567D4 21 05 07         [12]  718 	ld	hl, #0x705
    000567D7 E5               [16]  719 	push	hl
    000567D8 21 07 05         [12]  720 	ld	hl, #0x507
    000567DB E5               [16]  721 	push	hl
    000567DC CD CC 0F         [24]  722 	call	_set_bkg_tiles
    000567DF E8 06            [16]  723 	add	sp, #6
    000567E1 C3 A6 68         [16]  724 	jp	00156$
    000567E4                        725 00116$:
                         00000366   726 	C$Battle.c$160$1_0$141	= .
                                    727 	.globl	C$Battle.c$160$1_0$141
                                    728 ;src\Battle.c:160: else if (index == 14)
    000567E4 FA 6F CD         [16]  729 	ld	a, (#_index)
    000567E7 D6 0E            [ 8]  730 	sub	a, #0x0e
    000567E9 20 21            [12]  731 	jr	NZ, 00113$
                         0000036D   732 	C$Battle.c$162$2_0$156	= .
                                    733 	.globl	C$Battle.c$162$2_0$156
                                    734 ;src\Battle.c:162: set_bkg_data(128, 19, Ghost_Tiles);
    000567EB 11 C6 6E         [12]  735 	ld	de, #_Ghost_Tiles
    000567EE D5               [16]  736 	push	de
    000567EF 21 80 13         [12]  737 	ld	hl, #0x1380
    000567F2 E5               [16]  738 	push	hl
    000567F3 CD 85 0E         [24]  739 	call	_set_bkg_data
    000567F6 E8 04            [16]  740 	add	sp, #4
                         0000037A   741 	C$Battle.c$163$2_0$156	= .
                                    742 	.globl	C$Battle.c$163$2_0$156
                                    743 ;src\Battle.c:163: set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
    000567F8 11 B2 6E         [12]  744 	ld	de, #_Ghost_Map
    000567FB D5               [16]  745 	push	de
    000567FC 21 04 05         [12]  746 	ld	hl, #0x504
    000567FF E5               [16]  747 	push	hl
    00056800 21 07 05         [12]  748 	ld	hl, #0x507
    00056803 E5               [16]  749 	push	hl
    00056804 CD CC 0F         [24]  750 	call	_set_bkg_tiles
    00056807 E8 06            [16]  751 	add	sp, #6
    00056809 C3 A6 68         [16]  752 	jp	00156$
    0005680C                        753 00113$:
                         0000038E   754 	C$Battle.c$165$1_0$141	= .
                                    755 	.globl	C$Battle.c$165$1_0$141
                                    756 ;src\Battle.c:165: else if (index == 15)
    0005680C FA 6F CD         [16]  757 	ld	a, (#_index)
    0005680F D6 0F            [ 8]  758 	sub	a, #0x0f
    00056811 20 20            [12]  759 	jr	NZ, 00110$
                         00000395   760 	C$Battle.c$167$2_0$157	= .
                                    761 	.globl	C$Battle.c$167$2_0$157
                                    762 ;src\Battle.c:167: set_bkg_data(128, 14, Saucer_Tiles);
    00056813 11 06 70         [12]  763 	ld	de, #_Saucer_Tiles
    00056816 D5               [16]  764 	push	de
    00056817 21 80 0E         [12]  765 	ld	hl, #0xe80
    0005681A E5               [16]  766 	push	hl
    0005681B CD 85 0E         [24]  767 	call	_set_bkg_data
    0005681E E8 04            [16]  768 	add	sp, #4
                         000003A2   769 	C$Battle.c$168$2_0$157	= .
                                    770 	.globl	C$Battle.c$168$2_0$157
                                    771 ;src\Battle.c:168: set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
    00056820 11 B2 6E         [12]  772 	ld	de, #_Ghost_Map
    00056823 D5               [16]  773 	push	de
    00056824 21 05 03         [12]  774 	ld	hl, #0x305
    00056827 E5               [16]  775 	push	hl
    00056828 21 07 05         [12]  776 	ld	hl, #0x507
    0005682B E5               [16]  777 	push	hl
    0005682C CD CC 0F         [24]  778 	call	_set_bkg_tiles
    0005682F E8 06            [16]  779 	add	sp, #6
    00056831 18 73            [12]  780 	jr	00156$
    00056833                        781 00110$:
                         000003B5   782 	C$Battle.c$170$1_0$141	= .
                                    783 	.globl	C$Battle.c$170$1_0$141
                                    784 ;src\Battle.c:170: else if (index == 16)
    00056833 FA 6F CD         [16]  785 	ld	a, (#_index)
    00056836 D6 10            [ 8]  786 	sub	a, #0x10
    00056838 20 20            [12]  787 	jr	NZ, 00107$
                         000003BC   788 	C$Battle.c$172$2_0$158	= .
                                    789 	.globl	C$Battle.c$172$2_0$158
                                    790 ;src\Battle.c:172: set_bkg_data(128, 20, SockHead_Tiles);
    0005683A 11 21 71         [12]  791 	ld	de, #_SockHead_Tiles
    0005683D D5               [16]  792 	push	de
    0005683E 21 80 14         [12]  793 	ld	hl, #0x1480
    00056841 E5               [16]  794 	push	hl
    00056842 CD 85 0E         [24]  795 	call	_set_bkg_data
    00056845 E8 04            [16]  796 	add	sp, #4
                         000003C9   797 	C$Battle.c$173$2_0$158	= .
                                    798 	.globl	C$Battle.c$173$2_0$158
                                    799 ;src\Battle.c:173: set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
    00056847 11 05 71         [12]  800 	ld	de, #_SockHead_Map
    0005684A D5               [16]  801 	push	de
    0005684B 21 04 07         [12]  802 	ld	hl, #0x704
    0005684E E5               [16]  803 	push	hl
    0005684F 21 07 05         [12]  804 	ld	hl, #0x507
    00056852 E5               [16]  805 	push	hl
    00056853 CD CC 0F         [24]  806 	call	_set_bkg_tiles
    00056856 E8 06            [16]  807 	add	sp, #6
    00056858 18 4C            [12]  808 	jr	00156$
    0005685A                        809 00107$:
                         000003DC   810 	C$Battle.c$175$1_0$141	= .
                                    811 	.globl	C$Battle.c$175$1_0$141
                                    812 ;src\Battle.c:175: else if (index == 17)
    0005685A FA 6F CD         [16]  813 	ld	a, (#_index)
    0005685D D6 11            [ 8]  814 	sub	a, #0x11
    0005685F 20 20            [12]  815 	jr	NZ, 00104$
                         000003E3   816 	C$Battle.c$177$2_0$159	= .
                                    817 	.globl	C$Battle.c$177$2_0$159
                                    818 ;src\Battle.c:177: set_bkg_data(128, 26, Toby_Tiles);
    00056861 11 8D 72         [12]  819 	ld	de, #_Toby_Tiles
    00056864 D5               [16]  820 	push	de
    00056865 21 80 1A         [12]  821 	ld	hl, #0x1a80
    00056868 E5               [16]  822 	push	hl
    00056869 CD 85 0E         [24]  823 	call	_set_bkg_data
    0005686C E8 04            [16]  824 	add	sp, #4
                         000003F0   825 	C$Battle.c$178$2_0$159	= .
                                    826 	.globl	C$Battle.c$178$2_0$159
                                    827 ;src\Battle.c:178: set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
    0005686E 11 71 72         [12]  828 	ld	de, #_Toby_Map
    00056871 D5               [16]  829 	push	de
    00056872 21 04 07         [12]  830 	ld	hl, #0x704
    00056875 E5               [16]  831 	push	hl
    00056876 21 07 05         [12]  832 	ld	hl, #0x507
    00056879 E5               [16]  833 	push	hl
    0005687A CD CC 0F         [24]  834 	call	_set_bkg_tiles
    0005687D E8 06            [16]  835 	add	sp, #6
    0005687F 18 25            [12]  836 	jr	00156$
    00056881                        837 00104$:
                         00000403   838 	C$Battle.c$180$1_0$141	= .
                                    839 	.globl	C$Battle.c$180$1_0$141
                                    840 ;src\Battle.c:180: else if (index == 18)
    00056881 FA 6F CD         [16]  841 	ld	a, (#_index)
    00056884 D6 12            [ 8]  842 	sub	a, #0x12
    00056886 20 1E            [12]  843 	jr	NZ, 00156$
                         0000040A   844 	C$Battle.c$182$2_0$160	= .
                                    845 	.globl	C$Battle.c$182$2_0$160
                                    846 ;src\Battle.c:182: set_bkg_data(128, 24, Drunk_Tiles);
    00056888 11 07 6B         [12]  847 	ld	de, #_Drunk_Tiles
    0005688B D5               [16]  848 	push	de
    0005688C 21 80 18         [12]  849 	ld	hl, #0x1880
    0005688F E5               [16]  850 	push	hl
    00056890 CD 85 0E         [24]  851 	call	_set_bkg_data
    00056893 E8 04            [16]  852 	add	sp, #4
                         00000417   853 	C$Battle.c$183$2_0$160	= .
                                    854 	.globl	C$Battle.c$183$2_0$160
                                    855 ;src\Battle.c:183: set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
    00056895 11 97 6C         [12]  856 	ld	de, #_Drunk_Map
    00056898 D5               [16]  857 	push	de
    00056899 21 04 06         [12]  858 	ld	hl, #0x604
    0005689C E5               [16]  859 	push	hl
    0005689D 21 07 05         [12]  860 	ld	hl, #0x507
    000568A0 E5               [16]  861 	push	hl
    000568A1 CD CC 0F         [24]  862 	call	_set_bkg_tiles
    000568A4 E8 06            [16]  863 	add	sp, #6
    000568A6                        864 00156$:
                         00000428   865 	C$Battle.c$185$1_0$141	= .
                                    866 	.globl	C$Battle.c$185$1_0$141
                                    867 ;src\Battle.c:185: performantdelay(120);
    000568A6 3E 78            [ 8]  868 	ld	a, #0x78
    000568A8 CD D1 08         [24]  869 	call	_performantdelay
                                    870 ;c:\gbdk\include\gb\gb.h:1463: SCX_REG+=x, SCY_REG+=y;
    000568AB F0 42            [12]  871 	ldh	a, (_SCY_REG + 0)
    000568AD C6 28            [ 8]  872 	add	a, #0x28
    000568AF E0 42            [12]  873 	ldh	(_SCY_REG + 0), a
                         00000433   874 	C$Battle.c$186$3_0$141	= .
                                    875 	.globl	C$Battle.c$186$3_0$141
                                    876 ;src\Battle.c:186: scroll_bkg(0, 40);
                         00000433   877 	C$Battle.c$188$3_0$141	= .
                                    878 	.globl	C$Battle.c$188$3_0$141
                                    879 ;src\Battle.c:188: }
                         00000433   880 	C$Battle.c$188$3_0$141	= .
                                    881 	.globl	C$Battle.c$188$3_0$141
                         00000433   882 	XG$BattleSetup$0$0	= .
                                    883 	.globl	XG$BattleSetup$0$0
    000568B1 C9               [16]  884 	ret
                         00000434   885 G$const_bank_ID_battle$0_0$0 == .
    000568B2                        886 _const_bank_ID_battle:
    000568B2 05                     887 	.db #0x05	; 5
                         00000435   888 FBattle$__str_0$0_0$0 == .
    000568B3                        889 ___str_0:
    000568B3 4A 69 6D 20 43 72 6F   890 	.ascii "Jim Crow draws"
             77 20 64 72 61 77 73
    000568C1 00                     891 	.db 0x00
                         00000444   892 FBattle$__str_1$0_0$0 == .
    000568C2                        893 ___str_1:
    000568C2 6E 65 61 72 2E         894 	.ascii "near."
    000568C7 00                     895 	.db 0x00
                         0000044A   896 FBattle$__str_2$0_0$0 == .
    000568C8                        897 ___str_2:
    000568C8 47 79 70 73 79 20 4D   898 	.ascii "Gypsy Moth draws"
             6F 74 68 20 64 72 61
             77 73
    000568D8 00                     899 	.db 0x00
                         0000045B   900 FBattle$__str_3$0_0$0 == .
    000568D9                        901 ___str_3:
    000568D9 57 61 6C 6C 79 20 62   902 	.ascii "Wally butts in."
             75 74 74 73 20 69 6E
             2E
    000568E8 00                     903 	.db 0x00
                         0000046B   904 FBattle$__str_4$0_0$0 == .
    000568E9                        905 ___str_4:
    000568E9 41 20 74 69 63 6B 20   906 	.ascii "A tick draws near."
             64 72 61 77 73 20 6E
             65 61 72 2E
    000568FB 00                     907 	.db 0x00
                         0000047E   908 FBattle$__str_5$0_0$0 == .
    000568FC                        909 ___str_5:
    000568FC 41 6E 20 4F 66 66 69   910 	.ascii "An Officer draws"
             63 65 72 20 64 72 61
             77 73
    0005690C 00                     911 	.db 0x00
                         0000048F   912 	G$__func_BattleUpdate$0$0	= .
                                    913 	.globl	G$__func_BattleUpdate$0$0
                         0000048F   914 	C$Battle.c$190$3_0$174	= .
                                    915 	.globl	C$Battle.c$190$3_0$174
                                    916 ;src\Battle.c:190: BANKREF(BattleUpdate)
                                    917 ;	---------------------------------
                                    918 ; Function __func_BattleUpdate
                                    919 ; ---------------------------------
                         00000005   920 	b___func_BattleUpdate	= 5
    0005690D                        921 ___func_BattleUpdate::
                                    922 	.local b___func_BattleUpdate 
                         00000005   923 	___bank_BattleUpdate = b___func_BattleUpdate 
                                    924 	.globl ___bank_BattleUpdate 
                         0000048F   925 	G$BattleUpdate$0$0	= .
                                    926 	.globl	G$BattleUpdate$0$0
                         0000048F   927 	C$Battle.c$191$1_0$176	= .
                                    928 	.globl	C$Battle.c$191$1_0$176
                                    929 ;src\Battle.c:191: uint8_t BattleUpdate(void) BANKED
                                    930 ;	---------------------------------
                                    931 ; Function BattleUpdate
                                    932 ; ---------------------------------
                         00000005   933 	b_BattleUpdate	= 5
    0005690D                        934 _BattleUpdate::
                         0000048F   935 	C$Battle.c$193$1_0$176	= .
                                    936 	.globl	C$Battle.c$193$1_0$176
                                    937 ;src\Battle.c:193: if (joypadCurrent & J_SELECT)
    0005690D FA 6E CD         [16]  938 	ld	a, (#_joypadCurrent)
    00056910 CB 77            [ 8]  939 	bit	6, a
    00056912 28 03            [12]  940 	jr	Z, 00106$
                         00000496   941 	C$Battle.c$195$2_0$177	= .
                                    942 	.globl	C$Battle.c$195$2_0$177
                                    943 ;src\Battle.c:195: return GAMETITLE;
    00056914 3E 01            [ 8]  944 	ld	a, #0x01
    00056916 C9               [16]  945 	ret
    00056917                        946 00106$:
                         00000499   947 	C$Battle.c$197$1_0$176	= .
                                    948 	.globl	C$Battle.c$197$1_0$176
                                    949 ;src\Battle.c:197: else if ((joypadCurrent & J_DOWN) && !(joypadCurrent & J_DOWN))
    00056917 E6 08            [ 8]  950 	and	a,#0x08
    00056919 28 1D            [12]  951 	jr	Z, 00102$
    0005691B B7               [ 4]  952 	or	a, a
    0005691C 20 1A            [12]  953 	jr	NZ, 00102$
                         000004A0   954 	C$Battle.c$199$2_0$178	= .
                                    955 	.globl	C$Battle.c$199$2_0$178
                                    956 ;src\Battle.c:199: cursor.x += 0;
    0005691E 01 C0 C0         [12]  957 	ld	bc, #_cursor+0
    00056921 0A               [ 8]  958 	ld	a, (bc)
    00056922 02               [ 8]  959 	ld	(bc), a
                         000004A5   960 	C$Battle.c$200$2_0$178	= .
                                    961 	.globl	C$Battle.c$200$2_0$178
                                    962 ;src\Battle.c:200: cursor.y += 8;
    00056923 21 C1 C0         [12]  963 	ld	hl, #_cursor + 1
    00056926 7E               [ 8]  964 	ld	a, (hl)
    00056927 C6 08            [ 8]  965 	add	a, #0x08
    00056929 77               [ 8]  966 	ld	(hl), a
                                    967 ;src\Battle.c:201: move_sprite(0, cursor.x, cursor.y);
    0005692A 4E               [ 8]  968 	ld	c, (hl)
    0005692B 21 C0 C0         [12]  969 	ld	hl, #_cursor
    0005692E 46               [ 8]  970 	ld	b, (hl)
                                    971 ;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
    0005692F 21 00 C0         [12]  972 	ld	hl, #_shadow_OAM
                                    973 ;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
    00056932 79               [ 4]  974 	ld	a, c
    00056933 22               [ 8]  975 	ld	(hl+), a
    00056934 70               [ 8]  976 	ld	(hl), b
                         000004B7   977 	C$Battle.c$202$2_0$178	= .
                                    978 	.globl	C$Battle.c$202$2_0$178
                                    979 ;src\Battle.c:202: return BATTLE;
    00056935 3E 05            [ 8]  980 	ld	a, #0x05
    00056937 C9               [16]  981 	ret
    00056938                        982 00102$:
                         000004BA   983 	C$Battle.c$206$2_0$179	= .
                                    984 	.globl	C$Battle.c$206$2_0$179
                                    985 ;src\Battle.c:206: return BATTLE;
    00056938 3E 05            [ 8]  986 	ld	a, #0x05
                         000004BC   987 	C$Battle.c$208$1_0$176	= .
                                    988 	.globl	C$Battle.c$208$1_0$176
                                    989 ;src\Battle.c:208: }
                         000004BC   990 	C$Battle.c$208$1_0$176	= .
                                    991 	.globl	C$Battle.c$208$1_0$176
                         000004BC   992 	XG$BattleUpdate$0$0	= .
                                    993 	.globl	XG$BattleUpdate$0$0
    0005693A C9               [16]  994 	ret
                                    995 	.area _CODE_5
                                    996 	.area _INITIALIZER
                                    997 	.area _CABS (ABS)
