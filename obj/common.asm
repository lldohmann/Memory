;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module common
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ResetColor
	.globl _InvertColor
	.globl _fadeFromWhite
	.globl _fadeToWhite
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawNumber
	.globl _performantdelay
	.globl _strlen
	.globl _uitoa
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _wait_vbl_done
	.globl _joypadCurrent
	.globl _joypadPrevious
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
	C$common.c$8$0_0$136	= .
	.globl	C$common.c$8$0_0$136
;src\common.c:8: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$10$2_0$136	= .
	.globl	C$common.c$10$2_0$136
;src\common.c:10: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$12$3_0$137	= .
	.globl	C$common.c$12$3_0$137
;src\common.c:12: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$10$2_0$136	= .
	.globl	C$common.c$10$2_0$136
;src\common.c:10: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$14$2_0$136	= .
	.globl	C$common.c$14$2_0$136
;src\common.c:14: }
	C$common.c$14$2_0$136	= .
	.globl	C$common.c$14$2_0$136
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$DrawNumber$0$0	= .
	.globl	G$DrawNumber$0$0
	C$common.c$17$2_0$139	= .
	.globl	C$common.c$17$2_0$139
;src\common.c:17: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits)
;	---------------------------------
; Function DrawNumber
; ---------------------------------
_DrawNumber::
	add	sp, #-20
	ldhl	sp,	#16
	ld	(hl-), a
	ld	(hl), e
	C$common.c$19$2_0$139	= .
	.globl	C$common.c$19$2_0$139
;src\common.c:19: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
	ldhl	sp,	#0
	ld	a,#0x30
	ld	(hl+),a
	ld	(hl+), a
	ld	a,#0x30
	ld	(hl+),a
	ld	(hl+), a
	ld	a,#0x30
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x30
	ld	(hl+), a
	ld	(hl), #0x30
	C$common.c$22$1_0$139	= .
	.globl	C$common.c$22$1_0$139
;src\common.c:22: uitoa(number, buffer, 10);
	ldhl	sp,	#22
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl), a
	ldhl	sp,	#23
	ld	a, (hl)
	ldhl	sp,	#19
	ld	(hl), a
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #1
	add	hl, sp
	push	hl
	ldhl	sp,	#21
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_uitoa
	add	sp, #5
	C$common.c$25$1_1$140	= .
	.globl	C$common.c$25$1_1$140
;src\common.c:25: uint8_t *vramAddr = get_bkg_xy_addr(x,y); 
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_get_bkg_xy_addr
	pop	hl
	ldhl	sp,	#18
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	C$common.c$28$1_1$140	= .
	.globl	C$common.c$28$1_1$140
;src\common.c:28: uint8_t len = strlen(buffer);
	ld	hl, #0
	add	hl, sp
	push	hl
	call	_strlen
	pop	hl
	ldhl	sp,	#18
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	C$common.c$33$2_1$139	= .
	.globl	C$common.c$33$2_1$139
;src\common.c:33: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#17
	ld	(hl), a
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#18
	ld	(hl+), a
	ld	(hl), #0x00
00104$:
	ldhl	sp,	#24
	ld	a, (hl)
	ldhl	sp,	#9
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#14
	ld	(hl-), a
	ld	(hl), e
	ldhl	sp,	#19
	ld	c, (hl)
	ld	b, #0x00
	ldhl	sp,	#13
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
	bit	7, (hl)
	jr	Z, 00133$
	bit	7, d
	jr	NZ, 00134$
	cp	a, a
	jr	00134$
00133$:
	bit	7, d
	jr	Z, 00134$
	scf
00134$:
	jr	NC, 00101$
	C$common.c$35$3_1$142	= .
	.globl	C$common.c$35$3_1$142
;src\common.c:35: set_vram_byte(vramAddr++, 283);
	ldhl	sp,	#17
	ld	a, (hl)
	ldhl	sp,	#13
	ld	(hl), a
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#14
	ld	(hl), a
	ldhl	sp,	#17
	inc	(hl)
	jr	NZ, 00135$
	inc	hl
	inc	(hl)
00135$:
	ld	a, #0x1b
	push	af
	inc	sp
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_set_vram_byte
	add	sp, #3
	C$common.c$33$2_1$141	= .
	.globl	C$common.c$33$2_1$141
;src\common.c:33: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#19
	inc	(hl)
	jr	00104$
00101$:
	C$common.c$40$2_1$139	= .
	.globl	C$common.c$40$2_1$139
;src\common.c:40: for (uint8_t i=0; i<len; i++)
	ldhl	sp,	#17
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	e, #0x00
00107$:
	ld	a, e
	ldhl	sp,	#8
	sub	a, (hl)
	jr	NC, 00109$
	C$common.c$42$3_1$144	= .
	.globl	C$common.c$42$3_1$144
