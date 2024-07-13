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
	.globl _DrawText
	.globl _DrawNumber
	.globl _performantdelay
	.globl _strlen
	.globl _uitoa
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$performantdelay$0$0	= .
	.globl	G$performantdelay$0$0
	C$common.c$9$0_0$136	= .
	.globl	C$common.c$9$0_0$136
;src\common.c:9: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$11$2_0$136	= .
	.globl	C$common.c$11$2_0$136
;src\common.c:11: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$13$3_0$137	= .
	.globl	C$common.c$13$3_0$137
;src\common.c:13: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$11$2_0$136	= .
	.globl	C$common.c$11$2_0$136
;src\common.c:11: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$15$2_0$136	= .
	.globl	C$common.c$15$2_0$136
;src\common.c:15: }
	C$common.c$15$2_0$136	= .
	.globl	C$common.c$15$2_0$136
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$DrawNumber$0$0	= .
	.globl	G$DrawNumber$0$0
	C$common.c$18$2_0$139	= .
	.globl	C$common.c$18$2_0$139
;src\common.c:18: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits)
;	---------------------------------
; Function DrawNumber
; ---------------------------------
_DrawNumber::
	add	sp, #-20
	ldhl	sp,	#16
	ld	(hl-), a
	ld	(hl), e
	C$common.c$20$2_0$139	= .
	.globl	C$common.c$20$2_0$139
;src\common.c:20: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
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
	C$common.c$23$1_0$139	= .
	.globl	C$common.c$23$1_0$139
;src\common.c:23: uitoa(number, buffer, 10);
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
	C$common.c$26$1_1$140	= .
	.globl	C$common.c$26$1_1$140
;src\common.c:26: uint8_t *vramAddr = get_bkg_xy_addr(x,y); 
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
	C$common.c$29$1_1$140	= .
	.globl	C$common.c$29$1_1$140
;src\common.c:29: uint8_t len = strlen(buffer);
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
	C$common.c$34$2_1$139	= .
	.globl	C$common.c$34$2_1$139
;src\common.c:34: for (uint8_t i=0; i<digits-len;i++)
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
	C$common.c$36$3_1$142	= .
	.globl	C$common.c$36$3_1$142
;src\common.c:36: set_vram_byte(vramAddr++, 283);
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
	C$common.c$34$2_1$141	= .
	.globl	C$common.c$34$2_1$141
;src\common.c:34: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#19
	inc	(hl)
	jr	00104$
00101$:
	C$common.c$41$2_1$139	= .
	.globl	C$common.c$41$2_1$139
;src\common.c:41: for (uint8_t i=0; i<len; i++)
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
	C$common.c$43$3_1$144	= .
	.globl	C$common.c$43$3_1$144
;src\common.c:43: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
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
	C$common.c$41$2_1$143	= .
	.globl	C$common.c$41$2_1$143
;src\common.c:41: for (uint8_t i=0; i<len; i++)
	inc	e
	jr	00107$
00109$:
	C$common.c$45$2_1$139	= .
	.globl	C$common.c$45$2_1$139
;src\common.c:45: }
	add	sp, #20
	pop	hl
	add	sp, #3
	jp	(hl)
	G$DrawText$0$0	= .
	.globl	G$DrawText$0$0
	C$common.c$47$2_1$146	= .
	.globl	C$common.c$47$2_1$146
