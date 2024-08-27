;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Battle
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BattleUpdate
	.globl _BattleSetup
	.globl _InvertColor
	.globl _fadeFromBlack
	.globl _DrawText
	.globl _DrawNumber
	.globl _performantdelay
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _cursor_y
	.globl _cursor_x
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$cursor_x$0_0$0==.
_cursor_x::
	.ds 1
G$cursor_y$0_0$0==.
_cursor_y::
	.ds 1
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
	G$BattleSetup$0$0	= .
	.globl	G$BattleSetup$0$0
	C$Battle.c$42$0_0$107	= .
	.globl	C$Battle.c$42$0_0$107
;src\Battle.c:42: void BattleSetup()
;	---------------------------------
; Function BattleSetup
; ---------------------------------
_BattleSetup::
;C:/gbdk/include/gb/gb.h:1208: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$Battle.c$45$1_0$107	= .
	.globl	C$Battle.c$45$1_0$107
;src\Battle.c:45: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$46$1_0$107	= .
	.globl	C$Battle.c$46$1_0$107
;src\Battle.c:46: set_bkg_tiles(0, 0, Battle_MapWidth, Battle_MapHeight, Battle_Map); // draw background window & text
	ld	de, #_Battle_Map
	push	de
	ld	hl, #0x1714
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Battle.c$48$1_0$107	= .
	.globl	C$Battle.c$48$1_0$107