;src\common.c:42: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
	push	de
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	add	a, #0xeb
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	bc
	push	de
	push	af
	inc	sp
	push	hl
	call	_set_vram_byte
	add	sp, #3
	pop	de
	C$common.c$40$2_1$143	= .
	.globl	C$common.c$40$2_1$143
;src\common.c:40: for (uint8_t i=0; i<len; i++)
	inc	e
	jr	00107$
00109$:
	C$common.c$44$2_1$139	= .
	.globl	C$common.c$44$2_1$139
;src\common.c:44: }
	add	sp, #20
	pop	hl
	add	sp, #3
	jp	(hl)
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$83$2_1$147	= .
	.globl	C$common.c$83$2_1$147
;src\common.c:83: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$85$2_0$147	= .
	.globl	C$common.c$85$2_0$147
;src\common.c:85: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$87$3_0$148	= .
	.globl	C$common.c$87$3_0$148
;src\common.c:87: switch(i) 
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
	C$common.c$89$4_0$149	= .
	.globl	C$common.c$89$4_0$149
;src\common.c:89: case 0: 
00101$:
	C$common.c$90$4_0$149	= .
	.globl	C$common.c$90$4_0$149
;src\common.c:90: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$91$4_0$149	= .
	.globl	C$common.c$91$4_0$149
;src\common.c:91: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$92$4_0$149	= .
	.globl	C$common.c$92$4_0$149
;src\common.c:92: break;
	jr	00105$
	C$common.c$93$4_0$149	= .
	.globl	C$common.c$93$4_0$149
;src\common.c:93: case 1: 
00102$:
	C$common.c$94$4_0$149	= .
	.globl	C$common.c$94$4_0$149
;src\common.c:94: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$95$4_0$149	= .
	.globl	C$common.c$95$4_0$149
;src\common.c:95: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$96$4_0$149	= .
	.globl	C$common.c$96$4_0$149
;src\common.c:96: break;
	jr	00105$
	C$common.c$97$4_0$149	= .
	.globl	C$common.c$97$4_0$149
;src\common.c:97: case 2:
00103$:
	C$common.c$98$4_0$149	= .
	.globl	C$common.c$98$4_0$149
;src\common.c:98: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$99$4_0$149	= .
	.globl	C$common.c$99$4_0$149
;src\common.c:99: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$100$4_0$149	= .
	.globl	C$common.c$100$4_0$149
;src\common.c:100: break;
	jr	00105$
	C$common.c$101$4_0$149	= .
	.globl	C$common.c$101$4_0$149
;src\common.c:101: case 3:
00104$:
	C$common.c$102$4_0$149	= .
	.globl	C$common.c$102$4_0$149
;src\common.c:102: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$103$4_0$149	= .
	.globl	C$common.c$103$4_0$149
;src\common.c:103: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$105$3_0$148	= .
	.globl	C$common.c$105$3_0$148
;src\common.c:105: }
00105$:
	C$common.c$106$3_0$148	= .
	.globl	C$common.c$106$3_0$148
;src\common.c:106: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$85$2_0$147	= .
	.globl	C$common.c$85$2_0$147
;src\common.c:85: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$108$2_0$147	= .
	.globl	C$common.c$108$2_0$147
;src\common.c:108: }
	C$common.c$108$2_0$147	= .
	.globl	C$common.c$108$2_0$147
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$110$2_0$152	= .
	.globl	C$common.c$110$2_0$152
;src\common.c:110: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$112$2_0$152	= .
	.globl	C$common.c$112$2_0$152
;src\common.c:112: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$114$3_0$153	= .
	.globl	C$common.c$114$3_0$153
;src\common.c:114: switch(i) 
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
	C$common.c$116$4_0$154	= .
	.globl	C$common.c$116$4_0$154
;src\common.c:116: case 0: 
00101$:
	C$common.c$117$4_0$154	= .
	.globl	C$common.c$117$4_0$154
;src\common.c:117: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$118$4_0$154	= .
	.globl	C$common.c$118$4_0$154
;src\common.c:118: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$119$4_0$154	= .
	.globl	C$common.c$119$4_0$154
;src\common.c:119: break;
	jr	00105$
	C$common.c$120$4_0$154	= .
	.globl	C$common.c$120$4_0$154
;src\common.c:120: case 1: 
00102$:
	C$common.c$121$4_0$154	= .
	.globl	C$common.c$121$4_0$154
;src\common.c:121: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$122$4_0$154	= .
	.globl	C$common.c$122$4_0$154
;src\common.c:122: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$123$4_0$154	= .
	.globl	C$common.c$123$4_0$154
;src\common.c:123: break;
	jr	00105$
	C$common.c$124$4_0$154	= .
	.globl	C$common.c$124$4_0$154
