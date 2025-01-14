;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module common
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DrawWindow
	.globl _RandomNumber
	.globl _ResetColor
	.globl _InvertColor
	.globl _fadeFromWhite
	.globl _fadeToWhite
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _DrawText
	.globl _DrawNumber
	.globl _performantdelay
	.globl _strlen
	.globl _uitoa
	.globl _get_win_xy_addr
	.globl _get_bkg_xy_addr
	.globl _set_vram_byte
	.globl _wait_vbl_done
	.globl _index
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
G$index$0_0$0==.
_index::
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
	G$performantdelay$0$0	= .
	.globl	G$performantdelay$0$0
	C$common.c$15$0_0$164	= .
	.globl	C$common.c$15$0_0$164
;src\common.c:15: void performantdelay(uint8_t numloops) NONBANKED
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$17$2_0$164	= .
	.globl	C$common.c$17$2_0$164
;src\common.c:17: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$19$3_0$165	= .
	.globl	C$common.c$19$3_0$165
;src\common.c:19: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$17$2_0$164	= .
	.globl	C$common.c$17$2_0$164
;src\common.c:17: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$21$2_0$164	= .
	.globl	C$common.c$21$2_0$164
;src\common.c:21: }
	C$common.c$21$2_0$164	= .
	.globl	C$common.c$21$2_0$164
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$DrawNumber$0$0	= .
	.globl	G$DrawNumber$0$0
	C$common.c$24$2_0$167	= .
	.globl	C$common.c$24$2_0$167
;src\common.c:24: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits, BOOLEAN bkg) NONBANKED
;	---------------------------------
; Function DrawNumber
; ---------------------------------
_DrawNumber::
	add	sp, #-16
	ld	b, a
	ld	c, e
	C$common.c$26$2_0$167	= .
	.globl	C$common.c$26$2_0$167
;src\common.c:26: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
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
	C$common.c$29$1_0$167	= .
	.globl	C$common.c$29$1_0$167
;src\common.c:29: uitoa(number, buffer, 10);
	ldhl	sp,	#18
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	bc
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #3
	add	hl, sp
	push	hl
	push	de
	call	_uitoa
	add	sp, #5
	pop	bc
	C$common.c$33$1_1$168	= .
	.globl	C$common.c$33$1_1$168
;src\common.c:33: if (bkg)
	ldhl	sp,	#21
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	C$common.c$35$2_1$169	= .
	.globl	C$common.c$35$2_1$169
;src\common.c:35: vramAddr = get_bkg_xy_addr(x,y); 
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	ld	c, e
	ld	b, d
	jr	00103$
00102$:
	C$common.c$38$2_1$170	= .
	.globl	C$common.c$38$2_1$170
;src\common.c:38: vramAddr = get_win_xy_addr(x,y);
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_win_xy_addr
	pop	hl
	ld	c, e
	ld	b, d
00103$:
	C$common.c$42$1_2$171	= .
	.globl	C$common.c$42$1_2$171
;src\common.c:42: uint8_t len = strlen(buffer);
	ld	hl, #0
	add	hl, sp
	push	hl
	call	_strlen
	pop	hl
	ldhl	sp,	#8
	ld	(hl), e
	C$common.c$47$2_2$167	= .
	.globl	C$common.c$47$2_2$167
;src\common.c:47: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#15
	ld	(hl), #0x00
00107$:
	ldhl	sp,	#20
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
	ld	a, e
	ld	(hl+), a
	inc	hl
	ld	a, (hl)
	ldhl	sp,	#11
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#11
	ld	e, l
	ld	d, h
	ldhl	sp,	#13
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00151$
	bit	7, d
	jr	NZ, 00152$
	cp	a, a
	jr	00152$
00151$:
	bit	7, d
	jr	Z, 00152$
	scf
00152$:
	jr	NC, 00104$
	C$common.c$49$3_2$173	= .
	.globl	C$common.c$49$3_2$173
;src\common.c:49: set_vram_byte(vramAddr++, 283);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	inc	bc
	ld	a, #0x1b
	ld	e, l
	call	_set_vram_byte
	C$common.c$47$2_2$172	= .
	.globl	C$common.c$47$2_2$172
;src\common.c:47: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#15
	inc	(hl)
	jr	00107$
00104$:
	C$common.c$54$2_2$167	= .
	.globl	C$common.c$54$2_2$167
;src\common.c:54: for (uint8_t i=0; i<len; i++)
	ld	e, #0x00
