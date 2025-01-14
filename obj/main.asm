;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _BattleUpdate
	.globl b_BattleSetup
	.globl _BattleSetup
	.globl b_BestiaryUpdate
	.globl _BestiaryUpdate
	.globl b_BestiarySetup
	.globl _BestiarySetup
	.globl b_GameJohnDoeUpdate
	.globl _GameJohnDoeUpdate
	.globl b_GameJohnDoeSetup
	.globl _GameJohnDoeSetup
	.globl b_CoreGameLoopUpdate
	.globl _CoreGameLoopUpdate
	.globl b_CoreGameLoopSetup
	.globl _CoreGameLoopSetup
	.globl _GameTitleUpdate
	.globl _GameTitleSetup
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
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$9$0_0$149	= .
	.globl	C$main.c$9$0_0$149
;src\main.c:9: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	dec	sp
	C$main.c$11$2_0$149	= .
	.globl	C$main.c$11$2_0$149
;src\main.c:11: uint8_t currentGameState = GAMEFIRSTLOAD;
	ldhl	sp,	#0
	ld	(hl), #0x00
	C$main.c$12$2_0$149	= .
	.globl	C$main.c$12$2_0$149
;src\main.c:12: uint8_t nextGameState = GAMETITLE;
	ld	b, #0x01
	C$main.c$15$1_0$149	= .
	.globl	C$main.c$15$1_0$149
;src\main.c:15: while(1) { 
00118$:
	C$main.c$19$2_0$150	= .
	.globl	C$main.c$19$2_0$150
;src\main.c:19: if (nextGameState != currentGameState)
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, b
	jr	Z, 00109$
	C$main.c$21$3_0$151	= .
	.globl	C$main.c$21$3_0$151
;src\main.c:21: currentGameState = nextGameState;
	ldhl	sp,	#0
	ld	(hl), b
	C$main.c$22$3_0$151	= .
	.globl	C$main.c$22$3_0$151
;src\main.c:22: switch (currentGameState)
	ld	a, b
	dec	a
	jr	Z, 00101$
	ld	a,b
	cp	a,#0x02
	jr	Z, 00103$
	cp	a,#0x03
	jr	Z, 00102$
	cp	a,#0x04
	jr	Z, 00104$
	sub	a, #0x05
	jr	Z, 00105$
	jr	00109$
	C$main.c$24$4_0$152	= .
	.globl	C$main.c$24$4_0$152
;src\main.c:24: case GAMETITLE:
00101$:
	C$main.c$25$4_0$152	= .
	.globl	C$main.c$25$4_0$152
;src\main.c:25: SWITCH_ROM(BANK(const_bank_ID_title));
	ld	a, #<(___bank_const_bank_ID_title)
	ldh	(__current_bank + 0), a
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_const_bank_ID_title)
	C$main.c$26$4_0$152	= .
	.globl	C$main.c$26$4_0$152
;src\main.c:26: GameTitleSetup();
	push	bc
	call	_GameTitleSetup
	pop	bc
	C$main.c$27$4_0$152	= .
	.globl	C$main.c$27$4_0$152
;src\main.c:27: break;
	jr	00109$
	C$main.c$28$4_0$152	= .
	.globl	C$main.c$28$4_0$152
;src\main.c:28: case GAMEJOHNDOE:
00102$:
	C$main.c$29$4_0$152	= .
	.globl	C$main.c$29$4_0$152
;src\main.c:29: SWITCH_ROM(BANK(const_bank_ID_John));
	ld	a, #<(___bank_const_bank_ID_John)
	ldh	(__current_bank + 0), a
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_const_bank_ID_John)
	C$main.c$30$4_0$152	= .
	.globl	C$main.c$30$4_0$152
;src\main.c:30: GameJohnDoeSetup();
	push	bc
	ld	e, #b_GameJohnDoeSetup
	ld	hl, #_GameJohnDoeSetup
	call	___sdcc_bcall_ehl
	pop	bc
	C$main.c$31$4_0$152	= .
	.globl	C$main.c$31$4_0$152
;src\main.c:31: break;
	jr	00109$
	C$main.c$32$4_0$152	= .
	.globl	C$main.c$32$4_0$152
;src\main.c:32: case COREGAMELOOP:
00103$:
	C$main.c$33$4_0$152	= .
	.globl	C$main.c$33$4_0$152
;src\main.c:33: SWITCH_ROM(BANK(const_bank_ID_core));
	ld	a, #<(___bank_const_bank_ID_core)
	ldh	(__current_bank + 0), a
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_const_bank_ID_core)
	C$main.c$34$4_0$152	= .
	.globl	C$main.c$34$4_0$152
;src\main.c:34: CoreGameLoopSetup();
	push	bc
	ld	e, #b_CoreGameLoopSetup
	ld	hl, #_CoreGameLoopSetup
	call	___sdcc_bcall_ehl
	pop	bc
	C$main.c$35$4_0$152	= .
	.globl	C$main.c$35$4_0$152
;src\main.c:35: break;
	jr	00109$
	C$main.c$36$4_0$152	= .
	.globl	C$main.c$36$4_0$152
;src\main.c:36: case BESTIARY:
00104$:
	C$main.c$37$4_0$152	= .
	.globl	C$main.c$37$4_0$152
