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
	.globl _DrawTextWindow
	.globl _DrawText
	.globl _DrawNumberWindow
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$performantdelay$0$0	= .
	.globl	G$performantdelay$0$0
	C$common.c$13$0_0$136	= .
	.globl	C$common.c$13$0_0$136
;src\common.c:13: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
	C$common.c$15$2_0$136	= .
	.globl	C$common.c$15$2_0$136
;src\common.c:15: for (uint8_t i = 0; i < numloops; i++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
	C$common.c$17$3_0$137	= .
	.globl	C$common.c$17$3_0$137
;src\common.c:17: wait_vbl_done();
	call	_wait_vbl_done
	C$common.c$15$2_0$136	= .
	.globl	C$common.c$15$2_0$136
;src\common.c:15: for (uint8_t i = 0; i < numloops; i++)
	inc	b
	C$common.c$19$2_0$136	= .
	.globl	C$common.c$19$2_0$136
;src\common.c:19: }
	C$common.c$19$2_0$136	= .
	.globl	C$common.c$19$2_0$136
	XG$performantdelay$0$0	= .
	.globl	XG$performantdelay$0$0
	jr	00103$
	G$DrawNumber$0$0	= .
	.globl	G$DrawNumber$0$0
	C$common.c$22$2_0$139	= .
	.globl	C$common.c$22$2_0$139
;src\common.c:22: void DrawNumber(uint8_t x, uint8_t y, uint16_t number, uint8_t digits)
;	---------------------------------
; Function DrawNumber
; ---------------------------------
_DrawNumber::
	add	sp, #-20
	ldhl	sp,	#16
	ld	(hl-), a
	ld	(hl), e
	C$common.c$24$2_0$139	= .
	.globl	C$common.c$24$2_0$139
;src\common.c:24: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
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
	C$common.c$27$1_0$139	= .
	.globl	C$common.c$27$1_0$139
;src\common.c:27: uitoa(number, buffer, 10);
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
	C$common.c$30$1_1$140	= .
	.globl	C$common.c$30$1_1$140
;src\common.c:30: uint8_t *vramAddr = get_bkg_xy_addr(x,y); 
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
	C$common.c$33$1_1$140	= .
	.globl	C$common.c$33$1_1$140
;src\common.c:33: uint8_t len = strlen(buffer);
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
	C$common.c$38$2_1$139	= .
	.globl	C$common.c$38$2_1$139
;src\common.c:38: for (uint8_t i=0; i<digits-len;i++)
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
	C$common.c$40$3_1$142	= .
	.globl	C$common.c$40$3_1$142
;src\common.c:40: set_vram_byte(vramAddr++, 283);
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
	C$common.c$38$2_1$141	= .
	.globl	C$common.c$38$2_1$141
;src\common.c:38: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#19
	inc	(hl)
	jr	00104$
00101$:
	C$common.c$45$2_1$139	= .
	.globl	C$common.c$45$2_1$139
;src\common.c:45: for (uint8_t i=0; i<len; i++)
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
	C$common.c$47$3_1$144	= .
	.globl	C$common.c$47$3_1$144
;src\common.c:47: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
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
	C$common.c$45$2_1$143	= .
	.globl	C$common.c$45$2_1$143
;src\common.c:45: for (uint8_t i=0; i<len; i++)
	inc	e
	jr	00107$
00109$:
	C$common.c$49$2_1$139	= .
	.globl	C$common.c$49$2_1$139
;src\common.c:49: }
	add	sp, #20
	pop	hl
	add	sp, #3
	jp	(hl)
	G$DrawNumberWindow$0$0	= .
	.globl	G$DrawNumberWindow$0$0
	C$common.c$51$2_1$146	= .
	.globl	C$common.c$51$2_1$146
;src\common.c:51: void DrawNumberWindow(uint8_t x, uint8_t y, uint16_t number, uint8_t digits)
;	---------------------------------
; Function DrawNumberWindow
; ---------------------------------
_DrawNumberWindow::
	add	sp, #-20
	ldhl	sp,	#16
	ld	(hl-), a
	ld	(hl), e
	C$common.c$53$2_0$146	= .
	.globl	C$common.c$53$2_0$146
;src\common.c:53: unsigned char buffer[8]={'0', '0', '0', '0', '0', '0', '0', '0'};
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
	C$common.c$56$1_0$146	= .
	.globl	C$common.c$56$1_0$146
