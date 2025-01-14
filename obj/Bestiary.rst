                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Bestiary
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl b_BestiaryUpdate
                                     12 	.globl _BestiaryUpdate
                                     13 	.globl b___func_BestiaryUpdate
                                     14 	.globl ___func_BestiaryUpdate
                                     15 	.globl b_BestiarySetup
                                     16 	.globl _BestiarySetup
                                     17 	.globl b___func_BestiarySetup
                                     18 	.globl ___func_BestiarySetup
                                     19 	.globl b___func_const_bank_ID_bestiary
                                     20 	.globl ___func_const_bank_ID_bestiary
                                     21 	.globl _InvertColor
                                     22 	.globl _fadeFromBlack
                                     23 	.globl _fadeToBlack
                                     24 	.globl _DrawText
                                     25 	.globl _DrawNumber
                                     26 	.globl _set_bkg_tiles
                                     27 	.globl _set_bkg_data
                                     28 	.globl _joypad
                                     29 	.globl _invert
                                     30 	.globl _const_bank_ID_bestiary
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
                         00000000    42 G$invert$0_0$0==.
    0000CD80                         43 _invert::
    0000CD80                         44 	.ds 1
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area _DABS (ABS)
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area _HOME
                                     53 	.area _GSINIT
                                     54 	.area _GSFINAL
                                     55 	.area _GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area _HOME
                                     60 	.area _HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area _CODE_5
                         00000000    65 	G$__func_const_bank_ID_bestiary$0$0	= .
                                     66 	.globl	G$__func_const_bank_ID_bestiary$0$0
                         00000000    67 	C$Bestiary.c$42$0_0$137	= .
                                     68 	.globl	C$Bestiary.c$42$0_0$137
                                     69 ;src\Bestiary.c:42: BANKREF(const_bank_ID_bestiary)
                                     70 ;	---------------------------------
                                     71 ; Function __func_const_bank_ID_bestiary
                                     72 ; ---------------------------------
                         00000005    73 	b___func_const_bank_ID_bestiary	= 5
    0005431B                         74 ___func_const_bank_ID_bestiary::
                                     75 	.local b___func_const_bank_ID_bestiary 
                         00000005    76 	___bank_const_bank_ID_bestiary = b___func_const_bank_ID_bestiary 
                                     77 	.globl ___bank_const_bank_ID_bestiary 
                         00000000    78 	G$__func_BestiarySetup$0$0	= .
                                     79 	.globl	G$__func_BestiarySetup$0$0
                         00000000    80 	C$Bestiary.c$53$1_0$139	= .
                                     81 	.globl	C$Bestiary.c$53$1_0$139
                                     82 ;src\Bestiary.c:53: BANKREF(BestiarySetup)
                                     83 ;	---------------------------------
                                     84 ; Function __func_BestiarySetup
                                     85 ; ---------------------------------
                         00000005    86 	b___func_BestiarySetup	= 5
    0005431B                         87 ___func_BestiarySetup::
                                     88 	.local b___func_BestiarySetup 
                         00000005    89 	___bank_BestiarySetup = b___func_BestiarySetup 
                                     90 	.globl ___bank_BestiarySetup 
                         00000000    91 	G$BestiarySetup$0$0	= .
                                     92 	.globl	G$BestiarySetup$0$0
                         00000000    93 	C$Bestiary.c$54$1_0$141	= .
                                     94 	.globl	C$Bestiary.c$54$1_0$141
                                     95 ;src\Bestiary.c:54: void BestiarySetup(void) BANKED
                                     96 ;	---------------------------------
                                     97 ; Function BestiarySetup
                                     98 ; ---------------------------------
                         00000005    99 	b_BestiarySetup	= 5
    0005431B                        100 _BestiarySetup::
                                    101 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    0005431B AF               [ 4]  102 	xor	a, a
    0005431C E0 43            [12]  103 	ldh	(_SCX_REG + 0), a
    0005431E AF               [ 4]  104 	xor	a, a
    0005431F E0 42            [12]  105 	ldh	(_SCY_REG + 0), a
                         00000006   106 	C$Bestiary.c$57$1_0$141	= .
                                    107 	.globl	C$Bestiary.c$57$1_0$141
                                    108 ;src\Bestiary.c:57: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00054321 11 E2 02         [12]  109 	ld	de, #_FontTiles
    00054324 D5               [16]  110 	push	de
    00054325 21 00 35         [12]  111 	ld	hl, #0x3500
    00054328 E5               [16]  112 	push	hl
    00054329 CD 85 0E         [24]  113 	call	_set_bkg_data
    0005432C E8 04            [16]  114 	add	sp, #4
                         00000013   115 	C$Bestiary.c$58$1_0$141	= .
                                    116 	.globl	C$Bestiary.c$58$1_0$141
                                    117 ;src\Bestiary.c:58: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
    0005432E 11 00 40         [12]  118 	ld	de, #_Bestiary_Map
    00054331 D5               [16]  119 	push	de
    00054332 21 14 12         [12]  120 	ld	hl, #0x1214
    00054335 E5               [16]  121 	push	hl
    00054336 AF               [ 4]  122 	xor	a, a
    00054337 0F               [ 4]  123 	rrca
    00054338 F5               [16]  124 	push	af
    00054339 CD CC 0F         [24]  125 	call	_set_bkg_tiles
    0005433C E8 06            [16]  126 	add	sp, #6
                         00000023   127 	C$Bestiary.c$59$1_0$141	= .
                                    128 	.globl	C$Bestiary.c$59$1_0$141
                                    129 ;src\Bestiary.c:59: SHOW_BKG; 
    0005433E F0 40            [12]  130 	ldh	a, (_LCDC_REG + 0)
    00054340 F6 01            [ 8]  131 	or	a, #0x01
    00054342 E0 40            [12]  132 	ldh	(_LCDC_REG + 0), a
                         00000029   133 	C$Bestiary.c$60$1_0$141	= .
                                    134 	.globl	C$Bestiary.c$60$1_0$141
                                    135 ;src\Bestiary.c:60: fadeFromBlack(10);
    00054344 3E 0A            [ 8]  136 	ld	a, #0x0a
                         0000002B   137 	C$Bestiary.c$61$1_0$141	= .
                                    138 	.globl	C$Bestiary.c$61$1_0$141
                                    139 ;src\Bestiary.c:61: }
                         0000002B   140 	C$Bestiary.c$61$1_0$141	= .
                                    141 	.globl	C$Bestiary.c$61$1_0$141
                         0000002B   142 	XG$BestiarySetup$0$0	= .
                                    143 	.globl	XG$BestiarySetup$0$0
    00054346 C3 FD 0A         [16]  144 	jp	_fadeFromBlack
                         0000002E   145 G$const_bank_ID_bestiary$0_0$0 == .
    00054349                        146 _const_bank_ID_bestiary:
    00054349 04                     147 	.db #0x04	; 4
                         0000002F   148 	G$__func_BestiaryUpdate$0$0	= .
                                    149 	.globl	G$__func_BestiaryUpdate$0$0
                         0000002F   150 	C$Bestiary.c$63$1_0$146	= .
                                    151 	.globl	C$Bestiary.c$63$1_0$146
                                    152 ;src\Bestiary.c:63: BANKREF(BestiaryUpdate)
                                    153 ;	---------------------------------
                                    154 ; Function __func_BestiaryUpdate
                                    155 ; ---------------------------------
                         00000005   156 	b___func_BestiaryUpdate	= 5
    0005434A                        157 ___func_BestiaryUpdate::
                                    158 	.local b___func_BestiaryUpdate 
                         00000005   159 	___bank_BestiaryUpdate = b___func_BestiaryUpdate 
                                    160 	.globl ___bank_BestiaryUpdate 
                         0000002F   161 	G$BestiaryUpdate$0$0	= .
                                    162 	.globl	G$BestiaryUpdate$0$0
                         0000002F   163 	C$Bestiary.c$64$1_0$148	= .
                                    164 	.globl	C$Bestiary.c$64$1_0$148
                                    165 ;src\Bestiary.c:64: uint8_t BestiaryUpdate(void) BANKED
                                    166 ;	---------------------------------
                                    167 ; Function BestiaryUpdate
                                    168 ; ---------------------------------
                         00000005   169 	b_BestiaryUpdate	= 5
    0005434A                        170 _BestiaryUpdate::
                         0000002F   171 	C$Bestiary.c$66$1_0$148	= .
                                    172 	.globl	C$Bestiary.c$66$1_0$148
                                    173 ;src\Bestiary.c:66: joypadPrevious = joypadCurrent;
    0005434A FA 6E CD         [16]  174 	ld	a, (#_joypadCurrent)
    0005434D EA 6D CD         [16]  175 	ld	(#_joypadPrevious),a
                         00000035   176 	C$Bestiary.c$67$1_0$148	= .
                                    177 	.globl	C$Bestiary.c$67$1_0$148
                                    178 ;src\Bestiary.c:67: joypadCurrent = joypad();
    00054350 CD 74 0F         [24]  179 	call	_joypad
    00054353 21 6E CD         [12]  180 	ld	hl, #_joypadCurrent
    00054356 77               [ 8]  181 	ld	(hl), a
                         0000003C   182 	C$Bestiary.c$69$1_0$148	= .
                                    183 	.globl	C$Bestiary.c$69$1_0$148
                                    184 ;src\Bestiary.c:69: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
    00054357 CB 4E            [12]  185 	bit	1, (hl)
    00054359 28 23            [12]  186 	jr	Z, 00104$
    0005435B FA 6D CD         [16]  187 	ld	a, (#_joypadPrevious)
    0005435E CB 4F            [ 8]  188 	bit	1, a
    00054360 20 1C            [12]  189 	jr	NZ, 00104$
                         00000047   190 	C$Bestiary.c$71$2_0$149	= .
                                    191 	.globl	C$Bestiary.c$71$2_0$149
                                    192 ;src\Bestiary.c:71: if (index - 1 >= 0)
    00054362 21 6F CD         [12]  193 	ld	hl, #_index
    00054365 4E               [ 8]  194 	ld	c, (hl)
    00054366 AF               [ 4]  195 	xor	a, a
    00054367 47               [ 4]  196 	ld	b, a
    00054368 0B               [ 8]  197 	dec	bc
    00054369 CB 78            [ 8]  198 	bit	7, b
    0005436B 20 11            [12]  199 	jr	NZ, 00104$
                         00000052   200 	C$Bestiary.c$73$3_0$150	= .
                                    201 	.globl	C$Bestiary.c$73$3_0$150
                                    202 ;src\Bestiary.c:73: index--;
    0005436D 35               [12]  203 	dec	(hl)
                         00000053   204 	C$Bestiary.c$74$3_0$150	= .
                                    205 	.globl	C$Bestiary.c$74$3_0$150
                                    206 ;src\Bestiary.c:74: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
    0005436E 11 00 40         [12]  207 	ld	de, #_Bestiary_Map
    00054371 D5               [16]  208 	push	de
    00054372 21 14 12         [12]  209 	ld	hl, #0x1214
    00054375 E5               [16]  210 	push	hl
    00054376 AF               [ 4]  211 	xor	a, a
    00054377 0F               [ 4]  212 	rrca
    00054378 F5               [16]  213 	push	af
    00054379 CD CC 0F         [24]  214 	call	_set_bkg_tiles
    0005437C E8 06            [16]  215 	add	sp, #6
    0005437E                        216 00104$:
                         00000063   217 	C$Bestiary.c$77$1_0$148	= .
                                    218 	.globl	C$Bestiary.c$77$1_0$148
                                    219 ;src\Bestiary.c:77: if ((joypadCurrent & J_RIGHT) && !(joypadPrevious & J_RIGHT))
    0005437E FA 6E CD         [16]  220 	ld	a, (#_joypadCurrent)
    00054381 0F               [ 4]  221 	rrca
    00054382 30 3C            [12]  222 	jr	NC, 00109$
    00054384 FA 6D CD         [16]  223 	ld	a, (#_joypadPrevious)
    00054387 0F               [ 4]  224 	rrca
    00054388 38 36            [12]  225 	jr	C, 00109$
                         0000006F   226 	C$Bestiary.c$79$2_0$151	= .
                                    227 	.globl	C$Bestiary.c$79$2_0$151
                                    228 ;src\Bestiary.c:79: if (index + 1 <= 18)
    0005438A 21 6F CD         [12]  229 	ld	hl, #_index
    0005438D 4E               [ 8]  230 	ld	c, (hl)
    0005438E AF               [ 4]  231 	xor	a, a
    0005438F 47               [ 4]  232 	ld	b, a
    00054390 03               [ 8]  233 	inc	bc
    00054391 58               [ 4]  234 	ld	e, b
    00054392 16 00            [ 8]  235 	ld	d, #0x00
    00054394 3E 12            [ 8]  236 	ld	a, #0x12
    00054396 B9               [ 4]  237 	cp	a, c
    00054397 3E 00            [ 8]  238 	ld	a, #0x00
    00054399 98               [ 4]  239 	sbc	a, b
    0005439A CB 7B            [ 8]  240 	bit	7, e
    0005439C 28 07            [12]  241 	jr	Z, 00377$
    0005439E CB 7A            [ 8]  242 	bit	7, d
    000543A0 20 08            [12]  243 	jr	NZ, 00378$
    000543A2 BF               [ 4]  244 	cp	a, a
    000543A3 18 05            [12]  245 	jr	00378$
    000543A5                        246 00377$:
    000543A5 CB 7A            [ 8]  247 	bit	7, d
    000543A7 28 01            [12]  248 	jr	Z, 00378$
    000543A9 37               [ 4]  249 	scf
    000543AA                        250 00378$:
    000543AA 38 14            [12]  251 	jr	C, 00109$
                         00000091   252 	C$Bestiary.c$81$3_0$152	= .
                                    253 	.globl	C$Bestiary.c$81$3_0$152
                                    254 ;src\Bestiary.c:81: index++;
    000543AC 21 6F CD         [12]  255 	ld	hl, #_index
    000543AF 34               [12]  256 	inc	(hl)
                         00000095   257 	C$Bestiary.c$82$3_0$152	= .
                                    258 	.globl	C$Bestiary.c$82$3_0$152
                                    259 ;src\Bestiary.c:82: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
    000543B0 11 00 40         [12]  260 	ld	de, #_Bestiary_Map
    000543B3 D5               [16]  261 	push	de
    000543B4 21 14 12         [12]  262 	ld	hl, #0x1214
    000543B7 E5               [16]  263 	push	hl
    000543B8 AF               [ 4]  264 	xor	a, a
    000543B9 0F               [ 4]  265 	rrca
    000543BA F5               [16]  266 	push	af
    000543BB CD CC 0F         [24]  267 	call	_set_bkg_tiles
    000543BE E8 06            [16]  268 	add	sp, #6
    000543C0                        269 00109$:
                         000000A5   270 	C$Bestiary.c$85$1_0$148	= .
                                    271 	.globl	C$Bestiary.c$85$1_0$148
                                    272 ;src\Bestiary.c:85: if (joypadCurrent & J_START)
    000543C0 FA 6E CD         [16]  273 	ld	a, (#_joypadCurrent)
    000543C3 07               [ 4]  274 	rlca
    000543C4 30 03            [12]  275 	jr	NC, 00112$
                         000000AB   276 	C$Bestiary.c$87$2_0$153	= .
                                    277 	.globl	C$Bestiary.c$87$2_0$153
                                    278 ;src\Bestiary.c:87: InvertColor();
    000543C6 CD E0 0B         [24]  279 	call	_InvertColor
    000543C9                        280 00112$:
                         000000AE   281 	C$Bestiary.c$69$1_0$148	= .
                                    282 	.globl	C$Bestiary.c$69$1_0$148
                                    283 ;src\Bestiary.c:69: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
    000543C9 FA 6E CD         [16]  284 	ld	a, (#_joypadCurrent)
                         000000B1   285 	C$Bestiary.c$101$1_0$148	= .
                                    286 	.globl	C$Bestiary.c$101$1_0$148
                                    287 ;src\Bestiary.c:101: if (joypadCurrent & J_SELECT)
    000543CC CB 77            [ 8]  288 	bit	6, a
    000543CE 28 08            [12]  289 	jr	Z, 00114$
                         000000B5   290 	C$Bestiary.c$103$2_0$154	= .
                                    291 	.globl	C$Bestiary.c$103$2_0$154
                                    292 ;src\Bestiary.c:103: fadeToBlack(10);
    000543D0 3E 0A            [ 8]  293 	ld	a, #0x0a
    000543D2 CD B4 0A         [24]  294 	call	_fadeToBlack
                         000000BA   295 	C$Bestiary.c$104$2_0$154	= .
                                    296 	.globl	C$Bestiary.c$104$2_0$154
                                    297 ;src\Bestiary.c:104: return GAMETITLE;
    000543D5 3E 01            [ 8]  298 	ld	a, #0x01
    000543D7 C9               [16]  299 	ret
    000543D8                        300 00114$:
                         000000BD   301 	C$Bestiary.c$106$1_0$148	= .
                                    302 	.globl	C$Bestiary.c$106$1_0$148
                                    303 ;src\Bestiary.c:106: if (joypadCurrent & J_A)
    000543D8 CB 67            [ 8]  304 	bit	4, a
    000543DA 28 1C            [12]  305 	jr	Z, 00116$
                         000000C1   306 	C$Bestiary.c$108$2_0$155	= .
                                    307 	.globl	C$Bestiary.c$108$2_0$155
                                    308 ;src\Bestiary.c:108: fadeToBlack(3);
    000543DC 3E 03            [ 8]  309 	ld	a, #0x03
    000543DE CD B4 0A         [24]  310 	call	_fadeToBlack
                         000000C6   311 	C$Bestiary.c$109$2_0$155	= .
                                    312 	.globl	C$Bestiary.c$109$2_0$155
                                    313 ;src\Bestiary.c:109: fadeFromBlack(3);
    000543E1 3E 03            [ 8]  314 	ld	a, #0x03
    000543E3 CD FD 0A         [24]  315 	call	_fadeFromBlack
                         000000CB   316 	C$Bestiary.c$110$2_0$155	= .
                                    317 	.globl	C$Bestiary.c$110$2_0$155
                                    318 ;src\Bestiary.c:110: fadeToBlack(3);
    000543E6 3E 03            [ 8]  319 	ld	a, #0x03
    000543E8 CD B4 0A         [24]  320 	call	_fadeToBlack
                         000000D0   321 	C$Bestiary.c$111$2_0$155	= .
                                    322 	.globl	C$Bestiary.c$111$2_0$155
                                    323 ;src\Bestiary.c:111: fadeFromBlack(3);
    000543EB 3E 03            [ 8]  324 	ld	a, #0x03
    000543ED CD FD 0A         [24]  325 	call	_fadeFromBlack
                         000000D5   326 	C$Bestiary.c$112$2_0$155	= .
                                    327 	.globl	C$Bestiary.c$112$2_0$155
                                    328 ;src\Bestiary.c:112: fadeToBlack(3);
    000543F0 3E 03            [ 8]  329 	ld	a, #0x03
    000543F2 CD B4 0A         [24]  330 	call	_fadeToBlack
                         000000DA   331 	C$Bestiary.c$113$2_0$155	= .
                                    332 	.globl	C$Bestiary.c$113$2_0$155
                                    333 ;src\Bestiary.c:113: return BATTLE;
    000543F5 3E 05            [ 8]  334 	ld	a, #0x05
    000543F7 C9               [16]  335 	ret
    000543F8                        336 00116$:
                         000000DD   337 	C$Bestiary.c$115$1_0$148	= .
                                    338 	.globl	C$Bestiary.c$115$1_0$148
                                    339 ;src\Bestiary.c:115: if (index == 0) // JIM
    000543F8 FA 6F CD         [16]  340 	ld	a, (#_index)
    000543FB B7               [ 4]  341 	or	a, a
    000543FC C2 A7 44         [16]  342 	jp	NZ, 00171$
                         000000E4   343 	C$Bestiary.c$117$2_0$156	= .
                                    344 	.globl	C$Bestiary.c$117$2_0$156
                                    345 ;src\Bestiary.c:117: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
    000543FF 11 68 41         [12]  346 	ld	de, #_Crow_Tiles
    00054402 D5               [16]  347 	push	de
    00054403 21 80 4F         [12]  348 	ld	hl, #0x4f80
    00054406 E5               [16]  349 	push	hl
    00054407 CD 85 0E         [24]  350 	call	_set_bkg_data
    0005440A E8 04            [16]  351 	add	sp, #4
                         000000F1   352 	C$Bestiary.c$118$2_0$156	= .
                                    353 	.globl	C$Bestiary.c$118$2_0$156
                                    354 ;src\Bestiary.c:118: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
    0005440C 11 F8 42         [12]  355 	ld	de, #_Crow_Map
    0005440F D5               [16]  356 	push	de
    00054410 21 05 07         [12]  357 	ld	hl, #0x705
    00054413 E5               [16]  358 	push	hl
    00054414 21 02 04         [12]  359 	ld	hl, #0x402
    00054417 E5               [16]  360 	push	hl
    00054418 CD CC 0F         [24]  361 	call	_set_bkg_tiles
    0005441B E8 06            [16]  362 	add	sp, #6
                         00000102   363 	C$Bestiary.c$119$2_0$156	= .
                                    364 	.globl	C$Bestiary.c$119$2_0$156
                                    365 ;src\Bestiary.c:119: DrawNumber(4, 0, 0, 3, TRUE);     // ID
    0005441D 21 03 01         [12]  366 	ld	hl, #0x103
    00054420 E5               [16]  367 	push	hl
    00054421 11 00 00         [12]  368 	ld	de, #0x0000
    00054424 D5               [16]  369 	push	de
    00054425 1E 00            [ 8]  370 	ld	e, #0x00
    00054427 3E 04            [ 8]  371 	ld	a, #0x04
    00054429 CD DD 08         [24]  372 	call	_DrawNumber
                         00000111   373 	C$Bestiary.c$121$2_0$156	= .
                                    374 	.globl	C$Bestiary.c$121$2_0$156
                                    375 ;src\Bestiary.c:121: DrawNumber(17, 2, 3, 1, TRUE);    // ATTACK
    0005442C 21 01 01         [12]  376 	ld	hl, #0x101
    0005442F E5               [16]  377 	push	hl
    00054430 11 03 00         [12]  378 	ld	de, #0x0003
    00054433 D5               [16]  379 	push	de
    00054434 1E 02            [ 8]  380 	ld	e, #0x02
    00054436 3E 11            [ 8]  381 	ld	a, #0x11
    00054438 CD DD 08         [24]  382 	call	_DrawNumber
                         00000120   383 	C$Bestiary.c$122$2_0$156	= .
                                    384 	.globl	C$Bestiary.c$122$2_0$156
                                    385 ;src\Bestiary.c:122: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
    0005443B 21 01 01         [12]  386 	ld	hl, #0x101
    0005443E E5               [16]  387 	push	hl
    0005443F 11 02 00         [12]  388 	ld	de, #0x0002
    00054442 D5               [16]  389 	push	de
    00054443 1E 04            [ 8]  390 	ld	e, #0x04
    00054445 3E 11            [ 8]  391 	ld	a, #0x11
    00054447 CD DD 08         [24]  392 	call	_DrawNumber
                         0000012F   393 	C$Bestiary.c$123$2_0$156	= .
                                    394 	.globl	C$Bestiary.c$123$2_0$156
                                    395 ;src\Bestiary.c:123: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
    0005444A 21 01 01         [12]  396 	ld	hl, #0x101
    0005444D E5               [16]  397 	push	hl
    0005444E 11 01 00         [12]  398 	ld	de, #0x0001
    00054451 D5               [16]  399 	push	de
    00054452 1E 06            [ 8]  400 	ld	e, #0x06
    00054454 3E 11            [ 8]  401 	ld	a, #0x11
    00054456 CD DD 08         [24]  402 	call	_DrawNumber
                         0000013E   403 	C$Bestiary.c$124$2_0$156	= .
                                    404 	.globl	C$Bestiary.c$124$2_0$156
                                    405 ;src\Bestiary.c:124: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    00054459 21 01 01         [12]  406 	ld	hl, #0x101
    0005445C E5               [16]  407 	push	hl
    0005445D 11 04 00         [12]  408 	ld	de, #0x0004
    00054460 D5               [16]  409 	push	de
    00054461 1E 08            [ 8]  410 	ld	e, #0x08
    00054463 3E 11            [ 8]  411 	ld	a, #0x11
    00054465 CD DD 08         [24]  412 	call	_DrawNumber
                         0000014D   413 	C$Bestiary.c$125$2_0$156	= .
                                    414 	.globl	C$Bestiary.c$125$2_0$156
                                    415 ;src\Bestiary.c:125: DrawNumber(17, 10, 5, 1, TRUE);   // EXP.
    00054468 21 01 01         [12]  416 	ld	hl, #0x101
    0005446B E5               [16]  417 	push	hl
    0005446C 11 05 00         [12]  418 	ld	de, #0x0005
    0005446F D5               [16]  419 	push	de
    00054470 1E 0A            [ 8]  420 	ld	e, #0x0a
    00054472 3E 11            [ 8]  421 	ld	a, #0x11
    00054474 CD DD 08         [24]  422 	call	_DrawNumber
                         0000015C   423 	C$Bestiary.c$126$2_0$156	= .
                                    424 	.globl	C$Bestiary.c$126$2_0$156
                                    425 ;src\Bestiary.c:126: DrawText(1, 13, "JIM IS A ", TRUE);
    00054477 3E 01            [ 8]  426 	ld	a, #0x01
    00054479 F5               [16]  427 	push	af
    0005447A 33               [ 8]  428 	inc	sp
    0005447B 11 68 4F         [12]  429 	ld	de, #___str_0
    0005447E D5               [16]  430 	push	de
    0005447F 1E 0D            [ 8]  431 	ld	e, #0x0d
    00054481 3E 01            [ 8]  432 	ld	a, #0x01
    00054483 CD B7 09         [24]  433 	call	_DrawText
                         0000016B   434 	C$Bestiary.c$127$2_0$156	= .
                                    435 	.globl	C$Bestiary.c$127$2_0$156
                                    436 ;src\Bestiary.c:127: DrawText(1, 14, "GAMBLER. HE LIKES", TRUE);
    00054486 3E 01            [ 8]  437 	ld	a, #0x01
    00054488 F5               [16]  438 	push	af
    00054489 33               [ 8]  439 	inc	sp
    0005448A 11 72 4F         [12]  440 	ld	de, #___str_1
    0005448D D5               [16]  441 	push	de
    0005448E 1E 0E            [ 8]  442 	ld	e, #0x0e
    00054490 3E 01            [ 8]  443 	ld	a, #0x01
    00054492 CD B7 09         [24]  444 	call	_DrawText
                         0000017A   445 	C$Bestiary.c$128$2_0$156	= .
                                    446 	.globl	C$Bestiary.c$128$2_0$156
                                    447 ;src\Bestiary.c:128: DrawText(1, 15, "SHOOTING DICE.", TRUE);
    00054495 3E 01            [ 8]  448 	ld	a, #0x01
    00054497 F5               [16]  449 	push	af
    00054498 33               [ 8]  450 	inc	sp
    00054499 11 84 4F         [12]  451 	ld	de, #___str_2
    0005449C D5               [16]  452 	push	de
    0005449D 1E 0F            [ 8]  453 	ld	e, #0x0f
    0005449F 3E 01            [ 8]  454 	ld	a, #0x01
    000544A1 CD B7 09         [24]  455 	call	_DrawText
    000544A4 C3 65 4F         [16]  456 	jp	00172$
    000544A7                        457 00171$:
                         0000018C   458 	C$Bestiary.c$130$1_0$148	= .
                                    459 	.globl	C$Bestiary.c$130$1_0$148
                                    460 ;src\Bestiary.c:130: else if (index == 1) // Gypsy
    000544A7 FA 6F CD         [16]  461 	ld	a, (#_index)
    000544AA 3D               [ 4]  462 	dec	a
    000544AB C2 56 45         [16]  463 	jp	NZ,00168$
                         00000193   464 	C$Bestiary.c$132$2_0$157	= .
                                    465 	.globl	C$Bestiary.c$132$2_0$157
                                    466 ;src\Bestiary.c:132: set_bkg_data(128, 79, GypsyTiles); 
    000544AE 11 9D 52         [12]  467 	ld	de, #_GypsyTiles
    000544B1 D5               [16]  468 	push	de
    000544B2 21 80 4F         [12]  469 	ld	hl, #0x4f80
    000544B5 E5               [16]  470 	push	hl
    000544B6 CD 85 0E         [24]  471 	call	_set_bkg_data
    000544B9 E8 04            [16]  472 	add	sp, #4
                         000001A0   473 	C$Bestiary.c$133$2_0$157	= .
                                    474 	.globl	C$Bestiary.c$133$2_0$157
                                    475 ;src\Bestiary.c:133: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    000544BB 11 8D 54         [12]  476 	ld	de, #_Gypsy_Map
    000544BE D5               [16]  477 	push	de
    000544BF 21 06 07         [12]  478 	ld	hl, #0x706
    000544C2 E5               [16]  479 	push	hl
    000544C3 21 02 04         [12]  480 	ld	hl, #0x402
    000544C6 E5               [16]  481 	push	hl
    000544C7 CD CC 0F         [24]  482 	call	_set_bkg_tiles
    000544CA E8 06            [16]  483 	add	sp, #6
                         000001B1   484 	C$Bestiary.c$134$2_0$157	= .
                                    485 	.globl	C$Bestiary.c$134$2_0$157
                                    486 ;src\Bestiary.c:134: DrawNumber(4, 0, 1, 3, TRUE);     // ID
    000544CC 21 03 01         [12]  487 	ld	hl, #0x103
    000544CF E5               [16]  488 	push	hl
    000544D0 11 01 00         [12]  489 	ld	de, #0x0001
    000544D3 D5               [16]  490 	push	de
    000544D4 1E 00            [ 8]  491 	ld	e, #0x00
    000544D6 3E 04            [ 8]  492 	ld	a, #0x04
    000544D8 CD DD 08         [24]  493 	call	_DrawNumber
                         000001C0   494 	C$Bestiary.c$136$2_0$157	= .
                                    495 	.globl	C$Bestiary.c$136$2_0$157
                                    496 ;src\Bestiary.c:136: DrawNumber(17, 2, 2, 1, TRUE);    // ATTACK
    000544DB 21 01 01         [12]  497 	ld	hl, #0x101
    000544DE E5               [16]  498 	push	hl
    000544DF 11 02 00         [12]  499 	ld	de, #0x0002
    000544E2 D5               [16]  500 	push	de
    000544E3 1E 02            [ 8]  501 	ld	e, #0x02
    000544E5 3E 11            [ 8]  502 	ld	a, #0x11
    000544E7 CD DD 08         [24]  503 	call	_DrawNumber
                         000001CF   504 	C$Bestiary.c$137$2_0$157	= .
                                    505 	.globl	C$Bestiary.c$137$2_0$157
                                    506 ;src\Bestiary.c:137: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
    000544EA 21 01 01         [12]  507 	ld	hl, #0x101
    000544ED E5               [16]  508 	push	hl
    000544EE 11 02 00         [12]  509 	ld	de, #0x0002
    000544F1 D5               [16]  510 	push	de
    000544F2 1E 04            [ 8]  511 	ld	e, #0x04
    000544F4 3E 11            [ 8]  512 	ld	a, #0x11
    000544F6 CD DD 08         [24]  513 	call	_DrawNumber
                         000001DE   514 	C$Bestiary.c$138$2_0$157	= .
                                    515 	.globl	C$Bestiary.c$138$2_0$157
                                    516 ;src\Bestiary.c:138: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
    000544F9 21 01 01         [12]  517 	ld	hl, #0x101
    000544FC E5               [16]  518 	push	hl
    000544FD 11 03 00         [12]  519 	ld	de, #0x0003
    00054500 D5               [16]  520 	push	de
    00054501 1E 06            [ 8]  521 	ld	e, #0x06
    00054503 3E 11            [ 8]  522 	ld	a, #0x11
    00054505 CD DD 08         [24]  523 	call	_DrawNumber
                         000001ED   524 	C$Bestiary.c$139$2_0$157	= .
                                    525 	.globl	C$Bestiary.c$139$2_0$157
                                    526 ;src\Bestiary.c:139: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
    00054508 21 01 01         [12]  527 	ld	hl, #0x101
    0005450B E5               [16]  528 	push	hl
    0005450C 11 02 00         [12]  529 	ld	de, #0x0002
    0005450F D5               [16]  530 	push	de
    00054510 1E 08            [ 8]  531 	ld	e, #0x08
    00054512 3E 11            [ 8]  532 	ld	a, #0x11
    00054514 CD DD 08         [24]  533 	call	_DrawNumber
                         000001FC   534 	C$Bestiary.c$140$2_0$157	= .
                                    535 	.globl	C$Bestiary.c$140$2_0$157
                                    536 ;src\Bestiary.c:140: DrawNumber(17, 10, 7, 1, TRUE);   // EXP.
    00054517 21 01 01         [12]  537 	ld	hl, #0x101
    0005451A E5               [16]  538 	push	hl
    0005451B 11 07 00         [12]  539 	ld	de, #0x0007
    0005451E D5               [16]  540 	push	de
    0005451F 1E 0A            [ 8]  541 	ld	e, #0x0a
    00054521 3E 11            [ 8]  542 	ld	a, #0x11
    00054523 CD DD 08         [24]  543 	call	_DrawNumber
                         0000020B   544 	C$Bestiary.c$141$2_0$157	= .
                                    545 	.globl	C$Bestiary.c$141$2_0$157
                                    546 ;src\Bestiary.c:141: DrawText(1, 13, "GYPSY MOTHS ARE", TRUE);
    00054526 3E 01            [ 8]  547 	ld	a, #0x01
    00054528 F5               [16]  548 	push	af
    00054529 33               [ 8]  549 	inc	sp
    0005452A 11 93 4F         [12]  550 	ld	de, #___str_3
    0005452D D5               [16]  551 	push	de
    0005452E 1E 0D            [ 8]  552 	ld	e, #0x0d
    00054530 3E 01            [ 8]  553 	ld	a, #0x01
    00054532 CD B7 09         [24]  554 	call	_DrawText
                         0000021A   555 	C$Bestiary.c$142$2_0$157	= .
                                    556 	.globl	C$Bestiary.c$142$2_0$157
                                    557 ;src\Bestiary.c:142: DrawText(1, 14, "TAKING ALL FROM", TRUE);
    00054535 3E 01            [ 8]  558 	ld	a, #0x01
    00054537 F5               [16]  559 	push	af
    00054538 33               [ 8]  560 	inc	sp
    00054539 11 A3 4F         [12]  561 	ld	de, #___str_4
    0005453C D5               [16]  562 	push	de
    0005453D 1E 0E            [ 8]  563 	ld	e, #0x0e
    0005453F 3E 01            [ 8]  564 	ld	a, #0x01
    00054541 CD B7 09         [24]  565 	call	_DrawText
                         00000229   566 	C$Bestiary.c$143$2_0$157	= .
                                    567 	.globl	C$Bestiary.c$143$2_0$157
                                    568 ;src\Bestiary.c:143: DrawText(1, 15, "EVERYWHERE!", TRUE);
    00054544 3E 01            [ 8]  569 	ld	a, #0x01
    00054546 F5               [16]  570 	push	af
    00054547 33               [ 8]  571 	inc	sp
    00054548 11 B3 4F         [12]  572 	ld	de, #___str_5
    0005454B D5               [16]  573 	push	de
    0005454C 1E 0F            [ 8]  574 	ld	e, #0x0f
    0005454E 3E 01            [ 8]  575 	ld	a, #0x01
    00054550 CD B7 09         [24]  576 	call	_DrawText
    00054553 C3 65 4F         [16]  577 	jp	00172$
    00054556                        578 00168$:
                         0000023B   579 	C$Bestiary.c$145$1_0$148	= .
                                    580 	.globl	C$Bestiary.c$145$1_0$148
                                    581 ;src\Bestiary.c:145: else if (index == 2) // Wally
    00054556 FA 6F CD         [16]  582 	ld	a, (#_index)
    00054559 D6 02            [ 8]  583 	sub	a, #0x02
    0005455B C2 15 46         [16]  584 	jp	NZ,00165$
                         00000243   585 	C$Bestiary.c$147$2_0$158	= .
                                    586 	.globl	C$Bestiary.c$147$2_0$158
                                    587 ;src\Bestiary.c:147: set_bkg_data(128, 79, WallyTiles); 
    0005455E 11 B7 54         [12]  588 	ld	de, #_WallyTiles
    00054561 D5               [16]  589 	push	de
    00054562 21 80 4F         [12]  590 	ld	hl, #0x4f80
    00054565 E5               [16]  591 	push	hl
    00054566 CD 85 0E         [24]  592 	call	_set_bkg_data
    00054569 E8 04            [16]  593 	add	sp, #4
                         00000250   594 	C$Bestiary.c$148$2_0$158	= .
                                    595 	.globl	C$Bestiary.c$148$2_0$158
                                    596 ;src\Bestiary.c:148: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
    0005456B 11 77 56         [12]  597 	ld	de, #_Wally_Map
    0005456E D5               [16]  598 	push	de
    0005456F 21 05 06         [12]  599 	ld	hl, #0x605
    00054572 E5               [16]  600 	push	hl
    00054573 21 02 04         [12]  601 	ld	hl, #0x402
    00054576 E5               [16]  602 	push	hl
    00054577 CD CC 0F         [24]  603 	call	_set_bkg_tiles
    0005457A E8 06            [16]  604 	add	sp, #6
                         00000261   605 	C$Bestiary.c$149$2_0$158	= .
                                    606 	.globl	C$Bestiary.c$149$2_0$158
                                    607 ;src\Bestiary.c:149: DrawNumber(4, 0, 2, 3, TRUE);     // ID
    0005457C 21 03 01         [12]  608 	ld	hl, #0x103
    0005457F E5               [16]  609 	push	hl
    00054580 11 02 00         [12]  610 	ld	de, #0x0002
    00054583 D5               [16]  611 	push	de
    00054584 1E 00            [ 8]  612 	ld	e, #0x00
    00054586 3E 04            [ 8]  613 	ld	a, #0x04
    00054588 CD DD 08         [24]  614 	call	_DrawNumber
                         00000270   615 	C$Bestiary.c$151$2_0$158	= .
                                    616 	.globl	C$Bestiary.c$151$2_0$158
                                    617 ;src\Bestiary.c:151: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
    0005458B 21 01 01         [12]  618 	ld	hl, #0x101
    0005458E E5               [16]  619 	push	hl
    0005458F 11 04 00         [12]  620 	ld	de, #0x0004
    00054592 D5               [16]  621 	push	de
    00054593 1E 02            [ 8]  622 	ld	e, #0x02
    00054595 3E 11            [ 8]  623 	ld	a, #0x11
    00054597 CD DD 08         [24]  624 	call	_DrawNumber
                         0000027F   625 	C$Bestiary.c$152$2_0$158	= .
                                    626 	.globl	C$Bestiary.c$152$2_0$158
                                    627 ;src\Bestiary.c:152: DrawNumber(17, 4, 4, 1, TRUE);    // DEFENSE
    0005459A 21 01 01         [12]  628 	ld	hl, #0x101
    0005459D E5               [16]  629 	push	hl
    0005459E 11 04 00         [12]  630 	ld	de, #0x0004
    000545A1 D5               [16]  631 	push	de
    000545A2 1E 04            [ 8]  632 	ld	e, #0x04
    000545A4 3E 11            [ 8]  633 	ld	a, #0x11
    000545A6 CD DD 08         [24]  634 	call	_DrawNumber
                         0000028E   635 	C$Bestiary.c$153$2_0$158	= .
                                    636 	.globl	C$Bestiary.c$153$2_0$158
                                    637 ;src\Bestiary.c:153: DrawNumber(17, 6, 4, 1, TRUE);    // SPECIAL
    000545A9 21 01 01         [12]  638 	ld	hl, #0x101
    000545AC E5               [16]  639 	push	hl
    000545AD 11 04 00         [12]  640 	ld	de, #0x0004
    000545B0 D5               [16]  641 	push	de
    000545B1 1E 06            [ 8]  642 	ld	e, #0x06
    000545B3 3E 11            [ 8]  643 	ld	a, #0x11
    000545B5 CD DD 08         [24]  644 	call	_DrawNumber
                         0000029D   645 	C$Bestiary.c$154$2_0$158	= .
                                    646 	.globl	C$Bestiary.c$154$2_0$158
                                    647 ;src\Bestiary.c:154: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    000545B8 21 01 01         [12]  648 	ld	hl, #0x101
    000545BB E5               [16]  649 	push	hl
    000545BC 11 04 00         [12]  650 	ld	de, #0x0004
    000545BF D5               [16]  651 	push	de
    000545C0 1E 08            [ 8]  652 	ld	e, #0x08
    000545C2 3E 11            [ 8]  653 	ld	a, #0x11
    000545C4 CD DD 08         [24]  654 	call	_DrawNumber
                         000002AC   655 	C$Bestiary.c$155$2_0$158	= .
                                    656 	.globl	C$Bestiary.c$155$2_0$158
                                    657 ;src\Bestiary.c:155: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
    000545C7 21 02 01         [12]  658 	ld	hl, #0x102
    000545CA E5               [16]  659 	push	hl
    000545CB 11 0C 00         [12]  660 	ld	de, #0x000c
    000545CE D5               [16]  661 	push	de
    000545CF 1E 0A            [ 8]  662 	ld	e, #0x0a
    000545D1 3E 10            [ 8]  663 	ld	a, #0x10
    000545D3 CD DD 08         [24]  664 	call	_DrawNumber
                         000002BB   665 	C$Bestiary.c$156$2_0$158	= .
                                    666 	.globl	C$Bestiary.c$156$2_0$158
                                    667 ;src\Bestiary.c:156: DrawText(1, 13, "WALLY IS IN A", TRUE);
    000545D6 3E 01            [ 8]  668 	ld	a, #0x01
    000545D8 F5               [16]  669 	push	af
    000545D9 33               [ 8]  670 	inc	sp
    000545DA 11 BF 4F         [12]  671 	ld	de, #___str_6
    000545DD D5               [16]  672 	push	de
    000545DE 1E 0D            [ 8]  673 	ld	e, #0x0d
    000545E0 3E 01            [ 8]  674 	ld	a, #0x01
    000545E2 CD B7 09         [24]  675 	call	_DrawText
                         000002CA   676 	C$Bestiary.c$157$2_0$158	= .
                                    677 	.globl	C$Bestiary.c$157$2_0$158
                                    678 ;src\Bestiary.c:157: DrawText(1, 14, "GANG. HE SAYS", TRUE);
    000545E5 3E 01            [ 8]  679 	ld	a, #0x01
    000545E7 F5               [16]  680 	push	af
    000545E8 33               [ 8]  681 	inc	sp
    000545E9 11 CD 4F         [12]  682 	ld	de, #___str_7
    000545EC D5               [16]  683 	push	de
    000545ED 1E 0E            [ 8]  684 	ld	e, #0x0e
    000545EF 3E 01            [ 8]  685 	ld	a, #0x01
    000545F1 CD B7 09         [24]  686 	call	_DrawText
                         000002D9   687 	C$Bestiary.c$158$2_0$158	= .
                                    688 	.globl	C$Bestiary.c$158$2_0$158
                                    689 ;src\Bestiary.c:158: DrawText(1, 15, "NO TO DRUGS!", TRUE);
    000545F4 3E 01            [ 8]  690 	ld	a, #0x01
    000545F6 F5               [16]  691 	push	af
    000545F7 33               [ 8]  692 	inc	sp
    000545F8 11 DB 4F         [12]  693 	ld	de, #___str_8
    000545FB D5               [16]  694 	push	de
    000545FC 1E 0F            [ 8]  695 	ld	e, #0x0f
    000545FE 3E 01            [ 8]  696 	ld	a, #0x01
    00054600 CD B7 09         [24]  697 	call	_DrawText
                         000002E8   698 	C$Bestiary.c$159$2_0$158	= .
                                    699 	.globl	C$Bestiary.c$159$2_0$158
                                    700 ;src\Bestiary.c:159: DrawText(1, 16, "HOW COOL!", TRUE);
    00054603 3E 01            [ 8]  701 	ld	a, #0x01
    00054605 F5               [16]  702 	push	af
    00054606 33               [ 8]  703 	inc	sp
    00054607 11 E8 4F         [12]  704 	ld	de, #___str_9
    0005460A D5               [16]  705 	push	de
    0005460B 1E 10            [ 8]  706 	ld	e, #0x10
    0005460D 3E 01            [ 8]  707 	ld	a, #0x01
    0005460F CD B7 09         [24]  708 	call	_DrawText
    00054612 C3 65 4F         [16]  709 	jp	00172$
    00054615                        710 00165$:
                         000002FA   711 	C$Bestiary.c$161$1_0$148	= .
                                    712 	.globl	C$Bestiary.c$161$1_0$148
                                    713 ;src\Bestiary.c:161: else if (index == 3)
    00054615 FA 6F CD         [16]  714 	ld	a, (#_index)
    00054618 D6 03            [ 8]  715 	sub	a, #0x03
    0005461A C2 D4 46         [16]  716 	jp	NZ,00162$
                         00000302   717 	C$Bestiary.c$163$2_0$159	= .
                                    718 	.globl	C$Bestiary.c$163$2_0$159
                                    719 ;src\Bestiary.c:163: set_bkg_data(128, 20, Tick_Tiles);
    0005461D 11 CD 59         [12]  720 	ld	de, #_Tick_Tiles
    00054620 D5               [16]  721 	push	de
    00054621 21 80 14         [12]  722 	ld	hl, #0x1480
    00054624 E5               [16]  723 	push	hl
    00054625 CD 85 0E         [24]  724 	call	_set_bkg_data
    00054628 E8 04            [16]  725 	add	sp, #4
                         0000030F   726 	C$Bestiary.c$164$2_0$159	= .
                                    727 	.globl	C$Bestiary.c$164$2_0$159
                                    728 ;src\Bestiary.c:164: set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
    0005462A 11 1D 5B         [12]  729 	ld	de, #_Tick_Map
    0005462D D5               [16]  730 	push	de
    0005462E 21 05 05         [12]  731 	ld	hl, #0x505
    00054631 E5               [16]  732 	push	hl
    00054632 21 02 04         [12]  733 	ld	hl, #0x402
    00054635 E5               [16]  734 	push	hl
    00054636 CD CC 0F         [24]  735 	call	_set_bkg_tiles
    00054639 E8 06            [16]  736 	add	sp, #6
                         00000320   737 	C$Bestiary.c$165$2_0$159	= .
                                    738 	.globl	C$Bestiary.c$165$2_0$159
                                    739 ;src\Bestiary.c:165: DrawNumber(4, 0, 3, 3, TRUE);     // ID
    0005463B 21 03 01         [12]  740 	ld	hl, #0x103
    0005463E E5               [16]  741 	push	hl
    0005463F 11 03 00         [12]  742 	ld	de, #0x0003
    00054642 D5               [16]  743 	push	de
    00054643 1E 00            [ 8]  744 	ld	e, #0x00
    00054645 3E 04            [ 8]  745 	ld	a, #0x04
    00054647 CD DD 08         [24]  746 	call	_DrawNumber
                         0000032F   747 	C$Bestiary.c$167$2_0$159	= .
                                    748 	.globl	C$Bestiary.c$167$2_0$159
                                    749 ;src\Bestiary.c:167: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
    0005464A 21 01 01         [12]  750 	ld	hl, #0x101
    0005464D E5               [16]  751 	push	hl
    0005464E 11 04 00         [12]  752 	ld	de, #0x0004
    00054651 D5               [16]  753 	push	de
    00054652 1E 02            [ 8]  754 	ld	e, #0x02
    00054654 3E 11            [ 8]  755 	ld	a, #0x11
    00054656 CD DD 08         [24]  756 	call	_DrawNumber
                         0000033E   757 	C$Bestiary.c$168$2_0$159	= .
                                    758 	.globl	C$Bestiary.c$168$2_0$159
                                    759 ;src\Bestiary.c:168: DrawNumber(17, 4, 7, 1, TRUE);    // DEFENSE
    00054659 21 01 01         [12]  760 	ld	hl, #0x101
    0005465C E5               [16]  761 	push	hl
    0005465D 11 07 00         [12]  762 	ld	de, #0x0007
    00054660 D5               [16]  763 	push	de
    00054661 1E 04            [ 8]  764 	ld	e, #0x04
    00054663 3E 11            [ 8]  765 	ld	a, #0x11
    00054665 CD DD 08         [24]  766 	call	_DrawNumber
                         0000034D   767 	C$Bestiary.c$169$2_0$159	= .
                                    768 	.globl	C$Bestiary.c$169$2_0$159
                                    769 ;src\Bestiary.c:169: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
    00054668 21 01 01         [12]  770 	ld	hl, #0x101
    0005466B E5               [16]  771 	push	hl
    0005466C 11 03 00         [12]  772 	ld	de, #0x0003
    0005466F D5               [16]  773 	push	de
    00054670 1E 06            [ 8]  774 	ld	e, #0x06
    00054672 3E 11            [ 8]  775 	ld	a, #0x11
    00054674 CD DD 08         [24]  776 	call	_DrawNumber
                         0000035C   777 	C$Bestiary.c$170$2_0$159	= .
                                    778 	.globl	C$Bestiary.c$170$2_0$159
                                    779 ;src\Bestiary.c:170: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
    00054677 21 01 01         [12]  780 	ld	hl, #0x101
    0005467A E5               [16]  781 	push	hl
    0005467B 11 02 00         [12]  782 	ld	de, #0x0002
    0005467E D5               [16]  783 	push	de
    0005467F 1E 08            [ 8]  784 	ld	e, #0x08
    00054681 3E 11            [ 8]  785 	ld	a, #0x11
    00054683 CD DD 08         [24]  786 	call	_DrawNumber
                         0000036B   787 	C$Bestiary.c$171$2_0$159	= .
                                    788 	.globl	C$Bestiary.c$171$2_0$159
                                    789 ;src\Bestiary.c:171: DrawNumber(16, 10, 16, 2, TRUE);   // EXP.
    00054686 21 02 01         [12]  790 	ld	hl, #0x102
    00054689 E5               [16]  791 	push	hl
    0005468A 11 10 00         [12]  792 	ld	de, #0x0010
    0005468D D5               [16]  793 	push	de
    0005468E 1E 0A            [ 8]  794 	ld	e, #0x0a
    00054690 3E 10            [ 8]  795 	ld	a, #0x10
    00054692 CD DD 08         [24]  796 	call	_DrawNumber
                         0000037A   797 	C$Bestiary.c$172$2_0$159	= .
                                    798 	.globl	C$Bestiary.c$172$2_0$159
                                    799 ;src\Bestiary.c:172: DrawText(1, 13, "BLOOD SUCKING", TRUE);
    00054695 3E 01            [ 8]  800 	ld	a, #0x01
    00054697 F5               [16]  801 	push	af
    00054698 33               [ 8]  802 	inc	sp
    00054699 11 F2 4F         [12]  803 	ld	de, #___str_10
    0005469C D5               [16]  804 	push	de
    0005469D 1E 0D            [ 8]  805 	ld	e, #0x0d
    0005469F 3E 01            [ 8]  806 	ld	a, #0x01
    000546A1 CD B7 09         [24]  807 	call	_DrawText
                         00000389   808 	C$Bestiary.c$173$2_0$159	= .
                                    809 	.globl	C$Bestiary.c$173$2_0$159
                                    810 ;src\Bestiary.c:173: DrawText(1, 14, "PARASITE!", TRUE);
    000546A4 3E 01            [ 8]  811 	ld	a, #0x01
    000546A6 F5               [16]  812 	push	af
    000546A7 33               [ 8]  813 	inc	sp
    000546A8 11 00 50         [12]  814 	ld	de, #___str_11
    000546AB D5               [16]  815 	push	de
    000546AC 1E 0E            [ 8]  816 	ld	e, #0x0e
    000546AE 3E 01            [ 8]  817 	ld	a, #0x01
    000546B0 CD B7 09         [24]  818 	call	_DrawText
                         00000398   819 	C$Bestiary.c$174$2_0$159	= .
                                    820 	.globl	C$Bestiary.c$174$2_0$159
                                    821 ;src\Bestiary.c:174: DrawText(1, 15, "THEY HIDE IN", TRUE);
    000546B3 3E 01            [ 8]  822 	ld	a, #0x01
    000546B5 F5               [16]  823 	push	af
    000546B6 33               [ 8]  824 	inc	sp
    000546B7 11 0A 50         [12]  825 	ld	de, #___str_12
    000546BA D5               [16]  826 	push	de
    000546BB 1E 0F            [ 8]  827 	ld	e, #0x0f
    000546BD 3E 01            [ 8]  828 	ld	a, #0x01
    000546BF CD B7 09         [24]  829 	call	_DrawText
                         000003A7   830 	C$Bestiary.c$175$2_0$159	= .
                                    831 	.globl	C$Bestiary.c$175$2_0$159
                                    832 ;src\Bestiary.c:175: DrawText(1, 16, "TALL GRASS!", TRUE);
    000546C2 3E 01            [ 8]  833 	ld	a, #0x01
    000546C4 F5               [16]  834 	push	af
    000546C5 33               [ 8]  835 	inc	sp
    000546C6 11 17 50         [12]  836 	ld	de, #___str_13
    000546C9 D5               [16]  837 	push	de
    000546CA 1E 10            [ 8]  838 	ld	e, #0x10
    000546CC 3E 01            [ 8]  839 	ld	a, #0x01
    000546CE CD B7 09         [24]  840 	call	_DrawText
    000546D1 C3 65 4F         [16]  841 	jp	00172$
    000546D4                        842 00162$:
                         000003B9   843 	C$Bestiary.c$177$1_0$148	= .
                                    844 	.globl	C$Bestiary.c$177$1_0$148
                                    845 ;src\Bestiary.c:177: else if (index == 4)
    000546D4 FA 6F CD         [16]  846 	ld	a, (#_index)
    000546D7 D6 04            [ 8]  847 	sub	a, #0x04
    000546D9 C2 93 47         [16]  848 	jp	NZ,00159$
                         000003C1   849 	C$Bestiary.c$179$2_0$160	= .
                                    850 	.globl	C$Bestiary.c$179$2_0$160
                                    851 ;src\Bestiary.c:179: set_bkg_data(128, 39, Cop_Tiles);
    000546DC 11 95 56         [12]  852 	ld	de, #_Cop_Tiles
    000546DF D5               [16]  853 	push	de
    000546E0 21 80 27         [12]  854 	ld	hl, #0x2780
    000546E3 E5               [16]  855 	push	hl
    000546E4 CD 85 0E         [24]  856 	call	_set_bkg_data
    000546E7 E8 04            [16]  857 	add	sp, #4
                         000003CE   858 	C$Bestiary.c$180$2_0$160	= .
                                    859 	.globl	C$Bestiary.c$180$2_0$160
                                    860 ;src\Bestiary.c:180: set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
    000546E9 11 25 59         [12]  861 	ld	de, #_Officer_Map
    000546EC D5               [16]  862 	push	de
    000546ED 21 06 07         [12]  863 	ld	hl, #0x706
    000546F0 E5               [16]  864 	push	hl
    000546F1 21 02 04         [12]  865 	ld	hl, #0x402
    000546F4 E5               [16]  866 	push	hl
    000546F5 CD CC 0F         [24]  867 	call	_set_bkg_tiles
    000546F8 E8 06            [16]  868 	add	sp, #6
                         000003DF   869 	C$Bestiary.c$181$2_0$160	= .
                                    870 	.globl	C$Bestiary.c$181$2_0$160
                                    871 ;src\Bestiary.c:181: DrawNumber(4, 0, 4, 3, TRUE);     // ID
    000546FA 21 03 01         [12]  872 	ld	hl, #0x103
    000546FD E5               [16]  873 	push	hl
    000546FE 11 04 00         [12]  874 	ld	de, #0x0004
    00054701 D5               [16]  875 	push	de
    00054702 1E 00            [ 8]  876 	ld	e, #0x00
    00054704 3E 04            [ 8]  877 	ld	a, #0x04
    00054706 CD DD 08         [24]  878 	call	_DrawNumber
                         000003EE   879 	C$Bestiary.c$183$2_0$160	= .
                                    880 	.globl	C$Bestiary.c$183$2_0$160
                                    881 ;src\Bestiary.c:183: DrawNumber(17, 2, 9, 1, TRUE);    // ATTACK
    00054709 21 01 01         [12]  882 	ld	hl, #0x101
    0005470C E5               [16]  883 	push	hl
    0005470D 11 09 00         [12]  884 	ld	de, #0x0009
    00054710 D5               [16]  885 	push	de
    00054711 1E 02            [ 8]  886 	ld	e, #0x02
    00054713 3E 11            [ 8]  887 	ld	a, #0x11
    00054715 CD DD 08         [24]  888 	call	_DrawNumber
                         000003FD   889 	C$Bestiary.c$184$2_0$160	= .
                                    890 	.globl	C$Bestiary.c$184$2_0$160
                                    891 ;src\Bestiary.c:184: DrawNumber(17, 4, 5, 1, TRUE);    // DEFENSE
    00054718 21 01 01         [12]  892 	ld	hl, #0x101
    0005471B E5               [16]  893 	push	hl
    0005471C 11 05 00         [12]  894 	ld	de, #0x0005
    0005471F D5               [16]  895 	push	de
    00054720 1E 04            [ 8]  896 	ld	e, #0x04
    00054722 3E 11            [ 8]  897 	ld	a, #0x11
    00054724 CD DD 08         [24]  898 	call	_DrawNumber
                         0000040C   899 	C$Bestiary.c$185$2_0$160	= .
                                    900 	.globl	C$Bestiary.c$185$2_0$160
                                    901 ;src\Bestiary.c:185: DrawNumber(17, 6, 2, 1, TRUE);    // SPECIAL
    00054727 21 01 01         [12]  902 	ld	hl, #0x101
    0005472A E5               [16]  903 	push	hl
    0005472B 11 02 00         [12]  904 	ld	de, #0x0002
    0005472E D5               [16]  905 	push	de
    0005472F 1E 06            [ 8]  906 	ld	e, #0x06
    00054731 3E 11            [ 8]  907 	ld	a, #0x11
    00054733 CD DD 08         [24]  908 	call	_DrawNumber
                         0000041B   909 	C$Bestiary.c$186$2_0$160	= .
                                    910 	.globl	C$Bestiary.c$186$2_0$160
                                    911 ;src\Bestiary.c:186: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    00054736 21 01 01         [12]  912 	ld	hl, #0x101
    00054739 E5               [16]  913 	push	hl
    0005473A 11 04 00         [12]  914 	ld	de, #0x0004
    0005473D D5               [16]  915 	push	de
    0005473E 1E 08            [ 8]  916 	ld	e, #0x08
    00054740 3E 11            [ 8]  917 	ld	a, #0x11
    00054742 CD DD 08         [24]  918 	call	_DrawNumber
                         0000042A   919 	C$Bestiary.c$187$2_0$160	= .
                                    920 	.globl	C$Bestiary.c$187$2_0$160
                                    921 ;src\Bestiary.c:187: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
    00054745 21 02 01         [12]  922 	ld	hl, #0x102
    00054748 E5               [16]  923 	push	hl
    00054749 11 0C 00         [12]  924 	ld	de, #0x000c
    0005474C D5               [16]  925 	push	de
    0005474D 1E 0A            [ 8]  926 	ld	e, #0x0a
    0005474F 3E 10            [ 8]  927 	ld	a, #0x10
    00054751 CD DD 08         [24]  928 	call	_DrawNumber
                         00000439   929 	C$Bestiary.c$188$2_0$160	= .
                                    930 	.globl	C$Bestiary.c$188$2_0$160
                                    931 ;src\Bestiary.c:188: DrawText(1, 13, "OH NO! THE COPS!", TRUE);
    00054754 3E 01            [ 8]  932 	ld	a, #0x01
    00054756 F5               [16]  933 	push	af
    00054757 33               [ 8]  934 	inc	sp
    00054758 11 23 50         [12]  935 	ld	de, #___str_14
    0005475B D5               [16]  936 	push	de
    0005475C 1E 0D            [ 8]  937 	ld	e, #0x0d
    0005475E 3E 01            [ 8]  938 	ld	a, #0x01
    00054760 CD B7 09         [24]  939 	call	_DrawText
                         00000448   940 	C$Bestiary.c$189$2_0$160	= .
                                    941 	.globl	C$Bestiary.c$189$2_0$160
                                    942 ;src\Bestiary.c:189: DrawText(1, 14, "SOMEONE HAS BEEN", TRUE);
    00054763 3E 01            [ 8]  943 	ld	a, #0x01
    00054765 F5               [16]  944 	push	af
    00054766 33               [ 8]  945 	inc	sp
    00054767 11 34 50         [12]  946 	ld	de, #___str_15
    0005476A D5               [16]  947 	push	de
    0005476B 1E 0E            [ 8]  948 	ld	e, #0x0e
    0005476D 3E 01            [ 8]  949 	ld	a, #0x01
    0005476F CD B7 09         [24]  950 	call	_DrawText
                         00000457   951 	C$Bestiary.c$190$2_0$160	= .
                                    952 	.globl	C$Bestiary.c$190$2_0$160
                                    953 ;src\Bestiary.c:190: DrawText(1, 15, "BEING NAUGHTY!", TRUE);
    00054772 3E 01            [ 8]  954 	ld	a, #0x01
    00054774 F5               [16]  955 	push	af
    00054775 33               [ 8]  956 	inc	sp
    00054776 11 45 50         [12]  957 	ld	de, #___str_16
    00054779 D5               [16]  958 	push	de
    0005477A 1E 0F            [ 8]  959 	ld	e, #0x0f
    0005477C 3E 01            [ 8]  960 	ld	a, #0x01
    0005477E CD B7 09         [24]  961 	call	_DrawText
                         00000466   962 	C$Bestiary.c$191$2_0$160	= .
                                    963 	.globl	C$Bestiary.c$191$2_0$160
                                    964 ;src\Bestiary.c:191: DrawText(1, 16, "CAN'T BE YOU?", TRUE);
    00054781 3E 01            [ 8]  965 	ld	a, #0x01
    00054783 F5               [16]  966 	push	af
    00054784 33               [ 8]  967 	inc	sp
    00054785 11 54 50         [12]  968 	ld	de, #___str_17
    00054788 D5               [16]  969 	push	de
    00054789 1E 10            [ 8]  970 	ld	e, #0x10
    0005478B 3E 01            [ 8]  971 	ld	a, #0x01
    0005478D CD B7 09         [24]  972 	call	_DrawText
    00054790 C3 65 4F         [16]  973 	jp	00172$
    00054793                        974 00159$:
                         00000478   975 	C$Bestiary.c$193$1_0$148	= .
                                    976 	.globl	C$Bestiary.c$193$1_0$148
                                    977 ;src\Bestiary.c:193: else if (index == 5)
    00054793 FA 6F CD         [16]  978 	ld	a, (#_index)
    00054796 D6 05            [ 8]  979 	sub	a, #0x05
    00054798 C2 52 48         [16]  980 	jp	NZ,00156$
                         00000480   981 	C$Bestiary.c$195$2_0$161	= .
                                    982 	.globl	C$Bestiary.c$195$2_0$161
                                    983 ;src\Bestiary.c:195: set_bkg_data(128, 39, Cop_Tiles);
    0005479B 11 95 56         [12]  984 	ld	de, #_Cop_Tiles
    0005479E D5               [16]  985 	push	de
    0005479F 21 80 27         [12]  986 	ld	hl, #0x2780
    000547A2 E5               [16]  987 	push	hl
    000547A3 CD 85 0E         [24]  988 	call	_set_bkg_data
    000547A6 E8 04            [16]  989 	add	sp, #4
                         0000048D   990 	C$Bestiary.c$196$2_0$161	= .
                                    991 	.globl	C$Bestiary.c$196$2_0$161
                                    992 ;src\Bestiary.c:196: set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
    000547A8 11 4F 59         [12]  993 	ld	de, #_Police_Map
    000547AB D5               [16]  994 	push	de
    000547AC 21 06 07         [12]  995 	ld	hl, #0x706
    000547AF E5               [16]  996 	push	hl
    000547B0 21 02 04         [12]  997 	ld	hl, #0x402
    000547B3 E5               [16]  998 	push	hl
    000547B4 CD CC 0F         [24]  999 	call	_set_bkg_tiles
    000547B7 E8 06            [16] 1000 	add	sp, #6
                         0000049E  1001 	C$Bestiary.c$197$2_0$161	= .
                                   1002 	.globl	C$Bestiary.c$197$2_0$161
                                   1003 ;src\Bestiary.c:197: DrawNumber(4, 0, 5, 3, TRUE);     // ID
    000547B9 21 03 01         [12] 1004 	ld	hl, #0x103
    000547BC E5               [16] 1005 	push	hl
    000547BD 11 05 00         [12] 1006 	ld	de, #0x0005
    000547C0 D5               [16] 1007 	push	de
    000547C1 1E 00            [ 8] 1008 	ld	e, #0x00
    000547C3 3E 04            [ 8] 1009 	ld	a, #0x04
    000547C5 CD DD 08         [24] 1010 	call	_DrawNumber
                         000004AD  1011 	C$Bestiary.c$199$2_0$161	= .
                                   1012 	.globl	C$Bestiary.c$199$2_0$161
                                   1013 ;src\Bestiary.c:199: DrawNumber(16, 2, 10, 2, TRUE);    // ATTACK
    000547C8 21 02 01         [12] 1014 	ld	hl, #0x102
    000547CB E5               [16] 1015 	push	hl
    000547CC 11 0A 00         [12] 1016 	ld	de, #0x000a
    000547CF D5               [16] 1017 	push	de
    000547D0 1E 02            [ 8] 1018 	ld	e, #0x02
    000547D2 3E 10            [ 8] 1019 	ld	a, #0x10
    000547D4 CD DD 08         [24] 1020 	call	_DrawNumber
                         000004BC  1021 	C$Bestiary.c$200$2_0$161	= .
                                   1022 	.globl	C$Bestiary.c$200$2_0$161
                                   1023 ;src\Bestiary.c:200: DrawNumber(16, 4, 15, 2, TRUE);    // DEFENSE
    000547D7 21 02 01         [12] 1024 	ld	hl, #0x102
    000547DA E5               [16] 1025 	push	hl
    000547DB 11 0F 00         [12] 1026 	ld	de, #0x000f
    000547DE D5               [16] 1027 	push	de
    000547DF 1E 04            [ 8] 1028 	ld	e, #0x04
    000547E1 3E 10            [ 8] 1029 	ld	a, #0x10
    000547E3 CD DD 08         [24] 1030 	call	_DrawNumber
                         000004CB  1031 	C$Bestiary.c$201$2_0$161	= .
                                   1032 	.globl	C$Bestiary.c$201$2_0$161
                                   1033 ;src\Bestiary.c:201: DrawNumber(17, 6, 5, 1, TRUE);    // SPECIAL
    000547E6 21 01 01         [12] 1034 	ld	hl, #0x101
    000547E9 E5               [16] 1035 	push	hl
    000547EA 11 05 00         [12] 1036 	ld	de, #0x0005
    000547ED D5               [16] 1037 	push	de
    000547EE 1E 06            [ 8] 1038 	ld	e, #0x06
    000547F0 3E 11            [ 8] 1039 	ld	a, #0x11
    000547F2 CD DD 08         [24] 1040 	call	_DrawNumber
                         000004DA  1041 	C$Bestiary.c$202$2_0$161	= .
                                   1042 	.globl	C$Bestiary.c$202$2_0$161
                                   1043 ;src\Bestiary.c:202: DrawNumber(17, 8, 6, 1, TRUE);    // SPEED
    000547F5 21 01 01         [12] 1044 	ld	hl, #0x101
    000547F8 E5               [16] 1045 	push	hl
    000547F9 11 06 00         [12] 1046 	ld	de, #0x0006
    000547FC D5               [16] 1047 	push	de
    000547FD 1E 08            [ 8] 1048 	ld	e, #0x08
    000547FF 3E 11            [ 8] 1049 	ld	a, #0x11
    00054801 CD DD 08         [24] 1050 	call	_DrawNumber
                         000004E9  1051 	C$Bestiary.c$203$2_0$161	= .
                                   1052 	.globl	C$Bestiary.c$203$2_0$161
                                   1053 ;src\Bestiary.c:203: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
    00054804 21 02 01         [12] 1054 	ld	hl, #0x102
    00054807 E5               [16] 1055 	push	hl
    00054808 11 16 00         [12] 1056 	ld	de, #0x0016
    0005480B D5               [16] 1057 	push	de
    0005480C 1E 0A            [ 8] 1058 	ld	e, #0x0a
    0005480E 3E 10            [ 8] 1059 	ld	a, #0x10
    00054810 CD DD 08         [24] 1060 	call	_DrawNumber
                         000004F8  1061 	C$Bestiary.c$204$2_0$161	= .
                                   1062 	.globl	C$Bestiary.c$204$2_0$161
                                   1063 ;src\Bestiary.c:204: DrawText(1, 13, "LOOKS LIKE THE ", TRUE);
    00054813 3E 01            [ 8] 1064 	ld	a, #0x01
    00054815 F5               [16] 1065 	push	af
    00054816 33               [ 8] 1066 	inc	sp
    00054817 11 62 50         [12] 1067 	ld	de, #___str_18
    0005481A D5               [16] 1068 	push	de
    0005481B 1E 0D            [ 8] 1069 	ld	e, #0x0d
    0005481D 3E 01            [ 8] 1070 	ld	a, #0x01
    0005481F CD B7 09         [24] 1071 	call	_DrawText
                         00000507  1072 	C$Bestiary.c$205$2_0$161	= .
                                   1073 	.globl	C$Bestiary.c$205$2_0$161
                                   1074 ;src\Bestiary.c:205: DrawText(1, 14, "POLICE HAS COME", TRUE);
    00054822 3E 01            [ 8] 1075 	ld	a, #0x01
    00054824 F5               [16] 1076 	push	af
    00054825 33               [ 8] 1077 	inc	sp
    00054826 11 72 50         [12] 1078 	ld	de, #___str_19
    00054829 D5               [16] 1079 	push	de
    0005482A 1E 0E            [ 8] 1080 	ld	e, #0x0e
    0005482C 3E 01            [ 8] 1081 	ld	a, #0x01
    0005482E CD B7 09         [24] 1082 	call	_DrawText
                         00000516  1083 	C$Bestiary.c$206$2_0$161	= .
                                   1084 	.globl	C$Bestiary.c$206$2_0$161
                                   1085 ;src\Bestiary.c:206: DrawText(1, 15, "TO TAKE YOU AWAY!", TRUE);
    00054831 3E 01            [ 8] 1086 	ld	a, #0x01
    00054833 F5               [16] 1087 	push	af
    00054834 33               [ 8] 1088 	inc	sp
    00054835 11 82 50         [12] 1089 	ld	de, #___str_20
    00054838 D5               [16] 1090 	push	de
    00054839 1E 0F            [ 8] 1091 	ld	e, #0x0f
    0005483B 3E 01            [ 8] 1092 	ld	a, #0x01
    0005483D CD B7 09         [24] 1093 	call	_DrawText
                         00000525  1094 	C$Bestiary.c$207$2_0$161	= .
                                   1095 	.globl	C$Bestiary.c$207$2_0$161
                                   1096 ;src\Bestiary.c:207: DrawText(1, 16, "STOP RESISTING!", TRUE);
    00054840 3E 01            [ 8] 1097 	ld	a, #0x01
    00054842 F5               [16] 1098 	push	af
    00054843 33               [ 8] 1099 	inc	sp
    00054844 11 94 50         [12] 1100 	ld	de, #___str_21
    00054847 D5               [16] 1101 	push	de
    00054848 1E 10            [ 8] 1102 	ld	e, #0x10
    0005484A 3E 01            [ 8] 1103 	ld	a, #0x01
    0005484C CD B7 09         [24] 1104 	call	_DrawText
    0005484F C3 65 4F         [16] 1105 	jp	00172$
    00054852                       1106 00156$:
                         00000537  1107 	C$Bestiary.c$209$1_0$148	= .
                                   1108 	.globl	C$Bestiary.c$209$1_0$148
                                   1109 ;src\Bestiary.c:209: else if (index == 6)
    00054852 FA 6F CD         [16] 1110 	ld	a, (#_index)
    00054855 D6 06            [ 8] 1111 	sub	a, #0x06
    00054857 C2 02 49         [16] 1112 	jp	NZ,00153$
                         0000053F  1113 	C$Bestiary.c$211$2_0$162	= .
                                   1114 	.globl	C$Bestiary.c$211$2_0$162
                                   1115 ;src\Bestiary.c:211: set_bkg_data(128, 39, Cop_Tiles);
    0005485A 11 95 56         [12] 1116 	ld	de, #_Cop_Tiles
    0005485D D5               [16] 1117 	push	de
    0005485E 21 80 27         [12] 1118 	ld	hl, #0x2780
    00054861 E5               [16] 1119 	push	hl
    00054862 CD 85 0E         [24] 1120 	call	_set_bkg_data
    00054865 E8 04            [16] 1121 	add	sp, #4
                         0000054C  1122 	C$Bestiary.c$212$2_0$162	= .
                                   1123 	.globl	C$Bestiary.c$212$2_0$162
                                   1124 ;src\Bestiary.c:212: set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
    00054867 11 79 59         [12] 1125 	ld	de, #_Sheriff_Map
    0005486A D5               [16] 1126 	push	de
    0005486B 21 06 07         [12] 1127 	ld	hl, #0x706
    0005486E E5               [16] 1128 	push	hl
    0005486F 21 02 04         [12] 1129 	ld	hl, #0x402
    00054872 E5               [16] 1130 	push	hl
    00054873 CD CC 0F         [24] 1131 	call	_set_bkg_tiles
    00054876 E8 06            [16] 1132 	add	sp, #6
                         0000055D  1133 	C$Bestiary.c$213$2_0$162	= .
                                   1134 	.globl	C$Bestiary.c$213$2_0$162
                                   1135 ;src\Bestiary.c:213: DrawNumber(4, 0, 6, 3, TRUE);     // ID
    00054878 21 03 01         [12] 1136 	ld	hl, #0x103
    0005487B E5               [16] 1137 	push	hl
    0005487C 11 06 00         [12] 1138 	ld	de, #0x0006
    0005487F D5               [16] 1139 	push	de
    00054880 1E 00            [ 8] 1140 	ld	e, #0x00
    00054882 3E 04            [ 8] 1141 	ld	a, #0x04
    00054884 CD DD 08         [24] 1142 	call	_DrawNumber
                         0000056C  1143 	C$Bestiary.c$215$2_0$162	= .
                                   1144 	.globl	C$Bestiary.c$215$2_0$162
                                   1145 ;src\Bestiary.c:215: DrawNumber(16, 2, 16, 2, TRUE);    // ATTACK
    00054887 21 02 01         [12] 1146 	ld	hl, #0x102
    0005488A E5               [16] 1147 	push	hl
    0005488B 11 10 00         [12] 1148 	ld	de, #0x0010
    0005488E D5               [16] 1149 	push	de
    0005488F 1E 02            [ 8] 1150 	ld	e, #0x02
    00054891 3E 10            [ 8] 1151 	ld	a, #0x10
    00054893 CD DD 08         [24] 1152 	call	_DrawNumber
                         0000057B  1153 	C$Bestiary.c$216$2_0$162	= .
                                   1154 	.globl	C$Bestiary.c$216$2_0$162
                                   1155 ;src\Bestiary.c:216: DrawNumber(16, 4, 10, 2, TRUE);    // DEFENSE
    00054896 21 02 01         [12] 1156 	ld	hl, #0x102
    00054899 E5               [16] 1157 	push	hl
    0005489A 11 0A 00         [12] 1158 	ld	de, #0x000a
    0005489D D5               [16] 1159 	push	de
    0005489E 1E 04            [ 8] 1160 	ld	e, #0x04
    000548A0 3E 10            [ 8] 1161 	ld	a, #0x10
    000548A2 CD DD 08         [24] 1162 	call	_DrawNumber
                         0000058A  1163 	C$Bestiary.c$217$2_0$162	= .
                                   1164 	.globl	C$Bestiary.c$217$2_0$162
                                   1165 ;src\Bestiary.c:217: DrawNumber(17, 6, 6, 1, TRUE);    // SPECIAL
    000548A5 21 01 01         [12] 1166 	ld	hl, #0x101
    000548A8 E5               [16] 1167 	push	hl
    000548A9 11 06 00         [12] 1168 	ld	de, #0x0006
    000548AC D5               [16] 1169 	push	de
    000548AD 1E 06            [ 8] 1170 	ld	e, #0x06
    000548AF 3E 11            [ 8] 1171 	ld	a, #0x11
    000548B1 CD DD 08         [24] 1172 	call	_DrawNumber
                         00000599  1173 	C$Bestiary.c$218$2_0$162	= .
                                   1174 	.globl	C$Bestiary.c$218$2_0$162
                                   1175 ;src\Bestiary.c:218: DrawNumber(17, 8, 8, 1, TRUE);    // SPEED
    000548B4 21 01 01         [12] 1176 	ld	hl, #0x101
    000548B7 E5               [16] 1177 	push	hl
    000548B8 11 08 00         [12] 1178 	ld	de, #0x0008
    000548BB D5               [16] 1179 	push	de
    000548BC 1E 08            [ 8] 1180 	ld	e, #0x08
    000548BE 3E 11            [ 8] 1181 	ld	a, #0x11
    000548C0 CD DD 08         [24] 1182 	call	_DrawNumber
                         000005A8  1183 	C$Bestiary.c$219$2_0$162	= .
                                   1184 	.globl	C$Bestiary.c$219$2_0$162
                                   1185 ;src\Bestiary.c:219: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
    000548C3 21 02 01         [12] 1186 	ld	hl, #0x102
    000548C6 E5               [16] 1187 	push	hl
    000548C7 11 16 00         [12] 1188 	ld	de, #0x0016
    000548CA D5               [16] 1189 	push	de
    000548CB 1E 0A            [ 8] 1190 	ld	e, #0x0a
    000548CD 3E 10            [ 8] 1191 	ld	a, #0x10
    000548CF CD DD 08         [24] 1192 	call	_DrawNumber
                         000005B7  1193 	C$Bestiary.c$220$2_0$162	= .
                                   1194 	.globl	C$Bestiary.c$220$2_0$162
                                   1195 ;src\Bestiary.c:220: DrawText(1, 13, "THE SHERIFF IS", TRUE);
    000548D2 3E 01            [ 8] 1196 	ld	a, #0x01
    000548D4 F5               [16] 1197 	push	af
    000548D5 33               [ 8] 1198 	inc	sp
    000548D6 11 A4 50         [12] 1199 	ld	de, #___str_22
    000548D9 D5               [16] 1200 	push	de
    000548DA 1E 0D            [ 8] 1201 	ld	e, #0x0d
    000548DC 3E 01            [ 8] 1202 	ld	a, #0x01
    000548DE CD B7 09         [24] 1203 	call	_DrawText
                         000005C6  1204 	C$Bestiary.c$221$2_0$162	= .
                                   1205 	.globl	C$Bestiary.c$221$2_0$162
                                   1206 ;src\Bestiary.c:221: DrawText(1, 14, "CALLED IN DUE", TRUE);
    000548E1 3E 01            [ 8] 1207 	ld	a, #0x01
    000548E3 F5               [16] 1208 	push	af
    000548E4 33               [ 8] 1209 	inc	sp
    000548E5 11 B3 50         [12] 1210 	ld	de, #___str_23
    000548E8 D5               [16] 1211 	push	de
    000548E9 1E 0E            [ 8] 1212 	ld	e, #0x0e
    000548EB 3E 01            [ 8] 1213 	ld	a, #0x01
    000548ED CD B7 09         [24] 1214 	call	_DrawText
                         000005D5  1215 	C$Bestiary.c$222$2_0$162	= .
                                   1216 	.globl	C$Bestiary.c$222$2_0$162
                                   1217 ;src\Bestiary.c:222: DrawText(1, 15, "POLICE NEGLIGENCE", TRUE);
    000548F0 3E 01            [ 8] 1218 	ld	a, #0x01
    000548F2 F5               [16] 1219 	push	af
    000548F3 33               [ 8] 1220 	inc	sp
    000548F4 11 C1 50         [12] 1221 	ld	de, #___str_24
    000548F7 D5               [16] 1222 	push	de
    000548F8 1E 0F            [ 8] 1223 	ld	e, #0x0f
    000548FA 3E 01            [ 8] 1224 	ld	a, #0x01
    000548FC CD B7 09         [24] 1225 	call	_DrawText
    000548FF C3 65 4F         [16] 1226 	jp	00172$
    00054902                       1227 00153$:
                         000005E7  1228 	C$Bestiary.c$224$1_0$148	= .
                                   1229 	.globl	C$Bestiary.c$224$1_0$148
                                   1230 ;src\Bestiary.c:224: else if (index == 7)
    00054902 FA 6F CD         [16] 1231 	ld	a, (#_index)
    00054905 D6 07            [ 8] 1232 	sub	a, #0x07
    00054907 C2 C1 49         [16] 1233 	jp	NZ,00150$
                         000005EF  1234 	C$Bestiary.c$226$2_0$163	= .
                                   1235 	.globl	C$Bestiary.c$226$2_0$163
                                   1236 ;src\Bestiary.c:226: set_bkg_data(128, 39, Cop_Tiles);
    0005490A 11 95 56         [12] 1237 	ld	de, #_Cop_Tiles
    0005490D D5               [16] 1238 	push	de
    0005490E 21 80 27         [12] 1239 	ld	hl, #0x2780
    00054911 E5               [16] 1240 	push	hl
    00054912 CD 85 0E         [24] 1241 	call	_set_bkg_data
    00054915 E8 04            [16] 1242 	add	sp, #4
                         000005FC  1243 	C$Bestiary.c$227$2_0$163	= .
                                   1244 	.globl	C$Bestiary.c$227$2_0$163
                                   1245 ;src\Bestiary.c:227: set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
    00054917 11 A3 59         [12] 1246 	ld	de, #_Chief_Map
    0005491A D5               [16] 1247 	push	de
    0005491B 21 06 07         [12] 1248 	ld	hl, #0x706
    0005491E E5               [16] 1249 	push	hl
    0005491F 21 02 04         [12] 1250 	ld	hl, #0x402
    00054922 E5               [16] 1251 	push	hl
    00054923 CD CC 0F         [24] 1252 	call	_set_bkg_tiles
    00054926 E8 06            [16] 1253 	add	sp, #6
                         0000060D  1254 	C$Bestiary.c$228$2_0$163	= .
                                   1255 	.globl	C$Bestiary.c$228$2_0$163
                                   1256 ;src\Bestiary.c:228: DrawNumber(4, 0, 7, 3, TRUE);     // ID
    00054928 21 03 01         [12] 1257 	ld	hl, #0x103
    0005492B E5               [16] 1258 	push	hl
    0005492C 11 07 00         [12] 1259 	ld	de, #0x0007
    0005492F D5               [16] 1260 	push	de
    00054930 1E 00            [ 8] 1261 	ld	e, #0x00
    00054932 3E 04            [ 8] 1262 	ld	a, #0x04
    00054934 CD DD 08         [24] 1263 	call	_DrawNumber
                         0000061C  1264 	C$Bestiary.c$230$2_0$163	= .
                                   1265 	.globl	C$Bestiary.c$230$2_0$163
                                   1266 ;src\Bestiary.c:230: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
    00054937 21 02 01         [12] 1267 	ld	hl, #0x102
    0005493A E5               [16] 1268 	push	hl
    0005493B 11 1E 00         [12] 1269 	ld	de, #0x001e
    0005493E D5               [16] 1270 	push	de
    0005493F 1E 02            [ 8] 1271 	ld	e, #0x02
    00054941 3E 10            [ 8] 1272 	ld	a, #0x10
    00054943 CD DD 08         [24] 1273 	call	_DrawNumber
                         0000062B  1274 	C$Bestiary.c$231$2_0$163	= .
                                   1275 	.globl	C$Bestiary.c$231$2_0$163
                                   1276 ;src\Bestiary.c:231: DrawNumber(16, 4, 20, 2, TRUE);    // DEFENSE
    00054946 21 02 01         [12] 1277 	ld	hl, #0x102
    00054949 E5               [16] 1278 	push	hl
    0005494A 11 14 00         [12] 1279 	ld	de, #0x0014
    0005494D D5               [16] 1280 	push	de
    0005494E 1E 04            [ 8] 1281 	ld	e, #0x04
    00054950 3E 10            [ 8] 1282 	ld	a, #0x10
    00054952 CD DD 08         [24] 1283 	call	_DrawNumber
                         0000063A  1284 	C$Bestiary.c$232$2_0$163	= .
                                   1285 	.globl	C$Bestiary.c$232$2_0$163
                                   1286 ;src\Bestiary.c:232: DrawNumber(17, 6, 10, 1, TRUE);    // SPECIAL
    00054955 21 01 01         [12] 1287 	ld	hl, #0x101
    00054958 E5               [16] 1288 	push	hl
    00054959 11 0A 00         [12] 1289 	ld	de, #0x000a
    0005495C D5               [16] 1290 	push	de
    0005495D 1E 06            [ 8] 1291 	ld	e, #0x06
    0005495F 3E 11            [ 8] 1292 	ld	a, #0x11
    00054961 CD DD 08         [24] 1293 	call	_DrawNumber
                         00000649  1294 	C$Bestiary.c$233$2_0$163	= .
                                   1295 	.globl	C$Bestiary.c$233$2_0$163
                                   1296 ;src\Bestiary.c:233: DrawNumber(17, 8, 10, 1, TRUE);    // SPEED
    00054964 21 01 01         [12] 1297 	ld	hl, #0x101
    00054967 E5               [16] 1298 	push	hl
    00054968 11 0A 00         [12] 1299 	ld	de, #0x000a
    0005496B D5               [16] 1300 	push	de
    0005496C 1E 08            [ 8] 1301 	ld	e, #0x08
    0005496E 3E 11            [ 8] 1302 	ld	a, #0x11
    00054970 CD DD 08         [24] 1303 	call	_DrawNumber
                         00000658  1304 	C$Bestiary.c$234$2_0$163	= .
                                   1305 	.globl	C$Bestiary.c$234$2_0$163
                                   1306 ;src\Bestiary.c:234: DrawNumber(16, 10, 55, 2, TRUE);   // EXP.
    00054973 21 02 01         [12] 1307 	ld	hl, #0x102
    00054976 E5               [16] 1308 	push	hl
    00054977 11 37 00         [12] 1309 	ld	de, #0x0037
    0005497A D5               [16] 1310 	push	de
    0005497B 1E 0A            [ 8] 1311 	ld	e, #0x0a
    0005497D 3E 10            [ 8] 1312 	ld	a, #0x10
    0005497F CD DD 08         [24] 1313 	call	_DrawNumber
                         00000667  1314 	C$Bestiary.c$235$2_0$163	= .
                                   1315 	.globl	C$Bestiary.c$235$2_0$163
                                   1316 ;src\Bestiary.c:235: DrawText(1, 13, "CHIEF! CHIEF!", TRUE);
    00054982 3E 01            [ 8] 1317 	ld	a, #0x01
    00054984 F5               [16] 1318 	push	af
    00054985 33               [ 8] 1319 	inc	sp
    00054986 11 D3 50         [12] 1320 	ld	de, #___str_25
    00054989 D5               [16] 1321 	push	de
    0005498A 1E 0D            [ 8] 1322 	ld	e, #0x0d
    0005498C 3E 01            [ 8] 1323 	ld	a, #0x01
    0005498E CD B7 09         [24] 1324 	call	_DrawText
                         00000676  1325 	C$Bestiary.c$236$2_0$163	= .
                                   1326 	.globl	C$Bestiary.c$236$2_0$163
                                   1327 ;src\Bestiary.c:236: DrawText(1, 14, "YOU GOT TO HELP!", TRUE);
    00054991 3E 01            [ 8] 1328 	ld	a, #0x01
    00054993 F5               [16] 1329 	push	af
    00054994 33               [ 8] 1330 	inc	sp
    00054995 11 E1 50         [12] 1331 	ld	de, #___str_26
    00054998 D5               [16] 1332 	push	de
    00054999 1E 0E            [ 8] 1333 	ld	e, #0x0e
    0005499B 3E 01            [ 8] 1334 	ld	a, #0x01
    0005499D CD B7 09         [24] 1335 	call	_DrawText
                         00000685  1336 	C$Bestiary.c$237$2_0$163	= .
                                   1337 	.globl	C$Bestiary.c$237$2_0$163
                                   1338 ;src\Bestiary.c:237: DrawText(1, 15, "WHY MUST I DO", TRUE);
    000549A0 3E 01            [ 8] 1339 	ld	a, #0x01
    000549A2 F5               [16] 1340 	push	af
    000549A3 33               [ 8] 1341 	inc	sp
    000549A4 11 F2 50         [12] 1342 	ld	de, #___str_27
    000549A7 D5               [16] 1343 	push	de
    000549A8 1E 0F            [ 8] 1344 	ld	e, #0x0f
    000549AA 3E 01            [ 8] 1345 	ld	a, #0x01
    000549AC CD B7 09         [24] 1346 	call	_DrawText
                         00000694  1347 	C$Bestiary.c$238$2_0$163	= .
                                   1348 	.globl	C$Bestiary.c$238$2_0$163
                                   1349 ;src\Bestiary.c:238: DrawText(1, 16, "EVERYTHING HERE?", TRUE);
    000549AF 3E 01            [ 8] 1350 	ld	a, #0x01
    000549B1 F5               [16] 1351 	push	af
    000549B2 33               [ 8] 1352 	inc	sp
    000549B3 11 00 51         [12] 1353 	ld	de, #___str_28
    000549B6 D5               [16] 1354 	push	de
    000549B7 1E 10            [ 8] 1355 	ld	e, #0x10
    000549B9 3E 01            [ 8] 1356 	ld	a, #0x01
    000549BB CD B7 09         [24] 1357 	call	_DrawText
    000549BE C3 65 4F         [16] 1358 	jp	00172$
    000549C1                       1359 00150$:
                         000006A6  1360 	C$Bestiary.c$240$1_0$148	= .
                                   1361 	.globl	C$Bestiary.c$240$1_0$148
                                   1362 ;src\Bestiary.c:240: else if (index == 8)
    000549C1 FA 6F CD         [16] 1363 	ld	a, (#_index)
    000549C4 D6 08            [ 8] 1364 	sub	a, #0x08
    000549C6 C2 71 4A         [16] 1365 	jp	NZ,00147$
                         000006AE  1366 	C$Bestiary.c$242$2_0$164	= .
                                   1367 	.globl	C$Bestiary.c$242$2_0$164
                                   1368 ;src\Bestiary.c:242: set_bkg_data(128, 30, Man_Tiles);
    000549C9 11 36 5B         [12] 1369 	ld	de, #_Man_Tiles
    000549CC D5               [16] 1370 	push	de
    000549CD 21 80 1E         [12] 1371 	ld	hl, #0x1e80
    000549D0 E5               [16] 1372 	push	hl
    000549D1 CD 85 0E         [24] 1373 	call	_set_bkg_data
    000549D4 E8 04            [16] 1374 	add	sp, #4
                         000006BB  1375 	C$Bestiary.c$243$2_0$164	= .
                                   1376 	.globl	C$Bestiary.c$243$2_0$164
                                   1377 ;src\Bestiary.c:243: set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
    000549D6 11 26 5D         [12] 1378 	ld	de, #_Man_Map
    000549D9 D5               [16] 1379 	push	de
    000549DA 21 06 06         [12] 1380 	ld	hl, #0x606
    000549DD E5               [16] 1381 	push	hl
    000549DE 21 02 04         [12] 1382 	ld	hl, #0x402
    000549E1 E5               [16] 1383 	push	hl
    000549E2 CD CC 0F         [24] 1384 	call	_set_bkg_tiles
    000549E5 E8 06            [16] 1385 	add	sp, #6
                         000006CC  1386 	C$Bestiary.c$244$2_0$164	= .
                                   1387 	.globl	C$Bestiary.c$244$2_0$164
                                   1388 ;src\Bestiary.c:244: DrawNumber(4, 0, 8, 3, TRUE);     // ID
    000549E7 21 03 01         [12] 1389 	ld	hl, #0x103
    000549EA E5               [16] 1390 	push	hl
    000549EB 11 08 00         [12] 1391 	ld	de, #0x0008
    000549EE D5               [16] 1392 	push	de
    000549EF 1E 00            [ 8] 1393 	ld	e, #0x00
    000549F1 3E 04            [ 8] 1394 	ld	a, #0x04
    000549F3 CD DD 08         [24] 1395 	call	_DrawNumber
                         000006DB  1396 	C$Bestiary.c$246$2_0$164	= .
                                   1397 	.globl	C$Bestiary.c$246$2_0$164
                                   1398 ;src\Bestiary.c:246: DrawNumber(17, 2, 0, 1, TRUE);    // ATTACK
    000549F6 21 01 01         [12] 1399 	ld	hl, #0x101
    000549F9 E5               [16] 1400 	push	hl
    000549FA 11 00 00         [12] 1401 	ld	de, #0x0000
    000549FD D5               [16] 1402 	push	de
    000549FE 1E 02            [ 8] 1403 	ld	e, #0x02
    00054A00 3E 11            [ 8] 1404 	ld	a, #0x11
    00054A02 CD DD 08         [24] 1405 	call	_DrawNumber
                         000006EA  1406 	C$Bestiary.c$247$2_0$164	= .
                                   1407 	.globl	C$Bestiary.c$247$2_0$164
                                   1408 ;src\Bestiary.c:247: DrawNumber(15, 4, 255, 3, TRUE);    // DEFENSE
    00054A05 21 03 01         [12] 1409 	ld	hl, #0x103
    00054A08 E5               [16] 1410 	push	hl
    00054A09 11 FF 00         [12] 1411 	ld	de, #0x00ff
    00054A0C D5               [16] 1412 	push	de
    00054A0D 1E 04            [ 8] 1413 	ld	e, #0x04
    00054A0F 3E 0F            [ 8] 1414 	ld	a, #0x0f
    00054A11 CD DD 08         [24] 1415 	call	_DrawNumber
                         000006F9  1416 	C$Bestiary.c$248$2_0$164	= .
                                   1417 	.globl	C$Bestiary.c$248$2_0$164
                                   1418 ;src\Bestiary.c:248: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
    00054A14 21 01 01         [12] 1419 	ld	hl, #0x101
    00054A17 E5               [16] 1420 	push	hl
    00054A18 11 01 00         [12] 1421 	ld	de, #0x0001
    00054A1B D5               [16] 1422 	push	de
    00054A1C 1E 06            [ 8] 1423 	ld	e, #0x06
    00054A1E 3E 11            [ 8] 1424 	ld	a, #0x11
    00054A20 CD DD 08         [24] 1425 	call	_DrawNumber
                         00000708  1426 	C$Bestiary.c$249$2_0$164	= .
                                   1427 	.globl	C$Bestiary.c$249$2_0$164
                                   1428 ;src\Bestiary.c:249: DrawNumber(17, 8, 1, 1, TRUE);    // SPEED
    00054A23 21 01 01         [12] 1429 	ld	hl, #0x101
    00054A26 E5               [16] 1430 	push	hl
    00054A27 11 01 00         [12] 1431 	ld	de, #0x0001
    00054A2A D5               [16] 1432 	push	de
    00054A2B 1E 08            [ 8] 1433 	ld	e, #0x08
    00054A2D 3E 11            [ 8] 1434 	ld	a, #0x11
    00054A2F CD DD 08         [24] 1435 	call	_DrawNumber
                         00000717  1436 	C$Bestiary.c$250$2_0$164	= .
                                   1437 	.globl	C$Bestiary.c$250$2_0$164
                                   1438 ;src\Bestiary.c:250: DrawNumber(16, 10, 1, 1, TRUE);   // EXP.
    00054A32 21 01 01         [12] 1439 	ld	hl, #0x101
    00054A35 E5               [16] 1440 	push	hl
    00054A36 11 01 00         [12] 1441 	ld	de, #0x0001
    00054A39 D5               [16] 1442 	push	de
    00054A3A 1E 0A            [ 8] 1443 	ld	e, #0x0a
    00054A3C 3E 10            [ 8] 1444 	ld	a, #0x10
    00054A3E CD DD 08         [24] 1445 	call	_DrawNumber
                         00000726  1446 	C$Bestiary.c$251$2_0$164	= .
                                   1447 	.globl	C$Bestiary.c$251$2_0$164
                                   1448 ;src\Bestiary.c:251: DrawText(1, 13, "HE'S BUILT", TRUE);
    00054A41 3E 01            [ 8] 1449 	ld	a, #0x01
    00054A43 F5               [16] 1450 	push	af
    00054A44 33               [ 8] 1451 	inc	sp
    00054A45 11 11 51         [12] 1452 	ld	de, #___str_29
    00054A48 D5               [16] 1453 	push	de
    00054A49 1E 0D            [ 8] 1454 	ld	e, #0x0d
    00054A4B 3E 01            [ 8] 1455 	ld	a, #0x01
    00054A4D CD B7 09         [24] 1456 	call	_DrawText
                         00000735  1457 	C$Bestiary.c$252$2_0$164	= .
                                   1458 	.globl	C$Bestiary.c$252$2_0$164
                                   1459 ;src\Bestiary.c:252: DrawText(1, 14, "LIKE A BRICK", TRUE);
    00054A50 3E 01            [ 8] 1460 	ld	a, #0x01
    00054A52 F5               [16] 1461 	push	af
    00054A53 33               [ 8] 1462 	inc	sp
    00054A54 11 1C 51         [12] 1463 	ld	de, #___str_30
    00054A57 D5               [16] 1464 	push	de
    00054A58 1E 0E            [ 8] 1465 	ld	e, #0x0e
    00054A5A 3E 01            [ 8] 1466 	ld	a, #0x01
    00054A5C CD B7 09         [24] 1467 	call	_DrawText
                         00000744  1468 	C$Bestiary.c$253$2_0$164	= .
                                   1469 	.globl	C$Bestiary.c$253$2_0$164
                                   1470 ;src\Bestiary.c:253: DrawText(1, 15, "HOUSE!", TRUE);
    00054A5F 3E 01            [ 8] 1471 	ld	a, #0x01
    00054A61 F5               [16] 1472 	push	af
    00054A62 33               [ 8] 1473 	inc	sp
    00054A63 11 29 51         [12] 1474 	ld	de, #___str_31
    00054A66 D5               [16] 1475 	push	de
    00054A67 1E 0F            [ 8] 1476 	ld	e, #0x0f
    00054A69 3E 01            [ 8] 1477 	ld	a, #0x01
    00054A6B CD B7 09         [24] 1478 	call	_DrawText
    00054A6E C3 65 4F         [16] 1479 	jp	00172$
    00054A71                       1480 00147$:
                         00000756  1481 	C$Bestiary.c$255$1_0$148	= .
                                   1482 	.globl	C$Bestiary.c$255$1_0$148
                                   1483 ;src\Bestiary.c:255: else if (index == 9)
    00054A71 FA 6F CD         [16] 1484 	ld	a, (#_index)
    00054A74 D6 09            [ 8] 1485 	sub	a, #0x09
    00054A76 20 7B            [12] 1486 	jr	NZ, 00144$
                         0000075D  1487 	C$Bestiary.c$257$2_0$165	= .
                                   1488 	.globl	C$Bestiary.c$257$2_0$165
                                   1489 ;src\Bestiary.c:257: set_bkg_data(128, 26, Car_Tiles);
    00054A78 11 90 5F         [12] 1490 	ld	de, #_Car_Tiles
    00054A7B D5               [16] 1491 	push	de
    00054A7C 21 80 1A         [12] 1492 	ld	hl, #0x1a80
    00054A7F E5               [16] 1493 	push	hl
    00054A80 CD 85 0E         [24] 1494 	call	_set_bkg_data
    00054A83 E8 04            [16] 1495 	add	sp, #4
                         0000076A  1496 	C$Bestiary.c$258$2_0$165	= .
                                   1497 	.globl	C$Bestiary.c$258$2_0$165
                                   1498 ;src\Bestiary.c:258: set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
    00054A85 11 40 61         [12] 1499 	ld	de, #_Car_Map
    00054A88 D5               [16] 1500 	push	de
    00054A89 21 06 05         [12] 1501 	ld	hl, #0x506
    00054A8C E5               [16] 1502 	push	hl
    00054A8D 21 02 04         [12] 1503 	ld	hl, #0x402
    00054A90 E5               [16] 1504 	push	hl
    00054A91 CD CC 0F         [24] 1505 	call	_set_bkg_tiles
    00054A94 E8 06            [16] 1506 	add	sp, #6
                         0000077B  1507 	C$Bestiary.c$259$2_0$165	= .
                                   1508 	.globl	C$Bestiary.c$259$2_0$165
                                   1509 ;src\Bestiary.c:259: DrawNumber(4, 0, 9, 3, TRUE);     // ID
    00054A96 21 03 01         [12] 1510 	ld	hl, #0x103
    00054A99 E5               [16] 1511 	push	hl
    00054A9A 11 09 00         [12] 1512 	ld	de, #0x0009
    00054A9D D5               [16] 1513 	push	de
    00054A9E 1E 00            [ 8] 1514 	ld	e, #0x00
    00054AA0 3E 04            [ 8] 1515 	ld	a, #0x04
    00054AA2 CD DD 08         [24] 1516 	call	_DrawNumber
                         0000078A  1517 	C$Bestiary.c$261$2_0$165	= .
                                   1518 	.globl	C$Bestiary.c$261$2_0$165
                                   1519 ;src\Bestiary.c:261: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
    00054AA5 21 02 01         [12] 1520 	ld	hl, #0x102
    00054AA8 E5               [16] 1521 	push	hl
    00054AA9 11 1E 00         [12] 1522 	ld	de, #0x001e
    00054AAC D5               [16] 1523 	push	de
    00054AAD 1E 02            [ 8] 1524 	ld	e, #0x02
    00054AAF 3E 10            [ 8] 1525 	ld	a, #0x10
    00054AB1 CD DD 08         [24] 1526 	call	_DrawNumber
                         00000799  1527 	C$Bestiary.c$262$2_0$165	= .
                                   1528 	.globl	C$Bestiary.c$262$2_0$165
                                   1529 ;src\Bestiary.c:262: DrawNumber(16, 4, 25, 3, TRUE);    // DEFENSE
    00054AB4 21 03 01         [12] 1530 	ld	hl, #0x103
    00054AB7 E5               [16] 1531 	push	hl
    00054AB8 11 19 00         [12] 1532 	ld	de, #0x0019
    00054ABB D5               [16] 1533 	push	de
    00054ABC 1E 04            [ 8] 1534 	ld	e, #0x04
    00054ABE 3E 10            [ 8] 1535 	ld	a, #0x10
    00054AC0 CD DD 08         [24] 1536 	call	_DrawNumber
                         000007A8  1537 	C$Bestiary.c$263$2_0$165	= .
                                   1538 	.globl	C$Bestiary.c$263$2_0$165
                                   1539 ;src\Bestiary.c:263: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
    00054AC3 21 02 01         [12] 1540 	ld	hl, #0x102
    00054AC6 E5               [16] 1541 	push	hl
    00054AC7 11 0F 00         [12] 1542 	ld	de, #0x000f
    00054ACA D5               [16] 1543 	push	de
    00054ACB 1E 06            [ 8] 1544 	ld	e, #0x06
    00054ACD 3E 10            [ 8] 1545 	ld	a, #0x10
    00054ACF CD DD 08         [24] 1546 	call	_DrawNumber
                         000007B7  1547 	C$Bestiary.c$264$2_0$165	= .
                                   1548 	.globl	C$Bestiary.c$264$2_0$165
                                   1549 ;src\Bestiary.c:264: DrawNumber(16, 8, 40, 2, TRUE);    // SPEED
    00054AD2 21 02 01         [12] 1550 	ld	hl, #0x102
    00054AD5 E5               [16] 1551 	push	hl
    00054AD6 11 28 00         [12] 1552 	ld	de, #0x0028
    00054AD9 D5               [16] 1553 	push	de
    00054ADA 1E 08            [ 8] 1554 	ld	e, #0x08
    00054ADC 3E 10            [ 8] 1555 	ld	a, #0x10
    00054ADE CD DD 08         [24] 1556 	call	_DrawNumber
                         000007C6  1557 	C$Bestiary.c$265$2_0$165	= .
                                   1558 	.globl	C$Bestiary.c$265$2_0$165
                                   1559 ;src\Bestiary.c:265: DrawNumber(16, 10, 66, 2, TRUE);   // EXP.
    00054AE1 21 02 01         [12] 1560 	ld	hl, #0x102
    00054AE4 E5               [16] 1561 	push	hl
    00054AE5 11 42 00         [12] 1562 	ld	de, #0x0042
    00054AE8 D5               [16] 1563 	push	de
    00054AE9 1E 0A            [ 8] 1564 	ld	e, #0x0a
    00054AEB 3E 10            [ 8] 1565 	ld	a, #0x10
    00054AED CD DD 08         [24] 1566 	call	_DrawNumber
    00054AF0 C3 65 4F         [16] 1567 	jp	00172$
    00054AF3                       1568 00144$:
                         000007D8  1569 	C$Bestiary.c$267$1_0$148	= .
                                   1570 	.globl	C$Bestiary.c$267$1_0$148
                                   1571 ;src\Bestiary.c:267: else if (index == 10)
    00054AF3 FA 6F CD         [16] 1572 	ld	a, (#_index)
    00054AF6 D6 0A            [ 8] 1573 	sub	a, #0x0a
    00054AF8 20 7B            [12] 1574 	jr	NZ, 00141$
                         000007DF  1575 	C$Bestiary.c$269$2_0$166	= .
                                   1576 	.globl	C$Bestiary.c$269$2_0$166
                                   1577 ;src\Bestiary.c:269: set_bkg_data(128, 46, Semi_Tiles);
    00054AFA 11 5E 61         [12] 1578 	ld	de, #_Semi_Tiles
    00054AFD D5               [16] 1579 	push	de
    00054AFE 21 80 2E         [12] 1580 	ld	hl, #0x2e80
    00054B01 E5               [16] 1581 	push	hl
    00054B02 CD 85 0E         [24] 1582 	call	_set_bkg_data
    00054B05 E8 04            [16] 1583 	add	sp, #4
                         000007EC  1584 	C$Bestiary.c$270$2_0$166	= .
                                   1585 	.globl	C$Bestiary.c$270$2_0$166
                                   1586 ;src\Bestiary.c:270: set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
    00054B07 11 4E 64         [12] 1587 	ld	de, #_Semi_Map
    00054B0A D5               [16] 1588 	push	de
    00054B0B 21 06 08         [12] 1589 	ld	hl, #0x806
    00054B0E E5               [16] 1590 	push	hl
    00054B0F 21 02 04         [12] 1591 	ld	hl, #0x402
    00054B12 E5               [16] 1592 	push	hl
    00054B13 CD CC 0F         [24] 1593 	call	_set_bkg_tiles
    00054B16 E8 06            [16] 1594 	add	sp, #6
                         000007FD  1595 	C$Bestiary.c$271$2_0$166	= .
                                   1596 	.globl	C$Bestiary.c$271$2_0$166
                                   1597 ;src\Bestiary.c:271: DrawNumber(4, 0, 10, 3, TRUE);     // ID
    00054B18 21 03 01         [12] 1598 	ld	hl, #0x103
    00054B1B E5               [16] 1599 	push	hl
    00054B1C 11 0A 00         [12] 1600 	ld	de, #0x000a
    00054B1F D5               [16] 1601 	push	de
    00054B20 1E 00            [ 8] 1602 	ld	e, #0x00
    00054B22 3E 04            [ 8] 1603 	ld	a, #0x04
    00054B24 CD DD 08         [24] 1604 	call	_DrawNumber
                         0000080C  1605 	C$Bestiary.c$273$2_0$166	= .
                                   1606 	.globl	C$Bestiary.c$273$2_0$166
                                   1607 ;src\Bestiary.c:273: DrawNumber(16, 2, 66, 2, TRUE);    // ATTACK
    00054B27 21 02 01         [12] 1608 	ld	hl, #0x102
    00054B2A E5               [16] 1609 	push	hl
    00054B2B 11 42 00         [12] 1610 	ld	de, #0x0042
    00054B2E D5               [16] 1611 	push	de
    00054B2F 1E 02            [ 8] 1612 	ld	e, #0x02
    00054B31 3E 10            [ 8] 1613 	ld	a, #0x10
    00054B33 CD DD 08         [24] 1614 	call	_DrawNumber
                         0000081B  1615 	C$Bestiary.c$274$2_0$166	= .
                                   1616 	.globl	C$Bestiary.c$274$2_0$166
                                   1617 ;src\Bestiary.c:274: DrawNumber(16, 4, 66, 2, TRUE);    // DEFENSE
    00054B36 21 02 01         [12] 1618 	ld	hl, #0x102
    00054B39 E5               [16] 1619 	push	hl
    00054B3A 11 42 00         [12] 1620 	ld	de, #0x0042
    00054B3D D5               [16] 1621 	push	de
    00054B3E 1E 04            [ 8] 1622 	ld	e, #0x04
    00054B40 3E 10            [ 8] 1623 	ld	a, #0x10
    00054B42 CD DD 08         [24] 1624 	call	_DrawNumber
                         0000082A  1625 	C$Bestiary.c$275$2_0$166	= .
                                   1626 	.globl	C$Bestiary.c$275$2_0$166
                                   1627 ;src\Bestiary.c:275: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
    00054B45 21 02 01         [12] 1628 	ld	hl, #0x102
    00054B48 E5               [16] 1629 	push	hl
    00054B49 11 0F 00         [12] 1630 	ld	de, #0x000f
    00054B4C D5               [16] 1631 	push	de
    00054B4D 1E 06            [ 8] 1632 	ld	e, #0x06
    00054B4F 3E 10            [ 8] 1633 	ld	a, #0x10
    00054B51 CD DD 08         [24] 1634 	call	_DrawNumber
                         00000839  1635 	C$Bestiary.c$276$2_0$166	= .
                                   1636 	.globl	C$Bestiary.c$276$2_0$166
                                   1637 ;src\Bestiary.c:276: DrawNumber(16, 8, 35, 2, TRUE);    // SPEED
    00054B54 21 02 01         [12] 1638 	ld	hl, #0x102
    00054B57 E5               [16] 1639 	push	hl
    00054B58 11 23 00         [12] 1640 	ld	de, #0x0023
    00054B5B D5               [16] 1641 	push	de
    00054B5C 1E 08            [ 8] 1642 	ld	e, #0x08
    00054B5E 3E 10            [ 8] 1643 	ld	a, #0x10
    00054B60 CD DD 08         [24] 1644 	call	_DrawNumber
                         00000848  1645 	C$Bestiary.c$277$2_0$166	= .
                                   1646 	.globl	C$Bestiary.c$277$2_0$166
                                   1647 ;src\Bestiary.c:277: DrawNumber(15, 10, 100, 3, TRUE);   // EXP.
    00054B63 21 03 01         [12] 1648 	ld	hl, #0x103
    00054B66 E5               [16] 1649 	push	hl
    00054B67 11 64 00         [12] 1650 	ld	de, #0x0064
    00054B6A D5               [16] 1651 	push	de
    00054B6B 1E 0A            [ 8] 1652 	ld	e, #0x0a
    00054B6D 3E 0F            [ 8] 1653 	ld	a, #0x0f
    00054B6F CD DD 08         [24] 1654 	call	_DrawNumber
    00054B72 C3 65 4F         [16] 1655 	jp	00172$
    00054B75                       1656 00141$:
                         0000085A  1657 	C$Bestiary.c$279$1_0$148	= .
                                   1658 	.globl	C$Bestiary.c$279$1_0$148
                                   1659 ;src\Bestiary.c:279: else if (index == 11)
    00054B75 FA 6F CD         [16] 1660 	ld	a, (#_index)
    00054B78 D6 0B            [ 8] 1661 	sub	a, #0x0b
    00054B7A C2 25 4C         [16] 1662 	jp	NZ,00138$
                         00000862  1663 	C$Bestiary.c$281$2_0$167	= .
                                   1664 	.globl	C$Bestiary.c$281$2_0$167
                                   1665 ;src\Bestiary.c:281: set_bkg_data(128, 31, Sis_Tiles);
    00054B7D 11 4A 5D         [12] 1666 	ld	de, #_Sis_Tiles
    00054B80 D5               [16] 1667 	push	de
    00054B81 21 80 1F         [12] 1668 	ld	hl, #0x1f80
    00054B84 E5               [16] 1669 	push	hl
    00054B85 CD 85 0E         [24] 1670 	call	_set_bkg_data
    00054B88 E8 04            [16] 1671 	add	sp, #4
                         0000086F  1672 	C$Bestiary.c$282$2_0$167	= .
                                   1673 	.globl	C$Bestiary.c$282$2_0$167
                                   1674 ;src\Bestiary.c:282: set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
    00054B8A 11 4A 5F         [12] 1675 	ld	de, #_BigSis_Map
    00054B8D D5               [16] 1676 	push	de
    00054B8E 21 05 07         [12] 1677 	ld	hl, #0x705
    00054B91 E5               [16] 1678 	push	hl
    00054B92 21 02 04         [12] 1679 	ld	hl, #0x402
    00054B95 E5               [16] 1680 	push	hl
    00054B96 CD CC 0F         [24] 1681 	call	_set_bkg_tiles
    00054B99 E8 06            [16] 1682 	add	sp, #6
                         00000880  1683 	C$Bestiary.c$283$2_0$167	= .
                                   1684 	.globl	C$Bestiary.c$283$2_0$167
                                   1685 ;src\Bestiary.c:283: DrawNumber(4, 0, 11, 3, TRUE);     // ID
    00054B9B 21 03 01         [12] 1686 	ld	hl, #0x103
    00054B9E E5               [16] 1687 	push	hl
    00054B9F 11 0B 00         [12] 1688 	ld	de, #0x000b
    00054BA2 D5               [16] 1689 	push	de
    00054BA3 1E 00            [ 8] 1690 	ld	e, #0x00
    00054BA5 3E 04            [ 8] 1691 	ld	a, #0x04
    00054BA7 CD DD 08         [24] 1692 	call	_DrawNumber
                         0000088F  1693 	C$Bestiary.c$285$2_0$167	= .
                                   1694 	.globl	C$Bestiary.c$285$2_0$167
                                   1695 ;src\Bestiary.c:285: DrawNumber(16, 2, 26, 2, TRUE);    // ATTACK
    00054BAA 21 02 01         [12] 1696 	ld	hl, #0x102
    00054BAD E5               [16] 1697 	push	hl
    00054BAE 11 1A 00         [12] 1698 	ld	de, #0x001a
    00054BB1 D5               [16] 1699 	push	de
    00054BB2 1E 02            [ 8] 1700 	ld	e, #0x02
    00054BB4 3E 10            [ 8] 1701 	ld	a, #0x10
    00054BB6 CD DD 08         [24] 1702 	call	_DrawNumber
                         0000089E  1703 	C$Bestiary.c$286$2_0$167	= .
                                   1704 	.globl	C$Bestiary.c$286$2_0$167
                                   1705 ;src\Bestiary.c:286: DrawNumber(16, 4, 14, 2, TRUE);    // DEFENSE
    00054BB9 21 02 01         [12] 1706 	ld	hl, #0x102
    00054BBC E5               [16] 1707 	push	hl
    00054BBD 11 0E 00         [12] 1708 	ld	de, #0x000e
    00054BC0 D5               [16] 1709 	push	de
    00054BC1 1E 04            [ 8] 1710 	ld	e, #0x04
    00054BC3 3E 10            [ 8] 1711 	ld	a, #0x10
    00054BC5 CD DD 08         [24] 1712 	call	_DrawNumber
                         000008AD  1713 	C$Bestiary.c$287$2_0$167	= .
                                   1714 	.globl	C$Bestiary.c$287$2_0$167
                                   1715 ;src\Bestiary.c:287: DrawNumber(16, 6, 20, 2, TRUE);    // SPECIAL
    00054BC8 21 02 01         [12] 1716 	ld	hl, #0x102
    00054BCB E5               [16] 1717 	push	hl
    00054BCC 11 14 00         [12] 1718 	ld	de, #0x0014
    00054BCF D5               [16] 1719 	push	de
    00054BD0 1E 06            [ 8] 1720 	ld	e, #0x06
    00054BD2 3E 10            [ 8] 1721 	ld	a, #0x10
    00054BD4 CD DD 08         [24] 1722 	call	_DrawNumber
                         000008BC  1723 	C$Bestiary.c$288$2_0$167	= .
                                   1724 	.globl	C$Bestiary.c$288$2_0$167
                                   1725 ;src\Bestiary.c:288: DrawNumber(16, 8, 20, 2, TRUE);    // SPEED
    00054BD7 21 02 01         [12] 1726 	ld	hl, #0x102
    00054BDA E5               [16] 1727 	push	hl
    00054BDB 11 14 00         [12] 1728 	ld	de, #0x0014
    00054BDE D5               [16] 1729 	push	de
    00054BDF 1E 08            [ 8] 1730 	ld	e, #0x08
    00054BE1 3E 10            [ 8] 1731 	ld	a, #0x10
    00054BE3 CD DD 08         [24] 1732 	call	_DrawNumber
                         000008CB  1733 	C$Bestiary.c$289$2_0$167	= .
                                   1734 	.globl	C$Bestiary.c$289$2_0$167
                                   1735 ;src\Bestiary.c:289: DrawNumber(16, 10, 38, 2, TRUE);   // EXP.
    00054BE6 21 02 01         [12] 1736 	ld	hl, #0x102
    00054BE9 E5               [16] 1737 	push	hl
    00054BEA 11 26 00         [12] 1738 	ld	de, #0x0026
    00054BED D5               [16] 1739 	push	de
    00054BEE 1E 0A            [ 8] 1740 	ld	e, #0x0a
    00054BF0 3E 10            [ 8] 1741 	ld	a, #0x10
    00054BF2 CD DD 08         [24] 1742 	call	_DrawNumber
                         000008DA  1743 	C$Bestiary.c$290$2_0$167	= .
                                   1744 	.globl	C$Bestiary.c$290$2_0$167
                                   1745 ;src\Bestiary.c:290: DrawText(1, 13, "AROUND HERE,", TRUE);
    00054BF5 3E 01            [ 8] 1746 	ld	a, #0x01
    00054BF7 F5               [16] 1747 	push	af
    00054BF8 33               [ 8] 1748 	inc	sp
    00054BF9 11 30 51         [12] 1749 	ld	de, #___str_32
    00054BFC D5               [16] 1750 	push	de
    00054BFD 1E 0D            [ 8] 1751 	ld	e, #0x0d
    00054BFF 3E 01            [ 8] 1752 	ld	a, #0x01
    00054C01 CD B7 09         [24] 1753 	call	_DrawText
                         000008E9  1754 	C$Bestiary.c$291$2_0$167	= .
                                   1755 	.globl	C$Bestiary.c$291$2_0$167
                                   1756 ;src\Bestiary.c:291: DrawText(1, 14, "SHE'S KNOWN ", TRUE);
    00054C04 3E 01            [ 8] 1757 	ld	a, #0x01
    00054C06 F5               [16] 1758 	push	af
    00054C07 33               [ 8] 1759 	inc	sp
    00054C08 11 3D 51         [12] 1760 	ld	de, #___str_33
    00054C0B D5               [16] 1761 	push	de
    00054C0C 1E 0E            [ 8] 1762 	ld	e, #0x0e
    00054C0E 3E 01            [ 8] 1763 	ld	a, #0x01
    00054C10 CD B7 09         [24] 1764 	call	_DrawText
                         000008F8  1765 	C$Bestiary.c$292$2_0$167	= .
                                   1766 	.globl	C$Bestiary.c$292$2_0$167
                                   1767 ;src\Bestiary.c:292: DrawText(1, 15, "AS BIG SIS!", TRUE);
    00054C13 3E 01            [ 8] 1768 	ld	a, #0x01
    00054C15 F5               [16] 1769 	push	af
    00054C16 33               [ 8] 1770 	inc	sp
    00054C17 11 4A 51         [12] 1771 	ld	de, #___str_34
    00054C1A D5               [16] 1772 	push	de
    00054C1B 1E 0F            [ 8] 1773 	ld	e, #0x0f
    00054C1D 3E 01            [ 8] 1774 	ld	a, #0x01
    00054C1F CD B7 09         [24] 1775 	call	_DrawText
    00054C22 C3 65 4F         [16] 1776 	jp	00172$
    00054C25                       1777 00138$:
                         0000090A  1778 	C$Bestiary.c$294$1_0$148	= .
                                   1779 	.globl	C$Bestiary.c$294$1_0$148
                                   1780 ;src\Bestiary.c:294: else if (index == 12)
    00054C25 FA 6F CD         [16] 1781 	ld	a, (#_index)
    00054C28 D6 0C            [ 8] 1782 	sub	a, #0x0c
    00054C2A C2 D5 4C         [16] 1783 	jp	NZ,00135$
                         00000912  1784 	C$Bestiary.c$296$2_0$168	= .
                                   1785 	.globl	C$Bestiary.c$296$2_0$168
                                   1786 ;src\Bestiary.c:296: set_bkg_data(128, 31, Sis_Tiles);
    00054C2D 11 4A 5D         [12] 1787 	ld	de, #_Sis_Tiles
    00054C30 D5               [16] 1788 	push	de
    00054C31 21 80 1F         [12] 1789 	ld	hl, #0x1f80
    00054C34 E5               [16] 1790 	push	hl
    00054C35 CD 85 0E         [24] 1791 	call	_set_bkg_data
    00054C38 E8 04            [16] 1792 	add	sp, #4
                         0000091F  1793 	C$Bestiary.c$297$2_0$168	= .
                                   1794 	.globl	C$Bestiary.c$297$2_0$168
                                   1795 ;src\Bestiary.c:297: set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
    00054C3A 11 6D 5F         [12] 1796 	ld	de, #_MadSis_Map
    00054C3D D5               [16] 1797 	push	de
    00054C3E 21 05 07         [12] 1798 	ld	hl, #0x705
    00054C41 E5               [16] 1799 	push	hl
    00054C42 21 02 04         [12] 1800 	ld	hl, #0x402
    00054C45 E5               [16] 1801 	push	hl
    00054C46 CD CC 0F         [24] 1802 	call	_set_bkg_tiles
    00054C49 E8 06            [16] 1803 	add	sp, #6
                         00000930  1804 	C$Bestiary.c$298$2_0$168	= .
                                   1805 	.globl	C$Bestiary.c$298$2_0$168
                                   1806 ;src\Bestiary.c:298: DrawNumber(4, 0, 12, 3, TRUE);     // ID
    00054C4B 21 03 01         [12] 1807 	ld	hl, #0x103
    00054C4E E5               [16] 1808 	push	hl
    00054C4F 11 0C 00         [12] 1809 	ld	de, #0x000c
    00054C52 D5               [16] 1810 	push	de
    00054C53 1E 00            [ 8] 1811 	ld	e, #0x00
    00054C55 3E 04            [ 8] 1812 	ld	a, #0x04
    00054C57 CD DD 08         [24] 1813 	call	_DrawNumber
                         0000093F  1814 	C$Bestiary.c$300$2_0$168	= .
                                   1815 	.globl	C$Bestiary.c$300$2_0$168
                                   1816 ;src\Bestiary.c:300: DrawNumber(16, 2, 36, 2, TRUE);    // ATTACK
    00054C5A 21 02 01         [12] 1817 	ld	hl, #0x102
    00054C5D E5               [16] 1818 	push	hl
    00054C5E 11 24 00         [12] 1819 	ld	de, #0x0024
    00054C61 D5               [16] 1820 	push	de
    00054C62 1E 02            [ 8] 1821 	ld	e, #0x02
    00054C64 3E 10            [ 8] 1822 	ld	a, #0x10
    00054C66 CD DD 08         [24] 1823 	call	_DrawNumber
                         0000094E  1824 	C$Bestiary.c$301$2_0$168	= .
                                   1825 	.globl	C$Bestiary.c$301$2_0$168
                                   1826 ;src\Bestiary.c:301: DrawNumber(16, 4, 24, 2, TRUE);    // DEFENSE
    00054C69 21 02 01         [12] 1827 	ld	hl, #0x102
    00054C6C E5               [16] 1828 	push	hl
    00054C6D 11 18 00         [12] 1829 	ld	de, #0x0018
    00054C70 D5               [16] 1830 	push	de
    00054C71 1E 04            [ 8] 1831 	ld	e, #0x04
    00054C73 3E 10            [ 8] 1832 	ld	a, #0x10
    00054C75 CD DD 08         [24] 1833 	call	_DrawNumber
                         0000095D  1834 	C$Bestiary.c$302$2_0$168	= .
                                   1835 	.globl	C$Bestiary.c$302$2_0$168
                                   1836 ;src\Bestiary.c:302: DrawNumber(16, 6, 30, 2, TRUE);    // SPECIAL
    00054C78 21 02 01         [12] 1837 	ld	hl, #0x102
    00054C7B E5               [16] 1838 	push	hl
    00054C7C 11 1E 00         [12] 1839 	ld	de, #0x001e
    00054C7F D5               [16] 1840 	push	de
    00054C80 1E 06            [ 8] 1841 	ld	e, #0x06
    00054C82 3E 10            [ 8] 1842 	ld	a, #0x10
    00054C84 CD DD 08         [24] 1843 	call	_DrawNumber
                         0000096C  1844 	C$Bestiary.c$303$2_0$168	= .
                                   1845 	.globl	C$Bestiary.c$303$2_0$168
                                   1846 ;src\Bestiary.c:303: DrawNumber(16, 8, 30, 2, TRUE);    // SPEED
    00054C87 21 02 01         [12] 1847 	ld	hl, #0x102
    00054C8A E5               [16] 1848 	push	hl
    00054C8B 11 1E 00         [12] 1849 	ld	de, #0x001e
    00054C8E D5               [16] 1850 	push	de
    00054C8F 1E 08            [ 8] 1851 	ld	e, #0x08
    00054C91 3E 10            [ 8] 1852 	ld	a, #0x10
    00054C93 CD DD 08         [24] 1853 	call	_DrawNumber
                         0000097B  1854 	C$Bestiary.c$304$2_0$168	= .
                                   1855 	.globl	C$Bestiary.c$304$2_0$168
                                   1856 ;src\Bestiary.c:304: DrawNumber(16, 10, 58, 2, TRUE);   // EXP.
    00054C96 21 02 01         [12] 1857 	ld	hl, #0x102
    00054C99 E5               [16] 1858 	push	hl
    00054C9A 11 3A 00         [12] 1859 	ld	de, #0x003a
    00054C9D D5               [16] 1860 	push	de
    00054C9E 1E 0A            [ 8] 1861 	ld	e, #0x0a
    00054CA0 3E 10            [ 8] 1862 	ld	a, #0x10
    00054CA2 CD DD 08         [24] 1863 	call	_DrawNumber
                         0000098A  1864 	C$Bestiary.c$305$2_0$168	= .
                                   1865 	.globl	C$Bestiary.c$305$2_0$168
                                   1866 ;src\Bestiary.c:305: DrawText(1, 13, "SHE REMEMBERS", TRUE);
    00054CA5 3E 01            [ 8] 1867 	ld	a, #0x01
    00054CA7 F5               [16] 1868 	push	af
    00054CA8 33               [ 8] 1869 	inc	sp
    00054CA9 11 56 51         [12] 1870 	ld	de, #___str_35
    00054CAC D5               [16] 1871 	push	de
    00054CAD 1E 0D            [ 8] 1872 	ld	e, #0x0d
    00054CAF 3E 01            [ 8] 1873 	ld	a, #0x01
    00054CB1 CD B7 09         [24] 1874 	call	_DrawText
                         00000999  1875 	C$Bestiary.c$306$2_0$168	= .
                                   1876 	.globl	C$Bestiary.c$306$2_0$168
                                   1877 ;src\Bestiary.c:306: DrawText(1, 14, "YOUR LAST ", TRUE);
    00054CB4 3E 01            [ 8] 1878 	ld	a, #0x01
    00054CB6 F5               [16] 1879 	push	af
    00054CB7 33               [ 8] 1880 	inc	sp
    00054CB8 11 64 51         [12] 1881 	ld	de, #___str_36
    00054CBB D5               [16] 1882 	push	de
    00054CBC 1E 0E            [ 8] 1883 	ld	e, #0x0e
    00054CBE 3E 01            [ 8] 1884 	ld	a, #0x01
    00054CC0 CD B7 09         [24] 1885 	call	_DrawText
                         000009A8  1886 	C$Bestiary.c$307$2_0$168	= .
                                   1887 	.globl	C$Bestiary.c$307$2_0$168
                                   1888 ;src\Bestiary.c:307: DrawText(1, 15, "FIGHT.    ", TRUE);
    00054CC3 3E 01            [ 8] 1889 	ld	a, #0x01
    00054CC5 F5               [16] 1890 	push	af
    00054CC6 33               [ 8] 1891 	inc	sp
    00054CC7 11 6F 51         [12] 1892 	ld	de, #___str_37
    00054CCA D5               [16] 1893 	push	de
    00054CCB 1E 0F            [ 8] 1894 	ld	e, #0x0f
    00054CCD 3E 01            [ 8] 1895 	ld	a, #0x01
    00054CCF CD B7 09         [24] 1896 	call	_DrawText
    00054CD2 C3 65 4F         [16] 1897 	jp	00172$
    00054CD5                       1898 00135$:
                         000009BA  1899 	C$Bestiary.c$309$1_0$148	= .
                                   1900 	.globl	C$Bestiary.c$309$1_0$148
                                   1901 ;src\Bestiary.c:309: else if (index == 13)
    00054CD5 FA 6F CD         [16] 1902 	ld	a, (#_index)
    00054CD8 D6 0D            [ 8] 1903 	sub	a, #0x0d
    00054CDA 20 6C            [12] 1904 	jr	NZ, 00132$
                         000009C1  1905 	C$Bestiary.c$311$2_0$169	= .
                                   1906 	.globl	C$Bestiary.c$311$2_0$169
                                   1907 ;src\Bestiary.c:311: set_bkg_data(128, 29, Experiment_Tiles);
    00054CDC 11 AF 6C         [12] 1908 	ld	de, #_Experiment_Tiles
    00054CDF D5               [16] 1909 	push	de
    00054CE0 21 80 1D         [12] 1910 	ld	hl, #0x1d80
    00054CE3 E5               [16] 1911 	push	hl
    00054CE4 CD 85 0E         [24] 1912 	call	_set_bkg_data
    00054CE7 E8 04            [16] 1913 	add	sp, #4
                         000009CE  1914 	C$Bestiary.c$312$2_0$169	= .
                                   1915 	.globl	C$Bestiary.c$312$2_0$169
                                   1916 ;src\Bestiary.c:312: set_bkg_tiles(2, 4, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
    00054CE9 11 8F 6E         [12] 1917 	ld	de, #_Experiment_Map
    00054CEC D5               [16] 1918 	push	de
    00054CED 21 05 07         [12] 1919 	ld	hl, #0x705
    00054CF0 E5               [16] 1920 	push	hl
    00054CF1 21 02 04         [12] 1921 	ld	hl, #0x402
    00054CF4 E5               [16] 1922 	push	hl
    00054CF5 CD CC 0F         [24] 1923 	call	_set_bkg_tiles
    00054CF8 E8 06            [16] 1924 	add	sp, #6
                         000009DF  1925 	C$Bestiary.c$313$2_0$169	= .
                                   1926 	.globl	C$Bestiary.c$313$2_0$169
                                   1927 ;src\Bestiary.c:313: DrawNumber(4, 0, 13, 3, TRUE);
    00054CFA 21 03 01         [12] 1928 	ld	hl, #0x103
    00054CFD E5               [16] 1929 	push	hl
    00054CFE 11 0D 00         [12] 1930 	ld	de, #0x000d
    00054D01 D5               [16] 1931 	push	de
    00054D02 1E 00            [ 8] 1932 	ld	e, #0x00
    00054D04 3E 04            [ 8] 1933 	ld	a, #0x04
    00054D06 CD DD 08         [24] 1934 	call	_DrawNumber
                         000009EE  1935 	C$Bestiary.c$314$2_0$169	= .
                                   1936 	.globl	C$Bestiary.c$314$2_0$169
                                   1937 ;src\Bestiary.c:314: DrawText(1, 13, "ONE OF YAKUB'S", TRUE);
    00054D09 3E 01            [ 8] 1938 	ld	a, #0x01
    00054D0B F5               [16] 1939 	push	af
    00054D0C 33               [ 8] 1940 	inc	sp
    00054D0D 11 7A 51         [12] 1941 	ld	de, #___str_38
    00054D10 D5               [16] 1942 	push	de
    00054D11 1E 0D            [ 8] 1943 	ld	e, #0x0d
    00054D13 3E 01            [ 8] 1944 	ld	a, #0x01
    00054D15 CD B7 09         [24] 1945 	call	_DrawText
                         000009FD  1946 	C$Bestiary.c$315$2_0$169	= .
                                   1947 	.globl	C$Bestiary.c$315$2_0$169
                                   1948 ;src\Bestiary.c:315: DrawText(1, 14, "EXPERIMENTS!", TRUE);
    00054D18 3E 01            [ 8] 1949 	ld	a, #0x01
    00054D1A F5               [16] 1950 	push	af
    00054D1B 33               [ 8] 1951 	inc	sp
    00054D1C 11 89 51         [12] 1952 	ld	de, #___str_39
    00054D1F D5               [16] 1953 	push	de
    00054D20 1E 0E            [ 8] 1954 	ld	e, #0x0e
    00054D22 3E 01            [ 8] 1955 	ld	a, #0x01
    00054D24 CD B7 09         [24] 1956 	call	_DrawText
                         00000A0C  1957 	C$Bestiary.c$316$2_0$169	= .
                                   1958 	.globl	C$Bestiary.c$316$2_0$169
                                   1959 ;src\Bestiary.c:316: DrawText(1, 15, "MAKES YOU ", TRUE);
    00054D27 3E 01            [ 8] 1960 	ld	a, #0x01
    00054D29 F5               [16] 1961 	push	af
    00054D2A 33               [ 8] 1962 	inc	sp
    00054D2B 11 96 51         [12] 1963 	ld	de, #___str_40
    00054D2E D5               [16] 1964 	push	de
    00054D2F 1E 0F            [ 8] 1965 	ld	e, #0x0f
    00054D31 3E 01            [ 8] 1966 	ld	a, #0x01
    00054D33 CD B7 09         [24] 1967 	call	_DrawText
                         00000A1B  1968 	C$Bestiary.c$317$2_0$169	= .
                                   1969 	.globl	C$Bestiary.c$317$2_0$169
                                   1970 ;src\Bestiary.c:317: DrawText(1, 16, "THINK, HUH? ", TRUE);
    00054D36 3E 01            [ 8] 1971 	ld	a, #0x01
    00054D38 F5               [16] 1972 	push	af
    00054D39 33               [ 8] 1973 	inc	sp
    00054D3A 11 A1 51         [12] 1974 	ld	de, #___str_41
    00054D3D D5               [16] 1975 	push	de
    00054D3E 1E 10            [ 8] 1976 	ld	e, #0x10
    00054D40 3E 01            [ 8] 1977 	ld	a, #0x01
    00054D42 CD B7 09         [24] 1978 	call	_DrawText
    00054D45 C3 65 4F         [16] 1979 	jp	00172$
    00054D48                       1980 00132$:
                         00000A2D  1981 	C$Bestiary.c$319$1_0$148	= .
                                   1982 	.globl	C$Bestiary.c$319$1_0$148
                                   1983 ;src\Bestiary.c:319: else if (index == 14)
    00054D48 FA 6F CD         [16] 1984 	ld	a, (#_index)
    00054D4B D6 0E            [ 8] 1985 	sub	a, #0x0e
    00054D4D 20 5D            [12] 1986 	jr	NZ, 00129$
                         00000A34  1987 	C$Bestiary.c$321$2_0$170	= .
                                   1988 	.globl	C$Bestiary.c$321$2_0$170
                                   1989 ;src\Bestiary.c:321: set_bkg_data(128, 19, Ghost_Tiles);
    00054D4F 11 C6 6E         [12] 1990 	ld	de, #_Ghost_Tiles
    00054D52 D5               [16] 1991 	push	de
    00054D53 21 80 13         [12] 1992 	ld	hl, #0x1380
    00054D56 E5               [16] 1993 	push	hl
    00054D57 CD 85 0E         [24] 1994 	call	_set_bkg_data
    00054D5A E8 04            [16] 1995 	add	sp, #4
                         00000A41  1996 	C$Bestiary.c$322$2_0$170	= .
                                   1997 	.globl	C$Bestiary.c$322$2_0$170
                                   1998 ;src\Bestiary.c:322: set_bkg_tiles(2, 4, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
    00054D5C 11 B2 6E         [12] 1999 	ld	de, #_Ghost_Map
    00054D5F D5               [16] 2000 	push	de
    00054D60 21 04 05         [12] 2001 	ld	hl, #0x504
    00054D63 E5               [16] 2002 	push	hl
    00054D64 21 02 04         [12] 2003 	ld	hl, #0x402
    00054D67 E5               [16] 2004 	push	hl
    00054D68 CD CC 0F         [24] 2005 	call	_set_bkg_tiles
    00054D6B E8 06            [16] 2006 	add	sp, #6
                         00000A52  2007 	C$Bestiary.c$323$2_0$170	= .
                                   2008 	.globl	C$Bestiary.c$323$2_0$170
                                   2009 ;src\Bestiary.c:323: DrawNumber(4, 0, 14, 3, TRUE);
    00054D6D 21 03 01         [12] 2010 	ld	hl, #0x103
    00054D70 E5               [16] 2011 	push	hl
    00054D71 11 0E 00         [12] 2012 	ld	de, #0x000e
    00054D74 D5               [16] 2013 	push	de
    00054D75 1E 00            [ 8] 2014 	ld	e, #0x00
    00054D77 3E 04            [ 8] 2015 	ld	a, #0x04
    00054D79 CD DD 08         [24] 2016 	call	_DrawNumber
                         00000A61  2017 	C$Bestiary.c$324$2_0$170	= .
                                   2018 	.globl	C$Bestiary.c$324$2_0$170
                                   2019 ;src\Bestiary.c:324: DrawText(1, 13, "AHH! A GHOST!", TRUE);
    00054D7C 3E 01            [ 8] 2020 	ld	a, #0x01
    00054D7E F5               [16] 2021 	push	af
    00054D7F 33               [ 8] 2022 	inc	sp
    00054D80 11 AE 51         [12] 2023 	ld	de, #___str_42
    00054D83 D5               [16] 2024 	push	de
    00054D84 1E 0D            [ 8] 2025 	ld	e, #0x0d
    00054D86 3E 01            [ 8] 2026 	ld	a, #0x01
    00054D88 CD B7 09         [24] 2027 	call	_DrawText
                         00000A70  2028 	C$Bestiary.c$325$2_0$170	= .
                                   2029 	.globl	C$Bestiary.c$325$2_0$170
                                   2030 ;src\Bestiary.c:325: DrawText(1, 14, "WHO IS UNDER", TRUE);
    00054D8B 3E 01            [ 8] 2031 	ld	a, #0x01
    00054D8D F5               [16] 2032 	push	af
    00054D8E 33               [ 8] 2033 	inc	sp
    00054D8F 11 BC 51         [12] 2034 	ld	de, #___str_43
    00054D92 D5               [16] 2035 	push	de
    00054D93 1E 0E            [ 8] 2036 	ld	e, #0x0e
    00054D95 3E 01            [ 8] 2037 	ld	a, #0x01
    00054D97 CD B7 09         [24] 2038 	call	_DrawText
                         00000A7F  2039 	C$Bestiary.c$326$2_0$170	= .
                                   2040 	.globl	C$Bestiary.c$326$2_0$170
                                   2041 ;src\Bestiary.c:326: DrawText(1, 15, "THAT SHEET? ", TRUE);
    00054D9A 3E 01            [ 8] 2042 	ld	a, #0x01
    00054D9C F5               [16] 2043 	push	af
    00054D9D 33               [ 8] 2044 	inc	sp
    00054D9E 11 C9 51         [12] 2045 	ld	de, #___str_44
    00054DA1 D5               [16] 2046 	push	de
    00054DA2 1E 0F            [ 8] 2047 	ld	e, #0x0f
    00054DA4 3E 01            [ 8] 2048 	ld	a, #0x01
    00054DA6 CD B7 09         [24] 2049 	call	_DrawText
    00054DA9 C3 65 4F         [16] 2050 	jp	00172$
    00054DAC                       2051 00129$:
                         00000A91  2052 	C$Bestiary.c$328$1_0$148	= .
                                   2053 	.globl	C$Bestiary.c$328$1_0$148
                                   2054 ;src\Bestiary.c:328: else if (index == 15)
    00054DAC FA 6F CD         [16] 2055 	ld	a, (#_index)
    00054DAF D6 0F            [ 8] 2056 	sub	a, #0x0f
    00054DB1 20 5D            [12] 2057 	jr	NZ, 00126$
                         00000A98  2058 	C$Bestiary.c$330$2_0$171	= .
                                   2059 	.globl	C$Bestiary.c$330$2_0$171
                                   2060 ;src\Bestiary.c:330: set_bkg_data(128, 14, Saucer_Tiles);
    00054DB3 11 06 70         [12] 2061 	ld	de, #_Saucer_Tiles
    00054DB6 D5               [16] 2062 	push	de
    00054DB7 21 80 0E         [12] 2063 	ld	hl, #0xe80
    00054DBA E5               [16] 2064 	push	hl
    00054DBB CD 85 0E         [24] 2065 	call	_set_bkg_data
    00054DBE E8 04            [16] 2066 	add	sp, #4
                         00000AA5  2067 	C$Bestiary.c$331$2_0$171	= .
                                   2068 	.globl	C$Bestiary.c$331$2_0$171
                                   2069 ;src\Bestiary.c:331: set_bkg_tiles(2, 4, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
    00054DC0 11 B2 6E         [12] 2070 	ld	de, #_Ghost_Map
    00054DC3 D5               [16] 2071 	push	de
    00054DC4 21 05 03         [12] 2072 	ld	hl, #0x305
    00054DC7 E5               [16] 2073 	push	hl
    00054DC8 21 02 04         [12] 2074 	ld	hl, #0x402
    00054DCB E5               [16] 2075 	push	hl
    00054DCC CD CC 0F         [24] 2076 	call	_set_bkg_tiles
    00054DCF E8 06            [16] 2077 	add	sp, #6
                         00000AB6  2078 	C$Bestiary.c$332$2_0$171	= .
                                   2079 	.globl	C$Bestiary.c$332$2_0$171
                                   2080 ;src\Bestiary.c:332: DrawNumber(4, 0, 15, 3, TRUE);
    00054DD1 21 03 01         [12] 2081 	ld	hl, #0x103
    00054DD4 E5               [16] 2082 	push	hl
    00054DD5 11 0F 00         [12] 2083 	ld	de, #0x000f
    00054DD8 D5               [16] 2084 	push	de
    00054DD9 1E 00            [ 8] 2085 	ld	e, #0x00
    00054DDB 3E 04            [ 8] 2086 	ld	a, #0x04
    00054DDD CD DD 08         [24] 2087 	call	_DrawNumber
                         00000AC5  2088 	C$Bestiary.c$333$2_0$171	= .
                                   2089 	.globl	C$Bestiary.c$333$2_0$171
                                   2090 ;src\Bestiary.c:333: DrawText(1, 13, "LOOK! A UFO!", TRUE);
    00054DE0 3E 01            [ 8] 2091 	ld	a, #0x01
    00054DE2 F5               [16] 2092 	push	af
    00054DE3 33               [ 8] 2093 	inc	sp
    00054DE4 11 D6 51         [12] 2094 	ld	de, #___str_45
    00054DE7 D5               [16] 2095 	push	de
    00054DE8 1E 0D            [ 8] 2096 	ld	e, #0x0d
    00054DEA 3E 01            [ 8] 2097 	ld	a, #0x01
    00054DEC CD B7 09         [24] 2098 	call	_DrawText
                         00000AD4  2099 	C$Bestiary.c$334$2_0$171	= .
                                   2100 	.globl	C$Bestiary.c$334$2_0$171
                                   2101 ;src\Bestiary.c:334: DrawText(1, 14, "A FLYING", TRUE);
    00054DEF 3E 01            [ 8] 2102 	ld	a, #0x01
    00054DF1 F5               [16] 2103 	push	af
    00054DF2 33               [ 8] 2104 	inc	sp
    00054DF3 11 E3 51         [12] 2105 	ld	de, #___str_46
    00054DF6 D5               [16] 2106 	push	de
    00054DF7 1E 0E            [ 8] 2107 	ld	e, #0x0e
    00054DF9 3E 01            [ 8] 2108 	ld	a, #0x01
    00054DFB CD B7 09         [24] 2109 	call	_DrawText
                         00000AE3  2110 	C$Bestiary.c$335$2_0$171	= .
                                   2111 	.globl	C$Bestiary.c$335$2_0$171
                                   2112 ;src\Bestiary.c:335: DrawText(1, 15, "SAUCER?!", TRUE);
    00054DFE 3E 01            [ 8] 2113 	ld	a, #0x01
    00054E00 F5               [16] 2114 	push	af
    00054E01 33               [ 8] 2115 	inc	sp
    00054E02 11 EC 51         [12] 2116 	ld	de, #___str_47
    00054E05 D5               [16] 2117 	push	de
    00054E06 1E 0F            [ 8] 2118 	ld	e, #0x0f
    00054E08 3E 01            [ 8] 2119 	ld	a, #0x01
    00054E0A CD B7 09         [24] 2120 	call	_DrawText
    00054E0D C3 65 4F         [16] 2121 	jp	00172$
    00054E10                       2122 00126$:
                         00000AF5  2123 	C$Bestiary.c$337$1_0$148	= .
                                   2124 	.globl	C$Bestiary.c$337$1_0$148
                                   2125 ;src\Bestiary.c:337: else if (index == 16)
    00054E10 FA 6F CD         [16] 2126 	ld	a, (#_index)
    00054E13 D6 10            [ 8] 2127 	sub	a, #0x10
    00054E15 20 6C            [12] 2128 	jr	NZ, 00123$
                         00000AFC  2129 	C$Bestiary.c$339$2_0$172	= .
                                   2130 	.globl	C$Bestiary.c$339$2_0$172
                                   2131 ;src\Bestiary.c:339: set_bkg_data(128, 20, SockHead_Tiles);
    00054E17 11 21 71         [12] 2132 	ld	de, #_SockHead_Tiles
    00054E1A D5               [16] 2133 	push	de
    00054E1B 21 80 14         [12] 2134 	ld	hl, #0x1480
    00054E1E E5               [16] 2135 	push	hl
    00054E1F CD 85 0E         [24] 2136 	call	_set_bkg_data
    00054E22 E8 04            [16] 2137 	add	sp, #4
                         00000B09  2138 	C$Bestiary.c$340$2_0$172	= .
                                   2139 	.globl	C$Bestiary.c$340$2_0$172
                                   2140 ;src\Bestiary.c:340: set_bkg_tiles(2, 4, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
    00054E24 11 05 71         [12] 2141 	ld	de, #_SockHead_Map
    00054E27 D5               [16] 2142 	push	de
    00054E28 21 04 07         [12] 2143 	ld	hl, #0x704
    00054E2B E5               [16] 2144 	push	hl
    00054E2C 21 02 04         [12] 2145 	ld	hl, #0x402
    00054E2F E5               [16] 2146 	push	hl
    00054E30 CD CC 0F         [24] 2147 	call	_set_bkg_tiles
    00054E33 E8 06            [16] 2148 	add	sp, #6
                         00000B1A  2149 	C$Bestiary.c$341$2_0$172	= .
                                   2150 	.globl	C$Bestiary.c$341$2_0$172
                                   2151 ;src\Bestiary.c:341: DrawNumber(4, 0, 16, 3, TRUE);
    00054E35 21 03 01         [12] 2152 	ld	hl, #0x103
    00054E38 E5               [16] 2153 	push	hl
    00054E39 11 10 00         [12] 2154 	ld	de, #0x0010
    00054E3C D5               [16] 2155 	push	de
    00054E3D 1E 00            [ 8] 2156 	ld	e, #0x00
    00054E3F 3E 04            [ 8] 2157 	ld	a, #0x04
    00054E41 CD DD 08         [24] 2158 	call	_DrawNumber
                         00000B29  2159 	C$Bestiary.c$342$2_0$172	= .
                                   2160 	.globl	C$Bestiary.c$342$2_0$172
                                   2161 ;src\Bestiary.c:342: DrawText(1, 13, "SOCK HEADS", TRUE);
    00054E44 3E 01            [ 8] 2162 	ld	a, #0x01
    00054E46 F5               [16] 2163 	push	af
    00054E47 33               [ 8] 2164 	inc	sp
    00054E48 11 F5 51         [12] 2165 	ld	de, #___str_48
    00054E4B D5               [16] 2166 	push	de
    00054E4C 1E 0D            [ 8] 2167 	ld	e, #0x0d
    00054E4E 3E 01            [ 8] 2168 	ld	a, #0x01
    00054E50 CD B7 09         [24] 2169 	call	_DrawText
                         00000B38  2170 	C$Bestiary.c$343$2_0$172	= .
                                   2171 	.globl	C$Bestiary.c$343$2_0$172
                                   2172 ;src\Bestiary.c:343: DrawText(1, 14, "DON'T THINK", TRUE);
    00054E53 3E 01            [ 8] 2173 	ld	a, #0x01
    00054E55 F5               [16] 2174 	push	af
    00054E56 33               [ 8] 2175 	inc	sp
    00054E57 11 00 52         [12] 2176 	ld	de, #___str_49
    00054E5A D5               [16] 2177 	push	de
    00054E5B 1E 0E            [ 8] 2178 	ld	e, #0x0e
    00054E5D 3E 01            [ 8] 2179 	ld	a, #0x01
    00054E5F CD B7 09         [24] 2180 	call	_DrawText
                         00000B47  2181 	C$Bestiary.c$344$2_0$172	= .
                                   2182 	.globl	C$Bestiary.c$344$2_0$172
                                   2183 ;src\Bestiary.c:344: DrawText(1, 15, "ABOUT THE", TRUE);
    00054E62 3E 01            [ 8] 2184 	ld	a, #0x01
    00054E64 F5               [16] 2185 	push	af
    00054E65 33               [ 8] 2186 	inc	sp
    00054E66 11 0C 52         [12] 2187 	ld	de, #___str_50
    00054E69 D5               [16] 2188 	push	de
    00054E6A 1E 0F            [ 8] 2189 	ld	e, #0x0f
    00054E6C 3E 01            [ 8] 2190 	ld	a, #0x01
    00054E6E CD B7 09         [24] 2191 	call	_DrawText
                         00000B56  2192 	C$Bestiary.c$345$2_0$172	= .
                                   2193 	.globl	C$Bestiary.c$345$2_0$172
                                   2194 ;src\Bestiary.c:345: DrawText(1, 16, "FUTURE.", TRUE);
    00054E71 3E 01            [ 8] 2195 	ld	a, #0x01
    00054E73 F5               [16] 2196 	push	af
    00054E74 33               [ 8] 2197 	inc	sp
    00054E75 11 16 52         [12] 2198 	ld	de, #___str_51
    00054E78 D5               [16] 2199 	push	de
    00054E79 1E 10            [ 8] 2200 	ld	e, #0x10
    00054E7B 3E 01            [ 8] 2201 	ld	a, #0x01
    00054E7D CD B7 09         [24] 2202 	call	_DrawText
    00054E80 C3 65 4F         [16] 2203 	jp	00172$
    00054E83                       2204 00123$:
                         00000B68  2205 	C$Bestiary.c$347$1_0$148	= .
                                   2206 	.globl	C$Bestiary.c$347$1_0$148
                                   2207 ;src\Bestiary.c:347: else if (index == 17)
    00054E83 FA 6F CD         [16] 2208 	ld	a, (#_index)
    00054E86 D6 11            [ 8] 2209 	sub	a, #0x11
    00054E88 20 6B            [12] 2210 	jr	NZ, 00120$
                         00000B6F  2211 	C$Bestiary.c$349$2_0$173	= .
                                   2212 	.globl	C$Bestiary.c$349$2_0$173
                                   2213 ;src\Bestiary.c:349: set_bkg_data(128, 26, Toby_Tiles);
    00054E8A 11 8D 72         [12] 2214 	ld	de, #_Toby_Tiles
    00054E8D D5               [16] 2215 	push	de
    00054E8E 21 80 1A         [12] 2216 	ld	hl, #0x1a80
    00054E91 E5               [16] 2217 	push	hl
    00054E92 CD 85 0E         [24] 2218 	call	_set_bkg_data
    00054E95 E8 04            [16] 2219 	add	sp, #4
                         00000B7C  2220 	C$Bestiary.c$350$2_0$173	= .
                                   2221 	.globl	C$Bestiary.c$350$2_0$173
                                   2222 ;src\Bestiary.c:350: set_bkg_tiles(2, 4, Toby_MapWidth, Toby_MapHeight, Toby_Map);
    00054E97 11 71 72         [12] 2223 	ld	de, #_Toby_Map
    00054E9A D5               [16] 2224 	push	de
    00054E9B 21 04 07         [12] 2225 	ld	hl, #0x704
    00054E9E E5               [16] 2226 	push	hl
    00054E9F 21 02 04         [12] 2227 	ld	hl, #0x402
    00054EA2 E5               [16] 2228 	push	hl
    00054EA3 CD CC 0F         [24] 2229 	call	_set_bkg_tiles
    00054EA6 E8 06            [16] 2230 	add	sp, #6
                         00000B8D  2231 	C$Bestiary.c$351$2_0$173	= .
                                   2232 	.globl	C$Bestiary.c$351$2_0$173
                                   2233 ;src\Bestiary.c:351: DrawNumber(4, 0, 17, 3, TRUE);
    00054EA8 21 03 01         [12] 2234 	ld	hl, #0x103
    00054EAB E5               [16] 2235 	push	hl
    00054EAC 11 11 00         [12] 2236 	ld	de, #0x0011
    00054EAF D5               [16] 2237 	push	de
    00054EB0 1E 00            [ 8] 2238 	ld	e, #0x00
    00054EB2 3E 04            [ 8] 2239 	ld	a, #0x04
    00054EB4 CD DD 08         [24] 2240 	call	_DrawNumber
                         00000B9C  2241 	C$Bestiary.c$352$2_0$173	= .
                                   2242 	.globl	C$Bestiary.c$352$2_0$173
                                   2243 ;src\Bestiary.c:352: DrawText(1, 13, "FOX LOVES TO SAY", TRUE);
    00054EB7 3E 01            [ 8] 2244 	ld	a, #0x01
    00054EB9 F5               [16] 2245 	push	af
    00054EBA 33               [ 8] 2246 	inc	sp
    00054EBB 11 1E 52         [12] 2247 	ld	de, #___str_52
    00054EBE D5               [16] 2248 	push	de
    00054EBF 1E 0D            [ 8] 2249 	ld	e, #0x0d
    00054EC1 3E 01            [ 8] 2250 	ld	a, #0x01
    00054EC3 CD B7 09         [24] 2251 	call	_DrawText
                         00000BAB  2252 	C$Bestiary.c$353$2_0$173	= .
                                   2253 	.globl	C$Bestiary.c$353$2_0$173
                                   2254 ;src\Bestiary.c:353: DrawText(1, 14, "FLOAT LIKE A ", TRUE);
    00054EC6 3E 01            [ 8] 2255 	ld	a, #0x01
    00054EC8 F5               [16] 2256 	push	af
    00054EC9 33               [ 8] 2257 	inc	sp
    00054ECA 11 2F 52         [12] 2258 	ld	de, #___str_53
    00054ECD D5               [16] 2259 	push	de
    00054ECE 1E 0E            [ 8] 2260 	ld	e, #0x0e
    00054ED0 3E 01            [ 8] 2261 	ld	a, #0x01
    00054ED2 CD B7 09         [24] 2262 	call	_DrawText
                         00000BBA  2263 	C$Bestiary.c$354$2_0$173	= .
                                   2264 	.globl	C$Bestiary.c$354$2_0$173
                                   2265 ;src\Bestiary.c:354: DrawText(1, 15, "BUTTERFLY, STING", TRUE);
    00054ED5 3E 01            [ 8] 2266 	ld	a, #0x01
    00054ED7 F5               [16] 2267 	push	af
    00054ED8 33               [ 8] 2268 	inc	sp
    00054ED9 11 3D 52         [12] 2269 	ld	de, #___str_54
    00054EDC D5               [16] 2270 	push	de
    00054EDD 1E 0F            [ 8] 2271 	ld	e, #0x0f
    00054EDF 3E 01            [ 8] 2272 	ld	a, #0x01
    00054EE1 CD B7 09         [24] 2273 	call	_DrawText
                         00000BC9  2274 	C$Bestiary.c$355$2_0$173	= .
                                   2275 	.globl	C$Bestiary.c$355$2_0$173
                                   2276 ;src\Bestiary.c:355: DrawText(1, 16, "LIKE A BEE!", TRUE);
    00054EE4 3E 01            [ 8] 2277 	ld	a, #0x01
    00054EE6 F5               [16] 2278 	push	af
    00054EE7 33               [ 8] 2279 	inc	sp
    00054EE8 11 4E 52         [12] 2280 	ld	de, #___str_55
    00054EEB D5               [16] 2281 	push	de
    00054EEC 1E 10            [ 8] 2282 	ld	e, #0x10
    00054EEE 3E 01            [ 8] 2283 	ld	a, #0x01
    00054EF0 CD B7 09         [24] 2284 	call	_DrawText
    00054EF3 18 70            [12] 2285 	jr	00172$
    00054EF5                       2286 00120$:
                         00000BDA  2287 	C$Bestiary.c$357$1_0$148	= .
                                   2288 	.globl	C$Bestiary.c$357$1_0$148
                                   2289 ;src\Bestiary.c:357: else if (index == 18)
    00054EF5 FA 6F CD         [16] 2290 	ld	a, (#_index)
    00054EF8 D6 12            [ 8] 2291 	sub	a, #0x12
    00054EFA 20 69            [12] 2292 	jr	NZ, 00172$
                         00000BE1  2293 	C$Bestiary.c$359$2_0$174	= .
                                   2294 	.globl	C$Bestiary.c$359$2_0$174
                                   2295 ;src\Bestiary.c:359: set_bkg_data(128, 24, Drunk_Tiles);
    00054EFC 11 07 6B         [12] 2296 	ld	de, #_Drunk_Tiles
    00054EFF D5               [16] 2297 	push	de
    00054F00 21 80 18         [12] 2298 	ld	hl, #0x1880
    00054F03 E5               [16] 2299 	push	hl
    00054F04 CD 85 0E         [24] 2300 	call	_set_bkg_data
    00054F07 E8 04            [16] 2301 	add	sp, #4
                         00000BEE  2302 	C$Bestiary.c$360$2_0$174	= .
                                   2303 	.globl	C$Bestiary.c$360$2_0$174
                                   2304 ;src\Bestiary.c:360: set_bkg_tiles(2, 4, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
    00054F09 11 97 6C         [12] 2305 	ld	de, #_Drunk_Map
    00054F0C D5               [16] 2306 	push	de
    00054F0D 21 04 06         [12] 2307 	ld	hl, #0x604
    00054F10 E5               [16] 2308 	push	hl
    00054F11 21 02 04         [12] 2309 	ld	hl, #0x402
    00054F14 E5               [16] 2310 	push	hl
    00054F15 CD CC 0F         [24] 2311 	call	_set_bkg_tiles
    00054F18 E8 06            [16] 2312 	add	sp, #6
                         00000BFF  2313 	C$Bestiary.c$361$2_0$174	= .
                                   2314 	.globl	C$Bestiary.c$361$2_0$174
                                   2315 ;src\Bestiary.c:361: DrawNumber(4, 0, 18, 3, TRUE);
    00054F1A 21 03 01         [12] 2316 	ld	hl, #0x103
    00054F1D E5               [16] 2317 	push	hl
    00054F1E 11 12 00         [12] 2318 	ld	de, #0x0012
    00054F21 D5               [16] 2319 	push	de
    00054F22 1E 00            [ 8] 2320 	ld	e, #0x00
    00054F24 3E 04            [ 8] 2321 	ld	a, #0x04
    00054F26 CD DD 08         [24] 2322 	call	_DrawNumber
                         00000C0E  2323 	C$Bestiary.c$362$2_0$174	= .
                                   2324 	.globl	C$Bestiary.c$362$2_0$174
                                   2325 ;src\Bestiary.c:362: DrawText(1, 13, "DRUNK STUMBLES.", TRUE);
    00054F29 3E 01            [ 8] 2326 	ld	a, #0x01
    00054F2B F5               [16] 2327 	push	af
    00054F2C 33               [ 8] 2328 	inc	sp
    00054F2D 11 5A 52         [12] 2329 	ld	de, #___str_56
    00054F30 D5               [16] 2330 	push	de
    00054F31 1E 0D            [ 8] 2331 	ld	e, #0x0d
    00054F33 3E 01            [ 8] 2332 	ld	a, #0x01
    00054F35 CD B7 09         [24] 2333 	call	_DrawText
                         00000C1D  2334 	C$Bestiary.c$363$2_0$174	= .
                                   2335 	.globl	C$Bestiary.c$363$2_0$174
                                   2336 ;src\Bestiary.c:363: DrawText(1, 14, "HE HITS HARD.", TRUE);
    00054F38 3E 01            [ 8] 2337 	ld	a, #0x01
    00054F3A F5               [16] 2338 	push	af
    00054F3B 33               [ 8] 2339 	inc	sp
    00054F3C 11 6A 52         [12] 2340 	ld	de, #___str_57
    00054F3F D5               [16] 2341 	push	de
    00054F40 1E 0E            [ 8] 2342 	ld	e, #0x0e
    00054F42 3E 01            [ 8] 2343 	ld	a, #0x01
    00054F44 CD B7 09         [24] 2344 	call	_DrawText
                         00000C2C  2345 	C$Bestiary.c$364$2_0$174	= .
                                   2346 	.globl	C$Bestiary.c$364$2_0$174
                                   2347 ;src\Bestiary.c:364: DrawText(1, 15, "AND YELLS A LOT.", TRUE);
    00054F47 3E 01            [ 8] 2348 	ld	a, #0x01
    00054F49 F5               [16] 2349 	push	af
    00054F4A 33               [ 8] 2350 	inc	sp
    00054F4B 11 78 52         [12] 2351 	ld	de, #___str_58
    00054F4E D5               [16] 2352 	push	de
    00054F4F 1E 0F            [ 8] 2353 	ld	e, #0x0f
    00054F51 3E 01            [ 8] 2354 	ld	a, #0x01
    00054F53 CD B7 09         [24] 2355 	call	_DrawText
                         00000C3B  2356 	C$Bestiary.c$365$2_0$174	= .
                                   2357 	.globl	C$Bestiary.c$365$2_0$174
                                   2358 ;src\Bestiary.c:365: DrawText(1, 16, "NOT FUN TO BE NEAR.", TRUE);
    00054F56 3E 01            [ 8] 2359 	ld	a, #0x01
    00054F58 F5               [16] 2360 	push	af
    00054F59 33               [ 8] 2361 	inc	sp
    00054F5A 11 89 52         [12] 2362 	ld	de, #___str_59
    00054F5D D5               [16] 2363 	push	de
    00054F5E 1E 10            [ 8] 2364 	ld	e, #0x10
    00054F60 3E 01            [ 8] 2365 	ld	a, #0x01
    00054F62 CD B7 09         [24] 2366 	call	_DrawText
    00054F65                       2367 00172$:
                         00000C4A  2368 	C$Bestiary.c$367$1_0$148	= .
                                   2369 	.globl	C$Bestiary.c$367$1_0$148
                                   2370 ;src\Bestiary.c:367: return BESTIARY;
    00054F65 3E 04            [ 8] 2371 	ld	a, #0x04
                         00000C4C  2372 	C$Bestiary.c$368$1_0$148	= .
                                   2373 	.globl	C$Bestiary.c$368$1_0$148
                                   2374 ;src\Bestiary.c:368: }
                         00000C4C  2375 	C$Bestiary.c$368$1_0$148	= .
                                   2376 	.globl	C$Bestiary.c$368$1_0$148
                         00000C4C  2377 	XG$BestiaryUpdate$0$0	= .
                                   2378 	.globl	XG$BestiaryUpdate$0$0
    00054F67 C9               [16] 2379 	ret
                         00000C4D  2380 FBestiary$__str_0$0_0$0 == .
    00054F68                       2381 ___str_0:
    00054F68 4A 49 4D 20 49 53 20  2382 	.ascii "JIM IS A "
             41 20
    00054F71 00                    2383 	.db 0x00
                         00000C57  2384 FBestiary$__str_1$0_0$0 == .
    00054F72                       2385 ___str_1:
    00054F72 47 41 4D 42 4C 45 52  2386 	.ascii "GAMBLER. HE LIKES"
             2E 20 48 45 20 4C 49
             4B 45 53
    00054F83 00                    2387 	.db 0x00
                         00000C69  2388 FBestiary$__str_2$0_0$0 == .
    00054F84                       2389 ___str_2:
    00054F84 53 48 4F 4F 54 49 4E  2390 	.ascii "SHOOTING DICE."
             47 20 44 49 43 45 2E
    00054F92 00                    2391 	.db 0x00
                         00000C78  2392 FBestiary$__str_3$0_0$0 == .
    00054F93                       2393 ___str_3:
    00054F93 47 59 50 53 59 20 4D  2394 	.ascii "GYPSY MOTHS ARE"
             4F 54 48 53 20 41 52
             45
    00054FA2 00                    2395 	.db 0x00
                         00000C88  2396 FBestiary$__str_4$0_0$0 == .
    00054FA3                       2397 ___str_4:
    00054FA3 54 41 4B 49 4E 47 20  2398 	.ascii "TAKING ALL FROM"
             41 4C 4C 20 46 52 4F
             4D
    00054FB2 00                    2399 	.db 0x00
                         00000C98  2400 FBestiary$__str_5$0_0$0 == .
    00054FB3                       2401 ___str_5:
    00054FB3 45 56 45 52 59 57 48  2402 	.ascii "EVERYWHERE!"
             45 52 45 21
    00054FBE 00                    2403 	.db 0x00
                         00000CA4  2404 FBestiary$__str_6$0_0$0 == .
    00054FBF                       2405 ___str_6:
    00054FBF 57 41 4C 4C 59 20 49  2406 	.ascii "WALLY IS IN A"
             53 20 49 4E 20 41
    00054FCC 00                    2407 	.db 0x00
                         00000CB2  2408 FBestiary$__str_7$0_0$0 == .
    00054FCD                       2409 ___str_7:
    00054FCD 47 41 4E 47 2E 20 48  2410 	.ascii "GANG. HE SAYS"
             45 20 53 41 59 53
    00054FDA 00                    2411 	.db 0x00
                         00000CC0  2412 FBestiary$__str_8$0_0$0 == .
    00054FDB                       2413 ___str_8:
    00054FDB 4E 4F 20 54 4F 20 44  2414 	.ascii "NO TO DRUGS!"
             52 55 47 53 21
    00054FE7 00                    2415 	.db 0x00
                         00000CCD  2416 FBestiary$__str_9$0_0$0 == .
    00054FE8                       2417 ___str_9:
    00054FE8 48 4F 57 20 43 4F 4F  2418 	.ascii "HOW COOL!"
             4C 21
    00054FF1 00                    2419 	.db 0x00
                         00000CD7  2420 FBestiary$__str_10$0_0$0 == .
    00054FF2                       2421 ___str_10:
    00054FF2 42 4C 4F 4F 44 20 53  2422 	.ascii "BLOOD SUCKING"
             55 43 4B 49 4E 47
    00054FFF 00                    2423 	.db 0x00
                         00000CE5  2424 FBestiary$__str_11$0_0$0 == .
    00055000                       2425 ___str_11:
    00055000 50 41 52 41 53 49 54  2426 	.ascii "PARASITE!"
             45 21
    00055009 00                    2427 	.db 0x00
                         00000CEF  2428 FBestiary$__str_12$0_0$0 == .
    0005500A                       2429 ___str_12:
    0005500A 54 48 45 59 20 48 49  2430 	.ascii "THEY HIDE IN"
             44 45 20 49 4E
    00055016 00                    2431 	.db 0x00
                         00000CFC  2432 FBestiary$__str_13$0_0$0 == .
    00055017                       2433 ___str_13:
    00055017 54 41 4C 4C 20 47 52  2434 	.ascii "TALL GRASS!"
             41 53 53 21
    00055022 00                    2435 	.db 0x00
                         00000D08  2436 FBestiary$__str_14$0_0$0 == .
    00055023                       2437 ___str_14:
    00055023 4F 48 20 4E 4F 21 20  2438 	.ascii "OH NO! THE COPS!"
             54 48 45 20 43 4F 50
             53 21
    00055033 00                    2439 	.db 0x00
                         00000D19  2440 FBestiary$__str_15$0_0$0 == .
    00055034                       2441 ___str_15:
    00055034 53 4F 4D 45 4F 4E 45  2442 	.ascii "SOMEONE HAS BEEN"
             20 48 41 53 20 42 45
             45 4E
    00055044 00                    2443 	.db 0x00
                         00000D2A  2444 FBestiary$__str_16$0_0$0 == .
    00055045                       2445 ___str_16:
    00055045 42 45 49 4E 47 20 4E  2446 	.ascii "BEING NAUGHTY!"
             41 55 47 48 54 59 21
    00055053 00                    2447 	.db 0x00
                         00000D39  2448 FBestiary$__str_17$0_0$0 == .
    00055054                       2449 ___str_17:
    00055054 43 41 4E 27 54 20 42  2450 	.ascii "CAN'T BE YOU?"
             45 20 59 4F 55 3F
    00055061 00                    2451 	.db 0x00
                         00000D47  2452 FBestiary$__str_18$0_0$0 == .
    00055062                       2453 ___str_18:
    00055062 4C 4F 4F 4B 53 20 4C  2454 	.ascii "LOOKS LIKE THE "
             49 4B 45 20 54 48 45
             20
    00055071 00                    2455 	.db 0x00
                         00000D57  2456 FBestiary$__str_19$0_0$0 == .
    00055072                       2457 ___str_19:
    00055072 50 4F 4C 49 43 45 20  2458 	.ascii "POLICE HAS COME"
             48 41 53 20 43 4F 4D
             45
    00055081 00                    2459 	.db 0x00
                         00000D67  2460 FBestiary$__str_20$0_0$0 == .
    00055082                       2461 ___str_20:
    00055082 54 4F 20 54 41 4B 45  2462 	.ascii "TO TAKE YOU AWAY!"
             20 59 4F 55 20 41 57
             41 59 21
    00055093 00                    2463 	.db 0x00
                         00000D79  2464 FBestiary$__str_21$0_0$0 == .
    00055094                       2465 ___str_21:
    00055094 53 54 4F 50 20 52 45  2466 	.ascii "STOP RESISTING!"
             53 49 53 54 49 4E 47
             21
    000550A3 00                    2467 	.db 0x00
                         00000D89  2468 FBestiary$__str_22$0_0$0 == .
    000550A4                       2469 ___str_22:
    000550A4 54 48 45 20 53 48 45  2470 	.ascii "THE SHERIFF IS"
             52 49 46 46 20 49 53
    000550B2 00                    2471 	.db 0x00
                         00000D98  2472 FBestiary$__str_23$0_0$0 == .
    000550B3                       2473 ___str_23:
    000550B3 43 41 4C 4C 45 44 20  2474 	.ascii "CALLED IN DUE"
             49 4E 20 44 55 45
    000550C0 00                    2475 	.db 0x00
                         00000DA6  2476 FBestiary$__str_24$0_0$0 == .
    000550C1                       2477 ___str_24:
    000550C1 50 4F 4C 49 43 45 20  2478 	.ascii "POLICE NEGLIGENCE"
             4E 45 47 4C 49 47 45
             4E 43 45
    000550D2 00                    2479 	.db 0x00
                         00000DB8  2480 FBestiary$__str_25$0_0$0 == .
    000550D3                       2481 ___str_25:
    000550D3 43 48 49 45 46 21 20  2482 	.ascii "CHIEF! CHIEF!"
             43 48 49 45 46 21
    000550E0 00                    2483 	.db 0x00
                         00000DC6  2484 FBestiary$__str_26$0_0$0 == .
    000550E1                       2485 ___str_26:
    000550E1 59 4F 55 20 47 4F 54  2486 	.ascii "YOU GOT TO HELP!"
             20 54 4F 20 48 45 4C
             50 21
    000550F1 00                    2487 	.db 0x00
                         00000DD7  2488 FBestiary$__str_27$0_0$0 == .
    000550F2                       2489 ___str_27:
    000550F2 57 48 59 20 4D 55 53  2490 	.ascii "WHY MUST I DO"
             54 20 49 20 44 4F
    000550FF 00                    2491 	.db 0x00
                         00000DE5  2492 FBestiary$__str_28$0_0$0 == .
    00055100                       2493 ___str_28:
    00055100 45 56 45 52 59 54 48  2494 	.ascii "EVERYTHING HERE?"
             49 4E 47 20 48 45 52
             45 3F
    00055110 00                    2495 	.db 0x00
                         00000DF6  2496 FBestiary$__str_29$0_0$0 == .
    00055111                       2497 ___str_29:
    00055111 48 45 27 53 20 42 55  2498 	.ascii "HE'S BUILT"
             49 4C 54
    0005511B 00                    2499 	.db 0x00
                         00000E01  2500 FBestiary$__str_30$0_0$0 == .
    0005511C                       2501 ___str_30:
    0005511C 4C 49 4B 45 20 41 20  2502 	.ascii "LIKE A BRICK"
             42 52 49 43 4B
    00055128 00                    2503 	.db 0x00
                         00000E0E  2504 FBestiary$__str_31$0_0$0 == .
    00055129                       2505 ___str_31:
    00055129 48 4F 55 53 45 21     2506 	.ascii "HOUSE!"
    0005512F 00                    2507 	.db 0x00
                         00000E15  2508 FBestiary$__str_32$0_0$0 == .
    00055130                       2509 ___str_32:
    00055130 41 52 4F 55 4E 44 20  2510 	.ascii "AROUND HERE,"
             48 45 52 45 2C
    0005513C 00                    2511 	.db 0x00
                         00000E22  2512 FBestiary$__str_33$0_0$0 == .
    0005513D                       2513 ___str_33:
    0005513D 53 48 45 27 53 20 4B  2514 	.ascii "SHE'S KNOWN "
             4E 4F 57 4E 20
    00055149 00                    2515 	.db 0x00
                         00000E2F  2516 FBestiary$__str_34$0_0$0 == .
    0005514A                       2517 ___str_34:
    0005514A 41 53 20 42 49 47 20  2518 	.ascii "AS BIG SIS!"
             53 49 53 21
    00055155 00                    2519 	.db 0x00
                         00000E3B  2520 FBestiary$__str_35$0_0$0 == .
    00055156                       2521 ___str_35:
    00055156 53 48 45 20 52 45 4D  2522 	.ascii "SHE REMEMBERS"
             45 4D 42 45 52 53
    00055163 00                    2523 	.db 0x00
                         00000E49  2524 FBestiary$__str_36$0_0$0 == .
    00055164                       2525 ___str_36:
    00055164 59 4F 55 52 20 4C 41  2526 	.ascii "YOUR LAST "
             53 54 20
    0005516E 00                    2527 	.db 0x00
                         00000E54  2528 FBestiary$__str_37$0_0$0 == .
    0005516F                       2529 ___str_37:
    0005516F 46 49 47 48 54 2E 20  2530 	.ascii "FIGHT.    "
             20 20 20
    00055179 00                    2531 	.db 0x00
                         00000E5F  2532 FBestiary$__str_38$0_0$0 == .
    0005517A                       2533 ___str_38:
    0005517A 4F 4E 45 20 4F 46 20  2534 	.ascii "ONE OF YAKUB'S"
             59 41 4B 55 42 27 53
    00055188 00                    2535 	.db 0x00
                         00000E6E  2536 FBestiary$__str_39$0_0$0 == .
    00055189                       2537 ___str_39:
    00055189 45 58 50 45 52 49 4D  2538 	.ascii "EXPERIMENTS!"
             45 4E 54 53 21
    00055195 00                    2539 	.db 0x00
                         00000E7B  2540 FBestiary$__str_40$0_0$0 == .
    00055196                       2541 ___str_40:
    00055196 4D 41 4B 45 53 20 59  2542 	.ascii "MAKES YOU "
             4F 55 20
    000551A0 00                    2543 	.db 0x00
                         00000E86  2544 FBestiary$__str_41$0_0$0 == .
    000551A1                       2545 ___str_41:
    000551A1 54 48 49 4E 4B 2C 20  2546 	.ascii "THINK, HUH? "
             48 55 48 3F 20
    000551AD 00                    2547 	.db 0x00
                         00000E93  2548 FBestiary$__str_42$0_0$0 == .
    000551AE                       2549 ___str_42:
    000551AE 41 48 48 21 20 41 20  2550 	.ascii "AHH! A GHOST!"
             47 48 4F 53 54 21
    000551BB 00                    2551 	.db 0x00
                         00000EA1  2552 FBestiary$__str_43$0_0$0 == .
    000551BC                       2553 ___str_43:
    000551BC 57 48 4F 20 49 53 20  2554 	.ascii "WHO IS UNDER"
             55 4E 44 45 52
    000551C8 00                    2555 	.db 0x00
                         00000EAE  2556 FBestiary$__str_44$0_0$0 == .
    000551C9                       2557 ___str_44:
    000551C9 54 48 41 54 20 53 48  2558 	.ascii "THAT SHEET? "
             45 45 54 3F 20
    000551D5 00                    2559 	.db 0x00
                         00000EBB  2560 FBestiary$__str_45$0_0$0 == .
    000551D6                       2561 ___str_45:
    000551D6 4C 4F 4F 4B 21 20 41  2562 	.ascii "LOOK! A UFO!"
             20 55 46 4F 21
    000551E2 00                    2563 	.db 0x00
                         00000EC8  2564 FBestiary$__str_46$0_0$0 == .
    000551E3                       2565 ___str_46:
    000551E3 41 20 46 4C 59 49 4E  2566 	.ascii "A FLYING"
             47
    000551EB 00                    2567 	.db 0x00
                         00000ED1  2568 FBestiary$__str_47$0_0$0 == .
    000551EC                       2569 ___str_47:
    000551EC 53 41 55 43 45 52 3F  2570 	.ascii "SAUCER?!"
             21
    000551F4 00                    2571 	.db 0x00
                         00000EDA  2572 FBestiary$__str_48$0_0$0 == .
    000551F5                       2573 ___str_48:
    000551F5 53 4F 43 4B 20 48 45  2574 	.ascii "SOCK HEADS"
             41 44 53
    000551FF 00                    2575 	.db 0x00
                         00000EE5  2576 FBestiary$__str_49$0_0$0 == .
    00055200                       2577 ___str_49:
    00055200 44 4F 4E 27 54 20 54  2578 	.ascii "DON'T THINK"
             48 49 4E 4B
    0005520B 00                    2579 	.db 0x00
                         00000EF1  2580 FBestiary$__str_50$0_0$0 == .
    0005520C                       2581 ___str_50:
    0005520C 41 42 4F 55 54 20 54  2582 	.ascii "ABOUT THE"
             48 45
    00055215 00                    2583 	.db 0x00
                         00000EFB  2584 FBestiary$__str_51$0_0$0 == .
    00055216                       2585 ___str_51:
    00055216 46 55 54 55 52 45 2E  2586 	.ascii "FUTURE."
    0005521D 00                    2587 	.db 0x00
                         00000F03  2588 FBestiary$__str_52$0_0$0 == .
    0005521E                       2589 ___str_52:
    0005521E 46 4F 58 20 4C 4F 56  2590 	.ascii "FOX LOVES TO SAY"
             45 53 20 54 4F 20 53
             41 59
    0005522E 00                    2591 	.db 0x00
                         00000F14  2592 FBestiary$__str_53$0_0$0 == .
    0005522F                       2593 ___str_53:
    0005522F 46 4C 4F 41 54 20 4C  2594 	.ascii "FLOAT LIKE A "
             49 4B 45 20 41 20
    0005523C 00                    2595 	.db 0x00
                         00000F22  2596 FBestiary$__str_54$0_0$0 == .
    0005523D                       2597 ___str_54:
    0005523D 42 55 54 54 45 52 46  2598 	.ascii "BUTTERFLY, STING"
             4C 59 2C 20 53 54 49
             4E 47
    0005524D 00                    2599 	.db 0x00
                         00000F33  2600 FBestiary$__str_55$0_0$0 == .
    0005524E                       2601 ___str_55:
    0005524E 4C 49 4B 45 20 41 20  2602 	.ascii "LIKE A BEE!"
             42 45 45 21
    00055259 00                    2603 	.db 0x00
                         00000F3F  2604 FBestiary$__str_56$0_0$0 == .
    0005525A                       2605 ___str_56:
    0005525A 44 52 55 4E 4B 20 53  2606 	.ascii "DRUNK STUMBLES."
             54 55 4D 42 4C 45 53
             2E
    00055269 00                    2607 	.db 0x00
                         00000F4F  2608 FBestiary$__str_57$0_0$0 == .
    0005526A                       2609 ___str_57:
    0005526A 48 45 20 48 49 54 53  2610 	.ascii "HE HITS HARD."
             20 48 41 52 44 2E
    00055277 00                    2611 	.db 0x00
                         00000F5D  2612 FBestiary$__str_58$0_0$0 == .
    00055278                       2613 ___str_58:
    00055278 41 4E 44 20 59 45 4C  2614 	.ascii "AND YELLS A LOT."
             4C 53 20 41 20 4C 4F
             54 2E
    00055288 00                    2615 	.db 0x00
                         00000F6E  2616 FBestiary$__str_59$0_0$0 == .
    00055289                       2617 ___str_59:
    00055289 4E 4F 54 20 46 55 4E  2618 	.ascii "NOT FUN TO BE NEAR."
             20 54 4F 20 42 45 20
             4E 45 41 52 2E
    0005529C 00                    2619 	.db 0x00
                                   2620 	.area _CODE_5
                                   2621 	.area _INITIALIZER
                         00000000  2622 FBestiary$__xinit_invert$0_0$0 == .
    00001CF3                       2623 __xinit__invert:
    00001CF3 00                    2624 	.db #0x00	; 0
                                   2625 	.area _CABS (ABS)
