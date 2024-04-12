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
	.globl _fadeToWhite
	.globl _fadeFromWhite
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
	C$common.c$6$0_0$105	= .
	.globl	C$common.c$6$0_0$105
;src\common.c:6: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$8$2_0$105	= .
	.globl	C$common.c$8$2_0$105
;src\common.c:8: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$10$3_0$106	= .
	.globl	C$common.c$10$3_0$106
;src\common.c:10: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$8$2_0$105	= .
	.globl	C$common.c$8$2_0$105
;src\common.c:8: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$12$2_0$105	= .
	.globl	C$common.c$12$2_0$105
;src\common.c:12: }
	C$common.c$12$2_0$105	= .
	.globl	C$common.c$12$2_0$105
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$14$2_0$109	= .
	.globl	C$common.c$14$2_0$109
;src\common.c:14: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$16$2_0$109	= .
	.globl	C$common.c$16$2_0$109
;src\common.c:16: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$18$3_0$110	= .
	.globl	C$common.c$18$3_0$110
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
	C$common.c$20$4_0$111	= .
	.globl	C$common.c$20$4_0$111
;src\common.c:20: case 0: 
00101$:
	C$common.c$21$4_0$111	= .
	.globl	C$common.c$21$4_0$111
;src\common.c:21: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$22$4_0$111	= .
	.globl	C$common.c$22$4_0$111
;src\common.c:22: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$23$4_0$111	= .
	.globl	C$common.c$23$4_0$111
;src\common.c:23: break;
	jr	00105$
	C$common.c$24$4_0$111	= .
	.globl	C$common.c$24$4_0$111
;src\common.c:24: case 1: 
00102$:
	C$common.c$25$4_0$111	= .
	.globl	C$common.c$25$4_0$111
;src\common.c:25: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$26$4_0$111	= .
	.globl	C$common.c$26$4_0$111
;src\common.c:26: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$27$4_0$111	= .
	.globl	C$common.c$27$4_0$111
;src\common.c:27: break;
	jr	00105$
	C$common.c$28$4_0$111	= .
	.globl	C$common.c$28$4_0$111
;src\common.c:28: case 2:
00103$:
	C$common.c$29$4_0$111	= .
	.globl	C$common.c$29$4_0$111
;src\common.c:29: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$30$4_0$111	= .
	.globl	C$common.c$30$4_0$111
;src\common.c:30: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$31$4_0$111	= .
	.globl	C$common.c$31$4_0$111
;src\common.c:31: break;
	jr	00105$
	C$common.c$32$4_0$111	= .
	.globl	C$common.c$32$4_0$111
;src\common.c:32: case 3:
00104$:
	C$common.c$33$4_0$111	= .
	.globl	C$common.c$33$4_0$111
;src\common.c:33: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$34$4_0$111	= .
	.globl	C$common.c$34$4_0$111
;src\common.c:34: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$36$3_0$110	= .
	.globl	C$common.c$36$3_0$110
;src\common.c:36: }
00105$:
	C$common.c$37$3_0$110	= .
	.globl	C$common.c$37$3_0$110
;src\common.c:37: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$16$2_0$109	= .
	.globl	C$common.c$16$2_0$109
;src\common.c:16: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$39$2_0$109	= .
	.globl	C$common.c$39$2_0$109
;src\common.c:39: }
	C$common.c$39$2_0$109	= .
	.globl	C$common.c$39$2_0$109
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$41$2_0$114	= .
	.globl	C$common.c$41$2_0$114
;src\common.c:41: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$43$2_0$114	= .
	.globl	C$common.c$43$2_0$114
;src\common.c:43: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$45$3_0$115	= .
	.globl	C$common.c$45$3_0$115
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
	C$common.c$47$4_0$116	= .
	.globl	C$common.c$47$4_0$116
;src\common.c:47: case 0: 
00101$:
	C$common.c$48$4_0$116	= .
	.globl	C$common.c$48$4_0$116
;src\common.c:48: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$49$4_0$116	= .
	.globl	C$common.c$49$4_0$116
;src\common.c:49: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$50$4_0$116	= .
	.globl	C$common.c$50$4_0$116
