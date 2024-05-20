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
	C$main.c$8$0_0$105	= .
	.globl	C$main.c$8$0_0$105
;src\main.c:8: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$10$2_0$105	= .
	.globl	C$main.c$10$2_0$105
;src\main.c:10: uint8_t currentGameState = GAMEFIRSTLOAD;
	C$main.c$11$2_0$105	= .
	.globl	C$main.c$11$2_0$105
;src\main.c:11: uint8_t nextGameState = GAMETITLE;
	ld	bc, #0x100
	C$main.c$14$1_0$105	= .
	.globl	C$main.c$14$1_0$105
;src\main.c:14: while(1) { 
00126$:
	C$main.c$18$2_0$106	= .
	.globl	C$main.c$18$2_0$106
;src\main.c:18: if (nextGameState != currentGameState)
	ld	a, c
	sub	a, b
	jr	Z, 00113$
	C$main.c$20$3_0$107	= .
	.globl	C$main.c$20$3_0$107
;src\main.c:20: currentGameState = nextGameState;
	ld	c, b
	C$main.c$22$3_0$107	= .
	.globl	C$main.c$22$3_0$107
;src\main.c:22: if (currentGameState == GAMETITLE) GameTitleSetup();
	ld	a, b
	dec	a
	jr	NZ, 00110$
	push	bc
	call	_GameTitleSetup
	pop	bc
	jr	00113$
00110$:
	C$main.c$23$3_0$107	= .
	.globl	C$main.c$23$3_0$107
;src\main.c:23: else if (currentGameState == COREGAMELOOP) CoreGameLoopSetup();
	ld	a, b
	sub	a, #0x02
	jr	NZ, 00107$
	push	bc
	call	_CoreGameLoopSetup
	pop	bc
	jr	00113$
00107$:
	C$main.c$24$3_0$107	= .
	.globl	C$main.c$24$3_0$107
;src\main.c:24: else if (currentGameState == GAMEJOHNDOE) GameJohnDoeSetup();
	ld	a, b
	sub	a, #0x03
	jr	NZ, 00104$
	push	bc
	call	_GameJohnDoeSetup
	pop	bc
	jr	00113$
00104$:
	C$main.c$25$3_0$107	= .
	.globl	C$main.c$25$3_0$107
;src\main.c:25: else if (currentGameState == BESTIARY) BestiarySetup();
	ld	a, b
	sub	a, #0x04
	jr	NZ, 00113$
	push	bc
	call	_BestiarySetup
	pop	bc
00113$:
	C$main.c$27$2_0$106	= .
	.globl	C$main.c$27$2_0$106
;src\main.c:27: if (currentGameState == GAMETITLE) nextGameState = GameTitleUpdate();
	ld	a, c
	dec	a
	jr	NZ, 00123$
	push	bc
	call	_GameTitleUpdate
	pop	bc
	ld	b, a
	jr	00126$
00123$:
	C$main.c$28$2_0$106	= .
	.globl	C$main.c$28$2_0$106
;src\main.c:28: else if (currentGameState == COREGAMELOOP) nextGameState = CoreGameLoopUpdate();
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00120$
	push	bc
	call	_CoreGameLoopUpdate
	pop	bc
	ld	b, a
	jr	00126$
00120$:
	C$main.c$29$2_0$106	= .
	.globl	C$main.c$29$2_0$106
;src\main.c:29: else if (currentGameState == GAMEJOHNDOE) nextGameState = GameJohnDoeUpdate();
	ld	a, c
	sub	a, #0x03
	jr	NZ, 00117$
	push	bc
	call	_GameJohnDoeUpdate
	pop	bc
	ld	b, a
	jr	00126$
00117$:
	C$main.c$30$2_0$106	= .
	.globl	C$main.c$30$2_0$106
;src\main.c:30: else if (currentGameState == BESTIARY) nextGameState = BestiaryUpdate();
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00126$
	push	bc
	call	_BestiaryUpdate
	pop	bc
	ld	b, a
	C$main.c$33$1_0$105	= .
	.globl	C$main.c$33$1_0$105
;src\main.c:33: }
	C$main.c$33$1_0$105	= .
	.globl	C$main.c$33$1_0$105
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00126$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