;src\common.c:47: void DrawText(uint8_t x, uint8_t y, unsigned char *text ){
;	---------------------------------
; Function DrawText
; ---------------------------------
_DrawText::
	add	sp, #-3
	ld	b, a
	C$common.c$53$1_0$146	= .
	.globl	C$common.c$53$1_0$146
;src\common.c:53: uint8_t *vramAddr= get_bkg_xy_addr(x,y);
	ld	a, e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	C$common.c$55$1_0$146	= .
	.globl	C$common.c$55$1_0$146
;src\common.c:55: while(text[i]!='\0'){
	ldhl	sp,	#2
	ld	(hl), #0x00
00118$:
	push	de
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#4
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	pop	de
	ld	c, l
	ld	b, h
	C$common.c$60$1_0$146	= .
	.globl	C$common.c$60$1_0$146
;src\common.c:60: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, (bc)
	C$common.c$55$1_0$146	= .
	.globl	C$common.c$55$1_0$146
;src\common.c:55: while(text[i]!='\0'){
	ld	c, a
	or	a, a
	jp	Z, 00120$
	C$common.c$59$1_0$146	= .
	.globl	C$common.c$59$1_0$146
;src\common.c:59: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
	push	de
	ld	l, e
	ld	h, d
	inc	hl
	pop	de
	inc	sp
	inc	sp
	push	hl
	ld	b, c
	ld	a, c
	sub	a, #0x41
	jr	C, 00115$
	ld	a, #0x5a
	sub	a, c
	jr	C, 00115$
	ld	a, b
	add	a, #0xc0
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jp	00116$
00115$:
	C$common.c$60$2_0$147	= .
	.globl	C$common.c$60$2_0$147
;src\common.c:60: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, c
	sub	a, #0x61
	jr	C, 00111$
	ld	a, #0x7a
	sub	a, c
	jr	C, 00111$
	ld	a, b
	add	a, #0xa0
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jr	00116$
00111$:
	C$common.c$61$2_0$147	= .
	.globl	C$common.c$61$2_0$147
;src\common.c:61: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
	ld	a, c
	sub	a, #0x30
	jr	C, 00107$
	ld	a, #0x39
	sub	a, c
	jr	C, 00107$
	ld	a, b
	add	a, #0xeb
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jr	00116$
00107$:
	C$common.c$67$3_0$148	= .
	.globl	C$common.c$67$3_0$148
;src\common.c:67: switch(text[i]){
	ld	a,c
	cp	a,#0x2e
	jr	Z, 00102$
	cp	a,#0x2f
	jr	Z, 00103$
	sub	a, #0x3a
	jr	NZ, 00104$
	C$common.c$68$4_0$149	= .
	.globl	C$common.c$68$4_0$149
;src\common.c:68: case ':': set_vram_byte(vramAddr++,38); break;
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	ld	a, #0x26
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jr	00116$
	C$common.c$69$4_0$149	= .
	.globl	C$common.c$69$4_0$149
;src\common.c:69: case '.': set_vram_byte(vramAddr++,43);break;
00102$:
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	ld	a, #0x2b
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jr	00116$
	C$common.c$70$4_0$149	= .
	.globl	C$common.c$70$4_0$149
;src\common.c:70: case '/': set_vram_byte(vramAddr++,40);break;
00103$:
	ld	c, e
	ld	b, d
	pop	de
	push	de
	push	de
	ld	a, #0x28
	push	af
	inc	sp
	push	bc
	call	_set_vram_byte
	add	sp, #3
	pop	de
	jr	00116$
	C$common.c$71$4_0$149	= .
	.globl	C$common.c$71$4_0$149
;src\common.c:71: default: vramAddr++; break;
00104$:
	pop	de
	push	de
	C$common.c$72$2_0$147	= .
	.globl	C$common.c$72$2_0$147
;src\common.c:72: }
00116$:
	C$common.c$76$2_0$147	= .
	.globl	C$common.c$76$2_0$147
;src\common.c:76: i++;
	ldhl	sp,	#2
	inc	(hl)
	jp	00118$
00120$:
	C$common.c$78$1_0$146	= .
	.globl	C$common.c$78$1_0$146
;src\common.c:78: VBK_REG=0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$common.c$80$1_0$146	= .
	.globl	C$common.c$80$1_0$146
;src\common.c:80: }
	add	sp, #3
	pop	hl
	pop	af
	jp	(hl)
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$82$1_0$152	= .
	.globl	C$common.c$82$1_0$152
;src\common.c:82: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$84$2_0$152	= .
	.globl	C$common.c$84$2_0$152
;src\common.c:84: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$86$3_0$153	= .
	.globl	C$common.c$86$3_0$153
;src\common.c:86: switch(i) 
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
	C$common.c$88$4_0$154	= .
	.globl	C$common.c$88$4_0$154
;src\common.c:88: case 0: 
00101$:
	C$common.c$89$4_0$154	= .
	.globl	C$common.c$89$4_0$154
;src\common.c:89: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$90$4_0$154	= .
	.globl	C$common.c$90$4_0$154
;src\common.c:90: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$91$4_0$154	= .
	.globl	C$common.c$91$4_0$154
;src\common.c:91: break;
	jr	00105$
	C$common.c$92$4_0$154	= .
	.globl	C$common.c$92$4_0$154
;src\common.c:92: case 1: 
00102$:
	C$common.c$93$4_0$154	= .
	.globl	C$common.c$93$4_0$154
;src\common.c:93: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$94$4_0$154	= .
	.globl	C$common.c$94$4_0$154
;src\common.c:94: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$95$4_0$154	= .
	.globl	C$common.c$95$4_0$154
;src\common.c:95: break;
	jr	00105$
	C$common.c$96$4_0$154	= .
	.globl	C$common.c$96$4_0$154
;src\common.c:96: case 2:
00103$:
	C$common.c$97$4_0$154	= .
	.globl	C$common.c$97$4_0$154
;src\common.c:97: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$98$4_0$154	= .
	.globl	C$common.c$98$4_0$154
;src\common.c:98: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$99$4_0$154	= .
	.globl	C$common.c$99$4_0$154
;src\common.c:99: break;
	jr	00105$
	C$common.c$100$4_0$154	= .
	.globl	C$common.c$100$4_0$154
;src\common.c:100: case 3:
00104$:
	C$common.c$101$4_0$154	= .
	.globl	C$common.c$101$4_0$154
;src\common.c:101: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$102$4_0$154	= .
	.globl	C$common.c$102$4_0$154
;src\common.c:102: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$104$3_0$153	= .
	.globl	C$common.c$104$3_0$153
;src\common.c:104: }
00105$:
	C$common.c$105$3_0$153	= .
	.globl	C$common.c$105$3_0$153
;src\common.c:105: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$84$2_0$152	= .
	.globl	C$common.c$84$2_0$152
;src\common.c:84: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$107$2_0$152	= .
	.globl	C$common.c$107$2_0$152
;src\common.c:107: }
	C$common.c$107$2_0$152	= .
	.globl	C$common.c$107$2_0$152
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$109$2_0$157	= .
	.globl	C$common.c$109$2_0$157