;src\common.c:56: uitoa(number, buffer, 10);
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
	C$common.c$59$1_1$147	= .
	.globl	C$common.c$59$1_1$147
;src\common.c:59: uint8_t *vramAddr = get_win_xy_addr(x,y);
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_get_win_xy_addr
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
	C$common.c$61$1_1$147	= .
	.globl	C$common.c$61$1_1$147
;src\common.c:61: uint8_t len = strlen(buffer);
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
	C$common.c$66$2_1$146	= .
	.globl	C$common.c$66$2_1$146
;src\common.c:66: for (uint8_t i=0; i<digits-len;i++)
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
	C$common.c$68$3_1$149	= .
	.globl	C$common.c$68$3_1$149
;src\common.c:68: set_vram_byte(vramAddr++, 283);
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
	C$common.c$66$2_1$148	= .
	.globl	C$common.c$66$2_1$148
;src\common.c:66: for (uint8_t i=0; i<digits-len;i++)
	ldhl	sp,	#19
	inc	(hl)
	jr	00104$
00101$:
	C$common.c$73$2_1$146	= .
	.globl	C$common.c$73$2_1$146
;src\common.c:73: for (uint8_t i=0; i<len; i++)
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
	C$common.c$75$3_1$151	= .
	.globl	C$common.c$75$3_1$151
;src\common.c:75: set_vram_byte(vramAddr++, (buffer[i] -'0')+283);
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
	C$common.c$73$2_1$150	= .
	.globl	C$common.c$73$2_1$150
;src\common.c:73: for (uint8_t i=0; i<len; i++)
	inc	e
	jr	00107$
00109$:
	C$common.c$77$2_1$146	= .
	.globl	C$common.c$77$2_1$146
;src\common.c:77: }
	add	sp, #20
	pop	hl
	add	sp, #3
	jp	(hl)
	G$DrawText$0$0	= .
	.globl	G$DrawText$0$0
	C$common.c$79$2_1$153	= .
	.globl	C$common.c$79$2_1$153
