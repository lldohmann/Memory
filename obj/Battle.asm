;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Battle
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_BattleUpdate
	.globl _BattleUpdate
	.globl b___func_BattleUpdate
	.globl ___func_BattleUpdate
	.globl b_BattleSetup
	.globl _BattleSetup
	.globl b___func_BattleSetup
	.globl ___func_BattleSetup
	.globl b___func_const_bank_ID_battle
	.globl ___func_const_bank_ID_battle
	.globl _InvertColor
	.globl _fadeFromBlack
	.globl _DrawText
	.globl _DrawNumber
	.globl _performantdelay
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _cursor
	.globl _const_bank_ID_battle
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$cursor$0_0$0==.
_cursor::
	.ds 4
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
	.area _CODE_5
	G$__func_const_bank_ID_battle$0$0	= .
	.globl	G$__func_const_bank_ID_battle$0$0
	C$Battle.c$42$0_0$137	= .
	.globl	C$Battle.c$42$0_0$137
;src\Battle.c:42: BANKREF(const_bank_ID_battle)
;	---------------------------------
; Function __func_const_bank_ID_battle
; ---------------------------------
	b___func_const_bank_ID_battle	= 5
___func_const_bank_ID_battle::
	.local b___func_const_bank_ID_battle 
	___bank_const_bank_ID_battle = b___func_const_bank_ID_battle 
	.globl ___bank_const_bank_ID_battle 
	G$__func_BattleSetup$0$0	= .
	.globl	G$__func_BattleSetup$0$0
	C$Battle.c$55$1_0$139	= .
	.globl	C$Battle.c$55$1_0$139
;src\Battle.c:55: BANKREF(BattleSetup)
;	---------------------------------
; Function __func_BattleSetup
; ---------------------------------
	b___func_BattleSetup	= 5
___func_BattleSetup::
	.local b___func_BattleSetup 
	___bank_BattleSetup = b___func_BattleSetup 
	.globl ___bank_BattleSetup 
	G$BattleSetup$0$0	= .
	.globl	G$BattleSetup$0$0
	C$Battle.c$56$1_0$141	= .
	.globl	C$Battle.c$56$1_0$141
;src\Battle.c:56: void BattleSetup(void) BANKED
;	---------------------------------
; Function BattleSetup
; ---------------------------------
	b_BattleSetup	= 5
_BattleSetup::
;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$Battle.c$59$1_0$141	= .
	.globl	C$Battle.c$59$1_0$141
;src\Battle.c:59: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
	ld	de, #_FontTiles
	push	de
	ld	hl, #0x3500
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$60$1_0$141	= .
	.globl	C$Battle.c$60$1_0$141
;src\Battle.c:60: set_bkg_tiles(0, 0, Battle_MapWidth, Battle_MapHeight, Battle_Map); // draw background window & text
	ld	de, #_Battle_Map
	push	de
	ld	hl, #0x1714
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$Battle.c$62$1_0$141	= .
	.globl	C$Battle.c$62$1_0$141
;src\Battle.c:62: DrawNumber(1, 14, 123456, 6, TRUE);
	ld	hl, #0x106
	push	hl
	ld	de, #0xe240
	push	de
	ld	e, #0x0e
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$63$1_0$141	= .
	.globl	C$Battle.c$63$1_0$141
;src\Battle.c:63: DrawNumber(8, 14, 110, 3, TRUE);
	ld	hl, #0x103
	push	hl
	ld	de, #0x006e
	push	de
	ld	e, #0x0e
	ld	a, #0x08
	call	_DrawNumber
	C$Battle.c$64$1_0$141	= .
	.globl	C$Battle.c$64$1_0$141
;src\Battle.c:64: DrawNumber(13, 14, 70, 2, TRUE);
	ld	hl, #0x102
	push	hl
	ld	de, #0x0046
	push	de
	ld	e, #0x0e
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$65$1_0$141	= .
	.globl	C$Battle.c$65$1_0$141
;src\Battle.c:65: DrawNumber(17, 14, 11, 2, TRUE);
	ld	hl, #0x102
	push	hl
	ld	de, #0x000b
	push	de
	ld	e, #0x0e
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$67$1_0$141	= .
	.globl	C$Battle.c$67$1_0$141
