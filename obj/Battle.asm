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
	C$Battle.c$42$0_0$105	= .
	.globl	C$Battle.c$42$0_0$105
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
	C$Battle.c$45$1_0$105	= .
	.globl	C$Battle.c$45$1_0$105
;src\Battle.c:45: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$46$1_0$105	= .
	.globl	C$Battle.c$46$1_0$105
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
	C$Battle.c$48$1_0$105	= .
	.globl	C$Battle.c$48$1_0$105
;src\Battle.c:48: DrawNumber(1, 14, 123456, 6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	de, #0xe240
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$49$1_0$105	= .
	.globl	C$Battle.c$49$1_0$105
;src\Battle.c:49: DrawNumber(8, 14, 110, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	de, #0x006e
	push	de
	ld	e, #0x0e
	ld	a, #0x08
	call	_DrawNumber
	C$Battle.c$50$1_0$105	= .
	.globl	C$Battle.c$50$1_0$105
;src\Battle.c:50: DrawNumber(13, 14, 70, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0046
	push	de
	ld	e, #0x0e
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$51$1_0$105	= .
	.globl	C$Battle.c$51$1_0$105
;src\Battle.c:51: DrawNumber(17, 14, 11, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x0e
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$53$1_0$105	= .
	.globl	C$Battle.c$53$1_0$105
;src\Battle.c:53: DrawNumber(1, 15, 123456, 6);
	ld	a, #0x06
	push	af
	inc	sp
	ld	de, #0xe240
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$54$1_0$105	= .
	.globl	C$Battle.c$54$1_0$105
;src\Battle.c:54: DrawNumber(9, 15, 80, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0050
	push	de
	ld	e, #0x0f
	ld	a, #0x09
	call	_DrawNumber
	C$Battle.c$55$1_0$105	= .
	.globl	C$Battle.c$55$1_0$105
;src\Battle.c:55: DrawNumber(13, 15, 33, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x0021
	push	de
	ld	e, #0x0f
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$56$1_0$105	= .
	.globl	C$Battle.c$56$1_0$105
;src\Battle.c:56: DrawNumber(17, 15, 11, 2);
	ld	a, #0x02
	push	af
	inc	sp
	ld	de, #0x000b
	push	de
	ld	e, #0x0f
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$59$1_0$105	= .
	.globl	C$Battle.c$59$1_0$105
;src\Battle.c:59: cursor_x = 8;
	ld	hl, #_cursor_x
	ld	(hl), #0x08
	C$Battle.c$60$1_0$105	= .
	.globl	C$Battle.c$60$1_0$105
;src\Battle.c:60: cursor_y = 144;
	ld	hl, #_cursor_y
	ld	(hl), #0x90
	C$Battle.c$63$1_0$105	= .
	.globl	C$Battle.c$63$1_0$105
;src\Battle.c:63: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Battle.c$64$1_0$105	= .
	.globl	C$Battle.c$64$1_0$105
;src\Battle.c:64: fadeFromBlack(5);
	ld	a, #0x05
	call	_fadeFromBlack
	C$Battle.c$65$1_0$105	= .
	.globl	C$Battle.c$65$1_0$105
;src\Battle.c:65: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jr	NZ, 00155$
	C$Battle.c$67$2_0$106	= .
	.globl	C$Battle.c$67$2_0$106
;src\Battle.c:67: set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x1780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$68$2_0$106	= .
	.globl	C$Battle.c$68$2_0$106
;src\Battle.c:68: set_bkg_tiles(7, 5, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
	ld	de, #_Crow_Map
	push	de
	ld	hl, #0x705
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	jp	00156$
00155$:
	C$Battle.c$70$1_0$105	= .
	.globl	C$Battle.c$70$1_0$105
;src\Battle.c:70: else if (index == 1) // GYPSY
	ld	a, (#_index)
	dec	a
	jr	NZ, 00152$
	C$Battle.c$72$2_0$107	= .
	.globl	C$Battle.c$72$2_0$107
;src\Battle.c:72: set_bkg_data(128, 29, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$73$2_0$107	= .
	.globl	C$Battle.c$73$2_0$107
;src\Battle.c:73: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
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
	C$Battle.c$75$1_0$105	= .
	.globl	C$Battle.c$75$1_0$105
;src\Battle.c:75: else if (index == 2) // WALLY
	ld	a, (#_index)
	sub	a, #0x02
	jr	NZ, 00149$
	C$Battle.c$77$2_0$108	= .
	.globl	C$Battle.c$77$2_0$108
;src\Battle.c:77: set_bkg_data(128, 27, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x1b80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$78$2_0$108	= .
	.globl	C$Battle.c$78$2_0$108
;src\Battle.c:78: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
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
	C$Battle.c$80$1_0$105	= .
	.globl	C$Battle.c$80$1_0$105
;src\Battle.c:80: else if (index == 3) // TICK
	ld	a, (#_index)
	sub	a, #0x03
	jr	NZ, 00146$
	C$Battle.c$82$2_0$109	= .
	.globl	C$Battle.c$82$2_0$109
;src\Battle.c:82: set_bkg_data(128, 20, Tick_Tiles); 
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$83$2_0$109	= .
	.globl	C$Battle.c$83$2_0$109
;src\Battle.c:83: set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
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
	C$Battle.c$85$1_0$105	= .
	.globl	C$Battle.c$85$1_0$105
;src\Battle.c:85: else if (index == 4) // OFFICER
	ld	a, (#_index)
	sub	a, #0x04
	jr	NZ, 00143$
	C$Battle.c$87$2_0$110	= .
	.globl	C$Battle.c$87$2_0$110
;src\Battle.c:87: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$88$2_0$110	= .
	.globl	C$Battle.c$88$2_0$110
;src\Battle.c:88: set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
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
	C$Battle.c$90$1_0$105	= .
	.globl	C$Battle.c$90$1_0$105
;src\Battle.c:90: else if (index == 5) // POLICE
	ld	a, (#_index)
	sub	a, #0x05
	jr	NZ, 00140$
	C$Battle.c$92$2_0$111	= .
	.globl	C$Battle.c$92$2_0$111
;src\Battle.c:92: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$93$2_0$111	= .
	.globl	C$Battle.c$93$2_0$111
;src\Battle.c:93: set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
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
	C$Battle.c$95$1_0$105	= .
	.globl	C$Battle.c$95$1_0$105
;src\Battle.c:95: else if (index == 6) // SHERIFF
	ld	a, (#_index)
	sub	a, #0x06
	jr	NZ, 00137$
	C$Battle.c$97$2_0$112	= .
	.globl	C$Battle.c$97$2_0$112
;src\Battle.c:97: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$98$2_0$112	= .
	.globl	C$Battle.c$98$2_0$112
;src\Battle.c:98: set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
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
	C$Battle.c$100$1_0$105	= .
	.globl	C$Battle.c$100$1_0$105
;src\Battle.c:100: else if (index == 7) // CHIEF
	ld	a, (#_index)
	sub	a, #0x07
	jr	NZ, 00134$
	C$Battle.c$102$2_0$113	= .
	.globl	C$Battle.c$102$2_0$113
;src\Battle.c:102: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$103$2_0$113	= .
	.globl	C$Battle.c$103$2_0$113
;src\Battle.c:103: set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
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
	C$Battle.c$105$1_0$105	= .
	.globl	C$Battle.c$105$1_0$105
;src\Battle.c:105: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jr	NZ, 00131$
	C$Battle.c$107$2_0$114	= .
	.globl	C$Battle.c$107$2_0$114
;src\Battle.c:107: InvertColor();
	call	_InvertColor
	C$Battle.c$108$2_0$114	= .
	.globl	C$Battle.c$108$2_0$114
;src\Battle.c:108: set_bkg_data(128, 30, Man_Tiles); 
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$109$2_0$114	= .
	.globl	C$Battle.c$109$2_0$114
;src\Battle.c:109: set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
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
	C$Battle.c$111$1_0$105	= .
	.globl	C$Battle.c$111$1_0$105
;src\Battle.c:111: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00128$
	C$Battle.c$113$2_0$115	= .
	.globl	C$Battle.c$113$2_0$115
;src\Battle.c:113: set_bkg_data(128, 26, Car_Tiles); 
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$114$2_0$115	= .
	.globl	C$Battle.c$114$2_0$115
;src\Battle.c:114: set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
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
	C$Battle.c$116$1_0$105	= .
	.globl	C$Battle.c$116$1_0$105
;src\Battle.c:116: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00125$
	C$Battle.c$118$2_0$116	= .
	.globl	C$Battle.c$118$2_0$116
;src\Battle.c:118: set_bkg_data(128, 46, Semi_Tiles); 
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$119$2_0$116	= .
	.globl	C$Battle.c$119$2_0$116
;src\Battle.c:119: set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
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
	C$Battle.c$121$1_0$105	= .
	.globl	C$Battle.c$121$1_0$105
;src\Battle.c:121: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jr	NZ, 00122$
	C$Battle.c$123$2_0$117	= .
	.globl	C$Battle.c$123$2_0$117
;src\Battle.c:123: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$124$2_0$117	= .
	.globl	C$Battle.c$124$2_0$117
;src\Battle.c:124: set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
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
	C$Battle.c$126$1_0$105	= .
	.globl	C$Battle.c$126$1_0$105
;src\Battle.c:126: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jr	NZ, 00119$
	C$Battle.c$128$2_0$118	= .
	.globl	C$Battle.c$128$2_0$118
;src\Battle.c:128: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$129$2_0$118	= .
	.globl	C$Battle.c$129$2_0$118
;src\Battle.c:129: set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
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
	C$Battle.c$131$1_0$105	= .
	.globl	C$Battle.c$131$1_0$105
;src\Battle.c:131: else if (index == 13)
	ld	a, (#_index)
	sub	a, #0x0d
	jr	NZ, 00116$
	C$Battle.c$133$2_0$119	= .
	.globl	C$Battle.c$133$2_0$119
;src\Battle.c:133: set_bkg_data(128, 29, Experiment_Tiles);
	ld	de, #_Experiment_Tiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$134$2_0$119	= .
	.globl	C$Battle.c$134$2_0$119
;src\Battle.c:134: set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
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
	C$Battle.c$136$1_0$105	= .
	.globl	C$Battle.c$136$1_0$105
;src\Battle.c:136: else if (index == 14)
	ld	a, (#_index)
	sub	a, #0x0e
	jr	NZ, 00113$
	C$Battle.c$138$2_0$120	= .
	.globl	C$Battle.c$138$2_0$120
;src\Battle.c:138: set_bkg_data(128, 19, Ghost_Tiles);
	ld	de, #_Ghost_Tiles
	push	de
	ld	hl, #0x1380
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$139$2_0$120	= .
	.globl	C$Battle.c$139$2_0$120
;src\Battle.c:139: set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
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
	C$Battle.c$141$1_0$105	= .
	.globl	C$Battle.c$141$1_0$105
;src\Battle.c:141: else if (index == 15)
	ld	a, (#_index)
	sub	a, #0x0f
	jr	NZ, 00110$
	C$Battle.c$143$2_0$121	= .
	.globl	C$Battle.c$143$2_0$121
;src\Battle.c:143: set_bkg_data(128, 14, Saucer_Tiles);
	ld	de, #_Saucer_Tiles
	push	de
	ld	hl, #0xe80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$144$2_0$121	= .
	.globl	C$Battle.c$144$2_0$121
;src\Battle.c:144: set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
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
	C$Battle.c$146$1_0$105	= .
	.globl	C$Battle.c$146$1_0$105
;src\Battle.c:146: else if (index == 16)
	ld	a, (#_index)
	sub	a, #0x10
	jr	NZ, 00107$
	C$Battle.c$148$2_0$122	= .
	.globl	C$Battle.c$148$2_0$122
;src\Battle.c:148: set_bkg_data(128, 20, SockHead_Tiles);
	ld	de, #_SockHead_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$149$2_0$122	= .
	.globl	C$Battle.c$149$2_0$122
;src\Battle.c:149: set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
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
	C$Battle.c$151$1_0$105	= .
	.globl	C$Battle.c$151$1_0$105
;src\Battle.c:151: else if (index == 17)
	ld	a, (#_index)
	sub	a, #0x11
	jr	NZ, 00104$
	C$Battle.c$153$2_0$123	= .
	.globl	C$Battle.c$153$2_0$123
;src\Battle.c:153: set_bkg_data(128, 26, Toby_Tiles);
	ld	de, #_Toby_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$154$2_0$123	= .
	.globl	C$Battle.c$154$2_0$123
;src\Battle.c:154: set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
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
	C$Battle.c$156$1_0$105	= .
	.globl	C$Battle.c$156$1_0$105
;src\Battle.c:156: else if (index == 18)
	ld	a, (#_index)
	sub	a, #0x12
	jr	NZ, 00156$
	C$Battle.c$158$2_0$124	= .
	.globl	C$Battle.c$158$2_0$124
;src\Battle.c:158: set_bkg_data(128, 24, Drunk_Tiles);
	ld	de, #_Drunk_Tiles
	push	de
	ld	hl, #0x1880
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$159$2_0$124	= .
	.globl	C$Battle.c$159$2_0$124
;src\Battle.c:159: set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
	ld	de, #_Drunk_Map
	push	de
	ld	hl, #0x604
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
00156$:
	C$Battle.c$161$1_0$105	= .
	.globl	C$Battle.c$161$1_0$105
;src\Battle.c:161: performantdelay(120);
	ld	a, #0x78
	call	_performantdelay
;C:/gbdk/include/gb/gb.h:1222: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG + 0)
	add	a, #0x28
	ldh	(_SCY_REG + 0), a
	C$Battle.c$162$3_0$105	= .
	.globl	C$Battle.c$162$3_0$105
;src\Battle.c:162: scroll_bkg(0, 40);
	C$Battle.c$163$3_0$105	= .
	.globl	C$Battle.c$163$3_0$105
;src\Battle.c:163: }
	C$Battle.c$163$3_0$105	= .
	.globl	C$Battle.c$163$3_0$105
	XG$BattleSetup$0$0	= .
	.globl	XG$BattleSetup$0$0
	ret
	G$BattleUpdate$0$0	= .
	.globl	G$BattleUpdate$0$0
	C$Battle.c$165$3_0$131	= .
	.globl	C$Battle.c$165$3_0$131
;src\Battle.c:165: uint8_t BattleUpdate()
;	---------------------------------
; Function BattleUpdate
; ---------------------------------
_BattleUpdate::
	C$Battle.c$167$1_0$131	= .
	.globl	C$Battle.c$167$1_0$131
;src\Battle.c:167: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	C$Battle.c$169$2_0$132	= .
	.globl	C$Battle.c$169$2_0$132
;src\Battle.c:169: return GAMETITLE;
	C$Battle.c$172$2_0$133	= .
	.globl	C$Battle.c$172$2_0$133
;src\Battle.c:172: return BATTLE;
	ld	a, #0x01
	ret	NZ
	ld	a, #0x05
	C$Battle.c$174$1_0$131	= .
	.globl	C$Battle.c$174$1_0$131
;src\Battle.c:174: }
	C$Battle.c$174$1_0$131	= .
	.globl	C$Battle.c$174$1_0$131
	XG$BattleUpdate$0$0	= .
	.globl	XG$BattleUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