;src\common.c:79: void DrawText(uint8_t x, uint8_t y, unsigned char *text ){
;	---------------------------------
; Function DrawText
; ---------------------------------
_DrawText::
	add	sp, #-3
	ld	b, a
	C$common.c$85$1_0$153	= .
	.globl	C$common.c$85$1_0$153
;src\common.c:85: uint8_t *vramAddr= get_bkg_xy_addr(x,y);
	ld	a, e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_bkg_xy_addr
	pop	hl
	C$common.c$87$1_0$153	= .
	.globl	C$common.c$87$1_0$153
;src\common.c:87: while(text[i]!='\0'){
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
	C$common.c$92$1_0$153	= .
	.globl	C$common.c$92$1_0$153
;src\common.c:92: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, (bc)
	C$common.c$87$1_0$153	= .
	.globl	C$common.c$87$1_0$153
;src\common.c:87: while(text[i]!='\0'){
	ld	c, a
	or	a, a
	jp	Z, 00120$
	C$common.c$91$1_0$153	= .
	.globl	C$common.c$91$1_0$153
;src\common.c:91: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
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
	C$common.c$92$2_0$154	= .
	.globl	C$common.c$92$2_0$154
;src\common.c:92: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
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
	C$common.c$93$2_0$154	= .
	.globl	C$common.c$93$2_0$154
;src\common.c:93: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
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
	C$common.c$99$3_0$155	= .
	.globl	C$common.c$99$3_0$155
;src\common.c:99: switch(text[i]){
	ld	a,c
	cp	a,#0x2e
	jr	Z, 00102$
	cp	a,#0x2f
	jr	Z, 00103$
	sub	a, #0x3a
	jr	NZ, 00104$
	C$common.c$100$4_0$156	= .
	.globl	C$common.c$100$4_0$156
;src\common.c:100: case ':': set_vram_byte(vramAddr++,38); break;
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
	C$common.c$101$4_0$156	= .
	.globl	C$common.c$101$4_0$156
;src\common.c:101: case '.': set_vram_byte(vramAddr++,43);break;
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
	C$common.c$102$4_0$156	= .
	.globl	C$common.c$102$4_0$156
;src\common.c:102: case '/': set_vram_byte(vramAddr++,40);break;
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
	C$common.c$103$4_0$156	= .
	.globl	C$common.c$103$4_0$156
;src\common.c:103: default: vramAddr++; break;
00104$:
	pop	de
	push	de
	C$common.c$104$2_0$154	= .
	.globl	C$common.c$104$2_0$154
;src\common.c:104: }
00116$:
	C$common.c$108$2_0$154	= .
	.globl	C$common.c$108$2_0$154
;src\common.c:108: i++;
	ldhl	sp,	#2
	inc	(hl)
	jp	00118$
00120$:
	C$common.c$110$1_0$153	= .
	.globl	C$common.c$110$1_0$153
;src\common.c:110: VBK_REG=0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$common.c$112$1_0$153	= .
	.globl	C$common.c$112$1_0$153
;src\common.c:112: }
	add	sp, #3
	pop	hl
	pop	af
	jp	(hl)
	G$DrawTextWindow$0$0	= .
	.globl	G$DrawTextWindow$0$0
	C$common.c$114$1_0$158	= .
	.globl	C$common.c$114$1_0$158
;src\common.c:114: void DrawTextWindow(uint8_t x, uint8_t y, unsigned char *text ){
;	---------------------------------
; Function DrawTextWindow
; ---------------------------------
_DrawTextWindow::
	add	sp, #-3
	ld	b, a
	C$common.c$120$1_0$158	= .
	.globl	C$common.c$120$1_0$158
;src\common.c:120: uint8_t *vramAddr= get_win_xy_addr(x,y);
	ld	a, e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_win_xy_addr
	pop	hl
	C$common.c$122$1_0$158	= .
	.globl	C$common.c$122$1_0$158
;src\common.c:122: while(text[i]!='\0'){
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
	C$common.c$127$1_0$158	= .
	.globl	C$common.c$127$1_0$158
;src\common.c:127: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
	ld	a, (bc)
	C$common.c$122$1_0$158	= .
	.globl	C$common.c$122$1_0$158
;src\common.c:122: while(text[i]!='\0'){
	ld	c, a
	or	a, a
	jp	Z, 00120$
	C$common.c$126$1_0$158	= .
	.globl	C$common.c$126$1_0$158
;src\common.c:126: if(text[i]>='A'&&text[i]<='Z')set_vram_byte(vramAddr++,1+(text[i]-'A'));
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
	C$common.c$127$2_0$159	= .
	.globl	C$common.c$127$2_0$159
;src\common.c:127: else if(text[i]>='a'&&text[i]<='z')set_vram_byte(vramAddr++,1+(text[i]-'a'));
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
	C$common.c$128$2_0$159	= .
	.globl	C$common.c$128$2_0$159
;src\common.c:128: else if(text[i]>='0'&&text[i]<='9')set_vram_byte(vramAddr++,27+(text[i]-'0'));
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
	C$common.c$134$3_0$160	= .
	.globl	C$common.c$134$3_0$160
;src\common.c:134: switch(text[i]){
	ld	a,c
	cp	a,#0x2e
	jr	Z, 00102$
	cp	a,#0x2f
	jr	Z, 00103$
	sub	a, #0x3a
	jr	NZ, 00104$
	C$common.c$135$4_0$161	= .
	.globl	C$common.c$135$4_0$161
;src\common.c:135: case ':': set_vram_byte(vramAddr++,38); break;
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
	C$common.c$136$4_0$161	= .
	.globl	C$common.c$136$4_0$161
;src\common.c:136: case '.': set_vram_byte(vramAddr++,43);break;
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
	C$common.c$137$4_0$161	= .
	.globl	C$common.c$137$4_0$161
;src\common.c:137: case '/': set_vram_byte(vramAddr++,40);break;
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
	C$common.c$138$4_0$161	= .
	.globl	C$common.c$138$4_0$161
;src\common.c:138: default: vramAddr++; break;
00104$:
	pop	de
	push	de
	C$common.c$139$2_0$159	= .
	.globl	C$common.c$139$2_0$159
;src\common.c:139: }
00116$:
	C$common.c$143$2_0$159	= .
	.globl	C$common.c$143$2_0$159
;src\common.c:143: i++;
	ldhl	sp,	#2
	inc	(hl)
	jp	00118$
00120$:
	C$common.c$145$1_0$158	= .
	.globl	C$common.c$145$1_0$158
;src\common.c:145: VBK_REG=0;
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$common.c$147$1_0$158	= .
	.globl	C$common.c$147$1_0$158
;src\common.c:147: }
	add	sp, #3
	pop	hl
	pop	af
	jp	(hl)
	G$fadeToBlack$0$0	= .
	.globl	G$fadeToBlack$0$0
	C$common.c$149$1_0$164	= .
	.globl	C$common.c$149$1_0$164
;src\common.c:149: void fadeToBlack(uint8_t frames)
;	---------------------------------
; Function fadeToBlack
; ---------------------------------
_fadeToBlack::
	ld	c, a
	C$common.c$151$2_0$164	= .
	.globl	C$common.c$151$2_0$164
;src\common.c:151: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$153$3_0$165	= .
	.globl	C$common.c$153$3_0$165
;src\common.c:153: switch(i) 
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
	C$common.c$155$4_0$166	= .
	.globl	C$common.c$155$4_0$166
;src\common.c:155: case 0: 
00101$:
	C$common.c$156$4_0$166	= .
	.globl	C$common.c$156$4_0$166
;src\common.c:156: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$157$4_0$166	= .
	.globl	C$common.c$157$4_0$166
;src\common.c:157: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$158$4_0$166	= .
	.globl	C$common.c$158$4_0$166
;src\common.c:158: break;
	jr	00105$
	C$common.c$159$4_0$166	= .
	.globl	C$common.c$159$4_0$166
;src\common.c:159: case 1: 
00102$:
	C$common.c$160$4_0$166	= .
	.globl	C$common.c$160$4_0$166
;src\common.c:160: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$161$4_0$166	= .
	.globl	C$common.c$161$4_0$166
;src\common.c:161: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$162$4_0$166	= .
	.globl	C$common.c$162$4_0$166
;src\common.c:162: break;
	jr	00105$
	C$common.c$163$4_0$166	= .
	.globl	C$common.c$163$4_0$166
;src\common.c:163: case 2:
00103$:
	C$common.c$164$4_0$166	= .
	.globl	C$common.c$164$4_0$166
;src\common.c:164: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$165$4_0$166	= .
	.globl	C$common.c$165$4_0$166
;src\common.c:165: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$166$4_0$166	= .
	.globl	C$common.c$166$4_0$166
;src\common.c:166: break;
	jr	00105$
	C$common.c$167$4_0$166	= .
	.globl	C$common.c$167$4_0$166
;src\common.c:167: case 3:
00104$:
	C$common.c$168$4_0$166	= .
	.globl	C$common.c$168$4_0$166
;src\common.c:168: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_BGP_REG + 0), a
	C$common.c$169$4_0$166	= .
	.globl	C$common.c$169$4_0$166
;src\common.c:169: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xff
	ldh	(_OBP0_REG + 0), a
	C$common.c$171$3_0$165	= .
	.globl	C$common.c$171$3_0$165
;src\common.c:171: }
00105$:
	C$common.c$172$3_0$165	= .
	.globl	C$common.c$172$3_0$165
;src\common.c:172: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$151$2_0$164	= .
	.globl	C$common.c$151$2_0$164
;src\common.c:151: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$174$2_0$164	= .
	.globl	C$common.c$174$2_0$164
;src\common.c:174: }
	C$common.c$174$2_0$164	= .
	.globl	C$common.c$174$2_0$164
	XG$fadeToBlack$0$0	= .
	.globl	XG$fadeToBlack$0$0
	jr	00108$
	G$fadeFromBlack$0$0	= .
	.globl	G$fadeFromBlack$0$0
	C$common.c$176$2_0$169	= .
	.globl	C$common.c$176$2_0$169
;src\common.c:176: void fadeFromBlack(uint8_t frames)
;	---------------------------------
; Function fadeFromBlack
; ---------------------------------
_fadeFromBlack::
	ld	c, a
	C$common.c$178$2_0$169	= .
	.globl	C$common.c$178$2_0$169
;src\common.c:178: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$180$3_0$170	= .
	.globl	C$common.c$180$3_0$170
;src\common.c:180: switch(i) 
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
	C$common.c$182$4_0$171	= .
	.globl	C$common.c$182$4_0$171
;src\common.c:182: case 0: 
00101$:
	C$common.c$183$4_0$171	= .
	.globl	C$common.c$183$4_0$171
;src\common.c:183: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_BGP_REG + 0), a
	C$common.c$184$4_0$171	= .
	.globl	C$common.c$184$4_0$171
