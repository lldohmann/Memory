;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module GameTitle
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_GameTitleUpdate
	.globl _GameTitleUpdate
	.globl b___func_GameTitleUpdate
	.globl ___func_GameTitleUpdate
	.globl b_GameTitleSetup
	.globl _GameTitleSetup
	.globl b___func_GameTitleSetup
	.globl ___func_GameTitleSetup
	.globl b___func_const_bank_ID_title
	.globl ___func_const_bank_ID_title
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
	.globl _const_bank_ID_title
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
	.area _CODE_1
	G$__func_const_bank_ID_title$0$0	= .
	.globl	G$__func_const_bank_ID_title$0$0
	C$GameTitle.c$10$0_0$164	= .
	.globl	C$GameTitle.c$10$0_0$164
;src\GameTitle.c:10: BANKREF(const_bank_ID_title)
;	---------------------------------
; Function __func_const_bank_ID_title
; ---------------------------------
	b___func_const_bank_ID_title	= 1
___func_const_bank_ID_title::
	.local b___func_const_bank_ID_title 
	___bank_const_bank_ID_title = b___func_const_bank_ID_title 
	.globl ___bank_const_bank_ID_title 
	G$__func_GameTitleSetup$0$0	= .
	.globl	G$__func_GameTitleSetup$0$0
	C$GameTitle.c$98$1_0$166	= .
	.globl	C$GameTitle.c$98$1_0$166
;src\GameTitle.c:98: BANKREF(GameTitleSetup)
;	---------------------------------
; Function __func_GameTitleSetup
; ---------------------------------
	b___func_GameTitleSetup	= 1
___func_GameTitleSetup::
	.local b___func_GameTitleSetup 
	___bank_GameTitleSetup = b___func_GameTitleSetup 
	.globl ___bank_GameTitleSetup 
	G$GameTitleSetup$0$0	= .
	.globl	G$GameTitleSetup$0$0
	C$GameTitle.c$99$1_0$168	= .
	.globl	C$GameTitle.c$99$1_0$168
;src\GameTitle.c:99: void GameTitleSetup(void) BANKED
;	---------------------------------
; Function GameTitleSetup
; ---------------------------------
	b_GameTitleSetup	= 1
_GameTitleSetup::
;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$GameTitle.c$102$1_0$168	= .
	.globl	C$GameTitle.c$102$1_0$168
;src\GameTitle.c:102: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$GameTitle.c$103$1_0$168	= .
	.globl	C$GameTitle.c$103$1_0$168
;src\GameTitle.c:103: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$GameTitle.c$104$1_0$168	= .
	.globl	C$GameTitle.c$104$1_0$168
;src\GameTitle.c:104: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$105$1_0$168	= .
	.globl	C$GameTitle.c$105$1_0$168
;src\GameTitle.c:105: set_bkg_data(0, 50, TitleLabel);
	ld	de, #_TitleLabel
	push	de
	ld	hl, #0x3200
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$GameTitle.c$106$1_0$168	= .
	.globl	C$GameTitle.c$106$1_0$168
;src\GameTitle.c:106: set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
	ld	de, #_Title_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$GameTitle.c$107$1_0$168	= .
	.globl	C$GameTitle.c$107$1_0$168
;src\GameTitle.c:107: set_sprite_data(0, 112, Globe_Tiles);
	ld	de, #_Globe_Tiles
	push	de
	ld	hl, #0x7000
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\GameTitle.c:108: move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
	ld	hl, #(_globe_metasprites + 12)
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0x4058
	xor	a, a
	call	___move_metasprite
	C$GameTitle.c$109$1_0$168	= .
	.globl	C$GameTitle.c$109$1_0$168
;src\GameTitle.c:109: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$110$1_0$168	= .
	.globl	C$GameTitle.c$110$1_0$168
;src\GameTitle.c:110: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$GameTitle.c$111$1_0$168	= .
	.globl	C$GameTitle.c$111$1_0$168