00110$:
	ld	a, e
	ldhl	sp,	#8
	sub	a, (hl)
	jr	NC, 00112$
	C$common.c$56$3_2$175	= .
	.globl	C$common.c$56$3_2$175
;src\common.c:56: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
	push	de
	ld	d, #0x00
	ld	hl, #2
	add	hl, sp
	add	hl, de
	pop	de
	ld	a, (hl)
	add	a, #0xeb
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	ld	d, b
	inc	bc
	push	de
	ld	a, l
	ld	e, h
	call	_set_vram_byte
	pop	de
	C$common.c$54$2_2$174	= .
	.globl	C$common.c$54$2_2$174
;src\common.c:54: for (uint8_t i=0; i<len; i++)
	inc	e
	jr	00110$
00112$:
	C$common.c$58$2_2$167	= .
	.globl	C$common.c$58$2_2$167
;src\common.c:58: }
	add	sp, #16
	pop	hl
	add	sp, #4
	jp	(hl)
	G$DrawText$0$0	= .
	.globl	G$DrawText$0$0
	C$common.c$60$2_2$177	= .
	.globl	C$common.c$60$2_2$177
;src\common.c:60: void DrawText(uint8_t x, uint8_t y, unsigned char *text, BOOLEAN bkg ) NONBANKED
;	---------------------------------
; Function DrawText
; ---------------------------------
_DrawText::
	add	sp, #-4
	ld	b, a
	ld	d, e
	C$common.c$67$1_0$177	= .
	.globl	C$common.c$67$1_0$177
;src\common.c:67: if (bkg)
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	C$common.c$69$2_0$178	= .
	.globl	C$common.c$69$2_0$178
;src\common.c:69: vramAddr = get_bkg_xy_addr(x,y); 
	ld	e, b
	push	de
	call	_get_bkg_xy_addr
	add	sp, #4
	push	de
	jr	00137$
00102$:
	C$common.c$72$2_0$179	= .
	.globl	C$common.c$72$2_0$179
;src\common.c:72: vramAddr = get_win_xy_addr(x,y);
	ld	e, b
	push	de
	call	_get_win_xy_addr
	add	sp, #4
	push	de
	C$common.c$75$1_0$177	= .
	.globl	C$common.c$75$1_0$177
