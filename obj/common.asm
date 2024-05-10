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
	C$common.c$7$0_0$105	= .
	.globl	C$common.c$7$0_0$105
;src\common.c:7: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$9$2_0$105	= .
	.globl	C$common.c$9$2_0$105
;src\common.c:9: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$11$3_0$106	= .
	.globl	C$common.c$11$3_0$106
;src\common.c:11: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$9$2_0$105	= .
	.globl	C$common.c$9$2_0$105
;src\common.c:9: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$13$2_0$105	= .
	.globl	C$common.c$13$2_0$105
;src\common.c:13: }
	C$common.c$13$2_0$105	= .
	.globl	C$common.c$13$2_0$105
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$81$2_0$109	= .
	.globl	C$common.c$81$2_0$109
;src\common.c:81: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$83$2_0$109	= .
	.globl	C$common.c$83$2_0$109
;src\common.c:83: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$85$3_0$110	= .
	.globl	C$common.c$85$3_0$110
;src\common.c:85: switch(i) 
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
	C$common.c$87$4_0$111	= .
	.globl	C$common.c$87$4_0$111
;src\common.c:87: case 0: 
00101$:
	C$common.c$88$4_0$111	= .
	.globl	C$common.c$88$4_0$111
;src\common.c:88: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$89$4_0$111	= .
	.globl	C$common.c$89$4_0$111
;src\common.c:89: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$90$4_0$111	= .
	.globl	C$common.c$90$4_0$111
;src\common.c:90: break;
	jr	00105$
	C$common.c$91$4_0$111	= .
	.globl	C$common.c$91$4_0$111
;src\common.c:91: case 1: 
00102$:
	C$common.c$92$4_0$111	= .
	.globl	C$common.c$92$4_0$111
;src\common.c:92: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$93$4_0$111	= .
	.globl	C$common.c$93$4_0$111
;src\common.c:93: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$94$4_0$111	= .
	.globl	C$common.c$94$4_0$111
;src\common.c:94: break;
	jr	00105$
	C$common.c$95$4_0$111	= .
	.globl	C$common.c$95$4_0$111
;src\common.c:95: case 2:
00103$:
	C$common.c$96$4_0$111	= .
	.globl	C$common.c$96$4_0$111
;src\common.c:96: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$97$4_0$111	= .
	.globl	C$common.c$97$4_0$111
;src\common.c:97: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$98$4_0$111	= .
	.globl	C$common.c$98$4_0$111
;src\common.c:98: break;
	jr	00105$
	C$common.c$99$4_0$111	= .
	.globl	C$common.c$99$4_0$111
;src\common.c:99: case 3:
00104$:
	C$common.c$100$4_0$111	= .
	.globl	C$common.c$100$4_0$111
;src\common.c:100: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$101$4_0$111	= .
	.globl	C$common.c$101$4_0$111
;src\common.c:101: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$103$3_0$110	= .
	.globl	C$common.c$103$3_0$110
;src\common.c:103: }
00105$:
	C$common.c$104$3_0$110	= .
	.globl	C$common.c$104$3_0$110
;src\common.c:104: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$83$2_0$109	= .
	.globl	C$common.c$83$2_0$109
;src\common.c:83: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$106$2_0$109	= .
	.globl	C$common.c$106$2_0$109
;src\common.c:106: }
	C$common.c$106$2_0$109	= .
	.globl	C$common.c$106$2_0$109
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$108$2_0$114	= .
	.globl	C$common.c$108$2_0$114
;src\common.c:108: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$110$2_0$114	= .
	.globl	C$common.c$110$2_0$114
;src\common.c:110: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$112$3_0$115	= .
	.globl	C$common.c$112$3_0$115
;src\common.c:112: switch(i) 
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
	C$common.c$114$4_0$116	= .
	.globl	C$common.c$114$4_0$116
;src\common.c:114: case 0: 
00101$:
	C$common.c$115$4_0$116	= .
	.globl	C$common.c$115$4_0$116
;src\common.c:115: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$116$4_0$116	= .
	.globl	C$common.c$116$4_0$116