;src\GameTitle.c:111: fadeFromBlack(10);
	ld	a, #0x0a
	C$GameTitle.c$112$1_0$168	= .
	.globl	C$GameTitle.c$112$1_0$168
;src\GameTitle.c:112: }
	C$GameTitle.c$112$1_0$168	= .
	.globl	C$GameTitle.c$112$1_0$168
	XG$GameTitleSetup$0$0	= .
	.globl	XG$GameTitleSetup$0$0
	jp	_fadeFromBlack
G$const_bank_ID_title$0_0$0 == .
_const_bank_ID_title:
	.db #0x01	; 1
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
	G$__func_GameTitleUpdate$0$0	= .
	.globl	G$__func_GameTitleUpdate$0$0
	C$GameTitle.c$117$1_0$176	= .
	.globl	C$GameTitle.c$117$1_0$176
;src\GameTitle.c:117: BANKREF(GameTitleUpdate)
;	---------------------------------
; Function __func_GameTitleUpdate
; ---------------------------------
	b___func_GameTitleUpdate	= 1
___func_GameTitleUpdate::
	.local b___func_GameTitleUpdate 
	___bank_GameTitleUpdate = b___func_GameTitleUpdate 
	.globl ___bank_GameTitleUpdate 
	G$GameTitleUpdate$0$0	= .
	.globl	G$GameTitleUpdate$0$0
	C$GameTitle.c$118$1_0$178	= .
	.globl	C$GameTitle.c$118$1_0$178
;src\GameTitle.c:118: uint8_t GameTitleUpdate(void) BANKED
;	---------------------------------
; Function GameTitleUpdate
; ---------------------------------
	b_GameTitleUpdate	= 1
_GameTitleUpdate::
	C$GameTitle.c$120$1_0$178	= .
	.globl	C$GameTitle.c$120$1_0$178
;src\GameTitle.c:120: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$GameTitle.c$121$1_0$178	= .
	.globl	C$GameTitle.c$121$1_0$178
;src\GameTitle.c:121: joypadCurrent = joypad();
	call	_joypad
	ld	(#_joypadCurrent),a
	C$GameTitle.c$122$1_0$178	= .
	.globl	C$GameTitle.c$122$1_0$178
;src\GameTitle.c:122: timer++;
	ld	hl, #_timer
	inc	(hl)
	C$GameTitle.c$123$1_0$178	= .
	.globl	C$GameTitle.c$123$1_0$178
;src\GameTitle.c:123: if (timer == 60)
	ld	a, (hl)
	sub	a, #0x3c
	jr	NZ, 00102$
	C$GameTitle.c$125$2_0$179	= .
	.globl	C$GameTitle.c$125$2_0$179
;src\GameTitle.c:125: frame++; 
	ld	hl, #_frame
	inc	(hl)
	C$GameTitle.c$126$2_0$179	= .
	.globl	C$GameTitle.c$126$2_0$179
;src\GameTitle.c:126: timer = 0;
	ld	hl, #_timer
	ld	(hl), #0x00
00102$:
	C$GameTitle.c$128$1_0$178	= .
	.globl	C$GameTitle.c$128$1_0$178
;src\GameTitle.c:128: if (frame >= 7) frame = 0;
	ld	hl, #_frame
	ld	a, (hl)
	sub	a, #0x07
	jr	C, 00104$
	ld	(hl), #0x00
00104$:
;src\GameTitle.c:129: move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
	ld	bc, #_globe_metasprites+0
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	l, (hl)
;	spillPairReg hl
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	e, a
	ld	d, l
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	push	bc
	ld	de, #0x4058
	xor	a, a
	call	___move_metasprite
	pop	bc
	C$GameTitle.c$130$1_0$178	= .
	.globl	C$GameTitle.c$130$1_0$178
;src\GameTitle.c:130: if (joypadCurrent & J_START)
	ld	hl, #_joypadCurrent
	ld	e, (hl)
	bit	7, e
	jr	Z, 00106$
	C$GameTitle.c$132$2_0$180	= .
	.globl	C$GameTitle.c$132$2_0$180
;src\GameTitle.c:132: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:133: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, (hl)
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl+), a
	ld	(hl), c
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0xb0b0
	xor	a, a
	call	___move_metasprite
	C$GameTitle.c$134$2_0$180	= .
	.globl	C$GameTitle.c$134$2_0$180