;src\common.c:75: while(text[i]!='\0'){
00137$:
	ld	c, #0x00
00121$:
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	e, l
	ld	d, h
	C$common.c$80$1_0$177	= .
	.globl	C$common.c$80$1_0$177
;src\common.c:80: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, (de)
	C$common.c$75$1_0$177	= .
	.globl	C$common.c$75$1_0$177
;src\common.c:75: while(text[i]!='\0'){
	ld	b, a
	or	a, a
	jp	Z, 00123$
	C$common.c$79$1_0$177	= .
	.globl	C$common.c$79$1_0$177
;src\common.c:79: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
	pop	de
	push	de
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
	ld	a,b
	ld	e,a
	sub	a, #0x41
	jr	C, 00118$
	ld	a, #0x5a
	sub	a, b
	jr	C, 00118$
	dec	hl
	ld	a, e
	add	a, #0xc0
	ld	b, a
	pop	de
	push	de
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, b
	call	_set_vram_byte
	jp	00119$
00118$:
	C$common.c$80$2_0$180	= .
	.globl	C$common.c$80$2_0$180
;src\common.c:80: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, b
	sub	a, #0x61
	jr	C, 00114$
	ld	a, #0x7a
	sub	a, b
	jr	C, 00114$
	ld	a, e
	add	a, #0xa0
	ld	b, a
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, b
	call	_set_vram_byte
	jr	00119$
00114$:
	C$common.c$81$2_0$180	= .
	.globl	C$common.c$81$2_0$180
;src\common.c:81: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
	ld	a, b
	sub	a, #0x30
	jr	C, 00110$
	ld	a, #0x39
	sub	a, b
	jr	C, 00110$
	ld	a, e
	add	a, #0xeb
	ld	b, a
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, b
	call	_set_vram_byte
	jr	00119$
00110$:
	C$common.c$87$3_0$181	= .
	.globl	C$common.c$87$3_0$181
;src\common.c:87: switch(text[i]){
	ld	a,b
	cp	a,#0x2e
	jr	Z, 00105$
	cp	a,#0x2f
	jr	Z, 00106$
	sub	a, #0x3a
	jr	NZ, 00107$
	C$common.c$88$4_0$182	= .
	.globl	C$common.c$88$4_0$182
;src\common.c:88: case ':': set_vram_byte(vramAddr++,38); break;
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, #0x26
	call	_set_vram_byte
	jr	00119$
	C$common.c$89$4_0$182	= .
	.globl	C$common.c$89$4_0$182
;src\common.c:89: case '.': set_vram_byte(vramAddr++,43);break;
00105$:
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, #0x2b
	call	_set_vram_byte
	jr	00119$
	C$common.c$90$4_0$182	= .
	.globl	C$common.c$90$4_0$182
;src\common.c:90: case '/': set_vram_byte(vramAddr++,40);break;
00106$:
	pop	de
	push	de
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, #0x28
	call	_set_vram_byte
	jr	00119$
	C$common.c$91$4_0$182	= .
	.globl	C$common.c$91$4_0$182
;src\common.c:91: default: vramAddr++; break;
00107$:
	ldhl	sp,	#2
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#3
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	C$common.c$92$2_0$180	= .
	.globl	C$common.c$92$2_0$180
;src\common.c:92: }
00119$:
	C$common.c$96$2_0$180	= .
	.globl	C$common.c$96$2_0$180
;src\common.c:96: i++;
	inc	c
	jp	00121$
00123$:
	C$common.c$98$1_0$177	= .
	.globl	C$common.c$98$1_0$177
;src\common.c:98: VBK_REG=0;
	ld	a, #0x00
	ldh	(_VBK_REG + 0), a
	C$common.c$100$1_0$177	= .
	.globl	C$common.c$100$1_0$177
;src\common.c:100: }
	add	sp, #4
	pop	hl
	add	sp, #3
	jp	(hl)
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$102$1_0$185	= .
	.globl	C$common.c$102$1_0$185
;src\common.c:102: void fadeToBlack(uint8_t frames) NONBANKED
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$104$2_0$185	= .
	.globl	C$common.c$104$2_0$185
;src\common.c:104: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$106$3_0$186	= .
	.globl	C$common.c$106$3_0$186
;src\common.c:106: switch(i) 
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
	C$common.c$108$4_0$187	= .
	.globl	C$common.c$108$4_0$187
;src\common.c:108: case 0: 
00101$:
	C$common.c$109$4_0$187	= .
	.globl	C$common.c$109$4_0$187
;src\common.c:109: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$110$4_0$187	= .
	.globl	C$common.c$110$4_0$187
;src\common.c:110: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$111$4_0$187	= .
	.globl	C$common.c$111$4_0$187
;src\common.c:111: break;
	jr	00105$
	C$common.c$112$4_0$187	= .
	.globl	C$common.c$112$4_0$187
;src\common.c:112: case 1: 
00102$:
	C$common.c$113$4_0$187	= .
	.globl	C$common.c$113$4_0$187
;src\common.c:113: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$114$4_0$187	= .
	.globl	C$common.c$114$4_0$187
;src\common.c:114: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$115$4_0$187	= .
	.globl	C$common.c$115$4_0$187
;src\common.c:115: break;
	jr	00105$
	C$common.c$116$4_0$187	= .
	.globl	C$common.c$116$4_0$187
;src\common.c:116: case 2:
00103$:
	C$common.c$117$4_0$187	= .
	.globl	C$common.c$117$4_0$187
;src\common.c:117: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$118$4_0$187	= .
	.globl	C$common.c$118$4_0$187
;src\common.c:118: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$119$4_0$187	= .
	.globl	C$common.c$119$4_0$187
;src\common.c:119: break;
	jr	00105$
	C$common.c$120$4_0$187	= .
	.globl	C$common.c$120$4_0$187
;src\common.c:120: case 3:
00104$:
	C$common.c$121$4_0$187	= .
	.globl	C$common.c$121$4_0$187
;src\common.c:121: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$122$4_0$187	= .
	.globl	C$common.c$122$4_0$187
;src\common.c:122: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$124$3_0$186	= .
	.globl	C$common.c$124$3_0$186
;src\common.c:124: }
00105$:
	C$common.c$125$3_0$186	= .
	.globl	C$common.c$125$3_0$186
;src\common.c:125: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$104$2_0$185	= .
	.globl	C$common.c$104$2_0$185
;src\common.c:104: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$127$2_0$185	= .
	.globl	C$common.c$127$2_0$185
