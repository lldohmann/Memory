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
	.globl _init_gfx
	.globl _DrawPlayer
	.globl _PlayerUpdate
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _currentGameMode
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_currentGameMode::
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
;src\main.c:10: void init_gfx() {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
;src\main.c:11: set_bkg_data(128, 78, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x4e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\main.c:12: set_bkg_based_submap(0, 0, MapWidth, MapHeight, LIVING_ROOM, MapWidth, 128);
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x20
	push	af
	inc	sp
	ld	de, #_LIVING_ROOM
	push	de
	ld	hl, #0x2020
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
;src\main.c:13: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\main.c:14: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;src\main.c:15: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src\main.c:16: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src\main.c:17: }
	ret
;src\main.c:41: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-8
;src\main.c:43: init_gfx();
	call	_init_gfx
;src\main.c:44: struct player mouse = {64, 64, 0, 0, left, idle};
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
;src\main.c:45: while(1) {
00102$:
;src\main.c:46: PlayerUpdate(&mouse);
	ld	hl, #0
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_PlayerUpdate
;src\main.c:47: DrawPlayer(&mouse);
	ld	hl, #0
	add	hl, sp
	ld	e, l
	ld	d, h
	call	_DrawPlayer
;src\main.c:50: wait_vbl_done();
	call	_wait_vbl_done
	jr	00102$
;src\main.c:52: }
	add	sp, #8
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
