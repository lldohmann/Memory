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
	.globl _InvertColor
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawNumber
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _invert
	.globl _index
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
G$index$0_0$0==.
_index::
	.ds 1
G$invert$0_0$0==.
_invert::
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
	G$BestiarySetup$0$0	= .
	.globl	G$BestiarySetup$0$0
	C$Bestiary.c$21$0_0$104	= .
	.globl	C$Bestiary.c$21$0_0$104
;src\Bestiary.c:21: void BestiarySetup()
;	---------------------------------
; Function BestiarySetup
; ---------------------------------
_BestiarySetup::
	C$Bestiary.c$23$1_0$104	= .
	.globl	C$Bestiary.c$23$1_0$104
;src\Bestiary.c:23: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$24$1_0$104	= .
	.globl	C$Bestiary.c$24$1_0$104
;src\Bestiary.c:24: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$25$1_0$104	= .
	.globl	C$Bestiary.c$25$1_0$104
;src\Bestiary.c:25: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Bestiary.c$26$1_0$104	= .
	.globl	C$Bestiary.c$26$1_0$104
;src\Bestiary.c:26: fadeFromBlack(10);
	ld	a, #0x0a
	C$Bestiary.c$27$1_0$104	= .
	.globl	C$Bestiary.c$27$1_0$104
;src\Bestiary.c:27: }
	C$Bestiary.c$27$1_0$104	= .
	.globl	C$Bestiary.c$27$1_0$104
	XG$BestiarySetup$0$0	= .
	.globl	XG$BestiarySetup$0$0
	jp	_fadeFromBlack
	G$BestiaryUpdate$0$0	= .
	.globl	G$BestiaryUpdate$0$0
	C$Bestiary.c$29$1_0$105	= .
	.globl	C$Bestiary.c$29$1_0$105
;src\Bestiary.c:29: uint8_t BestiaryUpdate()
;	---------------------------------
; Function BestiaryUpdate
; ---------------------------------
_BestiaryUpdate::
	C$Bestiary.c$31$1_0$105	= .
	.globl	C$Bestiary.c$31$1_0$105
;src\Bestiary.c:31: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$Bestiary.c$32$1_0$105	= .
	.globl	C$Bestiary.c$32$1_0$105
;src\Bestiary.c:32: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$Bestiary.c$31$1_0$105	= .
	.globl	C$Bestiary.c$31$1_0$105
;src\Bestiary.c:31: joypadPrevious = joypadCurrent;
	ld	c, (hl)
	C$Bestiary.c$34$1_0$105	= .
	.globl	C$Bestiary.c$34$1_0$105
;src\Bestiary.c:34: if (joypadCurrent & J_LEFT)
	bit	1, c
	jr	Z, 00104$
	C$Bestiary.c$36$2_0$106	= .
	.globl	C$Bestiary.c$36$2_0$106