;src\common.c:127: }
	C$common.c$127$2_0$185	= .
	.globl	C$common.c$127$2_0$185
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$129$2_0$190	= .
	.globl	C$common.c$129$2_0$190
;src\common.c:129: void fadeFromBlack(uint8_t frames) NONBANKED
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$131$2_0$190	= .
	.globl	C$common.c$131$2_0$190
;src\common.c:131: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$133$3_0$191	= .
	.globl	C$common.c$133$3_0$191
;src\common.c:133: switch(i) 
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
	C$common.c$135$4_0$192	= .
	.globl	C$common.c$135$4_0$192
;src\common.c:135: case 0: 
00101$:
	C$common.c$136$4_0$192	= .
	.globl	C$common.c$136$4_0$192
;src\common.c:136: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$137$4_0$192	= .
	.globl	C$common.c$137$4_0$192
;src\common.c:137: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$138$4_0$192	= .
	.globl	C$common.c$138$4_0$192
;src\common.c:138: break;
	jr	00105$
	C$common.c$139$4_0$192	= .
	.globl	C$common.c$139$4_0$192
;src\common.c:139: case 1: 
00102$:
	C$common.c$140$4_0$192	= .
	.globl	C$common.c$140$4_0$192
;src\common.c:140: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$141$4_0$192	= .
	.globl	C$common.c$141$4_0$192
;src\common.c:141: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$142$4_0$192	= .
	.globl	C$common.c$142$4_0$192
;src\common.c:142: break;
	jr	00105$
	C$common.c$143$4_0$192	= .
	.globl	C$common.c$143$4_0$192
;src\common.c:143: case 2:
00103$:
	C$common.c$144$4_0$192	= .
	.globl	C$common.c$144$4_0$192
;src\common.c:144: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$145$4_0$192	= .
	.globl	C$common.c$145$4_0$192
;src\common.c:145: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$146$4_0$192	= .
	.globl	C$common.c$146$4_0$192
;src\common.c:146: break;
	jr	00105$
	C$common.c$147$4_0$192	= .
	.globl	C$common.c$147$4_0$192
;src\common.c:147: case 3:
00104$:
	C$common.c$148$4_0$192	= .
	.globl	C$common.c$148$4_0$192
;src\common.c:148: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$149$4_0$192	= .
	.globl	C$common.c$149$4_0$192
;src\common.c:149: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$151$3_0$191	= .
	.globl	C$common.c$151$3_0$191
;src\common.c:151: }
00105$:
	C$common.c$152$3_0$191	= .
	.globl	C$common.c$152$3_0$191
;src\common.c:152: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$131$2_0$190	= .
	.globl	C$common.c$131$2_0$190
;src\common.c:131: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$154$2_0$190	= .
	.globl	C$common.c$154$2_0$190
;src\common.c:154: }
	C$common.c$154$2_0$190	= .
	.globl	C$common.c$154$2_0$190
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$156$2_0$195	= .
	.globl	C$common.c$156$2_0$195
;src\common.c:156: void fadeToWhite(uint8_t frames) NONBANKED
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$158$2_0$195	= .
	.globl	C$common.c$158$2_0$195
;src\common.c:158: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$160$3_0$196	= .
	.globl	C$common.c$160$3_0$196
;src\common.c:160: switch(i) 
	ld	e, b
	ld	d, #0x00
	ld	hl, #00130$
	add	hl, de
	add	hl, de
	C$common.c$162$4_0$197	= .
	.globl	C$common.c$162$4_0$197
;src\common.c:162: case 0: 
	jp	(hl)
00130$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$163$4_0$197	= .
	.globl	C$common.c$163$4_0$197
;src\common.c:163: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$164$4_0$197	= .
	.globl	C$common.c$164$4_0$197
;src\common.c:164: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$165$4_0$197	= .
	.globl	C$common.c$165$4_0$197
;src\common.c:165: break;
	jr	00106$
	C$common.c$166$4_0$197	= .
	.globl	C$common.c$166$4_0$197
;src\common.c:166: case 1: 
00102$:
	C$common.c$167$4_0$197	= .
	.globl	C$common.c$167$4_0$197
;src\common.c:167: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$168$4_0$197	= .
	.globl	C$common.c$168$4_0$197
;src\common.c:168: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$169$4_0$197	= .
	.globl	C$common.c$169$4_0$197
;src\common.c:169: break;
	jr	00106$
	C$common.c$170$4_0$197	= .
	.globl	C$common.c$170$4_0$197