;src\common.c:109: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$111$2_0$157	= .
	.globl	C$common.c$111$2_0$157
;src\common.c:111: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$113$3_0$158	= .
	.globl	C$common.c$113$3_0$158
;src\common.c:113: switch(i) 
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
	C$common.c$115$4_0$159	= .
	.globl	C$common.c$115$4_0$159
;src\common.c:115: case 0: 
00101$:
	C$common.c$116$4_0$159	= .
	.globl	C$common.c$116$4_0$159
;src\common.c:116: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$117$4_0$159	= .
	.globl	C$common.c$117$4_0$159
;src\common.c:117: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$118$4_0$159	= .
	.globl	C$common.c$118$4_0$159
;src\common.c:118: break;
	jr	00105$
	C$common.c$119$4_0$159	= .
	.globl	C$common.c$119$4_0$159
;src\common.c:119: case 1: 
00102$:
	C$common.c$120$4_0$159	= .
	.globl	C$common.c$120$4_0$159
;src\common.c:120: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$121$4_0$159	= .
	.globl	C$common.c$121$4_0$159
;src\common.c:121: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$122$4_0$159	= .
	.globl	C$common.c$122$4_0$159
;src\common.c:122: break;
	jr	00105$
	C$common.c$123$4_0$159	= .
	.globl	C$common.c$123$4_0$159
;src\common.c:123: case 2:
00103$:
	C$common.c$124$4_0$159	= .
	.globl	C$common.c$124$4_0$159
;src\common.c:124: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$125$4_0$159	= .
	.globl	C$common.c$125$4_0$159
;src\common.c:125: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$126$4_0$159	= .
	.globl	C$common.c$126$4_0$159
;src\common.c:126: break;
	jr	00105$
	C$common.c$127$4_0$159	= .
	.globl	C$common.c$127$4_0$159
;src\common.c:127: case 3:
00104$:
	C$common.c$128$4_0$159	= .
	.globl	C$common.c$128$4_0$159
;src\common.c:128: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$129$4_0$159	= .
	.globl	C$common.c$129$4_0$159
;src\common.c:129: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$131$3_0$158	= .
	.globl	C$common.c$131$3_0$158
;src\common.c:131: }
00105$:
	C$common.c$132$3_0$158	= .
	.globl	C$common.c$132$3_0$158