;src\common.c:50: break;
	jr	00105$
	C$common.c$51$4_0$116	= .
	.globl	C$common.c$51$4_0$116
;src\common.c:51: case 1: 
00102$:
	C$common.c$52$4_0$116	= .
	.globl	C$common.c$52$4_0$116
;src\common.c:52: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$53$4_0$116	= .
	.globl	C$common.c$53$4_0$116
;src\common.c:53: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$54$4_0$116	= .
	.globl	C$common.c$54$4_0$116
;src\common.c:54: break;
	jr	00105$
	C$common.c$55$4_0$116	= .
	.globl	C$common.c$55$4_0$116
;src\common.c:55: case 2:
00103$:
	C$common.c$56$4_0$116	= .
	.globl	C$common.c$56$4_0$116
;src\common.c:56: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$57$4_0$116	= .
	.globl	C$common.c$57$4_0$116
;src\common.c:57: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$58$4_0$116	= .
	.globl	C$common.c$58$4_0$116
;src\common.c:58: break;
	jr	00105$
	C$common.c$59$4_0$116	= .
	.globl	C$common.c$59$4_0$116
;src\common.c:59: case 3:
00104$:
	C$common.c$60$4_0$116	= .
	.globl	C$common.c$60$4_0$116
;src\common.c:60: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$61$4_0$116	= .
	.globl	C$common.c$61$4_0$116
;src\common.c:61: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$63$3_0$115	= .
	.globl	C$common.c$63$3_0$115
;src\common.c:63: }
00105$:
	C$common.c$64$3_0$115	= .
	.globl	C$common.c$64$3_0$115
;src\common.c:64: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$43$2_0$114	= .
	.globl	C$common.c$43$2_0$114
;src\common.c:43: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$66$2_0$114	= .
	.globl	C$common.c$66$2_0$114
;src\common.c:66: }
	C$common.c$66$2_0$114	= .
	.globl	C$common.c$66$2_0$114
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$68$2_0$119	= .
	.globl	C$common.c$68$2_0$119
;src\common.c:68: void fadeToWhite(uint8_t frames)
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$70$2_0$119	= .
	.globl	C$common.c$70$2_0$119
;src\common.c:70: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$72$3_0$120	= .
	.globl	C$common.c$72$3_0$120
;src\common.c:72: switch(i) 
	ld	a, #0x04
	sub	a, b
	jr	C, 00106$
	ld	e, b
	ld	d, #0x00
	ld	hl, #00129$
	add	hl, de
	add	hl, de
	C$common.c$74$4_0$121	= .
	.globl	C$common.c$74$4_0$121
;src\common.c:74: case 0: 
	jp	(hl)
00129$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$75$4_0$121	= .
	.globl	C$common.c$75$4_0$121
;src\common.c:75: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$76$4_0$121	= .
	.globl	C$common.c$76$4_0$121
;src\common.c:76: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$77$4_0$121	= .
	.globl	C$common.c$77$4_0$121
;src\common.c:77: break;
	jr	00106$
	C$common.c$78$4_0$121	= .
	.globl	C$common.c$78$4_0$121
;src\common.c:78: case 1: 
00102$:
	C$common.c$79$4_0$121	= .
	.globl	C$common.c$79$4_0$121
;src\common.c:79: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$80$4_0$121	= .
	.globl	C$common.c$80$4_0$121
;src\common.c:80: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$81$4_0$121	= .
	.globl	C$common.c$81$4_0$121
;src\common.c:81: break;
	jr	00106$
	C$common.c$82$4_0$121	= .
	.globl	C$common.c$82$4_0$121
;src\common.c:82: case 2:
00103$:
	C$common.c$83$4_0$121	= .
	.globl	C$common.c$83$4_0$121
;src\common.c:83: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$84$4_0$121	= .
	.globl	C$common.c$84$4_0$121
;src\common.c:84: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$85$4_0$121	= .
	.globl	C$common.c$85$4_0$121
;src\common.c:85: break;
	jr	00106$
	C$common.c$86$4_0$121	= .
	.globl	C$common.c$86$4_0$121