;src\common.c:116: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$117$4_0$116	= .
	.globl	C$common.c$117$4_0$116
;src\common.c:117: break;
	jr	00105$
	C$common.c$118$4_0$116	= .
	.globl	C$common.c$118$4_0$116
;src\common.c:118: case 1: 
00102$:
	C$common.c$119$4_0$116	= .
	.globl	C$common.c$119$4_0$116
;src\common.c:119: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$120$4_0$116	= .
	.globl	C$common.c$120$4_0$116
;src\common.c:120: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$121$4_0$116	= .
	.globl	C$common.c$121$4_0$116
;src\common.c:121: break;
	jr	00105$
	C$common.c$122$4_0$116	= .
	.globl	C$common.c$122$4_0$116
;src\common.c:122: case 2:
00103$:
	C$common.c$123$4_0$116	= .
	.globl	C$common.c$123$4_0$116
;src\common.c:123: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$124$4_0$116	= .
	.globl	C$common.c$124$4_0$116
;src\common.c:124: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$125$4_0$116	= .
	.globl	C$common.c$125$4_0$116
;src\common.c:125: break;
	jr	00105$
	C$common.c$126$4_0$116	= .
	.globl	C$common.c$126$4_0$116
;src\common.c:126: case 3:
00104$:
	C$common.c$127$4_0$116	= .
	.globl	C$common.c$127$4_0$116
;src\common.c:127: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$128$4_0$116	= .
	.globl	C$common.c$128$4_0$116
;src\common.c:128: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$130$3_0$115	= .
	.globl	C$common.c$130$3_0$115
;src\common.c:130: }
00105$:
	C$common.c$131$3_0$115	= .
	.globl	C$common.c$131$3_0$115
;src\common.c:131: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$110$2_0$114	= .
	.globl	C$common.c$110$2_0$114
;src\common.c:110: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$133$2_0$114	= .
	.globl	C$common.c$133$2_0$114
;src\common.c:133: }
	C$common.c$133$2_0$114	= .
	.globl	C$common.c$133$2_0$114
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$135$2_0$119	= .
	.globl	C$common.c$135$2_0$119
;src\common.c:135: void fadeToWhite(uint8_t frames)
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$137$2_0$119	= .
	.globl	C$common.c$137$2_0$119
;src\common.c:137: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$139$3_0$120	= .
	.globl	C$common.c$139$3_0$120
;src\common.c:139: switch(i) 
	ld	a, #0x04
	sub	a, b
	jr	C, 00106$
	ld	e, b
	ld	d, #0x00
	ld	hl, #00129$
	add	hl, de
	add	hl, de
	C$common.c$141$4_0$121	= .
	.globl	C$common.c$141$4_0$121
;src\common.c:141: case 0: 
	jp	(hl)
00129$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$142$4_0$121	= .
	.globl	C$common.c$142$4_0$121
;src\common.c:142: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$143$4_0$121	= .
	.globl	C$common.c$143$4_0$121
;src\common.c:143: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$144$4_0$121	= .
	.globl	C$common.c$144$4_0$121
;src\common.c:144: break;
	jr	00106$
	C$common.c$145$4_0$121	= .
	.globl	C$common.c$145$4_0$121
;src\common.c:145: case 1: 
00102$:
	C$common.c$146$4_0$121	= .
	.globl	C$common.c$146$4_0$121
;src\common.c:146: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$147$4_0$121	= .
	.globl	C$common.c$147$4_0$121
;src\common.c:147: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$148$4_0$121	= .
	.globl	C$common.c$148$4_0$121
;src\common.c:148: break;
	jr	00106$
	C$common.c$149$4_0$121	= .
	.globl	C$common.c$149$4_0$121
;src\common.c:149: case 2:
00103$:
	C$common.c$150$4_0$121	= .
	.globl	C$common.c$150$4_0$121
;src\common.c:150: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$151$4_0$121	= .
	.globl	C$common.c$151$4_0$121
;src\common.c:151: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$152$4_0$121	= .
	.globl	C$common.c$152$4_0$121
;src\common.c:152: break;
	jr	00106$
	C$common.c$153$4_0$121	= .
	.globl	C$common.c$153$4_0$121
