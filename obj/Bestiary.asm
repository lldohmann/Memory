;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Bestiary
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_BestiaryUpdate
	.globl _BestiaryUpdate
	.globl b___func_BestiaryUpdate
	.globl ___func_BestiaryUpdate
	.globl b_BestiarySetup
	.globl _BestiarySetup
	.globl b___func_BestiarySetup
	.globl ___func_BestiarySetup
	.globl b___func_const_bank_ID_bestiary
	.globl ___func_const_bank_ID_bestiary
	.globl _InvertColor
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawText
	.globl _DrawNumber
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _joypad
	.globl _invert
	.globl _const_bank_ID_bestiary
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
	.area _CODE_5
	G$__func_const_bank_ID_bestiary$0$0	= .
	.globl	G$__func_const_bank_ID_bestiary$0$0
	C$Bestiary.c$42$0_0$137	= .
	.globl	C$Bestiary.c$42$0_0$137
;src\Bestiary.c:42: BANKREF(const_bank_ID_bestiary)
;	---------------------------------
; Function __func_const_bank_ID_bestiary
; ---------------------------------
	b___func_const_bank_ID_bestiary	= 5
___func_const_bank_ID_bestiary::
	.local b___func_const_bank_ID_bestiary 
	___bank_const_bank_ID_bestiary = b___func_const_bank_ID_bestiary 
	.globl ___bank_const_bank_ID_bestiary 
	G$__func_BestiarySetup$0$0	= .
	.globl	G$__func_BestiarySetup$0$0
	C$Bestiary.c$53$1_0$139	= .
	.globl	C$Bestiary.c$53$1_0$139
;src\Bestiary.c:53: BANKREF(BestiarySetup)
;	---------------------------------
; Function __func_BestiarySetup
; ---------------------------------
	b___func_BestiarySetup	= 5
___func_BestiarySetup::
	.local b___func_BestiarySetup 
	___bank_BestiarySetup = b___func_BestiarySetup 
	.globl ___bank_BestiarySetup 
	G$BestiarySetup$0$0	= .
	.globl	G$BestiarySetup$0$0
	C$Bestiary.c$54$1_0$141	= .
	.globl	C$Bestiary.c$54$1_0$141
;src\Bestiary.c:54: void BestiarySetup(void) BANKED
;	---------------------------------
; Function BestiarySetup
; ---------------------------------
	b_BestiarySetup	= 5
_BestiarySetup::
;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$Bestiary.c$57$1_0$141	= .
	.globl	C$Bestiary.c$57$1_0$141
;src\Bestiary.c:57: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$58$1_0$141	= .
	.globl	C$Bestiary.c$58$1_0$141
;src\Bestiary.c:58: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$59$1_0$141	= .
	.globl	C$Bestiary.c$59$1_0$141
;src\Bestiary.c:59: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Bestiary.c$60$1_0$141	= .
	.globl	C$Bestiary.c$60$1_0$141
;src\Bestiary.c:60: fadeFromBlack(10);
	ld	a, #0x0a
	C$Bestiary.c$61$1_0$141	= .
	.globl	C$Bestiary.c$61$1_0$141
;src\Bestiary.c:61: }
	C$Bestiary.c$61$1_0$141	= .
	.globl	C$Bestiary.c$61$1_0$141
	XG$BestiarySetup$0$0	= .
	.globl	XG$BestiarySetup$0$0
	jp	_fadeFromBlack
G$const_bank_ID_bestiary$0_0$0 == .
_const_bank_ID_bestiary:
	.db #0x04	; 4
	G$__func_BestiaryUpdate$0$0	= .
	.globl	G$__func_BestiaryUpdate$0$0
	C$Bestiary.c$63$1_0$146	= .
	.globl	C$Bestiary.c$63$1_0$146
;src\Bestiary.c:63: BANKREF(BestiaryUpdate)
;	---------------------------------
; Function __func_BestiaryUpdate
; ---------------------------------
	b___func_BestiaryUpdate	= 5
___func_BestiaryUpdate::
	.local b___func_BestiaryUpdate 
	___bank_BestiaryUpdate = b___func_BestiaryUpdate 
	.globl ___bank_BestiaryUpdate 
	G$BestiaryUpdate$0$0	= .
	.globl	G$BestiaryUpdate$0$0
	C$Bestiary.c$64$1_0$148	= .
	.globl	C$Bestiary.c$64$1_0$148
;src\Bestiary.c:64: uint8_t BestiaryUpdate(void) BANKED
;	---------------------------------
; Function BestiaryUpdate
; ---------------------------------
	b_BestiaryUpdate	= 5
_BestiaryUpdate::
	C$Bestiary.c$66$1_0$148	= .
	.globl	C$Bestiary.c$66$1_0$148
;src\Bestiary.c:66: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$Bestiary.c$67$1_0$148	= .
	.globl	C$Bestiary.c$67$1_0$148
;src\Bestiary.c:67: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$Bestiary.c$69$1_0$148	= .
	.globl	C$Bestiary.c$69$1_0$148
