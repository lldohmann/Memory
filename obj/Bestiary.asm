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
	.globl _DrawText
	.globl _DrawNumber
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _invert
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
	C$Bestiary.c$48$0_0$105	= .
	.globl	C$Bestiary.c$48$0_0$105
;src\Bestiary.c:48: void BestiarySetup()
;	---------------------------------
; Function BestiarySetup
; ---------------------------------
_BestiarySetup::
	C$Bestiary.c$50$1_0$105	= .
	.globl	C$Bestiary.c$50$1_0$105
;src\Bestiary.c:50: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$51$1_0$105	= .
	.globl	C$Bestiary.c$51$1_0$105
;src\Bestiary.c:51: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$52$1_0$105	= .
	.globl	C$Bestiary.c$52$1_0$105
;src\Bestiary.c:52: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Bestiary.c$53$1_0$105	= .
	.globl	C$Bestiary.c$53$1_0$105
;src\Bestiary.c:53: fadeFromBlack(10);
	ld	a, #0x0a
	C$Bestiary.c$54$1_0$105	= .
	.globl	C$Bestiary.c$54$1_0$105
;src\Bestiary.c:54: }
	C$Bestiary.c$54$1_0$105	= .
	.globl	C$Bestiary.c$54$1_0$105
	XG$BestiarySetup$0$0	= .
	.globl	XG$BestiarySetup$0$0
	jp	_fadeFromBlack
	G$BestiaryUpdate$0$0	= .
	.globl	G$BestiaryUpdate$0$0
	C$Bestiary.c$56$1_0$106	= .
	.globl	C$Bestiary.c$56$1_0$106
;src\Bestiary.c:56: uint8_t BestiaryUpdate()
;	---------------------------------
; Function BestiaryUpdate
; ---------------------------------
_BestiaryUpdate::
	C$Bestiary.c$58$1_0$106	= .
	.globl	C$Bestiary.c$58$1_0$106
;src\Bestiary.c:58: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$Bestiary.c$59$1_0$106	= .
	.globl	C$Bestiary.c$59$1_0$106
;src\Bestiary.c:59: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$Bestiary.c$58$1_0$106	= .
	.globl	C$Bestiary.c$58$1_0$106
;src\Bestiary.c:58: joypadPrevious = joypadCurrent;
	ld	c, (hl)
	C$Bestiary.c$61$1_0$106	= .
	.globl	C$Bestiary.c$61$1_0$106
;src\Bestiary.c:61: if (joypadCurrent & J_LEFT)
	bit	1, c
	jr	Z, 00104$
	C$Bestiary.c$63$2_0$107	= .
	.globl	C$Bestiary.c$63$2_0$107
;src\Bestiary.c:63: if (index - 1 >= 0)
	ld	hl, #_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	dec	hl
	bit	7, h
	jr	NZ, 00104$
	C$Bestiary.c$65$3_0$108	= .
	.globl	C$Bestiary.c$65$3_0$108
;src\Bestiary.c:65: index--;
	ld	hl, #_index
	dec	(hl)
00104$:
	C$Bestiary.c$68$1_0$106	= .
	.globl	C$Bestiary.c$68$1_0$106
;src\Bestiary.c:68: if (joypadCurrent & J_RIGHT)
	bit	0, c
	jr	Z, 00108$
	C$Bestiary.c$70$2_0$109	= .
	.globl	C$Bestiary.c$70$2_0$109
;src\Bestiary.c:70: if (index + 1 <= 18)
	ld	hl, #_index
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	e, h
	ld	d, #0x00
	ld	a, #0x12
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	bit	7, e
	jr	Z, 00305$
	bit	7, d
	jr	NZ, 00306$
	cp	a, a
	jr	00306$
00305$:
	bit	7, d
	jr	Z, 00306$
	scf
00306$:
	jr	C, 00108$
	C$Bestiary.c$72$3_0$110	= .
	.globl	C$Bestiary.c$72$3_0$110
;src\Bestiary.c:72: index++;
	ld	hl, #_index
	inc	(hl)
00108$:
	C$Bestiary.c$75$1_0$106	= .
	.globl	C$Bestiary.c$75$1_0$106
;src\Bestiary.c:75: if (joypadCurrent & J_START)
	bit	7, c
	jr	Z, 00110$
	C$Bestiary.c$77$2_0$111	= .
	.globl	C$Bestiary.c$77$2_0$111
;src\Bestiary.c:77: InvertColor();
	call	_InvertColor
00110$:
	C$Bestiary.c$58$1_0$106	= .
	.globl	C$Bestiary.c$58$1_0$106
;src\Bestiary.c:58: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	C$Bestiary.c$91$1_0$106	= .
	.globl	C$Bestiary.c$91$1_0$106
;src\Bestiary.c:91: if (joypadCurrent & J_SELECT)
	bit	6, a
	jr	Z, 00112$
	C$Bestiary.c$93$2_0$112	= .
	.globl	C$Bestiary.c$93$2_0$112
;src\Bestiary.c:93: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$Bestiary.c$94$2_0$112	= .
	.globl	C$Bestiary.c$94$2_0$112
;src\Bestiary.c:94: return GAMETITLE;
	ld	a, #0x01
	ret
00112$:
	C$Bestiary.c$96$1_0$106	= .
	.globl	C$Bestiary.c$96$1_0$106
;src\Bestiary.c:96: if (joypadCurrent & J_A)
	bit	4, a
	jr	Z, 00114$
	C$Bestiary.c$98$2_0$113	= .
	.globl	C$Bestiary.c$98$2_0$113
;src\Bestiary.c:98: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$99$2_0$113	= .
	.globl	C$Bestiary.c$99$2_0$113
;src\Bestiary.c:99: fadeFromBlack(3);
	ld	a, #0x03
	call	_fadeFromBlack
	C$Bestiary.c$100$2_0$113	= .
	.globl	C$Bestiary.c$100$2_0$113
;src\Bestiary.c:100: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$101$2_0$113	= .
	.globl	C$Bestiary.c$101$2_0$113
;src\Bestiary.c:101: fadeFromBlack(3);
	ld	a, #0x03
	call	_fadeFromBlack
	C$Bestiary.c$102$2_0$113	= .
	.globl	C$Bestiary.c$102$2_0$113
;src\Bestiary.c:102: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$103$2_0$113	= .
	.globl	C$Bestiary.c$103$2_0$113
;src\Bestiary.c:103: return BATTLE;
	ld	a, #0x05
	ret
00114$:
	C$Bestiary.c$105$1_0$106	= .
	.globl	C$Bestiary.c$105$1_0$106
