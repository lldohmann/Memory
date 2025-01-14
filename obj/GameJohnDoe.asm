;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module GameJohnDoe
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_GameJohnDoeUpdate
	.globl _GameJohnDoeUpdate
	.globl b___func_GameJohnDoeUpdate
	.globl ___func_GameJohnDoeUpdate
	.globl b_GameJohnDoeSetup
	.globl _GameJohnDoeSetup
	.globl b___func_GameJohnDoeSetup
	.globl ___func_GameJohnDoeSetup
	.globl _scanline_isr
	.globl b___func_const_bank_ID_John
	.globl ___func_const_bank_ID_John
	.globl _ResetColor
	.globl _InvertColor
	.globl _fadeFromWhite
	.globl _fadeToWhite
	.globl _fadeFromBlack
	.globl _fadeToBlack
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _set_interrupts
	.globl _joypad
	.globl _scanline_offsets
	.globl _invert_b
	.globl _wabble
	.globl _scanline_normal_tbl
	.globl _scanline_offsets_tbl
	.globl _const_bank_ID_John
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
G$invert_b$0_0$0==.
_invert_b::
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
	.area _CODE_1
	G$__func_const_bank_ID_John$0$0	= .
	.globl	G$__func_const_bank_ID_John$0$0
	C$GameJohnDoe.c$10$0_0$137	= .
	.globl	C$GameJohnDoe.c$10$0_0$137
;src\GameJohnDoe.c:10: BANKREF(const_bank_ID_John)
;	---------------------------------
; Function __func_const_bank_ID_John
; ---------------------------------
	b___func_const_bank_ID_John	= 1
___func_const_bank_ID_John::
	.local b___func_const_bank_ID_John 
	___bank_const_bank_ID_John = b___func_const_bank_ID_John 
	.globl ___bank_const_bank_ID_John 
	G$scanline_isr$0$0	= .
	.globl	G$scanline_isr$0$0
	C$GameJohnDoe.c$21$1_0$139	= .
	.globl	C$GameJohnDoe.c$21$1_0$139
;src\GameJohnDoe.c:21: void scanline_isr(void) CRITICAL INTERRUPT {
;	---------------------------------
; Function scanline_isr
; ---------------------------------
_scanline_isr::
	push	af
	push bc
	push de
	push hl
	C$GameJohnDoe.c$22$1_0$139	= .
	.globl	C$GameJohnDoe.c$22$1_0$139
;src\GameJohnDoe.c:22: SCX_REG = scanline_offsets[LY_REG & (uint8_t)7];
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
	C$GameJohnDoe.c$23$1_0$139	= .
	.globl	C$GameJohnDoe.c$23$1_0$139
;src\GameJohnDoe.c:23: }
	pop	hl
	pop de
	pop bc
	pop af
	C$GameJohnDoe.c$23$1_0$139	= .
	.globl	C$GameJohnDoe.c$23$1_0$139
	XG$scanline_isr$0$0	= .
	.globl	XG$scanline_isr$0$0
	reti
G$const_bank_ID_John$0_0$0 == .
_const_bank_ID_John:
	.db #0x01	; 1
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
	G$__func_GameJohnDoeSetup$0$0	= .
	.globl	G$__func_GameJohnDoeSetup$0$0
	C$GameJohnDoe.c$33$1_0$141	= .
	.globl	C$GameJohnDoe.c$33$1_0$141
;src\GameJohnDoe.c:33: BANKREF(GameJohnDoeSetup)
;	---------------------------------
; Function __func_GameJohnDoeSetup
; ---------------------------------
	b___func_GameJohnDoeSetup	= 1
___func_GameJohnDoeSetup::
	.local b___func_GameJohnDoeSetup 
	___bank_GameJohnDoeSetup = b___func_GameJohnDoeSetup 
	.globl ___bank_GameJohnDoeSetup 
	G$GameJohnDoeSetup$0$0	= .
	.globl	G$GameJohnDoeSetup$0$0
	C$GameJohnDoe.c$34$1_0$143	= .
	.globl	C$GameJohnDoe.c$34$1_0$143
