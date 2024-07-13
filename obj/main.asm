;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
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
	C$main.c$9$0_0$106	= .
	.globl	C$main.c$9$0_0$106
;src\main.c:9: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$11$2_0$106	= .
	.globl	C$main.c$11$2_0$106
;src\main.c:11: uint8_t currentGameState = GAMEFIRSTLOAD;
	C$main.c$12$2_0$106	= .
	.globl	C$main.c$12$2_0$106
;src\main.c:12: uint8_t nextGameState = GAMETITLE;
	ld	bc, #0x100
	C$main.c$15$1_0$106	= .
	.globl	C$main.c$15$1_0$106
;src\main.c:15: while(1) { 
00132$:
	C$main.c$19$2_0$107	= .
	.globl	C$main.c$19$2_0$107
;src\main.c:19: if (nextGameState != currentGameState)
	ld	a, c
	sub	a, b
	jr	Z, 00116$
	C$main.c$21$3_0$108	= .
	.globl	C$main.c$21$3_0$108
;src\main.c:21: currentGameState = nextGameState;
	ld	c, b
	C$main.c$23$3_0$108	= .
	.globl	C$main.c$23$3_0$108
;src\main.c:23: if (currentGameState == GAMETITLE) GameTitleSetup();
	ld	a, b
	dec	a
	jr	NZ, 00113$
	push	bc
	call	_GameTitleSetup
	pop	bc
	jr	00116$
00113$:
	C$main.c$24$3_0$108	= .
	.globl	C$main.c$24$3_0$108
;src\main.c:24: else if (currentGameState == COREGAMELOOP) CoreGameLoopSetup();
	ld	a, b
	sub	a, #0x02
	jr	NZ, 00110$
	push	bc
	call	_CoreGameLoopSetup
	pop	bc
	jr	00116$
00110$:
	C$main.c$25$3_0$108	= .
	.globl	C$main.c$25$3_0$108
;src\main.c:25: else if (currentGameState == GAMEJOHNDOE) GameJohnDoeSetup();
	ld	a, b
	sub	a, #0x03
	jr	NZ, 00107$
	push	bc
	call	_GameJohnDoeSetup
	pop	bc
	jr	00116$
00107$:
	C$main.c$26$3_0$108	= .
	.globl	C$main.c$26$3_0$108
;src\main.c:26: else if (currentGameState == BESTIARY) BestiarySetup();
	ld	a, b
	sub	a, #0x04
	jr	NZ, 00104$
	push	bc
	call	_BestiarySetup
	pop	bc
	jr	00116$
00104$:
	C$main.c$27$3_0$108	= .
	.globl	C$main.c$27$3_0$108
;src\main.c:27: else if (currentGameState == BATTLE) BattleSetup();
	ld	a, b
	sub	a, #0x05
	jr	NZ, 00116$
	push	bc
	call	_BattleSetup
	pop	bc
00116$:
	C$main.c$29$2_0$107	= .
	.globl	C$main.c$29$2_0$107
;src\main.c:29: if (currentGameState == GAMETITLE) nextGameState = GameTitleUpdate();
	ld	a, c
	dec	a
	jr	NZ, 00129$
	push	bc
	call	_GameTitleUpdate
	pop	bc
	ld	b, a
	jr	00132$
00129$:
	C$main.c$30$2_0$107	= .
	.globl	C$main.c$30$2_0$107
;src\main.c:30: else if (currentGameState == COREGAMELOOP) nextGameState = CoreGameLoopUpdate();
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00126$
	push	bc
	call	_CoreGameLoopUpdate
	pop	bc
	ld	b, a
	jr	00132$
00126$:
	C$main.c$31$2_0$107	= .
	.globl	C$main.c$31$2_0$107
;src\main.c:31: else if (currentGameState == GAMEJOHNDOE) nextGameState = GameJohnDoeUpdate();
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00123$
	push	bc
	call	_GameJohnDoeUpdate
	pop	bc
	ld	b, a
	jr	00132$
00123$:
	C$main.c$32$2_0$107	= .
	.globl	C$main.c$32$2_0$107
;src\main.c:32: else if (currentGameState == BESTIARY) nextGameState = BestiaryUpdate();
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00120$
	push	bc
	call	_BestiaryUpdate
	pop	bc
	ld	b, a
	jr	00132$
00120$:
	C$main.c$33$2_0$107	= .
	.globl	C$main.c$33$2_0$107
;src\main.c:33: else if (currentGameState == BATTLE) nextGameState = BattleUpdate();
	ld	a, c
	sub	a, #0x05
	jr	NZ, 00132$
	push	bc
	call	_BattleUpdate
	pop	bc
	ld	b, a
	C$main.c$35$1_0$106	= .
	.globl	C$main.c$35$1_0$106
;src\main.c:35: }
	C$main.c$35$1_0$106	= .
	.globl	C$main.c$35$1_0$106
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00132$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
