;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module GameJohnDoe
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fadeFromWhite
	.globl _fadeToWhite
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _GameJohnDoeSetup
	.globl _GameJohnDoeUpdate
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
	G$GameJohnDoeSetup$0$0	= .
	.globl	G$GameJohnDoeSetup$0$0
	C$GameJohnDoe.c$7$0_0$103	= .
	.globl	C$GameJohnDoe.c$7$0_0$103
;src\GameJohnDoe.c:7: void GameJohnDoeSetup()
;	---------------------------------
; Function GameJohnDoeSetup
; ---------------------------------
_GameJohnDoeSetup::
	C$GameJohnDoe.c$9$1_0$103	= .
	.globl	C$GameJohnDoe.c$9$1_0$103
;src\GameJohnDoe.c:9: set_bkg_data(0, 79, JohnDoe_Tiles);
	ld	de, #_JohnDoe_Tiles
	push	de
	ld	hl, #0x4f00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$GameJohnDoe.c$10$1_0$103	= .
	.globl	C$GameJohnDoe.c$10$1_0$103
;src\GameJohnDoe.c:10: set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
	ld	de, #_JohnDoe_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$GameJohnDoe.c$11$1_0$103	= .
	.globl	C$GameJohnDoe.c$11$1_0$103
;src\GameJohnDoe.c:11: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$GameJohnDoe.c$12$1_0$103	= .
	.globl	C$GameJohnDoe.c$12$1_0$103
;src\GameJohnDoe.c:12: fadeFromBlack(10);
	ld	a, #0x0a
	C$GameJohnDoe.c$13$1_0$103	= .
	.globl	C$GameJohnDoe.c$13$1_0$103
;src\GameJohnDoe.c:13: }
	C$GameJohnDoe.c$13$1_0$103	= .
	.globl	C$GameJohnDoe.c$13$1_0$103
	XG$GameJohnDoeSetup$0$0	= .
	.globl	XG$GameJohnDoeSetup$0$0
	jp	_fadeFromBlack
	G$GameJohnDoeUpdate$0$0	= .
	.globl	G$GameJohnDoeUpdate$0$0
	C$GameJohnDoe.c$15$1_0$104	= .
	.globl	C$GameJohnDoe.c$15$1_0$104
;src\GameJohnDoe.c:15: uint8_t GameJohnDoeUpdate()
;	---------------------------------
; Function GameJohnDoeUpdate
; ---------------------------------
_GameJohnDoeUpdate::
	C$GameJohnDoe.c$17$1_0$104	= .
	.globl	C$GameJohnDoe.c$17$1_0$104
;src\GameJohnDoe.c:17: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$GameJohnDoe.c$18$1_0$104	= .
	.globl	C$GameJohnDoe.c$18$1_0$104
;src\GameJohnDoe.c:18: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$GameJohnDoe.c$20$1_0$104	= .
	.globl	C$GameJohnDoe.c$20$1_0$104
;src\GameJohnDoe.c:20: if (joypadCurrent & J_A)
	bit	4, (hl)
	jr	Z, 00102$
	C$GameJohnDoe.c$22$2_0$105	= .
	.globl	C$GameJohnDoe.c$22$2_0$105
;src\GameJohnDoe.c:22: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$GameJohnDoe.c$23$2_0$105	= .
	.globl	C$GameJohnDoe.c$23$2_0$105
;src\GameJohnDoe.c:23: fadeFromBlack(10);
	ld	a, #0x0a
	call	_fadeFromBlack
00102$:
	C$GameJohnDoe.c$25$1_0$104	= .
	.globl	C$GameJohnDoe.c$25$1_0$104
;src\GameJohnDoe.c:25: if (joypadCurrent & J_B)
	ld	a, (#_joypadCurrent)
	bit	5, a
	jr	Z, 00104$
	C$GameJohnDoe.c$27$2_0$106	= .
	.globl	C$GameJohnDoe.c$27$2_0$106
;src\GameJohnDoe.c:27: fadeToWhite(10);
	ld	a, #0x0a
	call	_fadeToWhite
	C$GameJohnDoe.c$28$2_0$106	= .
	.globl	C$GameJohnDoe.c$28$2_0$106
;src\GameJohnDoe.c:28: fadeFromWhite(10);
	ld	a, #0x0a
	call	_fadeFromWhite
00104$:
	C$GameJohnDoe.c$31$1_0$104	= .
	.globl	C$GameJohnDoe.c$31$1_0$104
;src\GameJohnDoe.c:31: return GAMEJOHNDOE;
	ld	a, #0x03
	C$GameJohnDoe.c$32$1_0$104	= .
	.globl	C$GameJohnDoe.c$32$1_0$104
;src\GameJohnDoe.c:32: }
	C$GameJohnDoe.c$32$1_0$104	= .
	.globl	C$GameJohnDoe.c$32$1_0$104
	XG$GameJohnDoeUpdate$0$0	= .
	.globl	XG$GameJohnDoeUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