;src\Bestiary.c:36: if (index - 1 >= 0)
	ld	a, (#_index)
	ld	b, a
	rlca
	sbc	a, a
	ld	l, b
	ld	h, a
	dec	hl
	bit	7, h
	jr	NZ, 00104$
	C$Bestiary.c$38$3_0$107	= .
	.globl	C$Bestiary.c$38$3_0$107
;src\Bestiary.c:38: index--;
	ld	hl, #_index
	dec	(hl)
00104$:
	C$Bestiary.c$41$1_0$105	= .
	.globl	C$Bestiary.c$41$1_0$105
;src\Bestiary.c:41: if (joypadCurrent & J_RIGHT)
	bit	0, c
	jr	Z, 00108$
	C$Bestiary.c$43$2_0$108	= .
	.globl	C$Bestiary.c$43$2_0$108
;src\Bestiary.c:43: if (index + 1 <= 3)
	ld	a, (#_index)
	ld	b, a
	rlca
	sbc	a, a
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, h
	ld	d, #0x00
	ld	a, #0x03
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00170$
	bit	7, d
	jr	NZ, 00171$
	cp	a, a
	jr	00171$
00170$:
	bit	7, d
	jr	Z, 00171$
	scf
00171$:
	jr	C, 00108$
	C$Bestiary.c$45$3_0$109	= .
	.globl	C$Bestiary.c$45$3_0$109
;src\Bestiary.c:45: index++;
	ld	hl, #_index
	inc	(hl)
00108$:
	C$Bestiary.c$48$1_0$105	= .
	.globl	C$Bestiary.c$48$1_0$105
;src\Bestiary.c:48: if (joypadCurrent & J_START)
	bit	7, c
	jr	Z, 00110$
	C$Bestiary.c$50$2_0$110	= .
	.globl	C$Bestiary.c$50$2_0$110
;src\Bestiary.c:50: InvertColor();
	call	_InvertColor
00110$:
	C$Bestiary.c$64$1_0$105	= .
	.globl	C$Bestiary.c$64$1_0$105
;src\Bestiary.c:64: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	jr	Z, 00112$
	C$Bestiary.c$66$2_0$111	= .
	.globl	C$Bestiary.c$66$2_0$111
;src\Bestiary.c:66: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$Bestiary.c$67$2_0$111	= .
	.globl	C$Bestiary.c$67$2_0$111
;src\Bestiary.c:67: return GAMETITLE;
	ld	a, #0x01
	ret
00112$:
	C$Bestiary.c$69$1_0$105	= .
	.globl	C$Bestiary.c$69$1_0$105
;src\Bestiary.c:69: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jr	NZ, 00119$
	C$Bestiary.c$71$2_0$112	= .
	.globl	C$Bestiary.c$71$2_0$112
;src\Bestiary.c:71: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$72$2_0$112	= .
	.globl	C$Bestiary.c$72$2_0$112
;src\Bestiary.c:72: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$73$2_0$112	= .
	.globl	C$Bestiary.c$73$2_0$112
;src\Bestiary.c:73: DrawNumber(4, 0, 0, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0000
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$75$2_0$112	= .
	.globl	C$Bestiary.c$75$2_0$112
;src\Bestiary.c:75: DrawNumber(17, 2, 3, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$76$2_0$112	= .
	.globl	C$Bestiary.c$76$2_0$112
;src\Bestiary.c:76: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$77$2_0$112	= .
	.globl	C$Bestiary.c$77$2_0$112
;src\Bestiary.c:77: DrawNumber(17, 6, 1, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$78$2_0$112	= .
	.globl	C$Bestiary.c$78$2_0$112
;src\Bestiary.c:78: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$79$2_0$112	= .
	.globl	C$Bestiary.c$79$2_0$112
;src\Bestiary.c:79: DrawNumber(17, 10, 5, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	jp	00120$
00119$:
	C$Bestiary.c$81$1_0$105	= .
	.globl	C$Bestiary.c$81$1_0$105
;src\Bestiary.c:81: else if (index == 1) // Gypsy
	ld	a, (#_index)
	dec	a
	jr	NZ, 00116$
	C$Bestiary.c$83$2_0$113	= .
	.globl	C$Bestiary.c$83$2_0$113
;src\Bestiary.c:83: set_bkg_data(128, 79, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$84$2_0$113	= .
	.globl	C$Bestiary.c$84$2_0$113
;src\Bestiary.c:84: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$85$2_0$113	= .
	.globl	C$Bestiary.c$85$2_0$113
;src\Bestiary.c:85: DrawNumber(4, 0, 1, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$87$2_0$113	= .
	.globl	C$Bestiary.c$87$2_0$113
;src\Bestiary.c:87: DrawNumber(17, 2, 2, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$88$2_0$113	= .
	.globl	C$Bestiary.c$88$2_0$113
;src\Bestiary.c:88: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$89$2_0$113	= .
	.globl	C$Bestiary.c$89$2_0$113
;src\Bestiary.c:89: DrawNumber(17, 6, 3, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$90$2_0$113	= .
	.globl	C$Bestiary.c$90$2_0$113
;src\Bestiary.c:90: DrawNumber(17, 8, 2, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$91$2_0$113	= .
	.globl	C$Bestiary.c$91$2_0$113
;src\Bestiary.c:91: DrawNumber(17, 10, 7, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	jp	00120$
00116$:
	C$Bestiary.c$93$1_0$105	= .
	.globl	C$Bestiary.c$93$1_0$105
;src\Bestiary.c:93: else if (index == 2) // Wally
	ld	a, (#_index)
	sub	a, #0x02
	jr	NZ, 00120$
	C$Bestiary.c$95$2_0$114	= .
	.globl	C$Bestiary.c$95$2_0$114
;src\Bestiary.c:95: set_bkg_data(128, 79, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$96$2_0$114	= .
	.globl	C$Bestiary.c$96$2_0$114
;src\Bestiary.c:96: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
	ld	de, #_Wally_Map
	push	de
	ld	hl, #0x605
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$97$2_0$114	= .
	.globl	C$Bestiary.c$97$2_0$114
;src\Bestiary.c:97: DrawNumber(4, 0, 2, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$99$2_0$114	= .
	.globl	C$Bestiary.c$99$2_0$114
;src\Bestiary.c:99: DrawNumber(17, 2, 4, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$100$2_0$114	= .
	.globl	C$Bestiary.c$100$2_0$114
;src\Bestiary.c:100: DrawNumber(17, 4, 4, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$101$2_0$114	= .
	.globl	C$Bestiary.c$101$2_0$114
;src\Bestiary.c:101: DrawNumber(17, 6, 4, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$102$2_0$114	= .
	.globl	C$Bestiary.c$102$2_0$114
;src\Bestiary.c:102: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$103$2_0$114	= .
	.globl	C$Bestiary.c$103$2_0$114
;src\Bestiary.c:103: DrawNumber(16, 10, 12, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
00120$:
	C$Bestiary.c$105$1_0$105	= .
	.globl	C$Bestiary.c$105$1_0$105
;src\Bestiary.c:105: return BESTIARY;
	ld	a, #0x04
	C$Bestiary.c$106$1_0$105	= .
	.globl	C$Bestiary.c$106$1_0$105
;src\Bestiary.c:106: }
	C$Bestiary.c$106$1_0$105	= .
	.globl	C$Bestiary.c$106$1_0$105
	XG$BestiaryUpdate$0$0	= .
	.globl	XG$BestiaryUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
FBestiary$__xinit_index$0_0$0 == .
__xinit__index:
	.db #0x00	;  0
FBestiary$__xinit_invert$0_0$0 == .
__xinit__invert:
	.db #0x00	; 0
	.area _CABS (ABS)