;src\Bestiary.c:105: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jp	NZ, 00169$
	C$Bestiary.c$107$2_0$114	= .
	.globl	C$Bestiary.c$107$2_0$114
;src\Bestiary.c:107: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$108$2_0$114	= .
	.globl	C$Bestiary.c$108$2_0$114
;src\Bestiary.c:108: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$109$2_0$114	= .
	.globl	C$Bestiary.c$109$2_0$114
;src\Bestiary.c:109: DrawNumber(4, 0, 0, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0000
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$111$2_0$114	= .
	.globl	C$Bestiary.c$111$2_0$114
;src\Bestiary.c:111: DrawNumber(17, 2, 3, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$112$2_0$114	= .
	.globl	C$Bestiary.c$112$2_0$114
;src\Bestiary.c:112: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$113$2_0$114	= .
	.globl	C$Bestiary.c$113$2_0$114
;src\Bestiary.c:113: DrawNumber(17, 6, 1, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$114$2_0$114	= .
	.globl	C$Bestiary.c$114$2_0$114
;src\Bestiary.c:114: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$115$2_0$114	= .
	.globl	C$Bestiary.c$115$2_0$114
;src\Bestiary.c:115: DrawNumber(17, 10, 5, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$116$2_0$114	= .
	.globl	C$Bestiary.c$116$2_0$114
;src\Bestiary.c:116: DrawText(1, 13, "JIM IS A ");
	ld	de, #___str_0
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$117$2_0$114	= .
	.globl	C$Bestiary.c$117$2_0$114
;src\Bestiary.c:117: DrawText(1, 14, "GAMBLER. HE LIKES");
	ld	de, #___str_1
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$118$2_0$114	= .
	.globl	C$Bestiary.c$118$2_0$114
;src\Bestiary.c:118: DrawText(1, 15, "SHOOTING DICE.");
	ld	de, #___str_2
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00169$:
	C$Bestiary.c$120$1_0$106	= .
	.globl	C$Bestiary.c$120$1_0$106
;src\Bestiary.c:120: else if (index == 1) // Gypsy
	ld	a, (#_index)
	dec	a
	jp	NZ,00166$
	C$Bestiary.c$122$2_0$115	= .
	.globl	C$Bestiary.c$122$2_0$115
;src\Bestiary.c:122: set_bkg_data(128, 79, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$123$2_0$115	= .
	.globl	C$Bestiary.c$123$2_0$115
;src\Bestiary.c:123: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$124$2_0$115	= .
	.globl	C$Bestiary.c$124$2_0$115
;src\Bestiary.c:124: DrawNumber(4, 0, 1, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$126$2_0$115	= .
	.globl	C$Bestiary.c$126$2_0$115
;src\Bestiary.c:126: DrawNumber(17, 2, 2, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$127$2_0$115	= .
	.globl	C$Bestiary.c$127$2_0$115
;src\Bestiary.c:127: DrawNumber(17, 4, 2, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
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
;src\Bestiary.c:130: DrawNumber(17, 10, 7, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$131$2_0$115	= .
	.globl	C$Bestiary.c$131$2_0$115
;src\Bestiary.c:131: DrawText(1, 13, "GYPSY MOTHS ARE");
	ld	de, #___str_3
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$132$2_0$115	= .
	.globl	C$Bestiary.c$132$2_0$115
;src\Bestiary.c:132: DrawText(1, 14, "TAKING ALL FROM");
	ld	de, #___str_4
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$133$2_0$115	= .
	.globl	C$Bestiary.c$133$2_0$115
;src\Bestiary.c:133: DrawText(1, 15, "EVERYWHERE!");
	ld	de, #___str_5
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00166$:
	C$Bestiary.c$135$1_0$106	= .
	.globl	C$Bestiary.c$135$1_0$106
;src\Bestiary.c:135: else if (index == 2) // Wally
	ld	a, (#_index)
	sub	a, #0x02
	jp	NZ,00163$
	C$Bestiary.c$137$2_0$116	= .
	.globl	C$Bestiary.c$137$2_0$116
;src\Bestiary.c:137: set_bkg_data(128, 79, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$138$2_0$116	= .
	.globl	C$Bestiary.c$138$2_0$116
;src\Bestiary.c:138: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
	ld	de, #_Wally_Map
	push	de
	ld	hl, #0x605
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$139$2_0$116	= .
	.globl	C$Bestiary.c$139$2_0$116
;src\Bestiary.c:139: DrawNumber(4, 0, 2, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$141$2_0$116	= .
	.globl	C$Bestiary.c$141$2_0$116
;src\Bestiary.c:141: DrawNumber(17, 2, 4, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$142$2_0$116	= .
	.globl	C$Bestiary.c$142$2_0$116
;src\Bestiary.c:142: DrawNumber(17, 4, 4, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$143$2_0$116	= .
	.globl	C$Bestiary.c$143$2_0$116
;src\Bestiary.c:143: DrawNumber(17, 6, 4, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$144$2_0$116	= .
	.globl	C$Bestiary.c$144$2_0$116
;src\Bestiary.c:144: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$145$2_0$116	= .
	.globl	C$Bestiary.c$145$2_0$116
;src\Bestiary.c:145: DrawNumber(16, 10, 12, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$146$2_0$116	= .
	.globl	C$Bestiary.c$146$2_0$116
;src\Bestiary.c:146: DrawText(1, 13, "WALLY IS IN A");
	ld	de, #___str_6
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$147$2_0$116	= .
	.globl	C$Bestiary.c$147$2_0$116
;src\Bestiary.c:147: DrawText(1, 14, "GANG. HE SAYS");
	ld	de, #___str_7
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$148$2_0$116	= .
	.globl	C$Bestiary.c$148$2_0$116
;src\Bestiary.c:148: DrawText(1, 15, "NO TO DRUGS!");
	ld	de, #___str_8
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$149$2_0$116	= .
	.globl	C$Bestiary.c$149$2_0$116
;src\Bestiary.c:149: DrawText(1, 16, "HOW COOL!");
	ld	de, #___str_9
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00163$:
	C$Bestiary.c$151$1_0$106	= .
	.globl	C$Bestiary.c$151$1_0$106
;src\Bestiary.c:151: else if (index == 3)
	ld	a, (#_index)
	sub	a, #0x03
	jp	NZ,00160$
	C$Bestiary.c$153$2_0$117	= .
	.globl	C$Bestiary.c$153$2_0$117
;src\Bestiary.c:153: set_bkg_data(128, 20, Tick_Tiles);
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$154$2_0$117	= .
	.globl	C$Bestiary.c$154$2_0$117
;src\Bestiary.c:154: set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
	ld	de, #_Tick_Map
	push	de
	ld	hl, #0x505
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$155$2_0$117	= .
	.globl	C$Bestiary.c$155$2_0$117
;src\Bestiary.c:155: DrawNumber(4, 0, 3, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$157$2_0$117	= .
	.globl	C$Bestiary.c$157$2_0$117
;src\Bestiary.c:157: DrawNumber(17, 2, 4, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$158$2_0$117	= .
	.globl	C$Bestiary.c$158$2_0$117
;src\Bestiary.c:158: DrawNumber(17, 4, 7, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$159$2_0$117	= .
	.globl	C$Bestiary.c$159$2_0$117
;src\Bestiary.c:159: DrawNumber(17, 6, 3, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$160$2_0$117	= .
	.globl	C$Bestiary.c$160$2_0$117
;src\Bestiary.c:160: DrawNumber(17, 8, 2, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$161$2_0$117	= .
	.globl	C$Bestiary.c$161$2_0$117
;src\Bestiary.c:161: DrawNumber(16, 10, 16, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0010
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$162$2_0$117	= .
	.globl	C$Bestiary.c$162$2_0$117
;src\Bestiary.c:162: DrawText(1, 13, "BLOOD SUCKING");
	ld	de, #___str_10
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$163$2_0$117	= .
	.globl	C$Bestiary.c$163$2_0$117
;src\Bestiary.c:163: DrawText(1, 14, "PARASITE!");
	ld	de, #___str_11
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$164$2_0$117	= .
	.globl	C$Bestiary.c$164$2_0$117
;src\Bestiary.c:164: DrawText(1, 15, "THEY HIDE IN");
	ld	de, #___str_12
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$165$2_0$117	= .
	.globl	C$Bestiary.c$165$2_0$117
;src\Bestiary.c:165: DrawText(1, 16, "TALL GRASS!");
	ld	de, #___str_13
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00160$:
	C$Bestiary.c$167$1_0$106	= .
	.globl	C$Bestiary.c$167$1_0$106
;src\Bestiary.c:167: else if (index == 4)
	ld	a, (#_index)
	sub	a, #0x04
	jp	NZ,00157$
	C$Bestiary.c$169$2_0$118	= .
	.globl	C$Bestiary.c$169$2_0$118
;src\Bestiary.c:169: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$170$2_0$118	= .
	.globl	C$Bestiary.c$170$2_0$118
;src\Bestiary.c:170: set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
	ld	de, #_Officer_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$171$2_0$118	= .
	.globl	C$Bestiary.c$171$2_0$118
;src\Bestiary.c:171: DrawNumber(4, 0, 4, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$173$2_0$118	= .
	.globl	C$Bestiary.c$173$2_0$118
;src\Bestiary.c:173: DrawNumber(17, 2, 9, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0009
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$174$2_0$118	= .
	.globl	C$Bestiary.c$174$2_0$118
;src\Bestiary.c:174: DrawNumber(17, 4, 5, 1);    // DEFENSE
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$175$2_0$118	= .
	.globl	C$Bestiary.c$175$2_0$118
;src\Bestiary.c:175: DrawNumber(17, 6, 2, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0002
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$176$2_0$118	= .
	.globl	C$Bestiary.c$176$2_0$118
;src\Bestiary.c:176: DrawNumber(17, 8, 4, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$177$2_0$118	= .
	.globl	C$Bestiary.c$177$2_0$118
;src\Bestiary.c:177: DrawNumber(16, 10, 12, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$178$2_0$118	= .
	.globl	C$Bestiary.c$178$2_0$118
;src\Bestiary.c:178: DrawText(1, 13, "OH NO! THE COPS!");
	ld	de, #___str_14
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$179$2_0$118	= .
	.globl	C$Bestiary.c$179$2_0$118
;src\Bestiary.c:179: DrawText(1, 14, "SOMEONE HAS BEEN");
	ld	de, #___str_15
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$180$2_0$118	= .
	.globl	C$Bestiary.c$180$2_0$118
;src\Bestiary.c:180: DrawText(1, 15, "BEING NAUGHTY!");
	ld	de, #___str_16
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$181$2_0$118	= .
	.globl	C$Bestiary.c$181$2_0$118
;src\Bestiary.c:181: DrawText(1, 16, "CAN'T BE YOU?");
	ld	de, #___str_17
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00157$:
	C$Bestiary.c$183$1_0$106	= .
	.globl	C$Bestiary.c$183$1_0$106
;src\Bestiary.c:183: else if (index == 5)
	ld	a, (#_index)
	sub	a, #0x05
	jp	NZ,00154$
	C$Bestiary.c$185$2_0$119	= .
	.globl	C$Bestiary.c$185$2_0$119
;src\Bestiary.c:185: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$186$2_0$119	= .
	.globl	C$Bestiary.c$186$2_0$119
;src\Bestiary.c:186: set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
	ld	de, #_Police_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$187$2_0$119	= .
	.globl	C$Bestiary.c$187$2_0$119
;src\Bestiary.c:187: DrawNumber(4, 0, 5, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$189$2_0$119	= .
	.globl	C$Bestiary.c$189$2_0$119
;src\Bestiary.c:189: DrawNumber(16, 2, 10, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$190$2_0$119	= .
	.globl	C$Bestiary.c$190$2_0$119
;src\Bestiary.c:190: DrawNumber(16, 4, 15, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$191$2_0$119	= .
	.globl	C$Bestiary.c$191$2_0$119
;src\Bestiary.c:191: DrawNumber(17, 6, 5, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0005
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$192$2_0$119	= .
	.globl	C$Bestiary.c$192$2_0$119
;src\Bestiary.c:192: DrawNumber(17, 8, 6, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$193$2_0$119	= .
	.globl	C$Bestiary.c$193$2_0$119
;src\Bestiary.c:193: DrawNumber(16, 10, 22, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$194$2_0$119	= .
	.globl	C$Bestiary.c$194$2_0$119
;src\Bestiary.c:194: DrawText(1, 13, "LOOKS LIKE THE ");
	ld	de, #___str_18
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$195$2_0$119	= .
	.globl	C$Bestiary.c$195$2_0$119
;src\Bestiary.c:195: DrawText(1, 14, "POLICE HAS COME");
	ld	de, #___str_19
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$196$2_0$119	= .
	.globl	C$Bestiary.c$196$2_0$119
;src\Bestiary.c:196: DrawText(1, 15, "TO TAKE YOU AWAY!");
	ld	de, #___str_20
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$197$2_0$119	= .
	.globl	C$Bestiary.c$197$2_0$119
;src\Bestiary.c:197: DrawText(1, 16, "STOP RESISTING!");
	ld	de, #___str_21
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00154$:
	C$Bestiary.c$199$1_0$106	= .
	.globl	C$Bestiary.c$199$1_0$106
;src\Bestiary.c:199: else if (index == 6)
	ld	a, (#_index)
	sub	a, #0x06
	jp	NZ,00151$
	C$Bestiary.c$201$2_0$120	= .
	.globl	C$Bestiary.c$201$2_0$120
;src\Bestiary.c:201: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$202$2_0$120	= .
	.globl	C$Bestiary.c$202$2_0$120
;src\Bestiary.c:202: set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
	ld	de, #_Sheriff_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$203$2_0$120	= .
	.globl	C$Bestiary.c$203$2_0$120
;src\Bestiary.c:203: DrawNumber(4, 0, 6, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$205$2_0$120	= .
	.globl	C$Bestiary.c$205$2_0$120
;src\Bestiary.c:205: DrawNumber(16, 2, 16, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0010
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$206$2_0$120	= .
	.globl	C$Bestiary.c$206$2_0$120
;src\Bestiary.c:206: DrawNumber(16, 4, 10, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$207$2_0$120	= .
	.globl	C$Bestiary.c$207$2_0$120
;src\Bestiary.c:207: DrawNumber(17, 6, 6, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0006
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$208$2_0$120	= .
	.globl	C$Bestiary.c$208$2_0$120
;src\Bestiary.c:208: DrawNumber(17, 8, 8, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0008
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$209$2_0$120	= .
	.globl	C$Bestiary.c$209$2_0$120
;src\Bestiary.c:209: DrawNumber(16, 10, 22, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$210$2_0$120	= .
	.globl	C$Bestiary.c$210$2_0$120
;src\Bestiary.c:210: DrawText(1, 13, "THE SHERIFF IS");
	ld	de, #___str_22
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$211$2_0$120	= .
	.globl	C$Bestiary.c$211$2_0$120
;src\Bestiary.c:211: DrawText(1, 14, "CALLED IN DUE");
	ld	de, #___str_23
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$212$2_0$120	= .
	.globl	C$Bestiary.c$212$2_0$120
;src\Bestiary.c:212: DrawText(1, 15, "POLICE NEGLIGENCE");
	ld	de, #___str_24
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00151$:
	C$Bestiary.c$214$1_0$106	= .
	.globl	C$Bestiary.c$214$1_0$106
;src\Bestiary.c:214: else if (index == 7)
	ld	a, (#_index)
	sub	a, #0x07
	jp	NZ,00148$
	C$Bestiary.c$216$2_0$121	= .
	.globl	C$Bestiary.c$216$2_0$121
;src\Bestiary.c:216: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$217$2_0$121	= .
	.globl	C$Bestiary.c$217$2_0$121
;src\Bestiary.c:217: set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
	ld	de, #_Chief_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$218$2_0$121	= .
	.globl	C$Bestiary.c$218$2_0$121
;src\Bestiary.c:218: DrawNumber(4, 0, 7, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$220$2_0$121	= .
	.globl	C$Bestiary.c$220$2_0$121
;src\Bestiary.c:220: DrawNumber(16, 2, 30, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$221$2_0$121	= .
	.globl	C$Bestiary.c$221$2_0$121
;src\Bestiary.c:221: DrawNumber(16, 4, 20, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$222$2_0$121	= .
	.globl	C$Bestiary.c$222$2_0$121
;src\Bestiary.c:222: DrawNumber(17, 6, 10, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$223$2_0$121	= .
	.globl	C$Bestiary.c$223$2_0$121
;src\Bestiary.c:223: DrawNumber(17, 8, 10, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$224$2_0$121	= .
	.globl	C$Bestiary.c$224$2_0$121
;src\Bestiary.c:224: DrawNumber(16, 10, 55, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0037
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$225$2_0$121	= .
	.globl	C$Bestiary.c$225$2_0$121
;src\Bestiary.c:225: DrawText(1, 13, "CHIEF! CHIEF!");
	ld	de, #___str_25
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$226$2_0$121	= .
	.globl	C$Bestiary.c$226$2_0$121
;src\Bestiary.c:226: DrawText(1, 14, "YOU GOT TO HELP!");
	ld	de, #___str_26
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$227$2_0$121	= .
	.globl	C$Bestiary.c$227$2_0$121
;src\Bestiary.c:227: DrawText(1, 15, "WHY MUST I DO");
	ld	de, #___str_27
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$228$2_0$121	= .
	.globl	C$Bestiary.c$228$2_0$121
;src\Bestiary.c:228: DrawText(1, 16, "EVERYTHING HERE?");
	ld	de, #___str_28
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00148$:
	C$Bestiary.c$230$1_0$106	= .
	.globl	C$Bestiary.c$230$1_0$106
;src\Bestiary.c:230: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jp	NZ,00145$
	C$Bestiary.c$232$2_0$122	= .
	.globl	C$Bestiary.c$232$2_0$122
;src\Bestiary.c:232: set_bkg_data(128, 30, Man_Tiles);
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$233$2_0$122	= .
	.globl	C$Bestiary.c$233$2_0$122
;src\Bestiary.c:233: set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
	ld	de, #_Man_Map
	push	de
	ld	hl, #0x606
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$234$2_0$122	= .
	.globl	C$Bestiary.c$234$2_0$122
;src\Bestiary.c:234: DrawNumber(4, 0, 8, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0008
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$236$2_0$122	= .
	.globl	C$Bestiary.c$236$2_0$122
;src\Bestiary.c:236: DrawNumber(17, 2, 0, 1);    // ATTACK
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0000
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$237$2_0$122	= .
	.globl	C$Bestiary.c$237$2_0$122
;src\Bestiary.c:237: DrawNumber(15, 4, 255, 3);    // DEFENSE
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x00ff
	push	de
	ld	e, #0x04
	ld	a, #0x0f
	call	_DrawNumber
	C$Bestiary.c$238$2_0$122	= .
	.globl	C$Bestiary.c$238$2_0$122
;src\Bestiary.c:238: DrawNumber(17, 6, 1, 1);    // SPECIAL
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$239$2_0$122	= .
	.globl	C$Bestiary.c$239$2_0$122
;src\Bestiary.c:239: DrawNumber(17, 8, 1, 1);    // SPEED
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$240$2_0$122	= .
	.globl	C$Bestiary.c$240$2_0$122
;src\Bestiary.c:240: DrawNumber(16, 10, 1, 1);   // EXP.
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #0x0001
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$241$2_0$122	= .
	.globl	C$Bestiary.c$241$2_0$122
;src\Bestiary.c:241: DrawText(1, 13, "HE'S BUILT");
	ld	de, #___str_29
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$242$2_0$122	= .
	.globl	C$Bestiary.c$242$2_0$122
;src\Bestiary.c:242: DrawText(1, 14, "LIKE A BRICK");
	ld	de, #___str_30
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$243$2_0$122	= .
	.globl	C$Bestiary.c$243$2_0$122
;src\Bestiary.c:243: DrawText(1, 15, "HOUSE!");
	ld	de, #___str_31
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00145$:
	C$Bestiary.c$245$1_0$106	= .
	.globl	C$Bestiary.c$245$1_0$106
;src\Bestiary.c:245: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00142$
	C$Bestiary.c$247$2_0$123	= .
	.globl	C$Bestiary.c$247$2_0$123
;src\Bestiary.c:247: set_bkg_data(128, 26, Car_Tiles);
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$248$2_0$123	= .
	.globl	C$Bestiary.c$248$2_0$123
;src\Bestiary.c:248: set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
	ld	de, #_Car_Map
	push	de
	ld	hl, #0x506
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$249$2_0$123	= .
	.globl	C$Bestiary.c$249$2_0$123
;src\Bestiary.c:249: DrawNumber(4, 0, 9, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0009
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$251$2_0$123	= .
	.globl	C$Bestiary.c$251$2_0$123
;src\Bestiary.c:251: DrawNumber(16, 2, 30, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$252$2_0$123	= .
	.globl	C$Bestiary.c$252$2_0$123
;src\Bestiary.c:252: DrawNumber(16, 4, 25, 3);    // DEFENSE
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0019
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$253$2_0$123	= .
	.globl	C$Bestiary.c$253$2_0$123
;src\Bestiary.c:253: DrawNumber(16, 6, 15, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$254$2_0$123	= .
	.globl	C$Bestiary.c$254$2_0$123
;src\Bestiary.c:254: DrawNumber(16, 8, 40, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0028
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$255$2_0$123	= .
	.globl	C$Bestiary.c$255$2_0$123
;src\Bestiary.c:255: DrawNumber(16, 10, 66, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00170$
00142$:
	C$Bestiary.c$257$1_0$106	= .
	.globl	C$Bestiary.c$257$1_0$106
;src\Bestiary.c:257: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00139$
	C$Bestiary.c$259$2_0$124	= .
	.globl	C$Bestiary.c$259$2_0$124
;src\Bestiary.c:259: set_bkg_data(128, 46, Semi_Tiles);
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$260$2_0$124	= .
	.globl	C$Bestiary.c$260$2_0$124
;src\Bestiary.c:260: set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
	ld	de, #_Semi_Map
	push	de
	ld	hl, #0x806
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$261$2_0$124	= .
	.globl	C$Bestiary.c$261$2_0$124
;src\Bestiary.c:261: DrawNumber(4, 0, 10, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000a
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$263$2_0$124	= .
	.globl	C$Bestiary.c$263$2_0$124
;src\Bestiary.c:263: DrawNumber(16, 2, 66, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$264$2_0$124	= .
	.globl	C$Bestiary.c$264$2_0$124
;src\Bestiary.c:264: DrawNumber(16, 4, 66, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0042
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$265$2_0$124	= .
	.globl	C$Bestiary.c$265$2_0$124
;src\Bestiary.c:265: DrawNumber(16, 6, 15, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$266$2_0$124	= .
	.globl	C$Bestiary.c$266$2_0$124
;src\Bestiary.c:266: DrawNumber(16, 8, 35, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0023
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$267$2_0$124	= .
	.globl	C$Bestiary.c$267$2_0$124
;src\Bestiary.c:267: DrawNumber(15, 10, 100, 3);   // EXP.
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0064
	push	de
	ld	e, #0x0a
	ld	a, #0x0f
	call	_DrawNumber
	jp	00170$
00139$:
	C$Bestiary.c$269$1_0$106	= .
	.globl	C$Bestiary.c$269$1_0$106
;src\Bestiary.c:269: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jp	NZ,00136$
	C$Bestiary.c$271$2_0$125	= .
	.globl	C$Bestiary.c$271$2_0$125
;src\Bestiary.c:271: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$272$2_0$125	= .
	.globl	C$Bestiary.c$272$2_0$125
;src\Bestiary.c:272: set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
	ld	de, #_BigSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$273$2_0$125	= .
	.globl	C$Bestiary.c$273$2_0$125
;src\Bestiary.c:273: DrawNumber(4, 0, 11, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$275$2_0$125	= .
	.globl	C$Bestiary.c$275$2_0$125
;src\Bestiary.c:275: DrawNumber(16, 2, 26, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$276$2_0$125	= .
	.globl	C$Bestiary.c$276$2_0$125
;src\Bestiary.c:276: DrawNumber(16, 4, 14, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000e
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$277$2_0$125	= .
	.globl	C$Bestiary.c$277$2_0$125
;src\Bestiary.c:277: DrawNumber(16, 6, 20, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$278$2_0$125	= .
	.globl	C$Bestiary.c$278$2_0$125
;src\Bestiary.c:278: DrawNumber(16, 8, 20, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0014
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$279$2_0$125	= .
	.globl	C$Bestiary.c$279$2_0$125
;src\Bestiary.c:279: DrawNumber(16, 10, 38, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0026
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$280$2_0$125	= .
	.globl	C$Bestiary.c$280$2_0$125
;src\Bestiary.c:280: DrawText(1, 13, "AROUND HERE,");
	ld	de, #___str_32
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$281$2_0$125	= .
	.globl	C$Bestiary.c$281$2_0$125
;src\Bestiary.c:281: DrawText(1, 14, "SHE'S KNOWN ");
	ld	de, #___str_33
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$282$2_0$125	= .
	.globl	C$Bestiary.c$282$2_0$125
;src\Bestiary.c:282: DrawText(1, 15, "AS BIG SIS!");
	ld	de, #___str_34
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00136$:
	C$Bestiary.c$284$1_0$106	= .
	.globl	C$Bestiary.c$284$1_0$106
;src\Bestiary.c:284: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jp	NZ,00133$
	C$Bestiary.c$286$2_0$126	= .
	.globl	C$Bestiary.c$286$2_0$126
;src\Bestiary.c:286: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$287$2_0$126	= .
	.globl	C$Bestiary.c$287$2_0$126
;src\Bestiary.c:287: set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
	ld	de, #_MadSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$288$2_0$126	= .
	.globl	C$Bestiary.c$288$2_0$126
;src\Bestiary.c:288: DrawNumber(4, 0, 12, 3);     // ID
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000c
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$290$2_0$126	= .
	.globl	C$Bestiary.c$290$2_0$126
;src\Bestiary.c:290: DrawNumber(16, 2, 36, 2);    // ATTACK
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0024
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$291$2_0$126	= .
	.globl	C$Bestiary.c$291$2_0$126
;src\Bestiary.c:291: DrawNumber(16, 4, 24, 2);    // DEFENSE
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0018
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$292$2_0$126	= .
	.globl	C$Bestiary.c$292$2_0$126
;src\Bestiary.c:292: DrawNumber(16, 6, 30, 2);    // SPECIAL
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$293$2_0$126	= .
	.globl	C$Bestiary.c$293$2_0$126
;src\Bestiary.c:293: DrawNumber(16, 8, 30, 2);    // SPEED
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x001e
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$294$2_0$126	= .
	.globl	C$Bestiary.c$294$2_0$126
;src\Bestiary.c:294: DrawNumber(16, 10, 58, 2);   // EXP.
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x003a
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$295$2_0$126	= .
	.globl	C$Bestiary.c$295$2_0$126
;src\Bestiary.c:295: DrawText(1, 13, "SHE REMEMBERS");
	ld	de, #___str_35
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$296$2_0$126	= .
	.globl	C$Bestiary.c$296$2_0$126
;src\Bestiary.c:296: DrawText(1, 14, "YOUR LAST ");
	ld	de, #___str_36
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$297$2_0$126	= .
	.globl	C$Bestiary.c$297$2_0$126
;src\Bestiary.c:297: DrawText(1, 15, "FIGHT.    ");
	ld	de, #___str_37
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00133$:
	C$Bestiary.c$299$1_0$106	= .
	.globl	C$Bestiary.c$299$1_0$106
;src\Bestiary.c:299: else if (index == 13)
	ld	a, (#_index)
	sub	a, #0x0d
	jr	NZ, 00130$
	C$Bestiary.c$301$2_0$127	= .
	.globl	C$Bestiary.c$301$2_0$127
;src\Bestiary.c:301: set_bkg_data(128, 29, Experiment_Tiles);
	ld	de, #_Experiment_Tiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$302$2_0$127	= .
	.globl	C$Bestiary.c$302$2_0$127
;src\Bestiary.c:302: set_bkg_tiles(2, 4, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
	ld	de, #_Experiment_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$303$2_0$127	= .
	.globl	C$Bestiary.c$303$2_0$127
;src\Bestiary.c:303: DrawNumber(4, 0, 13, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000d
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$304$2_0$127	= .
	.globl	C$Bestiary.c$304$2_0$127
;src\Bestiary.c:304: DrawText(1, 13, "ONE OF YAKUB'S");
	ld	de, #___str_38
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$305$2_0$127	= .
	.globl	C$Bestiary.c$305$2_0$127
;src\Bestiary.c:305: DrawText(1, 14, "EXPERIMENTS!");
	ld	de, #___str_39
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$306$2_0$127	= .
	.globl	C$Bestiary.c$306$2_0$127
;src\Bestiary.c:306: DrawText(1, 15, "MAKES YOU ");
	ld	de, #___str_40
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$307$2_0$127	= .
	.globl	C$Bestiary.c$307$2_0$127
;src\Bestiary.c:307: DrawText(1, 16, "THINK, HUH? ");
	ld	de, #___str_41
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00130$:
	C$Bestiary.c$309$1_0$106	= .
	.globl	C$Bestiary.c$309$1_0$106
;src\Bestiary.c:309: else if (index == 14)
	ld	a, (#_index)
	sub	a, #0x0e
	jr	NZ, 00127$
	C$Bestiary.c$311$2_0$128	= .
	.globl	C$Bestiary.c$311$2_0$128
;src\Bestiary.c:311: set_bkg_data(128, 19, Ghost_Tiles);
	ld	de, #_Ghost_Tiles
	push	de
	ld	hl, #0x1380
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$312$2_0$128	= .
	.globl	C$Bestiary.c$312$2_0$128
;src\Bestiary.c:312: set_bkg_tiles(2, 4, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x504
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$313$2_0$128	= .
	.globl	C$Bestiary.c$313$2_0$128
;src\Bestiary.c:313: DrawNumber(4, 0, 14, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000e
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$314$2_0$128	= .
	.globl	C$Bestiary.c$314$2_0$128
;src\Bestiary.c:314: DrawText(1, 13, "AHH! A GHOST!");
	ld	de, #___str_42
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$315$2_0$128	= .
	.globl	C$Bestiary.c$315$2_0$128
;src\Bestiary.c:315: DrawText(1, 14, "WHO IS UNDER");
	ld	de, #___str_43
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$316$2_0$128	= .
	.globl	C$Bestiary.c$316$2_0$128
;src\Bestiary.c:316: DrawText(1, 15, "THAT SHEET? ");
	ld	de, #___str_44
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00127$:
	C$Bestiary.c$318$1_0$106	= .
	.globl	C$Bestiary.c$318$1_0$106
;src\Bestiary.c:318: else if (index == 15)
	ld	a, (#_index)
	sub	a, #0x0f
	jr	NZ, 00124$
	C$Bestiary.c$320$2_0$129	= .
	.globl	C$Bestiary.c$320$2_0$129
;src\Bestiary.c:320: set_bkg_data(128, 14, Saucer_Tiles);
	ld	de, #_Saucer_Tiles
	push	de
	ld	hl, #0xe80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$321$2_0$129	= .
	.globl	C$Bestiary.c$321$2_0$129
;src\Bestiary.c:321: set_bkg_tiles(2, 4, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x305
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$322$2_0$129	= .
	.globl	C$Bestiary.c$322$2_0$129
;src\Bestiary.c:322: DrawNumber(4, 0, 15, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x000f
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$323$2_0$129	= .
	.globl	C$Bestiary.c$323$2_0$129
;src\Bestiary.c:323: DrawText(1, 13, "LOOK! A UFO!");
	ld	de, #___str_45
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$324$2_0$129	= .
	.globl	C$Bestiary.c$324$2_0$129
;src\Bestiary.c:324: DrawText(1, 14, "A FLYING");
	ld	de, #___str_46
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$325$2_0$129	= .
	.globl	C$Bestiary.c$325$2_0$129
;src\Bestiary.c:325: DrawText(1, 15, "SAUCER?!");
	ld	de, #___str_47
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00124$:
	C$Bestiary.c$327$1_0$106	= .
	.globl	C$Bestiary.c$327$1_0$106
;src\Bestiary.c:327: else if (index == 16)
	ld	a, (#_index)
	sub	a, #0x10
	jr	NZ, 00121$
	C$Bestiary.c$329$2_0$130	= .
	.globl	C$Bestiary.c$329$2_0$130
;src\Bestiary.c:329: set_bkg_data(128, 20, SockHead_Tiles);
	ld	de, #_SockHead_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$330$2_0$130	= .
	.globl	C$Bestiary.c$330$2_0$130
;src\Bestiary.c:330: set_bkg_tiles(2, 4, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
	ld	de, #_SockHead_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$331$2_0$130	= .
	.globl	C$Bestiary.c$331$2_0$130
;src\Bestiary.c:331: DrawNumber(4, 0, 16, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0010
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$332$2_0$130	= .
	.globl	C$Bestiary.c$332$2_0$130
;src\Bestiary.c:332: DrawText(1, 13, "SOCK HEADS");
	ld	de, #___str_48
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$333$2_0$130	= .
	.globl	C$Bestiary.c$333$2_0$130
;src\Bestiary.c:333: DrawText(1, 14, "DON'T THINK");
	ld	de, #___str_49
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$334$2_0$130	= .
	.globl	C$Bestiary.c$334$2_0$130
;src\Bestiary.c:334: DrawText(1, 15, "ABOUT THE");
	ld	de, #___str_50
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$335$2_0$130	= .
	.globl	C$Bestiary.c$335$2_0$130
;src\Bestiary.c:335: DrawText(1, 16, "FUTURE.");
	ld	de, #___str_51
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00170$
00121$:
	C$Bestiary.c$337$1_0$106	= .
	.globl	C$Bestiary.c$337$1_0$106
;src\Bestiary.c:337: else if (index == 17)
	ld	a, (#_index)
	sub	a, #0x11
	jr	NZ, 00118$
	C$Bestiary.c$339$2_0$131	= .
	.globl	C$Bestiary.c$339$2_0$131
;src\Bestiary.c:339: set_bkg_data(128, 26, Toby_Tiles);
	ld	de, #_Toby_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$340$2_0$131	= .
	.globl	C$Bestiary.c$340$2_0$131
;src\Bestiary.c:340: set_bkg_tiles(2, 4, Toby_MapWidth, Toby_MapHeight, Toby_Map);
	ld	de, #_Toby_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$341$2_0$131	= .
	.globl	C$Bestiary.c$341$2_0$131
;src\Bestiary.c:341: DrawNumber(4, 0, 17, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0011
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$342$2_0$131	= .
	.globl	C$Bestiary.c$342$2_0$131
;src\Bestiary.c:342: DrawText(1, 13, "FOX LOVES TO SAY");
	ld	de, #___str_52
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$343$2_0$131	= .
	.globl	C$Bestiary.c$343$2_0$131
;src\Bestiary.c:343: DrawText(1, 14, "FLOAT LIKE A ");
	ld	de, #___str_53
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$344$2_0$131	= .
	.globl	C$Bestiary.c$344$2_0$131
;src\Bestiary.c:344: DrawText(1, 15, "BUTTERFLY, STING");
	ld	de, #___str_54
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$345$2_0$131	= .
	.globl	C$Bestiary.c$345$2_0$131
;src\Bestiary.c:345: DrawText(1, 16, "LIKE A BEE!");
	ld	de, #___str_55
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jr	00170$
00118$:
	C$Bestiary.c$347$1_0$106	= .
	.globl	C$Bestiary.c$347$1_0$106
;src\Bestiary.c:347: else if (index == 18)
	ld	a, (#_index)
	sub	a, #0x12
	jr	NZ, 00170$
	C$Bestiary.c$349$2_0$132	= .
	.globl	C$Bestiary.c$349$2_0$132
;src\Bestiary.c:349: set_bkg_data(128, 24, Drunk_Tiles);
	ld	de, #_Drunk_Tiles
	push	de
	ld	hl, #0x1880
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$350$2_0$132	= .
	.globl	C$Bestiary.c$350$2_0$132
;src\Bestiary.c:350: set_bkg_tiles(2, 4, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
	ld	de, #_Drunk_Map
	push	de
	ld	hl, #0x604
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$351$2_0$132	= .
	.globl	C$Bestiary.c$351$2_0$132
;src\Bestiary.c:351: DrawNumber(4, 0, 18, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x0012
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$352$2_0$132	= .
	.globl	C$Bestiary.c$352$2_0$132
;src\Bestiary.c:352: DrawText(1, 13, "DRUNK STUMBLES.");
	ld	de, #___str_56
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$353$2_0$132	= .
	.globl	C$Bestiary.c$353$2_0$132
;src\Bestiary.c:353: DrawText(1, 14, "HE HITS HARD.");
	ld	de, #___str_57
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$354$2_0$132	= .
	.globl	C$Bestiary.c$354$2_0$132
;src\Bestiary.c:354: DrawText(1, 15, "AND YELLS A LOT.");
	ld	de, #___str_58
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$355$2_0$132	= .
	.globl	C$Bestiary.c$355$2_0$132
;src\Bestiary.c:355: DrawText(1, 16, "NOT FUN TO BE NEAR.");
	ld	de, #___str_59
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
00170$:
	C$Bestiary.c$357$1_0$106	= .
	.globl	C$Bestiary.c$357$1_0$106
;src\Bestiary.c:357: return BESTIARY;
	ld	a, #0x04
	C$Bestiary.c$358$1_0$106	= .
	.globl	C$Bestiary.c$358$1_0$106
;src\Bestiary.c:358: }
	C$Bestiary.c$358$1_0$106	= .
	.globl	C$Bestiary.c$358$1_0$106
	XG$BestiaryUpdate$0$0	= .
	.globl	XG$BestiaryUpdate$0$0
	ret
FBestiary$__str_0$0_0$0 == .
___str_0:
	.ascii "JIM IS A "
	.db 0x00
FBestiary$__str_1$0_0$0 == .
___str_1:
	.ascii "GAMBLER. HE LIKES"
	.db 0x00
FBestiary$__str_2$0_0$0 == .
___str_2:
	.ascii "SHOOTING DICE."
	.db 0x00
FBestiary$__str_3$0_0$0 == .
___str_3:
	.ascii "GYPSY MOTHS ARE"
	.db 0x00
FBestiary$__str_4$0_0$0 == .
___str_4:
	.ascii "TAKING ALL FROM"
	.db 0x00
FBestiary$__str_5$0_0$0 == .
___str_5:
	.ascii "EVERYWHERE!"
	.db 0x00
FBestiary$__str_6$0_0$0 == .
___str_6:
	.ascii "WALLY IS IN A"
	.db 0x00
FBestiary$__str_7$0_0$0 == .
___str_7:
	.ascii "GANG. HE SAYS"
	.db 0x00
FBestiary$__str_8$0_0$0 == .
___str_8:
	.ascii "NO TO DRUGS!"
	.db 0x00
FBestiary$__str_9$0_0$0 == .
___str_9:
	.ascii "HOW COOL!"
	.db 0x00
FBestiary$__str_10$0_0$0 == .
___str_10:
	.ascii "BLOOD SUCKING"
	.db 0x00
FBestiary$__str_11$0_0$0 == .
___str_11:
	.ascii "PARASITE!"
	.db 0x00
FBestiary$__str_12$0_0$0 == .
___str_12:
	.ascii "THEY HIDE IN"
	.db 0x00
FBestiary$__str_13$0_0$0 == .
___str_13:
	.ascii "TALL GRASS!"
	.db 0x00
FBestiary$__str_14$0_0$0 == .
___str_14:
	.ascii "OH NO! THE COPS!"
	.db 0x00
FBestiary$__str_15$0_0$0 == .
___str_15:
	.ascii "SOMEONE HAS BEEN"
	.db 0x00
FBestiary$__str_16$0_0$0 == .
___str_16:
	.ascii "BEING NAUGHTY!"
	.db 0x00
FBestiary$__str_17$0_0$0 == .
___str_17:
	.ascii "CAN'T BE YOU?"
	.db 0x00
FBestiary$__str_18$0_0$0 == .
___str_18:
	.ascii "LOOKS LIKE THE "
	.db 0x00
FBestiary$__str_19$0_0$0 == .
___str_19:
	.ascii "POLICE HAS COME"
	.db 0x00
FBestiary$__str_20$0_0$0 == .
___str_20:
	.ascii "TO TAKE YOU AWAY!"
	.db 0x00
FBestiary$__str_21$0_0$0 == .
___str_21:
	.ascii "STOP RESISTING!"
	.db 0x00
FBestiary$__str_22$0_0$0 == .
___str_22:
	.ascii "THE SHERIFF IS"
	.db 0x00
FBestiary$__str_23$0_0$0 == .
___str_23:
	.ascii "CALLED IN DUE"
	.db 0x00
FBestiary$__str_24$0_0$0 == .
___str_24:
	.ascii "POLICE NEGLIGENCE"
	.db 0x00
FBestiary$__str_25$0_0$0 == .
___str_25:
	.ascii "CHIEF! CHIEF!"
	.db 0x00
FBestiary$__str_26$0_0$0 == .
___str_26:
	.ascii "YOU GOT TO HELP!"
	.db 0x00
FBestiary$__str_27$0_0$0 == .
___str_27:
	.ascii "WHY MUST I DO"
	.db 0x00
FBestiary$__str_28$0_0$0 == .
___str_28:
	.ascii "EVERYTHING HERE?"
	.db 0x00
FBestiary$__str_29$0_0$0 == .
___str_29:
	.ascii "HE'S BUILT"
	.db 0x00
FBestiary$__str_30$0_0$0 == .
___str_30:
	.ascii "LIKE A BRICK"
	.db 0x00
FBestiary$__str_31$0_0$0 == .
___str_31:
	.ascii "HOUSE!"
	.db 0x00
FBestiary$__str_32$0_0$0 == .
___str_32:
	.ascii "AROUND HERE,"
	.db 0x00
FBestiary$__str_33$0_0$0 == .
___str_33:
	.ascii "SHE'S KNOWN "
	.db 0x00
FBestiary$__str_34$0_0$0 == .
___str_34:
	.ascii "AS BIG SIS!"
	.db 0x00
FBestiary$__str_35$0_0$0 == .
___str_35:
	.ascii "SHE REMEMBERS"
	.db 0x00
FBestiary$__str_36$0_0$0 == .
___str_36:
	.ascii "YOUR LAST "
	.db 0x00
FBestiary$__str_37$0_0$0 == .
___str_37:
	.ascii "FIGHT.    "
	.db 0x00
FBestiary$__str_38$0_0$0 == .
___str_38:
	.ascii "ONE OF YAKUB'S"
	.db 0x00
FBestiary$__str_39$0_0$0 == .
___str_39:
	.ascii "EXPERIMENTS!"
	.db 0x00
FBestiary$__str_40$0_0$0 == .
___str_40:
	.ascii "MAKES YOU "
	.db 0x00
FBestiary$__str_41$0_0$0 == .
___str_41:
	.ascii "THINK, HUH? "
	.db 0x00
FBestiary$__str_42$0_0$0 == .
___str_42:
	.ascii "AHH! A GHOST!"
	.db 0x00
FBestiary$__str_43$0_0$0 == .
___str_43:
	.ascii "WHO IS UNDER"
	.db 0x00
FBestiary$__str_44$0_0$0 == .
___str_44:
	.ascii "THAT SHEET? "
	.db 0x00
FBestiary$__str_45$0_0$0 == .
___str_45:
	.ascii "LOOK! A UFO!"
	.db 0x00
FBestiary$__str_46$0_0$0 == .
___str_46:
	.ascii "A FLYING"
	.db 0x00
FBestiary$__str_47$0_0$0 == .
___str_47:
	.ascii "SAUCER?!"
	.db 0x00
FBestiary$__str_48$0_0$0 == .
___str_48:
	.ascii "SOCK HEADS"
	.db 0x00
FBestiary$__str_49$0_0$0 == .
___str_49:
	.ascii "DON'T THINK"
	.db 0x00
FBestiary$__str_50$0_0$0 == .
___str_50:
	.ascii "ABOUT THE"
	.db 0x00
FBestiary$__str_51$0_0$0 == .
___str_51:
	.ascii "FUTURE."
	.db 0x00
FBestiary$__str_52$0_0$0 == .
___str_52:
	.ascii "FOX LOVES TO SAY"
	.db 0x00
FBestiary$__str_53$0_0$0 == .
___str_53:
	.ascii "FLOAT LIKE A "
	.db 0x00
FBestiary$__str_54$0_0$0 == .
___str_54:
	.ascii "BUTTERFLY, STING"
	.db 0x00
FBestiary$__str_55$0_0$0 == .
___str_55:
	.ascii "LIKE A BEE!"
	.db 0x00
FBestiary$__str_56$0_0$0 == .
___str_56:
	.ascii "DRUNK STUMBLES."
	.db 0x00
FBestiary$__str_57$0_0$0 == .
___str_57:
	.ascii "HE HITS HARD."
	.db 0x00
FBestiary$__str_58$0_0$0 == .
___str_58:
	.ascii "AND YELLS A LOT."
	.db 0x00
FBestiary$__str_59$0_0$0 == .
___str_59:
	.ascii "NOT FUN TO BE NEAR."
	.db 0x00
	.area _CODE
	.area _INITIALIZER
FBestiary$__xinit_invert$0_0$0 == .
__xinit__invert:
	.db #0x00	; 0
	.area _CABS (ABS)