;src\common.c:86: case 3:
00104$:
	C$common.c$87$4_0$121	= .
	.globl	C$common.c$87$4_0$121
;src\common.c:87: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$88$4_0$121	= .
	.globl	C$common.c$88$4_0$121
;src\common.c:88: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$89$4_0$121	= .
	.globl	C$common.c$89$4_0$121
;src\common.c:89: break;
	jr	00106$
	C$common.c$90$4_0$121	= .
	.globl	C$common.c$90$4_0$121
;src\common.c:90: case 4:
00105$:
	C$common.c$91$4_0$121	= .
	.globl	C$common.c$91$4_0$121
;src\common.c:91: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$92$4_0$121	= .
	.globl	C$common.c$92$4_0$121
;src\common.c:92: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$94$3_0$120	= .
	.globl	C$common.c$94$3_0$120
;src\common.c:94: }
00106$:
	C$common.c$95$3_0$120	= .
	.globl	C$common.c$95$3_0$120
;src\common.c:95: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$70$2_0$119	= .
	.globl	C$common.c$70$2_0$119
;src\common.c:70: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$97$2_0$119	= .
	.globl	C$common.c$97$2_0$119
;src\common.c:97: }
	C$common.c$97$2_0$119	= .
	.globl	C$common.c$97$2_0$119
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$99$2_0$124	= .
	.globl	C$common.c$99$2_0$124
;src\common.c:99: void fadeFromWhite(uint8_t frames)
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$101$2_0$124	= .
	.globl	C$common.c$101$2_0$124
;src\common.c:101: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$103$3_0$125	= .
	.globl	C$common.c$103$3_0$125
;src\common.c:103: switch(i) 
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
	C$common.c$105$4_0$126	= .
	.globl	C$common.c$105$4_0$126
;src\common.c:105: case 0: 
00101$:
	C$common.c$106$4_0$126	= .
	.globl	C$common.c$106$4_0$126
;src\common.c:106: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$107$4_0$126	= .
	.globl	C$common.c$107$4_0$126
;src\common.c:107: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$108$4_0$126	= .
	.globl	C$common.c$108$4_0$126
;src\common.c:108: break;
	jr	00105$
	C$common.c$109$4_0$126	= .
	.globl	C$common.c$109$4_0$126
;src\common.c:109: case 1: 
00102$:
	C$common.c$110$4_0$126	= .
	.globl	C$common.c$110$4_0$126
;src\common.c:110: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$111$4_0$126	= .
	.globl	C$common.c$111$4_0$126
;src\common.c:111: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$112$4_0$126	= .
	.globl	C$common.c$112$4_0$126
;src\common.c:112: break;
	jr	00105$
	C$common.c$113$4_0$126	= .
	.globl	C$common.c$113$4_0$126
;src\common.c:113: case 2:
00103$:
	C$common.c$114$4_0$126	= .
	.globl	C$common.c$114$4_0$126
;src\common.c:114: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$115$4_0$126	= .
	.globl	C$common.c$115$4_0$126
;src\common.c:115: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$116$4_0$126	= .
	.globl	C$common.c$116$4_0$126
;src\common.c:116: break;
	jr	00105$
	C$common.c$117$4_0$126	= .
	.globl	C$common.c$117$4_0$126
;src\common.c:117: case 3:
00104$:
	C$common.c$118$4_0$126	= .
	.globl	C$common.c$118$4_0$126
;src\common.c:118: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$119$4_0$126	= .
	.globl	C$common.c$119$4_0$126
;src\common.c:119: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$121$3_0$125	= .
	.globl	C$common.c$121$3_0$125
;src\common.c:121: }
00105$:
	C$common.c$122$3_0$125	= .
	.globl	C$common.c$122$3_0$125
;src\common.c:122: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$101$2_0$124	= .
	.globl	C$common.c$101$2_0$124
;src\common.c:101: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$124$2_0$124	= .
	.globl	C$common.c$124$2_0$124
;src\common.c:124: }
	C$common.c$124$2_0$124	= .
	.globl	C$common.c$124$2_0$124
	XG$fadeFromWhite$0$0	= .
	.globl	XG$fadeFromWhite$0$0
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
