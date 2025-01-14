;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module CoreGameLoop
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_CoreGameLoopUpdate
	.globl _CoreGameLoopUpdate
	.globl b___func_CoreGameLoopUpdate
	.globl ___func_CoreGameLoopUpdate
	.globl b_CoreGameLoopSetup
	.globl _CoreGameLoopSetup
	.globl b___func_CoreGameLoopSetup
	.globl ___func_CoreGameLoopSetup
	.globl b_set_camera
	.globl _set_camera
	.globl b___func_set_camera
	.globl ___func_set_camera
	.globl b___func_const_bank_ID_core
	.globl ___func_const_bank_ID_core
	.globl _DrawWindow
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawText
	.globl _DrawNumber
	.globl _DrawPlayer
	.globl _PlayerUpdate
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _mouse
	.globl _camera_pixel_goal_y
	.globl _camera_pixel_goal_x
	.globl _redraw
	.globl _old_map_pos_y_tiles
	.globl _old_map_pos_x_tiles
	.globl _map_pos_y_tiles
	.globl _map_pos_x_tiles
	.globl _old_camera_y_pixels
	.globl _old_camera_x_pixels
	.globl _camera_y_pixels
	.globl _camera_x_pixels
	.globl _const_bank_ID_core
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$camera_x_pixels$0_0$0==.
_camera_x_pixels::
	.ds 2
G$camera_y_pixels$0_0$0==.
_camera_y_pixels::
	.ds 2
G$old_camera_x_pixels$0_0$0==.
_old_camera_x_pixels::
	.ds 2
G$old_camera_y_pixels$0_0$0==.
_old_camera_y_pixels::
	.ds 2
G$map_pos_x_tiles$0_0$0==.
_map_pos_x_tiles::
	.ds 1
G$map_pos_y_tiles$0_0$0==.
_map_pos_y_tiles::
	.ds 1
G$old_map_pos_x_tiles$0_0$0==.
_old_map_pos_x_tiles::
	.ds 1
G$old_map_pos_y_tiles$0_0$0==.
_old_map_pos_y_tiles::
	.ds 1
G$redraw$0_0$0==.
_redraw::
	.ds 1
G$camera_pixel_goal_x$0_0$0==.
_camera_pixel_goal_x::
	.ds 1
G$camera_pixel_goal_y$0_0$0==.
_camera_pixel_goal_y::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$mouse$0_0$0==.
_mouse::
	.ds 12
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_3
	G$__func_const_bank_ID_core$0$0	= .
	.globl	G$__func_const_bank_ID_core$0$0
	C$CoreGameLoop.c$17$0_0$146	= .
	.globl	C$CoreGameLoop.c$17$0_0$146
;src\CoreGameLoop.c:17: BANKREF(const_bank_ID_core)
;	---------------------------------
; Function __func_const_bank_ID_core
; ---------------------------------
	b___func_const_bank_ID_core	= 3
___func_const_bank_ID_core::
	.local b___func_const_bank_ID_core 
	___bank_const_bank_ID_core = b___func_const_bank_ID_core 
	.globl ___bank_const_bank_ID_core 
	G$__func_set_camera$0$0	= .
	.globl	G$__func_set_camera$0$0
	C$CoreGameLoop.c$28$1_0$148	= .
	.globl	C$CoreGameLoop.c$28$1_0$148
;src\CoreGameLoop.c:28: BANKREF(set_camera)
;	---------------------------------
; Function __func_set_camera
; ---------------------------------
	b___func_set_camera	= 3
___func_set_camera::
	.local b___func_set_camera 
	___bank_set_camera = b___func_set_camera 
	.globl ___bank_set_camera 
	G$set_camera$0$0	= .
	.globl	G$set_camera$0$0
	C$CoreGameLoop.c$29$1_0$150	= .
	.globl	C$CoreGameLoop.c$29$1_0$150
;src\CoreGameLoop.c:29: void set_camera(void) BANKED
;	---------------------------------
; Function set_camera
; ---------------------------------
	b_set_camera	= 3
_set_camera::
	add	sp, #-3
	C$CoreGameLoop.c$32$1_0$150	= .
	.globl	C$CoreGameLoop.c$32$1_0$150