;src\Battle.c:67: DrawNumber(1, 15, 123456, 6, TRUE);
	ld	hl, #0x106
	push	hl
	ld	de, #0xe240
	push	de
	ld	e, #0x0f
	ld	a, #0x01
	call	_DrawNumber
	C$Battle.c$68$1_0$141	= .
	.globl	C$Battle.c$68$1_0$141
;src\Battle.c:68: DrawNumber(9, 15, 80, 2, TRUE);
	ld	hl, #0x102
	push	hl
	ld	de, #0x0050
	push	de
	ld	e, #0x0f
	ld	a, #0x09
	call	_DrawNumber
	C$Battle.c$69$1_0$141	= .
	.globl	C$Battle.c$69$1_0$141
;src\Battle.c:69: DrawNumber(13, 15, 33, 2, TRUE);
	ld	hl, #0x102
	push	hl
	ld	de, #0x0021
	push	de
	ld	e, #0x0f
	ld	a, #0x0d
	call	_DrawNumber
	C$Battle.c$70$1_0$141	= .
	.globl	C$Battle.c$70$1_0$141
;src\Battle.c:70: DrawNumber(17, 15, 11, 2, TRUE);
	ld	hl, #0x102
	push	hl
	ld	de, #0x000b
	push	de
	ld	e, #0x0f
	ld	a, #0x11
	call	_DrawNumber
	C$Battle.c$73$1_0$141	= .
	.globl	C$Battle.c$73$1_0$141
;src\Battle.c:73: cursor.x = 8;
	ld	hl, #_cursor
	ld	(hl), #0x08
	C$Battle.c$74$1_0$141	= .
	.globl	C$Battle.c$74$1_0$141
;src\Battle.c:74: cursor.y = 144;
	ld	bc, #_cursor + 1
	ld	a, #0x90
	ld	(bc), a
;c:\gbdk\include\gb\gb.h:1875: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0xff
;src\Battle.c:76: move_sprite(0, cursor.x, cursor.y);
	ld	a, (bc)
	ld	b, a
	ld	hl, #_cursor
	ld	c, (hl)
;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$Battle.c$79$1_0$141	= .
	.globl	C$Battle.c$79$1_0$141
;src\Battle.c:79: SHOW_BKG; 
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$Battle.c$80$1_0$141	= .
	.globl	C$Battle.c$80$1_0$141
;src\Battle.c:80: fadeFromBlack(5);
	ld	a, #0x05
	call	_fadeFromBlack
	C$Battle.c$81$1_0$141	= .
	.globl	C$Battle.c$81$1_0$141