;src\common.c:184: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
	ld	a, #0xfe
	ldh	(_OBP0_REG + 0), a
	C$common.c$185$4_0$171	= .
	.globl	C$common.c$185$4_0$171
;src\common.c:185: break;
	jr	00105$
	C$common.c$186$4_0$171	= .
	.globl	C$common.c$186$4_0$171
;src\common.c:186: case 1: 
00102$:
	C$common.c$187$4_0$171	= .
	.globl	C$common.c$187$4_0$171
;src\common.c:187: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_BGP_REG + 0), a
	C$common.c$188$4_0$171	= .
	.globl	C$common.c$188$4_0$171
;src\common.c:188: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK);
	ld	a, #0xf9
	ldh	(_OBP0_REG + 0), a
	C$common.c$189$4_0$171	= .
	.globl	C$common.c$189$4_0$171
;src\common.c:189: break;
	jr	00105$
	C$common.c$190$4_0$171	= .
	.globl	C$common.c$190$4_0$171
;src\common.c:190: case 2:
00103$:
	C$common.c$191$4_0$171	= .
	.globl	C$common.c$191$4_0$171
;src\common.c:191: BGP_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_BGP_REG + 0), a
	C$common.c$192$4_0$171	= .
	.globl	C$common.c$192$4_0$171
