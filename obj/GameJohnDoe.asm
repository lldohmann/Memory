;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module GameJohnDoe
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GameJohnDoeUpdate
	.globl _GameJohnDoeSetup
	.globl _scanline_isr
	.globl _fadeFromWhite
	.globl _fadeToWhite
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _set_interrupts
	.globl _joypad
	.globl _scanline_offsets
	.globl _wabble
	.globl _scanline_normal_tbl
	.globl _scanline_offsets_tbl
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
G$wabble$0_0$0==.
_wabble::
	.ds 1
G$scanline_offsets$0_0$0==.
_scanline_offsets::
	.ds 2
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
	G$scanline_isr$0$0	= .
	.globl	G$scanline_isr$0$0
	C$GameJohnDoe.c$15$0_0$104	= .
	.globl	C$GameJohnDoe.c$15$0_0$104
;src\GameJohnDoe.c:15: void scanline_isr() CRITICAL INTERRUPT {
;	---------------------------------
; Function scanline_isr
; ---------------------------------
_scanline_isr::
	push	af
	push bc
	push de
	push hl
	C$GameJohnDoe.c$16$1_0$104	= .
	.globl	C$GameJohnDoe.c$16$1_0$104
;src\GameJohnDoe.c:16: SCX_REG = scanline_offsets[LY_REG & (uint8_t)7];
	ldh	a, (_LY_REG + 0)
	and	a, #0x07
	ld	c, a
	ld	hl, #_scanline_offsets
	ld	a, (hl+)
	add	a, c
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ldh	(_SCX_REG + 0), a
	C$GameJohnDoe.c$17$1_0$104	= .
	.globl	C$GameJohnDoe.c$17$1_0$104
;src\GameJohnDoe.c:17: }
	pop	hl
	pop de
	pop bc
	pop af
	C$GameJohnDoe.c$17$1_0$104	= .
	.globl	C$GameJohnDoe.c$17$1_0$104
	XG$scanline_isr$0$0	= .
	.globl	XG$scanline_isr$0$0
	reti
G$scanline_offsets_tbl$0_0$0 == .
_scanline_offsets_tbl:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
G$scanline_normal_tbl$0_0$0 == .
_scanline_normal_tbl:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	G$GameJohnDoeSetup$0$0	= .
	.globl	G$GameJohnDoeSetup$0$0
	C$GameJohnDoe.c$27$1_0$105	= .
	.globl	C$GameJohnDoe.c$27$1_0$105
;src\GameJohnDoe.c:27: void GameJohnDoeSetup()
;	---------------------------------
; Function GameJohnDoeSetup
; ---------------------------------
_GameJohnDoeSetup::
	C$GameJohnDoe.c$29$1_0$105	= .
	.globl	C$GameJohnDoe.c$29$1_0$105
;src\GameJohnDoe.c:29: set_bkg_data(0, 79, JohnDoe_Tiles);
	ld	de, #_JohnDoe_Tiles
	push	de
	ld	hl, #0x4f00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$GameJohnDoe.c$30$1_0$105	= .
	.globl	C$GameJohnDoe.c$30$1_0$105
;src\GameJohnDoe.c:30: set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
	ld	de, #_JohnDoe_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$GameJohnDoe.c$31$1_0$105	= .
	.globl	C$GameJohnDoe.c$31$1_0$105
;src\GameJohnDoe.c:31: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$GameJohnDoe.c$32$1_0$105	= .
	.globl	C$GameJohnDoe.c$32$1_0$105
;src\GameJohnDoe.c:32: fadeFromBlack(10);
	ld	a, #0x0a
	C$GameJohnDoe.c$33$1_0$105	= .
	.globl	C$GameJohnDoe.c$33$1_0$105
;src\GameJohnDoe.c:33: }
	C$GameJohnDoe.c$33$1_0$105	= .
	.globl	C$GameJohnDoe.c$33$1_0$105
	XG$GameJohnDoeSetup$0$0	= .
	.globl	XG$GameJohnDoeSetup$0$0
	jp	_fadeFromBlack
	G$GameJohnDoeUpdate$0$0	= .
	.globl	G$GameJohnDoeUpdate$0$0
	C$GameJohnDoe.c$35$1_0$106	= .
	.globl	C$GameJohnDoe.c$35$1_0$106
;src\GameJohnDoe.c:35: uint8_t GameJohnDoeUpdate()
;	---------------------------------
; Function GameJohnDoeUpdate
; ---------------------------------
_GameJohnDoeUpdate::
	C$GameJohnDoe.c$37$1_0$106	= .
	.globl	C$GameJohnDoe.c$37$1_0$106
;src\GameJohnDoe.c:37: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$GameJohnDoe.c$38$1_0$106	= .
	.globl	C$GameJohnDoe.c$38$1_0$106
;src\GameJohnDoe.c:38: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$GameJohnDoe.c$40$1_0$106	= .
	.globl	C$GameJohnDoe.c$40$1_0$106
;src\GameJohnDoe.c:40: if (joypadCurrent & J_A)
	bit	4, (hl)
	jr	Z, 00102$
	C$GameJohnDoe.c$42$2_0$107	= .
	.globl	C$GameJohnDoe.c$42$2_0$107
;src\GameJohnDoe.c:42: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$GameJohnDoe.c$43$2_0$107	= .
	.globl	C$GameJohnDoe.c$43$2_0$107