;src\GameTitle.c:134: return COREGAMELOOP;
	ld	a, #0x02
	ret
00106$:
	C$GameTitle.c$136$1_0$178	= .
	.globl	C$GameTitle.c$136$1_0$178
;src\GameTitle.c:136: if (joypadCurrent & J_SELECT)
	bit	6, e
	jr	Z, 00108$
	C$GameTitle.c$138$2_0$181	= .
	.globl	C$GameTitle.c$138$2_0$181
;src\GameTitle.c:138: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
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
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl+), a
	ld	(hl), c
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0xb0b0
	xor	a, a
	call	___move_metasprite
	C$GameTitle.c$140$2_0$181	= .
	.globl	C$GameTitle.c$140$2_0$181
;src\GameTitle.c:140: return GAMEJOHNDOE;
	ld	a, #0x03
	ret
00108$:
	C$GameTitle.c$142$1_0$178	= .
	.globl	C$GameTitle.c$142$1_0$178
;src\GameTitle.c:142: if (joypadCurrent & J_B)
	bit	5, e
	jr	Z, 00110$
	C$GameTitle.c$144$2_0$182	= .
	.globl	C$GameTitle.c$144$2_0$182
;src\GameTitle.c:144: fadeToBlack(3);
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
;src\GameTitle.c:149: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, (hl)
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl+), a
	ld	(hl), c
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0xb0b0
	xor	a, a
	call	___move_metasprite
	C$GameTitle.c$150$2_0$182	= .
	.globl	C$GameTitle.c$150$2_0$182
;src\GameTitle.c:150: return BATTLE;
	ld	a, #0x05
	ret
00110$:
	C$GameTitle.c$152$1_0$178	= .
	.globl	C$GameTitle.c$152$1_0$178
;src\GameTitle.c:152: if (joypadCurrent & J_A)
	bit	4, e
	jr	Z, 00112$
	C$GameTitle.c$154$2_0$183	= .
	.globl	C$GameTitle.c$154$2_0$183
;src\GameTitle.c:154: fadeToBlack(10);
	push	bc
	ld	a, #0x0a
	call	_fadeToBlack
	pop	bc
;src\GameTitle.c:155: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
	ld	hl, #_frame
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	h, a
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, (hl)
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl+), a
	ld	(hl), c
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	de, #0xb0b0
	xor	a, a
	call	___move_metasprite
	C$GameTitle.c$156$2_0$183	= .
	.globl	C$GameTitle.c$156$2_0$183
;src\GameTitle.c:156: return BESTIARY;
	ld	a, #0x04
	ret
00112$:
	C$GameTitle.c$159$1_0$178	= .
	.globl	C$GameTitle.c$159$1_0$178
;src\GameTitle.c:159: return GAMETITLE;
	ld	a, #0x01
	C$GameTitle.c$160$1_0$178	= .
	.globl	C$GameTitle.c$160$1_0$178
;src\GameTitle.c:160: }
	C$GameTitle.c$160$1_0$178	= .
	.globl	C$GameTitle.c$160$1_0$178
	XG$GameTitleUpdate$0$0	= .
	.globl	XG$GameTitleUpdate$0$0
	ret
	.area _CODE_1
	.area _INITIALIZER
FGameTitle$__xinit_timer$0_0$0 == .
__xinit__timer:
	.db #0x00	; 0
FGameTitle$__xinit_frame$0_0$0 == .
__xinit__frame:
	.db #0x00	; 0
	.area _CABS (ABS)
