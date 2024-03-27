;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module common
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wait_vbl_done
	.globl _joypadCurrent
	.globl _joypadPrevious
	.globl _performantdelay
	.globl _fadeToBlack
	.globl _fadeFromBlack
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
G$joypadPrevious$0_0$0==.
_joypadPrevious::
	.ds 1
G$joypadCurrent$0_0$0==.
_joypadCurrent::
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
	.area _CODE
	G$performantdelay$0$0	= .
	.globl	G$performantdelay$0$0
	C$common.c$6$0_0$103	= .
	.globl	C$common.c$6$0_0$103
;src\common.c:6: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$8$2_0$103	= .
	.globl	C$common.c$8$2_0$103
;src\common.c:8: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$10$3_0$104	= .
	.globl	C$common.c$10$3_0$104
;src\common.c:10: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$8$2_0$103	= .
	.globl	C$common.c$8$2_0$103
;src\common.c:8: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$12$2_0$103	= .
	.globl	C$common.c$12$2_0$103
;src\common.c:12: }
	C$common.c$12$2_0$103	= .
	.globl	C$common.c$12$2_0$103
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$14$2_0$107	= .
	.globl	C$common.c$14$2_0$107
;src\common.c:14: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$16$2_0$107	= .
	.globl	C$common.c$16$2_0$107
;src\common.c:16: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$18$3_0$108	= .
	.globl	C$common.c$18$3_0$108
;src\common.c:18: switch(i) 
	ld	a, b
	or	a, a
	jr	Z, 00101$
	ld	a, b
	dec	a
	jr	Z, 00102$
	ld	a,b
	cp	a,#0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
	C$common.c$20$4_0$109	= .
	.globl	C$common.c$20$4_0$109
;src\common.c:20: case 0: 
00101$:
	C$common.c$21$4_0$109	= .
	.globl	C$common.c$21$4_0$109
;src\common.c:21: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$22$4_0$109	= .
	.globl	C$common.c$22$4_0$109
;src\common.c:22: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$23$4_0$109	= .
	.globl	C$common.c$23$4_0$109
;src\common.c:23: break;
	jr	00105$
	C$common.c$24$4_0$109	= .
	.globl	C$common.c$24$4_0$109
;src\common.c:24: case 1: 
00102$:
	C$common.c$25$4_0$109	= .
	.globl	C$common.c$25$4_0$109
;src\common.c:25: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$26$4_0$109	= .
	.globl	C$common.c$26$4_0$109
;src\common.c:26: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$27$4_0$109	= .
	.globl	C$common.c$27$4_0$109
;src\common.c:27: break;
	jr	00105$
	C$common.c$28$4_0$109	= .
	.globl	C$common.c$28$4_0$109
;src\common.c:28: case 2:
00103$:
	C$common.c$29$4_0$109	= .
	.globl	C$common.c$29$4_0$109
;src\common.c:29: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$30$4_0$109	= .
	.globl	C$common.c$30$4_0$109
;src\common.c:30: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$31$4_0$109	= .
	.globl	C$common.c$31$4_0$109
;src\common.c:31: break;
	jr	00105$
	C$common.c$32$4_0$109	= .
	.globl	C$common.c$32$4_0$109
;src\common.c:32: case 3:
00104$:
	C$common.c$33$4_0$109	= .
	.globl	C$common.c$33$4_0$109
;src\common.c:33: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$34$4_0$109	= .
	.globl	C$common.c$34$4_0$109
;src\common.c:34: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$36$3_0$108	= .
	.globl	C$common.c$36$3_0$108
;src\common.c:36: }
00105$:
	C$common.c$37$3_0$108	= .
	.globl	C$common.c$37$3_0$108
;src\common.c:37: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$16$2_0$107	= .
	.globl	C$common.c$16$2_0$107
;src\common.c:16: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$39$2_0$107	= .
	.globl	C$common.c$39$2_0$107
;src\common.c:39: }
	C$common.c$39$2_0$107	= .
	.globl	C$common.c$39$2_0$107
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$41$2_0$112	= .
	.globl	C$common.c$41$2_0$112
;src\common.c:41: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$43$2_0$112	= .
	.globl	C$common.c$43$2_0$112
;src\common.c:43: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$45$3_0$113	= .
	.globl	C$common.c$45$3_0$113
;src\common.c:45: switch(i) 
	ld	a, b
	or	a, a
	jr	Z, 00101$
	ld	a, b
	dec	a
	jr	Z, 00102$
	ld	a,b
	cp	a,#0x02
	jr	Z, 00103$
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
	C$common.c$47$4_0$114	= .
	.globl	C$common.c$47$4_0$114
;src\common.c:47: case 0: 
00101$:
	C$common.c$48$4_0$114	= .
	.globl	C$common.c$48$4_0$114
;src\common.c:48: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$49$4_0$114	= .
	.globl	C$common.c$49$4_0$114
;src\common.c:49: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$50$4_0$114	= .
	.globl	C$common.c$50$4_0$114
;src\common.c:50: break;
	jr	00105$
	C$common.c$51$4_0$114	= .
	.globl	C$common.c$51$4_0$114
;src\common.c:51: case 1: 
00102$:
	C$common.c$52$4_0$114	= .
	.globl	C$common.c$52$4_0$114
;src\common.c:52: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$53$4_0$114	= .
	.globl	C$common.c$53$4_0$114
;src\common.c:53: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$54$4_0$114	= .
	.globl	C$common.c$54$4_0$114
;src\common.c:54: break;
	jr	00105$
	C$common.c$55$4_0$114	= .
	.globl	C$common.c$55$4_0$114
;src\common.c:55: case 2:
00103$:
	C$common.c$56$4_0$114	= .
	.globl	C$common.c$56$4_0$114
;src\common.c:56: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$57$4_0$114	= .
	.globl	C$common.c$57$4_0$114
;src\common.c:57: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$58$4_0$114	= .
	.globl	C$common.c$58$4_0$114
;src\common.c:58: break;
	jr	00105$
	C$common.c$59$4_0$114	= .
	.globl	C$common.c$59$4_0$114
;src\common.c:59: case 3:
00104$:
	C$common.c$60$4_0$114	= .
	.globl	C$common.c$60$4_0$114
;src\common.c:60: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$61$4_0$114	= .
	.globl	C$common.c$61$4_0$114
;src\common.c:61: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$63$3_0$113	= .
	.globl	C$common.c$63$3_0$113
;src\common.c:63: }
00105$:
	C$common.c$64$3_0$113	= .
	.globl	C$common.c$64$3_0$113
;src\common.c:64: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$43$2_0$112	= .
	.globl	C$common.c$43$2_0$112
;src\common.c:43: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$66$2_0$112	= .
	.globl	C$common.c$66$2_0$112
;src\common.c:66: }
	C$common.c$66$2_0$112	= .
	.globl	C$common.c$66$2_0$112
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	.area _CODE
	.area _INITIALIZER
Fcommon$__xinit_joypadPrevious$0_0$0 == .
__xinit__joypadPrevious:
	.db #0x00	; 0
Fcommon$__xinit_joypadCurrent$0_0$0 == .
__xinit__joypadCurrent:
	.db #0x00	; 0
	.area _CABS (ABS)