;src\common.c:170: case 2:
00103$:
	C$common.c$171$4_0$197	= .
	.globl	C$common.c$171$4_0$197
;src\common.c:171: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$172$4_0$197	= .
	.globl	C$common.c$172$4_0$197
;src\common.c:172: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$173$4_0$197	= .
	.globl	C$common.c$173$4_0$197
;src\common.c:173: break;
	jr	00106$
	C$common.c$174$4_0$197	= .
	.globl	C$common.c$174$4_0$197
;src\common.c:174: case 3:
00104$:
	C$common.c$175$4_0$197	= .
	.globl	C$common.c$175$4_0$197
;src\common.c:175: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$176$4_0$197	= .
	.globl	C$common.c$176$4_0$197
;src\common.c:176: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$177$4_0$197	= .
	.globl	C$common.c$177$4_0$197
;src\common.c:177: break;
	jr	00106$
	C$common.c$178$4_0$197	= .
	.globl	C$common.c$178$4_0$197
;src\common.c:178: case 4:
00105$:
	C$common.c$179$4_0$197	= .
	.globl	C$common.c$179$4_0$197
;src\common.c:179: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$180$4_0$197	= .
	.globl	C$common.c$180$4_0$197
;src\common.c:180: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$182$3_0$196	= .
	.globl	C$common.c$182$3_0$196
;src\common.c:182: }
00106$:
	C$common.c$183$3_0$196	= .
	.globl	C$common.c$183$3_0$196
;src\common.c:183: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$158$2_0$195	= .
	.globl	C$common.c$158$2_0$195
;src\common.c:158: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$185$2_0$195	= .
	.globl	C$common.c$185$2_0$195
;src\common.c:185: }
	C$common.c$185$2_0$195	= .
	.globl	C$common.c$185$2_0$195
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$187$2_0$200	= .
	.globl	C$common.c$187$2_0$200
;src\common.c:187: void fadeFromWhite(uint8_t frames) NONBANKED
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$189$2_0$200	= .
	.globl	C$common.c$189$2_0$200
;src\common.c:189: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$191$3_0$201	= .
	.globl	C$common.c$191$3_0$201
;src\common.c:191: switch(i) 
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
	C$common.c$193$4_0$202	= .
	.globl	C$common.c$193$4_0$202
;src\common.c:193: case 0: 
00101$:
	C$common.c$194$4_0$202	= .
	.globl	C$common.c$194$4_0$202
;src\common.c:194: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$195$4_0$202	= .
	.globl	C$common.c$195$4_0$202
;src\common.c:195: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$196$4_0$202	= .
	.globl	C$common.c$196$4_0$202
;src\common.c:196: break;
	jr	00105$
	C$common.c$197$4_0$202	= .
	.globl	C$common.c$197$4_0$202
;src\common.c:197: case 1: 
00102$:
	C$common.c$198$4_0$202	= .
	.globl	C$common.c$198$4_0$202
;src\common.c:198: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$199$4_0$202	= .
	.globl	C$common.c$199$4_0$202
;src\common.c:199: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$200$4_0$202	= .
	.globl	C$common.c$200$4_0$202
;src\common.c:200: break;
	jr	00105$
	C$common.c$201$4_0$202	= .
	.globl	C$common.c$201$4_0$202
;src\common.c:201: case 2:
00103$:
	C$common.c$202$4_0$202	= .
	.globl	C$common.c$202$4_0$202
;src\common.c:202: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$203$4_0$202	= .
	.globl	C$common.c$203$4_0$202
;src\common.c:203: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$204$4_0$202	= .
	.globl	C$common.c$204$4_0$202
;src\common.c:204: break;
	jr	00105$
	C$common.c$205$4_0$202	= .
	.globl	C$common.c$205$4_0$202
;src\common.c:205: case 3:
00104$:
	C$common.c$206$4_0$202	= .
	.globl	C$common.c$206$4_0$202
;src\common.c:206: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$207$4_0$202	= .
	.globl	C$common.c$207$4_0$202
;src\common.c:207: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$209$3_0$201	= .
	.globl	C$common.c$209$3_0$201
;src\common.c:209: }
00105$:
	C$common.c$210$3_0$201	= .
	.globl	C$common.c$210$3_0$201
;src\common.c:210: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$189$2_0$200	= .
	.globl	C$common.c$189$2_0$200
;src\common.c:189: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$212$2_0$200	= .
	.globl	C$common.c$212$2_0$200