;src\common.c:192: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe5
	ldh	(_OBP0_REG + 0), a
	C$common.c$193$4_0$171	= .
	.globl	C$common.c$193$4_0$171
;src\common.c:193: break;
	jr	00105$
	C$common.c$194$4_0$171	= .
	.globl	C$common.c$194$4_0$171
;src\common.c:194: case 3:
00104$:
	C$common.c$195$4_0$171	= .
	.globl	C$common.c$195$4_0$171
;src\common.c:195: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$196$4_0$171	= .
	.globl	C$common.c$196$4_0$171
;src\common.c:196: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$198$3_0$170	= .
	.globl	C$common.c$198$3_0$170
;src\common.c:198: }
00105$:
	C$common.c$199$3_0$170	= .
	.globl	C$common.c$199$3_0$170
;src\common.c:199: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$178$2_0$169	= .
	.globl	C$common.c$178$2_0$169
;src\common.c:178: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$201$2_0$169	= .
	.globl	C$common.c$201$2_0$169
;src\common.c:201: }
	C$common.c$201$2_0$169	= .
	.globl	C$common.c$201$2_0$169
	XG$fadeFromBlack$0$0	= .
	.globl	XG$fadeFromBlack$0$0
	jr	00108$
	G$fadeToWhite$0$0	= .
	.globl	G$fadeToWhite$0$0
	C$common.c$203$2_0$174	= .
	.globl	C$common.c$203$2_0$174
;src\common.c:203: void fadeToWhite(uint8_t frames)
;	---------------------------------
; Function fadeToWhite
; ---------------------------------
_fadeToWhite::
	ld	c, a
	C$common.c$205$2_0$174	= .
	.globl	C$common.c$205$2_0$174
;src\common.c:205: for (uint8_t i = 0; i < 5; i++)
	ld	b, #0x00
00109$:
	ld	a, b
	sub	a, #0x05
	ret	NC
	C$common.c$207$3_0$175	= .
	.globl	C$common.c$207$3_0$175
;src\common.c:207: switch(i) 
	ld	a, #0x04
	sub	a, b
	jr	C, 00106$
	ld	e, b
	ld	d, #0x00
	ld	hl, #00129$
	add	hl, de
	add	hl, de
	C$common.c$209$4_0$176	= .
	.globl	C$common.c$209$4_0$176
;src\common.c:209: case 0: 
	jp	(hl)
00129$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
	jr	00105$
00101$:
	C$common.c$210$4_0$176	= .
	.globl	C$common.c$210$4_0$176
;src\common.c:210: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$211$4_0$176	= .
	.globl	C$common.c$211$4_0$176
;src\common.c:211: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$212$4_0$176	= .
	.globl	C$common.c$212$4_0$176
;src\common.c:212: break;
	jr	00106$
	C$common.c$213$4_0$176	= .
	.globl	C$common.c$213$4_0$176
