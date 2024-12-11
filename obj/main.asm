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
	.globl _BattleSetup
	.globl _BestiaryUpdate
	.globl _BestiarySetup
	.globl _GameJohnDoeUpdate
	.globl _GameJohnDoeSetup
	.globl _CoreGameLoopUpdate
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
	C$main.c$22$3_0$151	= .
	.globl	C$main.c$22$3_0$151
;src\main.c:22: switch (currentGameState)
	ld	a,b
	ld	(hl),a
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
;src\main.c:25: GameTitleSetup();
	push	bc
	call	_GameTitleSetup
	pop	bc
	C$main.c$26$4_0$152	= .
	.globl	C$main.c$26$4_0$152
;src\main.c:26: break;
	jr	00109$
	C$main.c$27$4_0$152	= .
	.globl	C$main.c$27$4_0$152
;src\main.c:27: case GAMEJOHNDOE:
00102$:
	C$main.c$28$4_0$152	= .
	.globl	C$main.c$28$4_0$152
;src\main.c:28: GameJohnDoeSetup();
	push	bc
	call	_GameJohnDoeSetup
	pop	bc
	C$main.c$29$4_0$152	= .
	.globl	C$main.c$29$4_0$152
;src\main.c:29: break;
	jr	00109$
	C$main.c$30$4_0$152	= .
	.globl	C$main.c$30$4_0$152
;src\main.c:30: case COREGAMELOOP:
00103$:
	C$main.c$31$4_0$152	= .
	.globl	C$main.c$31$4_0$152
;src\main.c:31: CoreGameLoopSetup();
	push	bc
	call	_CoreGameLoopSetup
	pop	bc
	C$main.c$32$4_0$152	= .
	.globl	C$main.c$32$4_0$152
;src\main.c:32: break;
	jr	00109$
	C$main.c$33$4_0$152	= .
	.globl	C$main.c$33$4_0$152
;src\main.c:33: case BESTIARY:
00104$:
	C$main.c$34$4_0$152	= .
	.globl	C$main.c$34$4_0$152
;src\main.c:34: BestiarySetup();
	push	bc
	call	_BestiarySetup
	pop	bc
	C$main.c$35$4_0$152	= .
	.globl	C$main.c$35$4_0$152
;src\main.c:35: break;
	jr	00109$
	C$main.c$36$4_0$152	= .
	.globl	C$main.c$36$4_0$152
;src\main.c:36: case BATTLE:
00105$:
	C$main.c$37$4_0$152	= .
	.globl	C$main.c$37$4_0$152
;src\main.c:37: BattleSetup();
	push	bc
	call	_BattleSetup
	pop	bc
	C$main.c$40$2_0$150	= .
	.globl	C$main.c$40$2_0$150
;src\main.c:40: }
00109$:
	C$main.c$47$2_0$150	= .
	.globl	C$main.c$47$2_0$150
;src\main.c:47: switch (currentGameState)
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
	jr	00118$
	C$main.c$49$3_0$153	= .
	.globl	C$main.c$49$3_0$153
;src\main.c:49: case GAMETITLE:
00110$:
	C$main.c$50$3_0$153	= .
	.globl	C$main.c$50$3_0$153
;src\main.c:50: nextGameState = GameTitleUpdate();
	call	_GameTitleUpdate
	ld	b, a
	C$main.c$51$3_0$153	= .
	.globl	C$main.c$51$3_0$153
;src\main.c:51: break;
	jr	00118$
	C$main.c$52$3_0$153	= .
	.globl	C$main.c$52$3_0$153
;src\main.c:52: case GAMEJOHNDOE:
00111$:
	C$main.c$53$3_0$153	= .
	.globl	C$main.c$53$3_0$153
;src\main.c:53: nextGameState = GameJohnDoeUpdate();
	call	_GameJohnDoeUpdate
	ld	b, a
	C$main.c$54$3_0$153	= .
	.globl	C$main.c$54$3_0$153
;src\main.c:54: break;
	jr	00118$
	C$main.c$55$3_0$153	= .
	.globl	C$main.c$55$3_0$153
;src\main.c:55: case COREGAMELOOP:
00112$:
	C$main.c$56$3_0$153	= .
	.globl	C$main.c$56$3_0$153
;src\main.c:56: nextGameState = CoreGameLoopUpdate();
	call	_CoreGameLoopUpdate
	ld	b, a
	C$main.c$57$3_0$153	= .
	.globl	C$main.c$57$3_0$153
;src\main.c:57: break;
	jr	00118$
	C$main.c$58$3_0$153	= .
	.globl	C$main.c$58$3_0$153
;src\main.c:58: case BESTIARY:
00113$:
	C$main.c$59$3_0$153	= .
	.globl	C$main.c$59$3_0$153
;src\main.c:59: nextGameState = BestiaryUpdate();
	call	_BestiaryUpdate
	ld	b, a
	C$main.c$60$3_0$153	= .
	.globl	C$main.c$60$3_0$153
;src\main.c:60: break;
	jr	00118$
	C$main.c$61$3_0$153	= .
	.globl	C$main.c$61$3_0$153
;src\main.c:61: case BATTLE:
00114$:
	C$main.c$62$3_0$153	= .
	.globl	C$main.c$62$3_0$153
;src\main.c:62: nextGameState = BattleUpdate();
	call	_BattleUpdate
	ld	b, a
	C$main.c$63$3_0$153	= .
	.globl	C$main.c$63$3_0$153
;src\main.c:63: break;
	jp	00118$
	C$main.c$66$1_0$149	= .
	.globl	C$main.c$66$1_0$149
;src\main.c:66: }
	C$main.c$73$1_0$149	= .
	.globl	C$main.c$73$1_0$149
;src\main.c:73: }
	inc	sp
	C$main.c$73$1_0$149	= .
	.globl	C$main.c$73$1_0$149
	XG$main$0$0	= .
	.globl	XG$main$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