;src\common.c:212: }
	C$common.c$212$2_0$200	= .
	.globl	C$common.c$212$2_0$200
	XG$fadeFromWhite$0$0	= .
	.globl	XG$fadeFromWhite$0$0
	jr	00108$
	G$InvertColor$0$0	= .
	.globl	G$InvertColor$0$0
	C$common.c$214$2_0$204	= .
	.globl	C$common.c$214$2_0$204
;src\common.c:214: void InvertColor(void) NONBANKED
;	---------------------------------
; Function InvertColor
; ---------------------------------
_InvertColor::
	C$common.c$216$1_0$204	= .
	.globl	C$common.c$216$1_0$204
;src\common.c:216: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_BGP_REG + 0), a
	C$common.c$217$1_0$204	= .
	.globl	C$common.c$217$1_0$204
;src\common.c:217: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_OBP0_REG + 0), a
	C$common.c$218$1_0$204	= .
	.globl	C$common.c$218$1_0$204
;src\common.c:218: }
	C$common.c$218$1_0$204	= .
	.globl	C$common.c$218$1_0$204
	XG$InvertColor$0$0	= .
	.globl	XG$InvertColor$0$0
	ret
	G$ResetColor$0$0	= .
	.globl	G$ResetColor$0$0
	C$common.c$220$1_0$206	= .
	.globl	C$common.c$220$1_0$206
;src\common.c:220: void ResetColor(void) NONBANKED
;	---------------------------------
; Function ResetColor
; ---------------------------------
_ResetColor::
	C$common.c$222$1_0$206	= .
	.globl	C$common.c$222$1_0$206
;src\common.c:222: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$223$1_0$206	= .
	.globl	C$common.c$223$1_0$206
;src\common.c:223: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$224$1_0$206	= .
	.globl	C$common.c$224$1_0$206
;src\common.c:224: }
	C$common.c$224$1_0$206	= .
	.globl	C$common.c$224$1_0$206
	XG$ResetColor$0$0	= .
	.globl	XG$ResetColor$0$0
	ret
	G$RandomNumber$0$0	= .
	.globl	G$RandomNumber$0$0
	C$common.c$226$1_0$208	= .
	.globl	C$common.c$226$1_0$208
;src\common.c:226: uint8_t RandomNumber(uint8_t min, uint8_t max) NONBANKED
;	---------------------------------
; Function RandomNumber
; ---------------------------------
_RandomNumber::
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	C$common.c$229$1_0$208	= .
	.globl	C$common.c$229$1_0$208
;src\common.c:229: return min + (DIV_REG % (max - min)); 
	ld	d, #0x00
	ld	c, l
	ld	b, #0x00
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
	ldh	a, (_DIV_REG + 0)
	ld	e, a
	ld	d, #0x00
	push	hl
	call	__modsint
	pop	hl
	ld	a, c
	add	a, l
	C$common.c$230$1_0$208	= .
	.globl	C$common.c$230$1_0$208
;src\common.c:230: }
	C$common.c$230$1_0$208	= .
	.globl	C$common.c$230$1_0$208
	XG$RandomNumber$0$0	= .
	.globl	XG$RandomNumber$0$0
	ret
	G$DrawWindow$0$0	= .
	.globl	G$DrawWindow$0$0
	C$common.c$232$1_0$210	= .
	.globl	C$common.c$232$1_0$210
;src\common.c:232: void DrawWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height, BOOLEAN bkg) NONBANKED
;	---------------------------------
; Function DrawWindow
; ---------------------------------
_DrawWindow::
	add	sp, #-12
	ldhl	sp,	#10
	ld	(hl-), a
	ld	(hl), e
	C$common.c$237$1_0$210	= .
	.globl	C$common.c$237$1_0$210
;src\common.c:237: if (bkg)
	ldhl	sp,	#16
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	C$common.c$239$2_0$211	= .
	.globl	C$common.c$239$2_0$211
;src\common.c:239: vramAddr = get_bkg_xy_addr(x,y); 
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_get_bkg_xy_addr
	pop	hl
	ld	c, e
	ld	b, d
	jr	00103$
00102$:
	C$common.c$242$2_0$212	= .
	.globl	C$common.c$242$2_0$212
;src\common.c:242: vramAddr = get_win_xy_addr(x,y);
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_get_win_xy_addr
	pop	hl
	ld	c, e
	ld	b, d
00103$:
	C$common.c$244$1_0$210	= .
	.globl	C$common.c$244$1_0$210
