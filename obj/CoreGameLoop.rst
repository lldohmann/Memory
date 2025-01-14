                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module CoreGameLoop
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl b_CoreGameLoopUpdate
                                     12 	.globl _CoreGameLoopUpdate
                                     13 	.globl b___func_CoreGameLoopUpdate
                                     14 	.globl ___func_CoreGameLoopUpdate
                                     15 	.globl b_CoreGameLoopSetup
                                     16 	.globl _CoreGameLoopSetup
                                     17 	.globl b___func_CoreGameLoopSetup
                                     18 	.globl ___func_CoreGameLoopSetup
                                     19 	.globl b_set_camera
                                     20 	.globl _set_camera
                                     21 	.globl b___func_set_camera
                                     22 	.globl ___func_set_camera
                                     23 	.globl b___func_const_bank_ID_core
                                     24 	.globl ___func_const_bank_ID_core
                                     25 	.globl _DrawWindow
                                     26 	.globl _fadeFromBlack
                                     27 	.globl _fadeToBlack
                                     28 	.globl _DrawText
                                     29 	.globl _DrawNumber
                                     30 	.globl _DrawPlayer
                                     31 	.globl _PlayerUpdate
                                     32 	.globl _set_sprite_data
                                     33 	.globl _set_bkg_submap
                                     34 	.globl _set_bkg_data
                                     35 	.globl _wait_vbl_done
                                     36 	.globl _joypad
                                     37 	.globl _mouse
                                     38 	.globl _camera_pixel_goal_y
                                     39 	.globl _camera_pixel_goal_x
                                     40 	.globl _redraw
                                     41 	.globl _old_map_pos_y_tiles
                                     42 	.globl _old_map_pos_x_tiles
                                     43 	.globl _map_pos_y_tiles
                                     44 	.globl _map_pos_x_tiles
                                     45 	.globl _old_camera_y_pixels
                                     46 	.globl _old_camera_x_pixels
                                     47 	.globl _camera_y_pixels
                                     48 	.globl _camera_x_pixels
                                     49 	.globl _const_bank_ID_core
                                     50 ;--------------------------------------------------------
                                     51 ; special function registers
                                     52 ;--------------------------------------------------------
                                     53 ;--------------------------------------------------------
                                     54 ; ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area _DATA
                         00000000    57 G$camera_x_pixels$0_0$0==.
    0000C0B1                         58 _camera_x_pixels::
    0000C0B1                         59 	.ds 2
                         00000002    60 G$camera_y_pixels$0_0$0==.
    0000C0B3                         61 _camera_y_pixels::
    0000C0B3                         62 	.ds 2
                         00000004    63 G$old_camera_x_pixels$0_0$0==.
    0000C0B5                         64 _old_camera_x_pixels::
    0000C0B5                         65 	.ds 2
                         00000006    66 G$old_camera_y_pixels$0_0$0==.
    0000C0B7                         67 _old_camera_y_pixels::
    0000C0B7                         68 	.ds 2
                         00000008    69 G$map_pos_x_tiles$0_0$0==.
    0000C0B9                         70 _map_pos_x_tiles::
    0000C0B9                         71 	.ds 1
                         00000009    72 G$map_pos_y_tiles$0_0$0==.
    0000C0BA                         73 _map_pos_y_tiles::
    0000C0BA                         74 	.ds 1
                         0000000A    75 G$old_map_pos_x_tiles$0_0$0==.
    0000C0BB                         76 _old_map_pos_x_tiles::
    0000C0BB                         77 	.ds 1
                         0000000B    78 G$old_map_pos_y_tiles$0_0$0==.
    0000C0BC                         79 _old_map_pos_y_tiles::
    0000C0BC                         80 	.ds 1
                         0000000C    81 G$redraw$0_0$0==.
    0000C0BD                         82 _redraw::
    0000C0BD                         83 	.ds 1
                         0000000D    84 G$camera_pixel_goal_x$0_0$0==.
    0000C0BE                         85 _camera_pixel_goal_x::
    0000C0BE                         86 	.ds 1
                         0000000E    87 G$camera_pixel_goal_y$0_0$0==.
    0000C0BF                         88 _camera_pixel_goal_y::
    0000C0BF                         89 	.ds 1
                                     90 ;--------------------------------------------------------
                                     91 ; ram data
                                     92 ;--------------------------------------------------------
                                     93 	.area _INITIALIZED
                         00000000    94 G$mouse$0_0$0==.
    0000CD70                         95 _mouse::
    0000CD70                         96 	.ds 12
                                     97 ;--------------------------------------------------------
                                     98 ; absolute external ram data
                                     99 ;--------------------------------------------------------
                                    100 	.area _DABS (ABS)
                                    101 ;--------------------------------------------------------
                                    102 ; global & static initialisations
                                    103 ;--------------------------------------------------------
                                    104 	.area _HOME
                                    105 	.area _GSINIT
                                    106 	.area _GSFINAL
                                    107 	.area _GSINIT
                                    108 ;--------------------------------------------------------
                                    109 ; Home
                                    110 ;--------------------------------------------------------
                                    111 	.area _HOME
                                    112 	.area _HOME
                                    113 ;--------------------------------------------------------
                                    114 ; code
                                    115 ;--------------------------------------------------------
                                    116 	.area _CODE_3
                         00000000   117 	G$__func_const_bank_ID_core$0$0	= .
                                    118 	.globl	G$__func_const_bank_ID_core$0$0
                         00000000   119 	C$CoreGameLoop.c$17$0_0$146	= .
                                    120 	.globl	C$CoreGameLoop.c$17$0_0$146
                                    121 ;src\CoreGameLoop.c:17: BANKREF(const_bank_ID_core)
                                    122 ;	---------------------------------
                                    123 ; Function __func_const_bank_ID_core
                                    124 ; ---------------------------------
                         00000003   125 	b___func_const_bank_ID_core	= 3
    000353F0                        126 ___func_const_bank_ID_core::
                                    127 	.local b___func_const_bank_ID_core 
                         00000003   128 	___bank_const_bank_ID_core = b___func_const_bank_ID_core 
                                    129 	.globl ___bank_const_bank_ID_core 
                         00000000   130 	G$__func_set_camera$0$0	= .
                                    131 	.globl	G$__func_set_camera$0$0
                         00000000   132 	C$CoreGameLoop.c$28$1_0$148	= .
                                    133 	.globl	C$CoreGameLoop.c$28$1_0$148
                                    134 ;src\CoreGameLoop.c:28: BANKREF(set_camera)
                                    135 ;	---------------------------------
                                    136 ; Function __func_set_camera
                                    137 ; ---------------------------------
                         00000003   138 	b___func_set_camera	= 3
    000353F0                        139 ___func_set_camera::
                                    140 	.local b___func_set_camera 
                         00000003   141 	___bank_set_camera = b___func_set_camera 
                                    142 	.globl ___bank_set_camera 
                         00000000   143 	G$set_camera$0$0	= .
                                    144 	.globl	G$set_camera$0$0
                         00000000   145 	C$CoreGameLoop.c$29$1_0$150	= .
                                    146 	.globl	C$CoreGameLoop.c$29$1_0$150
                                    147 ;src\CoreGameLoop.c:29: void set_camera(void) BANKED
                                    148 ;	---------------------------------
                                    149 ; Function set_camera
                                    150 ; ---------------------------------
                         00000003   151 	b_set_camera	= 3
    000353F0                        152 _set_camera::
    000353F0 E8 FD            [16]  153 	add	sp, #-3
                         00000002   154 	C$CoreGameLoop.c$32$1_0$150	= .
                                    155 	.globl	C$CoreGameLoop.c$32$1_0$150
                                    156 ;src\CoreGameLoop.c:32: SCY_REG = camera_y_pixels; SCX_REG = camera_x_pixels;
    000353F2 FA B3 C0         [16]  157 	ld	a, (#_camera_y_pixels)
    000353F5 E0 42            [12]  158 	ldh	(_SCY_REG + 0), a
    000353F7 FA B1 C0         [16]  159 	ld	a, (#_camera_x_pixels)
    000353FA E0 43            [12]  160 	ldh	(_SCX_REG + 0), a
                         0000000C   161 	C$CoreGameLoop.c$34$1_0$150	= .
                                    162 	.globl	C$CoreGameLoop.c$34$1_0$150
                                    163 ;src\CoreGameLoop.c:34: map_pos_y_tiles = (uint8_t)(camera_y_pixels >> 3u);
    000353FC 21 B3 C0         [12]  164 	ld	hl, #_camera_y_pixels
    000353FF 2A               [ 8]  165 	ld	a, (hl+)
    00035400 4F               [ 4]  166 	ld	c, a
    00035401 46               [ 8]  167 	ld	b, (hl)
    00035402 CB 38            [ 8]  168 	srl	b
    00035404 CB 19            [ 8]  169 	rr	c
    00035406 CB 38            [ 8]  170 	srl	b
    00035408 CB 19            [ 8]  171 	rr	c
    0003540A CB 38            [ 8]  172 	srl	b
    0003540C CB 19            [ 8]  173 	rr	c
    0003540E 21 BA C0         [12]  174 	ld	hl, #_map_pos_y_tiles
    00035411 71               [ 8]  175 	ld	(hl), c
                         00000022   176 	C$CoreGameLoop.c$39$1_0$150	= .
                                    177 	.globl	C$CoreGameLoop.c$39$1_0$150
                                    178 ;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00035412 4E               [ 8]  179 	ld	c, (hl)
                         00000023   180 	C$CoreGameLoop.c$35$1_0$150	= .
                                    181 	.globl	C$CoreGameLoop.c$35$1_0$150
                                    182 ;src\CoreGameLoop.c:35: if (map_pos_y_tiles != old_map_pos_y_tiles)
    00035413 7E               [ 8]  183 	ld	a, (hl)
    00035414 21 BC C0         [12]  184 	ld	hl, #_old_map_pos_y_tiles
    00035417 96               [ 8]  185 	sub	a, (hl)
    00035418 CA C2 54         [16]  186 	jp	Z,00107$
                         0000002B   187 	C$CoreGameLoop.c$39$1_0$150	= .
                                    188 	.globl	C$CoreGameLoop.c$39$1_0$150
                                    189 ;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    0003541B 21 B9 C0         [12]  190 	ld	hl, #_map_pos_x_tiles
    0003541E 5E               [ 8]  191 	ld	e, (hl)
    0003541F 16 00            [ 8]  192 	ld	d, #0x00
    00035421 46               [ 8]  193 	ld	b, (hl)
    00035422 7E               [ 8]  194 	ld	a, (hl)
    00035423 F8 00            [12]  195 	ldhl	sp,	#0
    00035425 22               [ 8]  196 	ld	(hl+), a
    00035426 3E 31            [ 8]  197 	ld	a, #0x31
    00035428 93               [ 4]  198 	sub	a, e
    00035429 5F               [ 4]  199 	ld	e, a
    0003542A 9F               [ 4]  200 	sbc	a, a
    0003542B 92               [ 4]  201 	sub	a, d
    0003542C 57               [ 4]  202 	ld	d, a
    0003542D 3E 31            [ 8]  203 	ld	a, #0x31
    0003542F 90               [ 4]  204 	sub	a, b
    00035430 22               [ 8]  205 	ld	(hl+), a
    00035431 07               [ 4]  206 	rlca
    00035432 9F               [ 4]  207 	sbc	a, a
    00035433 77               [ 8]  208 	ld	(hl), a
    00035434 3E 15            [ 8]  209 	ld	a, #0x15
    00035436 BB               [ 4]  210 	cp	a, e
    00035437 3E 00            [ 8]  211 	ld	a, #0x00
    00035439 9A               [ 4]  212 	sbc	a, d
    0003543A 3E 00            [ 8]  213 	ld	a, #0x00
    0003543C 17               [ 4]  214 	rla
    0003543D 47               [ 4]  215 	ld	b, a
                         0000004E   216 	C$CoreGameLoop.c$37$2_0$151	= .
                                    217 	.globl	C$CoreGameLoop.c$37$2_0$151
                                    218 ;src\CoreGameLoop.c:37: if (camera_y_pixels < old_camera_y_pixels) // if camera is moving up
    0003543E 11 B3 C0         [12]  219 	ld	de, #_camera_y_pixels
    00035441 21 B7 C0         [12]  220 	ld	hl, #_old_camera_y_pixels
    00035444 1A               [ 8]  221 	ld	a, (de)
    00035445 13               [ 8]  222 	inc	de
    00035446 96               [ 8]  223 	sub	a, (hl)
    00035447 23               [ 8]  224 	inc	hl
    00035448 1A               [ 8]  225 	ld	a, (de)
    00035449 9E               [ 8]  226 	sbc	a, (hl)
    0003544A 30 30            [12]  227 	jr	NC, 00104$
                                    228 ;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    0003544C 78               [ 4]  229 	ld	a, b
    0003544D B7               [ 4]  230 	or	a, a
    0003544E 28 04            [12]  231 	jr	Z, 00121$
    00035450 3E 15            [ 8]  232 	ld	a, #0x15
    00035452 18 04            [12]  233 	jr	00122$
    00035454                        234 00121$:
    00035454 F8 01            [12]  235 	ldhl	sp,	#1
    00035456 2A               [ 8]  236 	ld	a, (hl+)
    00035457 46               [ 8]  237 	ld	b, (hl)
    00035458                        238 00122$:
                                    239 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00035458 21 81 CD         [12]  240 	ld	hl, #__submap_tile_offset
    0003545B 36 80            [12]  241 	ld	(hl), #0x80
                                    242 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    0003545D 26 31            [ 8]  243 	ld	h, #0x31
                                    244 ;	spillPairReg hl
                                    245 ;	spillPairReg hl
    0003545F E5               [16]  246 	push	hl
    00035460 33               [ 8]  247 	inc	sp
    00035461 11 C9 C0         [12]  248 	ld	de, #_Home
    00035464 D5               [16]  249 	push	de
    00035465 26 01            [ 8]  250 	ld	h, #0x01
                                    251 ;	spillPairReg hl
                                    252 ;	spillPairReg hl
    00035467 E5               [16]  253 	push	hl
    00035468 33               [ 8]  254 	inc	sp
    00035469 47               [ 4]  255 	ld	b, a
    0003546A C5               [16]  256 	push	bc
    0003546B F8 06            [12]  257 	ldhl	sp,	#6
    0003546D 7E               [ 8]  258 	ld	a, (hl)
    0003546E F5               [16]  259 	push	af
    0003546F 33               [ 8]  260 	inc	sp
    00035470 CD BD 0E         [24]  261 	call	_set_bkg_submap
    00035473 E8 07            [16]  262 	add	sp, #7
                                    263 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00035475 21 81 CD         [12]  264 	ld	hl, #__submap_tile_offset
    00035478 36 00            [12]  265 	ld	(hl), #0x00
                         0000008A   266 	C$CoreGameLoop.c$39$2_0$151	= .
                                    267 	.globl	C$CoreGameLoop.c$39$2_0$151
                                    268 ;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    0003547A 18 3E            [12]  269 	jr	00105$
    0003547C                        270 00104$:
                         0000008C   271 	C$CoreGameLoop.c$43$3_0$153	= .
                                    272 	.globl	C$CoreGameLoop.c$43$3_0$153
                                    273 ;src\CoreGameLoop.c:43: if ((HomeHeight - 18u) > map_pos_y_tiles) // (have we touched the bottom of the map?) if not then...
    0003547C FA BA C0         [16]  274 	ld	a, (#_map_pos_y_tiles)
    0003547F D6 30            [ 8]  275 	sub	a, #0x30
    00035481 30 37            [12]  276 	jr	NC, 00105$
                                    277 ;src\CoreGameLoop.c:45: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00035483 11 C9 C0         [12]  278 	ld	de, #_Home
    00035486 78               [ 4]  279 	ld	a, b
    00035487 B7               [ 4]  280 	or	a, a
    00035488 28 04            [12]  281 	jr	Z, 00123$
    0003548A 0E 15            [ 8]  282 	ld	c, #0x15
    0003548C 18 05            [12]  283 	jr	00124$
    0003548E                        284 00123$:
    0003548E F8 01            [12]  285 	ldhl	sp,	#1
    00035490 2A               [ 8]  286 	ld	a, (hl+)
    00035491 4F               [ 4]  287 	ld	c, a
    00035492 7E               [ 8]  288 	ld	a, (hl)
    00035493                        289 00124$:
    00035493 FA BA C0         [16]  290 	ld	a, (#_map_pos_y_tiles)
    00035496 C6 12            [ 8]  291 	add	a, #0x12
                                    292 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00035498 21 81 CD         [12]  293 	ld	hl, #__submap_tile_offset
    0003549B 36 80            [12]  294 	ld	(hl), #0x80
                                    295 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    0003549D 26 31            [ 8]  296 	ld	h, #0x31
                                    297 ;	spillPairReg hl
                                    298 ;	spillPairReg hl
    0003549F E5               [16]  299 	push	hl
    000354A0 33               [ 8]  300 	inc	sp
    000354A1 D5               [16]  301 	push	de
    000354A2 26 01            [ 8]  302 	ld	h, #0x01
                                    303 ;	spillPairReg hl
                                    304 ;	spillPairReg hl
    000354A4 E5               [16]  305 	push	hl
    000354A5 33               [ 8]  306 	inc	sp
    000354A6 61               [ 4]  307 	ld	h, c
                                    308 ;	spillPairReg hl
                                    309 ;	spillPairReg hl
    000354A7 E5               [16]  310 	push	hl
    000354A8 33               [ 8]  311 	inc	sp
    000354A9 F5               [16]  312 	push	af
    000354AA 33               [ 8]  313 	inc	sp
    000354AB F8 06            [12]  314 	ldhl	sp,	#6
    000354AD 7E               [ 8]  315 	ld	a, (hl)
    000354AE F5               [16]  316 	push	af
    000354AF 33               [ 8]  317 	inc	sp
    000354B0 CD BD 0E         [24]  318 	call	_set_bkg_submap
    000354B3 E8 07            [16]  319 	add	sp, #7
                                    320 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    000354B5 21 81 CD         [12]  321 	ld	hl, #__submap_tile_offset
    000354B8 36 00            [12]  322 	ld	(hl), #0x00
                         000000CA   323 	C$CoreGameLoop.c$45$2_0$151	= .
                                    324 	.globl	C$CoreGameLoop.c$45$2_0$151
                                    325 ;src\CoreGameLoop.c:45: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
    000354BA                        326 00105$:
                         000000CA   327 	C$CoreGameLoop.c$39$1_0$150	= .
                                    328 	.globl	C$CoreGameLoop.c$39$1_0$150
                                    329 ;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    000354BA 21 BA C0         [12]  330 	ld	hl, #_map_pos_y_tiles
    000354BD 4E               [ 8]  331 	ld	c, (hl)
                         000000CE   332 	C$CoreGameLoop.c$48$2_0$151	= .
                                    333 	.globl	C$CoreGameLoop.c$48$2_0$151
                                    334 ;src\CoreGameLoop.c:48: old_map_pos_y_tiles = map_pos_y_tiles;
    000354BE 21 BC C0         [12]  335 	ld	hl, #_old_map_pos_y_tiles
    000354C1 71               [ 8]  336 	ld	(hl), c
    000354C2                        337 00107$:
                         000000D2   338 	C$CoreGameLoop.c$51$1_0$150	= .
                                    339 	.globl	C$CoreGameLoop.c$51$1_0$150
                                    340 ;src\CoreGameLoop.c:51: map_pos_x_tiles = (uint8_t)(camera_x_pixels >> 3u);
    000354C2 21 B1 C0         [12]  341 	ld	hl, #_camera_x_pixels
    000354C5 2A               [ 8]  342 	ld	a, (hl+)
    000354C6 47               [ 4]  343 	ld	b, a
    000354C7 5E               [ 8]  344 	ld	e, (hl)
    000354C8 CB 3B            [ 8]  345 	srl	e
    000354CA CB 18            [ 8]  346 	rr	b
    000354CC CB 3B            [ 8]  347 	srl	e
    000354CE CB 18            [ 8]  348 	rr	b
    000354D0 CB 3B            [ 8]  349 	srl	e
    000354D2 CB 18            [ 8]  350 	rr	b
    000354D4 21 B9 C0         [12]  351 	ld	hl, #_map_pos_x_tiles
    000354D7 70               [ 8]  352 	ld	(hl), b
                         000000E8   353 	C$CoreGameLoop.c$52$1_0$150	= .
                                    354 	.globl	C$CoreGameLoop.c$52$1_0$150
                                    355 ;src\CoreGameLoop.c:52: if (map_pos_x_tiles != old_map_pos_x_tiles)
    000354D8 7E               [ 8]  356 	ld	a, (hl)
    000354D9 21 BB C0         [12]  357 	ld	hl, #_old_map_pos_x_tiles
    000354DC 96               [ 8]  358 	sub	a, (hl)
    000354DD CA 7A 55         [16]  359 	jp	Z,00114$
                         000000F0   360 	C$CoreGameLoop.c$56$1_0$150	= .
                                    361 	.globl	C$CoreGameLoop.c$56$1_0$150
                                    362 ;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    000354E0 21 BA C0         [12]  363 	ld	hl, #_map_pos_y_tiles
    000354E3 5E               [ 8]  364 	ld	e, (hl)
    000354E4 06 00            [ 8]  365 	ld	b, #0x00
    000354E6 56               [ 8]  366 	ld	d, (hl)
    000354E7 3E 42            [ 8]  367 	ld	a, #0x42
    000354E9 93               [ 4]  368 	sub	a, e
    000354EA 6F               [ 4]  369 	ld	l, a
                                    370 ;	spillPairReg hl
                                    371 ;	spillPairReg hl
    000354EB 9F               [ 4]  372 	sbc	a, a
    000354EC 90               [ 4]  373 	sub	a, b
    000354ED 67               [ 4]  374 	ld	h, a
                                    375 ;	spillPairReg hl
                                    376 ;	spillPairReg hl
    000354EE 3E 42            [ 8]  377 	ld	a, #0x42
    000354F0 92               [ 4]  378 	sub	a, d
    000354F1 5F               [ 4]  379 	ld	e, a
    000354F2 07               [ 4]  380 	rlca
    000354F3 9F               [ 4]  381 	sbc	a, a
    000354F4 57               [ 4]  382 	ld	d, a
    000354F5 3E 13            [ 8]  383 	ld	a, #0x13
    000354F7 BD               [ 4]  384 	cp	a, l
    000354F8 3E 00            [ 8]  385 	ld	a, #0x00
    000354FA 9C               [ 4]  386 	sbc	a, h
    000354FB 3E 00            [ 8]  387 	ld	a, #0x00
    000354FD 17               [ 4]  388 	rla
    000354FE 47               [ 4]  389 	ld	b, a
                         0000010F   390 	C$CoreGameLoop.c$54$2_0$155	= .
                                    391 	.globl	C$CoreGameLoop.c$54$2_0$155
                                    392 ;src\CoreGameLoop.c:54: if (camera_x_pixels < old_camera_x_pixels)
    000354FF D5               [16]  393 	push	de
    00035500 11 B1 C0         [12]  394 	ld	de, #_camera_x_pixels
    00035503 21 B5 C0         [12]  395 	ld	hl, #_old_camera_x_pixels
    00035506 1A               [ 8]  396 	ld	a, (de)
    00035507 13               [ 8]  397 	inc	de
    00035508 96               [ 8]  398 	sub	a, (hl)
    00035509 23               [ 8]  399 	inc	hl
    0003550A 1A               [ 8]  400 	ld	a, (de)
    0003550B 9E               [ 8]  401 	sbc	a, (hl)
    0003550C D1               [12]  402 	pop	de
    0003550D 30 2F            [12]  403 	jr	NC, 00111$
                                    404 ;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    0003550F 78               [ 4]  405 	ld	a, b
    00035510 B7               [ 4]  406 	or	a, a
    00035511 28 03            [12]  407 	jr	Z, 00125$
    00035513 11 13 00         [12]  408 	ld	de, #0x0013
    00035516                        409 00125$:
    00035516 43               [ 4]  410 	ld	b, e
    00035517 FA B9 C0         [16]  411 	ld	a, (#_map_pos_x_tiles)
                                    412 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    0003551A 21 81 CD         [12]  413 	ld	hl, #__submap_tile_offset
    0003551D 36 80            [12]  414 	ld	(hl), #0x80
                                    415 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    0003551F 26 31            [ 8]  416 	ld	h, #0x31
                                    417 ;	spillPairReg hl
                                    418 ;	spillPairReg hl
    00035521 E5               [16]  419 	push	hl
    00035522 33               [ 8]  420 	inc	sp
    00035523 11 C9 C0         [12]  421 	ld	de, #_Home
    00035526 D5               [16]  422 	push	de
    00035527 C5               [16]  423 	push	bc
    00035528 33               [ 8]  424 	inc	sp
    00035529 26 01            [ 8]  425 	ld	h, #0x01
                                    426 ;	spillPairReg hl
                                    427 ;	spillPairReg hl
    0003552B E5               [16]  428 	push	hl
    0003552C 33               [ 8]  429 	inc	sp
    0003552D 61               [ 4]  430 	ld	h, c
                                    431 ;	spillPairReg hl
                                    432 ;	spillPairReg hl
    0003552E E5               [16]  433 	push	hl
    0003552F 33               [ 8]  434 	inc	sp
    00035530 F5               [16]  435 	push	af
    00035531 33               [ 8]  436 	inc	sp
    00035532 CD BD 0E         [24]  437 	call	_set_bkg_submap
    00035535 E8 07            [16]  438 	add	sp, #7
                                    439 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00035537 21 81 CD         [12]  440 	ld	hl, #__submap_tile_offset
    0003553A 36 00            [12]  441 	ld	(hl), #0x00
                         0000014C   442 	C$CoreGameLoop.c$56$2_0$155	= .
                                    443 	.globl	C$CoreGameLoop.c$56$2_0$155
                                    444 ;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    0003553C 18 36            [12]  445 	jr	00112$
    0003553E                        446 00111$:
                         0000014E   447 	C$CoreGameLoop.c$60$3_0$157	= .
                                    448 	.globl	C$CoreGameLoop.c$60$3_0$157
                                    449 ;src\CoreGameLoop.c:60: if ((HomeWidth - 20u) > map_pos_x_tiles)
    0003553E FA B9 C0         [16]  450 	ld	a, (#_map_pos_x_tiles)
    00035541 D6 1D            [ 8]  451 	sub	a, #0x1d
    00035543 30 2F            [12]  452 	jr	NC, 00112$
                                    453 ;src\CoreGameLoop.c:62: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00035545 78               [ 4]  454 	ld	a, b
    00035546 B7               [ 4]  455 	or	a, a
    00035547 28 03            [12]  456 	jr	Z, 00127$
    00035549 11 13 00         [12]  457 	ld	de, #0x0013
    0003554C                        458 00127$:
    0003554C 43               [ 4]  459 	ld	b, e
    0003554D FA B9 C0         [16]  460 	ld	a, (#_map_pos_x_tiles)
    00035550 C6 14            [ 8]  461 	add	a, #0x14
                                    462 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00035552 21 81 CD         [12]  463 	ld	hl, #__submap_tile_offset
    00035555 36 80            [12]  464 	ld	(hl), #0x80
                                    465 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00035557 26 31            [ 8]  466 	ld	h, #0x31
                                    467 ;	spillPairReg hl
                                    468 ;	spillPairReg hl
    00035559 E5               [16]  469 	push	hl
    0003555A 33               [ 8]  470 	inc	sp
    0003555B 11 C9 C0         [12]  471 	ld	de, #_Home
    0003555E D5               [16]  472 	push	de
    0003555F C5               [16]  473 	push	bc
    00035560 33               [ 8]  474 	inc	sp
    00035561 26 01            [ 8]  475 	ld	h, #0x01
                                    476 ;	spillPairReg hl
                                    477 ;	spillPairReg hl
    00035563 E5               [16]  478 	push	hl
    00035564 33               [ 8]  479 	inc	sp
    00035565 61               [ 4]  480 	ld	h, c
                                    481 ;	spillPairReg hl
                                    482 ;	spillPairReg hl
    00035566 E5               [16]  483 	push	hl
    00035567 33               [ 8]  484 	inc	sp
    00035568 F5               [16]  485 	push	af
    00035569 33               [ 8]  486 	inc	sp
    0003556A CD BD 0E         [24]  487 	call	_set_bkg_submap
    0003556D E8 07            [16]  488 	add	sp, #7
                                    489 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    0003556F 21 81 CD         [12]  490 	ld	hl, #__submap_tile_offset
    00035572 36 00            [12]  491 	ld	(hl), #0x00
                         00000184   492 	C$CoreGameLoop.c$62$2_0$155	= .
                                    493 	.globl	C$CoreGameLoop.c$62$2_0$155
                                    494 ;src\CoreGameLoop.c:62: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00035574                        495 00112$:
                         00000184   496 	C$CoreGameLoop.c$65$2_0$155	= .
                                    497 	.globl	C$CoreGameLoop.c$65$2_0$155
                                    498 ;src\CoreGameLoop.c:65: old_map_pos_x_tiles = map_pos_x_tiles;
    00035574 FA B9 C0         [16]  499 	ld	a, (#_map_pos_x_tiles)
    00035577 EA BB C0         [16]  500 	ld	(#_old_map_pos_x_tiles),a
    0003557A                        501 00114$:
                         0000018A   502 	C$CoreGameLoop.c$68$1_0$150	= .
                                    503 	.globl	C$CoreGameLoop.c$68$1_0$150
                                    504 ;src\CoreGameLoop.c:68: old_camera_x_pixels = camera_x_pixels, old_camera_y_pixels = camera_y_pixels;
    0003557A FA B1 C0         [16]  505 	ld	a, (#_camera_x_pixels)
    0003557D EA B5 C0         [16]  506 	ld	(#_old_camera_x_pixels),a
    00035580 FA B2 C0         [16]  507 	ld	a, (#_camera_x_pixels + 1)
    00035583 EA B6 C0         [16]  508 	ld	(#_old_camera_x_pixels + 1),a
    00035586 FA B3 C0         [16]  509 	ld	a, (#_camera_y_pixels)
    00035589 EA B7 C0         [16]  510 	ld	(#_old_camera_y_pixels),a
    0003558C FA B4 C0         [16]  511 	ld	a, (#_camera_y_pixels + 1)
    0003558F EA B8 C0         [16]  512 	ld	(#_old_camera_y_pixels + 1),a
                         000001A2   513 	C$CoreGameLoop.c$70$1_0$150	= .
                                    514 	.globl	C$CoreGameLoop.c$70$1_0$150
                                    515 ;src\CoreGameLoop.c:70: DrawNumber(2, 1, map_pos_x_tiles, 4, FALSE);
    00035592 21 B9 C0         [12]  516 	ld	hl, #_map_pos_x_tiles
    00035595 4E               [ 8]  517 	ld	c, (hl)
    00035596 06 00            [ 8]  518 	ld	b, #0x00
    00035598 21 04 00         [12]  519 	ld	hl, #0x04
    0003559B E5               [16]  520 	push	hl
    0003559C C5               [16]  521 	push	bc
    0003559D 1E 01            [ 8]  522 	ld	e, #0x01
    0003559F 3E 02            [ 8]  523 	ld	a, #0x02
    000355A1 CD DD 08         [24]  524 	call	_DrawNumber
                         000001B4   525 	C$CoreGameLoop.c$71$1_0$150	= .
                                    526 	.globl	C$CoreGameLoop.c$71$1_0$150
                                    527 ;src\CoreGameLoop.c:71: DrawText(0, 1, "X:", FALSE);
    000355A4 AF               [ 4]  528 	xor	a, a
    000355A5 F5               [16]  529 	push	af
    000355A6 33               [ 8]  530 	inc	sp
    000355A7 11 D4 55         [12]  531 	ld	de, #___str_0
    000355AA D5               [16]  532 	push	de
    000355AB 1E 01            [ 8]  533 	ld	e, #0x01
    000355AD AF               [ 4]  534 	xor	a, a
    000355AE CD B7 09         [24]  535 	call	_DrawText
                         000001C1   536 	C$CoreGameLoop.c$72$1_0$150	= .
                                    537 	.globl	C$CoreGameLoop.c$72$1_0$150
                                    538 ;src\CoreGameLoop.c:72: DrawNumber(2, 3, map_pos_y_tiles, 4, FALSE);
    000355B1 21 BA C0         [12]  539 	ld	hl, #_map_pos_y_tiles
    000355B4 4E               [ 8]  540 	ld	c, (hl)
    000355B5 06 00            [ 8]  541 	ld	b, #0x00
    000355B7 21 04 00         [12]  542 	ld	hl, #0x04
    000355BA E5               [16]  543 	push	hl
    000355BB C5               [16]  544 	push	bc
    000355BC 1E 03            [ 8]  545 	ld	e, #0x03
    000355BE 3E 02            [ 8]  546 	ld	a, #0x02
    000355C0 CD DD 08         [24]  547 	call	_DrawNumber
                         000001D3   548 	C$CoreGameLoop.c$73$1_0$150	= .
                                    549 	.globl	C$CoreGameLoop.c$73$1_0$150
                                    550 ;src\CoreGameLoop.c:73: DrawText(0, 3, "Y:", FALSE);
    000355C3 AF               [ 4]  551 	xor	a, a
    000355C4 F5               [16]  552 	push	af
    000355C5 33               [ 8]  553 	inc	sp
    000355C6 11 D7 55         [12]  554 	ld	de, #___str_1
    000355C9 D5               [16]  555 	push	de
    000355CA 1E 03            [ 8]  556 	ld	e, #0x03
    000355CC AF               [ 4]  557 	xor	a, a
    000355CD CD B7 09         [24]  558 	call	_DrawText
                         000001E0   559 	C$CoreGameLoop.c$74$1_0$150	= .
                                    560 	.globl	C$CoreGameLoop.c$74$1_0$150
                                    561 ;src\CoreGameLoop.c:74: }
    000355D0 E8 03            [16]  562 	add	sp, #3
                         000001E2   563 	C$CoreGameLoop.c$74$1_0$150	= .
                                    564 	.globl	C$CoreGameLoop.c$74$1_0$150
                         000001E2   565 	XG$set_camera$0$0	= .
                                    566 	.globl	XG$set_camera$0$0
    000355D2 C9               [16]  567 	ret
                         000001E3   568 G$const_bank_ID_core$0_0$0 == .
    000355D3                        569 _const_bank_ID_core:
    000355D3 03                     570 	.db #0x03	; 3
                         000001E4   571 FCoreGameLoop$__str_0$0_0$0 == .
    000355D4                        572 ___str_0:
    000355D4 58 3A                  573 	.ascii "X:"
    000355D6 00                     574 	.db 0x00
                         000001E7   575 FCoreGameLoop$__str_1$0_0$0 == .
    000355D7                        576 ___str_1:
    000355D7 59 3A                  577 	.ascii "Y:"
    000355D9 00                     578 	.db 0x00
                         000001EA   579 	G$__func_CoreGameLoopSetup$0$0	= .
                                    580 	.globl	G$__func_CoreGameLoopSetup$0$0
                         000001EA   581 	C$CoreGameLoop.c$78$1_0$172	= .
                                    582 	.globl	C$CoreGameLoop.c$78$1_0$172
                                    583 ;src\CoreGameLoop.c:78: BANKREF(CoreGameLoopSetup)
                                    584 ;	---------------------------------
                                    585 ; Function __func_CoreGameLoopSetup
                                    586 ; ---------------------------------
                         00000003   587 	b___func_CoreGameLoopSetup	= 3
    000355DA                        588 ___func_CoreGameLoopSetup::
                                    589 	.local b___func_CoreGameLoopSetup 
                         00000003   590 	___bank_CoreGameLoopSetup = b___func_CoreGameLoopSetup 
                                    591 	.globl ___bank_CoreGameLoopSetup 
                         000001EA   592 	G$CoreGameLoopSetup$0$0	= .
                                    593 	.globl	G$CoreGameLoopSetup$0$0
                         000001EA   594 	C$CoreGameLoop.c$79$1_0$174	= .
                                    595 	.globl	C$CoreGameLoop.c$79$1_0$174
                                    596 ;src\CoreGameLoop.c:79: void CoreGameLoopSetup(void) BANKED
                                    597 ;	---------------------------------
                                    598 ; Function CoreGameLoopSetup
                                    599 ; ---------------------------------
                         00000003   600 	b_CoreGameLoopSetup	= 3
    000355DA                        601 _CoreGameLoopSetup::
                         000001EA   602 	C$CoreGameLoop.c$82$1_0$174	= .
                                    603 	.globl	C$CoreGameLoop.c$82$1_0$174
                                    604 ;src\CoreGameLoop.c:82: map_pos_x_tiles = map_pos_y_tiles = 0;
    000355DA 21 BA C0         [12]  605 	ld	hl, #_map_pos_y_tiles
    000355DD 36 00            [12]  606 	ld	(hl), #0x00
    000355DF 21 B9 C0         [12]  607 	ld	hl, #_map_pos_x_tiles
    000355E2 36 00            [12]  608 	ld	(hl), #0x00
                         000001F4   609 	C$CoreGameLoop.c$83$1_0$174	= .
                                    610 	.globl	C$CoreGameLoop.c$83$1_0$174
                                    611 ;src\CoreGameLoop.c:83: old_map_pos_x_tiles = old_camera_y_pixels = 255; 
    000355E4 21 BB C0         [12]  612 	ld	hl, #_old_map_pos_x_tiles
    000355E7 36 FF            [12]  613 	ld	(hl), #0xff
                         000001F9   614 	C$CoreGameLoop.c$84$1_0$174	= .
                                    615 	.globl	C$CoreGameLoop.c$84$1_0$174
                                    616 ;src\CoreGameLoop.c:84: camera_x_pixels = 208;
    000355E9 21 B1 C0         [12]  617 	ld	hl, #_camera_x_pixels
    000355EC 3E D0            [ 8]  618 	ld	a, #0xd0
    000355EE 22               [ 8]  619 	ld	(hl+), a
    000355EF AF               [ 4]  620 	xor	a, a
    000355F0 77               [ 8]  621 	ld	(hl), a
                         00000201   622 	C$CoreGameLoop.c$85$1_0$174	= .
                                    623 	.globl	C$CoreGameLoop.c$85$1_0$174
                                    624 ;src\CoreGameLoop.c:85: camera_y_pixels = 96;
    000355F1 21 B3 C0         [12]  625 	ld	hl, #_camera_y_pixels
    000355F4 3E 60            [ 8]  626 	ld	a, #0x60
    000355F6 22               [ 8]  627 	ld	(hl+), a
    000355F7 AF               [ 4]  628 	xor	a, a
    000355F8 77               [ 8]  629 	ld	(hl), a
                         00000209   630 	C$CoreGameLoop.c$86$1_0$174	= .
                                    631 	.globl	C$CoreGameLoop.c$86$1_0$174
                                    632 ;src\CoreGameLoop.c:86: old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
    000355F9 21 B5 C0         [12]  633 	ld	hl, #_old_camera_x_pixels
    000355FC 3E D0            [ 8]  634 	ld	a, #0xd0
    000355FE 22               [ 8]  635 	ld	(hl+), a
    000355FF AF               [ 4]  636 	xor	a, a
    00035600 77               [ 8]  637 	ld	(hl), a
    00035601 21 B7 C0         [12]  638 	ld	hl, #_old_camera_y_pixels
    00035604 3E 60            [ 8]  639 	ld	a, #0x60
    00035606 22               [ 8]  640 	ld	(hl+), a
    00035607 AF               [ 4]  641 	xor	a, a
    00035608 77               [ 8]  642 	ld	(hl), a
                         00000219   643 	C$CoreGameLoop.c$87$1_0$174	= .
                                    644 	.globl	C$CoreGameLoop.c$87$1_0$174
                                    645 ;src\CoreGameLoop.c:87: redraw = FALSE;
    00035609 21 BD C0         [12]  646 	ld	hl, #_redraw
    0003560C 36 00            [12]  647 	ld	(hl), #0x00
                         0000021E   648 	C$CoreGameLoop.c$89$1_0$174	= .
                                    649 	.globl	C$CoreGameLoop.c$89$1_0$174
                                    650 ;src\CoreGameLoop.c:89: set_bkg_data(128, 144, IndoorTiles);
    0003560E 11 00 48         [12]  651 	ld	de, #_IndoorTiles
    00035611 D5               [16]  652 	push	de
    00035612 21 80 90         [12]  653 	ld	hl, #0x9080
    00035615 E5               [16]  654 	push	hl
    00035616 CD 85 0E         [24]  655 	call	_set_bkg_data
    00035619 E8 04            [16]  656 	add	sp, #4
                                    657 ;src\CoreGameLoop.c:90: set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
                                    658 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    0003561B 21 81 CD         [12]  659 	ld	hl, #__submap_tile_offset
    0003561E 36 80            [12]  660 	ld	(hl), #0x80
                                    661 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00035620 3E 31            [ 8]  662 	ld	a, #0x31
    00035622 F5               [16]  663 	push	af
    00035623 33               [ 8]  664 	inc	sp
    00035624 11 C9 C0         [12]  665 	ld	de, #_Home
    00035627 D5               [16]  666 	push	de
    00035628 21 14 12         [12]  667 	ld	hl, #0x1214
    0003562B E5               [16]  668 	push	hl
    0003562C AF               [ 4]  669 	xor	a, a
    0003562D 0F               [ 4]  670 	rrca
    0003562E F5               [16]  671 	push	af
    0003562F CD BD 0E         [24]  672 	call	_set_bkg_submap
    00035632 E8 07            [16]  673 	add	sp, #7
                                    674 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00035634 21 81 CD         [12]  675 	ld	hl, #__submap_tile_offset
    00035637 36 00            [12]  676 	ld	(hl), #0x00
                         00000249   677 	C$CoreGameLoop.c$91$1_0$174	= .
                                    678 	.globl	C$CoreGameLoop.c$91$1_0$174
                                    679 ;src\CoreGameLoop.c:91: set_sprite_data(0, 128, Cast_Tiles);
    00035639 11 00 40         [12]  680 	ld	de, #_Cast_Tiles
    0003563C D5               [16]  681 	push	de
    0003563D 21 00 80         [12]  682 	ld	hl, #0x8000
    00035640 E5               [16]  683 	push	hl
    00035641 CD 8D 0E         [24]  684 	call	_set_sprite_data
    00035644 E8 04            [16]  685 	add	sp, #4
                         00000256   686 	C$CoreGameLoop.c$92$1_0$174	= .
                                    687 	.globl	C$CoreGameLoop.c$92$1_0$174
                                    688 ;src\CoreGameLoop.c:92: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00035646 11 E2 02         [12]  689 	ld	de, #_FontTiles
    00035649 D5               [16]  690 	push	de
    0003564A 21 00 35         [12]  691 	ld	hl, #0x3500
    0003564D E5               [16]  692 	push	hl
    0003564E CD 85 0E         [24]  693 	call	_set_bkg_data
    00035651 E8 04            [16]  694 	add	sp, #4
                         00000263   695 	C$CoreGameLoop.c$93$1_0$174	= .
                                    696 	.globl	C$CoreGameLoop.c$93$1_0$174
                                    697 ;src\CoreGameLoop.c:93: SPRITES_8x16;
    00035653 F0 40            [12]  698 	ldh	a, (_LCDC_REG + 0)
    00035655 F6 04            [ 8]  699 	or	a, #0x04
    00035657 E0 40            [12]  700 	ldh	(_LCDC_REG + 0), a
                         00000269   701 	C$CoreGameLoop.c$94$1_0$174	= .
                                    702 	.globl	C$CoreGameLoop.c$94$1_0$174
                                    703 ;src\CoreGameLoop.c:94: SHOW_BKG;
    00035659 F0 40            [12]  704 	ldh	a, (_LCDC_REG + 0)
    0003565B F6 01            [ 8]  705 	or	a, #0x01
    0003565D E0 40            [12]  706 	ldh	(_LCDC_REG + 0), a
                         0000026F   707 	C$CoreGameLoop.c$95$1_0$174	= .
                                    708 	.globl	C$CoreGameLoop.c$95$1_0$174
                                    709 ;src\CoreGameLoop.c:95: SHOW_SPRITES;
    0003565F F0 40            [12]  710 	ldh	a, (_LCDC_REG + 0)
    00035661 F6 02            [ 8]  711 	or	a, #0x02
    00035663 E0 40            [12]  712 	ldh	(_LCDC_REG + 0), a
                         00000275   713 	C$CoreGameLoop.c$96$1_0$174	= .
                                    714 	.globl	C$CoreGameLoop.c$96$1_0$174
                                    715 ;src\CoreGameLoop.c:96: set_camera();
    00035665 1E 03            [ 8]  716 	ld	e, #b_set_camera
    00035667 21 F0 53         [12]  717 	ld	hl, #_set_camera
    0003566A CD A4 0F         [24]  718 	call	___sdcc_bcall_ehl
                         0000027D   719 	C$CoreGameLoop.c$97$1_0$174	= .
                                    720 	.globl	C$CoreGameLoop.c$97$1_0$174
                                    721 ;src\CoreGameLoop.c:97: fadeFromBlack(10);
    0003566D 3E 0A            [ 8]  722 	ld	a, #0x0a
    0003566F CD FD 0A         [24]  723 	call	_fadeFromBlack
                         00000282   724 	C$CoreGameLoop.c$98$1_0$174	= .
                                    725 	.globl	C$CoreGameLoop.c$98$1_0$174
                                    726 ;src\CoreGameLoop.c:98: DrawNumber(1, 1, 31, 4, FALSE);
    00035672 21 04 00         [12]  727 	ld	hl, #0x04
    00035675 E5               [16]  728 	push	hl
    00035676 11 1F 00         [12]  729 	ld	de, #0x001f
    00035679 D5               [16]  730 	push	de
    0003567A 3E 01            [ 8]  731 	ld	a,#0x01
    0003567C 5F               [ 4]  732 	ld	e,a
    0003567D CD DD 08         [24]  733 	call	_DrawNumber
                         00000290   734 	C$CoreGameLoop.c$99$1_0$174	= .
                                    735 	.globl	C$CoreGameLoop.c$99$1_0$174
                                    736 ;src\CoreGameLoop.c:99: DrawText(1, 3, "Window Text", FALSE);
    00035680 AF               [ 4]  737 	xor	a, a
    00035681 F5               [16]  738 	push	af
    00035682 33               [ 8]  739 	inc	sp
    00035683 11 8F 56         [12]  740 	ld	de, #___str_2
    00035686 D5               [16]  741 	push	de
    00035687 1E 03            [ 8]  742 	ld	e, #0x03
    00035689 3E 01            [ 8]  743 	ld	a, #0x01
    0003568B CD B7 09         [24]  744 	call	_DrawText
                         0000029E   745 	C$CoreGameLoop.c$100$1_0$174	= .
                                    746 	.globl	C$CoreGameLoop.c$100$1_0$174
                                    747 ;src\CoreGameLoop.c:100: }
                         0000029E   748 	C$CoreGameLoop.c$100$1_0$174	= .
                                    749 	.globl	C$CoreGameLoop.c$100$1_0$174
                         0000029E   750 	XG$CoreGameLoopSetup$0$0	= .
                                    751 	.globl	XG$CoreGameLoopSetup$0$0
    0003568E C9               [16]  752 	ret
                         0000029F   753 FCoreGameLoop$__str_2$0_0$0 == .
    0003568F                        754 ___str_2:
    0003568F 57 69 6E 64 6F 77 20   755 	.ascii "Window Text"
             54 65 78 74
    0003569A 00                     756 	.db 0x00
                         000002AB   757 	G$__func_CoreGameLoopUpdate$0$0	= .
                                    758 	.globl	G$__func_CoreGameLoopUpdate$0$0
                         000002AB   759 	C$CoreGameLoop.c$104$1_0$179	= .
                                    760 	.globl	C$CoreGameLoop.c$104$1_0$179
                                    761 ;src\CoreGameLoop.c:104: BANKREF(CoreGameLoopUpdate)
                                    762 ;	---------------------------------
                                    763 ; Function __func_CoreGameLoopUpdate
                                    764 ; ---------------------------------
                         00000003   765 	b___func_CoreGameLoopUpdate	= 3
    0003569B                        766 ___func_CoreGameLoopUpdate::
                                    767 	.local b___func_CoreGameLoopUpdate 
                         00000003   768 	___bank_CoreGameLoopUpdate = b___func_CoreGameLoopUpdate 
                                    769 	.globl ___bank_CoreGameLoopUpdate 
                         000002AB   770 	G$CoreGameLoopUpdate$0$0	= .
                                    771 	.globl	G$CoreGameLoopUpdate$0$0
                         000002AB   772 	C$CoreGameLoop.c$105$1_0$181	= .
                                    773 	.globl	C$CoreGameLoop.c$105$1_0$181
                                    774 ;src\CoreGameLoop.c:105: uint8_t CoreGameLoopUpdate(void) BANKED
                                    775 ;	---------------------------------
                                    776 ; Function CoreGameLoopUpdate
                                    777 ; ---------------------------------
                         00000003   778 	b_CoreGameLoopUpdate	= 3
    0003569B                        779 _CoreGameLoopUpdate::
                         000002AB   780 	C$CoreGameLoop.c$107$1_0$181	= .
                                    781 	.globl	C$CoreGameLoop.c$107$1_0$181
                                    782 ;src\CoreGameLoop.c:107: joypadCurrent = joypad();
    0003569B CD 74 0F         [24]  783 	call	_joypad
    0003569E EA 6E CD         [16]  784 	ld	(#_joypadCurrent),a
                         000002B1   785 	C$CoreGameLoop.c$108$1_0$181	= .
                                    786 	.globl	C$CoreGameLoop.c$108$1_0$181
                                    787 ;src\CoreGameLoop.c:108: PlayerUpdate(&mouse);
    000356A1 11 70 CD         [12]  788 	ld	de, #_mouse
    000356A4 CD D1 52         [24]  789 	call	_PlayerUpdate
                         000002B7   790 	C$CoreGameLoop.c$109$1_0$181	= .
                                    791 	.globl	C$CoreGameLoop.c$109$1_0$181
                                    792 ;src\CoreGameLoop.c:109: DrawPlayer(&mouse);
    000356A7 11 70 CD         [12]  793 	ld	de, #_mouse
    000356AA CD 07 53         [24]  794 	call	_DrawPlayer
                         000002BD   795 	C$CoreGameLoop.c$114$1_0$181	= .
                                    796 	.globl	C$CoreGameLoop.c$114$1_0$181
                                    797 ;src\CoreGameLoop.c:114: if (joypadCurrent & J_UP) {
    000356AD 21 6E CD         [12]  798 	ld	hl, #_joypadCurrent
    000356B0 4E               [ 8]  799 	ld	c, (hl)
    000356B1 CB 51            [ 8]  800 	bit	2, c
    000356B3 28 16            [12]  801 	jr	Z, 00108$
                         000002C5   802 	C$CoreGameLoop.c$115$2_0$183	= .
                                    803 	.globl	C$CoreGameLoop.c$115$2_0$183
                                    804 ;src\CoreGameLoop.c:115: if (camera_y_pixels){
    000356B5 21 B4 C0         [12]  805 	ld	hl, #_camera_y_pixels + 1
    000356B8 3A               [ 8]  806 	ld	a, (hl-)
    000356B9 B6               [ 8]  807 	or	a, (hl)
    000356BA 28 2A            [12]  808 	jr	Z, 00109$
                         000002CC   809 	C$CoreGameLoop.c$116$3_0$184	= .
                                    810 	.globl	C$CoreGameLoop.c$116$3_0$184
                                    811 ;src\CoreGameLoop.c:116: camera_y_pixels--;
    000356BC 2A               [ 8]  812 	ld	a, (hl+)
    000356BD 5F               [ 4]  813 	ld	e, a
    000356BE 3A               [ 8]  814 	ld	a, (hl-)
    000356BF 57               [ 4]  815 	ld	d, a
    000356C0 1B               [ 8]  816 	dec	de
    000356C1 7B               [ 4]  817 	ld	a, e
    000356C2 22               [ 8]  818 	ld	(hl+), a
    000356C3 72               [ 8]  819 	ld	(hl), d
                         000002D4   820 	C$CoreGameLoop.c$117$3_0$184	= .
                                    821 	.globl	C$CoreGameLoop.c$117$3_0$184
                                    822 ;src\CoreGameLoop.c:117: redraw = TRUE;
    000356C4 21 BD C0         [12]  823 	ld	hl, #_redraw
    000356C7 36 01            [12]  824 	ld	(hl), #0x01
    000356C9 18 1B            [12]  825 	jr	00109$
    000356CB                        826 00108$:
                         000002DB   827 	C$CoreGameLoop.c$119$1_0$181	= .
                                    828 	.globl	C$CoreGameLoop.c$119$1_0$181
                                    829 ;src\CoreGameLoop.c:119: } else if (joypadCurrent & J_DOWN) {
    000356CB CB 59            [ 8]  830 	bit	3, c
    000356CD 28 17            [12]  831 	jr	Z, 00109$
                         000002DF   832 	C$CoreGameLoop.c$120$2_0$185	= .
                                    833 	.globl	C$CoreGameLoop.c$120$2_0$185
                                    834 ;src\CoreGameLoop.c:120: if (camera_y_pixels < HomeCameraMaxY)
    000356CF 21 B3 C0         [12]  835 	ld	hl, #_camera_y_pixels
    000356D2 2A               [ 8]  836 	ld	a, (hl+)
    000356D3 5E               [ 8]  837 	ld	e, (hl)
    000356D4 D6 80            [ 8]  838 	sub	a, #0x80
    000356D6 7B               [ 4]  839 	ld	a, e
    000356D7 DE 01            [ 8]  840 	sbc	a, #0x01
    000356D9 30 0B            [12]  841 	jr	NC, 00109$
                         000002EB   842 	C$CoreGameLoop.c$122$3_0$186	= .
                                    843 	.globl	C$CoreGameLoop.c$122$3_0$186
                                    844 ;src\CoreGameLoop.c:122: camera_y_pixels++;
    000356DB 2B               [ 8]  845 	dec	hl
    000356DC 34               [12]  846 	inc	(hl)
    000356DD 20 02            [12]  847 	jr	NZ, 00223$
    000356DF 23               [ 8]  848 	inc	hl
    000356E0 34               [12]  849 	inc	(hl)
    000356E1                        850 00223$:
                         000002F1   851 	C$CoreGameLoop.c$123$3_0$186	= .
                                    852 	.globl	C$CoreGameLoop.c$123$3_0$186
                                    853 ;src\CoreGameLoop.c:123: redraw = TRUE;
    000356E1 21 BD C0         [12]  854 	ld	hl, #_redraw
    000356E4 36 01            [12]  855 	ld	(hl), #0x01
    000356E6                        856 00109$:
                         000002F6   857 	C$CoreGameLoop.c$127$1_0$181	= .
                                    858 	.globl	C$CoreGameLoop.c$127$1_0$181
                                    859 ;src\CoreGameLoop.c:127: if (joypadCurrent & J_LEFT) {
    000356E6 CB 49            [ 8]  860 	bit	1, c
    000356E8 28 18            [12]  861 	jr	Z, 00126$
                         000002FA   862 	C$CoreGameLoop.c$128$2_0$187	= .
                                    863 	.globl	C$CoreGameLoop.c$128$2_0$187
                                    864 ;src\CoreGameLoop.c:128: if (camera_x_pixels)
    000356EA 21 B2 C0         [12]  865 	ld	hl, #_camera_x_pixels + 1
    000356ED 3A               [ 8]  866 	ld	a, (hl-)
    000356EE B6               [ 8]  867 	or	a, (hl)
    000356EF CA 3E 58         [16]  868 	jp	Z, 00127$
                         00000302   869 	C$CoreGameLoop.c$130$3_0$188	= .
                                    870 	.globl	C$CoreGameLoop.c$130$3_0$188
                                    871 ;src\CoreGameLoop.c:130: camera_x_pixels--;
    000356F2 2A               [ 8]  872 	ld	a, (hl+)
    000356F3 5F               [ 4]  873 	ld	e, a
    000356F4 3A               [ 8]  874 	ld	a, (hl-)
    000356F5 57               [ 4]  875 	ld	d, a
    000356F6 1B               [ 8]  876 	dec	de
    000356F7 7B               [ 4]  877 	ld	a, e
    000356F8 22               [ 8]  878 	ld	(hl+), a
    000356F9 72               [ 8]  879 	ld	(hl), d
                         0000030A   880 	C$CoreGameLoop.c$131$3_0$188	= .
                                    881 	.globl	C$CoreGameLoop.c$131$3_0$188
                                    882 ;src\CoreGameLoop.c:131: redraw = TRUE;
    000356FA 21 BD C0         [12]  883 	ld	hl, #_redraw
    000356FD 36 01            [12]  884 	ld	(hl), #0x01
    000356FF C3 3E 58         [16]  885 	jp	00127$
    00035702                        886 00126$:
                         00000312   887 	C$CoreGameLoop.c$133$1_0$181	= .
                                    888 	.globl	C$CoreGameLoop.c$133$1_0$181
                                    889 ;src\CoreGameLoop.c:133: } else if (joypadCurrent & J_RIGHT) {
    00035702 CB 41            [ 8]  890 	bit	0, c
    00035704 28 1A            [12]  891 	jr	Z, 00123$
                         00000316   892 	C$CoreGameLoop.c$134$2_0$189	= .
                                    893 	.globl	C$CoreGameLoop.c$134$2_0$189
                                    894 ;src\CoreGameLoop.c:134: if (camera_x_pixels < HomeCameraMaxX)
    00035706 21 B1 C0         [12]  895 	ld	hl, #_camera_x_pixels
    00035709 2A               [ 8]  896 	ld	a, (hl+)
    0003570A D6 E8            [ 8]  897 	sub	a, #0xe8
    0003570C 7E               [ 8]  898 	ld	a, (hl)
    0003570D DE 00            [ 8]  899 	sbc	a, #0x00
    0003570F D2 3E 58         [16]  900 	jp	NC, 00127$
                         00000322   901 	C$CoreGameLoop.c$136$3_0$190	= .
                                    902 	.globl	C$CoreGameLoop.c$136$3_0$190
                                    903 ;src\CoreGameLoop.c:136: camera_x_pixels++;
    00035712 2B               [ 8]  904 	dec	hl
    00035713 34               [12]  905 	inc	(hl)
    00035714 20 02            [12]  906 	jr	NZ, 00226$
    00035716 23               [ 8]  907 	inc	hl
    00035717 34               [12]  908 	inc	(hl)
    00035718                        909 00226$:
                         00000328   910 	C$CoreGameLoop.c$137$3_0$190	= .
                                    911 	.globl	C$CoreGameLoop.c$137$3_0$190
                                    912 ;src\CoreGameLoop.c:137: redraw = TRUE;
    00035718 21 BD C0         [12]  913 	ld	hl, #_redraw
    0003571B 36 01            [12]  914 	ld	(hl), #0x01
    0003571D C3 3E 58         [16]  915 	jp	00127$
    00035720                        916 00123$:
                         00000330   917 	C$CoreGameLoop.c$139$1_0$181	= .
                                    918 	.globl	C$CoreGameLoop.c$139$1_0$181
                                    919 ;src\CoreGameLoop.c:139: } else if (joypadCurrent & J_SELECT) {
    00035720 CB 71            [ 8]  920 	bit	6, c
    00035722 28 08            [12]  921 	jr	Z, 00120$
                         00000334   922 	C$CoreGameLoop.c$140$2_0$191	= .
                                    923 	.globl	C$CoreGameLoop.c$140$2_0$191
                                    924 ;src\CoreGameLoop.c:140: fadeToBlack(10);
    00035724 3E 0A            [ 8]  925 	ld	a, #0x0a
    00035726 CD B4 0A         [24]  926 	call	_fadeToBlack
                         00000339   927 	C$CoreGameLoop.c$141$2_0$191	= .
                                    928 	.globl	C$CoreGameLoop.c$141$2_0$191
                                    929 ;src\CoreGameLoop.c:141: return GAMETITLE;
    00035729 3E 01            [ 8]  930 	ld	a, #0x01
    0003572B C9               [16]  931 	ret
    0003572C                        932 00120$:
                         0000033C   933 	C$CoreGameLoop.c$143$1_0$181	= .
                                    934 	.globl	C$CoreGameLoop.c$143$1_0$181
                                    935 ;src\CoreGameLoop.c:143: else if (joypadCurrent & J_B)
    0003572C CB 69            [ 8]  936 	bit	5, c
    0003572E 28 10            [12]  937 	jr	Z, 00117$
                         00000340   938 	C$CoreGameLoop.c$145$2_0$192	= .
                                    939 	.globl	C$CoreGameLoop.c$145$2_0$192
                                    940 ;src\CoreGameLoop.c:145: set_sprite_data(0, 16, Skateboard_Tiles);
    00035730 11 82 58         [12]  941 	ld	de, #_Skateboard_Tiles
    00035733 D5               [16]  942 	push	de
    00035734 21 00 10         [12]  943 	ld	hl, #0x1000
    00035737 E5               [16]  944 	push	hl
    00035738 CD 8D 0E         [24]  945 	call	_set_sprite_data
    0003573B E8 04            [16]  946 	add	sp, #4
    0003573D C3 3E 58         [16]  947 	jp	00127$
    00035740                        948 00117$:
                         00000350   949 	C$CoreGameLoop.c$147$1_0$181	= .
                                    950 	.globl	C$CoreGameLoop.c$147$1_0$181
                                    951 ;src\CoreGameLoop.c:147: else if (joypadCurrent & J_A)
    00035740 CB 61            [ 8]  952 	bit	4, c
    00035742 CA 3E 58         [16]  953 	jp	Z,00127$
                         00000355   954 	C$CoreGameLoop.c$150$2_0$193	= .
                                    955 	.globl	C$CoreGameLoop.c$150$2_0$193
                                    956 ;src\CoreGameLoop.c:150: DrawWindow(map_pos_x_tiles, map_pos_y_tiles, 9, 6, TRUE);
    00035745 21 06 01         [12]  957 	ld	hl, #0x106
    00035748 E5               [16]  958 	push	hl
    00035749 3E 09            [ 8]  959 	ld	a, #0x09
    0003574B F5               [16]  960 	push	af
    0003574C 33               [ 8]  961 	inc	sp
    0003574D 21 BA C0         [12]  962 	ld	hl, #_map_pos_y_tiles
    00035750 5E               [ 8]  963 	ld	e, (hl)
    00035751 FA B9 C0         [16]  964 	ld	a, (#_map_pos_x_tiles)
    00035754 CD 0B 0C         [24]  965 	call	_DrawWindow
                         00000367   966 	C$CoreGameLoop.c$151$2_0$193	= .
                                    967 	.globl	C$CoreGameLoop.c$151$2_0$193
                                    968 ;src\CoreGameLoop.c:151: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 0, "COMMAND", TRUE);
    00035757 21 B9 C0         [12]  969 	ld	hl, #_map_pos_x_tiles
    0003575A 4E               [ 8]  970 	ld	c, (hl)
    0003575B 0C               [ 4]  971 	inc	c
    0003575C 3E 01            [ 8]  972 	ld	a, #0x01
    0003575E F5               [16]  973 	push	af
    0003575F 33               [ 8]  974 	inc	sp
    00035760 11 57 58         [12]  975 	ld	de, #___str_3
    00035763 D5               [16]  976 	push	de
    00035764 21 BA C0         [12]  977 	ld	hl, #_map_pos_y_tiles
    00035767 5E               [ 8]  978 	ld	e, (hl)
    00035768 79               [ 4]  979 	ld	a, c
    00035769 CD B7 09         [24]  980 	call	_DrawText
                         0000037C   981 	C$CoreGameLoop.c$152$2_0$193	= .
                                    982 	.globl	C$CoreGameLoop.c$152$2_0$193
                                    983 ;src\CoreGameLoop.c:152: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 1, "TALK", TRUE);
    0003576C 21 BA C0         [12]  984 	ld	hl, #_map_pos_y_tiles
    0003576F 5E               [ 8]  985 	ld	e, (hl)
    00035770 1C               [ 4]  986 	inc	e
    00035771 21 B9 C0         [12]  987 	ld	hl, #_map_pos_x_tiles
    00035774 4E               [ 8]  988 	ld	c, (hl)
    00035775 0C               [ 4]  989 	inc	c
    00035776 0C               [ 4]  990 	inc	c
    00035777 3E 01            [ 8]  991 	ld	a, #0x01
    00035779 F5               [16]  992 	push	af
    0003577A 33               [ 8]  993 	inc	sp
    0003577B 21 5F 58         [12]  994 	ld	hl, #___str_4
    0003577E E5               [16]  995 	push	hl
    0003577F 79               [ 4]  996 	ld	a, c
    00035780 CD B7 09         [24]  997 	call	_DrawText
                         00000393   998 	C$CoreGameLoop.c$153$2_0$193	= .
                                    999 	.globl	C$CoreGameLoop.c$153$2_0$193
                                   1000 ;src\CoreGameLoop.c:153: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 2, "CHECK", TRUE);
    00035783 21 BA C0         [12] 1001 	ld	hl, #_map_pos_y_tiles
    00035786 5E               [ 8] 1002 	ld	e, (hl)
    00035787 1C               [ 4] 1003 	inc	e
    00035788 1C               [ 4] 1004 	inc	e
    00035789 21 B9 C0         [12] 1005 	ld	hl, #_map_pos_x_tiles
    0003578C 4E               [ 8] 1006 	ld	c, (hl)
    0003578D 0C               [ 4] 1007 	inc	c
    0003578E 0C               [ 4] 1008 	inc	c
    0003578F 3E 01            [ 8] 1009 	ld	a, #0x01
    00035791 F5               [16] 1010 	push	af
    00035792 33               [ 8] 1011 	inc	sp
    00035793 21 64 58         [12] 1012 	ld	hl, #___str_5
    00035796 E5               [16] 1013 	push	hl
    00035797 79               [ 4] 1014 	ld	a, c
    00035798 CD B7 09         [24] 1015 	call	_DrawText
                         000003AB  1016 	C$CoreGameLoop.c$154$2_0$193	= .
                                   1017 	.globl	C$CoreGameLoop.c$154$2_0$193
                                   1018 ;src\CoreGameLoop.c:154: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 3, "PSI", TRUE);
    0003579B FA BA C0         [16] 1019 	ld	a, (#_map_pos_y_tiles)
    0003579E C6 03            [ 8] 1020 	add	a, #0x03
    000357A0 5F               [ 4] 1021 	ld	e, a
    000357A1 21 B9 C0         [12] 1022 	ld	hl, #_map_pos_x_tiles
    000357A4 4E               [ 8] 1023 	ld	c, (hl)
    000357A5 0C               [ 4] 1024 	inc	c
    000357A6 0C               [ 4] 1025 	inc	c
    000357A7 3E 01            [ 8] 1026 	ld	a, #0x01
    000357A9 F5               [16] 1027 	push	af
    000357AA 33               [ 8] 1028 	inc	sp
    000357AB 21 6A 58         [12] 1029 	ld	hl, #___str_6
    000357AE E5               [16] 1030 	push	hl
    000357AF 79               [ 4] 1031 	ld	a, c
    000357B0 CD B7 09         [24] 1032 	call	_DrawText
                         000003C3  1033 	C$CoreGameLoop.c$155$2_0$193	= .
                                   1034 	.globl	C$CoreGameLoop.c$155$2_0$193
                                   1035 ;src\CoreGameLoop.c:155: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 4, "GOODS", TRUE);
    000357B3 FA BA C0         [16] 1036 	ld	a, (#_map_pos_y_tiles)
    000357B6 C6 04            [ 8] 1037 	add	a, #0x04
    000357B8 5F               [ 4] 1038 	ld	e, a
    000357B9 21 B9 C0         [12] 1039 	ld	hl, #_map_pos_x_tiles
    000357BC 4E               [ 8] 1040 	ld	c, (hl)
    000357BD 0C               [ 4] 1041 	inc	c
    000357BE 0C               [ 4] 1042 	inc	c
    000357BF 3E 01            [ 8] 1043 	ld	a, #0x01
    000357C1 F5               [16] 1044 	push	af
    000357C2 33               [ 8] 1045 	inc	sp
    000357C3 21 6E 58         [12] 1046 	ld	hl, #___str_7
    000357C6 E5               [16] 1047 	push	hl
    000357C7 79               [ 4] 1048 	ld	a, c
    000357C8 CD B7 09         [24] 1049 	call	_DrawText
                         000003DB  1050 	C$CoreGameLoop.c$157$2_0$193	= .
                                   1051 	.globl	C$CoreGameLoop.c$157$2_0$193
                                   1052 ;src\CoreGameLoop.c:157: DrawWindow(map_pos_x_tiles, map_pos_y_tiles + 15, 20, 3, TRUE);
    000357CB FA BA C0         [16] 1053 	ld	a, (#_map_pos_y_tiles)
    000357CE C6 0F            [ 8] 1054 	add	a, #0x0f
    000357D0 5F               [ 4] 1055 	ld	e, a
    000357D1 21 03 01         [12] 1056 	ld	hl, #0x103
    000357D4 E5               [16] 1057 	push	hl
    000357D5 3E 14            [ 8] 1058 	ld	a, #0x14
    000357D7 F5               [16] 1059 	push	af
    000357D8 33               [ 8] 1060 	inc	sp
    000357D9 FA B9 C0         [16] 1061 	ld	a, (#_map_pos_x_tiles)
    000357DC CD 0B 0C         [24] 1062 	call	_DrawWindow
                         000003EF  1063 	C$CoreGameLoop.c$158$2_0$193	= .
                                   1064 	.globl	C$CoreGameLoop.c$158$2_0$193
                                   1065 ;src\CoreGameLoop.c:158: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 15, "NAME", TRUE);
    000357DF FA BA C0         [16] 1066 	ld	a, (#_map_pos_y_tiles)
    000357E2 C6 0F            [ 8] 1067 	add	a, #0x0f
    000357E4 5F               [ 4] 1068 	ld	e, a
    000357E5 21 B9 C0         [12] 1069 	ld	hl, #_map_pos_x_tiles
    000357E8 4E               [ 8] 1070 	ld	c, (hl)
    000357E9 0C               [ 4] 1071 	inc	c
    000357EA 3E 01            [ 8] 1072 	ld	a, #0x01
    000357EC F5               [16] 1073 	push	af
    000357ED 33               [ 8] 1074 	inc	sp
    000357EE 21 74 58         [12] 1075 	ld	hl, #___str_8
    000357F1 E5               [16] 1076 	push	hl
    000357F2 79               [ 4] 1077 	ld	a, c
    000357F3 CD B7 09         [24] 1078 	call	_DrawText
                         00000406  1079 	C$CoreGameLoop.c$159$2_0$193	= .
                                   1080 	.globl	C$CoreGameLoop.c$159$2_0$193
                                   1081 ;src\CoreGameLoop.c:159: DrawText(map_pos_x_tiles + 10, map_pos_y_tiles + 15, "HP", TRUE);
    000357F6 FA BA C0         [16] 1082 	ld	a, (#_map_pos_y_tiles)
    000357F9 C6 0F            [ 8] 1083 	add	a, #0x0f
    000357FB 5F               [ 4] 1084 	ld	e, a
    000357FC FA B9 C0         [16] 1085 	ld	a, (#_map_pos_x_tiles)
    000357FF C6 0A            [ 8] 1086 	add	a, #0x0a
    00035801 4F               [ 4] 1087 	ld	c, a
    00035802 3E 01            [ 8] 1088 	ld	a, #0x01
    00035804 F5               [16] 1089 	push	af
    00035805 33               [ 8] 1090 	inc	sp
    00035806 21 79 58         [12] 1091 	ld	hl, #___str_9
    00035809 E5               [16] 1092 	push	hl
    0003580A 79               [ 4] 1093 	ld	a, c
    0003580B CD B7 09         [24] 1094 	call	_DrawText
                         0000041E  1095 	C$CoreGameLoop.c$160$2_0$193	= .
                                   1096 	.globl	C$CoreGameLoop.c$160$2_0$193
                                   1097 ;src\CoreGameLoop.c:160: DrawText(map_pos_x_tiles + 14, map_pos_y_tiles + 15, "MP", TRUE);
    0003580E FA BA C0         [16] 1098 	ld	a, (#_map_pos_y_tiles)
    00035811 C6 0F            [ 8] 1099 	add	a, #0x0f
    00035813 5F               [ 4] 1100 	ld	e, a
    00035814 FA B9 C0         [16] 1101 	ld	a, (#_map_pos_x_tiles)
    00035817 C6 0E            [ 8] 1102 	add	a, #0x0e
    00035819 4F               [ 4] 1103 	ld	c, a
    0003581A 3E 01            [ 8] 1104 	ld	a, #0x01
    0003581C F5               [16] 1105 	push	af
    0003581D 33               [ 8] 1106 	inc	sp
    0003581E 21 7C 58         [12] 1107 	ld	hl, #___str_10
    00035821 E5               [16] 1108 	push	hl
    00035822 79               [ 4] 1109 	ld	a, c
    00035823 CD B7 09         [24] 1110 	call	_DrawText
                         00000436  1111 	C$CoreGameLoop.c$161$2_0$193	= .
                                   1112 	.globl	C$CoreGameLoop.c$161$2_0$193
                                   1113 ;src\CoreGameLoop.c:161: DrawText(map_pos_x_tiles + 18, map_pos_y_tiles + 15, "LV", TRUE);
    00035826 FA BA C0         [16] 1114 	ld	a, (#_map_pos_y_tiles)
    00035829 C6 0F            [ 8] 1115 	add	a, #0x0f
    0003582B 5F               [ 4] 1116 	ld	e, a
    0003582C FA B9 C0         [16] 1117 	ld	a, (#_map_pos_x_tiles)
    0003582F C6 12            [ 8] 1118 	add	a, #0x12
    00035831 4F               [ 4] 1119 	ld	c, a
    00035832 3E 01            [ 8] 1120 	ld	a, #0x01
    00035834 F5               [16] 1121 	push	af
    00035835 33               [ 8] 1122 	inc	sp
    00035836 21 7F 58         [12] 1123 	ld	hl, #___str_11
    00035839 E5               [16] 1124 	push	hl
    0003583A 79               [ 4] 1125 	ld	a, c
    0003583B CD B7 09         [24] 1126 	call	_DrawText
    0003583E                       1127 00127$:
                         0000044E  1128 	C$CoreGameLoop.c$163$1_0$181	= .
                                   1129 	.globl	C$CoreGameLoop.c$163$1_0$181
                                   1130 ;src\CoreGameLoop.c:163: if (redraw)
    0003583E FA BD C0         [16] 1131 	ld	a, (#_redraw)
    00035841 B7               [ 4] 1132 	or	a, a
    00035842 28 10            [12] 1133 	jr	Z, 00129$
                         00000454  1134 	C$CoreGameLoop.c$165$2_0$194	= .
                                   1135 	.globl	C$CoreGameLoop.c$165$2_0$194
                                   1136 ;src\CoreGameLoop.c:165: wait_vbl_done();
    00035844 CD BD 01         [24] 1137 	call	_wait_vbl_done
                         00000457  1138 	C$CoreGameLoop.c$166$2_0$194	= .
                                   1139 	.globl	C$CoreGameLoop.c$166$2_0$194
                                   1140 ;src\CoreGameLoop.c:166: set_camera();
    00035847 1E 03            [ 8] 1141 	ld	e, #b_set_camera
    00035849 21 F0 53         [12] 1142 	ld	hl, #_set_camera
    0003584C CD A4 0F         [24] 1143 	call	___sdcc_bcall_ehl
                         0000045F  1144 	C$CoreGameLoop.c$167$2_0$194	= .
                                   1145 	.globl	C$CoreGameLoop.c$167$2_0$194
                                   1146 ;src\CoreGameLoop.c:167: redraw = FALSE;
    0003584F 21 BD C0         [12] 1147 	ld	hl, #_redraw
    00035852 36 00            [12] 1148 	ld	(hl), #0x00
    00035854                       1149 00129$:
                         00000464  1150 	C$CoreGameLoop.c$170$1_0$181	= .
                                   1151 	.globl	C$CoreGameLoop.c$170$1_0$181
                                   1152 ;src\CoreGameLoop.c:170: return COREGAMELOOP;
    00035854 3E 02            [ 8] 1153 	ld	a, #0x02
                         00000466  1154 	C$CoreGameLoop.c$171$1_0$181	= .
                                   1155 	.globl	C$CoreGameLoop.c$171$1_0$181
                                   1156 ;src\CoreGameLoop.c:171: }
                         00000466  1157 	C$CoreGameLoop.c$171$1_0$181	= .
                                   1158 	.globl	C$CoreGameLoop.c$171$1_0$181
                         00000466  1159 	XG$CoreGameLoopUpdate$0$0	= .
                                   1160 	.globl	XG$CoreGameLoopUpdate$0$0
    00035856 C9               [16] 1161 	ret
                         00000467  1162 FCoreGameLoop$__str_3$0_0$0 == .
    00035857                       1163 ___str_3:
    00035857 43 4F 4D 4D 41 4E 44  1164 	.ascii "COMMAND"
    0003585E 00                    1165 	.db 0x00
                         0000046F  1166 FCoreGameLoop$__str_4$0_0$0 == .
    0003585F                       1167 ___str_4:
    0003585F 54 41 4C 4B           1168 	.ascii "TALK"
    00035863 00                    1169 	.db 0x00
                         00000474  1170 FCoreGameLoop$__str_5$0_0$0 == .
    00035864                       1171 ___str_5:
    00035864 43 48 45 43 4B        1172 	.ascii "CHECK"
    00035869 00                    1173 	.db 0x00
                         0000047A  1174 FCoreGameLoop$__str_6$0_0$0 == .
    0003586A                       1175 ___str_6:
    0003586A 50 53 49              1176 	.ascii "PSI"
    0003586D 00                    1177 	.db 0x00
                         0000047E  1178 FCoreGameLoop$__str_7$0_0$0 == .
    0003586E                       1179 ___str_7:
    0003586E 47 4F 4F 44 53        1180 	.ascii "GOODS"
    00035873 00                    1181 	.db 0x00
                         00000484  1182 FCoreGameLoop$__str_8$0_0$0 == .
    00035874                       1183 ___str_8:
    00035874 4E 41 4D 45           1184 	.ascii "NAME"
    00035878 00                    1185 	.db 0x00
                         00000489  1186 FCoreGameLoop$__str_9$0_0$0 == .
    00035879                       1187 ___str_9:
    00035879 48 50                 1188 	.ascii "HP"
    0003587B 00                    1189 	.db 0x00
                         0000048C  1190 FCoreGameLoop$__str_10$0_0$0 == .
    0003587C                       1191 ___str_10:
    0003587C 4D 50                 1192 	.ascii "MP"
    0003587E 00                    1193 	.db 0x00
                         0000048F  1194 FCoreGameLoop$__str_11$0_0$0 == .
    0003587F                       1195 ___str_11:
    0003587F 4C 56                 1196 	.ascii "LV"
    00035881 00                    1197 	.db 0x00
                                   1198 	.area _CODE_3
                                   1199 	.area _INITIALIZER
                         00000000  1200 FCoreGameLoop$__xinit_mouse$0_0$0 == .
    00001CE3                       1201 __xinit__mouse:
    00001CE3 58 00                 1202 	.dw #0x0058
    00001CE5 60 00                 1203 	.dw #0x0060
    00001CE7 00                    1204 	.db #0x00	; 0
    00001CE8 00                    1205 	.db #0x00	; 0
    00001CE9 03                    1206 	.db #0x03	; 3
    00001CEA 00                    1207 	.db #0x00	; 0
    00001CEB 00                    1208 	.db #0x00	; 0
    00001CEC 00                    1209 	.db #0x00	; 0
    00001CED 00                    1210 	.db #0x00	; 0
    00001CEE 00                    1211 	.db #0x00	; 0
                                   1212 	.area _CABS (ABS)