;src\main.c:37: SWITCH_ROM(BANK(const_bank_ID_bestiary));
	ld	a, #<(___bank_const_bank_ID_bestiary)
	ldh	(__current_bank + 0), a
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_const_bank_ID_bestiary)
	C$main.c$38$4_0$152	= .
	.globl	C$main.c$38$4_0$152
;src\main.c:38: BestiarySetup();
	push	bc
	ld	e, #b_BestiarySetup
	ld	hl, #_BestiarySetup
	call	___sdcc_bcall_ehl
	pop	bc
	C$main.c$39$4_0$152	= .
	.globl	C$main.c$39$4_0$152
;src\main.c:39: break;
	jr	00109$
	C$main.c$40$4_0$152	= .
	.globl	C$main.c$40$4_0$152
;src\main.c:40: case BATTLE:
00105$:
	C$main.c$41$4_0$152	= .
	.globl	C$main.c$41$4_0$152
;src\main.c:41: SWITCH_ROM(BANK(const_bank_ID_battle));
	ld	a, #<(___bank_const_bank_ID_battle)
	ldh	(__current_bank + 0), a
	ld	hl, #_rROMB0
	ld	(hl), #<(___bank_const_bank_ID_battle)
	C$main.c$42$4_0$152	= .
	.globl	C$main.c$42$4_0$152
;src\main.c:42: BattleSetup();
	push	bc
	ld	e, #b_BattleSetup
	ld	hl, #_BattleSetup
	call	___sdcc_bcall_ehl
	pop	bc
	C$main.c$46$2_0$150	= .
	.globl	C$main.c$46$2_0$150
;src\main.c:46: }
00109$:
	C$main.c$48$2_0$150	= .
	.globl	C$main.c$48$2_0$150
;src\main.c:48: switch (currentGameState)
	ldhl	sp,	#0
	ld	a, (hl)
	dec	a
	jr	Z, 00110$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00112$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x03
	jr	Z, 00111$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x04
	jr	Z, 00113$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x05
	jr	Z, 00114$
	jp	00118$
	C$main.c$50$3_0$153	= .
	.globl	C$main.c$50$3_0$153
;src\main.c:50: case GAMETITLE:
00110$:
	C$main.c$51$3_0$153	= .
	.globl	C$main.c$51$3_0$153
;src\main.c:51: nextGameState = GameTitleUpdate();
	call	_GameTitleUpdate
	ld	b, a
	C$main.c$52$3_0$153	= .
	.globl	C$main.c$52$3_0$153
;src\main.c:52: break;
	jp	00118$
	C$main.c$53$3_0$153	= .
	.globl	C$main.c$53$3_0$153
;src\main.c:53: case GAMEJOHNDOE:
00111$:
	C$main.c$54$3_0$153	= .
	.globl	C$main.c$54$3_0$153
;src\main.c:54: nextGameState = GameJohnDoeUpdate();
	ld	e, #b_GameJohnDoeUpdate
	ld	hl, #_GameJohnDoeUpdate
	call	___sdcc_bcall_ehl
	ld	b, a
	C$main.c$55$3_0$153	= .
	.globl	C$main.c$55$3_0$153
;src\main.c:55: break;
	jp	00118$
	C$main.c$56$3_0$153	= .
	.globl	C$main.c$56$3_0$153
;src\main.c:56: case COREGAMELOOP:
00112$:
	C$main.c$57$3_0$153	= .
	.globl	C$main.c$57$3_0$153
;src\main.c:57: nextGameState = CoreGameLoopUpdate();
	ld	e, #b_CoreGameLoopUpdate
	ld	hl, #_CoreGameLoopUpdate
	call	___sdcc_bcall_ehl
	ld	b, a
	C$main.c$58$3_0$153	= .
	.globl	C$main.c$58$3_0$153
;src\main.c:58: break;
	jp	00118$
	C$main.c$59$3_0$153	= .
	.globl	C$main.c$59$3_0$153
;src\main.c:59: case BESTIARY:
00113$:
	C$main.c$60$3_0$153	= .
	.globl	C$main.c$60$3_0$153
;src\main.c:60: nextGameState = BestiaryUpdate();
	ld	e, #b_BestiaryUpdate
	ld	hl, #_BestiaryUpdate
	call	___sdcc_bcall_ehl
	ld	b, a
	C$main.c$61$3_0$153	= .
	.globl	C$main.c$61$3_0$153
;src\main.c:61: break;
	jp	00118$
	C$main.c$62$3_0$153	= .
	.globl	C$main.c$62$3_0$153
;src\main.c:62: case BATTLE:
00114$:
	C$main.c$63$3_0$153	= .
	.globl	C$main.c$63$3_0$153
;src\main.c:63: nextGameState = BattleUpdate();
	call	_BattleUpdate
	ld	b, a
	C$main.c$64$3_0$153	= .
	.globl	C$main.c$64$3_0$153
;src\main.c:64: break;
	jp	00118$
	C$main.c$67$1_0$149	= .
	.globl	C$main.c$67$1_0$149
;src\main.c:67: }
	C$main.c$69$1_0$149	= .
	.globl	C$main.c$69$1_0$149
;src\main.c:69: }
	inc	sp
	C$main.c$69$1_0$149	= .
	.globl	C$main.c$69$1_0$149
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