;src\GameJohnDoe.c:34: void GameJohnDoeSetup(void) BANKED
;	---------------------------------
; Function GameJohnDoeSetup
; ---------------------------------
	b_GameJohnDoeSetup	= 1
_GameJohnDoeSetup::
;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
	xor	a, a
	ldh	(_SCX_REG + 0), a
	xor	a, a
	ldh	(_SCY_REG + 0), a
	C$GameJohnDoe.c$37$1_0$143	= .
	.globl	C$GameJohnDoe.c$37$1_0$143
;src\GameJohnDoe.c:37: set_bkg_data(0, 79, JohnDoe_Tiles);
	ld	de, #_JohnDoe_Tiles
	push	de
	ld	hl, #0x4f00
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$GameJohnDoe.c$38$1_0$143	= .
	.globl	C$GameJohnDoe.c$38$1_0$143
;src\GameJohnDoe.c:38: set_bkg_tiles(0, 0, JohnDoe_MapWidth, JohnDoe_MapHeight, JohnDoe_Map);
	ld	de, #_JohnDoe_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$GameJohnDoe.c$39$1_0$143	= .
	.globl	C$GameJohnDoe.c$39$1_0$143
;src\GameJohnDoe.c:39: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$GameJohnDoe.c$40$1_0$143	= .
	.globl	C$GameJohnDoe.c$40$1_0$143
;src\GameJohnDoe.c:40: fadeFromBlack(10);
	ld	a, #0x0a
	C$GameJohnDoe.c$41$1_0$143	= .
	.globl	C$GameJohnDoe.c$41$1_0$143
;src\GameJohnDoe.c:41: }
	C$GameJohnDoe.c$41$1_0$143	= .
	.globl	C$GameJohnDoe.c$41$1_0$143
	XG$GameJohnDoeSetup$0$0	= .
	.globl	XG$GameJohnDoeSetup$0$0
	jp	_fadeFromBlack
	G$__func_GameJohnDoeUpdate$0$0	= .
	.globl	G$__func_GameJohnDoeUpdate$0$0
	C$GameJohnDoe.c$43$1_0$148	= .
	.globl	C$GameJohnDoe.c$43$1_0$148
;src\GameJohnDoe.c:43: BANKREF(GameJohnDoeUpdate)
;	---------------------------------
; Function __func_GameJohnDoeUpdate
; ---------------------------------
	b___func_GameJohnDoeUpdate	= 1
___func_GameJohnDoeUpdate::
	.local b___func_GameJohnDoeUpdate 
	___bank_GameJohnDoeUpdate = b___func_GameJohnDoeUpdate 
	.globl ___bank_GameJohnDoeUpdate 
	G$GameJohnDoeUpdate$0$0	= .
	.globl	G$GameJohnDoeUpdate$0$0
	C$GameJohnDoe.c$44$1_0$150	= .
	.globl	C$GameJohnDoe.c$44$1_0$150
;src\GameJohnDoe.c:44: uint8_t GameJohnDoeUpdate(void) BANKED
;	---------------------------------
; Function GameJohnDoeUpdate
; ---------------------------------
	b_GameJohnDoeUpdate	= 1
_GameJohnDoeUpdate::
	C$GameJohnDoe.c$46$1_0$150	= .
	.globl	C$GameJohnDoe.c$46$1_0$150
;src\GameJohnDoe.c:46: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$GameJohnDoe.c$47$1_0$150	= .
	.globl	C$GameJohnDoe.c$47$1_0$150
;src\GameJohnDoe.c:47: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$GameJohnDoe.c$49$1_0$150	= .
	.globl	C$GameJohnDoe.c$49$1_0$150