;src\common.c:124: case 2:
00103$:
	C$common.c$125$4_0$154	= .
	.globl	C$common.c$125$4_0$154
;src\common.c:125: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$126$4_0$154	= .
	.globl	C$common.c$126$4_0$154
;src\common.c:126: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$127$4_0$154	= .
	.globl	C$common.c$127$4_0$154
;src\common.c:127: break;
	jr	00105$
	C$common.c$128$4_0$154	= .
	.globl	C$common.c$128$4_0$154
;src\common.c:128: case 3:
00104$:
	C$common.c$129$4_0$154	= .
	.globl	C$common.c$129$4_0$154
;src\common.c:129: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$130$4_0$154	= .
	.globl	C$common.c$130$4_0$154
;src\common.c:130: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$132$3_0$153	= .
	.globl	C$common.c$132$3_0$153
;src\common.c:132: }
00105$:
	C$common.c$133$3_0$153	= .
	.globl	C$common.c$133$3_0$153
;src\common.c:133: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$112$2_0$152	= .
	.globl	C$common.c$112$2_0$152
;src\common.c:112: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$135$2_0$152	= .
	.globl	C$common.c$135$2_0$152
;src\common.c:135: }
	C$common.c$135$2_0$152	= .
	.globl	C$common.c$135$2_0$152
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$137$2_0$157	= .
	.globl	C$common.c$137$2_0$157
;src\common.c:137: void fadeToWhite(uint8_t frames)
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$139$2_0$157	= .
	.globl	C$common.c$139$2_0$157
;src\common.c:139: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$141$3_0$158	= .
	.globl	C$common.c$141$3_0$158
;src\common.c:141: switch(i) 
	ld	a, #0x04
	sub	a, b
	jr	C, 00106$
	ld	e, b
	ld	d, #0x00
	ld	hl, #00129$
	add	hl, de
	add	hl, de
	C$common.c$143$4_0$159	= .
	.globl	C$common.c$143$4_0$159
;src\common.c:143: case 0: 
	jp	(hl)
00129$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$144$4_0$159	= .
	.globl	C$common.c$144$4_0$159
;src\common.c:144: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$145$4_0$159	= .
	.globl	C$common.c$145$4_0$159
;src\common.c:145: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$146$4_0$159	= .
	.globl	C$common.c$146$4_0$159
;src\common.c:146: break;
	jr	00106$
	C$common.c$147$4_0$159	= .
	.globl	C$common.c$147$4_0$159
;src\common.c:147: case 1: 
00102$:
	C$common.c$148$4_0$159	= .
	.globl	C$common.c$148$4_0$159
;src\common.c:148: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$149$4_0$159	= .
	.globl	C$common.c$149$4_0$159
;src\common.c:149: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$150$4_0$159	= .
	.globl	C$common.c$150$4_0$159
;src\common.c:150: break;
	jr	00106$
	C$common.c$151$4_0$159	= .
	.globl	C$common.c$151$4_0$159
;src\common.c:151: case 2:
00103$:
	C$common.c$152$4_0$159	= .
	.globl	C$common.c$152$4_0$159
;src\common.c:152: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$153$4_0$159	= .
	.globl	C$common.c$153$4_0$159
;src\common.c:153: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$154$4_0$159	= .
	.globl	C$common.c$154$4_0$159
;src\common.c:154: break;
	jr	00106$
	C$common.c$155$4_0$159	= .
	.globl	C$common.c$155$4_0$159
;src\common.c:155: case 3:
00104$:
	C$common.c$156$4_0$159	= .
	.globl	C$common.c$156$4_0$159
;src\common.c:156: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$157$4_0$159	= .
	.globl	C$common.c$157$4_0$159
;src\common.c:157: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$158$4_0$159	= .
	.globl	C$common.c$158$4_0$159
;src\common.c:158: break;
	jr	00106$
	C$common.c$159$4_0$159	= .
	.globl	C$common.c$159$4_0$159
;src\common.c:159: case 4:
00105$:
	C$common.c$160$4_0$159	= .
	.globl	C$common.c$160$4_0$159
;src\common.c:160: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$161$4_0$159	= .
	.globl	C$common.c$161$4_0$159
;src\common.c:161: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$163$3_0$158	= .
	.globl	C$common.c$163$3_0$158
;src\common.c:163: }
00106$:
	C$common.c$164$3_0$158	= .
	.globl	C$common.c$164$3_0$158
;src\common.c:164: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$139$2_0$157	= .
	.globl	C$common.c$139$2_0$157
;src\common.c:139: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$166$2_0$157	= .
	.globl	C$common.c$166$2_0$157
;src\common.c:166: }
	C$common.c$166$2_0$157	= .
	.globl	C$common.c$166$2_0$157
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$168$2_0$162	= .
	.globl	C$common.c$168$2_0$162