;src\common.c:153: case 3:
00104$:
	C$common.c$154$4_0$121	= .
	.globl	C$common.c$154$4_0$121
;src\common.c:154: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$155$4_0$121	= .
	.globl	C$common.c$155$4_0$121
;src\common.c:155: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$156$4_0$121	= .
	.globl	C$common.c$156$4_0$121
;src\common.c:156: break;
	jr	00106$
	C$common.c$157$4_0$121	= .
	.globl	C$common.c$157$4_0$121
;src\common.c:157: case 4:
00105$:
	C$common.c$158$4_0$121	= .
	.globl	C$common.c$158$4_0$121
;src\common.c:158: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$159$4_0$121	= .
	.globl	C$common.c$159$4_0$121
;src\common.c:159: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$161$3_0$120	= .
	.globl	C$common.c$161$3_0$120
;src\common.c:161: }
00106$:
	C$common.c$162$3_0$120	= .
	.globl	C$common.c$162$3_0$120
;src\common.c:162: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$137$2_0$119	= .
	.globl	C$common.c$137$2_0$119
;src\common.c:137: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$164$2_0$119	= .
	.globl	C$common.c$164$2_0$119
;src\common.c:164: }
	C$common.c$164$2_0$119	= .
	.globl	C$common.c$164$2_0$119
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$166$2_0$124	= .
	.globl	C$common.c$166$2_0$124
;src\common.c:166: void fadeFromWhite(uint8_t frames)
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$168$2_0$124	= .
	.globl	C$common.c$168$2_0$124
;src\common.c:168: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$170$3_0$125	= .
	.globl	C$common.c$170$3_0$125
;src\common.c:170: switch(i) 
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
	C$common.c$172$4_0$126	= .
	.globl	C$common.c$172$4_0$126
;src\common.c:172: case 0: 
00101$:
	C$common.c$173$4_0$126	= .
	.globl	C$common.c$173$4_0$126
;src\common.c:173: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$174$4_0$126	= .
	.globl	C$common.c$174$4_0$126
;src\common.c:174: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$175$4_0$126	= .
	.globl	C$common.c$175$4_0$126
;src\common.c:175: break;
	jr	00105$
	C$common.c$176$4_0$126	= .
	.globl	C$common.c$176$4_0$126
;src\common.c:176: case 1: 
00102$:
	C$common.c$177$4_0$126	= .
	.globl	C$common.c$177$4_0$126
;src\common.c:177: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$178$4_0$126	= .
	.globl	C$common.c$178$4_0$126
;src\common.c:178: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$179$4_0$126	= .
	.globl	C$common.c$179$4_0$126
;src\common.c:179: break;
	jr	00105$
	C$common.c$180$4_0$126	= .
	.globl	C$common.c$180$4_0$126
;src\common.c:180: case 2:
00103$:
	C$common.c$181$4_0$126	= .
	.globl	C$common.c$181$4_0$126
;src\common.c:181: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$182$4_0$126	= .
	.globl	C$common.c$182$4_0$126
;src\common.c:182: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$183$4_0$126	= .
	.globl	C$common.c$183$4_0$126
;src\common.c:183: break;
	jr	00105$
	C$common.c$184$4_0$126	= .
	.globl	C$common.c$184$4_0$126
;src\common.c:184: case 3:
00104$:
	C$common.c$185$4_0$126	= .
	.globl	C$common.c$185$4_0$126
;src\common.c:185: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$186$4_0$126	= .
	.globl	C$common.c$186$4_0$126
;src\common.c:186: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$188$3_0$125	= .
	.globl	C$common.c$188$3_0$125
;src\common.c:188: }
00105$:
	C$common.c$189$3_0$125	= .
	.globl	C$common.c$189$3_0$125
;src\common.c:189: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$168$2_0$124	= .
	.globl	C$common.c$168$2_0$124
;src\common.c:168: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$191$2_0$124	= .
	.globl	C$common.c$191$2_0$124
;src\common.c:191: }
	C$common.c$191$2_0$124	= .
	.globl	C$common.c$191$2_0$124
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