;src\common.c:213: case 1: 
00102$:
	C$common.c$214$4_0$176	= .
	.globl	C$common.c$214$4_0$176
;src\common.c:214: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$215$4_0$176	= .
	.globl	C$common.c$215$4_0$176
;src\common.c:215: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$216$4_0$176	= .
	.globl	C$common.c$216$4_0$176
;src\common.c:216: break;
	jr	00106$
	C$common.c$217$4_0$176	= .
	.globl	C$common.c$217$4_0$176
;src\common.c:217: case 2:
00103$:
	C$common.c$218$4_0$176	= .
	.globl	C$common.c$218$4_0$176
;src\common.c:218: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$219$4_0$176	= .
	.globl	C$common.c$219$4_0$176
;src\common.c:219: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$220$4_0$176	= .
	.globl	C$common.c$220$4_0$176
;src\common.c:220: break;
	jr	00106$
	C$common.c$221$4_0$176	= .
	.globl	C$common.c$221$4_0$176
;src\common.c:221: case 3:
00104$:
	C$common.c$222$4_0$176	= .
	.globl	C$common.c$222$4_0$176
;src\common.c:222: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$223$4_0$176	= .
	.globl	C$common.c$223$4_0$176
;src\common.c:223: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$224$4_0$176	= .
	.globl	C$common.c$224$4_0$176
;src\common.c:224: break;
	jr	00106$
	C$common.c$225$4_0$176	= .
	.globl	C$common.c$225$4_0$176
;src\common.c:225: case 4:
00105$:
	C$common.c$226$4_0$176	= .
	.globl	C$common.c$226$4_0$176
;src\common.c:226: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_BGP_REG + 0), a
	C$common.c$227$4_0$176	= .
	.globl	C$common.c$227$4_0$176
;src\common.c:227: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_WHITE);
	xor	a, a
	ldh	(_OBP0_REG + 0), a
	C$common.c$229$3_0$175	= .
	.globl	C$common.c$229$3_0$175
;src\common.c:229: }
00106$:
	C$common.c$230$3_0$175	= .
	.globl	C$common.c$230$3_0$175
;src\common.c:230: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$205$2_0$174	= .
	.globl	C$common.c$205$2_0$174
;src\common.c:205: for (uint8_t i = 0; i < 5; i++)
	inc	b
	C$common.c$232$2_0$174	= .
	.globl	C$common.c$232$2_0$174
;src\common.c:232: }
	C$common.c$232$2_0$174	= .
	.globl	C$common.c$232$2_0$174
	XG$fadeToWhite$0$0	= .
	.globl	XG$fadeToWhite$0$0
	jr	00109$
	G$fadeFromWhite$0$0	= .
	.globl	G$fadeFromWhite$0$0
	C$common.c$234$2_0$179	= .
	.globl	C$common.c$234$2_0$179
;src\common.c:234: void fadeFromWhite(uint8_t frames)
;	---------------------------------
; Function fadeFromWhite
; ---------------------------------
_fadeFromWhite::
	ld	c, a
	C$common.c$236$2_0$179	= .
	.globl	C$common.c$236$2_0$179
;src\common.c:236: for (uint8_t i = 0; i < 4; i++)
	ld	b, #0x00
00108$:
	ld	a, b
	sub	a, #0x04
	ret	NC
	C$common.c$238$3_0$180	= .
	.globl	C$common.c$238$3_0$180
;src\common.c:238: switch(i) 
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
	C$common.c$240$4_0$181	= .
	.globl	C$common.c$240$4_0$181
;src\common.c:240: case 0: 
00101$:
	C$common.c$241$4_0$181	= .
	.globl	C$common.c$241$4_0$181
;src\common.c:241: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_BGP_REG + 0), a
	C$common.c$242$4_0$181	= .
	.globl	C$common.c$242$4_0$181
;src\common.c:242: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY);
	ld	a, #0x40
	ldh	(_OBP0_REG + 0), a
	C$common.c$243$4_0$181	= .
	.globl	C$common.c$243$4_0$181
;src\common.c:243: break;
	jr	00105$
	C$common.c$244$4_0$181	= .
	.globl	C$common.c$244$4_0$181
;src\common.c:244: case 1: 
00102$:
	C$common.c$245$4_0$181	= .
	.globl	C$common.c$245$4_0$181