;src\common.c:132: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$111$2_0$157	= .
	.globl	C$common.c$111$2_0$157
;src\common.c:111: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$134$2_0$157	= .
	.globl	C$common.c$134$2_0$157
;src\common.c:134: }
	C$common.c$134$2_0$157	= .
	.globl	C$common.c$134$2_0$157
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$136$2_0$162	= .
	.globl	C$common.c$136$2_0$162
;src\common.c:136: void fadeToWhite(uint8_t frames)
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$138$2_0$162	= .
	.globl	C$common.c$138$2_0$162
;src\common.c:138: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$140$3_0$163	= .
	.globl	C$common.c$140$3_0$163
;src\common.c:140: switch(i) 
	ld	a, #0x04
	sub	a, b
	jr	C, 00106$
	ld	e, b
	ld	d, #0x00
	ld	hl, #00129$
	add	hl, de
	add	hl, de
	C$common.c$142$4_0$164	= .
	.globl	C$common.c$142$4_0$164
;src\common.c:142: case 0: 
	jp	(hl)
00129$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$143$4_0$164	= .
	.globl	C$common.c$143$4_0$164
;src\common.c:143: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$144$4_0$164	= .
	.globl	C$common.c$144$4_0$164
;src\common.c:144: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$145$4_0$164	= .
	.globl	C$common.c$145$4_0$164
;src\common.c:145: break;
	jr	00106$
	C$common.c$146$4_0$164	= .
	.globl	C$common.c$146$4_0$164
;src\common.c:146: case 1: 
00102$:
	C$common.c$147$4_0$164	= .
	.globl	C$common.c$147$4_0$164
;src\common.c:147: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$148$4_0$164	= .
	.globl	C$common.c$148$4_0$164
;src\common.c:148: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$149$4_0$164	= .
	.globl	C$common.c$149$4_0$164
;src\common.c:149: break;
	jr	00106$
	C$common.c$150$4_0$164	= .
	.globl	C$common.c$150$4_0$164
;src\common.c:150: case 2:
00103$:
	C$common.c$151$4_0$164	= .
	.globl	C$common.c$151$4_0$164
;src\common.c:151: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$152$4_0$164	= .
	.globl	C$common.c$152$4_0$164
;src\common.c:152: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$153$4_0$164	= .
	.globl	C$common.c$153$4_0$164
;src\common.c:153: break;
	jr	00106$
	C$common.c$154$4_0$164	= .
	.globl	C$common.c$154$4_0$164
;src\common.c:154: case 3:
00104$:
	C$common.c$155$4_0$164	= .
	.globl	C$common.c$155$4_0$164
;src\common.c:155: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$156$4_0$164	= .
	.globl	C$common.c$156$4_0$164
;src\common.c:156: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$157$4_0$164	= .
	.globl	C$common.c$157$4_0$164
;src\common.c:157: break;
	jr	00106$
	C$common.c$158$4_0$164	= .
	.globl	C$common.c$158$4_0$164
;src\common.c:158: case 4:
00105$:
	C$common.c$159$4_0$164	= .
	.globl	C$common.c$159$4_0$164
;src\common.c:159: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$160$4_0$164	= .
	.globl	C$common.c$160$4_0$164
;src\common.c:160: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$162$3_0$163	= .
	.globl	C$common.c$162$3_0$163
;src\common.c:162: }
00106$:
	C$common.c$163$3_0$163	= .
	.globl	C$common.c$163$3_0$163
;src\common.c:163: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$138$2_0$162	= .
	.globl	C$common.c$138$2_0$162
;src\common.c:138: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$165$2_0$162	= .
	.globl	C$common.c$165$2_0$162
;src\common.c:165: }
	C$common.c$165$2_0$162	= .
	.globl	C$common.c$165$2_0$162
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$167$2_0$167	= .
	.globl	C$common.c$167$2_0$167
;src\common.c:167: void fadeFromWhite(uint8_t frames)
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$169$2_0$167	= .
	.globl	C$common.c$169$2_0$167
;src\common.c:169: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$171$3_0$168	= .
	.globl	C$common.c$171$3_0$168
;src\common.c:171: switch(i) 
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
	C$common.c$173$4_0$169	= .
	.globl	C$common.c$173$4_0$169
