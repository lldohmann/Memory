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
G$timer$0_0$0==.
_timer::
	.ds 1
G$frame$0_0$0==.
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
	G$GameTitleSetup$0$0	= .
	.globl	G$GameTitleSetup$0$0
	C$GameTitle.c$91$0_0$121	= .
	.globl	C$GameTitle.c$91$0_0$121
;src\GameTitle.c:91: void GameTitleSetup()
;	---------------------------------
; Function GameTitleSetup
; ---------------------------------
_GameTitleSetup::
;C:/gbdk/include/gb/gb.h:1208: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$GameTitle.c$94$1_0$121	= .
	.globl	C$GameTitle.c$94$1_0$121
;src\GameTitle.c:94: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$GameTitle.c$95$1_0$121	= .
	.globl	C$GameTitle.c$95$1_0$121
;src\GameTitle.c:95: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$GameTitle.c$96$1_0$121	= .
	.globl	C$GameTitle.c$96$1_0$121
;src\GameTitle.c:96: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$97$1_0$121	= .
	.globl	C$GameTitle.c$97$1_0$121
;src\GameTitle.c:97: set_bkg_data(0, 50, TitleLabel);
	ld	de, #_TitleLabel
	push	de
	ld	hl, #0x3200
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$GameTitle.c$98$1_0$121	= .
	.globl	C$GameTitle.c$98$1_0$121
;src\GameTitle.c:98: set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
	ld	de, #_Title_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$GameTitle.c$99$1_0$121	= .
	.globl	C$GameTitle.c$99$1_0$121
;src\GameTitle.c:99: set_sprite_data(0, 112, Globe_Tiles);
	ld	de, #_Globe_Tiles
	push	de
	ld	hl, #0x7000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\GameTitle.c:100: move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
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
	C$GameTitle.c$101$1_0$121	= .
	.globl	C$GameTitle.c$101$1_0$121
;src\GameTitle.c:101: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$102$1_0$121	= .
	.globl	C$GameTitle.c$102$1_0$121
;src\GameTitle.c:102: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$103$1_0$121	= .
	.globl	C$GameTitle.c$103$1_0$121
;src\GameTitle.c:103: fadeFromBlack(10);
	ld	a, #0x0a
	C$GameTitle.c$104$1_0$121	= .
	.globl	C$GameTitle.c$104$1_0$121
;src\GameTitle.c:104: }
	C$GameTitle.c$104$1_0$121	= .
	.globl	C$GameTitle.c$104$1_0$121
	XG$GameTitleSetup$0$0	= .
	.globl	XG$GameTitleSetup$0$0
	jp	_fadeFromBlack
G$globe1$0_0$0 == .
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
G$globe2$0_0$0 == .
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
G$globe3$0_0$0 == .
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
G$globe4$0_0$0 == .
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
G$globe5$0_0$0 == .
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
G$globe6$0_0$0 == .
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
G$globe7$0_0$0 == .
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
G$globe_metasprites$0_0$0 == .
_globe_metasprites:
	.dw _globe1
	.dw _globe2
	.dw _globe3
	.dw _globe4
	.dw _globe5
	.dw _globe6
	.dw _globe7
	G$GameTitleUpdate$0$0	= .
	.globl	G$GameTitleUpdate$0$0
	C$GameTitle.c$108$1_0$128	= .
	.globl	C$GameTitle.c$108$1_0$128
;src\GameTitle.c:108: uint8_t GameTitleUpdate()
;	---------------------------------
; Function GameTitleUpdate
; ---------------------------------
_GameTitleUpdate::
	C$GameTitle.c$110$1_0$128	= .
	.globl	C$GameTitle.c$110$1_0$128
;src\GameTitle.c:110: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$GameTitle.c$111$1_0$128	= .
	.globl	C$GameTitle.c$111$1_0$128
;src\GameTitle.c:111: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
	C$GameTitle.c$112$1_0$128	= .
	.globl	C$GameTitle.c$112$1_0$128
;src\GameTitle.c:112: timer++;
	ld	hl, #_timer
	inc	(hl)
	C$GameTitle.c$113$1_0$128	= .
	.globl	C$GameTitle.c$113$1_0$128
;src\GameTitle.c:113: if (timer == 60)
	ld	a, (hl)
	sub	a, #0x3c
	jr	NZ, 00102$
	C$GameTitle.c$115$2_0$129	= .
	.globl	C$GameTitle.c$115$2_0$129
;src\GameTitle.c:115: frame++; 
	ld	hl, #_frame
	inc	(hl)
	C$GameTitle.c$116$2_0$129	= .
	.globl	C$GameTitle.c$116$2_0$129
