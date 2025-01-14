;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module player
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _check_map
	.globl _returnCollisionValue
	.globl _joypad
	.globl _mouse_metasprites
	.globl _mouse_right1
	.globl _mouse_right0
	.globl _mouse_up
	.globl _mouse_down
	.globl _PlayerUpdate
	.globl _DrawPlayer
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
	.area _CODE_3
	G$check_map$0$0	= .
	.globl	G$check_map$0$0
	C$player.c$39$0_0$185	= .
	.globl	C$player.c$39$0_0$185
;src\player.c:39: char check_map(uint8_t map_num, uint8_t x_pos, uint8_t y_pos)
;	---------------------------------
; Function check_map
; ---------------------------------
_check_map::
	ld	c, e
	C$player.c$41$1_0$185	= .
	.globl	C$player.c$41$1_0$185
;src\player.c:41: if (map_num == 0) // HOME
	or	a, a
	jr	NZ, 00103$
	C$player.c$43$2_0$186	= .
	.globl	C$player.c$43$2_0$186
;src\player.c:43: returnCollisionValue(x_pos, y_pos);
	ldhl	sp,	#2
	ld	e, (hl)
	ld	a, c
	call	_returnCollisionValue
00103$:
	C$player.c$45$1_0$185	= .
	.globl	C$player.c$45$1_0$185
;src\player.c:45: } 
	pop	hl
	inc	sp
	jp	(hl)
G$mouse_down$0_0$0 == .
_mouse_down:
	.db #0xf0	; -16
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$mouse_up$0_0$0 == .
_mouse_up:
	.db #0xf0	; -16
	.db #0xf8	; -8
	.db #0x0c	; 12
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$mouse_right0$0_0$0 == .
_mouse_right0:
	.db #0xf0	; -16
	.db #0xf8	; -8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$mouse_right1$0_0$0 == .
_mouse_right1:
	.db #0xf0	; -16
	.db #0xf8	; -8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
G$mouse_metasprites$0_0$0 == .
_mouse_metasprites:
	.dw _mouse_down
	.dw _mouse_up
	.dw _mouse_right0
	.dw _mouse_right1
	G$PlayerUpdate$0$0	= .
	.globl	G$PlayerUpdate$0$0
	C$player.c$47$1_0$188	= .
	.globl	C$player.c$47$1_0$188
;src\player.c:47: void PlayerUpdate(struct player *ptr)
;	---------------------------------
; Function PlayerUpdate
; ---------------------------------
_PlayerUpdate::
	ld	c, e
	ld	b, d
	C$player.c$50$1_0$188	= .
	.globl	C$player.c$50$1_0$188
;src\player.c:50: switch (ptr->playerState)
	ld	hl, #0x000b
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ret	NZ
	C$player.c$53$2_0$189	= .
	.globl	C$player.c$53$2_0$189
;src\player.c:53: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$player.c$54$2_0$189	= .
	.globl	C$player.c$54$2_0$189
;src\player.c:54: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$player.c$55$1_0$188	= .
	.globl	C$player.c$55$1_0$188
;src\player.c:55: if (joypadCurrent & J_UP)
	ld	e, (hl)
	C$player.c$59$1_0$188	= .
	.globl	C$player.c$59$1_0$188
;src\player.c:59: ptr->playerDirection = up;
	ld	hl, #0x000a
	add	hl, bc
	C$player.c$55$2_0$189	= .
	.globl	C$player.c$55$2_0$189
;src\player.c:55: if (joypadCurrent & J_UP)
	bit	2, e
	jr	Z, 00111$
	C$player.c$59$3_0$190	= .
	.globl	C$player.c$59$3_0$190
;src\player.c:59: ptr->playerDirection = up;
	ld	(hl), #0x01
	ret
00111$:
	C$player.c$61$2_0$189	= .
	.globl	C$player.c$61$2_0$189
;src\player.c:61: else if (joypadCurrent & J_DOWN)
	bit	3, e
	jr	Z, 00108$
	C$player.c$64$3_0$191	= .
	.globl	C$player.c$64$3_0$191
;src\player.c:64: ptr->playerDirection = down;
	ld	(hl), #0x00
	ret
00108$:
	C$player.c$66$2_0$189	= .
	.globl	C$player.c$66$2_0$189
;src\player.c:66: else if (joypadCurrent & J_RIGHT)
	bit	0, e
	jr	Z, 00105$
	C$player.c$69$3_0$192	= .
	.globl	C$player.c$69$3_0$192
;src\player.c:69: ptr->playerDirection = right;
	ld	(hl), #0x02
	ret
00105$:
	C$player.c$71$2_0$189	= .
	.globl	C$player.c$71$2_0$189
