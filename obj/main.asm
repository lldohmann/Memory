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
	C$main.c$6$0_0$102	= .
	.globl	C$main.c$6$0_0$102
;src\main.c:6: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$8$2_0$102	= .
	.globl	C$main.c$8$2_0$102
;src\main.c:8: uint8_t currentGameState = GAMEFIRSTLOAD;
	C$main.c$9$2_0$102	= .
	.globl	C$main.c$9$2_0$102
;src\main.c:9: uint8_t nextGameState = GAMETITLE;
	ld	bc, #0x100
	C$main.c$12$1_0$102	= .
	.globl	C$main.c$12$1_0$102
;src\main.c:12: while(1) { 
00114$:
	C$main.c$16$2_0$103	= .
	.globl	C$main.c$16$2_0$103
;src\main.c:16: if (nextGameState != currentGameState)
	ld	a, c
	sub	a, b
	jr	Z, 00107$
	C$main.c$18$3_0$104	= .
	.globl	C$main.c$18$3_0$104
;src\main.c:18: currentGameState = nextGameState;
	ld	c, b
	C$main.c$20$3_0$104	= .
	.globl	C$main.c$20$3_0$104
;src\main.c:20: if (currentGameState == GAMETITLE) GameTitleSetup();
	ld	a, b
	dec	a
	jr	NZ, 00104$
	push	bc
	call	_GameTitleSetup
	pop	bc
	jr	00107$
00104$:
	C$main.c$21$3_0$104	= .
	.globl	C$main.c$21$3_0$104
;src\main.c:21: else if (currentGameState == COREGAMELOOP) CoreGameLoopSetup();
	ld	a, b
	sub	a, #0x02
	jr	NZ, 00107$
	push	bc
	call	_CoreGameLoopSetup
	pop	bc
00107$:
	C$main.c$23$2_0$103	= .
	.globl	C$main.c$23$2_0$103
;src\main.c:23: if (currentGameState == GAMETITLE) nextGameState = GameTitleUpdate();
	ld	a, c
	dec	a
	jr	NZ, 00111$
	push	bc
	call	_GameTitleUpdate
	pop	bc
	ld	b, a
	jr	00114$
00111$:
	C$main.c$24$2_0$103	= .
	.globl	C$main.c$24$2_0$103
;src\main.c:24: else if (currentGameState == COREGAMELOOP) nextGameState = CoreGameLoopUpdate();
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00114$
	push	bc
	call	_CoreGameLoopUpdate
	pop	bc
	ld	b, a
	C$main.c$27$1_0$102	= .
	.globl	C$main.c$27$1_0$102
;src\main.c:27: }
	C$main.c$27$1_0$102	= .
	.globl	C$main.c$27$1_0$102
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00114$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