;src\common.c:244: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
	ld	e, c
	ld	d, b
	inc	bc
	ld	a, #0x2d
	call	_set_vram_byte
	C$common.c$245$1_0$210	= .
	.globl	C$common.c$245$1_0$210
;src\common.c:245: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#11
	ld	(hl), #0x00
00115$:
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#1
	ld	(hl-), a
	ld	(hl), e
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#7
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00209$
	bit	7, d
	jr	NZ, 00210$
	cp	a, a
	jr	00210$
00209$:
	bit	7, d
	jr	Z, 00210$
	scf
00210$:
	jr	NC, 00104$
	C$common.c$247$3_0$214	= .
	.globl	C$common.c$247$3_0$214
;src\common.c:247: set_vram_byte(vramAddr++,304u);         // TOP SIDE
	ld	e, c
	ld	d, b
	inc	bc
	ld	a, #0x30
	call	_set_vram_byte
	C$common.c$245$2_0$213	= .
	.globl	C$common.c$245$2_0$213
;src\common.c:245: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#11
	inc	(hl)
	jr	00115$
00104$:
	C$common.c$249$1_0$210	= .
	.globl	C$common.c$249$1_0$210
;src\common.c:249: set_vram_byte(vramAddr++,306u);             // TOP RIGHT CORNER
	ld	a, #0x32
	ld	e, c
	ld	d, b
	call	_set_vram_byte
	C$common.c$253$1_0$210	= .
	.globl	C$common.c$253$1_0$210
;src\common.c:253: vramAddr = get_bkg_xy_addr(x,y+1); 
	ldhl	sp,	#9
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ld	b, (hl)
	inc	b
	C$common.c$251$1_0$210	= .
	.globl	C$common.c$251$1_0$210
;src\common.c:251: if (bkg) 
	ldhl	sp,	#16
	ld	a, (hl)
	or	a, a
	jr	Z, 00106$
	C$common.c$253$2_0$215	= .
	.globl	C$common.c$253$2_0$215
;src\common.c:253: vramAddr = get_bkg_xy_addr(x,y+1); 
	push	bc
	inc	sp
	ldhl	sp,	#11
	ld	a, (hl)
	push	af
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	jr	00136$
00106$:
	C$common.c$256$2_0$216	= .
	.globl	C$common.c$256$2_0$216
;src\common.c:256: vramAddr = get_win_xy_addr(x,y+1);
	push	bc
	inc	sp
	ldhl	sp,	#11
	ld	a, (hl)
	push	af
	inc	sp
	call	_get_win_xy_addr
	pop	hl
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$common.c$258$1_0$210	= .
	.globl	C$common.c$258$1_0$210
;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
00136$:
	ldhl	sp,	#11
	ld	(hl), #0x00
00121$:
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	(hl), e
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	(hl), #0x00
	C$common.c$244$1_0$210	= .
	.globl	C$common.c$244$1_0$210
;src\common.c:244: set_vram_byte(vramAddr++,301u);             // TOP LEFT CORNER
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	inc	bc
	C$common.c$258$2_0$217	= .
	.globl	C$common.c$258$2_0$217
;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
	ldhl	sp,	#7
	ld	e, l
	ld	d, h
	ldhl	sp,	#5
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00211$
	bit	7, d
	jr	NZ, 00212$
	cp	a, a
	jr	00212$
00211$:
	bit	7, d
	jr	Z, 00212$
	scf
00212$:
	jp	NC, 00112$
	C$common.c$260$3_0$218	= .
	.globl	C$common.c$260$3_0$218
;src\common.c:260: set_vram_byte(vramAddr++,302u); // LEFT SIDE
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x2e
	call	_set_vram_byte
	C$common.c$261$1_0$210	= .
	.globl	C$common.c$261$1_0$210
;src\common.c:261: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#8
	ld	(hl), #0x00
00118$:
	ldhl	sp,	#8
	ld	a, (hl-)
	dec	hl
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#6
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00213$
	bit	7, d
	jr	NZ, 00214$
	cp	a, a
	jr	00214$
00213$:
	bit	7, d
	jr	Z, 00214$
	scf
00214$:
	jr	NC, 00108$
	C$common.c$263$5_0$220	= .
	.globl	C$common.c$263$5_0$220
;src\common.c:263: set_vram_byte(vramAddr++,256u);
	ld	e, c
	ld	d, b
	inc	bc
	xor	a, a
	call	_set_vram_byte
	C$common.c$261$4_0$219	= .
	.globl	C$common.c$261$4_0$219