;src\GameJohnDoe.c:43: fadeFromBlack(10);
	ld	a, #0x0a
	call	_fadeFromBlack
00102$:
	C$GameJohnDoe.c$45$1_0$106	= .
	.globl	C$GameJohnDoe.c$45$1_0$106
;src\GameJohnDoe.c:45: if (joypadCurrent & J_B)
	ld	a, (#_joypadCurrent)
	bit	5, a
	jr	Z, 00104$
	C$GameJohnDoe.c$47$2_0$108	= .
	.globl	C$GameJohnDoe.c$47$2_0$108
;src\GameJohnDoe.c:47: fadeToWhite(10);
	ld	a, #0x0a
	call	_fadeToWhite
	C$GameJohnDoe.c$48$2_0$108	= .
	.globl	C$GameJohnDoe.c$48$2_0$108
;src\GameJohnDoe.c:48: fadeFromWhite(10);
	ld	a, #0x0a
	call	_fadeFromWhite
00104$:
	C$GameJohnDoe.c$50$1_0$106	= .
	.globl	C$GameJohnDoe.c$50$1_0$106
;src\GameJohnDoe.c:50: if (joypadCurrent & J_START)
	ld	a, (#_joypadCurrent)
	rlca
	jr	NC, 00109$
	C$GameJohnDoe.c$52$2_0$109	= .
	.globl	C$GameJohnDoe.c$52$2_0$109
;src\GameJohnDoe.c:52: if (wabble == FALSE)
	ld	a, (#_wabble)
	or	a, a
	jr	NZ, 00106$
	C$GameJohnDoe.c$55$3_0$110	= .
	.globl	C$GameJohnDoe.c$55$3_0$110
;src\GameJohnDoe.c:55: STAT_REG = STATF_MODE00;
	ld	a, #0x08
	ldh	(_STAT_REG + 0), a
	C$GameJohnDoe.c$56$3_0$110	= .
	.globl	C$GameJohnDoe.c$56$3_0$110
;src\GameJohnDoe.c:56: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
	C$GameJohnDoe.c$58$3_0$110	= .
	.globl	C$GameJohnDoe.c$58$3_0$110
;src\GameJohnDoe.c:58: wabble = TRUE;
	ld	hl, #_wabble
	ld	(hl), #0x01
	jr	00109$
00106$:
	C$GameJohnDoe.c$62$3_0$111	= .
	.globl	C$GameJohnDoe.c$62$3_0$111
;src\GameJohnDoe.c:62: wabble = FALSE;
	ld	hl, #_wabble
	ld	(hl), #0x00
00109$:
	C$GameJohnDoe.c$65$1_0$106	= .
	.globl	C$GameJohnDoe.c$65$1_0$106
;src\GameJohnDoe.c:65: if (joypadCurrent & J_SELECT)
	ld	a, (#_joypadCurrent)
	bit	6, a
	jr	Z, 00111$
	C$GameJohnDoe.c$67$2_0$112	= .
	.globl	C$GameJohnDoe.c$67$2_0$112
;src\GameJohnDoe.c:67: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$GameJohnDoe.c$68$2_0$112	= .
	.globl	C$GameJohnDoe.c$68$2_0$112
;src\GameJohnDoe.c:68: return GAMETITLE;
	ld	a, #0x01
	ret
00111$:
	C$GameJohnDoe.c$72$1_0$106	= .
	.globl	C$GameJohnDoe.c$72$1_0$106
;src\GameJohnDoe.c:72: scanline_offsets = &scanline_offsets_tbl[(uint8_t)(sys_time >> 2) & 0x07u];
	ld	hl, #_sys_time
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	srl	b
	rr	c
	srl	b
	rr	c
	ld	a, c
	and	a, #0x07
	ld	b, #0x00
	add	a, #<(_scanline_offsets_tbl)
	ld	c, a
	ld	a, b
	adc	a, #>(_scanline_offsets_tbl)
	ld	hl, #_scanline_offsets
	ld	(hl), c
	inc	hl
	ld	(hl), a
	C$GameJohnDoe.c$74$1_0$106	= .
	.globl	C$GameJohnDoe.c$74$1_0$106
;src\GameJohnDoe.c:74: return GAMEJOHNDOE;
	ld	a, #0x03
	C$GameJohnDoe.c$75$1_0$106	= .
	.globl	C$GameJohnDoe.c$75$1_0$106
;src\GameJohnDoe.c:75: }
	C$GameJohnDoe.c$75$1_0$106	= .
	.globl	C$GameJohnDoe.c$75$1_0$106
	XG$GameJohnDoeUpdate$0$0	= .
	.globl	XG$GameJohnDoeUpdate$0$0
	ret
	.area _CODE
	.area _INITIALIZER
FGameJohnDoe$__xinit_wabble$0_0$0 == .
__xinit__wabble:
	.db #0x00	;  0
FGameJohnDoe$__xinit_scanline_offsets$0_0$0 == .
__xinit__scanline_offsets:
	.dw _scanline_offsets_tbl
	.area _CABS (ABS)
	.org 0x0048
FGameJohnDoe$__ISR_VECTOR_STAT$0_0$0 == .
___ISR_VECTOR_STAT:
	.db #0xc3	; 195
	.dw _scanline_isr