;src\CoreGameLoop.c:32: SCY_REG = camera_y_pixels; SCX_REG = camera_x_pixels;
	ld	a, (#_camera_y_pixels)
	ldh	(_SCY_REG + 0), a
	ld	a, (#_camera_x_pixels)
	ldh	(_SCX_REG + 0), a
	C$CoreGameLoop.c$34$1_0$150	= .
	.globl	C$CoreGameLoop.c$34$1_0$150
;src\CoreGameLoop.c:34: map_pos_y_tiles = (uint8_t)(camera_y_pixels >> 3u);
	ld	hl, #_camera_y_pixels
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_y_tiles
	ld	(hl), c
	C$CoreGameLoop.c$39$1_0$150	= .
	.globl	C$CoreGameLoop.c$39$1_0$150
;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	c, (hl)
	C$CoreGameLoop.c$35$1_0$150	= .
	.globl	C$CoreGameLoop.c$35$1_0$150
;src\CoreGameLoop.c:35: if (map_pos_y_tiles != old_map_pos_y_tiles)
	ld	a, (hl)
	ld	hl, #_old_map_pos_y_tiles
	sub	a, (hl)
	jp	Z,00107$
	C$CoreGameLoop.c$39$1_0$150	= .
	.globl	C$CoreGameLoop.c$39$1_0$150
;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	hl, #_map_pos_x_tiles
	ld	e, (hl)
	ld	d, #0x00
	ld	b, (hl)
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	a, #0x31
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
	ld	a, #0x31
	sub	a, b
	ld	(hl+), a
	rlca
	sbc	a, a
	ld	(hl), a
	ld	a, #0x15
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	ld	a, #0x00
	rla
	ld	b, a
	C$CoreGameLoop.c$37$2_0$151	= .
	.globl	C$CoreGameLoop.c$37$2_0$151
;src\CoreGameLoop.c:37: if (camera_y_pixels < old_camera_y_pixels) // if camera is moving up
	ld	de, #_camera_y_pixels
	ld	hl, #_old_camera_y_pixels
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00104$
;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00121$
	ld	a, #0x15
	jr	00122$
00121$:
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, (hl)
00122$:
;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x31
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	de, #_Home
	push	de
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	b, a
	push	bc
	ldhl	sp,	#6
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$39$2_0$151	= .
	.globl	C$CoreGameLoop.c$39$2_0$151
;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	jr	00105$
00104$:
	C$CoreGameLoop.c$43$3_0$153	= .
	.globl	C$CoreGameLoop.c$43$3_0$153
;src\CoreGameLoop.c:43: if ((HomeHeight - 18u) > map_pos_y_tiles) // (have we touched the bottom of the map?) if not then...
	ld	a, (#_map_pos_y_tiles)
	sub	a, #0x30
	jr	NC, 00105$
;src\CoreGameLoop.c:45: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	de, #_Home
	ld	a, b
	or	a, a
	jr	Z, 00123$
	ld	c, #0x15
	jr	00124$
00123$:
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
00124$:
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x12
;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x31
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	de
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$45$2_0$151	= .
	.globl	C$CoreGameLoop.c$45$2_0$151
;src\CoreGameLoop.c:45: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
00105$:
	C$CoreGameLoop.c$39$1_0$150	= .
	.globl	C$CoreGameLoop.c$39$1_0$150
;src\CoreGameLoop.c:39: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	hl, #_map_pos_y_tiles
	ld	c, (hl)
	C$CoreGameLoop.c$48$2_0$151	= .
	.globl	C$CoreGameLoop.c$48$2_0$151
;src\CoreGameLoop.c:48: old_map_pos_y_tiles = map_pos_y_tiles;
	ld	hl, #_old_map_pos_y_tiles
	ld	(hl), c
00107$:
	C$CoreGameLoop.c$51$1_0$150	= .
	.globl	C$CoreGameLoop.c$51$1_0$150
;src\CoreGameLoop.c:51: map_pos_x_tiles = (uint8_t)(camera_x_pixels >> 3u);
	ld	hl, #_camera_x_pixels
	ld	a, (hl+)
	ld	b, a
	ld	e, (hl)
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	ld	hl, #_map_pos_x_tiles
	ld	(hl), b
	C$CoreGameLoop.c$52$1_0$150	= .
	.globl	C$CoreGameLoop.c$52$1_0$150
;src\CoreGameLoop.c:52: if (map_pos_x_tiles != old_map_pos_x_tiles)
	ld	a, (hl)
	ld	hl, #_old_map_pos_x_tiles
	sub	a, (hl)
	jp	Z,00114$
	C$CoreGameLoop.c$56$1_0$150	= .
	.globl	C$CoreGameLoop.c$56$1_0$150
;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	ld	hl, #_map_pos_y_tiles
	ld	e, (hl)
	ld	b, #0x00
	ld	d, (hl)
	ld	a, #0x42
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x42
	sub	a, d
	ld	e, a
	rlca
	sbc	a, a
	ld	d, a
	ld	a, #0x13
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	ld	a, #0x00
	rla
	ld	b, a
	C$CoreGameLoop.c$54$2_0$155	= .
	.globl	C$CoreGameLoop.c$54$2_0$155
;src\CoreGameLoop.c:54: if (camera_x_pixels < old_camera_x_pixels)
	push	de
	ld	de, #_camera_x_pixels
	ld	hl, #_old_camera_x_pixels
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	pop	de
	jr	NC, 00111$
;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00125$
	ld	de, #0x0013
00125$:
	ld	b, e
	ld	a, (#_map_pos_x_tiles)
;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x31
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	de, #_Home
	push	de
	push	bc
	inc	sp
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$56$2_0$155	= .
	.globl	C$CoreGameLoop.c$56$2_0$155
;src\CoreGameLoop.c:56: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	jr	00112$
00111$:
	C$CoreGameLoop.c$60$3_0$157	= .
	.globl	C$CoreGameLoop.c$60$3_0$157
;src\CoreGameLoop.c:60: if ((HomeWidth - 20u) > map_pos_x_tiles)
	ld	a, (#_map_pos_x_tiles)
	sub	a, #0x1d
	jr	NC, 00112$
;src\CoreGameLoop.c:62: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00127$
	ld	de, #0x0013
00127$:
	ld	b, e
	ld	a, (#_map_pos_x_tiles)
	add	a, #0x14
;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x31
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	de, #_Home
	push	de
	push	bc
	inc	sp
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_submap
	add	sp, #7
;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$62$2_0$155	= .
	.globl	C$CoreGameLoop.c$62$2_0$155
;src\CoreGameLoop.c:62: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
00112$:
	C$CoreGameLoop.c$65$2_0$155	= .
	.globl	C$CoreGameLoop.c$65$2_0$155
;src\CoreGameLoop.c:65: old_map_pos_x_tiles = map_pos_x_tiles;
	ld	a, (#_map_pos_x_tiles)
	ld	(#_old_map_pos_x_tiles),a
00114$:
	C$CoreGameLoop.c$68$1_0$150	= .
	.globl	C$CoreGameLoop.c$68$1_0$150
;src\CoreGameLoop.c:68: old_camera_x_pixels = camera_x_pixels, old_camera_y_pixels = camera_y_pixels;
	ld	a, (#_camera_x_pixels)
	ld	(#_old_camera_x_pixels),a
	ld	a, (#_camera_x_pixels + 1)
	ld	(#_old_camera_x_pixels + 1),a
	ld	a, (#_camera_y_pixels)
	ld	(#_old_camera_y_pixels),a
	ld	a, (#_camera_y_pixels + 1)
	ld	(#_old_camera_y_pixels + 1),a
	C$CoreGameLoop.c$70$1_0$150	= .
	.globl	C$CoreGameLoop.c$70$1_0$150
;src\CoreGameLoop.c:70: DrawNumber(2, 1, map_pos_x_tiles, 4, FALSE);
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x04
	push	hl
	push	bc
	ld	e, #0x01
	ld	a, #0x02
	call	_DrawNumber
	C$CoreGameLoop.c$71$1_0$150	= .
	.globl	C$CoreGameLoop.c$71$1_0$150
;src\CoreGameLoop.c:71: DrawText(0, 1, "X:", FALSE);
	xor	a, a
	push	af
	inc	sp
	ld	de, #___str_0
	push	de
	ld	e, #0x01
	xor	a, a
	call	_DrawText
	C$CoreGameLoop.c$72$1_0$150	= .
	.globl	C$CoreGameLoop.c$72$1_0$150
;src\CoreGameLoop.c:72: DrawNumber(2, 3, map_pos_y_tiles, 4, FALSE);
	ld	hl, #_map_pos_y_tiles
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x04
	push	hl
	push	bc
	ld	e, #0x03
	ld	a, #0x02
	call	_DrawNumber
	C$CoreGameLoop.c$73$1_0$150	= .
	.globl	C$CoreGameLoop.c$73$1_0$150
;src\CoreGameLoop.c:73: DrawText(0, 3, "Y:", FALSE);
	xor	a, a
	push	af
	inc	sp
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	xor	a, a
	call	_DrawText
	C$CoreGameLoop.c$74$1_0$150	= .
	.globl	C$CoreGameLoop.c$74$1_0$150
;src\CoreGameLoop.c:74: }
	add	sp, #3
	C$CoreGameLoop.c$74$1_0$150	= .
	.globl	C$CoreGameLoop.c$74$1_0$150
	XG$set_camera$0$0	= .
	.globl	XG$set_camera$0$0
	ret
G$const_bank_ID_core$0_0$0 == .
_const_bank_ID_core:
	.db #0x03	; 3
FCoreGameLoop$__str_0$0_0$0 == .
___str_0:
	.ascii "X:"
	.db 0x00
FCoreGameLoop$__str_1$0_0$0 == .
___str_1:
	.ascii "Y:"
	.db 0x00
	G$__func_CoreGameLoopSetup$0$0	= .
	.globl	G$__func_CoreGameLoopSetup$0$0
	C$CoreGameLoop.c$78$1_0$172	= .
	.globl	C$CoreGameLoop.c$78$1_0$172
;src\CoreGameLoop.c:78: BANKREF(CoreGameLoopSetup)
;	---------------------------------
; Function __func_CoreGameLoopSetup
; ---------------------------------
	b___func_CoreGameLoopSetup	= 3
___func_CoreGameLoopSetup::
	.local b___func_CoreGameLoopSetup 
	___bank_CoreGameLoopSetup = b___func_CoreGameLoopSetup 
	.globl ___bank_CoreGameLoopSetup 
	G$CoreGameLoopSetup$0$0	= .
	.globl	G$CoreGameLoopSetup$0$0
	C$CoreGameLoop.c$79$1_0$174	= .
	.globl	C$CoreGameLoop.c$79$1_0$174
;src\CoreGameLoop.c:79: void CoreGameLoopSetup(void) BANKED
;	---------------------------------
; Function CoreGameLoopSetup
; ---------------------------------
	b_CoreGameLoopSetup	= 3
_CoreGameLoopSetup::
	C$CoreGameLoop.c$82$1_0$174	= .
	.globl	C$CoreGameLoop.c$82$1_0$174
;src\CoreGameLoop.c:82: map_pos_x_tiles = map_pos_y_tiles = 0;
	ld	hl, #_map_pos_y_tiles
	ld	(hl), #0x00
	ld	hl, #_map_pos_x_tiles
	ld	(hl), #0x00
	C$CoreGameLoop.c$83$1_0$174	= .
	.globl	C$CoreGameLoop.c$83$1_0$174
;src\CoreGameLoop.c:83: old_map_pos_x_tiles = old_camera_y_pixels = 255; 
	ld	hl, #_old_map_pos_x_tiles
	ld	(hl), #0xff
	C$CoreGameLoop.c$84$1_0$174	= .
	.globl	C$CoreGameLoop.c$84$1_0$174
;src\CoreGameLoop.c:84: camera_x_pixels = 208;
	ld	hl, #_camera_x_pixels
	ld	a, #0xd0
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$85$1_0$174	= .
	.globl	C$CoreGameLoop.c$85$1_0$174
;src\CoreGameLoop.c:85: camera_y_pixels = 96;
	ld	hl, #_camera_y_pixels
	ld	a, #0x60
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$86$1_0$174	= .
	.globl	C$CoreGameLoop.c$86$1_0$174
;src\CoreGameLoop.c:86: old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
	ld	hl, #_old_camera_x_pixels
	ld	a, #0xd0
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	ld	hl, #_old_camera_y_pixels
	ld	a, #0x60
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$87$1_0$174	= .
	.globl	C$CoreGameLoop.c$87$1_0$174
;src\CoreGameLoop.c:87: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
	C$CoreGameLoop.c$89$1_0$174	= .
	.globl	C$CoreGameLoop.c$89$1_0$174
;src\CoreGameLoop.c:89: set_bkg_data(128, 144, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x9080
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\CoreGameLoop.c:90: set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
;c:\gbdk\include\gb\gb.h:1303: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;c:\gbdk\include\gb\gb.h:1304: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x31
	push	af
	inc	sp
	ld	de, #_Home
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;c:\gbdk\include\gb\gb.h:1305: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$91$1_0$174	= .
	.globl	C$CoreGameLoop.c$91$1_0$174
;src\CoreGameLoop.c:91: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$CoreGameLoop.c$92$1_0$174	= .
	.globl	C$CoreGameLoop.c$92$1_0$174
;src\CoreGameLoop.c:92: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$CoreGameLoop.c$93$1_0$174	= .
	.globl	C$CoreGameLoop.c$93$1_0$174
;src\CoreGameLoop.c:93: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$94$1_0$174	= .
	.globl	C$CoreGameLoop.c$94$1_0$174
;src\CoreGameLoop.c:94: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$95$1_0$174	= .
	.globl	C$CoreGameLoop.c$95$1_0$174
;src\CoreGameLoop.c:95: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$96$1_0$174	= .
	.globl	C$CoreGameLoop.c$96$1_0$174
;src\CoreGameLoop.c:96: set_camera();
	ld	e, #b_set_camera
	ld	hl, #_set_camera
	call	___sdcc_bcall_ehl
	C$CoreGameLoop.c$97$1_0$174	= .
	.globl	C$CoreGameLoop.c$97$1_0$174
;src\CoreGameLoop.c:97: fadeFromBlack(10);
	ld	a, #0x0a
	call	_fadeFromBlack
	C$CoreGameLoop.c$98$1_0$174	= .
	.globl	C$CoreGameLoop.c$98$1_0$174
;src\CoreGameLoop.c:98: DrawNumber(1, 1, 31, 4, FALSE);
	ld	hl, #0x04
	push	hl
	ld	de, #0x001f
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawNumber
	C$CoreGameLoop.c$99$1_0$174	= .
	.globl	C$CoreGameLoop.c$99$1_0$174
;src\CoreGameLoop.c:99: DrawText(1, 3, "Window Text", FALSE);
	xor	a, a
	push	af
	inc	sp
	ld	de, #___str_2
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$CoreGameLoop.c$100$1_0$174	= .
	.globl	C$CoreGameLoop.c$100$1_0$174
;src\CoreGameLoop.c:100: }
	C$CoreGameLoop.c$100$1_0$174	= .
	.globl	C$CoreGameLoop.c$100$1_0$174
	XG$CoreGameLoopSetup$0$0	= .
	.globl	XG$CoreGameLoopSetup$0$0
	ret
FCoreGameLoop$__str_2$0_0$0 == .
___str_2:
	.ascii "Window Text"
	.db 0x00
	G$__func_CoreGameLoopUpdate$0$0	= .
	.globl	G$__func_CoreGameLoopUpdate$0$0
	C$CoreGameLoop.c$104$1_0$179	= .
	.globl	C$CoreGameLoop.c$104$1_0$179
;src\CoreGameLoop.c:104: BANKREF(CoreGameLoopUpdate)
;	---------------------------------
; Function __func_CoreGameLoopUpdate
; ---------------------------------
	b___func_CoreGameLoopUpdate	= 3
___func_CoreGameLoopUpdate::
	.local b___func_CoreGameLoopUpdate 
	___bank_CoreGameLoopUpdate = b___func_CoreGameLoopUpdate 
	.globl ___bank_CoreGameLoopUpdate 
	G$CoreGameLoopUpdate$0$0	= .
	.globl	G$CoreGameLoopUpdate$0$0
	C$CoreGameLoop.c$105$1_0$181	= .
	.globl	C$CoreGameLoop.c$105$1_0$181
;src\CoreGameLoop.c:105: uint8_t CoreGameLoopUpdate(void) BANKED
;	---------------------------------
; Function CoreGameLoopUpdate
; ---------------------------------
	b_CoreGameLoopUpdate	= 3
_CoreGameLoopUpdate::
	C$CoreGameLoop.c$107$1_0$181	= .
	.globl	C$CoreGameLoop.c$107$1_0$181
;src\CoreGameLoop.c:107: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
	C$CoreGameLoop.c$108$1_0$181	= .
	.globl	C$CoreGameLoop.c$108$1_0$181
;src\CoreGameLoop.c:108: PlayerUpdate(&mouse);
	ld	de, #_mouse
	call	_PlayerUpdate
	C$CoreGameLoop.c$109$1_0$181	= .
	.globl	C$CoreGameLoop.c$109$1_0$181
;src\CoreGameLoop.c:109: DrawPlayer(&mouse);
	ld	de, #_mouse
	call	_DrawPlayer
	C$CoreGameLoop.c$114$1_0$181	= .
	.globl	C$CoreGameLoop.c$114$1_0$181
;src\CoreGameLoop.c:114: if (joypadCurrent & J_UP) {
	ld	hl, #_joypadCurrent
	ld	c, (hl)
	bit	2, c
	jr	Z, 00108$
	C$CoreGameLoop.c$115$2_0$183	= .
	.globl	C$CoreGameLoop.c$115$2_0$183
;src\CoreGameLoop.c:115: if (camera_y_pixels){
	ld	hl, #_camera_y_pixels + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00109$
	C$CoreGameLoop.c$116$3_0$184	= .
	.globl	C$CoreGameLoop.c$116$3_0$184
;src\CoreGameLoop.c:116: camera_y_pixels--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$CoreGameLoop.c$117$3_0$184	= .
	.globl	C$CoreGameLoop.c$117$3_0$184
;src\CoreGameLoop.c:117: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00109$
00108$:
	C$CoreGameLoop.c$119$1_0$181	= .
	.globl	C$CoreGameLoop.c$119$1_0$181
;src\CoreGameLoop.c:119: } else if (joypadCurrent & J_DOWN) {
	bit	3, c
	jr	Z, 00109$
	C$CoreGameLoop.c$120$2_0$185	= .
	.globl	C$CoreGameLoop.c$120$2_0$185
;src\CoreGameLoop.c:120: if (camera_y_pixels < HomeCameraMaxY)
	ld	hl, #_camera_y_pixels
	ld	a, (hl+)
	ld	e, (hl)
	sub	a, #0x80
	ld	a, e
	sbc	a, #0x01
	jr	NC, 00109$
	C$CoreGameLoop.c$122$3_0$186	= .
	.globl	C$CoreGameLoop.c$122$3_0$186
;src\CoreGameLoop.c:122: camera_y_pixels++;
	dec	hl
	inc	(hl)
	jr	NZ, 00223$
	inc	hl
	inc	(hl)
00223$:
	C$CoreGameLoop.c$123$3_0$186	= .
	.globl	C$CoreGameLoop.c$123$3_0$186
;src\CoreGameLoop.c:123: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00109$:
	C$CoreGameLoop.c$127$1_0$181	= .
	.globl	C$CoreGameLoop.c$127$1_0$181
;src\CoreGameLoop.c:127: if (joypadCurrent & J_LEFT) {
	bit	1, c
	jr	Z, 00126$
	C$CoreGameLoop.c$128$2_0$187	= .
	.globl	C$CoreGameLoop.c$128$2_0$187
;src\CoreGameLoop.c:128: if (camera_x_pixels)
	ld	hl, #_camera_x_pixels + 1
	ld	a, (hl-)
	or	a, (hl)
	jp	Z, 00127$
	C$CoreGameLoop.c$130$3_0$188	= .
	.globl	C$CoreGameLoop.c$130$3_0$188
;src\CoreGameLoop.c:130: camera_x_pixels--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$CoreGameLoop.c$131$3_0$188	= .
	.globl	C$CoreGameLoop.c$131$3_0$188
;src\CoreGameLoop.c:131: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jp	00127$
00126$:
	C$CoreGameLoop.c$133$1_0$181	= .
	.globl	C$CoreGameLoop.c$133$1_0$181
;src\CoreGameLoop.c:133: } else if (joypadCurrent & J_RIGHT) {
	bit	0, c
	jr	Z, 00123$
	C$CoreGameLoop.c$134$2_0$189	= .
	.globl	C$CoreGameLoop.c$134$2_0$189
;src\CoreGameLoop.c:134: if (camera_x_pixels < HomeCameraMaxX)
	ld	hl, #_camera_x_pixels
	ld	a, (hl+)
	sub	a, #0xe8
	ld	a, (hl)
	sbc	a, #0x00
	jp	NC, 00127$
	C$CoreGameLoop.c$136$3_0$190	= .
	.globl	C$CoreGameLoop.c$136$3_0$190
;src\CoreGameLoop.c:136: camera_x_pixels++;
	dec	hl
	inc	(hl)
	jr	NZ, 00226$
	inc	hl
	inc	(hl)
00226$:
	C$CoreGameLoop.c$137$3_0$190	= .
	.globl	C$CoreGameLoop.c$137$3_0$190
;src\CoreGameLoop.c:137: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jp	00127$
00123$:
	C$CoreGameLoop.c$139$1_0$181	= .
	.globl	C$CoreGameLoop.c$139$1_0$181
;src\CoreGameLoop.c:139: } else if (joypadCurrent & J_SELECT) {
	bit	6, c
	jr	Z, 00120$
	C$CoreGameLoop.c$140$2_0$191	= .
	.globl	C$CoreGameLoop.c$140$2_0$191
;src\CoreGameLoop.c:140: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$CoreGameLoop.c$141$2_0$191	= .
	.globl	C$CoreGameLoop.c$141$2_0$191
;src\CoreGameLoop.c:141: return GAMETITLE;
	ld	a, #0x01
	ret
00120$:
	C$CoreGameLoop.c$143$1_0$181	= .
	.globl	C$CoreGameLoop.c$143$1_0$181
;src\CoreGameLoop.c:143: else if (joypadCurrent & J_B)
	bit	5, c
	jr	Z, 00117$
	C$CoreGameLoop.c$145$2_0$192	= .
	.globl	C$CoreGameLoop.c$145$2_0$192
;src\CoreGameLoop.c:145: set_sprite_data(0, 16, Skateboard_Tiles);
	ld	de, #_Skateboard_Tiles
	push	de
	ld	hl, #0x1000
	push	hl
	call	_set_sprite_data
	add	sp, #4
	jp	00127$
00117$:
	C$CoreGameLoop.c$147$1_0$181	= .
	.globl	C$CoreGameLoop.c$147$1_0$181
;src\CoreGameLoop.c:147: else if (joypadCurrent & J_A)
	bit	4, c
	jp	Z,00127$
	C$CoreGameLoop.c$150$2_0$193	= .
	.globl	C$CoreGameLoop.c$150$2_0$193
;src\CoreGameLoop.c:150: DrawWindow(map_pos_x_tiles, map_pos_y_tiles, 9, 6, TRUE);
	ld	hl, #0x106
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #_map_pos_y_tiles
	ld	e, (hl)
	ld	a, (#_map_pos_x_tiles)
	call	_DrawWindow
	C$CoreGameLoop.c$151$2_0$193	= .
	.globl	C$CoreGameLoop.c$151$2_0$193
;src\CoreGameLoop.c:151: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 0, "COMMAND", TRUE);
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_3
	push	de
	ld	hl, #_map_pos_y_tiles
	ld	e, (hl)
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$152$2_0$193	= .
	.globl	C$CoreGameLoop.c$152$2_0$193
;src\CoreGameLoop.c:152: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 1, "TALK", TRUE);
	ld	hl, #_map_pos_y_tiles
	ld	e, (hl)
	inc	e
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_4
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$153$2_0$193	= .
	.globl	C$CoreGameLoop.c$153$2_0$193
;src\CoreGameLoop.c:153: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 2, "CHECK", TRUE);
	ld	hl, #_map_pos_y_tiles
	ld	e, (hl)
	inc	e
	inc	e
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_5
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$154$2_0$193	= .
	.globl	C$CoreGameLoop.c$154$2_0$193
;src\CoreGameLoop.c:154: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 3, "PSI", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x03
	ld	e, a
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_6
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$155$2_0$193	= .
	.globl	C$CoreGameLoop.c$155$2_0$193
;src\CoreGameLoop.c:155: DrawText(map_pos_x_tiles + 2, map_pos_y_tiles + 4, "GOODS", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x04
	ld	e, a
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_7
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$157$2_0$193	= .
	.globl	C$CoreGameLoop.c$157$2_0$193
;src\CoreGameLoop.c:157: DrawWindow(map_pos_x_tiles, map_pos_y_tiles + 15, 20, 3, TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x0f
	ld	e, a
	ld	hl, #0x103
	push	hl
	ld	a, #0x14
	push	af
	inc	sp
	ld	a, (#_map_pos_x_tiles)
	call	_DrawWindow
	C$CoreGameLoop.c$158$2_0$193	= .
	.globl	C$CoreGameLoop.c$158$2_0$193
;src\CoreGameLoop.c:158: DrawText(map_pos_x_tiles + 1, map_pos_y_tiles + 15, "NAME", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x0f
	ld	e, a
	ld	hl, #_map_pos_x_tiles
	ld	c, (hl)
	inc	c
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_8
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$159$2_0$193	= .
	.globl	C$CoreGameLoop.c$159$2_0$193
;src\CoreGameLoop.c:159: DrawText(map_pos_x_tiles + 10, map_pos_y_tiles + 15, "HP", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x0f
	ld	e, a
	ld	a, (#_map_pos_x_tiles)
	add	a, #0x0a
	ld	c, a
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_9
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$160$2_0$193	= .
	.globl	C$CoreGameLoop.c$160$2_0$193
;src\CoreGameLoop.c:160: DrawText(map_pos_x_tiles + 14, map_pos_y_tiles + 15, "MP", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x0f
	ld	e, a
	ld	a, (#_map_pos_x_tiles)
	add	a, #0x0e
	ld	c, a
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_10
	push	hl
	ld	a, c
	call	_DrawText
	C$CoreGameLoop.c$161$2_0$193	= .
	.globl	C$CoreGameLoop.c$161$2_0$193
;src\CoreGameLoop.c:161: DrawText(map_pos_x_tiles + 18, map_pos_y_tiles + 15, "LV", TRUE);
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x0f
	ld	e, a
	ld	a, (#_map_pos_x_tiles)
	add	a, #0x12
	ld	c, a
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_11
	push	hl
	ld	a, c
	call	_DrawText
00127$:
	C$CoreGameLoop.c$163$1_0$181	= .
	.globl	C$CoreGameLoop.c$163$1_0$181
;src\CoreGameLoop.c:163: if (redraw)
	ld	a, (#_redraw)
	or	a, a
	jr	Z, 00129$
	C$CoreGameLoop.c$165$2_0$194	= .
	.globl	C$CoreGameLoop.c$165$2_0$194
;src\CoreGameLoop.c:165: wait_vbl_done();
	call	_wait_vbl_done
	C$CoreGameLoop.c$166$2_0$194	= .
	.globl	C$CoreGameLoop.c$166$2_0$194
;src\CoreGameLoop.c:166: set_camera();
	ld	e, #b_set_camera
	ld	hl, #_set_camera
	call	___sdcc_bcall_ehl
	C$CoreGameLoop.c$167$2_0$194	= .
	.globl	C$CoreGameLoop.c$167$2_0$194
;src\CoreGameLoop.c:167: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
00129$:
	C$CoreGameLoop.c$170$1_0$181	= .
	.globl	C$CoreGameLoop.c$170$1_0$181
;src\CoreGameLoop.c:170: return COREGAMELOOP;
	ld	a, #0x02
	C$CoreGameLoop.c$171$1_0$181	= .
	.globl	C$CoreGameLoop.c$171$1_0$181
;src\CoreGameLoop.c:171: }
	C$CoreGameLoop.c$171$1_0$181	= .
	.globl	C$CoreGameLoop.c$171$1_0$181
	XG$CoreGameLoopUpdate$0$0	= .
	.globl	XG$CoreGameLoopUpdate$0$0
	ret
FCoreGameLoop$__str_3$0_0$0 == .
___str_3:
	.ascii "COMMAND"
	.db 0x00
FCoreGameLoop$__str_4$0_0$0 == .
___str_4:
	.ascii "TALK"
	.db 0x00
FCoreGameLoop$__str_5$0_0$0 == .
___str_5:
	.ascii "CHECK"
	.db 0x00
FCoreGameLoop$__str_6$0_0$0 == .
___str_6:
	.ascii "PSI"
	.db 0x00
FCoreGameLoop$__str_7$0_0$0 == .
___str_7:
	.ascii "GOODS"
	.db 0x00
FCoreGameLoop$__str_8$0_0$0 == .
___str_8:
	.ascii "NAME"
	.db 0x00
FCoreGameLoop$__str_9$0_0$0 == .
___str_9:
	.ascii "HP"
	.db 0x00
FCoreGameLoop$__str_10$0_0$0 == .
___str_10:
	.ascii "MP"
	.db 0x00
FCoreGameLoop$__str_11$0_0$0 == .
___str_11:
	.ascii "LV"
	.db 0x00
	.area _CODE_3
	.area _INITIALIZER
FCoreGameLoop$__xinit_mouse$0_0$0 == .
__xinit__mouse:
	.dw #0x0058
	.dw #0x0060
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