;src\common.c:168: void fadeFromWhite(uint8_t frames)
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$170$2_0$162	= .
	.globl	C$common.c$170$2_0$162
;src\common.c:170: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$172$3_0$163	= .
	.globl	C$common.c$172$3_0$163
;src\common.c:172: switch(i) 
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
	C$common.c$174$4_0$164	= .
	.globl	C$common.c$174$4_0$164
;src\common.c:174: case 0: 
00101$:
	C$common.c$175$4_0$164	= .
	.globl	C$common.c$175$4_0$164
;src\common.c:175: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$176$4_0$164	= .
	.globl	C$common.c$176$4_0$164
;src\common.c:176: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$177$4_0$164	= .
	.globl	C$common.c$177$4_0$164
;src\common.c:177: break;
	jr	00105$
	C$common.c$178$4_0$164	= .
	.globl	C$common.c$178$4_0$164
;src\common.c:178: case 1: 
00102$:
	C$common.c$179$4_0$164	= .
	.globl	C$common.c$179$4_0$164
;src\common.c:179: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$180$4_0$164	= .
	.globl	C$common.c$180$4_0$164
;src\common.c:180: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$181$4_0$164	= .
	.globl	C$common.c$181$4_0$164
;src\common.c:181: break;
	jr	00105$
	C$common.c$182$4_0$164	= .
	.globl	C$common.c$182$4_0$164
;src\common.c:182: case 2:
00103$:
	C$common.c$183$4_0$164	= .
	.globl	C$common.c$183$4_0$164
;src\common.c:183: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$184$4_0$164	= .
	.globl	C$common.c$184$4_0$164
;src\common.c:184: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$185$4_0$164	= .
	.globl	C$common.c$185$4_0$164
;src\common.c:185: break;
	jr	00105$
	C$common.c$186$4_0$164	= .
	.globl	C$common.c$186$4_0$164
;src\common.c:186: case 3:
00104$:
	C$common.c$187$4_0$164	= .
	.globl	C$common.c$187$4_0$164
;src\common.c:187: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$188$4_0$164	= .
	.globl	C$common.c$188$4_0$164
;src\common.c:188: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$190$3_0$163	= .
	.globl	C$common.c$190$3_0$163
;src\common.c:190: }
00105$:
	C$common.c$191$3_0$163	= .
	.globl	C$common.c$191$3_0$163
;src\common.c:191: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$170$2_0$162	= .
	.globl	C$common.c$170$2_0$162
;src\common.c:170: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$193$2_0$162	= .
	.globl	C$common.c$193$2_0$162
;src\common.c:193: }
	C$common.c$193$2_0$162	= .
	.globl	C$common.c$193$2_0$162
	XG$fadeFromWhite$0$0	= .
	.globl	XG$fadeFromWhite$0$0
	jr	00108$
	G$InvertColor$0$0	= .
	.globl	G$InvertColor$0$0
	C$common.c$195$2_0$165	= .
	.globl	C$common.c$195$2_0$165
;src\common.c:195: void InvertColor()
;	---------------------------------
; Function InvertColor
; ---------------------------------
_InvertColor::
	C$common.c$197$1_0$165	= .
	.globl	C$common.c$197$1_0$165
;src\common.c:197: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_BGP_REG + 0), a
	C$common.c$198$1_0$165	= .
	.globl	C$common.c$198$1_0$165
;src\common.c:198: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_OBP0_REG + 0), a
	C$common.c$199$1_0$165	= .
	.globl	C$common.c$199$1_0$165
;src\common.c:199: }
	C$common.c$199$1_0$165	= .
	.globl	C$common.c$199$1_0$165
	XG$InvertColor$0$0	= .
	.globl	XG$InvertColor$0$0
	ret
	G$ResetColor$0$0	= .
	.globl	G$ResetColor$0$0
	C$common.c$201$1_0$166	= .
	.globl	C$common.c$201$1_0$166
;src\common.c:201: void ResetColor()
;	---------------------------------
; Function ResetColor
; ---------------------------------
_ResetColor::
	C$common.c$203$1_0$166	= .
	.globl	C$common.c$203$1_0$166
;src\common.c:203: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$204$1_0$166	= .
	.globl	C$common.c$204$1_0$166
;src\common.c:204: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$205$1_0$166	= .
	.globl	C$common.c$205$1_0$166
;src\common.c:205: }
	C$common.c$205$1_0$166	= .
	.globl	C$common.c$205$1_0$166
	XG$ResetColor$0$0	= .
	.globl	XG$ResetColor$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fcommon$__xinit_joypadPrevious$0_0$0 == .
__xinit__joypadPrevious:
	.db #0x00	; 0
Fcommon$__xinit_joypadCurrent$0_0$0 == .
__xinit__joypadCurrent:
	.db #0x00	; 0
	.area _CABS (ABS)
