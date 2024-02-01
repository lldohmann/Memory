;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_camera
	.globl _init_gfx
	.globl _DrawPlayer
	.globl _PlayerUpdate
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _redraw
	.globl _old_map_pos_y
	.globl _old_map_pos_x
	.globl _map_pos_y
	.globl _map_pos_x
	.globl _old_camera_y
	.globl _old_camera_x
	.globl _camera_y
	.globl _camera_x
	.globl _currentGameMode
	.globl _joy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joy::
	.ds 1
_currentGameMode::
	.ds 1
_camera_x::
	.ds 2
_camera_y::
	.ds 2
_old_camera_x::
	.ds 2
_old_camera_y::
	.ds 2
_map_pos_x::
	.ds 1
_map_pos_y::
	.ds 1
_old_map_pos_x::
	.ds 1
_old_map_pos_y::
	.ds 1
_redraw::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
;src\main.c:19: void init_gfx() {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
;src\main.c:21: map_pos_x = map_pos_y = 0;
	ld	hl, #_map_pos_y
	ld	(hl), #0x00
	ld	hl, #_map_pos_x
	ld	(hl), #0x00
;src\main.c:22: old_map_pos_x = old_camera_y = 255; 
	ld	hl, #_old_map_pos_x
	ld	(hl), #0xff
;src\main.c:23: camera_x = camera_y = 0;
	xor	a, a
	ld	hl, #_camera_y
	ld	(hl+), a
	ld	(hl), a
	xor	a, a
	ld	hl, #_camera_x
	ld	(hl+), a
	ld	(hl), a
;src\main.c:24: old_camera_x = camera_x; old_camera_y = camera_y;
	xor	a, a
	ld	hl, #_old_camera_x
	ld	(hl+), a
	ld	(hl), a
	xor	a, a
	ld	hl, #_old_camera_y
	ld	(hl+), a
	ld	(hl), a
;src\main.c:25: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
;src\main.c:27: set_bkg_data(128, 144, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x9080
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\main.c:28: set_bkg_based_submap(0, 0, HomeWidth, HomeHeight, Home, HomeWidth, 128);
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x25
	push	af
	inc	sp
	ld	de, #_Home
	push	de
	ld	hl, #0x3e25
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
;src\main.c:29: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\main.c:30: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;src\main.c:31: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src\main.c:32: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src\main.c:33: }
	ret
;src\main.c:58: void set_camera()
;	---------------------------------
; Function set_camera
; ---------------------------------
_set_camera::
	add	sp, #-3
;src\main.c:61: SCY_REG = camera_y; SCX_REG = camera_x;
	ld	a, (#_camera_y)
	ldh	(_SCY_REG + 0), a
	ld	a, (#_camera_x)
	ldh	(_SCX_REG + 0), a
;src\main.c:63: map_pos_y = (uint8_t)(camera_y >> 3u);
	ld	hl, #_camera_y
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	ld	hl, #_map_pos_y
	ld	(hl), c
;src\main.c:68: set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
	ld	c, (hl)
;src\main.c:64: if (map_pos_y != old_map_pos_y)
	ld	a, (hl)
	ld	hl, #_old_map_pos_y
	sub	a, (hl)
	jp	Z,00107$
;src\main.c:68: set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
	ld	hl, #_map_pos_x
	ld	e, (hl)
	ld	d, #0x00
	ld	b, (hl)
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl+), a
	ld	a, #0x25
	sub	a, e
	ld	e, a
	sbc	a, a
	sub	a, d
	ld	d, a
	ld	a, #0x25
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
;src\main.c:66: if (camera_y < old_camera_y)
	ld	de, #_camera_y
	ld	hl, #_old_camera_y
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	jr	NC, 00104$
;src\main.c:68: set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
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
	ld	h, #0x25
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
;src\main.c:68: set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
	jr	00105$
00104$:
;src\main.c:72: if ((HomeHeight - 18u) > map_pos_y)
	ld	a, (#_map_pos_y)
	sub	a, #0x2c
	jr	NC, 00105$
;src\main.c:74: set_bkg_based_submap(map_pos_x, map_pos_y + 18u, MIN(21u, HomeWidth - map_pos_x), 1, Home, HomeWidth, 128);
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
	ld	a, (#_map_pos_y)
	add	a, #0x12
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x25
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
;src\main.c:74: set_bkg_based_submap(map_pos_x, map_pos_y + 18u, MIN(21u, HomeWidth - map_pos_x), 1, Home, HomeWidth, 128);
00105$:
;src\main.c:68: set_bkg_based_submap(map_pos_x, map_pos_y, MIN(21u, HomeWidth-map_pos_x), 1, Home, HomeWidth, 128);
	ld	hl, #_map_pos_y
	ld	c, (hl)
;src\main.c:77: old_map_pos_y = map_pos_y;
	ld	hl, #_old_map_pos_y
	ld	(hl), c
00107$:
;src\main.c:80: map_pos_x = (uint8_t)(camera_x >> 3u);
	ld	hl, #_camera_x
	ld	a, (hl+)
	ld	b, a
	ld	e, (hl)
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	ld	hl, #_map_pos_x
	ld	(hl), b
;src\main.c:81: if (map_pos_x != old_map_pos_x)
	ld	a, (hl)
	ld	hl, #_old_map_pos_x
	sub	a, (hl)
	jp	Z,00114$
;src\main.c:85: set_bkg_based_submap(map_pos_x, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
	ld	hl, #_map_pos_y
	ld	e, (hl)
	ld	b, #0x00
	ld	d, (hl)
	ld	a, #0x3e
	sub	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x3e
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
;src\main.c:83: if (camera_x < old_camera_x)
	push	de
	ld	de, #_camera_x
	ld	hl, #_old_camera_x
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	pop	de
	jr	NC, 00111$
;src\main.c:85: set_bkg_based_submap(map_pos_x, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00125$
	ld	de, #0x0013
00125$:
	ld	b, e
	ld	a, (#_map_pos_x)
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x25
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
;src\main.c:85: set_bkg_based_submap(map_pos_x, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
	jr	00112$
00111$:
;src\main.c:89: if ((HomeWidth - 20u) > map_pos_x)
	ld	a, (#_map_pos_x)
	sub	a, #0x11
	jr	NC, 00112$
;src\main.c:91: set_bkg_based_submap(map_pos_x + 20u, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
	ld	a, b
	or	a, a
	jr	Z, 00127$
	ld	de, #0x0013
00127$:
	ld	b, e
	ld	a, (#_map_pos_x)
	add	a, #0x14
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	h, #0x25
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
;src\main.c:91: set_bkg_based_submap(map_pos_x + 20u, map_pos_y, 1, MIN(19u, HomeHeight - map_pos_y), Home, HomeWidth, 128);
00112$:
;src\main.c:94: old_map_pos_x = map_pos_x;
	ld	a, (#_map_pos_x)
	ld	(#_old_map_pos_x),a
00114$:
;src\main.c:97: old_camera_x = camera_x, old_camera_y = camera_y;
	ld	a, (#_camera_x)
	ld	(#_old_camera_x),a
	ld	a, (#_camera_x + 1)
	ld	(#_old_camera_x + 1),a
	ld	a, (#_camera_y)
	ld	(#_old_camera_y),a
	ld	a, (#_camera_y + 1)
	ld	(#_old_camera_y + 1),a
;src\main.c:98: }
	add	sp, #3
	ret
;src\main.c:100: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-8
;src\main.c:102: init_gfx();
	call	_init_gfx
;src\main.c:103: struct player mouse = {64, 64, 0, 0, left, idle};
	ldhl	sp,	#0
	ld	a, #0x40
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x40
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x03
	ld	(hl+), a
	ld	(hl), #0x00
;src\main.c:104: SCX_REG = camera_x; SCY_REG = camera_y; 
	ld	a, (#_camera_x)
	ldh	(_SCX_REG + 0), a
	ld	a, (#_camera_y)
	ldh	(_SCY_REG + 0), a
;src\main.c:105: while(1) {
00123$:
;src\main.c:106: PlayerUpdate(&mouse);
	ld	hl, #0
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_PlayerUpdate
;src\main.c:107: DrawPlayer(&mouse);
	ld	hl, #0
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_DrawPlayer
;src\main.c:108: joy = joypad();
	call	_joypad
	ld	hl, #_joy
	ld	(hl), a
;src\main.c:109: if (joy & J_UP) {
	ld	c, (hl)
	bit	2, c
	jr	Z, 00108$
;src\main.c:110: if (camera_y){
	ld	hl, #_camera_y + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00109$
;src\main.c:111: camera_y--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src\main.c:112: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00109$
00108$:
;src\main.c:114: } else if (joy & J_DOWN) {
	bit	3, c
	jr	Z, 00109$
;src\main.c:115: if (camera_y < HomeCameraMaxY)
	ld	hl, #_camera_y
	ld	a, (hl+)
	ld	e, (hl)
	sub	a, #0x60
	ld	a, e
	sbc	a, #0x01
	jr	NC, 00109$
;src\main.c:117: camera_y++;
	dec	hl
	inc	(hl)
	jr	NZ, 00179$
	inc	hl
	inc	(hl)
00179$:
;src\main.c:118: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00109$:
;src\main.c:122: if (joy & J_LEFT) {
	bit	1, c
	jr	Z, 00117$
;src\main.c:123: if (camera_x)
	ld	hl, #_camera_x + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00118$
;src\main.c:125: camera_x--;
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	ld	d, a
	dec	de
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;src\main.c:126: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
	jr	00118$
00117$:
;src\main.c:128: } else if (joy & J_RIGHT) {
	bit	0, c
	jr	Z, 00118$
;src\main.c:129: if (camera_x < HomeCameraMaxX)
	ld	hl, #_camera_x
	ld	a, (hl+)
	sub	a, #0x88
	ld	a, (hl)
	sbc	a, #0x00
	jr	NC, 00118$
;src\main.c:131: camera_x++;
	dec	hl
	inc	(hl)
	jr	NZ, 00182$
	inc	hl
	inc	(hl)
00182$:
;src\main.c:132: redraw = TRUE;
	ld	hl, #_redraw
	ld	(hl), #0x01
00118$:
;src\main.c:135: if (redraw)
	ld	a, (#_redraw)
	or	a, a
	jr	Z, 00120$
;src\main.c:137: wait_vbl_done();
	call	_wait_vbl_done
;src\main.c:138: set_camera();
	call	_set_camera
;src\main.c:139: redraw = FALSE;
	ld	hl, #_redraw
	ld	(hl), #0x00
	jp	00123$
00120$:
;src\main.c:144: wait_vbl_done();
	call	_wait_vbl_done
	jp	00123$
;src\main.c:147: }
	add	sp, #8
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