;src\Battle.c:81: if (index == 0) // JIM
	ld	a, (#_index)
	or	a, a
	jr	NZ, 00155$
	C$Battle.c$83$2_0$142	= .
	.globl	C$Battle.c$83$2_0$142
;src\Battle.c:83: DrawText(1, 1, "Jim Crow draws", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_0
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$84$2_0$142	= .
	.globl	C$Battle.c$84$2_0$142
;src\Battle.c:84: DrawText(1, 3, "near.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$85$2_0$142	= .
	.globl	C$Battle.c$85$2_0$142
;src\Battle.c:85: set_bkg_data(128, 23, Crow_Tiles); // init with crow monster
	ld	de, #_Crow_Tiles
	push	de
	ld	hl, #0x1780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$86$2_0$142	= .
	.globl	C$Battle.c$86$2_0$142
;src\Battle.c:86: set_bkg_tiles(7, 6, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
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
	C$Battle.c$88$1_0$141	= .
	.globl	C$Battle.c$88$1_0$141
;src\Battle.c:88: else if (index == 1) // GYPSY
	ld	a, (#_index)
	dec	a
	jr	NZ, 00152$
	C$Battle.c$90$2_0$143	= .
	.globl	C$Battle.c$90$2_0$143
;src\Battle.c:90: DrawText(1, 1, "Gypsy Moth draws", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_2
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$91$2_0$143	= .
	.globl	C$Battle.c$91$2_0$143
;src\Battle.c:91: DrawText(1, 3, "near.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$92$2_0$143	= .
	.globl	C$Battle.c$92$2_0$143
;src\Battle.c:92: set_bkg_data(128, 29, GypsyTiles); 
	ld	de, #_GypsyTiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$93$2_0$143	= .
	.globl	C$Battle.c$93$2_0$143
;src\Battle.c:93: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
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
	C$Battle.c$95$1_0$141	= .
	.globl	C$Battle.c$95$1_0$141
;src\Battle.c:95: else if (index == 2) // WALLY
	ld	a, (#_index)
	sub	a, #0x02
	jr	NZ, 00149$
	C$Battle.c$97$2_0$144	= .
	.globl	C$Battle.c$97$2_0$144
;src\Battle.c:97: DrawText(1, 1, "Wally butts in.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_3
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$98$2_0$144	= .
	.globl	C$Battle.c$98$2_0$144
;src\Battle.c:98: set_bkg_data(128, 27, WallyTiles); 
	ld	de, #_WallyTiles
	push	de
	ld	hl, #0x1b80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$99$2_0$144	= .
	.globl	C$Battle.c$99$2_0$144
;src\Battle.c:99: set_bkg_tiles(7, 5, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
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
	C$Battle.c$101$1_0$141	= .
	.globl	C$Battle.c$101$1_0$141
;src\Battle.c:101: else if (index == 3) // TICK
	ld	a, (#_index)
	sub	a, #0x03
	jr	NZ, 00146$
	C$Battle.c$103$2_0$145	= .
	.globl	C$Battle.c$103$2_0$145
;src\Battle.c:103: DrawText(1, 1, "A tick draws near.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_4
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$104$2_0$145	= .
	.globl	C$Battle.c$104$2_0$145
;src\Battle.c:104: set_bkg_data(128, 20, Tick_Tiles); 
	ld	de, #_Tick_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$105$2_0$145	= .
	.globl	C$Battle.c$105$2_0$145
;src\Battle.c:105: set_bkg_tiles(7, 5, Tick_MapWidth, Tick_MapHeight, Tick_Map); 
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
	C$Battle.c$107$1_0$141	= .
	.globl	C$Battle.c$107$1_0$141
;src\Battle.c:107: else if (index == 4) // OFFICER
	ld	a, (#_index)
	sub	a, #0x04
	jr	NZ, 00143$
	C$Battle.c$109$2_0$146	= .
	.globl	C$Battle.c$109$2_0$146
;src\Battle.c:109: DrawText(1, 1, "An Officer draws", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_5
	push	de
	ld	a,#0x01
	ld	e,a
	call	_DrawText
	C$Battle.c$110$2_0$146	= .
	.globl	C$Battle.c$110$2_0$146
;src\Battle.c:110: DrawText(1, 3, "near.", TRUE);
	ld	a, #0x01
	push	af
	inc	sp
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_DrawText
	C$Battle.c$111$2_0$146	= .
	.globl	C$Battle.c$111$2_0$146
;src\Battle.c:111: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$112$2_0$146	= .
	.globl	C$Battle.c$112$2_0$146
;src\Battle.c:112: set_bkg_tiles(7, 5, Officer_MapWidth, Officer_MapHeight, Officer_Map); 
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
	C$Battle.c$114$1_0$141	= .
	.globl	C$Battle.c$114$1_0$141
;src\Battle.c:114: else if (index == 5) // POLICE
	ld	a, (#_index)
	sub	a, #0x05
	jr	NZ, 00140$
	C$Battle.c$116$2_0$147	= .
	.globl	C$Battle.c$116$2_0$147
;src\Battle.c:116: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$117$2_0$147	= .
	.globl	C$Battle.c$117$2_0$147
;src\Battle.c:117: set_bkg_tiles(7, 5, Police_MapWidth, Police_MapHeight, Police_Map); 
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
	C$Battle.c$119$1_0$141	= .
	.globl	C$Battle.c$119$1_0$141
;src\Battle.c:119: else if (index == 6) // SHERIFF
	ld	a, (#_index)
	sub	a, #0x06
	jr	NZ, 00137$
	C$Battle.c$121$2_0$148	= .
	.globl	C$Battle.c$121$2_0$148
;src\Battle.c:121: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$122$2_0$148	= .
	.globl	C$Battle.c$122$2_0$148
;src\Battle.c:122: set_bkg_tiles(7, 5, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map); 
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
	C$Battle.c$124$1_0$141	= .
	.globl	C$Battle.c$124$1_0$141
;src\Battle.c:124: else if (index == 7) // CHIEF
	ld	a, (#_index)
	sub	a, #0x07
	jr	NZ, 00134$
	C$Battle.c$126$2_0$149	= .
	.globl	C$Battle.c$126$2_0$149
;src\Battle.c:126: set_bkg_data(128, 39, Cop_Tiles); 
	ld	de, #_Cop_Tiles
	push	de
	ld	hl, #0x2780
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$127$2_0$149	= .
	.globl	C$Battle.c$127$2_0$149
;src\Battle.c:127: set_bkg_tiles(7, 5, Chief_MapWidth, Chief_MapHeight, Chief_Map); 
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
	C$Battle.c$129$1_0$141	= .
	.globl	C$Battle.c$129$1_0$141
;src\Battle.c:129: else if (index == 8)
	ld	a, (#_index)
	sub	a, #0x08
	jr	NZ, 00131$
	C$Battle.c$131$2_0$150	= .
	.globl	C$Battle.c$131$2_0$150
;src\Battle.c:131: InvertColor();
	call	_InvertColor
	C$Battle.c$132$2_0$150	= .
	.globl	C$Battle.c$132$2_0$150
;src\Battle.c:132: set_bkg_data(128, 30, Man_Tiles); 
	ld	de, #_Man_Tiles
	push	de
	ld	hl, #0x1e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$133$2_0$150	= .
	.globl	C$Battle.c$133$2_0$150
;src\Battle.c:133: set_bkg_tiles(7, 5, Man_MapWidth, Man_MapHeight, Man_Map); 
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
	C$Battle.c$135$1_0$141	= .
	.globl	C$Battle.c$135$1_0$141
;src\Battle.c:135: else if (index == 9)
	ld	a, (#_index)
	sub	a, #0x09
	jr	NZ, 00128$
	C$Battle.c$137$2_0$151	= .
	.globl	C$Battle.c$137$2_0$151
;src\Battle.c:137: set_bkg_data(128, 26, Car_Tiles); 
	ld	de, #_Car_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$138$2_0$151	= .
	.globl	C$Battle.c$138$2_0$151
;src\Battle.c:138: set_bkg_tiles(7, 5, Car_MapWidth, Car_MapHeight, Car_Map); 
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
	C$Battle.c$140$1_0$141	= .
	.globl	C$Battle.c$140$1_0$141
;src\Battle.c:140: else if (index == 10)
	ld	a, (#_index)
	sub	a, #0x0a
	jr	NZ, 00125$
	C$Battle.c$142$2_0$152	= .
	.globl	C$Battle.c$142$2_0$152
;src\Battle.c:142: set_bkg_data(128, 46, Semi_Tiles); 
	ld	de, #_Semi_Tiles
	push	de
	ld	hl, #0x2e80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$143$2_0$152	= .
	.globl	C$Battle.c$143$2_0$152
;src\Battle.c:143: set_bkg_tiles(7, 5, Semi_MapWidth, Semi_MapHeight, Semi_Map); 
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
	C$Battle.c$145$1_0$141	= .
	.globl	C$Battle.c$145$1_0$141
;src\Battle.c:145: else if (index == 11)
	ld	a, (#_index)
	sub	a, #0x0b
	jr	NZ, 00122$
	C$Battle.c$147$2_0$153	= .
	.globl	C$Battle.c$147$2_0$153
;src\Battle.c:147: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$148$2_0$153	= .
	.globl	C$Battle.c$148$2_0$153
;src\Battle.c:148: set_bkg_tiles(7, 5, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map); 
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
	C$Battle.c$150$1_0$141	= .
	.globl	C$Battle.c$150$1_0$141
;src\Battle.c:150: else if (index == 12)
	ld	a, (#_index)
	sub	a, #0x0c
	jr	NZ, 00119$
	C$Battle.c$152$2_0$154	= .
	.globl	C$Battle.c$152$2_0$154
;src\Battle.c:152: set_bkg_data(128, 31, Sis_Tiles); 
	ld	de, #_Sis_Tiles
	push	de
	ld	hl, #0x1f80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$153$2_0$154	= .
	.globl	C$Battle.c$153$2_0$154
;src\Battle.c:153: set_bkg_tiles(7, 5, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map); 
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
	C$Battle.c$155$1_0$141	= .
	.globl	C$Battle.c$155$1_0$141
;src\Battle.c:155: else if (index == 13)
	ld	a, (#_index)
	sub	a, #0x0d
	jr	NZ, 00116$
	C$Battle.c$157$2_0$155	= .
	.globl	C$Battle.c$157$2_0$155
;src\Battle.c:157: set_bkg_data(128, 29, Experiment_Tiles);
	ld	de, #_Experiment_Tiles
	push	de
	ld	hl, #0x1d80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$158$2_0$155	= .
	.globl	C$Battle.c$158$2_0$155
;src\Battle.c:158: set_bkg_tiles(7, 5, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
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
	C$Battle.c$160$1_0$141	= .
	.globl	C$Battle.c$160$1_0$141
;src\Battle.c:160: else if (index == 14)
	ld	a, (#_index)
	sub	a, #0x0e
	jr	NZ, 00113$
	C$Battle.c$162$2_0$156	= .
	.globl	C$Battle.c$162$2_0$156
;src\Battle.c:162: set_bkg_data(128, 19, Ghost_Tiles);
	ld	de, #_Ghost_Tiles
	push	de
	ld	hl, #0x1380
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$163$2_0$156	= .
	.globl	C$Battle.c$163$2_0$156
;src\Battle.c:163: set_bkg_tiles(7, 5, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
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
	C$Battle.c$165$1_0$141	= .
	.globl	C$Battle.c$165$1_0$141
;src\Battle.c:165: else if (index == 15)
	ld	a, (#_index)
	sub	a, #0x0f
	jr	NZ, 00110$
	C$Battle.c$167$2_0$157	= .
	.globl	C$Battle.c$167$2_0$157
;src\Battle.c:167: set_bkg_data(128, 14, Saucer_Tiles);
	ld	de, #_Saucer_Tiles
	push	de
	ld	hl, #0xe80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$168$2_0$157	= .
	.globl	C$Battle.c$168$2_0$157
;src\Battle.c:168: set_bkg_tiles(7, 5, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
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
	C$Battle.c$170$1_0$141	= .
	.globl	C$Battle.c$170$1_0$141
;src\Battle.c:170: else if (index == 16)
	ld	a, (#_index)
	sub	a, #0x10
	jr	NZ, 00107$
	C$Battle.c$172$2_0$158	= .
	.globl	C$Battle.c$172$2_0$158
;src\Battle.c:172: set_bkg_data(128, 20, SockHead_Tiles);
	ld	de, #_SockHead_Tiles
	push	de
	ld	hl, #0x1480
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$173$2_0$158	= .
	.globl	C$Battle.c$173$2_0$158
;src\Battle.c:173: set_bkg_tiles(7, 5, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
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
	C$Battle.c$175$1_0$141	= .
	.globl	C$Battle.c$175$1_0$141
;src\Battle.c:175: else if (index == 17)
	ld	a, (#_index)
	sub	a, #0x11
	jr	NZ, 00104$
	C$Battle.c$177$2_0$159	= .
	.globl	C$Battle.c$177$2_0$159
;src\Battle.c:177: set_bkg_data(128, 26, Toby_Tiles);
	ld	de, #_Toby_Tiles
	push	de
	ld	hl, #0x1a80
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$178$2_0$159	= .
	.globl	C$Battle.c$178$2_0$159
;src\Battle.c:178: set_bkg_tiles(7, 5, Toby_MapWidth, Toby_MapHeight, Toby_Map);
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
	C$Battle.c$180$1_0$141	= .
	.globl	C$Battle.c$180$1_0$141
;src\Battle.c:180: else if (index == 18)
	ld	a, (#_index)
	sub	a, #0x12
	jr	NZ, 00156$
	C$Battle.c$182$2_0$160	= .
	.globl	C$Battle.c$182$2_0$160
;src\Battle.c:182: set_bkg_data(128, 24, Drunk_Tiles);
	ld	de, #_Drunk_Tiles
	push	de
	ld	hl, #0x1880
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$Battle.c$183$2_0$160	= .
	.globl	C$Battle.c$183$2_0$160
;src\Battle.c:183: set_bkg_tiles(7, 5, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
	ld	de, #_Drunk_Map
	push	de
	ld	hl, #0x604
	push	hl
	ld	hl, #0x507
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
00156$:
	C$Battle.c$185$1_0$141	= .
	.globl	C$Battle.c$185$1_0$141
;src\Battle.c:185: performantdelay(120);
	ld	a, #0x78
	call	_performantdelay
;c:\gbdk\include\gb\gb.h:1463: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCY_REG + 0)
	add	a, #0x28
	ldh	(_SCY_REG + 0), a
	C$Battle.c$186$3_0$141	= .
	.globl	C$Battle.c$186$3_0$141
;src\Battle.c:186: scroll_bkg(0, 40);
	C$Battle.c$188$3_0$141	= .
	.globl	C$Battle.c$188$3_0$141
;src\Battle.c:188: }
	C$Battle.c$188$3_0$141	= .
	.globl	C$Battle.c$188$3_0$141
	XG$BattleSetup$0$0	= .
	.globl	XG$BattleSetup$0$0
	ret
G$const_bank_ID_battle$0_0$0 == .
_const_bank_ID_battle:
	.db #0x05	; 5
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
	G$__func_BattleUpdate$0$0	= .
	.globl	G$__func_BattleUpdate$0$0
	C$Battle.c$190$3_0$174	= .
	.globl	C$Battle.c$190$3_0$174
;src\Battle.c:190: BANKREF(BattleUpdate)
;	---------------------------------
; Function __func_BattleUpdate
; ---------------------------------
	b___func_BattleUpdate	= 5
___func_BattleUpdate::
	.local b___func_BattleUpdate 
	___bank_BattleUpdate = b___func_BattleUpdate 
	.globl ___bank_BattleUpdate 
	G$BattleUpdate$0$0	= .
	.globl	G$BattleUpdate$0$0
	C$Battle.c$191$1_0$176	= .
	.globl	C$Battle.c$191$1_0$176
;src\Battle.c:191: uint8_t BattleUpdate(void) BANKED
;	---------------------------------
; Function BattleUpdate
; ---------------------------------
	b_BattleUpdate	= 5
_BattleUpdate::
	C$Battle.c$193$1_0$176	= .
	.globl	C$Battle.c$193$1_0$176
;src\Battle.c:193: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	jr	Z, 00106$
	C$Battle.c$195$2_0$177	= .
	.globl	C$Battle.c$195$2_0$177
;src\Battle.c:195: return GAMETITLE;
	ld	a, #0x01
	ret
00106$:
	C$Battle.c$197$1_0$176	= .
	.globl	C$Battle.c$197$1_0$176
;src\Battle.c:197: else if ((joypadCurrent & J_DOWN) && !(joypadCurrent & J_DOWN))
	and	a,#0x08
	jr	Z, 00102$
	or	a, a
	jr	NZ, 00102$
	C$Battle.c$199$2_0$178	= .
	.globl	C$Battle.c$199$2_0$178
;src\Battle.c:199: cursor.x += 0;
	ld	bc, #_cursor+0
	ld	a, (bc)
	ld	(bc), a
	C$Battle.c$200$2_0$178	= .
	.globl	C$Battle.c$200$2_0$178
;src\Battle.c:200: cursor.y += 8;
	ld	hl, #_cursor + 1
	ld	a, (hl)
	add	a, #0x08
	ld	(hl), a
;src\Battle.c:201: move_sprite(0, cursor.x, cursor.y);
	ld	c, (hl)
	ld	hl, #_cursor
	ld	b, (hl)
;c:\gbdk\include\gb\gb.h:1961: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:\gbdk\include\gb\gb.h:1962: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	C$Battle.c$202$2_0$178	= .
	.globl	C$Battle.c$202$2_0$178
;src\Battle.c:202: return BATTLE;
	ld	a, #0x05
	ret
00102$:
	C$Battle.c$206$2_0$179	= .
	.globl	C$Battle.c$206$2_0$179
;src\Battle.c:206: return BATTLE;
	ld	a, #0x05
	C$Battle.c$208$1_0$176	= .
	.globl	C$Battle.c$208$1_0$176
;src\Battle.c:208: }
	C$Battle.c$208$1_0$176	= .
	.globl	C$Battle.c$208$1_0$176
	XG$BattleUpdate$0$0	= .
	.globl	XG$BattleUpdate$0$0
	ret
	.area _CODE_5
	.area _INITIALIZER
	.area _CABS (ABS)