;src\common.c:173: case 0: 
00101$:
	C$common.c$174$4_0$169	= .
	.globl	C$common.c$174$4_0$169
;src\common.c:174: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$175$4_0$169	= .
	.globl	C$common.c$175$4_0$169
;src\common.c:175: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$176$4_0$169	= .
	.globl	C$common.c$176$4_0$169
;src\common.c:176: break;
	jr	00105$
	C$common.c$177$4_0$169	= .
	.globl	C$common.c$177$4_0$169
;src\common.c:177: case 1: 
00102$:
	C$common.c$178$4_0$169	= .
	.globl	C$common.c$178$4_0$169
;src\common.c:178: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$179$4_0$169	= .
	.globl	C$common.c$179$4_0$169
;src\common.c:179: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$180$4_0$169	= .
	.globl	C$common.c$180$4_0$169
;src\common.c:180: break;
	jr	00105$
	C$common.c$181$4_0$169	= .
	.globl	C$common.c$181$4_0$169
;src\common.c:181: case 2:
00103$:
	C$common.c$182$4_0$169	= .
	.globl	C$common.c$182$4_0$169
;src\common.c:182: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$183$4_0$169	= .
	.globl	C$common.c$183$4_0$169
;src\common.c:183: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$184$4_0$169	= .
	.globl	C$common.c$184$4_0$169
;src\common.c:184: break;
	jr	00105$
	C$common.c$185$4_0$169	= .
	.globl	C$common.c$185$4_0$169
;src\common.c:185: case 3:
00104$:
	C$common.c$186$4_0$169	= .
	.globl	C$common.c$186$4_0$169
;src\common.c:186: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$187$4_0$169	= .
	.globl	C$common.c$187$4_0$169
;src\common.c:187: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$189$3_0$168	= .
	.globl	C$common.c$189$3_0$168
;src\common.c:189: }
00105$:
	C$common.c$190$3_0$168	= .
	.globl	C$common.c$190$3_0$168
;src\common.c:190: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$169$2_0$167	= .
	.globl	C$common.c$169$2_0$167
;src\common.c:169: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$192$2_0$167	= .
	.globl	C$common.c$192$2_0$167
;src\common.c:192: }
	C$common.c$192$2_0$167	= .
	.globl	C$common.c$192$2_0$167
	XG$fadeFromWhite$0$0	= .
	.globl	XG$fadeFromWhite$0$0
	jr	00108$
	G$InvertColor$0$0	= .
	.globl	G$InvertColor$0$0
	C$common.c$194$2_0$170	= .
	.globl	C$common.c$194$2_0$170
;src\common.c:194: void InvertColor()
;	---------------------------------
; Function InvertColor
; ---------------------------------
_InvertColor::
	C$common.c$196$1_0$170	= .
	.globl	C$common.c$196$1_0$170
;src\common.c:196: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_BGP_REG + 0), a
	C$common.c$197$1_0$170	= .
	.globl	C$common.c$197$1_0$170
;src\common.c:197: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_OBP0_REG + 0), a
	C$common.c$198$1_0$170	= .
	.globl	C$common.c$198$1_0$170
;src\common.c:198: }
	C$common.c$198$1_0$170	= .
	.globl	C$common.c$198$1_0$170
	XG$InvertColor$0$0	= .
	.globl	XG$InvertColor$0$0
	ret
	G$ResetColor$0$0	= .
	.globl	G$ResetColor$0$0
	C$common.c$200$1_0$171	= .
	.globl	C$common.c$200$1_0$171
;src\common.c:200: void ResetColor()
;	---------------------------------
; Function ResetColor
; ---------------------------------
_ResetColor::
	C$common.c$202$1_0$171	= .
	.globl	C$common.c$202$1_0$171
;src\common.c:202: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$203$1_0$171	= .
	.globl	C$common.c$203$1_0$171
;src\common.c:203: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$204$1_0$171	= .
	.globl	C$common.c$204$1_0$171
;src\common.c:204: }
	C$common.c$204$1_0$171	= .
	.globl	C$common.c$204$1_0$171
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
Fcommon$__xinit_index$0_0$0 == .
__xinit__index:
	.db #0x00	;  0
	.area _CABS (ABS)
