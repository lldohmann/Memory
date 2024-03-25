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
	.globl _GameTitleUpdate
	.globl _GameTitleSetup
	.globl _wait_vbl_done
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
;src\main.c:6: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src\main.c:8: uint8_t currentGameState = GAMEFIRSTLOAD;
;src\main.c:9: uint8_t nextGameState = GAMETITLE;
	ld	bc, #0x100
;src\main.c:12: while(1) { 
00108$:
;src\main.c:16: if (nextGameState != currentGameState)
	ld	a, c
	sub	a, b
	jr	Z, 00104$
;src\main.c:18: currentGameState = nextGameState;
	ld	c, b
;src\main.c:20: if (currentGameState == GAMETITLE) GameTitleSetup();
	ld	a, b
	dec	a
	jr	NZ, 00104$
	push	bc
	call	_GameTitleSetup
	pop	bc
00104$:
;src\main.c:23: if (currentGameState == GAMETITLE) nextGameState = GameTitleUpdate();
	ld	a, c
	dec	a
	jr	NZ, 00106$
	push	bc
	call	_GameTitleUpdate
	pop	bc
	ld	b, a
00106$:
;src\main.c:25: wait_vbl_done();
	call	_wait_vbl_done
;src\main.c:27: }
	jr	00108$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
