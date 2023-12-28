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
	.globl _strcpy
	.globl _set_sprite_data
	.globl _set_bkg_submap
	.globl _set_bkg_data
	.globl _wait_vbl_done
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;src\main.c:12: void init_gfx() {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
;src\main.c:14: set_bkg_data(128, 78, IndoorTiles);
	ld	de, #_IndoorTiles
	push	de
	ld	hl, #0x4e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\main.c:15: set_bkg_based_submap(0, 0, MapWidth, MapHeight, Map, MapWidth, 128);
;C:/gbdk/include/gb/gb.h:1148: _submap_tile_offset = base_tile;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x80
;C:/gbdk/include/gb/gb.h:1149: set_bkg_submap(x, y, w, h, map, map_w);
	ld	a, #0x1f
	push	af
	inc	sp
	ld	de, #_Map
	push	de
	ld	hl, #0x1f1f
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap
	add	sp, #7
;C:/gbdk/include/gb/gb.h:1150: _submap_tile_offset = 0;
	ld	hl, #__submap_tile_offset
	ld	(hl), #0x00
;src\main.c:19: set_sprite_data(0, 128, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x8000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\main.c:21: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src\main.c:22: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src\main.c:23: }
	ret
;src\main.c:42: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-19
;src\main.c:44: init_gfx();
	call	_init_gfx
;src\main.c:47: strcpy(player.name, "Mouse");
	ld	de, #___str_0+0
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
	push	de
	push	bc
	call	_strcpy
	add	sp, #4
;src\main.c:48: player.health = 20;
	ldhl	sp,	#7
;src\main.c:49: player.health_Max = 20;
;src\main.c:50: player.psychic = 14;
	ld	a,#0x14
	ld	(hl+),a
	ld	(hl+), a
;src\main.c:51: player.psychic_Max = 14;
	ld	a, #0x0e
	ld	(hl+), a
	ld	(hl), #0x0e
;src\main.c:52: player.offense = 8;
	ldhl	sp,	#15
;src\main.c:53: player.defense = 5;
	ld	a, #0x08
	ld	(hl+), a
;src\main.c:54: player.luck = 11;
	ld	a, #0x05
	ld	(hl+), a
	ld	(hl), #0x0b
;src\main.c:55: player.experience = 0;
	xor	a, a
	ldhl	sp,	#11
	ld	(hl+), a
	ld	(hl), a
;src\main.c:59: while(1) {
00102$:
;src\main.c:66: wait_vbl_done();
	call	_wait_vbl_done
	jr	00102$
;src\main.c:68: }
	add	sp, #19
	ret
___str_0:
	.ascii "Mouse"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
