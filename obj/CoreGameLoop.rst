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
                                     11 	.globl _CoreGameLoopUpdate
                                     12 	.globl _CoreGameLoopSetup
                                     13 	.globl _set_camera
                                     14 	.globl _DrawWindow
                                     15 	.globl _fadeFromBlack
                                     16 	.globl _fadeToBlack
                                     17 	.globl _DrawText
                                     18 	.globl _DrawNumber
                                     19 	.globl _DrawPlayer
                                     20 	.globl _PlayerUpdate
                                     21 	.globl _set_sprite_data
                                     22 	.globl _set_bkg_submap
                                     23 	.globl _set_bkg_data
                                     24 	.globl _wait_vbl_done
                                     25 	.globl _joypad
                                     26 	.globl _mouse
                                     27 	.globl _camera_pixel_goal_y
                                     28 	.globl _camera_pixel_goal_x
                                     29 	.globl _redraw
                                     30 	.globl _old_map_pos_y_tiles
                                     31 	.globl _old_map_pos_x_tiles
                                     32 	.globl _map_pos_y_tiles
                                     33 	.globl _map_pos_x_tiles
                                     34 	.globl _old_camera_y_pixels
                                     35 	.globl _old_camera_x_pixels
                                     36 	.globl _camera_y_pixels
                                     37 	.globl _camera_x_pixels
                                     38 ;--------------------------------------------------------
                                     39 ; special function registers
                                     40 ;--------------------------------------------------------
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area _DATA
                         00000000    45 G$camera_x_pixels$0_0$0==.
    0000C0B1                         46 _camera_x_pixels::
    0000C0B1                         47 	.ds 2
                         00000002    48 G$camera_y_pixels$0_0$0==.
    0000C0B3                         49 _camera_y_pixels::
    0000C0B3                         50 	.ds 2
                         00000004    51 G$old_camera_x_pixels$0_0$0==.
    0000C0B5                         52 _old_camera_x_pixels::
    0000C0B5                         53 	.ds 2
                         00000006    54 G$old_camera_y_pixels$0_0$0==.
    0000C0B7                         55 _old_camera_y_pixels::
    0000C0B7                         56 	.ds 2
                         00000008    57 G$map_pos_x_tiles$0_0$0==.
    0000C0B9                         58 _map_pos_x_tiles::
    0000C0B9                         59 	.ds 1
                         00000009    60 G$map_pos_y_tiles$0_0$0==.
    0000C0BA                         61 _map_pos_y_tiles::
    0000C0BA                         62 	.ds 1
                         0000000A    63 G$old_map_pos_x_tiles$0_0$0==.
    0000C0BB                         64 _old_map_pos_x_tiles::
    0000C0BB                         65 	.ds 1
                         0000000B    66 G$old_map_pos_y_tiles$0_0$0==.
    0000C0BC                         67 _old_map_pos_y_tiles::
    0000C0BC                         68 	.ds 1
                         0000000C    69 G$redraw$0_0$0==.
    0000C0BD                         70 _redraw::
    0000C0BD                         71 	.ds 1
                         0000000D    72 G$camera_pixel_goal_x$0_0$0==.
    0000C0BE                         73 _camera_pixel_goal_x::
    0000C0BE                         74 	.ds 1
                         0000000E    75 G$camera_pixel_goal_y$0_0$0==.
    0000C0BF                         76 _camera_pixel_goal_y::
    0000C0BF                         77 	.ds 1
                                     78 ;--------------------------------------------------------
                                     79 ; ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area _INITIALIZED
                         00000000    82 G$mouse$0_0$0==.
    0000CD70                         83 _mouse::
    0000CD70                         84 	.ds 12
                                     85 ;--------------------------------------------------------
                                     86 ; absolute external ram data
                                     87 ;--------------------------------------------------------
                                     88 	.area _DABS (ABS)
                                     89 ;--------------------------------------------------------
                                     90 ; global & static initialisations
                                     91 ;--------------------------------------------------------
                                     92 	.area _HOME
                                     93 	.area _GSINIT
                                     94 	.area _GSFINAL
                                     95 	.area _GSINIT
                                     96 ;--------------------------------------------------------
                                     97 ; Home
                                     98 ;--------------------------------------------------------
                                     99 	.area _HOME
                                    100 	.area _HOME
                                    101 ;--------------------------------------------------------
                                    102 ; code
                                    103 ;--------------------------------------------------------
                                    104 	.area _CODE
                         00000000   105 	G$set_camera$0$0	= .
                                    106 	.globl	G$set_camera$0$0
                         00000000   107 	C$CoreGameLoop.c$22$0_0$146	= .
                                    108 	.globl	C$CoreGameLoop.c$22$0_0$146
                                    109 ;src\CoreGameLoop.c:22: void set_camera(void)
                                    110 ;	---------------------------------
                                    111 ; Function set_camera
                                    112 ; ---------------------------------
    000029A7                        113 _set_camera::
    000029A7 E8 FD            [16]  114 	add	sp, #-3
                         00000002   115 	C$CoreGameLoop.c$25$1_0$146	= .
                                    116 	.globl	C$CoreGameLoop.c$25$1_0$146
                                    117 ;src\CoreGameLoop.c:25: SCY_REG = camera_y_pixels; SCX_REG = camera_x_pixels;
    000029A9 FA B3 C0         [16]  118 	ld	a, (#_camera_y_pixels)
    000029AC E0 42            [12]  119 	ldh	(_SCY_REG + 0), a
    000029AE FA B1 C0         [16]  120 	ld	a, (#_camera_x_pixels)
    000029B1 E0 43            [12]  121 	ldh	(_SCX_REG + 0), a
                         0000000C   122 	C$CoreGameLoop.c$27$1_0$146	= .
                                    123 	.globl	C$CoreGameLoop.c$27$1_0$146
                                    124 ;src\CoreGameLoop.c:27: map_pos_y_tiles = (uint8_t)(camera_y_pixels >> 3u);
    000029B3 21 B3 C0         [12]  125 	ld	hl, #_camera_y_pixels
    000029B6 2A               [ 8]  126 	ld	a, (hl+)
    000029B7 4F               [ 4]  127 	ld	c, a
    000029B8 46               [ 8]  128 	ld	b, (hl)
    000029B9 CB 38            [ 8]  129 	srl	b
    000029BB CB 19            [ 8]  130 	rr	c
    000029BD CB 38            [ 8]  131 	srl	b
    000029BF CB 19            [ 8]  132 	rr	c
    000029C1 CB 38            [ 8]  133 	srl	b
    000029C3 CB 19            [ 8]  134 	rr	c
    000029C5 21 BA C0         [12]  135 	ld	hl, #_map_pos_y_tiles
    000029C8 71               [ 8]  136 	ld	(hl), c
                         00000022   137 	C$CoreGameLoop.c$32$1_0$146	= .
                                    138 	.globl	C$CoreGameLoop.c$32$1_0$146
                                    139 ;src\CoreGameLoop.c:32: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    000029C9 4E               [ 8]  140 	ld	c, (hl)
                         00000023   141 	C$CoreGameLoop.c$28$1_0$146	= .
                                    142 	.globl	C$CoreGameLoop.c$28$1_0$146
                                    143 ;src\CoreGameLoop.c:28: if (map_pos_y_tiles != old_map_pos_y_tiles)
    000029CA 7E               [ 8]  144 	ld	a, (hl)
    000029CB 21 BC C0         [12]  145 	ld	hl, #_old_map_pos_y_tiles
    000029CE 96               [ 8]  146 	sub	a, (hl)
    000029CF CA 79 2A         [16]  147 	jp	Z,00107$
                         0000002B   148 	C$CoreGameLoop.c$32$1_0$146	= .
                                    149 	.globl	C$CoreGameLoop.c$32$1_0$146
                                    150 ;src\CoreGameLoop.c:32: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    000029D2 21 B9 C0         [12]  151 	ld	hl, #_map_pos_x_tiles
    000029D5 5E               [ 8]  152 	ld	e, (hl)
    000029D6 16 00            [ 8]  153 	ld	d, #0x00
    000029D8 46               [ 8]  154 	ld	b, (hl)
    000029D9 7E               [ 8]  155 	ld	a, (hl)
    000029DA F8 00            [12]  156 	ldhl	sp,	#0
    000029DC 22               [ 8]  157 	ld	(hl+), a
    000029DD 3E 31            [ 8]  158 	ld	a, #0x31
    000029DF 93               [ 4]  159 	sub	a, e
    000029E0 5F               [ 4]  160 	ld	e, a
    000029E1 9F               [ 4]  161 	sbc	a, a
    000029E2 92               [ 4]  162 	sub	a, d
    000029E3 57               [ 4]  163 	ld	d, a
    000029E4 3E 31            [ 8]  164 	ld	a, #0x31
    000029E6 90               [ 4]  165 	sub	a, b
    000029E7 22               [ 8]  166 	ld	(hl+), a
    000029E8 07               [ 4]  167 	rlca
    000029E9 9F               [ 4]  168 	sbc	a, a
    000029EA 77               [ 8]  169 	ld	(hl), a
    000029EB 3E 15            [ 8]  170 	ld	a, #0x15
    000029ED BB               [ 4]  171 	cp	a, e
    000029EE 3E 00            [ 8]  172 	ld	a, #0x00
    000029F0 9A               [ 4]  173 	sbc	a, d
    000029F1 3E 00            [ 8]  174 	ld	a, #0x00
    000029F3 17               [ 4]  175 	rla
    000029F4 47               [ 4]  176 	ld	b, a
                         0000004E   177 	C$CoreGameLoop.c$30$2_0$147	= .
                                    178 	.globl	C$CoreGameLoop.c$30$2_0$147
                                    179 ;src\CoreGameLoop.c:30: if (camera_y_pixels < old_camera_y_pixels) // if camera is moving up
    000029F5 11 B3 C0         [12]  180 	ld	de, #_camera_y_pixels
    000029F8 21 B7 C0         [12]  181 	ld	hl, #_old_camera_y_pixels
    000029FB 1A               [ 8]  182 	ld	a, (de)
    000029FC 13               [ 8]  183 	inc	de
    000029FD 96               [ 8]  184 	sub	a, (hl)
    000029FE 23               [ 8]  185 	inc	hl
    000029FF 1A               [ 8]  186 	ld	a, (de)
    00002A00 9E               [ 8]  187 	sbc	a, (hl)
    00002A01 30 30            [12]  188 	jr	NC, 00104$
                                    189 ;src\CoreGameLoop.c:32: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00002A03 78               [ 4]  190 	ld	a, b
    00002A04 B7               [ 4]  191 	or	a, a
    00002A05 28 04            [12]  192 	jr	Z, 00121$
    00002A07 3E 15            [ 8]  193 	ld	a, #0x15
    00002A09 18 04            [12]  194 	jr	00122$
    00002A0B                        195 00121$:
    00002A0B F8 01            [12]  196 	ldhl	sp,	#1
    00002A0D 2A               [ 8]  197 	ld	a, (hl+)
    00002A0E 46               [ 8]  198 	ld	b, (hl)
    00002A0F                        199 00122$:
                                    200 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00002A0F 21 06 DC         [12]  201 	ld	hl, #__submap_tile_offset
    00002A12 36 80            [12]  202 	ld	(hl), #0x80
                                    203 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00002A14 26 31            [ 8]  204 	ld	h, #0x31
                                    205 ;	spillPairReg hl
                                    206 ;	spillPairReg hl
    00002A16 E5               [16]  207 	push	hl
    00002A17 33               [ 8]  208 	inc	sp
    00002A18 11 C9 C0         [12]  209 	ld	de, #_Home
    00002A1B D5               [16]  210 	push	de
    00002A1C 26 01            [ 8]  211 	ld	h, #0x01
                                    212 ;	spillPairReg hl
                                    213 ;	spillPairReg hl
    00002A1E E5               [16]  214 	push	hl
    00002A1F 33               [ 8]  215 	inc	sp
    00002A20 47               [ 4]  216 	ld	b, a
    00002A21 C5               [16]  217 	push	bc
    00002A22 F8 06            [12]  218 	ldhl	sp,	#6
    00002A24 7E               [ 8]  219 	ld	a, (hl)
    00002A25 F5               [16]  220 	push	af
    00002A26 33               [ 8]  221 	inc	sp
    00002A27 CD 40 63         [24]  222 	call	_set_bkg_submap
    00002A2A E8 07            [16]  223 	add	sp, #7
                                    224 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00002A2C 21 06 DC         [12]  225 	ld	hl, #__submap_tile_offset
    00002A2F 36 00            [12]  226 	ld	(hl), #0x00
                         0000008A   227 	C$CoreGameLoop.c$32$2_0$147	= .
                                    228 	.globl	C$CoreGameLoop.c$32$2_0$147
                                    229 ;src\CoreGameLoop.c:32: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00002A31 18 3E            [12]  230 	jr	00105$
    00002A33                        231 00104$:
                         0000008C   232 	C$CoreGameLoop.c$36$3_0$149	= .
                                    233 	.globl	C$CoreGameLoop.c$36$3_0$149
                                    234 ;src\CoreGameLoop.c:36: if ((HomeHeight - 18u) > map_pos_y_tiles) // (have we touched the bottom of the map?) if not then...
    00002A33 FA BA C0         [16]  235 	ld	a, (#_map_pos_y_tiles)
    00002A36 D6 30            [ 8]  236 	sub	a, #0x30
    00002A38 30 37            [12]  237 	jr	NC, 00105$
                                    238 ;src\CoreGameLoop.c:38: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00002A3A 11 C9 C0         [12]  239 	ld	de, #_Home
    00002A3D 78               [ 4]  240 	ld	a, b
    00002A3E B7               [ 4]  241 	or	a, a
    00002A3F 28 04            [12]  242 	jr	Z, 00123$
    00002A41 0E 15            [ 8]  243 	ld	c, #0x15
    00002A43 18 05            [12]  244 	jr	00124$
    00002A45                        245 00123$:
    00002A45 F8 01            [12]  246 	ldhl	sp,	#1
    00002A47 2A               [ 8]  247 	ld	a, (hl+)
    00002A48 4F               [ 4]  248 	ld	c, a
    00002A49 7E               [ 8]  249 	ld	a, (hl)
    00002A4A                        250 00124$:
    00002A4A FA BA C0         [16]  251 	ld	a, (#_map_pos_y_tiles)
    00002A4D C6 12            [ 8]  252 	add	a, #0x12
                                    253 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00002A4F 21 06 DC         [12]  254 	ld	hl, #__submap_tile_offset
    00002A52 36 80            [12]  255 	ld	(hl), #0x80
                                    256 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00002A54 26 31            [ 8]  257 	ld	h, #0x31
                                    258 ;	spillPairReg hl
                                    259 ;	spillPairReg hl
    00002A56 E5               [16]  260 	push	hl
    00002A57 33               [ 8]  261 	inc	sp
    00002A58 D5               [16]  262 	push	de
    00002A59 26 01            [ 8]  263 	ld	h, #0x01
                                    264 ;	spillPairReg hl
                                    265 ;	spillPairReg hl
    00002A5B E5               [16]  266 	push	hl
    00002A5C 33               [ 8]  267 	inc	sp
    00002A5D 61               [ 4]  268 	ld	h, c
                                    269 ;	spillPairReg hl
                                    270 ;	spillPairReg hl
    00002A5E E5               [16]  271 	push	hl
    00002A5F 33               [ 8]  272 	inc	sp
    00002A60 F5               [16]  273 	push	af
    00002A61 33               [ 8]  274 	inc	sp
    00002A62 F8 06            [12]  275 	ldhl	sp,	#6
    00002A64 7E               [ 8]  276 	ld	a, (hl)
    00002A65 F5               [16]  277 	push	af
    00002A66 33               [ 8]  278 	inc	sp
    00002A67 CD 40 63         [24]  279 	call	_set_bkg_submap
    00002A6A E8 07            [16]  280 	add	sp, #7
                                    281 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00002A6C 21 06 DC         [12]  282 	ld	hl, #__submap_tile_offset
    00002A6F 36 00            [12]  283 	ld	(hl), #0x00
                         000000CA   284 	C$CoreGameLoop.c$38$2_0$147	= .
                                    285 	.globl	C$CoreGameLoop.c$38$2_0$147
                                    286 ;src\CoreGameLoop.c:38: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00002A71                        287 00105$:
                         000000CA   288 	C$CoreGameLoop.c$32$1_0$146	= .
                                    289 	.globl	C$CoreGameLoop.c$32$1_0$146
                                    290 ;src\CoreGameLoop.c:32: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
    00002A71 21 BA C0         [12]  291 	ld	hl, #_map_pos_y_tiles
    00002A74 4E               [ 8]  292 	ld	c, (hl)
                         000000CE   293 	C$CoreGameLoop.c$41$2_0$147	= .
                                    294 	.globl	C$CoreGameLoop.c$41$2_0$147
                                    295 ;src\CoreGameLoop.c:41: old_map_pos_y_tiles = map_pos_y_tiles;
    00002A75 21 BC C0         [12]  296 	ld	hl, #_old_map_pos_y_tiles
    00002A78 71               [ 8]  297 	ld	(hl), c
    00002A79                        298 00107$:
                         000000D2   299 	C$CoreGameLoop.c$44$1_0$146	= .
                                    300 	.globl	C$CoreGameLoop.c$44$1_0$146
                                    301 ;src\CoreGameLoop.c:44: map_pos_x_tiles = (uint8_t)(camera_x_pixels >> 3u);
    00002A79 21 B1 C0         [12]  302 	ld	hl, #_camera_x_pixels
    00002A7C 2A               [ 8]  303 	ld	a, (hl+)
    00002A7D 47               [ 4]  304 	ld	b, a
    00002A7E 5E               [ 8]  305 	ld	e, (hl)
    00002A7F CB 3B            [ 8]  306 	srl	e
    00002A81 CB 18            [ 8]  307 	rr	b
    00002A83 CB 3B            [ 8]  308 	srl	e
    00002A85 CB 18            [ 8]  309 	rr	b
    00002A87 CB 3B            [ 8]  310 	srl	e
    00002A89 CB 18            [ 8]  311 	rr	b
    00002A8B 21 B9 C0         [12]  312 	ld	hl, #_map_pos_x_tiles
    00002A8E 70               [ 8]  313 	ld	(hl), b
                         000000E8   314 	C$CoreGameLoop.c$45$1_0$146	= .
                                    315 	.globl	C$CoreGameLoop.c$45$1_0$146
                                    316 ;src\CoreGameLoop.c:45: if (map_pos_x_tiles != old_map_pos_x_tiles)
    00002A8F 7E               [ 8]  317 	ld	a, (hl)
    00002A90 21 BB C0         [12]  318 	ld	hl, #_old_map_pos_x_tiles
    00002A93 96               [ 8]  319 	sub	a, (hl)
    00002A94 CA 31 2B         [16]  320 	jp	Z,00114$
                         000000F0   321 	C$CoreGameLoop.c$49$1_0$146	= .
                                    322 	.globl	C$CoreGameLoop.c$49$1_0$146
                                    323 ;src\CoreGameLoop.c:49: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00002A97 21 BA C0         [12]  324 	ld	hl, #_map_pos_y_tiles
    00002A9A 5E               [ 8]  325 	ld	e, (hl)
    00002A9B 06 00            [ 8]  326 	ld	b, #0x00
    00002A9D 56               [ 8]  327 	ld	d, (hl)
    00002A9E 3E 42            [ 8]  328 	ld	a, #0x42
    00002AA0 93               [ 4]  329 	sub	a, e
    00002AA1 6F               [ 4]  330 	ld	l, a
                                    331 ;	spillPairReg hl
                                    332 ;	spillPairReg hl
    00002AA2 9F               [ 4]  333 	sbc	a, a
    00002AA3 90               [ 4]  334 	sub	a, b
    00002AA4 67               [ 4]  335 	ld	h, a
                                    336 ;	spillPairReg hl
                                    337 ;	spillPairReg hl
    00002AA5 3E 42            [ 8]  338 	ld	a, #0x42
    00002AA7 92               [ 4]  339 	sub	a, d
    00002AA8 5F               [ 4]  340 	ld	e, a
    00002AA9 07               [ 4]  341 	rlca
    00002AAA 9F               [ 4]  342 	sbc	a, a
    00002AAB 57               [ 4]  343 	ld	d, a
    00002AAC 3E 13            [ 8]  344 	ld	a, #0x13
    00002AAE BD               [ 4]  345 	cp	a, l
    00002AAF 3E 00            [ 8]  346 	ld	a, #0x00
    00002AB1 9C               [ 4]  347 	sbc	a, h
    00002AB2 3E 00            [ 8]  348 	ld	a, #0x00
    00002AB4 17               [ 4]  349 	rla
    00002AB5 47               [ 4]  350 	ld	b, a
                         0000010F   351 	C$CoreGameLoop.c$47$2_0$151	= .
                                    352 	.globl	C$CoreGameLoop.c$47$2_0$151
                                    353 ;src\CoreGameLoop.c:47: if (camera_x_pixels < old_camera_x_pixels)
    00002AB6 D5               [16]  354 	push	de
    00002AB7 11 B1 C0         [12]  355 	ld	de, #_camera_x_pixels
    00002ABA 21 B5 C0         [12]  356 	ld	hl, #_old_camera_x_pixels
    00002ABD 1A               [ 8]  357 	ld	a, (de)
    00002ABE 13               [ 8]  358 	inc	de
    00002ABF 96               [ 8]  359 	sub	a, (hl)
    00002AC0 23               [ 8]  360 	inc	hl
    00002AC1 1A               [ 8]  361 	ld	a, (de)
    00002AC2 9E               [ 8]  362 	sbc	a, (hl)
    00002AC3 D1               [12]  363 	pop	de
    00002AC4 30 2F            [12]  364 	jr	NC, 00111$
                                    365 ;src\CoreGameLoop.c:49: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00002AC6 78               [ 4]  366 	ld	a, b
    00002AC7 B7               [ 4]  367 	or	a, a
    00002AC8 28 03            [12]  368 	jr	Z, 00125$
    00002ACA 11 13 00         [12]  369 	ld	de, #0x0013
    00002ACD                        370 00125$:
    00002ACD 43               [ 4]  371 	ld	b, e
    00002ACE FA B9 C0         [16]  372 	ld	a, (#_map_pos_x_tiles)
                                    373 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00002AD1 21 06 DC         [12]  374 	ld	hl, #__submap_tile_offset
    00002AD4 36 80            [12]  375 	ld	(hl), #0x80
                                    376 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00002AD6 26 31            [ 8]  377 	ld	h, #0x31
                                    378 ;	spillPairReg hl
                                    379 ;	spillPairReg hl
    00002AD8 E5               [16]  380 	push	hl
    00002AD9 33               [ 8]  381 	inc	sp
    00002ADA 11 C9 C0         [12]  382 	ld	de, #_Home
    00002ADD D5               [16]  383 	push	de
    00002ADE C5               [16]  384 	push	bc
    00002ADF 33               [ 8]  385 	inc	sp
    00002AE0 26 01            [ 8]  386 	ld	h, #0x01
                                    387 ;	spillPairReg hl
                                    388 ;	spillPairReg hl
    00002AE2 E5               [16]  389 	push	hl
    00002AE3 33               [ 8]  390 	inc	sp
    00002AE4 61               [ 4]  391 	ld	h, c
                                    392 ;	spillPairReg hl
                                    393 ;	spillPairReg hl
    00002AE5 E5               [16]  394 	push	hl
    00002AE6 33               [ 8]  395 	inc	sp
    00002AE7 F5               [16]  396 	push	af
    00002AE8 33               [ 8]  397 	inc	sp
    00002AE9 CD 40 63         [24]  398 	call	_set_bkg_submap
    00002AEC E8 07            [16]  399 	add	sp, #7
                                    400 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00002AEE 21 06 DC         [12]  401 	ld	hl, #__submap_tile_offset
    00002AF1 36 00            [12]  402 	ld	(hl), #0x00
                         0000014C   403 	C$CoreGameLoop.c$49$2_0$151	= .
                                    404 	.globl	C$CoreGameLoop.c$49$2_0$151
                                    405 ;src\CoreGameLoop.c:49: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00002AF3 18 36            [12]  406 	jr	00112$
    00002AF5                        407 00111$:
                         0000014E   408 	C$CoreGameLoop.c$53$3_0$153	= .
                                    409 	.globl	C$CoreGameLoop.c$53$3_0$153
                                    410 ;src\CoreGameLoop.c:53: if ((HomeWidth - 20u) > map_pos_x_tiles)
    00002AF5 FA B9 C0         [16]  411 	ld	a, (#_map_pos_x_tiles)
    00002AF8 D6 1D            [ 8]  412 	sub	a, #0x1d
    00002AFA 30 2F            [12]  413 	jr	NC, 00112$
                                    414 ;src\CoreGameLoop.c:55: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00002AFC 78               [ 4]  415 	ld	a, b
    00002AFD B7               [ 4]  416 	or	a, a
    00002AFE 28 03            [12]  417 	jr	Z, 00127$
    00002B00 11 13 00         [12]  418 	ld	de, #0x0013
    00002B03                        419 00127$:
    00002B03 43               [ 4]  420 	ld	b, e
    00002B04 FA B9 C0         [16]  421 	ld	a, (#_map_pos_x_tiles)
    00002B07 C6 14            [ 8]  422 	add	a, #0x14
                                    423 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00002B09 21 06 DC         [12]  424 	ld	hl, #__submap_tile_offset
    00002B0C 36 80            [12]  425 	ld	(hl), #0x80
                                    426 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00002B0E 26 31            [ 8]  427 	ld	h, #0x31
                                    428 ;	spillPairReg hl
                                    429 ;	spillPairReg hl
    00002B10 E5               [16]  430 	push	hl
    00002B11 33               [ 8]  431 	inc	sp
    00002B12 11 C9 C0         [12]  432 	ld	de, #_Home
    00002B15 D5               [16]  433 	push	de
    00002B16 C5               [16]  434 	push	bc
    00002B17 33               [ 8]  435 	inc	sp
    00002B18 26 01            [ 8]  436 	ld	h, #0x01
                                    437 ;	spillPairReg hl
                                    438 ;	spillPairReg hl
    00002B1A E5               [16]  439 	push	hl
    00002B1B 33               [ 8]  440 	inc	sp
    00002B1C 61               [ 4]  441 	ld	h, c
                                    442 ;	spillPairReg hl
                                    443 ;	spillPairReg hl
    00002B1D E5               [16]  444 	push	hl
    00002B1E 33               [ 8]  445 	inc	sp
    00002B1F F5               [16]  446 	push	af
    00002B20 33               [ 8]  447 	inc	sp
    00002B21 CD 40 63         [24]  448 	call	_set_bkg_submap
    00002B24 E8 07            [16]  449 	add	sp, #7
                                    450 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00002B26 21 06 DC         [12]  451 	ld	hl, #__submap_tile_offset
    00002B29 36 00            [12]  452 	ld	(hl), #0x00
                         00000184   453 	C$CoreGameLoop.c$55$2_0$151	= .
                                    454 	.globl	C$CoreGameLoop.c$55$2_0$151
                                    455 ;src\CoreGameLoop.c:55: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
    00002B2B                        456 00112$:
                         00000184   457 	C$CoreGameLoop.c$58$2_0$151	= .
                                    458 	.globl	C$CoreGameLoop.c$58$2_0$151
                                    459 ;src\CoreGameLoop.c:58: old_map_pos_x_tiles = map_pos_x_tiles;
    00002B2B FA B9 C0         [16]  460 	ld	a, (#_map_pos_x_tiles)
    00002B2E EA BB C0         [16]  461 	ld	(#_old_map_pos_x_tiles),a
    00002B31                        462 00114$:
                         0000018A   463 	C$CoreGameLoop.c$61$1_0$146	= .
                                    464 	.globl	C$CoreGameLoop.c$61$1_0$146
                                    465 ;src\CoreGameLoop.c:61: old_camera_x_pixels = camera_x_pixels, old_camera_y_pixels = camera_y_pixels;
    00002B31 FA B1 C0         [16]  466 	ld	a, (#_camera_x_pixels)
    00002B34 EA B5 C0         [16]  467 	ld	(#_old_camera_x_pixels),a
    00002B37 FA B2 C0         [16]  468 	ld	a, (#_camera_x_pixels + 1)
    00002B3A EA B6 C0         [16]  469 	ld	(#_old_camera_x_pixels + 1),a
    00002B3D FA B3 C0         [16]  470 	ld	a, (#_camera_y_pixels)
    00002B40 EA B7 C0         [16]  471 	ld	(#_old_camera_y_pixels),a
    00002B43 FA B4 C0         [16]  472 	ld	a, (#_camera_y_pixels + 1)
    00002B46 EA B8 C0         [16]  473 	ld	(#_old_camera_y_pixels + 1),a
                         000001A2   474 	C$CoreGameLoop.c$63$1_0$146	= .
                                    475 	.globl	C$CoreGameLoop.c$63$1_0$146
                                    476 ;src\CoreGameLoop.c:63: DrawNumber(2, 1, map_pos_x_tiles, 4, FALSE);
    00002B49 21 B9 C0         [12]  477 	ld	hl, #_map_pos_x_tiles
    00002B4C 4E               [ 8]  478 	ld	c, (hl)
    00002B4D 06 00            [ 8]  479 	ld	b, #0x00
    00002B4F 21 04 00         [12]  480 	ld	hl, #0x04
    00002B52 E5               [16]  481 	push	hl
    00002B53 C5               [16]  482 	push	bc
    00002B54 1E 01            [ 8]  483 	ld	e, #0x01
    00002B56 3E 02            [ 8]  484 	ld	a, #0x02
    00002B58 CD AA 24         [24]  485 	call	_DrawNumber
                         000001B4   486 	C$CoreGameLoop.c$64$1_0$146	= .
                                    487 	.globl	C$CoreGameLoop.c$64$1_0$146
                                    488 ;src\CoreGameLoop.c:64: DrawText(0, 1, "X:", FALSE);
    00002B5B AF               [ 4]  489 	xor	a, a
    00002B5C F5               [16]  490 	push	af
    00002B5D 33               [ 8]  491 	inc	sp
    00002B5E 11 8A 2B         [12]  492 	ld	de, #___str_0
    00002B61 D5               [16]  493 	push	de
    00002B62 1E 01            [ 8]  494 	ld	e, #0x01
    00002B64 AF               [ 4]  495 	xor	a, a
    00002B65 CD 84 25         [24]  496 	call	_DrawText
                         000001C1   497 	C$CoreGameLoop.c$65$1_0$146	= .
                                    498 	.globl	C$CoreGameLoop.c$65$1_0$146
                                    499 ;src\CoreGameLoop.c:65: DrawNumber(2, 3, map_pos_y_tiles, 4, FALSE);
    00002B68 21 BA C0         [12]  500 	ld	hl, #_map_pos_y_tiles
    00002B6B 4E               [ 8]  501 	ld	c, (hl)
    00002B6C 06 00            [ 8]  502 	ld	b, #0x00
    00002B6E 21 04 00         [12]  503 	ld	hl, #0x04
    00002B71 E5               [16]  504 	push	hl
    00002B72 C5               [16]  505 	push	bc
    00002B73 1E 03            [ 8]  506 	ld	e, #0x03
    00002B75 3E 02            [ 8]  507 	ld	a, #0x02
    00002B77 CD AA 24         [24]  508 	call	_DrawNumber
                         000001D3   509 	C$CoreGameLoop.c$66$1_0$146	= .
                                    510 	.globl	C$CoreGameLoop.c$66$1_0$146
                                    511 ;src\CoreGameLoop.c:66: DrawText(0, 3, "Y:", FALSE);
    00002B7A AF               [ 4]  512 	xor	a, a
    00002B7B F5               [16]  513 	push	af
    00002B7C 33               [ 8]  514 	inc	sp
    00002B7D 11 8D 2B         [12]  515 	ld	de, #___str_1
    00002B80 D5               [16]  516 	push	de
    00002B81 1E 03            [ 8]  517 	ld	e, #0x03
    00002B83 AF               [ 4]  518 	xor	a, a
    00002B84 CD 84 25         [24]  519 	call	_DrawText
                         000001E0   520 	C$CoreGameLoop.c$67$1_0$146	= .
                                    521 	.globl	C$CoreGameLoop.c$67$1_0$146
                                    522 ;src\CoreGameLoop.c:67: }
    00002B87 E8 03            [16]  523 	add	sp, #3
                         000001E2   524 	C$CoreGameLoop.c$67$1_0$146	= .
                                    525 	.globl	C$CoreGameLoop.c$67$1_0$146
                         000001E2   526 	XG$set_camera$0$0	= .
                                    527 	.globl	XG$set_camera$0$0
    00002B89 C9               [16]  528 	ret
                         000001E3   529 FCoreGameLoop$__str_0$0_0$0 == .
    00002B8A                        530 ___str_0:
    00002B8A 58 3A                  531 	.ascii "X:"
    00002B8C 00                     532 	.db 0x00
                         000001E6   533 FCoreGameLoop$__str_1$0_0$0 == .
    00002B8D                        534 ___str_1:
    00002B8D 59 3A                  535 	.ascii "Y:"
    00002B8F 00                     536 	.db 0x00
                         000001E9   537 	G$CoreGameLoopSetup$0$0	= .
                                    538 	.globl	G$CoreGameLoopSetup$0$0
                         000001E9   539 	C$CoreGameLoop.c$71$1_0$168	= .
                                    540 	.globl	C$CoreGameLoop.c$71$1_0$168
                                    541 ;src\CoreGameLoop.c:71: void CoreGameLoopSetup(void)
                                    542 ;	---------------------------------
                                    543 ; Function CoreGameLoopSetup
                                    544 ; ---------------------------------
    00002B90                        545 _CoreGameLoopSetup::
                         000001E9   546 	C$CoreGameLoop.c$74$1_0$168	= .
                                    547 	.globl	C$CoreGameLoop.c$74$1_0$168
                                    548 ;src\CoreGameLoop.c:74: map_pos_x_tiles = map_pos_y_tiles = 0;
    00002B90 21 BA C0         [12]  549 	ld	hl, #_map_pos_y_tiles
    00002B93 36 00            [12]  550 	ld	(hl), #0x00
    00002B95 21 B9 C0         [12]  551 	ld	hl, #_map_pos_x_tiles
    00002B98 36 00            [12]  552 	ld	(hl), #0x00
                         000001F3   553 	C$CoreGameLoop.c$75$1_0$168	= .
                                    554 	.globl	C$CoreGameLoop.c$75$1_0$168
                                    555 ;src\CoreGameLoop.c:75: old_map_pos_x_tiles = old_camera_y_pixels = 255; 
    00002B9A 21 BB C0         [12]  556 	ld	hl, #_old_map_pos_x_tiles
    00002B9D 36 FF            [12]  557 	ld	(hl), #0xff
                         000001F8   558 	C$CoreGameLoop.c$76$1_0$168	= .
                                    559 	.globl	C$CoreGameLoop.c$76$1_0$168
                                    560 ;src\CoreGameLoop.c:76: camera_x_pixels = 208;
    00002B9F 21 B1 C0         [12]  561 	ld	hl, #_camera_x_pixels
    00002BA2 3E D0            [ 8]  562 	ld	a, #0xd0
    00002BA4 22               [ 8]  563 	ld	(hl+), a
    00002BA5 AF               [ 4]  564 	xor	a, a
    00002BA6 77               [ 8]  565 	ld	(hl), a
                         00000200   566 	C$CoreGameLoop.c$77$1_0$168	= .
                                    567 	.globl	C$CoreGameLoop.c$77$1_0$168
                                    568 ;src\CoreGameLoop.c:77: camera_y_pixels = 96;
    00002BA7 21 B3 C0         [12]  569 	ld	hl, #_camera_y_pixels
    00002BAA 3E 60            [ 8]  570 	ld	a, #0x60
    00002BAC 22               [ 8]  571 	ld	(hl+), a
    00002BAD AF               [ 4]  572 	xor	a, a
    00002BAE 77               [ 8]  573 	ld	(hl), a
                         00000208   574 	C$CoreGameLoop.c$78$1_0$168	= .
                                    575 	.globl	C$CoreGameLoop.c$78$1_0$168
                                    576 ;src\CoreGameLoop.c:78: old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
    00002BAF 21 B5 C0         [12]  577 	ld	hl, #_old_camera_x_pixels
    00002BB2 3E D0            [ 8]  578 	ld	a, #0xd0
    00002BB4 22               [ 8]  579 	ld	(hl+), a
    00002BB5 AF               [ 4]  580 	xor	a, a
    00002BB6 77               [ 8]  581 	ld	(hl), a
    00002BB7 21 B7 C0         [12]  582 	ld	hl, #_old_camera_y_pixels
    00002BBA 3E 60            [ 8]  583 	ld	a, #0x60
    00002BBC 22               [ 8]  584 	ld	(hl+), a
    00002BBD AF               [ 4]  585 	xor	a, a
    00002BBE 77               [ 8]  586 	ld	(hl), a
                         00000218   587 	C$CoreGameLoop.c$79$1_0$168	= .
                                    588 	.globl	C$CoreGameLoop.c$79$1_0$168
                                    589 ;src\CoreGameLoop.c:79: redraw = FALSE;
    00002BBF 21 BD C0         [12]  590 	ld	hl, #_redraw
    00002BC2 36 00            [12]  591 	ld	(hl), #0x00
                         0000021D   592 	C$CoreGameLoop.c$81$1_0$168	= .
                                    593 	.globl	C$CoreGameLoop.c$81$1_0$168
                                    594 ;src\CoreGameLoop.c:81: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00002BC4 11 DC 46         [12]  595 	ld	de, #_FontTiles
    00002BC7 D5               [16]  596 	push	de
    00002BC8 21 00 35         [12]  597 	ld	hl, #0x3500
    00002BCB E5               [16]  598 	push	hl
    00002BCC CD 08 63         [24]  599 	call	_set_bkg_data
    00002BCF E8 04            [16]  600 	add	sp, #4
                         0000022A   601 	C$CoreGameLoop.c$82$1_0$168	= .
                                    602 	.globl	C$CoreGameLoop.c$82$1_0$168
                                    603 ;src\CoreGameLoop.c:82: set_bkg_data(128, 144, IndoorTiles);
    00002BD1 11 8D 0A         [12]  604 	ld	de, #_IndoorTiles
    00002BD4 D5               [16]  605 	push	de
    00002BD5 21 80 90         [12]  606 	ld	hl, #0x9080
    00002BD8 E5               [16]  607 	push	hl
    00002BD9 CD 08 63         [24]  608 	call	_set_bkg_data
    00002BDC E8 04            [16]  609 	add	sp, #4
                                    610 ;src\CoreGameLoop.c:83: set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
                                    611 ;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
    00002BDE 21 06 DC         [12]  612 	ld	hl, #__submap_tile_offset
    00002BE1 36 80            [12]  613 	ld	(hl), #0x80
                                    614 ;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
    00002BE3 3E 31            [ 8]  615 	ld	a, #0x31
    00002BE5 F5               [16]  616 	push	af
    00002BE6 33               [ 8]  617 	inc	sp
    00002BE7 11 C9 C0         [12]  618 	ld	de, #_Home
    00002BEA D5               [16]  619 	push	de
    00002BEB 21 14 12         [12]  620 	ld	hl, #0x1214
    00002BEE E5               [16]  621 	push	hl
    00002BEF AF               [ 4]  622 	xor	a, a
    00002BF0 0F               [ 4]  623 	rrca
    00002BF1 F5               [16]  624 	push	af
    00002BF2 CD 40 63         [24]  625 	call	_set_bkg_submap
    00002BF5 E8 07            [16]  626 	add	sp, #7
                                    627 ;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
    00002BF7 21 06 DC         [12]  628 	ld	hl, #__submap_tile_offset
    00002BFA 36 00            [12]  629 	ld	(hl), #0x00
                         00000255   630 	C$CoreGameLoop.c$84$1_0$168	= .
                                    631 	.globl	C$CoreGameLoop.c$84$1_0$168
                                    632 ;src\CoreGameLoop.c:84: set_sprite_data(0, 128, Cast_Tiles);
    00002BFC 11 8D 02         [12]  633 	ld	de, #_Cast_Tiles
    00002BFF D5               [16]  634 	push	de
    00002C00 21 00 80         [12]  635 	ld	hl, #0x8000
    00002C03 E5               [16]  636 	push	hl
    00002C04 CD 10 63         [24]  637 	call	_set_sprite_data
    00002C07 E8 04            [16]  638 	add	sp, #4
                         00000262   639 	C$CoreGameLoop.c$85$1_0$168	= .
                                    640 	.globl	C$CoreGameLoop.c$85$1_0$168
                                    641 ;src\CoreGameLoop.c:85: SPRITES_8x16;
    00002C09 F0 40            [12]  642 	ldh	a, (_LCDC_REG + 0)
    00002C0B F6 04            [ 8]  643 	or	a, #0x04
    00002C0D E0 40            [12]  644 	ldh	(_LCDC_REG + 0), a
                         00000268   645 	C$CoreGameLoop.c$86$1_0$168	= .
                                    646 	.globl	C$CoreGameLoop.c$86$1_0$168
                                    647 ;src\CoreGameLoop.c:86: SHOW_BKG;
    00002C0F F0 40            [12]  648 	ldh	a, (_LCDC_REG + 0)
    00002C11 F6 01            [ 8]  649 	or	a, #0x01
    00002C13 E0 40            [12]  650 	ldh	(_LCDC_REG + 0), a
                         0000026E   651 	C$CoreGameLoop.c$87$1_0$168	= .
                                    652 	.globl	C$CoreGameLoop.c$87$1_0$168
                                    653 ;src\CoreGameLoop.c:87: SHOW_SPRITES;
    00002C15 F0 40            [12]  654 	ldh	a, (_LCDC_REG + 0)
    00002C17 F6 02            [ 8]  655 	or	a, #0x02
    00002C19 E0 40            [12]  656 	ldh	(_LCDC_REG + 0), a
                         00000274   657 	C$CoreGameLoop.c$88$1_0$168	= .
                                    658 	.globl	C$CoreGameLoop.c$88$1_0$168
                                    659 ;src\CoreGameLoop.c:88: set_camera();
    00002C1B CD A7 29         [24]  660 	call	_set_camera
                         00000277   661 	C$CoreGameLoop.c$89$1_0$168	= .
                                    662 	.globl	C$CoreGameLoop.c$89$1_0$168
                                    663 ;src\CoreGameLoop.c:89: fadeFromBlack(10);
    00002C1E 3E 0A            [ 8]  664 	ld	a, #0x0a
    00002C20 CD CA 26         [24]  665 	call	_fadeFromBlack
                         0000027C   666 	C$CoreGameLoop.c$90$1_0$168	= .
                                    667 	.globl	C$CoreGameLoop.c$90$1_0$168
                                    668 ;src\CoreGameLoop.c:90: DrawNumber(1, 1, 31, 4, FALSE);
    00002C23 21 04 00         [12]  669 	ld	hl, #0x04
    00002C26 E5               [16]  670 	push	hl
    00002C27 11 1F 00         [12]  671 	ld	de, #0x001f
    00002C2A D5               [16]  672 	push	de
    00002C2B 3E 01            [ 8]  673 	ld	a,#0x01
    00002C2D 5F               [ 4]  674 	ld	e,a
    00002C2E CD AA 24         [24]  675 	call	_DrawNumber
                         0000028A   676 	C$CoreGameLoop.c$91$1_0$168	= .
                                    677 	.globl	C$CoreGameLoop.c$91$1_0$168
                                    678 ;src\CoreGameLoop.c:91: DrawText(1, 3, "Window Text", FALSE);
    00002C31 AF               [ 4]  679 	xor	a, a
    00002C32 F5               [16]  680 	push	af
    00002C33 33               [ 8]  681 	inc	sp
    00002C34 11 40 2C         [12]  682 	ld	de, #___str_2
    00002C37 D5               [16]  683 	push	de
    00002C38 1E 03            [ 8]  684 	ld	e, #0x03
    00002C3A 3E 01            [ 8]  685 	ld	a, #0x01
    00002C3C CD 84 25         [24]  686 	call	_DrawText
                         00000298   687 	C$CoreGameLoop.c$92$1_0$168	= .
                                    688 	.globl	C$CoreGameLoop.c$92$1_0$168
                                    689 ;src\CoreGameLoop.c:92: }
                         00000298   690 	C$CoreGameLoop.c$92$1_0$168	= .
                                    691 	.globl	C$CoreGameLoop.c$92$1_0$168
                         00000298   692 	XG$CoreGameLoopSetup$0$0	= .
                                    693 	.globl	XG$CoreGameLoopSetup$0$0
    00002C3F C9               [16]  694 	ret
                         00000299   695 FCoreGameLoop$__str_2$0_0$0 == .
    00002C40                        696 ___str_2:
    00002C40 57 69 6E 64 6F 77 20   697 	.ascii "Window Text"
             54 65 78 74
    00002C4B 00                     698 	.db 0x00
                         000002A5   699 	G$CoreGameLoopUpdate$0$0	= .
                                    700 	.globl	G$CoreGameLoopUpdate$0$0
                         000002A5   701 	C$CoreGameLoop.c$96$1_0$173	= .
                                    702 	.globl	C$CoreGameLoop.c$96$1_0$173
                                    703 ;src\CoreGameLoop.c:96: uint8_t CoreGameLoopUpdate(void)
                                    704 ;	---------------------------------
                                    705 ; Function CoreGameLoopUpdate
                                    706 ; ---------------------------------
    00002C4C                        707 _CoreGameLoopUpdate::
                         000002A5   708 	C$CoreGameLoop.c$98$1_0$173	= .
                                    709 	.globl	C$CoreGameLoop.c$98$1_0$173
                                    710 ;src\CoreGameLoop.c:98: joypadCurrent = joypad();
    00002C4C CD F7 63         [24]  711 	call	_joypad
    00002C4F EA 6E CD         [16]  712 	ld	(#_joypadCurrent),a
                         000002AB   713 	C$CoreGameLoop.c$99$1_0$173	= .
                                    714 	.globl	C$CoreGameLoop.c$99$1_0$173
                                    715 ;src\CoreGameLoop.c:99: PlayerUpdate(&mouse);
    00002C52 11 70 CD         [12]  716 	ld	de, #_mouse
    00002C55 CD 5E 15         [24]  717 	call	_PlayerUpdate
                         000002B1   718 	C$CoreGameLoop.c$100$1_0$173	= .
                                    719 	.globl	C$CoreGameLoop.c$100$1_0$173
                                    720 ;src\CoreGameLoop.c:100: DrawPlayer(&mouse);
    00002C58 11 70 CD         [12]  721 	ld	de, #_mouse
    00002C5B CD 94 15         [24]  722 	call	_DrawPlayer
                         000002B7   723 	C$CoreGameLoop.c$105$1_0$173	= .
                                    724 	.globl	C$CoreGameLoop.c$105$1_0$173
                                    725 ;src\CoreGameLoop.c:105: if (joypadCurrent & J_UP) {
    00002C5E 21 6E CD         [12]  726 	ld	hl, #_joypadCurrent
    00002C61 4E               [ 8]  727 	ld	c, (hl)
    00002C62 CB 51            [ 8]  728 	bit	2, c
    00002C64 28 16            [12]  729 	jr	Z, 00108$
                         000002BF   730 	C$CoreGameLoop.c$106$2_0$175	= .
                                    731 	.globl	C$CoreGameLoop.c$106$2_0$175
                                    732 ;src\CoreGameLoop.c:106: if (camera_y_pixels){
    00002C66 21 B4 C0         [12]  733 	ld	hl, #_camera_y_pixels + 1
    00002C69 3A               [ 8]  734 	ld	a, (hl-)
    00002C6A B6               [ 8]  735 	or	a, (hl)
    00002C6B 28 2A            [12]  736 	jr	Z, 00109$
                         000002C6   737 	C$CoreGameLoop.c$107$3_0$176	= .
                                    738 	.globl	C$CoreGameLoop.c$107$3_0$176
                                    739 ;src\CoreGameLoop.c:107: camera_y_pixels--;
    00002C6D 2A               [ 8]  740 	ld	a, (hl+)
    00002C6E 5F               [ 4]  741 	ld	e, a
    00002C6F 3A               [ 8]  742 	ld	a, (hl-)
    00002C70 57               [ 4]  743 	ld	d, a
    00002C71 1B               [ 8]  744 	dec	de
    00002C72 7B               [ 4]  745 	ld	a, e
    00002C73 22               [ 8]  746 	ld	(hl+), a
    00002C74 72               [ 8]  747 	ld	(hl), d
                         000002CE   748 	C$CoreGameLoop.c$108$3_0$176	= .
                                    749 	.globl	C$CoreGameLoop.c$108$3_0$176
                                    750 ;src\CoreGameLoop.c:108: redraw = TRUE;
    00002C75 21 BD C0         [12]  751 	ld	hl, #_redraw
    00002C78 36 01            [12]  752 	ld	(hl), #0x01
    00002C7A 18 1B            [12]  753 	jr	00109$
    00002C7C                        754 00108$:
                         000002D5   755 	C$CoreGameLoop.c$110$1_0$173	= .
                                    756 	.globl	C$CoreGameLoop.c$110$1_0$173
                                    757 ;src\CoreGameLoop.c:110: } else if (joypadCurrent & J_DOWN) {
    00002C7C CB 59            [ 8]  758 	bit	3, c
    00002C7E 28 17            [12]  759 	jr	Z, 00109$
                         000002D9   760 	C$CoreGameLoop.c$111$2_0$177	= .
                                    761 	.globl	C$CoreGameLoop.c$111$2_0$177
                                    762 ;src\CoreGameLoop.c:111: if (camera_y_pixels < HomeCameraMaxY)
    00002C80 21 B3 C0         [12]  763 	ld	hl, #_camera_y_pixels
    00002C83 2A               [ 8]  764 	ld	a, (hl+)
    00002C84 5E               [ 8]  765 	ld	e, (hl)
    00002C85 D6 80            [ 8]  766 	sub	a, #0x80
    00002C87 7B               [ 4]  767 	ld	a, e
    00002C88 DE 01            [ 8]  768 	sbc	a, #0x01
    00002C8A 30 0B            [12]  769 	jr	NC, 00109$
                         000002E5   770 	C$CoreGameLoop.c$113$3_0$178	= .
                                    771 	.globl	C$CoreGameLoop.c$113$3_0$178
                                    772 ;src\CoreGameLoop.c:113: camera_y_pixels++;
    00002C8C 2B               [ 8]  773 	dec	hl
    00002C8D 34               [12]  774 	inc	(hl)
    00002C8E 20 02            [12]  775 	jr	NZ, 00223$
    00002C90 23               [ 8]  776 	inc	hl
    00002C91 34               [12]  777 	inc	(hl)
    00002C92                        778 00223$:
                         000002EB   779 	C$CoreGameLoop.c$114$3_0$178	= .
                                    780 	.globl	C$CoreGameLoop.c$114$3_0$178
                                    781 ;src\CoreGameLoop.c:114: redraw = TRUE;
    00002C92 21 BD C0         [12]  782 	ld	hl, #_redraw
    00002C95 36 01            [12]  783 	ld	(hl), #0x01
    00002C97                        784 00109$:
                         000002F0   785 	C$CoreGameLoop.c$118$1_0$173	= .
                                    786 	.globl	C$CoreGameLoop.c$118$1_0$173
                                    787 ;src\CoreGameLoop.c:118: if (joypadCurrent & J_LEFT) {
    00002C97 CB 49            [ 8]  788 	bit	1, c
    00002C99 28 18            [12]  789 	jr	Z, 00126$
                         000002F4   790 	C$CoreGameLoop.c$119$2_0$179	= .
                                    791 	.globl	C$CoreGameLoop.c$119$2_0$179
                                    792 ;src\CoreGameLoop.c:119: if (camera_x_pixels)
    00002C9B 21 B2 C0         [12]  793 	ld	hl, #_camera_x_pixels + 1
    00002C9E 3A               [ 8]  794 	ld	a, (hl-)
    00002C9F B6               [ 8]  795 	or	a, (hl)
    00002CA0 CA EF 2D         [16]  796 	jp	Z, 00127$
                         000002FC   797 	C$CoreGameLoop.c$121$3_0$180	= .
                                    798 	.globl	C$CoreGameLoop.c$121$3_0$180
                                    799 ;src\CoreGameLoop.c:121: camera_x_pixels--;
    00002CA3 2A               [ 8]  800 	ld	a, (hl+)
    00002CA4 5F               [ 4]  801 	ld	e, a
    00002CA5 3A               [ 8]  802 	ld	a, (hl-)
    00002CA6 57               [ 4]  803 	ld	d, a
    00002CA7 1B               [ 8]  804 	dec	de
    00002CA8 7B               [ 4]  805 	ld	a, e
    00002CA9 22               [ 8]  806 	ld	(hl+), a
    00002CAA 72               [ 8]  807 	ld	(hl), d
                         00000304   808 	C$CoreGameLoop.c$122$3_0$180	= .
                                    809 	.globl	C$CoreGameLoop.c$122$3_0$180
                                    810 ;src\CoreGameLoop.c:122: redraw = TRUE;
    00002CAB 21 BD C0         [12]  811 	ld	hl, #_redraw
    00002CAE 36 01            [12]  812 	ld	(hl), #0x01
    00002CB0 C3 EF 2D         [16]  813 	jp	00127$
    00002CB3                        814 00126$:
                         0000030C   815 	C$CoreGameLoop.c$124$1_0$173	= .
                                    816 	.globl	C$CoreGameLoop.c$124$1_0$173
                                    817 ;src\CoreGameLoop.c:124: } else if (joypadCurrent & J_RIGHT) {
    00002CB3 CB 41            [ 8]  818 	bit	0, c
    00002CB5 28 1A            [12]  819 	jr	Z, 00123$
                         00000310   820 	C$CoreGameLoop.c$125$2_0$181	= .
                                    821 	.globl	C$CoreGameLoop.c$125$2_0$181
                                    822 ;src\CoreGameLoop.c:125: if (camera_x_pixels < HomeCameraMaxX)
    00002CB7 21 B1 C0         [12]  823 	ld	hl, #_camera_x_pixels
    00002CBA 2A               [ 8]  824 	ld	a, (hl+)
    00002CBB D6 E8            [ 8]  825 	sub	a, #0xe8
    00002CBD 7E               [ 8]  826 	ld	a, (hl)
    00002CBE DE 00            [ 8]  827 	sbc	a, #0x00
    00002CC0 D2 EF 2D         [16]  828 	jp	NC, 00127$
                         0000031C   829 	C$CoreGameLoop.c$127$3_0$182	= .
                                    830 	.globl	C$CoreGameLoop.c$127$3_0$182
                                    831 ;src\CoreGameLoop.c:127: camera_x_pixels++;
    00002CC3 2B               [ 8]  832 	dec	hl
    00002CC4 34               [12]  833 	inc	(hl)
    00002CC5 20 02            [12]  834 	jr	NZ, 00226$
    00002CC7 23               [ 8]  835 	inc	hl
    00002CC8 34               [12]  836 	inc	(hl)
    00002CC9                        837 00226$:
                         00000322   838 	C$CoreGameLoop.c$128$3_0$182	= .
                                    839 	.globl	C$CoreGameLoop.c$128$3_0$182
                                    840 ;src\CoreGameLoop.c:128: redraw = TRUE;
    00002CC9 21 BD C0         [12]  841 	ld	hl, #_redraw
    00002CCC 36 01            [12]  842 	ld	(hl), #0x01
    00002CCE C3 EF 2D         [16]  843 	jp	00127$
    00002CD1                        844 00123$:
                         0000032A   845 	C$CoreGameLoop.c$130$1_0$173	= .
                                    846 	.globl	C$CoreGameLoop.c$130$1_0$173
                                    847 ;src\CoreGameLoop.c:130: } else if (joypadCurrent & J_SELECT) {
    00002CD1 CB 71            [ 8]  848 	bit	6, c
    00002CD3 28 08            [12]  849 	jr	Z, 00120$
                         0000032E   850 	C$CoreGameLoop.c$131$2_0$183	= .
                                    851 	.globl	C$CoreGameLoop.c$131$2_0$183
                                    852 ;src\CoreGameLoop.c:131: fadeToBlack(10);
    00002CD5 3E 0A            [ 8]  853 	ld	a, #0x0a
    00002CD7 CD 81 26         [24]  854 	call	_fadeToBlack
                         00000333   855 	C$CoreGameLoop.c$132$2_0$183	= .
                                    856 	.globl	C$CoreGameLoop.c$132$2_0$183
                                    857 ;src\CoreGameLoop.c:132: return GAMETITLE;
    00002CDA 3E 01            [ 8]  858 	ld	a, #0x01
    00002CDC C9               [16]  859 	ret
    00002CDD                        860 00120$:
                         00000336   861 	C$CoreGameLoop.c$134$1_0$173	= .
                                    862 	.globl	C$CoreGameLoop.c$134$1_0$173
                                    863 ;src\CoreGameLoop.c:134: else if (joypadCurrent & J_B)
    00002CDD CB 69            [ 8]  864 	bit	5, c
    00002CDF 28 10            [12]  865 	jr	Z, 00117$
                         0000033A   866 	C$CoreGameLoop.c$136$2_0$184	= .
                                    867 	.globl	C$CoreGameLoop.c$136$2_0$184
                                    868 ;src\CoreGameLoop.c:136: set_sprite_data(0, 16, Skateboard_Tiles);
    00002CE1 11 56 4C         [12]  869 	ld	de, #_Skateboard_Tiles
    00002CE4 D5               [16]  870 	push	de
    00002CE5 21 00 10         [12]  871 	ld	hl, #0x1000
    00002CE8 E5               [16]  872 	push	hl
    00002CE9 CD 10 63         [24]  873 	call	_set_sprite_data
    00002CEC E8 04            [16]  874 	add	sp, #4
    00002CEE C3 EF 2D         [16]  875 	jp	00127$
    00002CF1                        876 00117$:
                         0000034A   877 	C$CoreGameLoop.c$138$1_0$173	= .
                                    878 	.globl	C$CoreGameLoop.c$138$1_0$173
                                    879 ;src\CoreGameLoop.c:138: else if (joypadCurrent & J_A)
    00002CF1 CB 61            [ 8]  880 	bit	4, c
    00002CF3 CA EF 2D         [16]  881 	jp	Z,00127$
                         0000034F   882 	C$CoreGameLoop.c$141$2_0$185	= .
                                    883 	.globl	C$CoreGameLoop.c$141$2_0$185
                                    884 ;src\CoreGameLoop.c:141: DrawWindow(map_pos_x_tiles, map_pos_y_tiles, 9, 6, TRUE);
    00002CF6 21 06 01         [12]  885 	ld	hl, #0x106
    00002CF9 E5               [16]  886 	push	hl
    00002CFA 3E 09            [ 8]  887 	ld	a, #0x09
    00002CFC F5               [16]  888 	push	af
    00002CFD 33               [ 8]  889 	inc	sp
    00002CFE 21 BA C0         [12]  890 	ld	hl, #_map_pos_y_tiles
    00002D01 5E               [ 8]  891 	ld	e, (hl)
    00002D02 FA B9 C0         [16]  892 	ld	a, (#_map_pos_x_tiles)
    00002D05 CD D8 27         [24]  893 	call	_DrawWindow
                         00000361   894 	C$CoreGameLoop.c$142$2_0$185	= .
                                    895 	.globl	C$CoreGameLoop.c$142$2_0$185
                                    896 ;src\CoreGameLoop.c:142: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 0, "COMMAND", TRUE);
    00002D08 21 B9 C0         [12]  897 	ld	hl, #_map_pos_x_tiles
    00002D0B 4E               [ 8]  898 	ld	c, (hl)
    00002D0C 0C               [ 4]  899 	inc	c
    00002D0D 3E 01            [ 8]  900 	ld	a, #0x01
    00002D0F F5               [16]  901 	push	af
    00002D10 33               [ 8]  902 	inc	sp
    00002D11 11 03 2E         [12]  903 	ld	de, #___str_3
    00002D14 D5               [16]  904 	push	de
    00002D15 21 BA C0         [12]  905 	ld	hl, #_map_pos_y_tiles
    00002D18 5E               [ 8]  906 	ld	e, (hl)
    00002D19 79               [ 4]  907 	ld	a, c
    00002D1A CD 84 25         [24]  908 	call	_DrawText
                         00000376   909 	C$CoreGameLoop.c$143$2_0$185	= .
                                    910 	.globl	C$CoreGameLoop.c$143$2_0$185
                                    911 ;src\CoreGameLoop.c:143: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 1, "TALK", TRUE);
    00002D1D 21 BA C0         [12]  912 	ld	hl, #_map_pos_y_tiles
    00002D20 5E               [ 8]  913 	ld	e, (hl)
    00002D21 1C               [ 4]  914 	inc	e
    00002D22 21 B9 C0         [12]  915 	ld	hl, #_map_pos_x_tiles
    00002D25 4E               [ 8]  916 	ld	c, (hl)
    00002D26 0C               [ 4]  917 	inc	c
    00002D27 0C               [ 4]  918 	inc	c
    00002D28 3E 01            [ 8]  919 	ld	a, #0x01
    00002D2A F5               [16]  920 	push	af
    00002D2B 33               [ 8]  921 	inc	sp
    00002D2C 21 0B 2E         [12]  922 	ld	hl, #___str_4
    00002D2F E5               [16]  923 	push	hl
    00002D30 79               [ 4]  924 	ld	a, c
    00002D31 CD 84 25         [24]  925 	call	_DrawText
                         0000038D   926 	C$CoreGameLoop.c$144$2_0$185	= .
                                    927 	.globl	C$CoreGameLoop.c$144$2_0$185
                                    928 ;src\CoreGameLoop.c:144: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 2, "CHECK", TRUE);
    00002D34 21 BA C0         [12]  929 	ld	hl, #_map_pos_y_tiles
    00002D37 5E               [ 8]  930 	ld	e, (hl)
    00002D38 1C               [ 4]  931 	inc	e
    00002D39 1C               [ 4]  932 	inc	e
    00002D3A 21 B9 C0         [12]  933 	ld	hl, #_map_pos_x_tiles
    00002D3D 4E               [ 8]  934 	ld	c, (hl)
    00002D3E 0C               [ 4]  935 	inc	c
    00002D3F 0C               [ 4]  936 	inc	c
    00002D40 3E 01            [ 8]  937 	ld	a, #0x01
    00002D42 F5               [16]  938 	push	af
    00002D43 33               [ 8]  939 	inc	sp
    00002D44 21 10 2E         [12]  940 	ld	hl, #___str_5
    00002D47 E5               [16]  941 	push	hl
    00002D48 79               [ 4]  942 	ld	a, c
    00002D49 CD 84 25         [24]  943 	call	_DrawText
                         000003A5   944 	C$CoreGameLoop.c$145$2_0$185	= .
                                    945 	.globl	C$CoreGameLoop.c$145$2_0$185
                                    946 ;src\CoreGameLoop.c:145: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 3, "PSI", TRUE);
    00002D4C FA BA C0         [16]  947 	ld	a, (#_map_pos_y_tiles)
    00002D4F C6 03            [ 8]  948 	add	a, #0x03
    00002D51 5F               [ 4]  949 	ld	e, a
    00002D52 21 B9 C0         [12]  950 	ld	hl, #_map_pos_x_tiles
    00002D55 4E               [ 8]  951 	ld	c, (hl)
    00002D56 0C               [ 4]  952 	inc	c
    00002D57 0C               [ 4]  953 	inc	c
    00002D58 3E 01            [ 8]  954 	ld	a, #0x01
    00002D5A F5               [16]  955 	push	af
    00002D5B 33               [ 8]  956 	inc	sp
    00002D5C 21 16 2E         [12]  957 	ld	hl, #___str_6
    00002D5F E5               [16]  958 	push	hl
    00002D60 79               [ 4]  959 	ld	a, c
    00002D61 CD 84 25         [24]  960 	call	_DrawText
                         000003BD   961 	C$CoreGameLoop.c$146$2_0$185	= .
                                    962 	.globl	C$CoreGameLoop.c$146$2_0$185
                                    963 ;src\CoreGameLoop.c:146: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 4, "GOODS", TRUE);
    00002D64 FA BA C0         [16]  964 	ld	a, (#_map_pos_y_tiles)
    00002D67 C6 04            [ 8]  965 	add	a, #0x04
    00002D69 5F               [ 4]  966 	ld	e, a
    00002D6A 21 B9 C0         [12]  967 	ld	hl, #_map_pos_x_tiles
    00002D6D 4E               [ 8]  968 	ld	c, (hl)
    00002D6E 0C               [ 4]  969 	inc	c
    00002D6F 0C               [ 4]  970 	inc	c
    00002D70 3E 01            [ 8]  971 	ld	a, #0x01
    00002D72 F5               [16]  972 	push	af
    00002D73 33               [ 8]  973 	inc	sp
    00002D74 21 1A 2E         [12]  974 	ld	hl, #___str_7
    00002D77 E5               [16]  975 	push	hl
    00002D78 79               [ 4]  976 	ld	a, c
    00002D79 CD 84 25         [24]  977 	call	_DrawText
                         000003D5   978 	C$CoreGameLoop.c$148$2_0$185	= .
                                    979 	.globl	C$CoreGameLoop.c$148$2_0$185
                                    980 ;src\CoreGameLoop.c:148: DrawWindow(map_pos_x_tiles, map_pos_y_tiles + 15, 20, 3, TRUE);
    00002D7C FA BA C0         [16]  981 	ld	a, (#_map_pos_y_tiles)
    00002D7F C6 0F            [ 8]  982 	add	a, #0x0f
    00002D81 5F               [ 4]  983 	ld	e, a
    00002D82 21 03 01         [12]  984 	ld	hl, #0x103
    00002D85 E5               [16]  985 	push	hl
    00002D86 3E 14            [ 8]  986 	ld	a, #0x14
    00002D88 F5               [16]  987 	push	af
    00002D89 33               [ 8]  988 	inc	sp
    00002D8A FA B9 C0         [16]  989 	ld	a, (#_map_pos_x_tiles)
    00002D8D CD D8 27         [24]  990 	call	_DrawWindow
                         000003E9   991 	C$CoreGameLoop.c$149$2_0$185	= .
                                    992 	.globl	C$CoreGameLoop.c$149$2_0$185
                                    993 ;src\CoreGameLoop.c:149: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 15, "NAME", TRUE);
    00002D90 FA BA C0         [16]  994 	ld	a, (#_map_pos_y_tiles)
    00002D93 C6 0F            [ 8]  995 	add	a, #0x0f
    00002D95 5F               [ 4]  996 	ld	e, a
    00002D96 21 B9 C0         [12]  997 	ld	hl, #_map_pos_x_tiles
    00002D99 4E               [ 8]  998 	ld	c, (hl)
    00002D9A 0C               [ 4]  999 	inc	c
    00002D9B 3E 01            [ 8] 1000 	ld	a, #0x01
    00002D9D F5               [16] 1001 	push	af
    00002D9E 33               [ 8] 1002 	inc	sp
    00002D9F 21 20 2E         [12] 1003 	ld	hl, #___str_8
    00002DA2 E5               [16] 1004 	push	hl
    00002DA3 79               [ 4] 1005 	ld	a, c
    00002DA4 CD 84 25         [24] 1006 	call	_DrawText
                         00000400  1007 	C$CoreGameLoop.c$150$2_0$185	= .
                                   1008 	.globl	C$CoreGameLoop.c$150$2_0$185
                                   1009 ;src\CoreGameLoop.c:150: DrawText(map_pos_x_tiles + 10, map_pos_y_tiles + 15, "HP", TRUE);
    00002DA7 FA BA C0         [16] 1010 	ld	a, (#_map_pos_y_tiles)
    00002DAA C6 0F            [ 8] 1011 	add	a, #0x0f
    00002DAC 5F               [ 4] 1012 	ld	e, a
    00002DAD FA B9 C0         [16] 1013 	ld	a, (#_map_pos_x_tiles)
    00002DB0 C6 0A            [ 8] 1014 	add	a, #0x0a
    00002DB2 4F               [ 4] 1015 	ld	c, a
    00002DB3 3E 01            [ 8] 1016 	ld	a, #0x01
    00002DB5 F5               [16] 1017 	push	af
    00002DB6 33               [ 8] 1018 	inc	sp
    00002DB7 21 25 2E         [12] 1019 	ld	hl, #___str_9
    00002DBA E5               [16] 1020 	push	hl
    00002DBB 79               [ 4] 1021 	ld	a, c
    00002DBC CD 84 25         [24] 1022 	call	_DrawText
                         00000418  1023 	C$CoreGameLoop.c$151$2_0$185	= .
                                   1024 	.globl	C$CoreGameLoop.c$151$2_0$185
                                   1025 ;src\CoreGameLoop.c:151: DrawText(map_pos_x_tiles + 14, map_pos_y_tiles + 15, "MP", TRUE);
    00002DBF FA BA C0         [16] 1026 	ld	a, (#_map_pos_y_tiles)
    00002DC2 C6 0F            [ 8] 1027 	add	a, #0x0f
    00002DC4 5F               [ 4] 1028 	ld	e, a
    00002DC5 FA B9 C0         [16] 1029 	ld	a, (#_map_pos_x_tiles)
    00002DC8 C6 0E            [ 8] 1030 	add	a, #0x0e
    00002DCA 4F               [ 4] 1031 	ld	c, a
    00002DCB 3E 01            [ 8] 1032 	ld	a, #0x01
    00002DCD F5               [16] 1033 	push	af
    00002DCE 33               [ 8] 1034 	inc	sp
    00002DCF 21 28 2E         [12] 1035 	ld	hl, #___str_10
    00002DD2 E5               [16] 1036 	push	hl
    00002DD3 79               [ 4] 1037 	ld	a, c
    00002DD4 CD 84 25         [24] 1038 	call	_DrawText
                         00000430  1039 	C$CoreGameLoop.c$152$2_0$185	= .
                                   1040 	.globl	C$CoreGameLoop.c$152$2_0$185
                                   1041 ;src\CoreGameLoop.c:152: DrawText(map_pos_x_tiles + 18, map_pos_y_tiles + 15, "LV", TRUE);
    00002DD7 FA BA C0         [16] 1042 	ld	a, (#_map_pos_y_tiles)
    00002DDA C6 0F            [ 8] 1043 	add	a, #0x0f
    00002DDC 5F               [ 4] 1044 	ld	e, a
    00002DDD FA B9 C0         [16] 1045 	ld	a, (#_map_pos_x_tiles)
    00002DE0 C6 12            [ 8] 1046 	add	a, #0x12
    00002DE2 4F               [ 4] 1047 	ld	c, a
    00002DE3 3E 01            [ 8] 1048 	ld	a, #0x01
    00002DE5 F5               [16] 1049 	push	af
    00002DE6 33               [ 8] 1050 	inc	sp
    00002DE7 21 2B 2E         [12] 1051 	ld	hl, #___str_11
    00002DEA E5               [16] 1052 	push	hl
    00002DEB 79               [ 4] 1053 	ld	a, c
    00002DEC CD 84 25         [24] 1054 	call	_DrawText
    00002DEF                       1055 00127$:
                         00000448  1056 	C$CoreGameLoop.c$154$1_0$173	= .
                                   1057 	.globl	C$CoreGameLoop.c$154$1_0$173
                                   1058 ;src\CoreGameLoop.c:154: if (redraw)
    00002DEF FA BD C0         [16] 1059 	ld	a, (#_redraw)
    00002DF2 B7               [ 4] 1060 	or	a, a
    00002DF3 28 0B            [12] 1061 	jr	Z, 00129$
                         0000044E  1062 	C$CoreGameLoop.c$156$2_0$186	= .
                                   1063 	.globl	C$CoreGameLoop.c$156$2_0$186
                                   1064 ;src\CoreGameLoop.c:156: wait_vbl_done();
    00002DF5 CD BD 01         [24] 1065 	call	_wait_vbl_done
                         00000451  1066 	C$CoreGameLoop.c$157$2_0$186	= .
                                   1067 	.globl	C$CoreGameLoop.c$157$2_0$186
                                   1068 ;src\CoreGameLoop.c:157: set_camera();
    00002DF8 CD A7 29         [24] 1069 	call	_set_camera
                         00000454  1070 	C$CoreGameLoop.c$158$2_0$186	= .
                                   1071 	.globl	C$CoreGameLoop.c$158$2_0$186
                                   1072 ;src\CoreGameLoop.c:158: redraw = FALSE;
    00002DFB 21 BD C0         [12] 1073 	ld	hl, #_redraw
    00002DFE 36 00            [12] 1074 	ld	(hl), #0x00
    00002E00                       1075 00129$:
                         00000459  1076 	C$CoreGameLoop.c$161$1_0$173	= .
                                   1077 	.globl	C$CoreGameLoop.c$161$1_0$173
                                   1078 ;src\CoreGameLoop.c:161: return COREGAMELOOP;
    00002E00 3E 02            [ 8] 1079 	ld	a, #0x02
                         0000045B  1080 	C$CoreGameLoop.c$162$1_0$173	= .
                                   1081 	.globl	C$CoreGameLoop.c$162$1_0$173
                                   1082 ;src\CoreGameLoop.c:162: }
                         0000045B  1083 	C$CoreGameLoop.c$162$1_0$173	= .
                                   1084 	.globl	C$CoreGameLoop.c$162$1_0$173
                         0000045B  1085 	XG$CoreGameLoopUpdate$0$0	= .
                                   1086 	.globl	XG$CoreGameLoopUpdate$0$0
    00002E02 C9               [16] 1087 	ret
                         0000045C  1088 FCoreGameLoop$__str_3$0_0$0 == .
    00002E03                       1089 ___str_3:
    00002E03 43 4F 4D 4D 41 4E 44  1090 	.ascii "COMMAND"
    00002E0A 00                    1091 	.db 0x00
                         00000464  1092 FCoreGameLoop$__str_4$0_0$0 == .
    00002E0B                       1093 ___str_4:
    00002E0B 54 41 4C 4B           1094 	.ascii "TALK"
    00002E0F 00                    1095 	.db 0x00
                         00000469  1096 FCoreGameLoop$__str_5$0_0$0 == .
    00002E10                       1097 ___str_5:
    00002E10 43 48 45 43 4B        1098 	.ascii "CHECK"
    00002E15 00                    1099 	.db 0x00
                         0000046F  1100 FCoreGameLoop$__str_6$0_0$0 == .
    00002E16                       1101 ___str_6:
    00002E16 50 53 49              1102 	.ascii "PSI"
    00002E19 00                    1103 	.db 0x00
                         00000473  1104 FCoreGameLoop$__str_7$0_0$0 == .
    00002E1A                       1105 ___str_7:
    00002E1A 47 4F 4F 44 53        1106 	.ascii "GOODS"
    00002E1F 00                    1107 	.db 0x00
                         00000479  1108 FCoreGameLoop$__str_8$0_0$0 == .
    00002E20                       1109 ___str_8:
    00002E20 4E 41 4D 45           1110 	.ascii "NAME"
    00002E24 00                    1111 	.db 0x00
                         0000047E  1112 FCoreGameLoop$__str_9$0_0$0 == .
    00002E25                       1113 ___str_9:
    00002E25 48 50                 1114 	.ascii "HP"
    00002E27 00                    1115 	.db 0x00
                         00000481  1116 FCoreGameLoop$__str_10$0_0$0 == .
    00002E28                       1117 ___str_10:
    00002E28 4D 50                 1118 	.ascii "MP"
    00002E2A 00                    1119 	.db 0x00
                         00000484  1120 FCoreGameLoop$__str_11$0_0$0 == .
    00002E2B                       1121 ___str_11:
    00002E2B 4C 56                 1122 	.ascii "LV"
    00002E2D 00                    1123 	.db 0x00
                                   1124 	.area _CODE
                                   1125 	.area _INITIALIZER
                         00000000  1126 FCoreGameLoop$__xinit_mouse$0_0$0 == .
    0000714C                       1127 __xinit__mouse:
    0000714C 58 00                 1128 	.dw #0x0058
    0000714E 60 00                 1129 	.dw #0x0060
    00007150 00                    1130 	.db #0x00	; 0
    00007151 00                    1131 	.db #0x00	; 0
    00007152 03                    1132 	.db #0x03	; 3
    00007153 00                    1133 	.db #0x00	; 0
    00007154 00                    1134 	.db #0x00	; 0
    00007155 00                    1135 	.db #0x00	; 0
    00007156 00                    1136 	.db #0x00	; 0
    00007157 00                    1137 	.db #0x00	; 0
                                   1138 	.area _CABS (ABS)