;src\Battle.c:48: DrawNumber(1, 14, 123456, 6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	de, #0xe240
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$49$1_0$107	= .
	.globl	C$Battle.c$49$1_0$107
;src\Battle.c:49: DrawNumber(8, 14, 110, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x006e
	push	de
	ld	e, #0x0e
	ld	a, #0x08
	call	_DrawNumber
	C$Battle.c$50$1_0$107	= .
	.globl	C$Battle.c$50$1_0$107
;src\Battle.c:50: DrawNumber(13, 14, 70, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0046
	push	de
	ld	e, #0x0e
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$51$1_0$107	= .
	.globl	C$Battle.c$51$1_0$107
;src\Battle.c:51: DrawNumber(17, 14, 11, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x0e
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$53$1_0$107	= .
	.globl	C$Battle.c$53$1_0$107
;src\Battle.c:53: DrawNumber(1, 15, 123456, 6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	de, #0xe240
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$54$1_0$107	= .
	.globl	C$Battle.c$54$1_0$107
;src\Battle.c:54: DrawNumber(9, 15, 80, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0050
	push	de
	ld	e, #0x0f
	ld	a, #0x09
	call	_DrawNumber
	C$Battle.c$55$1_0$107	= .
	.globl	C$Battle.c$55$1_0$107
;src\Battle.c:55: DrawNumber(13, 15, 33, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0021
	push	de
	ld	e, #0x0f
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$56$1_0$107	= .
	.globl	C$Battle.c$56$1_0$107
;src\Battle.c:56: DrawNumber(17, 15, 11, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x0f
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$59$1_0$107	= .
	.globl	C$Battle.c$59$1_0$107
;src\Battle.c:59: cursor_x = 8;
	ld	hl, #_cursor_x
	ld	(hl), #0x08
	C$Battle.c$60$1_0$107	= .
	.globl	C$Battle.c$60$1_0$107
;src\Battle.c:60: cursor_y = 144;
	ld	hl, #_cursor_y
	ld	(hl), #0x90
	C$Battle.c$63$1_0$107	= .
	.globl	C$Battle.c$63$1_0$107
;src\Battle.c:63: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Battle.c$64$1_0$107	= .
	.globl	C$Battle.c$64$1_0$107
;src\Battle.c:64: fadeFromBlack(5);
	ld	a, #0x05
	call	_fadeFromBlack
	C$Battle.c$65$1_0$107	= .
	.globl	C$Battle.c$65$1_0$107
;src\Battle.c:65: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jr	NZ, 00155$
	C$Battle.c$67$2_0$108	= .
	.globl	C$Battle.c$67$2_0$108
;src\Battle.c:67: DrawText(1, 1, "Jim Crow draws");
	ld	de, #___str_0
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$68$2_0$108	= .
	.globl	C$Battle.c$68$2_0$108
;src\Battle.c:68: DrawText(1, 3, "near.");
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$69$2_0$108	= .
	.globl	C$Battle.c$69$2_0$108
;src\Battle.c:69: set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x1780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$70$2_0$108	= .
	.globl	C$Battle.c$70$2_0$108
;src\Battle.c:70: set_bkg_tiles(7, 6, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x607
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00155$:
	C$Battle.c$72$1_0$107	= .
	.globl	C$Battle.c$72$1_0$107
;src\Battle.c:72: else if (index == 1) // GYPSY
	ld	a, (#_index)
	dec	a
	jr	NZ, 00152$
	C$Battle.c$74$2_0$109	= .
	.globl	C$Battle.c$74$2_0$109
;src\Battle.c:74: DrawText(1, 1, "Gypsy Moth draws");
	ld	de, #___str_2
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$75$2_0$109	= .
	.globl	C$Battle.c$75$2_0$109
;src\Battle.c:75: DrawText(1, 3, "near.");
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$76$2_0$109	= .
	.globl	C$Battle.c$76$2_0$109
;src\Battle.c:76: set_bkg_data(128, 29, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$77$2_0$109	= .
	.globl	C$Battle.c$77$2_0$109
;src\Battle.c:77: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00152$:
	C$Battle.c$79$1_0$107	= .
	.globl	C$Battle.c$79$1_0$107
;src\Battle.c:79: else if (index == 2) // WALLY
	ld	a, (#_index)
	sub	a, #0x02
	jr	NZ, 00149$
	C$Battle.c$81$2_0$110	= .
	.globl	C$Battle.c$81$2_0$110
;src\Battle.c:81: DrawText(1, 1, "Wally butts in.");
	ld	de, #___str_3
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$82$2_0$110	= .
	.globl	C$Battle.c$82$2_0$110
;src\Battle.c:82: set_bkg_data(128, 27, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x1b80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$83$2_0$110	= .
	.globl	C$Battle.c$83$2_0$110
;src\Battle.c:83: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
	ld	de, #_Gypsy_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00149$:
	C$Battle.c$85$1_0$107	= .
	.globl	C$Battle.c$85$1_0$107
;src\Battle.c:85: else if (index == 3) // TICK
	ld	a, (#_index)
	sub	a, #0x03
	jr	NZ, 00146$
	C$Battle.c$87$2_0$111	= .
	.globl	C$Battle.c$87$2_0$111
;src\Battle.c:87: DrawText(1, 1, "A tick draws near.");
	ld	de, #___str_4
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$88$2_0$111	= .
	.globl	C$Battle.c$88$2_0$111
;src\Battle.c:88: set_bkg_data(128, 20, Tick_Tiles); 
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$89$2_0$111	= .
	.globl	C$Battle.c$89$2_0$111
;src\Battle.c:89: set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
	ld	de, #_Tick_Map
	push	de
	ld	hl, #0x505
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00146$:
	C$Battle.c$91$1_0$107	= .
	.globl	C$Battle.c$91$1_0$107
;src\Battle.c:91: else if (index == 4) // OFFICER
	ld	a, (#_index)
	sub	a, #0x04
	jr	NZ, 00143$
	C$Battle.c$93$2_0$112	= .
	.globl	C$Battle.c$93$2_0$112
;src\Battle.c:93: DrawText(1, 1, "An Officer draws");
	ld	de, #___str_5
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$94$2_0$112	= .
	.globl	C$Battle.c$94$2_0$112
;src\Battle.c:94: DrawText(1, 3, "near.");
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$95$2_0$112	= .
	.globl	C$Battle.c$95$2_0$112
;src\Battle.c:95: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$96$2_0$112	= .
	.globl	C$Battle.c$96$2_0$112
;src\Battle.c:96: set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
	ld	de, #_Officer_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00143$:
	C$Battle.c$98$1_0$107	= .
	.globl	C$Battle.c$98$1_0$107
;src\Battle.c:98: else if (index == 5) // POLICE
	ld	a, (#_index)
	sub	a, #0x05
	jr	NZ, 00140$
	C$Battle.c$100$2_0$113	= .
	.globl	C$Battle.c$100$2_0$113
;src\Battle.c:100: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$101$2_0$113	= .
	.globl	C$Battle.c$101$2_0$113
;src\Battle.c:101: set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
	ld	de, #_Police_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00140$:
	C$Battle.c$103$1_0$107	= .
	.globl	C$Battle.c$103$1_0$107
;src\Battle.c:103: else if (index == 6) // SHERIFF
	ld	a, (#_index)
	sub	a, #0x06
	jr	NZ, 00137$
	C$Battle.c$105$2_0$114	= .
	.globl	C$Battle.c$105$2_0$114
;src\Battle.c:105: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$106$2_0$114	= .
	.globl	C$Battle.c$106$2_0$114
;src\Battle.c:106: set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
	ld	de, #_Sheriff_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00137$:
	C$Battle.c$108$1_0$107	= .
	.globl	C$Battle.c$108$1_0$107
;src\Battle.c:108: else if (index == 7) // CHIEF
	ld	a, (#_index)
	sub	a, #0x07
	jr	NZ, 00134$
	C$Battle.c$110$2_0$115	= .
	.globl	C$Battle.c$110$2_0$115
;src\Battle.c:110: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$111$2_0$115	= .
	.globl	C$Battle.c$111$2_0$115
;src\Battle.c:111: set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
	ld	de, #_Chief_Map
	push	de
	ld	hl, #0x706
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00134$:
	C$Battle.c$113$1_0$107	= .
	.globl	C$Battle.c$113$1_0$107
;src\Battle.c:113: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jr	NZ, 00131$
	C$Battle.c$115$2_0$116	= .
	.globl	C$Battle.c$115$2_0$116
;src\Battle.c:115: InvertColor();
	call	_InvertColor
	C$Battle.c$116$2_0$116	= .
	.globl	C$Battle.c$116$2_0$116
;src\Battle.c:116: set_bkg_data(128, 30, Man_Tiles); 
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$117$2_0$116	= .
	.globl	C$Battle.c$117$2_0$116
;src\Battle.c:117: set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
	ld	de, #_Man_Map
	push	de
	ld	hl, #0x606
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00131$:
	C$Battle.c$119$1_0$107	= .
	.globl	C$Battle.c$119$1_0$107
;src\Battle.c:119: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00128$
	C$Battle.c$121$2_0$117	= .
	.globl	C$Battle.c$121$2_0$117
;src\Battle.c:121: set_bkg_data(128, 26, Car_Tiles); 
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$122$2_0$117	= .
	.globl	C$Battle.c$122$2_0$117
;src\Battle.c:122: set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
	ld	de, #_Car_Map
	push	de
	ld	hl, #0x506
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00128$:
	C$Battle.c$124$1_0$107	= .
	.globl	C$Battle.c$124$1_0$107
;src\Battle.c:124: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00125$
	C$Battle.c$126$2_0$118	= .
	.globl	C$Battle.c$126$2_0$118
;src\Battle.c:126: set_bkg_data(128, 46, Semi_Tiles); 
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$127$2_0$118	= .
	.globl	C$Battle.c$127$2_0$118
;src\Battle.c:127: set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
	ld	de, #_Semi_Map
	push	de
	ld	hl, #0x806
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00125$:
	C$Battle.c$129$1_0$107	= .
	.globl	C$Battle.c$129$1_0$107
;src\Battle.c:129: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jr	NZ, 00122$
	C$Battle.c$131$2_0$119	= .
	.globl	C$Battle.c$131$2_0$119
;src\Battle.c:131: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$132$2_0$119	= .
	.globl	C$Battle.c$132$2_0$119
;src\Battle.c:132: set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
	ld	de, #_BigSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00122$:
	C$Battle.c$134$1_0$107	= .
	.globl	C$Battle.c$134$1_0$107
;src\Battle.c:134: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jr	NZ, 00119$
	C$Battle.c$136$2_0$120	= .
	.globl	C$Battle.c$136$2_0$120
;src\Battle.c:136: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$137$2_0$120	= .
	.globl	C$Battle.c$137$2_0$120
;src\Battle.c:137: set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
	ld	de, #_MadSis_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00119$:
	C$Battle.c$139$1_0$107	= .
	.globl	C$Battle.c$139$1_0$107
;src\Battle.c:139: else if (index == 13)
	ld	a, (#_index)
	sub	a, #0x0d
	jr	NZ, 00116$
	C$Battle.c$141$2_0$121	= .
	.globl	C$Battle.c$141$2_0$121
;src\Battle.c:141: set_bkg_data(128, 29, Experiment_Tiles);
	ld	de, #_Experiment_Tiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$142$2_0$121	= .
	.globl	C$Battle.c$142$2_0$121
;src\Battle.c:142: set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
	ld	de, #_Experiment_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00116$:
	C$Battle.c$144$1_0$107	= .
	.globl	C$Battle.c$144$1_0$107
;src\Battle.c:144: else if (index == 14)
	ld	a, (#_index)
	sub	a, #0x0e
	jr	NZ, 00113$
	C$Battle.c$146$2_0$122	= .
	.globl	C$Battle.c$146$2_0$122
;src\Battle.c:146: set_bkg_data(128, 19, Ghost_Tiles);
	ld	de, #_Ghost_Tiles
	push	de
	ld	hl, #0x1380
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$147$2_0$122	= .
	.globl	C$Battle.c$147$2_0$122
;src\Battle.c:147: set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x504
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00113$:
	C$Battle.c$149$1_0$107	= .
	.globl	C$Battle.c$149$1_0$107
;src\Battle.c:149: else if (index == 15)
	ld	a, (#_index)
	sub	a, #0x0f
	jr	NZ, 00110$
	C$Battle.c$151$2_0$123	= .
	.globl	C$Battle.c$151$2_0$123
;src\Battle.c:151: set_bkg_data(128, 14, Saucer_Tiles);
	ld	de, #_Saucer_Tiles
	push	de
	ld	hl, #0xe80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$152$2_0$123	= .
	.globl	C$Battle.c$152$2_0$123
;src\Battle.c:152: set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
	ld	de, #_Ghost_Map
	push	de
	ld	hl, #0x305
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jr	00156$
00110$:
	C$Battle.c$154$1_0$107	= .
	.globl	C$Battle.c$154$1_0$107
;src\Battle.c:154: else if (index == 16)
	ld	a, (#_index)
	sub	a, #0x10
	jr	NZ, 00107$
	C$Battle.c$156$2_0$124	= .
	.globl	C$Battle.c$156$2_0$124
;src\Battle.c:156: set_bkg_data(128, 20, SockHead_Tiles);
	ld	de, #_SockHead_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$157$2_0$124	= .
	.globl	C$Battle.c$157$2_0$124
;src\Battle.c:157: set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
	ld	de, #_SockHead_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jr	00156$
00107$:
	C$Battle.c$159$1_0$107	= .
	.globl	C$Battle.c$159$1_0$107
;src\Battle.c:159: else if (index == 17)
	ld	a, (#_index)
	sub	a, #0x11
	jr	NZ, 00104$
	C$Battle.c$161$2_0$125	= .
	.globl	C$Battle.c$161$2_0$125
;src\Battle.c:161: set_bkg_data(128, 26, Toby_Tiles);
	ld	de, #_Toby_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$162$2_0$125	= .
	.globl	C$Battle.c$162$2_0$125
;src\Battle.c:162: set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
	ld	de, #_Toby_Map
	push	de
	ld	hl, #0x704
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jr	00156$
00104$:
	C$Battle.c$164$1_0$107	= .
	.globl	C$Battle.c$164$1_0$107
;src\Battle.c:164: else if (index == 18)
	ld	a, (#_index)
	sub	a, #0x12
	jr	NZ, 00156$
	C$Battle.c$166$2_0$126	= .
	.globl	C$Battle.c$166$2_0$126
;src\Battle.c:166: set_bkg_data(128, 24, Drunk_Tiles);
	ld	de, #_Drunk_Tiles
	push	de
	ld	hl, #0x1880
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$167$2_0$126	= .
	.globl	C$Battle.c$167$2_0$126
;src\Battle.c:167: set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
	ld	de, #_Drunk_Map
	push	de
	ld	hl, #0x604
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
00156$:
	C$Battle.c$169$1_0$107	= .
	.globl	C$Battle.c$169$1_0$107
;src\Battle.c:169: performantdelay(120);
	ld	a, #0x78
	call	_performantdelay
;C:/gbdk/include/gb/gb.h:1222: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG + 0)
	add	a, #0x28
	ldh	(_SCY_REG + 0), a
	C$Battle.c$170$3_0$107	= .
	.globl	C$Battle.c$170$3_0$107
;src\Battle.c:170: scroll_bkg(0, 40);
	C$Battle.c$172$3_0$107	= .
	.globl	C$Battle.c$172$3_0$107
;src\Battle.c:172: }
	C$Battle.c$172$3_0$107	= .
	.globl	C$Battle.c$172$3_0$107
	XG$BattleSetup$0$0	= .
	.globl	XG$BattleSetup$0$0
	ret
FBattle$__str_0$0_0$0 == .
___str_0:
	.ascii "Jim Crow draws"
	.db 0x00
FBattle$__str_1$0_0$0 == .
___str_1:
	.ascii "near."
	.db 0x00
FBattle$__str_2$0_0$0 == .
___str_2:
	.ascii "Gypsy Moth draws"
	.db 0x00
FBattle$__str_3$0_0$0 == .
___str_3:
	.ascii "Wally butts in."
	.db 0x00
FBattle$__str_4$0_0$0 == .
___str_4:
	.ascii "A tick draws near."
	.db 0x00
FBattle$__str_5$0_0$0 == .
___str_5:
	.ascii "An Officer draws"
	.db 0x00
	G$BattleUpdate$0$0	= .
	.globl	G$BattleUpdate$0$0
	C$Battle.c$174$3_0$133	= .
	.globl	C$Battle.c$174$3_0$133
;src\Battle.c:174: uint8_t BattleUpdate()
;	---------------------------------
; Function BattleUpdate
; ---------------------------------
_BattleUpdate::
	C$Battle.c$176$1_0$133	= .
	.globl	C$Battle.c$176$1_0$133
;src\Battle.c:176: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	C$Battle.c$178$2_0$134	= .
	.globl	C$Battle.c$178$2_0$134
;src\Battle.c:178: return GAMETITLE;
	C$Battle.c$182$2_0$135	= .
	.globl	C$Battle.c$182$2_0$135
;src\Battle.c:182: return BATTLE;
	ld	a, #0x01
	ret	NZ
	ld	a, #0x05
	C$Battle.c$184$1_0$133	= .
	.globl	C$Battle.c$184$1_0$133
;src\Battle.c:184: }
	C$Battle.c$184$1_0$133	= .
	.globl	C$Battle.c$184$1_0$133
	XG$BattleUpdate$0$0	= .
	.globl	XG$BattleUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