;src\common.c:245: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_BGP_REG + 0), a
	C$common.c$246$4_0$181	= .
	.globl	C$common.c$246$4_0$181
;src\common.c:246: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY);
	ld	a, #0x90
	ldh	(_OBP0_REG + 0), a
	C$common.c$247$4_0$181	= .
	.globl	C$common.c$247$4_0$181
;src\common.c:247: break;
	jr	00105$
	C$common.c$248$4_0$181	= .
	.globl	C$common.c$248$4_0$181
;src\common.c:248: case 2:
00103$:
	C$common.c$249$4_0$181	= .
	.globl	C$common.c$249$4_0$181
;src\common.c:249: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd4
	ldh	(_BGP_REG + 0), a
	C$common.c$250$4_0$181	= .
	.globl	C$common.c$250$4_0$181
;src\common.c:250: OBP0_REG = DMG_PALETTE(DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_LITE_GRAY, DMG_BLACK);
	ld	a, #0xd5
	ldh	(_OBP0_REG + 0), a
	C$common.c$251$4_0$181	= .
	.globl	C$common.c$251$4_0$181
;src\common.c:251: break;
	jr	00105$
	C$common.c$252$4_0$181	= .
	.globl	C$common.c$252$4_0$181
;src\common.c:252: case 3:
00104$:
	C$common.c$253$4_0$181	= .
	.globl	C$common.c$253$4_0$181
;src\common.c:253: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$254$4_0$181	= .
	.globl	C$common.c$254$4_0$181
;src\common.c:254: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$256$3_0$180	= .
	.globl	C$common.c$256$3_0$180
;src\common.c:256: }
00105$:
	C$common.c$257$3_0$180	= .
	.globl	C$common.c$257$3_0$180
;src\common.c:257: performantdelay(frames);
	push	bc
	ld	a, c
	call	_performantdelay
	pop	bc
	C$common.c$236$2_0$179	= .
	.globl	C$common.c$236$2_0$179
;src\common.c:236: for (uint8_t i = 0; i < 4; i++)
	inc	b
	C$common.c$259$2_0$179	= .
	.globl	C$common.c$259$2_0$179
;src\common.c:259: }
	C$common.c$259$2_0$179	= .
	.globl	C$common.c$259$2_0$179
	XG$fadeFromWhite$0$0	= .
	.globl	XG$fadeFromWhite$0$0
	jr	00108$
	G$InvertColor$0$0	= .
	.globl	G$InvertColor$0$0
	C$common.c$261$2_0$182	= .
	.globl	C$common.c$261$2_0$182
;src\common.c:261: void InvertColor()
;	---------------------------------
; Function InvertColor
; ---------------------------------
_InvertColor::
	C$common.c$263$1_0$182	= .
	.globl	C$common.c$263$1_0$182
;src\common.c:263: BGP_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_BGP_REG + 0), a
	C$common.c$264$1_0$182	= .
	.globl	C$common.c$264$1_0$182
;src\common.c:264: OBP0_REG = DMG_PALETTE(DMG_BLACK, DMG_DARK_GRAY, DMG_LITE_GRAY, DMG_WHITE);
	ld	a, #0x1b
	ldh	(_OBP0_REG + 0), a
	C$common.c$265$1_0$182	= .
	.globl	C$common.c$265$1_0$182
;src\common.c:265: }
	C$common.c$265$1_0$182	= .
	.globl	C$common.c$265$1_0$182
	XG$InvertColor$0$0	= .
	.globl	XG$InvertColor$0$0
	ret
	G$ResetColor$0$0	= .
	.globl	G$ResetColor$0$0
	C$common.c$267$1_0$183	= .
	.globl	C$common.c$267$1_0$183
;src\common.c:267: void ResetColor()
;	---------------------------------
; Function ResetColor
; ---------------------------------
_ResetColor::
	C$common.c$269$1_0$183	= .
	.globl	C$common.c$269$1_0$183
;src\common.c:269: BGP_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$common.c$270$1_0$183	= .
	.globl	C$common.c$270$1_0$183
;src\common.c:270: OBP0_REG = DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK);
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
	C$common.c$271$1_0$183	= .
	.globl	C$common.c$271$1_0$183
;src\common.c:271: }
	C$common.c$271$1_0$183	= .
	.globl	C$common.c$271$1_0$183
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