;src\GameTitle.c:116: timer = 0;
	ld	hl, #_timer
	ld	(hl), #0x00
00102$:
	C$GameTitle.c$118$1_0$128	= .
	.globl	C$GameTitle.c$118$1_0$128
;src\GameTitle.c:118: if (frame >= 7) frame = 0;
	ld	hl, #_frame
	ld	a, (hl)
	sub	a, #0x07
	jr	C, 00104$
	ld	(hl), #0x00
00104$:
;src\GameTitle.c:119: move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
	ld	bc, #_globe_metasprites+0
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, l
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	ld	hl, #0x4058
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	pop	bc
	C$GameTitle.c$110$1_0$128	= .
	.globl	C$GameTitle.c$110$1_0$128
;src\GameTitle.c:110: joypadPrevious = joypadCurrent;
	ld	hl, #_joypadCurrent
	ld	e, (hl)
	C$GameTitle.c$120$1_0$128	= .
	.globl	C$GameTitle.c$120$1_0$128
;src\GameTitle.c:120: if (joypadCurrent & J_START)
	bit	7, e
	jr	Z, 00106$
	C$GameTitle.c$122$2_0$130	= .
	.globl	C$GameTitle.c$122$2_0$130
;src\GameTitle.c:122: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:123: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
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
	ld	hl, #0xb0b0
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	C$GameTitle.c$124$2_0$130	= .
	.globl	C$GameTitle.c$124$2_0$130
;src\GameTitle.c:124: return COREGAMELOOP;
	ld	a, #0x02
	ret
00106$:
	C$GameTitle.c$126$1_0$128	= .
	.globl	C$GameTitle.c$126$1_0$128
;src\GameTitle.c:126: if (joypadCurrent & J_SELECT)
	bit	6, e
	jr	Z, 00108$
	C$GameTitle.c$128$2_0$131	= .
	.globl	C$GameTitle.c$128$2_0$131
;src\GameTitle.c:128: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:129: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
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
	ld	hl, #0xb0b0
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	C$GameTitle.c$130$2_0$131	= .
	.globl	C$GameTitle.c$130$2_0$131
;src\GameTitle.c:130: return GAMEJOHNDOE;
	ld	a, #0x03
	ret
00108$:
	C$GameTitle.c$132$1_0$128	= .
	.globl	C$GameTitle.c$132$1_0$128
;src\GameTitle.c:132: if (joypadCurrent & J_B)
	bit	5, e
	jr	Z, 00110$
	C$GameTitle.c$134$2_0$132	= .
	.globl	C$GameTitle.c$134$2_0$132
;src\GameTitle.c:134: fadeToBlack(3);
	push	bc
	ld	a, #0x03
	call	_fadeToBlack
	ld	a, #0x03
	call	_fadeFromBlack
	ld	a, #0x03
	call	_fadeToBlack
	ld	a, #0x03
	call	_fadeFromBlack
	ld	a, #0x03
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:139: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
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
	ld	hl, #0xb0b0
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	C$GameTitle.c$140$2_0$132	= .
	.globl	C$GameTitle.c$140$2_0$132
;src\GameTitle.c:140: return BATTLE;
	ld	a, #0x05
	ret
00110$:
	C$GameTitle.c$142$1_0$128	= .
	.globl	C$GameTitle.c$142$1_0$128
;src\GameTitle.c:142: if (joypadCurrent & J_A)
	bit	4, e
	jr	Z, 00112$
	C$GameTitle.c$144$2_0$133	= .
	.globl	C$GameTitle.c$144$2_0$133
;src\GameTitle.c:144: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:145: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
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
	ld	hl, #0xb0b0
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
	C$GameTitle.c$146$2_0$133	= .
	.globl	C$GameTitle.c$146$2_0$133
;src\GameTitle.c:146: return BESTIARY;
	ld	a, #0x04
	ret
00112$:
	C$GameTitle.c$149$1_0$128	= .
	.globl	C$GameTitle.c$149$1_0$128
;src\GameTitle.c:149: return GAMETITLE;
	ld	a, #0x01
	C$GameTitle.c$150$1_0$128	= .
	.globl	C$GameTitle.c$150$1_0$128
;src\GameTitle.c:150: }
	C$GameTitle.c$150$1_0$128	= .
	.globl	C$GameTitle.c$150$1_0$128
	XG$GameTitleUpdate$0$0	= .
	.globl	XG$GameTitleUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
FGameTitle$__xinit_timer$0_0$0 == .
__xinit__timer:
	.db #0x00	; 0
FGameTitle$__xinit_frame$0_0$0 == .
__xinit__frame:
	.db #0x00	; 0
	.area _CABS (ABS)
