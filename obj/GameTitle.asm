;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module GameTitle
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GameTitleUpdate
	.globl _GameTitleSetup
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _frame
	.globl _timer
	.globl _globe_metasprites
	.globl _globe7
	.globl _globe6
	.globl _globe5
	.globl _globe4
	.globl _globe3
	.globl _globe2
	.globl _globe1
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
_timer::
	.ds 1
_frame::
	.ds 1
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
;res\GameTitle.c:91: void GameTitleSetup()
;	---------------------------------
; Function GameTitleSetup
; ---------------------------------
_GameTitleSetup::
;res\GameTitle.c:93: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
;res\GameTitle.c:94: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
;res\GameTitle.c:95: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;res\GameTitle.c:96: set_bkg_data(0, 50, TitleLabel);
	ld	de, #_TitleLabel
	push	de
	ld	hl, #0x3200
	push	hl
	call	_set_bkg_data
	add	sp, #4
;res\GameTitle.c:97: set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
	ld	de, #_Title_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;res\GameTitle.c:98: set_sprite_data(0, 112, Globe_Tiles);
	ld	de, #_Globe_Tiles
	push	de
	ld	hl, #0x7000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;res\GameTitle.c:99: move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
	ld	hl, #(_globe_metasprites + 12)
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ld	hl, #0x4058
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;res\GameTitle.c:100: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;res\GameTitle.c:101: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;res\GameTitle.c:102: fadeFromBlack(10);
	ld	a, #0x0a
;res\GameTitle.c:103: }
	jp	_fadeFromBlack
_globe1:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe2:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x1a	; 26
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe3:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x2a	; 42
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x2c	; 44
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe4:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x3c	; 60
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe5:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x4e	; 78	'N'
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe6:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x52	; 82	'R'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x5a	; 90	'Z'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x5c	; 92
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x5e	; 94
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe7:
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x66	; 102	'f'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xf0	; -16
	.db #0x08	;  8
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x10	;  16
	.db #0x00	;  0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_globe_metasprites:
	.dw _globe1
	.dw _globe2
	.dw _globe3
	.dw _globe4
	.dw _globe5
	.dw _globe6
	.dw _globe7
;res\GameTitle.c:107: uint8_t GameTitleUpdate()
;	---------------------------------
; Function GameTitleUpdate
; ---------------------------------
_GameTitleUpdate::
;res\GameTitle.c:109: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
;res\GameTitle.c:110: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
;res\GameTitle.c:111: timer++;
	ld	hl, #_timer
	inc	(hl)
;res\GameTitle.c:112: if (timer == 10)
	ld	a, (hl)
	sub	a, #0x0a
	jr	NZ, 00102$
;res\GameTitle.c:114: frame++; 
	ld	hl, #_frame
	inc	(hl)
;res\GameTitle.c:115: timer = 0;
	ld	hl, #_timer
	ld	(hl), #0x00
00102$:
;res\GameTitle.c:117: if (frame >= 7) frame = 0;
	ld	hl, #_frame
	ld	a, (hl)
	sub	a, #0x07
	jr	C, 00104$
	ld	(hl), #0x00
00104$:
;res\GameTitle.c:118: move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #_globe_metasprites
	add	hl, de
	ld	a, (hl+)
	ld	c, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl+), a
	ld	(hl), c
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ld	hl, #0x4058
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;res\GameTitle.c:119: if (joypadCurrent & J_START)
	ld	a, (#_joypadCurrent)
	rlca
	jr	NC, 00106$
;res\GameTitle.c:121: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
;res\GameTitle.c:122: return COREGAMELOOP;
	ld	a, #0x02
	ret
00106$:
;res\GameTitle.c:124: wait_vbl_done();
	call	_wait_vbl_done
;res\GameTitle.c:125: return GAMETITLE;
	ld	a, #0x01
;res\GameTitle.c:126: }
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__timer:
	.db #0x00	; 0
__xinit__frame:
	.db #0x00	; 0
	.area _CABS (ABS)