;src\Bestiary.c:69: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
	bit	1, (hl)
	jr	Z, 00104$
	ld	a, (#_joypadPrevious)
	bit	1, a
	jr	NZ, 00104$
	C$Bestiary.c$71$2_0$149	= .
	.globl	C$Bestiary.c$71$2_0$149
;src\Bestiary.c:71: if (index - 1 >= 0)
	ld	hl, #_index
	ld	c, (hl)
	xor	a, a
	ld	b, a
	dec	bc
	bit	7, b
	jr	NZ, 00104$
	C$Bestiary.c$73$3_0$150	= .
	.globl	C$Bestiary.c$73$3_0$150
;src\Bestiary.c:73: index--;
	dec	(hl)
	C$Bestiary.c$74$3_0$150	= .
	.globl	C$Bestiary.c$74$3_0$150
;src\Bestiary.c:74: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
00104$:
	C$Bestiary.c$77$1_0$148	= .
	.globl	C$Bestiary.c$77$1_0$148
;src\Bestiary.c:77: if ((joypadCurrent & J_RIGHT) && !(joypadPrevious & J_RIGHT))
	ld	a, (#_joypadCurrent)
	rrca
	jr	NC, 00109$
	ld	a, (#_joypadPrevious)
	rrca
	jr	C, 00109$
	C$Bestiary.c$79$2_0$151	= .
	.globl	C$Bestiary.c$79$2_0$151
;src\Bestiary.c:79: if (index + 1 <= 18)
	ld	hl, #_index
	ld	c, (hl)
	xor	a, a
	ld	b, a
	inc	bc
	ld	e, b
	ld	d, #0x00
	ld	a, #0x12
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00377$
	bit	7, d
	jr	NZ, 00378$
	cp	a, a
	jr	00378$
00377$:
	bit	7, d
	jr	Z, 00378$
	scf
00378$:
	jr	C, 00109$
	C$Bestiary.c$81$3_0$152	= .
	.globl	C$Bestiary.c$81$3_0$152
;src\Bestiary.c:81: index++;
	ld	hl, #_index
	inc	(hl)
	C$Bestiary.c$82$3_0$152	= .
	.globl	C$Bestiary.c$82$3_0$152
;src\Bestiary.c:82: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
	ld	de, #_Bestiary_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
00109$:
	C$Bestiary.c$85$1_0$148	= .
	.globl	C$Bestiary.c$85$1_0$148
;src\Bestiary.c:85: if (joypadCurrent & J_START)
	ld	a, (#_joypadCurrent)
	rlca
	jr	NC, 00112$
	C$Bestiary.c$87$2_0$153	= .
	.globl	C$Bestiary.c$87$2_0$153
;src\Bestiary.c:87: InvertColor();
	call	_InvertColor
00112$:
	C$Bestiary.c$69$1_0$148	= .
	.globl	C$Bestiary.c$69$1_0$148
;src\Bestiary.c:69: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
	ld	a, (#_joypadCurrent)
	C$Bestiary.c$101$1_0$148	= .
	.globl	C$Bestiary.c$101$1_0$148
;src\Bestiary.c:101: if (joypadCurrent & J_SELECT)
	bit	6, a
	jr	Z, 00114$
	C$Bestiary.c$103$2_0$154	= .
	.globl	C$Bestiary.c$103$2_0$154
;src\Bestiary.c:103: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$Bestiary.c$104$2_0$154	= .
	.globl	C$Bestiary.c$104$2_0$154
;src\Bestiary.c:104: return GAMETITLE;
	ld	a, #0x01
	ret
00114$:
	C$Bestiary.c$106$1_0$148	= .
	.globl	C$Bestiary.c$106$1_0$148
;src\Bestiary.c:106: if (joypadCurrent & J_A)
	bit	4, a
	jr	Z, 00116$
	C$Bestiary.c$108$2_0$155	= .
	.globl	C$Bestiary.c$108$2_0$155
;src\Bestiary.c:108: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$109$2_0$155	= .
	.globl	C$Bestiary.c$109$2_0$155
;src\Bestiary.c:109: fadeFromBlack(3);
	ld	a, #0x03
	call	_fadeFromBlack
	C$Bestiary.c$110$2_0$155	= .
	.globl	C$Bestiary.c$110$2_0$155
;src\Bestiary.c:110: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$111$2_0$155	= .
	.globl	C$Bestiary.c$111$2_0$155
;src\Bestiary.c:111: fadeFromBlack(3);
	ld	a, #0x03
	call	_fadeFromBlack
	C$Bestiary.c$112$2_0$155	= .
	.globl	C$Bestiary.c$112$2_0$155
;src\Bestiary.c:112: fadeToBlack(3);
	ld	a, #0x03
	call	_fadeToBlack
	C$Bestiary.c$113$2_0$155	= .
	.globl	C$Bestiary.c$113$2_0$155
;src\Bestiary.c:113: return BATTLE;
	ld	a, #0x05
	ret
00116$:
	C$Bestiary.c$115$1_0$148	= .
	.globl	C$Bestiary.c$115$1_0$148
;src\Bestiary.c:115: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jp	NZ, 00171$
	C$Bestiary.c$117$2_0$156	= .
	.globl	C$Bestiary.c$117$2_0$156
;src\Bestiary.c:117: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$118$2_0$156	= .
	.globl	C$Bestiary.c$118$2_0$156
;src\Bestiary.c:118: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$119$2_0$156	= .
	.globl	C$Bestiary.c$119$2_0$156
;src\Bestiary.c:119: DrawNumber(4, 0, 0, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0000
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$121$2_0$156	= .
	.globl	C$Bestiary.c$121$2_0$156
;src\Bestiary.c:121: DrawNumber(17, 2, 3, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0003
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$122$2_0$156	= .
	.globl	C$Bestiary.c$122$2_0$156
;src\Bestiary.c:122: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$123$2_0$156	= .
	.globl	C$Bestiary.c$123$2_0$156
;src\Bestiary.c:123: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$124$2_0$156	= .
	.globl	C$Bestiary.c$124$2_0$156
;src\Bestiary.c:124: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$125$2_0$156	= .
	.globl	C$Bestiary.c$125$2_0$156
;src\Bestiary.c:125: DrawNumber(17, 10, 5, 1, TRUE);   // EXP.
	ld	hl, #0x101
	push	hl
	ld	de, #0x0005
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$126$2_0$156	= .
	.globl	C$Bestiary.c$126$2_0$156
;src\Bestiary.c:126: DrawText(1, 13, "JIM IS A ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_0
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$127$2_0$156	= .
	.globl	C$Bestiary.c$127$2_0$156
;src\Bestiary.c:127: DrawText(1, 14, "GAMBLER. HE LIKES", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_1
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$128$2_0$156	= .
	.globl	C$Bestiary.c$128$2_0$156
;src\Bestiary.c:128: DrawText(1, 15, "SHOOTING DICE.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_2
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00171$:
	C$Bestiary.c$130$1_0$148	= .
	.globl	C$Bestiary.c$130$1_0$148
;src\Bestiary.c:130: else if (index == 1) // Gypsy
	ld	a, (#_index)
	dec	a
	jp	NZ,00168$
	C$Bestiary.c$132$2_0$157	= .
	.globl	C$Bestiary.c$132$2_0$157
;src\Bestiary.c:132: set_bkg_data(128, 79, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$133$2_0$157	= .
	.globl	C$Bestiary.c$133$2_0$157
;src\Bestiary.c:133: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$134$2_0$157	= .
	.globl	C$Bestiary.c$134$2_0$157
;src\Bestiary.c:134: DrawNumber(4, 0, 1, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0001
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$136$2_0$157	= .
	.globl	C$Bestiary.c$136$2_0$157
;src\Bestiary.c:136: DrawNumber(17, 2, 2, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$137$2_0$157	= .
	.globl	C$Bestiary.c$137$2_0$157
;src\Bestiary.c:137: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$138$2_0$157	= .
	.globl	C$Bestiary.c$138$2_0$157
;src\Bestiary.c:138: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$139$2_0$157	= .
	.globl	C$Bestiary.c$139$2_0$157
;src\Bestiary.c:139: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$140$2_0$157	= .
	.globl	C$Bestiary.c$140$2_0$157
;src\Bestiary.c:140: DrawNumber(17, 10, 7, 1, TRUE);   // EXP.
	ld	hl, #0x101
	push	hl
	ld	de, #0x0007
	push	de
	ld	e, #0x0a
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$141$2_0$157	= .
	.globl	C$Bestiary.c$141$2_0$157
;src\Bestiary.c:141: DrawText(1, 13, "GYPSY MOTHS ARE", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_3
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$142$2_0$157	= .
	.globl	C$Bestiary.c$142$2_0$157
;src\Bestiary.c:142: DrawText(1, 14, "TAKING ALL FROM", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_4
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$143$2_0$157	= .
	.globl	C$Bestiary.c$143$2_0$157
;src\Bestiary.c:143: DrawText(1, 15, "EVERYWHERE!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_5
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00168$:
	C$Bestiary.c$145$1_0$148	= .
	.globl	C$Bestiary.c$145$1_0$148
;src\Bestiary.c:145: else if (index == 2) // Wally
	ld	a, (#_index)
	sub	a, #0x02
	jp	NZ,00165$
	C$Bestiary.c$147$2_0$158	= .
	.globl	C$Bestiary.c$147$2_0$158
;src\Bestiary.c:147: set_bkg_data(128, 79, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x4f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$148$2_0$158	= .
	.globl	C$Bestiary.c$148$2_0$158
;src\Bestiary.c:148: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
	ld	de, #_Wally_Map
	push	de
	ld	hl, #0x605
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$149$2_0$158	= .
	.globl	C$Bestiary.c$149$2_0$158
;src\Bestiary.c:149: DrawNumber(4, 0, 2, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$151$2_0$158	= .
	.globl	C$Bestiary.c$151$2_0$158
;src\Bestiary.c:151: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$152$2_0$158	= .
	.globl	C$Bestiary.c$152$2_0$158
;src\Bestiary.c:152: DrawNumber(17, 4, 4, 1, TRUE);    // DEFENSE
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$153$2_0$158	= .
	.globl	C$Bestiary.c$153$2_0$158
;src\Bestiary.c:153: DrawNumber(17, 6, 4, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$154$2_0$158	= .
	.globl	C$Bestiary.c$154$2_0$158
;src\Bestiary.c:154: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$155$2_0$158	= .
	.globl	C$Bestiary.c$155$2_0$158
;src\Bestiary.c:155: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$156$2_0$158	= .
	.globl	C$Bestiary.c$156$2_0$158
;src\Bestiary.c:156: DrawText(1, 13, "WALLY IS IN A", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_6
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$157$2_0$158	= .
	.globl	C$Bestiary.c$157$2_0$158
;src\Bestiary.c:157: DrawText(1, 14, "GANG. HE SAYS", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_7
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$158$2_0$158	= .
	.globl	C$Bestiary.c$158$2_0$158
;src\Bestiary.c:158: DrawText(1, 15, "NO TO DRUGS!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_8
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$159$2_0$158	= .
	.globl	C$Bestiary.c$159$2_0$158
;src\Bestiary.c:159: DrawText(1, 16, "HOW COOL!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_9
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00165$:
	C$Bestiary.c$161$1_0$148	= .
	.globl	C$Bestiary.c$161$1_0$148
;src\Bestiary.c:161: else if (index == 3)
	ld	a, (#_index)
	sub	a, #0x03
	jp	NZ,00162$
	C$Bestiary.c$163$2_0$159	= .
	.globl	C$Bestiary.c$163$2_0$159
;src\Bestiary.c:163: set_bkg_data(128, 20, Tick_Tiles);
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$164$2_0$159	= .
	.globl	C$Bestiary.c$164$2_0$159
;src\Bestiary.c:164: set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
	ld	de, #_Tick_Map
	push	de
	ld	hl, #0x505
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$165$2_0$159	= .
	.globl	C$Bestiary.c$165$2_0$159
;src\Bestiary.c:165: DrawNumber(4, 0, 3, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0003
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$167$2_0$159	= .
	.globl	C$Bestiary.c$167$2_0$159
;src\Bestiary.c:167: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$168$2_0$159	= .
	.globl	C$Bestiary.c$168$2_0$159
;src\Bestiary.c:168: DrawNumber(17, 4, 7, 1, TRUE);    // DEFENSE
	ld	hl, #0x101
	push	hl
	ld	de, #0x0007
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$169$2_0$159	= .
	.globl	C$Bestiary.c$169$2_0$159
;src\Bestiary.c:169: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0003
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$170$2_0$159	= .
	.globl	C$Bestiary.c$170$2_0$159
;src\Bestiary.c:170: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$171$2_0$159	= .
	.globl	C$Bestiary.c$171$2_0$159
;src\Bestiary.c:171: DrawNumber(16, 10, 16, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0010
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$172$2_0$159	= .
	.globl	C$Bestiary.c$172$2_0$159
;src\Bestiary.c:172: DrawText(1, 13, "BLOOD SUCKING", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_10
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$173$2_0$159	= .
	.globl	C$Bestiary.c$173$2_0$159
;src\Bestiary.c:173: DrawText(1, 14, "PARASITE!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_11
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$174$2_0$159	= .
	.globl	C$Bestiary.c$174$2_0$159
;src\Bestiary.c:174: DrawText(1, 15, "THEY HIDE IN", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_12
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$175$2_0$159	= .
	.globl	C$Bestiary.c$175$2_0$159
;src\Bestiary.c:175: DrawText(1, 16, "TALL GRASS!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_13
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00162$:
	C$Bestiary.c$177$1_0$148	= .
	.globl	C$Bestiary.c$177$1_0$148
;src\Bestiary.c:177: else if (index == 4)
	ld	a, (#_index)
	sub	a, #0x04
	jp	NZ,00159$
	C$Bestiary.c$179$2_0$160	= .
	.globl	C$Bestiary.c$179$2_0$160
;src\Bestiary.c:179: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$180$2_0$160	= .
	.globl	C$Bestiary.c$180$2_0$160
;src\Bestiary.c:180: set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
	ld	de, #_Officer_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$181$2_0$160	= .
	.globl	C$Bestiary.c$181$2_0$160
;src\Bestiary.c:181: DrawNumber(4, 0, 4, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$183$2_0$160	= .
	.globl	C$Bestiary.c$183$2_0$160
;src\Bestiary.c:183: DrawNumber(17, 2, 9, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0009
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$184$2_0$160	= .
	.globl	C$Bestiary.c$184$2_0$160
;src\Bestiary.c:184: DrawNumber(17, 4, 5, 1, TRUE);    // DEFENSE
	ld	hl, #0x101
	push	hl
	ld	de, #0x0005
	push	de
	ld	e, #0x04
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$185$2_0$160	= .
	.globl	C$Bestiary.c$185$2_0$160
;src\Bestiary.c:185: DrawNumber(17, 6, 2, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0002
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$186$2_0$160	= .
	.globl	C$Bestiary.c$186$2_0$160
;src\Bestiary.c:186: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0004
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$187$2_0$160	= .
	.globl	C$Bestiary.c$187$2_0$160
;src\Bestiary.c:187: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x000c
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$188$2_0$160	= .
	.globl	C$Bestiary.c$188$2_0$160
;src\Bestiary.c:188: DrawText(1, 13, "OH NO! THE COPS!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_14
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$189$2_0$160	= .
	.globl	C$Bestiary.c$189$2_0$160
;src\Bestiary.c:189: DrawText(1, 14, "SOMEONE HAS BEEN", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_15
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$190$2_0$160	= .
	.globl	C$Bestiary.c$190$2_0$160
;src\Bestiary.c:190: DrawText(1, 15, "BEING NAUGHTY!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_16
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$191$2_0$160	= .
	.globl	C$Bestiary.c$191$2_0$160
;src\Bestiary.c:191: DrawText(1, 16, "CAN'T BE YOU?", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_17
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00159$:
	C$Bestiary.c$193$1_0$148	= .
	.globl	C$Bestiary.c$193$1_0$148
;src\Bestiary.c:193: else if (index == 5)
	ld	a, (#_index)
	sub	a, #0x05
	jp	NZ,00156$
	C$Bestiary.c$195$2_0$161	= .
	.globl	C$Bestiary.c$195$2_0$161
;src\Bestiary.c:195: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$196$2_0$161	= .
	.globl	C$Bestiary.c$196$2_0$161
;src\Bestiary.c:196: set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
	ld	de, #_Police_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$197$2_0$161	= .
	.globl	C$Bestiary.c$197$2_0$161
;src\Bestiary.c:197: DrawNumber(4, 0, 5, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0005
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$199$2_0$161	= .
	.globl	C$Bestiary.c$199$2_0$161
;src\Bestiary.c:199: DrawNumber(16, 2, 10, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x000a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$200$2_0$161	= .
	.globl	C$Bestiary.c$200$2_0$161
;src\Bestiary.c:200: DrawNumber(16, 4, 15, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x000f
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$201$2_0$161	= .
	.globl	C$Bestiary.c$201$2_0$161
;src\Bestiary.c:201: DrawNumber(17, 6, 5, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0005
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$202$2_0$161	= .
	.globl	C$Bestiary.c$202$2_0$161
;src\Bestiary.c:202: DrawNumber(17, 8, 6, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0006
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$203$2_0$161	= .
	.globl	C$Bestiary.c$203$2_0$161
;src\Bestiary.c:203: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$204$2_0$161	= .
	.globl	C$Bestiary.c$204$2_0$161
;src\Bestiary.c:204: DrawText(1, 13, "LOOKS LIKE THE ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_18
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$205$2_0$161	= .
	.globl	C$Bestiary.c$205$2_0$161
;src\Bestiary.c:205: DrawText(1, 14, "POLICE HAS COME", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_19
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$206$2_0$161	= .
	.globl	C$Bestiary.c$206$2_0$161
;src\Bestiary.c:206: DrawText(1, 15, "TO TAKE YOU AWAY!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_20
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$207$2_0$161	= .
	.globl	C$Bestiary.c$207$2_0$161
;src\Bestiary.c:207: DrawText(1, 16, "STOP RESISTING!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_21
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00156$:
	C$Bestiary.c$209$1_0$148	= .
	.globl	C$Bestiary.c$209$1_0$148
;src\Bestiary.c:209: else if (index == 6)
	ld	a, (#_index)
	sub	a, #0x06
	jp	NZ,00153$
	C$Bestiary.c$211$2_0$162	= .
	.globl	C$Bestiary.c$211$2_0$162
;src\Bestiary.c:211: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$212$2_0$162	= .
	.globl	C$Bestiary.c$212$2_0$162
;src\Bestiary.c:212: set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
	ld	de, #_Sheriff_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$213$2_0$162	= .
	.globl	C$Bestiary.c$213$2_0$162
;src\Bestiary.c:213: DrawNumber(4, 0, 6, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0006
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$215$2_0$162	= .
	.globl	C$Bestiary.c$215$2_0$162
;src\Bestiary.c:215: DrawNumber(16, 2, 16, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x0010
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$216$2_0$162	= .
	.globl	C$Bestiary.c$216$2_0$162
;src\Bestiary.c:216: DrawNumber(16, 4, 10, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x000a
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$217$2_0$162	= .
	.globl	C$Bestiary.c$217$2_0$162
;src\Bestiary.c:217: DrawNumber(17, 6, 6, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0006
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$218$2_0$162	= .
	.globl	C$Bestiary.c$218$2_0$162
;src\Bestiary.c:218: DrawNumber(17, 8, 8, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0008
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$219$2_0$162	= .
	.globl	C$Bestiary.c$219$2_0$162
;src\Bestiary.c:219: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0016
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$220$2_0$162	= .
	.globl	C$Bestiary.c$220$2_0$162
;src\Bestiary.c:220: DrawText(1, 13, "THE SHERIFF IS", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_22
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$221$2_0$162	= .
	.globl	C$Bestiary.c$221$2_0$162
;src\Bestiary.c:221: DrawText(1, 14, "CALLED IN DUE", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_23
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$222$2_0$162	= .
	.globl	C$Bestiary.c$222$2_0$162
;src\Bestiary.c:222: DrawText(1, 15, "POLICE NEGLIGENCE", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_24
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00153$:
	C$Bestiary.c$224$1_0$148	= .
	.globl	C$Bestiary.c$224$1_0$148
;src\Bestiary.c:224: else if (index == 7)
	ld	a, (#_index)
	sub	a, #0x07
	jp	NZ,00150$
	C$Bestiary.c$226$2_0$163	= .
	.globl	C$Bestiary.c$226$2_0$163
;src\Bestiary.c:226: set_bkg_data(128, 39, Cop_Tiles);
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$227$2_0$163	= .
	.globl	C$Bestiary.c$227$2_0$163
;src\Bestiary.c:227: set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
	ld	de, #_Chief_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$228$2_0$163	= .
	.globl	C$Bestiary.c$228$2_0$163
;src\Bestiary.c:228: DrawNumber(4, 0, 7, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0007
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$230$2_0$163	= .
	.globl	C$Bestiary.c$230$2_0$163
;src\Bestiary.c:230: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$231$2_0$163	= .
	.globl	C$Bestiary.c$231$2_0$163
;src\Bestiary.c:231: DrawNumber(16, 4, 20, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x0014
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$232$2_0$163	= .
	.globl	C$Bestiary.c$232$2_0$163
;src\Bestiary.c:232: DrawNumber(17, 6, 10, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x000a
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$233$2_0$163	= .
	.globl	C$Bestiary.c$233$2_0$163
;src\Bestiary.c:233: DrawNumber(17, 8, 10, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x000a
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$234$2_0$163	= .
	.globl	C$Bestiary.c$234$2_0$163
;src\Bestiary.c:234: DrawNumber(16, 10, 55, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0037
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$235$2_0$163	= .
	.globl	C$Bestiary.c$235$2_0$163
;src\Bestiary.c:235: DrawText(1, 13, "CHIEF! CHIEF!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_25
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$236$2_0$163	= .
	.globl	C$Bestiary.c$236$2_0$163
;src\Bestiary.c:236: DrawText(1, 14, "YOU GOT TO HELP!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_26
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$237$2_0$163	= .
	.globl	C$Bestiary.c$237$2_0$163
;src\Bestiary.c:237: DrawText(1, 15, "WHY MUST I DO", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_27
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$238$2_0$163	= .
	.globl	C$Bestiary.c$238$2_0$163
;src\Bestiary.c:238: DrawText(1, 16, "EVERYTHING HERE?", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_28
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00150$:
	C$Bestiary.c$240$1_0$148	= .
	.globl	C$Bestiary.c$240$1_0$148
;src\Bestiary.c:240: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jp	NZ,00147$
	C$Bestiary.c$242$2_0$164	= .
	.globl	C$Bestiary.c$242$2_0$164
;src\Bestiary.c:242: set_bkg_data(128, 30, Man_Tiles);
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$243$2_0$164	= .
	.globl	C$Bestiary.c$243$2_0$164
;src\Bestiary.c:243: set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
	ld	de, #_Man_Map
	push	de
	ld	hl, #0x606
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$244$2_0$164	= .
	.globl	C$Bestiary.c$244$2_0$164
;src\Bestiary.c:244: DrawNumber(4, 0, 8, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0008
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$246$2_0$164	= .
	.globl	C$Bestiary.c$246$2_0$164
;src\Bestiary.c:246: DrawNumber(17, 2, 0, 1, TRUE);    // ATTACK
	ld	hl, #0x101
	push	hl
	ld	de, #0x0000
	push	de
	ld	e, #0x02
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$247$2_0$164	= .
	.globl	C$Bestiary.c$247$2_0$164
;src\Bestiary.c:247: DrawNumber(15, 4, 255, 3, TRUE);    // DEFENSE
	ld	hl, #0x103
	push	hl
	ld	de, #0x00ff
	push	de
	ld	e, #0x04
	ld	a, #0x0f
	call	_DrawNumber
	C$Bestiary.c$248$2_0$164	= .
	.globl	C$Bestiary.c$248$2_0$164
;src\Bestiary.c:248: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
	ld	hl, #0x101
	push	hl
	ld	de, #0x0001
	push	de
	ld	e, #0x06
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$249$2_0$164	= .
	.globl	C$Bestiary.c$249$2_0$164
;src\Bestiary.c:249: DrawNumber(17, 8, 1, 1, TRUE);    // SPEED
	ld	hl, #0x101
	push	hl
	ld	de, #0x0001
	push	de
	ld	e, #0x08
	ld	a, #0x11
	call	_DrawNumber
	C$Bestiary.c$250$2_0$164	= .
	.globl	C$Bestiary.c$250$2_0$164
;src\Bestiary.c:250: DrawNumber(16, 10, 1, 1, TRUE);   // EXP.
	ld	hl, #0x101
	push	hl
	ld	de, #0x0001
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$251$2_0$164	= .
	.globl	C$Bestiary.c$251$2_0$164
;src\Bestiary.c:251: DrawText(1, 13, "HE'S BUILT", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_29
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$252$2_0$164	= .
	.globl	C$Bestiary.c$252$2_0$164
;src\Bestiary.c:252: DrawText(1, 14, "LIKE A BRICK", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_30
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$253$2_0$164	= .
	.globl	C$Bestiary.c$253$2_0$164
;src\Bestiary.c:253: DrawText(1, 15, "HOUSE!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_31
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00147$:
	C$Bestiary.c$255$1_0$148	= .
	.globl	C$Bestiary.c$255$1_0$148
;src\Bestiary.c:255: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00144$
	C$Bestiary.c$257$2_0$165	= .
	.globl	C$Bestiary.c$257$2_0$165
;src\Bestiary.c:257: set_bkg_data(128, 26, Car_Tiles);
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$258$2_0$165	= .
	.globl	C$Bestiary.c$258$2_0$165
;src\Bestiary.c:258: set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
	ld	de, #_Car_Map
	push	de
	ld	hl, #0x506
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$259$2_0$165	= .
	.globl	C$Bestiary.c$259$2_0$165
;src\Bestiary.c:259: DrawNumber(4, 0, 9, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x0009
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$261$2_0$165	= .
	.globl	C$Bestiary.c$261$2_0$165
;src\Bestiary.c:261: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x001e
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$262$2_0$165	= .
	.globl	C$Bestiary.c$262$2_0$165
;src\Bestiary.c:262: DrawNumber(16, 4, 25, 3, TRUE);    // DEFENSE
	ld	hl, #0x103
	push	hl
	ld	de, #0x0019
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$263$2_0$165	= .
	.globl	C$Bestiary.c$263$2_0$165
;src\Bestiary.c:263: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
	ld	hl, #0x102
	push	hl
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$264$2_0$165	= .
	.globl	C$Bestiary.c$264$2_0$165
;src\Bestiary.c:264: DrawNumber(16, 8, 40, 2, TRUE);    // SPEED
	ld	hl, #0x102
	push	hl
	ld	de, #0x0028
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$265$2_0$165	= .
	.globl	C$Bestiary.c$265$2_0$165
;src\Bestiary.c:265: DrawNumber(16, 10, 66, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0042
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	jp	00172$
00144$:
	C$Bestiary.c$267$1_0$148	= .
	.globl	C$Bestiary.c$267$1_0$148
;src\Bestiary.c:267: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00141$
	C$Bestiary.c$269$2_0$166	= .
	.globl	C$Bestiary.c$269$2_0$166
;src\Bestiary.c:269: set_bkg_data(128, 46, Semi_Tiles);
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$270$2_0$166	= .
	.globl	C$Bestiary.c$270$2_0$166
;src\Bestiary.c:270: set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
	ld	de, #_Semi_Map
	push	de
	ld	hl, #0x806
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$271$2_0$166	= .
	.globl	C$Bestiary.c$271$2_0$166
;src\Bestiary.c:271: DrawNumber(4, 0, 10, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x000a
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$273$2_0$166	= .
	.globl	C$Bestiary.c$273$2_0$166
;src\Bestiary.c:273: DrawNumber(16, 2, 66, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x0042
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$274$2_0$166	= .
	.globl	C$Bestiary.c$274$2_0$166
;src\Bestiary.c:274: DrawNumber(16, 4, 66, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x0042
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$275$2_0$166	= .
	.globl	C$Bestiary.c$275$2_0$166
;src\Bestiary.c:275: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
	ld	hl, #0x102
	push	hl
	ld	de, #0x000f
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$276$2_0$166	= .
	.globl	C$Bestiary.c$276$2_0$166
;src\Bestiary.c:276: DrawNumber(16, 8, 35, 2, TRUE);    // SPEED
	ld	hl, #0x102
	push	hl
	ld	de, #0x0023
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$277$2_0$166	= .
	.globl	C$Bestiary.c$277$2_0$166
;src\Bestiary.c:277: DrawNumber(15, 10, 100, 3, TRUE);   // EXP.
	ld	hl, #0x103
	push	hl
	ld	de, #0x0064
	push	de
	ld	e, #0x0a
	ld	a, #0x0f
	call	_DrawNumber
	jp	00172$
00141$:
	C$Bestiary.c$279$1_0$148	= .
	.globl	C$Bestiary.c$279$1_0$148
;src\Bestiary.c:279: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jp	NZ,00138$
	C$Bestiary.c$281$2_0$167	= .
	.globl	C$Bestiary.c$281$2_0$167
;src\Bestiary.c:281: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$282$2_0$167	= .
	.globl	C$Bestiary.c$282$2_0$167
;src\Bestiary.c:282: set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
	ld	de, #_BigSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$283$2_0$167	= .
	.globl	C$Bestiary.c$283$2_0$167
;src\Bestiary.c:283: DrawNumber(4, 0, 11, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x000b
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$285$2_0$167	= .
	.globl	C$Bestiary.c$285$2_0$167
;src\Bestiary.c:285: DrawNumber(16, 2, 26, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x001a
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$286$2_0$167	= .
	.globl	C$Bestiary.c$286$2_0$167
;src\Bestiary.c:286: DrawNumber(16, 4, 14, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x000e
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$287$2_0$167	= .
	.globl	C$Bestiary.c$287$2_0$167
;src\Bestiary.c:287: DrawNumber(16, 6, 20, 2, TRUE);    // SPECIAL
	ld	hl, #0x102
	push	hl
	ld	de, #0x0014
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$288$2_0$167	= .
	.globl	C$Bestiary.c$288$2_0$167
;src\Bestiary.c:288: DrawNumber(16, 8, 20, 2, TRUE);    // SPEED
	ld	hl, #0x102
	push	hl
	ld	de, #0x0014
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$289$2_0$167	= .
	.globl	C$Bestiary.c$289$2_0$167
;src\Bestiary.c:289: DrawNumber(16, 10, 38, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x0026
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$290$2_0$167	= .
	.globl	C$Bestiary.c$290$2_0$167
;src\Bestiary.c:290: DrawText(1, 13, "AROUND HERE,", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_32
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$291$2_0$167	= .
	.globl	C$Bestiary.c$291$2_0$167
;src\Bestiary.c:291: DrawText(1, 14, "SHE'S KNOWN ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_33
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$292$2_0$167	= .
	.globl	C$Bestiary.c$292$2_0$167
;src\Bestiary.c:292: DrawText(1, 15, "AS BIG SIS!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_34
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00138$:
	C$Bestiary.c$294$1_0$148	= .
	.globl	C$Bestiary.c$294$1_0$148
;src\Bestiary.c:294: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jp	NZ,00135$
	C$Bestiary.c$296$2_0$168	= .
	.globl	C$Bestiary.c$296$2_0$168
;src\Bestiary.c:296: set_bkg_data(128, 31, Sis_Tiles);
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$297$2_0$168	= .
	.globl	C$Bestiary.c$297$2_0$168
;src\Bestiary.c:297: set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
	ld	de, #_MadSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$298$2_0$168	= .
	.globl	C$Bestiary.c$298$2_0$168
;src\Bestiary.c:298: DrawNumber(4, 0, 12, 3, TRUE);     // ID
	ld	hl, #0x103
	push	hl
	ld	de, #0x000c
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$300$2_0$168	= .
	.globl	C$Bestiary.c$300$2_0$168
;src\Bestiary.c:300: DrawNumber(16, 2, 36, 2, TRUE);    // ATTACK
	ld	hl, #0x102
	push	hl
	ld	de, #0x0024
	push	de
	ld	e, #0x02
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$301$2_0$168	= .
	.globl	C$Bestiary.c$301$2_0$168
;src\Bestiary.c:301: DrawNumber(16, 4, 24, 2, TRUE);    // DEFENSE
	ld	hl, #0x102
	push	hl
	ld	de, #0x0018
	push	de
	ld	e, #0x04
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$302$2_0$168	= .
	.globl	C$Bestiary.c$302$2_0$168
;src\Bestiary.c:302: DrawNumber(16, 6, 30, 2, TRUE);    // SPECIAL
	ld	hl, #0x102
	push	hl
	ld	de, #0x001e
	push	de
	ld	e, #0x06
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$303$2_0$168	= .
	.globl	C$Bestiary.c$303$2_0$168
;src\Bestiary.c:303: DrawNumber(16, 8, 30, 2, TRUE);    // SPEED
	ld	hl, #0x102
	push	hl
	ld	de, #0x001e
	push	de
	ld	e, #0x08
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$304$2_0$168	= .
	.globl	C$Bestiary.c$304$2_0$168
;src\Bestiary.c:304: DrawNumber(16, 10, 58, 2, TRUE);   // EXP.
	ld	hl, #0x102
	push	hl
	ld	de, #0x003a
	push	de
	ld	e, #0x0a
	ld	a, #0x10
	call	_DrawNumber
	C$Bestiary.c$305$2_0$168	= .
	.globl	C$Bestiary.c$305$2_0$168
;src\Bestiary.c:305: DrawText(1, 13, "SHE REMEMBERS", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_35
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$306$2_0$168	= .
	.globl	C$Bestiary.c$306$2_0$168
;src\Bestiary.c:306: DrawText(1, 14, "YOUR LAST ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_36
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$307$2_0$168	= .
	.globl	C$Bestiary.c$307$2_0$168
;src\Bestiary.c:307: DrawText(1, 15, "FIGHT.    ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_37
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00135$:
	C$Bestiary.c$309$1_0$148	= .
	.globl	C$Bestiary.c$309$1_0$148
;src\Bestiary.c:309: else if (index == 13)
	ld	a, (#_index)
	sub	a, #0x0d
	jr	NZ, 00132$
	C$Bestiary.c$311$2_0$169	= .
	.globl	C$Bestiary.c$311$2_0$169
;src\Bestiary.c:311: set_bkg_data(128, 29, Experiment_Tiles);
	ld	de, #_Experiment_Tiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$312$2_0$169	= .
	.globl	C$Bestiary.c$312$2_0$169
;src\Bestiary.c:312: set_bkg_tiles(2, 4, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
	ld	de, #_Experiment_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$313$2_0$169	= .
	.globl	C$Bestiary.c$313$2_0$169
;src\Bestiary.c:313: DrawNumber(4, 0, 13, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x000d
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$314$2_0$169	= .
	.globl	C$Bestiary.c$314$2_0$169
;src\Bestiary.c:314: DrawText(1, 13, "ONE OF YAKUB'S", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_38
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$315$2_0$169	= .
	.globl	C$Bestiary.c$315$2_0$169
;src\Bestiary.c:315: DrawText(1, 14, "EXPERIMENTS!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_39
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$316$2_0$169	= .
	.globl	C$Bestiary.c$316$2_0$169
;src\Bestiary.c:316: DrawText(1, 15, "MAKES YOU ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_40
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$317$2_0$169	= .
	.globl	C$Bestiary.c$317$2_0$169
;src\Bestiary.c:317: DrawText(1, 16, "THINK, HUH? ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_41
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00132$:
	C$Bestiary.c$319$1_0$148	= .
	.globl	C$Bestiary.c$319$1_0$148
;src\Bestiary.c:319: else if (index == 14)
	ld	a, (#_index)
	sub	a, #0x0e
	jr	NZ, 00129$
	C$Bestiary.c$321$2_0$170	= .
	.globl	C$Bestiary.c$321$2_0$170
;src\Bestiary.c:321: set_bkg_data(128, 19, Ghost_Tiles);
	ld	de, #_Ghost_Tiles
	push	de
	ld	hl, #0x1380
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$322$2_0$170	= .
	.globl	C$Bestiary.c$322$2_0$170
;src\Bestiary.c:322: set_bkg_tiles(2, 4, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x504
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$323$2_0$170	= .
	.globl	C$Bestiary.c$323$2_0$170
;src\Bestiary.c:323: DrawNumber(4, 0, 14, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x000e
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$324$2_0$170	= .
	.globl	C$Bestiary.c$324$2_0$170
;src\Bestiary.c:324: DrawText(1, 13, "AHH! A GHOST!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_42
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$325$2_0$170	= .
	.globl	C$Bestiary.c$325$2_0$170
;src\Bestiary.c:325: DrawText(1, 14, "WHO IS UNDER", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_43
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$326$2_0$170	= .
	.globl	C$Bestiary.c$326$2_0$170
;src\Bestiary.c:326: DrawText(1, 15, "THAT SHEET? ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_44
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00129$:
	C$Bestiary.c$328$1_0$148	= .
	.globl	C$Bestiary.c$328$1_0$148
;src\Bestiary.c:328: else if (index == 15)
	ld	a, (#_index)
	sub	a, #0x0f
	jr	NZ, 00126$
	C$Bestiary.c$330$2_0$171	= .
	.globl	C$Bestiary.c$330$2_0$171
;src\Bestiary.c:330: set_bkg_data(128, 14, Saucer_Tiles);
	ld	de, #_Saucer_Tiles
	push	de
	ld	hl, #0xe80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$331$2_0$171	= .
	.globl	C$Bestiary.c$331$2_0$171
;src\Bestiary.c:331: set_bkg_tiles(2, 4, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x305
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$332$2_0$171	= .
	.globl	C$Bestiary.c$332$2_0$171
;src\Bestiary.c:332: DrawNumber(4, 0, 15, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x000f
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$333$2_0$171	= .
	.globl	C$Bestiary.c$333$2_0$171
;src\Bestiary.c:333: DrawText(1, 13, "LOOK! A UFO!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_45
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$334$2_0$171	= .
	.globl	C$Bestiary.c$334$2_0$171
;src\Bestiary.c:334: DrawText(1, 14, "A FLYING", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_46
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$335$2_0$171	= .
	.globl	C$Bestiary.c$335$2_0$171
;src\Bestiary.c:335: DrawText(1, 15, "SAUCER?!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_47
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00126$:
	C$Bestiary.c$337$1_0$148	= .
	.globl	C$Bestiary.c$337$1_0$148
;src\Bestiary.c:337: else if (index == 16)
	ld	a, (#_index)
	sub	a, #0x10
	jr	NZ, 00123$
	C$Bestiary.c$339$2_0$172	= .
	.globl	C$Bestiary.c$339$2_0$172
;src\Bestiary.c:339: set_bkg_data(128, 20, SockHead_Tiles);
	ld	de, #_SockHead_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$340$2_0$172	= .
	.globl	C$Bestiary.c$340$2_0$172
;src\Bestiary.c:340: set_bkg_tiles(2, 4, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
	ld	de, #_SockHead_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$341$2_0$172	= .
	.globl	C$Bestiary.c$341$2_0$172
;src\Bestiary.c:341: DrawNumber(4, 0, 16, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x0010
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$342$2_0$172	= .
	.globl	C$Bestiary.c$342$2_0$172
;src\Bestiary.c:342: DrawText(1, 13, "SOCK HEADS", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_48
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$343$2_0$172	= .
	.globl	C$Bestiary.c$343$2_0$172
;src\Bestiary.c:343: DrawText(1, 14, "DON'T THINK", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_49
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$344$2_0$172	= .
	.globl	C$Bestiary.c$344$2_0$172
;src\Bestiary.c:344: DrawText(1, 15, "ABOUT THE", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_50
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$345$2_0$172	= .
	.globl	C$Bestiary.c$345$2_0$172
;src\Bestiary.c:345: DrawText(1, 16, "FUTURE.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_51
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jp	00172$
00123$:
	C$Bestiary.c$347$1_0$148	= .
	.globl	C$Bestiary.c$347$1_0$148
;src\Bestiary.c:347: else if (index == 17)
	ld	a, (#_index)
	sub	a, #0x11
	jr	NZ, 00120$
	C$Bestiary.c$349$2_0$173	= .
	.globl	C$Bestiary.c$349$2_0$173
;src\Bestiary.c:349: set_bkg_data(128, 26, Toby_Tiles);
	ld	de, #_Toby_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$350$2_0$173	= .
	.globl	C$Bestiary.c$350$2_0$173
;src\Bestiary.c:350: set_bkg_tiles(2, 4, Toby_MapWidth, Toby_MapHeight, Toby_Map);
	ld	de, #_Toby_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$351$2_0$173	= .
	.globl	C$Bestiary.c$351$2_0$173
;src\Bestiary.c:351: DrawNumber(4, 0, 17, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x0011
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$352$2_0$173	= .
	.globl	C$Bestiary.c$352$2_0$173
;src\Bestiary.c:352: DrawText(1, 13, "FOX LOVES TO SAY", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_52
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$353$2_0$173	= .
	.globl	C$Bestiary.c$353$2_0$173
;src\Bestiary.c:353: DrawText(1, 14, "FLOAT LIKE A ", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_53
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$354$2_0$173	= .
	.globl	C$Bestiary.c$354$2_0$173
;src\Bestiary.c:354: DrawText(1, 15, "BUTTERFLY, STING", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_54
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$355$2_0$173	= .
	.globl	C$Bestiary.c$355$2_0$173
;src\Bestiary.c:355: DrawText(1, 16, "LIKE A BEE!", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_55
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
	jr	00172$
00120$:
	C$Bestiary.c$357$1_0$148	= .
	.globl	C$Bestiary.c$357$1_0$148
;src\Bestiary.c:357: else if (index == 18)
	ld	a, (#_index)
	sub	a, #0x12
	jr	NZ, 00172$
	C$Bestiary.c$359$2_0$174	= .
	.globl	C$Bestiary.c$359$2_0$174
;src\Bestiary.c:359: set_bkg_data(128, 24, Drunk_Tiles);
	ld	de, #_Drunk_Tiles
	push	de
	ld	hl, #0x1880
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Bestiary.c$360$2_0$174	= .
	.globl	C$Bestiary.c$360$2_0$174
;src\Bestiary.c:360: set_bkg_tiles(2, 4, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
	ld	de, #_Drunk_Map
	push	de
	ld	hl, #0x604
	push	hl
	ld	hl, #0x402
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$Bestiary.c$361$2_0$174	= .
	.globl	C$Bestiary.c$361$2_0$174
;src\Bestiary.c:361: DrawNumber(4, 0, 18, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x0012
	push	de
	ld	e, #0x00
	ld	a, #0x04
	call	_DrawNumber
	C$Bestiary.c$362$2_0$174	= .
	.globl	C$Bestiary.c$362$2_0$174
;src\Bestiary.c:362: DrawText(1, 13, "DRUNK STUMBLES.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_56
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$363$2_0$174	= .
	.globl	C$Bestiary.c$363$2_0$174
;src\Bestiary.c:363: DrawText(1, 14, "HE HITS HARD.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_57
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$364$2_0$174	= .
	.globl	C$Bestiary.c$364$2_0$174
;src\Bestiary.c:364: DrawText(1, 15, "AND YELLS A LOT.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_58
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawText
	C$Bestiary.c$365$2_0$174	= .
	.globl	C$Bestiary.c$365$2_0$174
;src\Bestiary.c:365: DrawText(1, 16, "NOT FUN TO BE NEAR.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_59
	push	de
	ld	e, #0x10
	ld	a, #0x01
	call	_DrawText
00172$:
	C$Bestiary.c$367$1_0$148	= .
	.globl	C$Bestiary.c$367$1_0$148
;src\Bestiary.c:367: return BESTIARY;
	ld	a, #0x04
	C$Bestiary.c$368$1_0$148	= .
	.globl	C$Bestiary.c$368$1_0$148
;src\Bestiary.c:368: }
	C$Bestiary.c$368$1_0$148	= .
	.globl	C$Bestiary.c$368$1_0$148
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
	.area _CODE_5
	.area _INITIALIZER
FBestiary$__xinit_invert$0_0$0 == .
__xinit__invert:
	.db #0x00	; 0
	.area _CABS (ABS)
