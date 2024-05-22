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
	C$Bestiary.c$36$0_0$104	= .
	.globl	C$Bestiary.c$36$0_0$104
;src\Bestiary.c:36: void BestiarySetup()
;	---------------------------------
; Function BestiarySetup
; ---------------------------------
_BestiarySetup::
	C$Bestiary.c$38$1_0$104	= .
	.globl	C$Bestiary.c$38$1_0$104
;src\Bestiary.c:38: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$39$1_0$104	= .
	.globl	C$Bestiary.c$39$1_0$104
;src\Bestiary.c:39: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$40$1_0$104	= .
	.globl	C$Bestiary.c$40$1_0$104
;src\Bestiary.c:40: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Bestiary.c$41$1_0$104	= .
	.globl	C$Bestiary.c$41$1_0$104
;src\Bestiary.c:41: fadeFromBlack(10);
	ld	a, #0x0a
	C$Bestiary.c$42$1_0$104	= .
	.globl	C$Bestiary.c$42$1_0$104
;src\Bestiary.c:42: }
	C$Bestiary.c$42$1_0$104	= .
	.globl	C$Bestiary.c$42$1_0$104
	XG$BestiarySetup$0$0	= .
	.globl	XG$BestiarySetup$0$0
	jp	_fadeFromBlack
	G$BestiaryUpdate$0$0	= .
	.globl	G$BestiaryUpdate$0$0
	C$Bestiary.c$44$1_0$105	= .
	.globl	C$Bestiary.c$44$1_0$105
;src\Bestiary.c:44: uint8_t BestiaryUpdate()
;	---------------------------------
; Function BestiaryUpdate
; ---------------------------------
_BestiaryUpdate::
	C$Bestiary.c$46$1_0$105	= .
	.globl	C$Bestiary.c$46$1_0$105
;src\Bestiary.c:46: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$Bestiary.c$47$1_0$105	= .
	.globl	C$Bestiary.c$47$1_0$105
;src\Bestiary.c:47: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$Bestiary.c$46$1_0$105	= .
	.globl	C$Bestiary.c$46$1_0$105
;src\Bestiary.c:46: joypadPrevious = joypadCurrent;
	ld	c, (hl)
	C$Bestiary.c$49$1_0$105	= .
	.globl	C$Bestiary.c$49$1_0$105
;src\Bestiary.c:49: if (joypadCurrent & J_LEFT)
	bit	1, c
	jr	Z, 00104$
	C$Bestiary.c$51$2_0$106	= .
	.globl	C$Bestiary.c$51$2_0$106