;src\player.c:71: else if (joypadCurrent & J_LEFT)
	bit	1, e
	ret	Z
	C$player.c$74$3_0$193	= .
	.globl	C$player.c$74$3_0$193
;src\player.c:74: ptr->playerDirection = left;
	ld	(hl), #0x03
	C$player.c$80$1_0$188	= .
	.globl	C$player.c$80$1_0$188
;src\player.c:80: }
	C$player.c$81$1_0$188	= .
	.globl	C$player.c$81$1_0$188
;src\player.c:81: }
	C$player.c$81$1_0$188	= .
	.globl	C$player.c$81$1_0$188
	XG$PlayerUpdate$0$0	= .
	.globl	XG$PlayerUpdate$0$0
	ret
	G$DrawPlayer$0$0	= .
	.globl	G$DrawPlayer$0$0
	C$player.c$83$1_0$195	= .
	.globl	C$player.c$83$1_0$195
;src\player.c:83: void DrawPlayer(struct player *ptr)
;	---------------------------------
; Function DrawPlayer
; ---------------------------------
_DrawPlayer::
	add	sp, #-3
	C$player.c$87$1_0$195	= .
	.globl	C$player.c$87$1_0$195
;src\player.c:87: switch (ptr->playerDirection)
	ld	hl, #0x000a
	add	hl, de
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	C$player.c$90$1_0$195	= .
	.globl	C$player.c$90$1_0$195
;src\player.c:90: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (bc)
	C$player.c$87$1_0$195	= .
	.globl	C$player.c$87$1_0$195
;src\player.c:87: switch (ptr->playerDirection)
	ld	(hl-), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	ldhl	sp,	#0
	ld	a, (hl)
	dec	a
	jr	Z, 00101$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x02
	jr	Z, 00103$
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x03
	jr	Z, 00104$
	jp	00105$
	C$player.c$89$2_0$196	= .
	.globl	C$player.c$89$2_0$196
;src\player.c:89: case up:
00101$:
;src\player.c:90: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 2)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, b
	ld	e, c
	xor	a, a
	call	___move_metasprite
	C$player.c$91$2_0$196	= .
	.globl	C$player.c$91$2_0$196
;src\player.c:91: break;
	jp	00112$
	C$player.c$92$2_0$196	= .
	.globl	C$player.c$92$2_0$196
;src\player.c:92: case down:
00102$:
;src\player.c:93: move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
	ld	hl, #_mouse_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	e, (hl)
	ld	d, b
	xor	a, a
	call	___move_metasprite
	C$player.c$94$2_0$196	= .
	.globl	C$player.c$94$2_0$196
;src\player.c:94: break;
	jr	00112$
	C$player.c$95$2_0$196	= .
	.globl	C$player.c$95$2_0$196
;src\player.c:95: case right:
00103$:
;src\player.c:96: move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 6)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
	ld	d, b
	ld	e, c
	xor	a, a
	call	___move_metasprite
	C$player.c$97$2_0$196	= .
	.globl	C$player.c$97$2_0$196
;src\player.c:97: break;
	jr	00112$
	C$player.c$98$2_0$196	= .
	.globl	C$player.c$98$2_0$196
;src\player.c:98: case left:
00104$:
;src\player.c:99: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 4)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
	ld	d, b
	ld	a, c
	add	a, #0xf8
	ld	e, a
	xor	a, a
	call	___move_metasprite_vflip
	C$player.c$100$2_0$196	= .
	.globl	C$player.c$100$2_0$196
;src\player.c:100: break;
	jr	00112$
	C$player.c$101$2_0$196	= .
	.globl	C$player.c$101$2_0$196
;src\player.c:101: default:
00105$:
;src\player.c:102: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 4)
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;c:\gbdk\include\gb\metasprites.h:209: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;c:\gbdk\include\gb\metasprites.h:210: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:211: __current_base_prop = 0;
	ld	hl, #___current_base_prop
	ld	(hl), #0x00
;c:\gbdk\include\gb\metasprites.h:212: return __move_metasprite_vflip(base_sprite, (y << 8) | (uint8_t)(x - 8u));
	ld	d, b
	ld	a, c
	add	a, #0xf8
	ld	e, a
	xor	a, a
	call	___move_metasprite_vflip
	C$player.c$104$1_0$195	= .
	.globl	C$player.c$104$1_0$195
;src\player.c:104: }
00112$:
	C$player.c$105$1_0$195	= .
	.globl	C$player.c$105$1_0$195
;src\player.c:105: }
	add	sp, #3
	C$player.c$105$1_0$195	= .
	.globl	C$player.c$105$1_0$195
	XG$DrawPlayer$0$0	= .
	.globl	XG$DrawPlayer$0$0
	ret
	.area _CODE_3
	.area _INITIALIZER
	.area _CABS (ABS)
