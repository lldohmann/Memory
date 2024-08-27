;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module CoreGameLoop
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CoreGameLoopUpdate
	.globl _CoreGameLoopSetup2
	.globl _CoreGameLoopSetup
	.globl _set_camera
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawTextWindow
	.globl _DrawNumberWindow
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
	.area _CODE
	G$set_camera$0$0	= .
	.globl	G$set_camera$0$0
	C$CoreGameLoop.c$21$0_0$115	= .
	.globl	C$CoreGameLoop.c$21$0_0$115
;src\CoreGameLoop.c:21: void set_camera()
;	---------------------------------
; Function set_camera
; ---------------------------------
_set_camera::
	add	sp, #-3
	C$CoreGameLoop.c$24$1_0$115	= .
	.globl	C$CoreGameLoop.c$24$1_0$115
;src\CoreGameLoop.c:24: SCY_REG = camera_y_pixels; SCX_REG = camera_x_pixels;
	ld	a, (#_camera_y_pixels)
	ldh	(_SCY_REG + 0), a
	ld	a, (#_camera_x_pixels)
	ldh	(_SCX_REG + 0), a
	C$CoreGameLoop.c$26$1_0$115	= .
	.globl	C$CoreGameLoop.c$26$1_0$115
;src\CoreGameLoop.c:26: map_pos_y_tiles = (uint8_t)(camera_y_pixels >> 3u);
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
	C$CoreGameLoop.c$31$1_0$115	= .
	.globl	C$CoreGameLoop.c$31$1_0$115
;src\CoreGameLoop.c:31: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	c, (hl)
	C$CoreGameLoop.c$27$1_0$115	= .
	.globl	C$CoreGameLoop.c$27$1_0$115
;src\CoreGameLoop.c:27: if (map_pos_y_tiles != old_map_pos_y_tiles)
	ld	a, (hl)
	ld	hl, #_old_map_pos_y_tiles
	sub	a, (hl)
	jp	Z,00107$
	C$CoreGameLoop.c$31$1_0$115	= .
	.globl	C$CoreGameLoop.c$31$1_0$115
;src\CoreGameLoop.c:31: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
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
	C$CoreGameLoop.c$29$2_0$116	= .
	.globl	C$CoreGameLoop.c$29$2_0$116
;src\CoreGameLoop.c:29: if (camera_y_pixels < old_camera_y_pixels) // if camera is moving up
	ld	de, #_camera_y_pixels
	ld	hl, #_old_camera_y_pixels
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00104$
;src\CoreGameLoop.c:31: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
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
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$31$2_0$116	= .
	.globl	C$CoreGameLoop.c$31$2_0$116
;src\CoreGameLoop.c:31: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	jr	00105$
00104$:
	C$CoreGameLoop.c$35$3_0$118	= .
	.globl	C$CoreGameLoop.c$35$3_0$118
;src\CoreGameLoop.c:35: if ((HomeHeight - 18u) > map_pos_y_tiles) // (have we touched the bottom of the map?) if not then...
	ld	a, (#_map_pos_y_tiles)
	sub	a, #0x30
	jr	NC, 00105$
;src\CoreGameLoop.c:37: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	de, #_Home
	ld	a, b
	or	a, a
	jr	Z, 00123$
	ld	bc, #0x0015
	jr	00124$
00123$:
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
00124$:
	ld	a, (#_map_pos_y_tiles)
	add	a, #0x12
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$37$2_0$116	= .
	.globl	C$CoreGameLoop.c$37$2_0$116
;src\CoreGameLoop.c:37: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles + 18u, MIN(21u, HomeWidth - map_pos_x_tiles), 1, Home, HomeWidth, 128);
00105$:
	C$CoreGameLoop.c$31$1_0$115	= .
	.globl	C$CoreGameLoop.c$31$1_0$115
;src\CoreGameLoop.c:31: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, MIN(21u, HomeWidth-map_pos_x_tiles), 1, Home, HomeWidth, 128);
	ld	hl, #_map_pos_y_tiles
	ld	c, (hl)
	C$CoreGameLoop.c$40$2_0$116	= .
	.globl	C$CoreGameLoop.c$40$2_0$116
;src\CoreGameLoop.c:40: old_map_pos_y_tiles = map_pos_y_tiles;
	ld	hl, #_old_map_pos_y_tiles
	ld	(hl), c
00107$:
	C$CoreGameLoop.c$43$1_0$115	= .
	.globl	C$CoreGameLoop.c$43$1_0$115
;src\CoreGameLoop.c:43: map_pos_x_tiles = (uint8_t)(camera_x_pixels >> 3u);
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
	C$CoreGameLoop.c$44$1_0$115	= .
	.globl	C$CoreGameLoop.c$44$1_0$115
;src\CoreGameLoop.c:44: if (map_pos_x_tiles != old_map_pos_x_tiles)
	ld	a, (hl)
	ld	hl, #_old_map_pos_x_tiles
	sub	a, (hl)
	jp	Z,00114$
	C$CoreGameLoop.c$48$1_0$115	= .
	.globl	C$CoreGameLoop.c$48$1_0$115
;src\CoreGameLoop.c:48: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
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
	C$CoreGameLoop.c$46$2_0$120	= .
	.globl	C$CoreGameLoop.c$46$2_0$120
;src\CoreGameLoop.c:46: if (camera_x_pixels < old_camera_x_pixels)
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
;src\CoreGameLoop.c:48: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00125$
	ld	de, #0x0013
00125$:
	ld	b, e
	ld	a, (#_map_pos_x_tiles)
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$48$2_0$120	= .
	.globl	C$CoreGameLoop.c$48$2_0$120
;src\CoreGameLoop.c:48: set_bkg_based_submap(map_pos_x_tiles, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	jr	00112$
00111$:
	C$CoreGameLoop.c$52$3_0$122	= .
	.globl	C$CoreGameLoop.c$52$3_0$122
;src\CoreGameLoop.c:52: if ((HomeWidth - 20u) > map_pos_x_tiles)
	ld	a, (#_map_pos_x_tiles)
	sub	a, #0x1d
	jr	NC, 00112$
;src\CoreGameLoop.c:54: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00127$
	ld	de, #0x0013
00127$:
	ld	b, e
	ld	a, (#_map_pos_x_tiles)
	add	a, #0x14
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$54$2_0$120	= .
	.globl	C$CoreGameLoop.c$54$2_0$120
;src\CoreGameLoop.c:54: set_bkg_based_submap(map_pos_x_tiles + 20u, map_pos_y_tiles, 1, MIN(19u, HomeHeight - map_pos_y_tiles), Home, HomeWidth, 128);
00112$:
	C$CoreGameLoop.c$57$2_0$120	= .
	.globl	C$CoreGameLoop.c$57$2_0$120
;src\CoreGameLoop.c:57: old_map_pos_x_tiles = map_pos_x_tiles;
	ld	a, (#_map_pos_x_tiles)
	ld	(#_old_map_pos_x_tiles),a
00114$:
	C$CoreGameLoop.c$60$1_0$115	= .
	.globl	C$CoreGameLoop.c$60$1_0$115
;src\CoreGameLoop.c:60: old_camera_x_pixels = camera_x_pixels, old_camera_y_pixels = camera_y_pixels;
	ld	a, (#_camera_x_pixels)
	ld	(#_old_camera_x_pixels),a
	ld	a, (#_camera_x_pixels + 1)
	ld	(#_old_camera_x_pixels + 1),a
	ld	a, (#_camera_y_pixels)
	ld	(#_old_camera_y_pixels),a
	ld	a, (#_camera_y_pixels + 1)
	ld	(#_old_camera_y_pixels + 1),a
	C$CoreGameLoop.c$61$1_0$115	= .
	.globl	C$CoreGameLoop.c$61$1_0$115
;src\CoreGameLoop.c:61: }
	add	sp, #3
	C$CoreGameLoop.c$61$1_0$115	= .
	.globl	C$CoreGameLoop.c$61$1_0$115
	XG$set_camera$0$0	= .
	.globl	XG$set_camera$0$0
	ret
	G$CoreGameLoopSetup$0$0	= .
	.globl	G$CoreGameLoopSetup$0$0
	C$CoreGameLoop.c$65$1_0$136	= .
	.globl	C$CoreGameLoop.c$65$1_0$136
;src\CoreGameLoop.c:65: void CoreGameLoopSetup()
;	---------------------------------
; Function CoreGameLoopSetup
; ---------------------------------
_CoreGameLoopSetup::
	C$CoreGameLoop.c$68$1_0$136	= .
	.globl	C$CoreGameLoop.c$68$1_0$136
;src\CoreGameLoop.c:68: map_pos_x_tiles = map_pos_y_tiles = 0;
	ld	hl, #_map_pos_y_tiles
	ld	(hl), #0x00
	ld	hl, #_map_pos_x_tiles
	ld	(hl), #0x00
	C$CoreGameLoop.c$69$1_0$136	= .
	.globl	C$CoreGameLoop.c$69$1_0$136
;src\CoreGameLoop.c:69: old_map_pos_x_tiles = old_camera_y_pixels = 255; 
	ld	hl, #_old_map_pos_x_tiles
	ld	(hl), #0xff
	C$CoreGameLoop.c$70$1_0$136	= .
	.globl	C$CoreGameLoop.c$70$1_0$136
;src\CoreGameLoop.c:70: camera_x_pixels = 208;
	ld	hl, #_camera_x_pixels
	ld	a, #0xd0
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$71$1_0$136	= .
	.globl	C$CoreGameLoop.c$71$1_0$136
;src\CoreGameLoop.c:71: camera_y_pixels = 96;
	ld	hl, #_camera_y_pixels
	ld	a, #0x60
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$72$1_0$136	= .
	.globl	C$CoreGameLoop.c$72$1_0$136
;src\CoreGameLoop.c:72: old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
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
	C$CoreGameLoop.c$73$1_0$136	= .
	.globl	C$CoreGameLoop.c$73$1_0$136
;src\CoreGameLoop.c:73: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
	C$CoreGameLoop.c$75$1_0$136	= .
	.globl	C$CoreGameLoop.c$75$1_0$136
;src\CoreGameLoop.c:75: set_bkg_data(128, 144, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x9080
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\CoreGameLoop.c:76: set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$77$1_0$136	= .
	.globl	C$CoreGameLoop.c$77$1_0$136
;src\CoreGameLoop.c:77: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$CoreGameLoop.c$78$1_0$136	= .
	.globl	C$CoreGameLoop.c$78$1_0$136
;src\CoreGameLoop.c:78: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$79$1_0$136	= .
	.globl	C$CoreGameLoop.c$79$1_0$136
;src\CoreGameLoop.c:79: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$80$1_0$136	= .
	.globl	C$CoreGameLoop.c$80$1_0$136
;src\CoreGameLoop.c:80: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$81$1_0$136	= .
	.globl	C$CoreGameLoop.c$81$1_0$136
;src\CoreGameLoop.c:81: set_camera();
	call	_set_camera
	C$CoreGameLoop.c$82$1_0$136	= .
	.globl	C$CoreGameLoop.c$82$1_0$136
;src\CoreGameLoop.c:82: fadeFromBlack(10);
	ld	a, #0x0a
	call	_fadeFromBlack
	C$CoreGameLoop.c$83$1_0$136	= .
	.globl	C$CoreGameLoop.c$83$1_0$136
;src\CoreGameLoop.c:83: DrawNumberWindow(1, 1, 31, 4);
	ld	a, #0x04
	push	af
	inc	sp
	ld	de, #0x001f
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawNumberWindow
	C$CoreGameLoop.c$84$1_0$136	= .
	.globl	C$CoreGameLoop.c$84$1_0$136
;src\CoreGameLoop.c:84: DrawTextWindow(1, 3, "Window Text");
	ld	de, #___str_0
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawTextWindow
	C$CoreGameLoop.c$85$1_0$136	= .
	.globl	C$CoreGameLoop.c$85$1_0$136
;src\CoreGameLoop.c:85: }
	C$CoreGameLoop.c$85$1_0$136	= .
	.globl	C$CoreGameLoop.c$85$1_0$136
	XG$CoreGameLoopSetup$0$0	= .
	.globl	XG$CoreGameLoopSetup$0$0
	ret
FCoreGameLoop$__str_0$0_0$0 == .
___str_0:
	.ascii "Window Text"
	.db 0x00
	G$CoreGameLoopSetup2$0$0	= .
	.globl	G$CoreGameLoopSetup2$0$0
	C$CoreGameLoop.c$87$1_0$140	= .
	.globl	C$CoreGameLoop.c$87$1_0$140
;src\CoreGameLoop.c:87: void CoreGameLoopSetup2()
;	---------------------------------
; Function CoreGameLoopSetup2
; ---------------------------------
_CoreGameLoopSetup2::
	C$CoreGameLoop.c$90$1_0$140	= .
	.globl	C$CoreGameLoop.c$90$1_0$140
;src\CoreGameLoop.c:90: map_pos_x_tiles = map_pos_y_tiles = 0;
	ld	hl, #_map_pos_y_tiles
	ld	(hl), #0x00
	ld	hl, #_map_pos_x_tiles
	ld	(hl), #0x00
	C$CoreGameLoop.c$91$1_0$140	= .
	.globl	C$CoreGameLoop.c$91$1_0$140
;src\CoreGameLoop.c:91: old_map_pos_x_tiles = old_camera_y_pixels = 255; 
	ld	hl, #_old_map_pos_x_tiles
	ld	(hl), #0xff
	C$CoreGameLoop.c$92$1_0$140	= .
	.globl	C$CoreGameLoop.c$92$1_0$140
;src\CoreGameLoop.c:92: camera_x_pixels = 208;
	ld	hl, #_camera_x_pixels
	ld	a, #0xd0
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$93$1_0$140	= .
	.globl	C$CoreGameLoop.c$93$1_0$140
;src\CoreGameLoop.c:93: camera_y_pixels = 96;
	ld	hl, #_camera_y_pixels
	ld	a, #0x60
	ld	(hl+), a
	xor	a, a
	ld	(hl), a
	C$CoreGameLoop.c$94$1_0$140	= .
	.globl	C$CoreGameLoop.c$94$1_0$140
;src\CoreGameLoop.c:94: old_camera_x_pixels = camera_x_pixels; old_camera_y_pixels = camera_y_pixels;
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
	C$CoreGameLoop.c$95$1_0$140	= .
	.globl	C$CoreGameLoop.c$95$1_0$140
;src\CoreGameLoop.c:95: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
	C$CoreGameLoop.c$97$1_0$140	= .
	.globl	C$CoreGameLoop.c$97$1_0$140
;src\CoreGameLoop.c:97: set_bkg_data(128, 144, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x9080
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\CoreGameLoop.c:98: set_bkg_based_submap(0, 0, 20u, 18u, Home, HomeWidth, 128);
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
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
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
	C$CoreGameLoop.c$99$1_0$140	= .
	.globl	C$CoreGameLoop.c$99$1_0$140
;src\CoreGameLoop.c:99: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$CoreGameLoop.c$100$1_0$140	= .
	.globl	C$CoreGameLoop.c$100$1_0$140
;src\CoreGameLoop.c:100: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$101$1_0$140	= .
	.globl	C$CoreGameLoop.c$101$1_0$140
;src\CoreGameLoop.c:101: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$102$1_0$140	= .
	.globl	C$CoreGameLoop.c$102$1_0$140
;src\CoreGameLoop.c:102: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$CoreGameLoop.c$103$1_0$140	= .
	.globl	C$CoreGameLoop.c$103$1_0$140
;src\CoreGameLoop.c:103: set_camera();
	call	_set_camera
	C$CoreGameLoop.c$104$1_0$140	= .
	.globl	C$CoreGameLoop.c$104$1_0$140
;src\CoreGameLoop.c:104: fadeFromBlack(10);
	ld	a, #0x0a
	C$CoreGameLoop.c$105$1_0$140	= .
	.globl	C$CoreGameLoop.c$105$1_0$140
;src\CoreGameLoop.c:105: }
	C$CoreGameLoop.c$105$1_0$140	= .
	.globl	C$CoreGameLoop.c$105$1_0$140
	XG$CoreGameLoopSetup2$0$0	= .
	.globl	XG$CoreGameLoopSetup2$0$0
	jp	_fadeFromBlack
	G$CoreGameLoopUpdate$0$0	= .
	.globl	G$CoreGameLoopUpdate$0$0
	C$CoreGameLoop.c$109$1_0$144	= .
	.globl	C$CoreGameLoop.c$109$1_0$144
;src\CoreGameLoop.c:109: uint8_t CoreGameLoopUpdate()
;	---------------------------------
; Function CoreGameLoopUpdate
; ---------------------------------
_CoreGameLoopUpdate::
	C$CoreGameLoop.c$111$1_0$144	= .
	.globl	C$CoreGameLoop.c$111$1_0$144
;src\CoreGameLoop.c:111: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
	C$CoreGameLoop.c$112$1_0$144	= .
	.globl	C$CoreGameLoop.c$112$1_0$144
;src\CoreGameLoop.c:112: PlayerUpdate(&mouse);
	ld	de, #_mouse
	call	_PlayerUpdate
	C$CoreGameLoop.c$113$1_0$144	= .
	.globl	C$CoreGameLoop.c$113$1_0$144
;src\CoreGameLoop.c:113: DrawPlayer(&mouse);
	ld	de, #_mouse
	call	_DrawPlayer
	C$CoreGameLoop.c$118$1_0$144	= .
	.globl	C$CoreGameLoop.c$118$1_0$144
;src\CoreGameLoop.c:118: if (joypadCurrent & J_UP) {
	ld	hl, #_joypadCurrent
	ld	c, (hl)
	bit	2, c
	jr	Z, 00108$
	C$CoreGameLoop.c$119$2_0$146	= .
	.globl	C$CoreGameLoop.c$119$2_0$146
;src\CoreGameLoop.c:119: if (camera_y_pixels){
	ld	hl, #_camera_y_pixels + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00109$
	C$CoreGameLoop.c$120$3_0$147	= .
	.globl	C$CoreGameLoop.c$120$3_0$147
;src\CoreGameLoop.c:120: camera_y_pixels--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$CoreGameLoop.c$121$3_0$147	= .
	.globl	C$CoreGameLoop.c$121$3_0$147
;src\CoreGameLoop.c:121: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00109$
00108$:
	C$CoreGameLoop.c$123$1_0$144	= .
	.globl	C$CoreGameLoop.c$123$1_0$144
;src\CoreGameLoop.c:123: } else if (joypadCurrent & J_DOWN) {
	bit	3, c
	jr	Z, 00109$
	C$CoreGameLoop.c$124$2_0$148	= .
	.globl	C$CoreGameLoop.c$124$2_0$148
;src\CoreGameLoop.c:124: if (camera_y_pixels < HomeCameraMaxY)
	ld	hl, #_camera_y_pixels
	ld	a, (hl+)
	ld	e, (hl)
	sub	a, #0x80
	ld	a, e
	sbc	a, #0x01
	jr	NC, 00109$
	C$CoreGameLoop.c$126$3_0$149	= .
	.globl	C$CoreGameLoop.c$126$3_0$149
;src\CoreGameLoop.c:126: camera_y_pixels++;
	dec	hl
	inc	(hl)
	jr	NZ, 00192$
	inc	hl
	inc	(hl)
00192$:
	C$CoreGameLoop.c$127$3_0$149	= .
	.globl	C$CoreGameLoop.c$127$3_0$149
;src\CoreGameLoop.c:127: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00109$:
	C$CoreGameLoop.c$131$1_0$144	= .
	.globl	C$CoreGameLoop.c$131$1_0$144
;src\CoreGameLoop.c:131: if (joypadCurrent & J_LEFT) {
	bit	1, c
	jr	Z, 00123$
	C$CoreGameLoop.c$132$2_0$150	= .
	.globl	C$CoreGameLoop.c$132$2_0$150
;src\CoreGameLoop.c:132: if (camera_x_pixels)
	ld	hl, #_camera_x_pixels + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00124$
	C$CoreGameLoop.c$134$3_0$151	= .
	.globl	C$CoreGameLoop.c$134$3_0$151
;src\CoreGameLoop.c:134: camera_x_pixels--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$CoreGameLoop.c$135$3_0$151	= .
	.globl	C$CoreGameLoop.c$135$3_0$151
;src\CoreGameLoop.c:135: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00124$
00123$:
	C$CoreGameLoop.c$137$1_0$144	= .
	.globl	C$CoreGameLoop.c$137$1_0$144
;src\CoreGameLoop.c:137: } else if (joypadCurrent & J_RIGHT) {
	bit	0, c
	jr	Z, 00120$
	C$CoreGameLoop.c$138$2_0$152	= .
	.globl	C$CoreGameLoop.c$138$2_0$152
;src\CoreGameLoop.c:138: if (camera_x_pixels < HomeCameraMaxX)
	ld	hl, #_camera_x_pixels
	ld	a, (hl+)
	sub	a, #0xe8
	ld	a, (hl)
	sbc	a, #0x00
	jr	NC, 00124$
	C$CoreGameLoop.c$140$3_0$153	= .
	.globl	C$CoreGameLoop.c$140$3_0$153
;src\CoreGameLoop.c:140: camera_x_pixels++;
	dec	hl
	inc	(hl)
	jr	NZ, 00195$
	inc	hl
	inc	(hl)
00195$:
	C$CoreGameLoop.c$141$3_0$153	= .
	.globl	C$CoreGameLoop.c$141$3_0$153
;src\CoreGameLoop.c:141: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00124$
00120$:
	C$CoreGameLoop.c$143$1_0$144	= .
	.globl	C$CoreGameLoop.c$143$1_0$144
;src\CoreGameLoop.c:143: } else if (joypadCurrent & J_SELECT) {
	bit	6, c
	jr	Z, 00117$
	C$CoreGameLoop.c$144$2_0$154	= .
	.globl	C$CoreGameLoop.c$144$2_0$154
;src\CoreGameLoop.c:144: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$CoreGameLoop.c$145$2_0$154	= .
	.globl	C$CoreGameLoop.c$145$2_0$154
;src\CoreGameLoop.c:145: return GAMETITLE;
	ld	a, #0x01
	ret
00117$:
	C$CoreGameLoop.c$147$1_0$144	= .
	.globl	C$CoreGameLoop.c$147$1_0$144
;src\CoreGameLoop.c:147: else if (joypadCurrent & J_A)
	bit	4, c
	jr	Z, 00124$
	C$CoreGameLoop.c$149$2_0$155	= .
	.globl	C$CoreGameLoop.c$149$2_0$155
;src\CoreGameLoop.c:149: set_sprite_data(0, 16, Skateboard_Tiles);
	ld	de, #_Skateboard_Tiles
	push	de
	ld	hl, #0x1000
	push	hl
	call	_set_sprite_data
	add	sp, #4
00124$:
	C$CoreGameLoop.c$151$1_0$144	= .
	.globl	C$CoreGameLoop.c$151$1_0$144
;src\CoreGameLoop.c:151: if (redraw)
	ld	a, (#_redraw)
	or	a, a
	jr	Z, 00126$
	C$CoreGameLoop.c$153$2_0$156	= .
	.globl	C$CoreGameLoop.c$153$2_0$156
;src\CoreGameLoop.c:153: wait_vbl_done();
	call	_wait_vbl_done
	C$CoreGameLoop.c$154$2_0$156	= .
	.globl	C$CoreGameLoop.c$154$2_0$156
;src\CoreGameLoop.c:154: set_camera();
	call	_set_camera
	C$CoreGameLoop.c$155$2_0$156	= .
	.globl	C$CoreGameLoop.c$155$2_0$156
;src\CoreGameLoop.c:155: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
00126$:
	C$CoreGameLoop.c$158$1_0$144	= .
	.globl	C$CoreGameLoop.c$158$1_0$144
;src\CoreGameLoop.c:158: return COREGAMELOOP;
	ld	a, #0x02
	C$CoreGameLoop.c$159$1_0$144	= .
	.globl	C$CoreGameLoop.c$159$1_0$144
;src\CoreGameLoop.c:159: }
	C$CoreGameLoop.c$159$1_0$144	= .
	.globl	C$CoreGameLoop.c$159$1_0$144
	XG$CoreGameLoopUpdate$0$0	= .
	.globl	XG$CoreGameLoopUpdate$0$0
	ret
	.area _CODE
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