;src\GameJohnDoe.c:49: switch (joypadCurrent){
	ld	a, (hl)
	sub	a, #0x10
	jr	Z, 00105$
	ld	a, (#_joypadCurrent)
	sub	a, #0x18
	jr	Z, 00101$
	ld	a, (#_joypadCurrent)
	sub	a, #0x20
	jr	Z, 00106$
	ld	a, (#_joypadCurrent)
	sub	a, #0x40
	jr	Z, 00111$
	ld	a, (#_joypadCurrent)
	sub	a, #0x80
	jr	Z, 00107$
	jr	00112$
	C$GameJohnDoe.c$50$2_0$151	= .
	.globl	C$GameJohnDoe.c$50$2_0$151
;src\GameJohnDoe.c:50: case J_DOWN|J_A:
00101$:
	C$GameJohnDoe.c$51$2_0$151	= .
	.globl	C$GameJohnDoe.c$51$2_0$151
;src\GameJohnDoe.c:51: if (invert_b == FALSE)
	ld	a, (#_invert_b)
	or	a, a
	jr	NZ, 00103$
	C$GameJohnDoe.c$53$3_0$152	= .
	.globl	C$GameJohnDoe.c$53$3_0$152
;src\GameJohnDoe.c:53: InvertColor();
	call	_InvertColor
	C$GameJohnDoe.c$54$3_0$152	= .
	.globl	C$GameJohnDoe.c$54$3_0$152
;src\GameJohnDoe.c:54: invert_b = TRUE;
	ld	hl, #_invert_b
	ld	(hl), #0x01
	jr	00113$
00103$:
	C$GameJohnDoe.c$57$3_0$153	= .
	.globl	C$GameJohnDoe.c$57$3_0$153
;src\GameJohnDoe.c:57: ResetColor();
	call	_ResetColor
	C$GameJohnDoe.c$58$3_0$153	= .
	.globl	C$GameJohnDoe.c$58$3_0$153
;src\GameJohnDoe.c:58: invert_b = FALSE;
	ld	hl, #_invert_b
	ld	(hl), #0x00
	C$GameJohnDoe.c$60$2_0$151	= .
	.globl	C$GameJohnDoe.c$60$2_0$151
;src\GameJohnDoe.c:60: break;
	jr	00113$
	C$GameJohnDoe.c$61$2_0$151	= .
	.globl	C$GameJohnDoe.c$61$2_0$151
;src\GameJohnDoe.c:61: case J_A:
00105$:
	C$GameJohnDoe.c$62$2_0$151	= .
	.globl	C$GameJohnDoe.c$62$2_0$151
;src\GameJohnDoe.c:62: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$GameJohnDoe.c$63$2_0$151	= .
	.globl	C$GameJohnDoe.c$63$2_0$151
;src\GameJohnDoe.c:63: fadeFromBlack(10);
	ld	a, #0x0a
	call	_fadeFromBlack
	C$GameJohnDoe.c$64$2_0$151	= .
	.globl	C$GameJohnDoe.c$64$2_0$151
;src\GameJohnDoe.c:64: break;
	jr	00113$
	C$GameJohnDoe.c$65$2_0$151	= .
	.globl	C$GameJohnDoe.c$65$2_0$151
;src\GameJohnDoe.c:65: case J_B:
00106$:
	C$GameJohnDoe.c$66$2_0$151	= .
	.globl	C$GameJohnDoe.c$66$2_0$151
;src\GameJohnDoe.c:66: fadeToWhite(10);
	ld	a, #0x0a
	call	_fadeToWhite
	C$GameJohnDoe.c$67$2_0$151	= .
	.globl	C$GameJohnDoe.c$67$2_0$151
;src\GameJohnDoe.c:67: fadeFromWhite(10);
	ld	a, #0x0a
	call	_fadeFromWhite
	C$GameJohnDoe.c$68$2_0$151	= .
	.globl	C$GameJohnDoe.c$68$2_0$151
;src\GameJohnDoe.c:68: break;
	jr	00113$
	C$GameJohnDoe.c$69$2_0$151	= .
	.globl	C$GameJohnDoe.c$69$2_0$151
;src\GameJohnDoe.c:69: case J_START:
00107$:
	C$GameJohnDoe.c$70$2_0$151	= .
	.globl	C$GameJohnDoe.c$70$2_0$151
;src\GameJohnDoe.c:70: if (wabble == FALSE)
	ld	a, (#_wabble)
	or	a, a
	jr	NZ, 00109$
	C$GameJohnDoe.c$73$3_0$154	= .
	.globl	C$GameJohnDoe.c$73$3_0$154
;src\GameJohnDoe.c:73: STAT_REG = STATF_MODE00;
	ld	a, #0x08
	ldh	(_STAT_REG + 0), a
	C$GameJohnDoe.c$74$3_0$154	= .
	.globl	C$GameJohnDoe.c$74$3_0$154
;src\GameJohnDoe.c:74: set_interrupts(VBL_IFLAG | LCD_IFLAG);
	ld	a, #0x03
	call	_set_interrupts
	C$GameJohnDoe.c$76$3_0$154	= .
	.globl	C$GameJohnDoe.c$76$3_0$154
;src\GameJohnDoe.c:76: wabble = TRUE;
	ld	hl, #_wabble
	ld	(hl), #0x01
	jr	00113$
00109$:
	C$GameJohnDoe.c$80$3_0$155	= .
	.globl	C$GameJohnDoe.c$80$3_0$155
;src\GameJohnDoe.c:80: wabble = FALSE;
	ld	hl, #_wabble
	ld	(hl), #0x00
	C$GameJohnDoe.c$82$2_0$151	= .
	.globl	C$GameJohnDoe.c$82$2_0$151
;src\GameJohnDoe.c:82: break;
	jr	00113$
	C$GameJohnDoe.c$83$2_0$151	= .
	.globl	C$GameJohnDoe.c$83$2_0$151
;src\GameJohnDoe.c:83: case J_SELECT:
00111$:
	C$GameJohnDoe.c$84$2_0$151	= .
	.globl	C$GameJohnDoe.c$84$2_0$151
;src\GameJohnDoe.c:84: fadeToBlack(10);
	ld	a, #0x0a
	call	_fadeToBlack
	C$GameJohnDoe.c$85$2_0$151	= .
	.globl	C$GameJohnDoe.c$85$2_0$151
;src\GameJohnDoe.c:85: return GAMETITLE;
	ld	a, #0x01
	ret
	C$GameJohnDoe.c$86$2_0$151	= .
	.globl	C$GameJohnDoe.c$86$2_0$151
;src\GameJohnDoe.c:86: default:
00112$:
	C$GameJohnDoe.c$87$2_0$151	= .
	.globl	C$GameJohnDoe.c$87$2_0$151
;src\GameJohnDoe.c:87: scanline_offsets = &scanline_offsets_tbl[(uint8_t)(sys_time >> 2) & 0x07u];
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
	C$GameJohnDoe.c$88$1_0$150	= .
	.globl	C$GameJohnDoe.c$88$1_0$150
;src\GameJohnDoe.c:88: }
00113$:
	C$GameJohnDoe.c$90$1_0$150	= .
	.globl	C$GameJohnDoe.c$90$1_0$150
;src\GameJohnDoe.c:90: return GAMEJOHNDOE;
	ld	a, #0x03
	C$GameJohnDoe.c$91$1_0$150	= .
	.globl	C$GameJohnDoe.c$91$1_0$150
;src\GameJohnDoe.c:91: }
	C$GameJohnDoe.c$91$1_0$150	= .
	.globl	C$GameJohnDoe.c$91$1_0$150
	XG$GameJohnDoeUpdate$0$0	= .
	.globl	XG$GameJohnDoeUpdate$0$0
	ret
	.area _CODE_1
	.area _INITIALIZER
FGameJohnDoe$__xinit_wabble$0_0$0 == .
__xinit__wabble:
	.db #0x00	;  0
FGameJohnDoe$__xinit_invert_b$0_0$0 == .
__xinit__invert_b:
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