;src\common.c:261: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#8
	inc	(hl)
	jr	00118$
00108$:
	C$common.c$265$3_0$218	= .
	.globl	C$common.c$265$3_0$218
;src\common.c:265: set_vram_byte(vramAddr++,307u); // RIGHT SIDE
	ld	a, #0x33
	ld	e, c
	ld	d, b
	call	_set_vram_byte
	C$common.c$268$1_0$210	= .
	.globl	C$common.c$268$1_0$210
;src\common.c:268: vramAddr = get_bkg_xy_addr(x,y+2+j); 
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#2
	ld	c, (hl)
	inc	c
	inc	c
	add	a, c
	ld	b, a
	C$common.c$266$3_0$218	= .
	.globl	C$common.c$266$3_0$218
;src\common.c:266: if (bkg)
	ldhl	sp,	#16
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
	C$common.c$268$4_0$221	= .
	.globl	C$common.c$268$4_0$221
;src\common.c:268: vramAddr = get_bkg_xy_addr(x,y+2+j); 
	push	bc
	inc	sp
	ldhl	sp,	#11
	ld	a, (hl)
	push	af
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	jr	00122$
00110$:
	C$common.c$271$4_0$222	= .
	.globl	C$common.c$271$4_0$222
;src\common.c:271: vramAddr = get_win_xy_addr(x,y+2+j);
	push	bc
	inc	sp
	ldhl	sp,	#11
	ld	a, (hl)
	push	af
	inc	sp
	call	_get_win_xy_addr
	pop	hl
	ldhl	sp,	#3
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
00122$:
	C$common.c$258$2_0$217	= .
	.globl	C$common.c$258$2_0$217
;src\common.c:258: for (uint8_t j = 0; j < height - 2; j++)
	ldhl	sp,	#11
	inc	(hl)
	jp	00121$
00112$:
	C$common.c$274$1_0$210	= .
	.globl	C$common.c$274$1_0$210
;src\common.c:274: set_vram_byte(vramAddr++,303u);             // TOP LEFT CORNER
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, #0x2f
	call	_set_vram_byte
	C$common.c$275$1_0$210	= .
	.globl	C$common.c$275$1_0$210
;src\common.c:275: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#11
	ld	(hl), #0x00
00124$:
	ldhl	sp,	#11
	ld	a, (hl)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	(hl), #0x00
	ldhl	sp,	#7
	ld	e, l
	ld	d, h
	ldhl	sp,	#0
	ld	a, (de)
	inc	de
	sub	a, (hl)
	inc	hl
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	bit	7, (hl)
	jr	Z, 00215$
	bit	7, d
	jr	NZ, 00216$
	cp	a, a
	jr	00216$
00215$:
	bit	7, d
	jr	Z, 00216$
	scf
00216$:
	jr	NC, 00113$
	C$common.c$277$3_0$224	= .
	.globl	C$common.c$277$3_0$224
;src\common.c:277: set_vram_byte(vramAddr++,305u);         // TOP SIDE
	ld	e, c
	ld	d, b
	inc	bc
	ld	a, #0x31
	call	_set_vram_byte
	C$common.c$275$2_0$223	= .
	.globl	C$common.c$275$2_0$223
;src\common.c:275: for (uint8_t i = 0; i < width - 2; i++)
	ldhl	sp,	#11
	inc	(hl)
	jr	00124$
00113$:
	C$common.c$279$1_0$210	= .
	.globl	C$common.c$279$1_0$210
;src\common.c:279: set_vram_byte(vramAddr++,308u);             // TOP RIGHT CORNER
	ld	a, #0x34
	ld	e, c
	ld	d, b
	call	_set_vram_byte
	C$common.c$280$1_0$210	= .
	.globl	C$common.c$280$1_0$210
;src\common.c:280: }
	add	sp, #12
	pop	hl
	add	sp, #3
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_0
	.area _CODE_0
	.area _INITIALIZER
Fcommon$__xinit_joypadPrevious$0_0$0 == .
__xinit__joypadPrevious:
	.db #0x00	; 0
Fcommon$__xinit_joypadCurrent$0_0$0 == .
__xinit__joypadCurrent:
	.db #0x00	; 0
Fcommon$__xinit_index$0_0$0 == .
__xinit__index:
	.db #0x00	;  0
	.area _CABS (ABS)
