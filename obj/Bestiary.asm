;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Bestiary
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BestiaryUpdate
	.globl _BestiarySetup
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
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
	G$BestiarySetup$0$0	= .
	.globl	G$BestiarySetup$0$0
	C$Bestiary.c$8$0_0$103	= .
	.globl	C$Bestiary.c$8$0_0$103
;src\Bestiary.c:8: void BestiarySetup()
;	---------------------------------
; Function BestiarySetup
; ---------------------------------
_BestiarySetup::
	C$Bestiary.c$10$1_0$103	= .
	.globl	C$Bestiary.c$10$1_0$103
;src\Bestiary.c:10: set_bkg_data(0, 53, FontTiles);
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$11$1_0$103	= .
	.globl	C$Bestiary.c$11$1_0$103
;src\Bestiary.c:11: set_bkg_data(128, 79, Crow_Tiles);
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$12$1_0$103	= .
	.globl	C$Bestiary.c$12$1_0$103
;src\Bestiary.c:12: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$13$1_0$103	= .
	.globl	C$Bestiary.c$13$1_0$103
;src\Bestiary.c:13: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map);
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$14$1_0$103	= .
	.globl	C$Bestiary.c$14$1_0$103
;src\Bestiary.c:14: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Bestiary.c$15$1_0$103	= .
	.globl	C$Bestiary.c$15$1_0$103
;src\Bestiary.c:15: fadeFromBlack(10);
	ld	a, #0x0a
	C$Bestiary.c$16$1_0$103	= .
	.globl	C$Bestiary.c$16$1_0$103
;src\Bestiary.c:16: }
	C$Bestiary.c$16$1_0$103	= .
	.globl	C$Bestiary.c$16$1_0$103
	XG$BestiarySetup$0$0	= .
	.globl	XG$BestiarySetup$0$0
	jp	_fadeFromBlack
	G$BestiaryUpdate$0$0	= .
	.globl	G$BestiaryUpdate$0$0
	C$Bestiary.c$18$1_0$104	= .
	.globl	C$Bestiary.c$18$1_0$104
;src\Bestiary.c:18: uint8_t BestiaryUpdate()
;	---------------------------------
; Function BestiaryUpdate
; ---------------------------------
_BestiaryUpdate::
	C$Bestiary.c$20$1_0$104	= .
	.globl	C$Bestiary.c$20$1_0$104
;src\Bestiary.c:20: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$Bestiary.c$21$1_0$104	= .
	.globl	C$Bestiary.c$21$1_0$104
;src\Bestiary.c:21: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$Bestiary.c$47$1_0$104	= .
	.globl	C$Bestiary.c$47$1_0$104
;src\Bestiary.c:47: if (joypadCurrent & J_SELECT)
	bit	6, (hl)
	jr	Z, 00102$
	C$Bestiary.c$49$2_0$107	= .
	.globl	C$Bestiary.c$49$2_0$107
;src\Bestiary.c:49: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$Bestiary.c$50$2_0$107	= .
	.globl	C$Bestiary.c$50$2_0$107
;src\Bestiary.c:50: return GAMETITLE;
	ld	a, #0x01
	ret
00102$:
	C$Bestiary.c$53$1_0$104	= .
	.globl	C$Bestiary.c$53$1_0$104
;src\Bestiary.c:53: return BESTIARY;
	ld	a, #0x04
	C$Bestiary.c$54$1_0$104	= .
	.globl	C$Bestiary.c$54$1_0$104
;src\Bestiary.c:54: }
	C$Bestiary.c$54$1_0$104	= .
	.globl	C$Bestiary.c$54$1_0$104
	XG$BestiaryUpdate$0$0	= .
	.globl	XG$BestiaryUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