;src\Bestiary.c:51: if (index - 1 >= 0)
	ld	a, (#_index)
	ld	b, a
	rlca
	sbc	a, a
	ld	l, b
	ld	h, a
	dec	hl
	bit	7, h
	jr	NZ, 00104$
	C$Bestiary.c$53$3_0$107	= .
	.globl	C$Bestiary.c$53$3_0$107
;src\Bestiary.c:53: index--;
	ld	hl, #_index
	dec	(hl)
00104$:
	C$Bestiary.c$56$1_0$105	= .
	.globl	C$Bestiary.c$56$1_0$105
;src\Bestiary.c:56: if (joypadCurrent & J_RIGHT)
	bit	0, c
	jr	Z, 00108$
	C$Bestiary.c$58$2_0$108	= .
	.globl	C$Bestiary.c$58$2_0$108
;src\Bestiary.c:58: if (index + 1 <= 12)
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
	ld	a, #0x0c
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00250$
	bit	7, d
	jr	NZ, 00251$
	cp	a, a
	jr	00251$
00250$:
	bit	7, d
	jr	Z, 00251$
	scf
00251$:
	jr	C, 00108$
	C$Bestiary.c$60$3_0$109	= .
	.globl	C$Bestiary.c$60$3_0$109
;src\Bestiary.c:60: index++;
	ld	hl, #_index
	inc	(hl)
00108$:
	C$Bestiary.c$63$1_0$105	= .
	.globl	C$Bestiary.c$63$1_0$105
;src\Bestiary.c:63: if (joypadCurrent & J_START)
	bit	7, c
	jr	Z, 00110$
	C$Bestiary.c$65$2_0$110	= .
	.globl	C$Bestiary.c$65$2_0$110
;src\Bestiary.c:65: InvertColor();
	call	_InvertColor
00110$:
	C$Bestiary.c$79$1_0$105	= .
	.globl	C$Bestiary.c$79$1_0$105
;src\Bestiary.c:79: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	jr	Z, 00112$
	C$Bestiary.c$81$2_0$111	= .
	.globl	C$Bestiary.c$81$2_0$111
;src\Bestiary.c:81: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$Bestiary.c$82$2_0$111	= .
	.globl	C$Bestiary.c$82$2_0$111
;src\Bestiary.c:82: return GAMETITLE;
	ld	a, #0x01
	ret
00112$:
	C$Bestiary.c$84$1_0$105	= .
	.globl	C$Bestiary.c$84$1_0$105
;src\Bestiary.c:84: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jr	NZ, 00149$
	C$Bestiary.c$86$2_0$112	= .
	.globl	C$Bestiary.c$86$2_0$112
;src\Bestiary.c:86: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$87$2_0$112	= .
	.globl	C$Bestiary.c$87$2_0$112
;src\Bestiary.c:87: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$88$2_0$112	= .
	.globl	C$Bestiary.c$88$2_0$112
;src\Bestiary.c:88: DrawNumber(4, 0, 0, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0000
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$90$2_0$112	= .
	.globl	C$Bestiary.c$90$2_0$112
;src\Bestiary.c:90: DrawNumber(17, 2, 3, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$91$2_0$112	= .
	.globl	C$Bestiary.c$91$2_0$112
;src\Bestiary.c:91: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$92$2_0$112	= .
	.globl	C$Bestiary.c$92$2_0$112
;src\Bestiary.c:92: DrawNumber(17, 6, 1, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$93$2_0$112	= .
	.globl	C$Bestiary.c$93$2_0$112
;src\Bestiary.c:93: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$94$2_0$112	= .
	.globl	C$Bestiary.c$94$2_0$112
;src\Bestiary.c:94: DrawNumber(17, 10, 5, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	jp	00150$
00149$:
	C$Bestiary.c$96$1_0$105	= .
	.globl	C$Bestiary.c$96$1_0$105
;src\Bestiary.c:96: else if (index == 1) // Gypsy
	ld	a, (#_index)
	dec	a
	jr	NZ, 00146$
	C$Bestiary.c$98$2_0$113	= .
	.globl	C$Bestiary.c$98$2_0$113
;src\Bestiary.c:98: set_bkg_data(128, 79, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$99$2_0$113	= .
	.globl	C$Bestiary.c$99$2_0$113
;src\Bestiary.c:99: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$100$2_0$113	= .
	.globl	C$Bestiary.c$100$2_0$113
;src\Bestiary.c:100: DrawNumber(4, 0, 1, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$102$2_0$113	= .
	.globl	C$Bestiary.c$102$2_0$113
;src\Bestiary.c:102: DrawNumber(17, 2, 2, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$103$2_0$113	= .
	.globl	C$Bestiary.c$103$2_0$113
;src\Bestiary.c:103: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$104$2_0$113	= .
	.globl	C$Bestiary.c$104$2_0$113
;src\Bestiary.c:104: DrawNumber(17, 6, 3, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$105$2_0$113	= .
	.globl	C$Bestiary.c$105$2_0$113
;src\Bestiary.c:105: DrawNumber(17, 8, 2, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$106$2_0$113	= .
	.globl	C$Bestiary.c$106$2_0$113
;src\Bestiary.c:106: DrawNumber(17, 10, 7, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	jp	00150$
00146$:
	C$Bestiary.c$108$1_0$105	= .
	.globl	C$Bestiary.c$108$1_0$105
;src\Bestiary.c:108: else if (index == 2) // Wally
	ld	a, (#_index)
	sub	a, #0x02
	jr	NZ, 00143$
	C$Bestiary.c$110$2_0$114	= .
	.globl	C$Bestiary.c$110$2_0$114
;src\Bestiary.c:110: set_bkg_data(128, 79, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$111$2_0$114	= .
	.globl	C$Bestiary.c$111$2_0$114
;src\Bestiary.c:111: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
	ld	de, #_Wally_Map
	push	de
	ld	hl, #0x605
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$112$2_0$114	= .
	.globl	C$Bestiary.c$112$2_0$114
;src\Bestiary.c:112: DrawNumber(4, 0, 2, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$114$2_0$114	= .
	.globl	C$Bestiary.c$114$2_0$114
;src\Bestiary.c:114: DrawNumber(17, 2, 4, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$115$2_0$114	= .
	.globl	C$Bestiary.c$115$2_0$114
;src\Bestiary.c:115: DrawNumber(17, 4, 4, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$116$2_0$114	= .
	.globl	C$Bestiary.c$116$2_0$114
;src\Bestiary.c:116: DrawNumber(17, 6, 4, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$117$2_0$114	= .
	.globl	C$Bestiary.c$117$2_0$114
;src\Bestiary.c:117: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$118$2_0$114	= .
	.globl	C$Bestiary.c$118$2_0$114
;src\Bestiary.c:118: DrawNumber(16, 10, 12, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00143$:
	C$Bestiary.c$120$1_0$105	= .
	.globl	C$Bestiary.c$120$1_0$105
;src\Bestiary.c:120: else if (index == 3)
	ld	a, (#_index)
	sub	a, #0x03
	jr	NZ, 00140$
	C$Bestiary.c$122$2_0$115	= .
	.globl	C$Bestiary.c$122$2_0$115
;src\Bestiary.c:122: set_bkg_data(128, 20, Tick_Tiles);
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$123$2_0$115	= .
	.globl	C$Bestiary.c$123$2_0$115
;src\Bestiary.c:123: set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
	ld	de, #_Tick_Map
	push	de
	ld	hl, #0x505
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$124$2_0$115	= .
	.globl	C$Bestiary.c$124$2_0$115
;src\Bestiary.c:124: DrawNumber(4, 0, 3, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$126$2_0$115	= .
	.globl	C$Bestiary.c$126$2_0$115
;src\Bestiary.c:126: DrawNumber(17, 2, 4, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$127$2_0$115	= .
	.globl	C$Bestiary.c$127$2_0$115
;src\Bestiary.c:127: DrawNumber(17, 4, 7, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$128$2_0$115	= .
	.globl	C$Bestiary.c$128$2_0$115
;src\Bestiary.c:128: DrawNumber(17, 6, 3, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$129$2_0$115	= .
	.globl	C$Bestiary.c$129$2_0$115
;src\Bestiary.c:129: DrawNumber(17, 8, 2, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$130$2_0$115	= .
	.globl	C$Bestiary.c$130$2_0$115
;src\Bestiary.c:130: DrawNumber(16, 10, 16, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0010
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00140$:
	C$Bestiary.c$132$1_0$105	= .
	.globl	C$Bestiary.c$132$1_0$105
;src\Bestiary.c:132: else if (index == 4)
	ld	a, (#_index)
	sub	a, #0x04
	jr	NZ, 00137$
	C$Bestiary.c$134$2_0$116	= .
	.globl	C$Bestiary.c$134$2_0$116
;src\Bestiary.c:134: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$135$2_0$116	= .
	.globl	C$Bestiary.c$135$2_0$116
;src\Bestiary.c:135: set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
	ld	de, #_Officer_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$136$2_0$116	= .
	.globl	C$Bestiary.c$136$2_0$116
;src\Bestiary.c:136: DrawNumber(4, 0, 4, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$138$2_0$116	= .
	.globl	C$Bestiary.c$138$2_0$116
;src\Bestiary.c:138: DrawNumber(17, 2, 9, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0009
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$139$2_0$116	= .
	.globl	C$Bestiary.c$139$2_0$116
;src\Bestiary.c:139: DrawNumber(17, 4, 5, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$140$2_0$116	= .
	.globl	C$Bestiary.c$140$2_0$116
;src\Bestiary.c:140: DrawNumber(17, 6, 2, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$141$2_0$116	= .
	.globl	C$Bestiary.c$141$2_0$116
;src\Bestiary.c:141: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$142$2_0$116	= .
	.globl	C$Bestiary.c$142$2_0$116
;src\Bestiary.c:142: DrawNumber(16, 10, 12, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00137$:
	C$Bestiary.c$144$1_0$105	= .
	.globl	C$Bestiary.c$144$1_0$105
;src\Bestiary.c:144: else if (index == 5)
	ld	a, (#_index)
	sub	a, #0x05
	jr	NZ, 00134$
	C$Bestiary.c$146$2_0$117	= .
	.globl	C$Bestiary.c$146$2_0$117
;src\Bestiary.c:146: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$147$2_0$117	= .
	.globl	C$Bestiary.c$147$2_0$117
;src\Bestiary.c:147: set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
	ld	de, #_Police_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$148$2_0$117	= .
	.globl	C$Bestiary.c$148$2_0$117
;src\Bestiary.c:148: DrawNumber(4, 0, 5, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$150$2_0$117	= .
	.globl	C$Bestiary.c$150$2_0$117
;src\Bestiary.c:150: DrawNumber(16, 2, 10, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$151$2_0$117	= .
	.globl	C$Bestiary.c$151$2_0$117
;src\Bestiary.c:151: DrawNumber(16, 4, 15, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$152$2_0$117	= .
	.globl	C$Bestiary.c$152$2_0$117
;src\Bestiary.c:152: DrawNumber(17, 6, 5, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$153$2_0$117	= .
	.globl	C$Bestiary.c$153$2_0$117
;src\Bestiary.c:153: DrawNumber(17, 8, 6, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$154$2_0$117	= .
	.globl	C$Bestiary.c$154$2_0$117
;src\Bestiary.c:154: DrawNumber(16, 10, 22, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00134$:
	C$Bestiary.c$156$1_0$105	= .
	.globl	C$Bestiary.c$156$1_0$105
;src\Bestiary.c:156: else if (index == 6)
	ld	a, (#_index)
	sub	a, #0x06
	jr	NZ, 00131$
	C$Bestiary.c$158$2_0$118	= .
	.globl	C$Bestiary.c$158$2_0$118
;src\Bestiary.c:158: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$159$2_0$118	= .
	.globl	C$Bestiary.c$159$2_0$118
;src\Bestiary.c:159: set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
	ld	de, #_Sheriff_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$160$2_0$118	= .
	.globl	C$Bestiary.c$160$2_0$118
;src\Bestiary.c:160: DrawNumber(4, 0, 6, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$162$2_0$118	= .
	.globl	C$Bestiary.c$162$2_0$118
;src\Bestiary.c:162: DrawNumber(16, 2, 16, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0010
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$163$2_0$118	= .
	.globl	C$Bestiary.c$163$2_0$118
;src\Bestiary.c:163: DrawNumber(16, 4, 10, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$164$2_0$118	= .
	.globl	C$Bestiary.c$164$2_0$118
;src\Bestiary.c:164: DrawNumber(17, 6, 6, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$165$2_0$118	= .
	.globl	C$Bestiary.c$165$2_0$118
;src\Bestiary.c:165: DrawNumber(17, 8, 8, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0008
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$166$2_0$118	= .
	.globl	C$Bestiary.c$166$2_0$118
;src\Bestiary.c:166: DrawNumber(16, 10, 22, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00131$:
	C$Bestiary.c$168$1_0$105	= .
	.globl	C$Bestiary.c$168$1_0$105
;src\Bestiary.c:168: else if (index == 7)
	ld	a, (#_index)
	sub	a, #0x07
	jr	NZ, 00128$
	C$Bestiary.c$170$2_0$119	= .
	.globl	C$Bestiary.c$170$2_0$119
;src\Bestiary.c:170: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$171$2_0$119	= .
	.globl	C$Bestiary.c$171$2_0$119
;src\Bestiary.c:171: set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
	ld	de, #_Chief_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$172$2_0$119	= .
	.globl	C$Bestiary.c$172$2_0$119
;src\Bestiary.c:172: DrawNumber(4, 0, 7, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$174$2_0$119	= .
	.globl	C$Bestiary.c$174$2_0$119
;src\Bestiary.c:174: DrawNumber(16, 2, 30, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$175$2_0$119	= .
	.globl	C$Bestiary.c$175$2_0$119
;src\Bestiary.c:175: DrawNumber(16, 4, 20, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$176$2_0$119	= .
	.globl	C$Bestiary.c$176$2_0$119
;src\Bestiary.c:176: DrawNumber(17, 6, 10, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$177$2_0$119	= .
	.globl	C$Bestiary.c$177$2_0$119
;src\Bestiary.c:177: DrawNumber(17, 8, 10, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$178$2_0$119	= .
	.globl	C$Bestiary.c$178$2_0$119
;src\Bestiary.c:178: DrawNumber(16, 10, 55, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0037
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00128$:
	C$Bestiary.c$180$1_0$105	= .
	.globl	C$Bestiary.c$180$1_0$105
;src\Bestiary.c:180: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jr	NZ, 00125$
	C$Bestiary.c$182$2_0$120	= .
	.globl	C$Bestiary.c$182$2_0$120
;src\Bestiary.c:182: set_bkg_data(128, 30, Man_Tiles);
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$183$2_0$120	= .
	.globl	C$Bestiary.c$183$2_0$120
;src\Bestiary.c:183: set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
	ld	de, #_Man_Map
	push	de
	ld	hl, #0x606
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$184$2_0$120	= .
	.globl	C$Bestiary.c$184$2_0$120
;src\Bestiary.c:184: DrawNumber(4, 0, 8, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0008
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$186$2_0$120	= .
	.globl	C$Bestiary.c$186$2_0$120
;src\Bestiary.c:186: DrawNumber(17, 2, 0, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0000
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$187$2_0$120	= .
	.globl	C$Bestiary.c$187$2_0$120
;src\Bestiary.c:187: DrawNumber(15, 4, 255, 3);    // DEFENSE
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x00ff
	push	de
	ld	e, #0x04
	ld	a, #0x0f
	call	_DrawNumber
	C$Bestiary.c$188$2_0$120	= .
	.globl	C$Bestiary.c$188$2_0$120
;src\Bestiary.c:188: DrawNumber(17, 6, 1, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$189$2_0$120	= .
	.globl	C$Bestiary.c$189$2_0$120
;src\Bestiary.c:189: DrawNumber(17, 8, 1, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$190$2_0$120	= .
	.globl	C$Bestiary.c$190$2_0$120
;src\Bestiary.c:190: DrawNumber(16, 10, 1, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00125$:
	C$Bestiary.c$192$1_0$105	= .
	.globl	C$Bestiary.c$192$1_0$105
;src\Bestiary.c:192: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00122$
	C$Bestiary.c$194$2_0$121	= .
	.globl	C$Bestiary.c$194$2_0$121
;src\Bestiary.c:194: set_bkg_data(128, 26, Car_Tiles);
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$195$2_0$121	= .
	.globl	C$Bestiary.c$195$2_0$121
;src\Bestiary.c:195: set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
	ld	de, #_Car_Map
	push	de
	ld	hl, #0x506
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$196$2_0$121	= .
	.globl	C$Bestiary.c$196$2_0$121
;src\Bestiary.c:196: DrawNumber(4, 0, 9, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0009
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$198$2_0$121	= .
	.globl	C$Bestiary.c$198$2_0$121
;src\Bestiary.c:198: DrawNumber(16, 2, 30, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$199$2_0$121	= .
	.globl	C$Bestiary.c$199$2_0$121
;src\Bestiary.c:199: DrawNumber(16, 4, 25, 3);    // DEFENSE
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0019
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$200$2_0$121	= .
	.globl	C$Bestiary.c$200$2_0$121
;src\Bestiary.c:200: DrawNumber(16, 6, 15, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$201$2_0$121	= .
	.globl	C$Bestiary.c$201$2_0$121
;src\Bestiary.c:201: DrawNumber(16, 8, 40, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0028
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$202$2_0$121	= .
	.globl	C$Bestiary.c$202$2_0$121
;src\Bestiary.c:202: DrawNumber(16, 10, 66, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00122$:
	C$Bestiary.c$204$1_0$105	= .
	.globl	C$Bestiary.c$204$1_0$105
;src\Bestiary.c:204: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00119$
	C$Bestiary.c$206$2_0$122	= .
	.globl	C$Bestiary.c$206$2_0$122
;src\Bestiary.c:206: set_bkg_data(128, 46, Semi_Tiles);
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$207$2_0$122	= .
	.globl	C$Bestiary.c$207$2_0$122
;src\Bestiary.c:207: set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
	ld	de, #_Semi_Map
	push	de
	ld	hl, #0x806
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$208$2_0$122	= .
	.globl	C$Bestiary.c$208$2_0$122
;src\Bestiary.c:208: DrawNumber(4, 0, 10, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$210$2_0$122	= .
	.globl	C$Bestiary.c$210$2_0$122
;src\Bestiary.c:210: DrawNumber(16, 2, 66, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$211$2_0$122	= .
	.globl	C$Bestiary.c$211$2_0$122
;src\Bestiary.c:211: DrawNumber(16, 4, 66, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$212$2_0$122	= .
	.globl	C$Bestiary.c$212$2_0$122
;src\Bestiary.c:212: DrawNumber(16, 6, 15, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$213$2_0$122	= .
	.globl	C$Bestiary.c$213$2_0$122
;src\Bestiary.c:213: DrawNumber(16, 8, 35, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0023
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$214$2_0$122	= .
	.globl	C$Bestiary.c$214$2_0$122
;src\Bestiary.c:214: DrawNumber(15, 10, 100, 3);   // EXP.
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0064
	push	de
	ld	e, #0x0a
	ld	a, #0x0f
	call	_DrawNumber
	jp	00150$
00119$:
	C$Bestiary.c$216$1_0$105	= .
	.globl	C$Bestiary.c$216$1_0$105
;src\Bestiary.c:216: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jr	NZ, 00116$
	C$Bestiary.c$218$2_0$123	= .
	.globl	C$Bestiary.c$218$2_0$123
;src\Bestiary.c:218: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$219$2_0$123	= .
	.globl	C$Bestiary.c$219$2_0$123
;src\Bestiary.c:219: set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
	ld	de, #_BigSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$220$2_0$123	= .
	.globl	C$Bestiary.c$220$2_0$123
;src\Bestiary.c:220: DrawNumber(4, 0, 11, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$222$2_0$123	= .
	.globl	C$Bestiary.c$222$2_0$123
;src\Bestiary.c:222: DrawNumber(16, 2, 26, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$223$2_0$123	= .
	.globl	C$Bestiary.c$223$2_0$123
;src\Bestiary.c:223: DrawNumber(16, 4, 14, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000e
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$224$2_0$123	= .
	.globl	C$Bestiary.c$224$2_0$123
;src\Bestiary.c:224: DrawNumber(16, 6, 20, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$225$2_0$123	= .
	.globl	C$Bestiary.c$225$2_0$123
;src\Bestiary.c:225: DrawNumber(16, 8, 20, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$226$2_0$123	= .
	.globl	C$Bestiary.c$226$2_0$123
;src\Bestiary.c:226: DrawNumber(16, 10, 38, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0026
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00150$
00116$:
	C$Bestiary.c$228$1_0$105	= .
	.globl	C$Bestiary.c$228$1_0$105
;src\Bestiary.c:228: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jr	NZ, 00150$
	C$Bestiary.c$230$2_0$124	= .
	.globl	C$Bestiary.c$230$2_0$124
;src\Bestiary.c:230: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$231$2_0$124	= .
	.globl	C$Bestiary.c$231$2_0$124
;src\Bestiary.c:231: set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
	ld	de, #_MadSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$232$2_0$124	= .
	.globl	C$Bestiary.c$232$2_0$124
;src\Bestiary.c:232: DrawNumber(4, 0, 12, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$234$2_0$124	= .
	.globl	C$Bestiary.c$234$2_0$124
;src\Bestiary.c:234: DrawNumber(16, 2, 36, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0024
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$235$2_0$124	= .
	.globl	C$Bestiary.c$235$2_0$124
;src\Bestiary.c:235: DrawNumber(16, 4, 24, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0018
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$236$2_0$124	= .
	.globl	C$Bestiary.c$236$2_0$124
;src\Bestiary.c:236: DrawNumber(16, 6, 30, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$237$2_0$124	= .
	.globl	C$Bestiary.c$237$2_0$124
;src\Bestiary.c:237: DrawNumber(16, 8, 30, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$238$2_0$124	= .
	.globl	C$Bestiary.c$238$2_0$124
;src\Bestiary.c:238: DrawNumber(16, 10, 58, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x003a
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
00150$:
	C$Bestiary.c$240$1_0$105	= .
	.globl	C$Bestiary.c$240$1_0$105
;src\Bestiary.c:240: return BESTIARY;
	ld	a, #0x04
	C$Bestiary.c$241$1_0$105	= .
	.globl	C$Bestiary.c$241$1_0$105
;src\Bestiary.c:241: }
	C$Bestiary.c$241$1_0$105	= .
	.globl	C$Bestiary.c$241$1_0$105
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
