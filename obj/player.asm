;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module player
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.area _CODE
	G$PlayerUpdate$0$0	= .
	.globl	G$PlayerUpdate$0$0
	C$player.c$9$0_0$137	= .
	.globl	C$player.c$9$0_0$137
;src\player.c:9: void PlayerUpdate(struct player *ptr)
;	---------------------------------
; Function PlayerUpdate
; ---------------------------------
_PlayerUpdate::
	ld	c, e
	ld	b, d
	C$player.c$12$1_0$137	= .
	.globl	C$player.c$12$1_0$137
;src\player.c:12: switch (ptr->playerState)
	ld	hl, #0x0007
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ret	NZ
	C$player.c$15$2_0$138	= .
	.globl	C$player.c$15$2_0$138
;src\player.c:15: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
	C$player.c$16$2_0$138	= .
	.globl	C$player.c$16$2_0$138
;src\player.c:16: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
	C$player.c$15$1_0$137	= .
	.globl	C$player.c$15$1_0$137
;src\player.c:15: joypadPrevious = joypadCurrent;
	ld	e, (hl)
	C$player.c$20$1_0$137	= .
	.globl	C$player.c$20$1_0$137
;src\player.c:20: ptr->playerDirection = up;
	ld	hl, #0x0006
	add	hl, bc
	C$player.c$17$2_0$138	= .
	.globl	C$player.c$17$2_0$138
;src\player.c:17: if (joypadCurrent & J_UP)
	bit	2, e
	jr	Z, 00111$
	C$player.c$20$3_0$139	= .
	.globl	C$player.c$20$3_0$139
;src\player.c:20: ptr->playerDirection = up;
	ld	(hl), #0x01
	ret
00111$:
	C$player.c$22$2_0$138	= .
	.globl	C$player.c$22$2_0$138
;src\player.c:22: else if (joypadCurrent & J_DOWN)
	bit	3, e
	jr	Z, 00108$
	C$player.c$25$3_0$140	= .
	.globl	C$player.c$25$3_0$140
;src\player.c:25: ptr->playerDirection = down;
	ld	(hl), #0x00
	ret
00108$:
	C$player.c$27$2_0$138	= .
	.globl	C$player.c$27$2_0$138
;src\player.c:27: else if (joypadCurrent & J_RIGHT)
	bit	0, e
	jr	Z, 00105$
	C$player.c$30$3_0$141	= .
	.globl	C$player.c$30$3_0$141
;src\player.c:30: ptr->playerDirection = right;
	ld	(hl), #0x02
	ret
00105$:
	C$player.c$32$2_0$138	= .
	.globl	C$player.c$32$2_0$138
;src\player.c:32: else if (joypadCurrent & J_LEFT)
	bit	1, e
	ret	Z
	C$player.c$35$3_0$142	= .
	.globl	C$player.c$35$3_0$142
;src\player.c:35: ptr->playerDirection = left;
	ld	(hl), #0x03
	C$player.c$41$1_0$137	= .
	.globl	C$player.c$41$1_0$137
;src\player.c:41: }
	C$player.c$42$1_0$137	= .
	.globl	C$player.c$42$1_0$137
;src\player.c:42: }
	C$player.c$42$1_0$137	= .
	.globl	C$player.c$42$1_0$137
	XG$PlayerUpdate$0$0	= .
	.globl	XG$PlayerUpdate$0$0
	ret
	G$DrawPlayer$0$0	= .
	.globl	G$DrawPlayer$0$0
	C$player.c$69$1_0$144	= .
	.globl	C$player.c$69$1_0$144
;src\player.c:69: void DrawPlayer(struct player *ptr)
;	---------------------------------
; Function DrawPlayer
; ---------------------------------
_DrawPlayer::
	add	sp, #-3
	C$player.c$73$1_0$144	= .
	.globl	C$player.c$73$1_0$144
;src\player.c:73: switch (ptr->playerDirection)
	ld	hl, #0x0006
	add	hl, de
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	C$player.c$76$1_0$144	= .
	.globl	C$player.c$76$1_0$144
;src\player.c:76: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (bc)
	C$player.c$73$1_0$144	= .
	.globl	C$player.c$73$1_0$144
;src\player.c:73: switch (ptr->playerDirection)
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
	C$player.c$75$2_0$145	= .
	.globl	C$player.c$75$2_0$145
;src\player.c:75: case up:
00101$:
;src\player.c:76: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 2) + 1
	ld	a,	(hl-)
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, (hl)
	ld	d, a
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
	C$player.c$77$2_0$145	= .
	.globl	C$player.c$77$2_0$145
;src\player.c:77: break;
	jp	00112$
	C$player.c$78$2_0$145	= .
	.globl	C$player.c$78$2_0$145
;src\player.c:78: case down:
00102$:
;src\player.c:79: move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
	ld	hl, #_mouse_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ldhl	sp,	#1
	ld	a, (hl+)
	push	af
	inc	sp
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
	C$player.c$80$2_0$145	= .
	.globl	C$player.c$80$2_0$145
;src\player.c:80: break;
	jr	00112$
	C$player.c$81$2_0$145	= .
	.globl	C$player.c$81$2_0$145
;src\player.c:81: case right:
00103$:
;src\player.c:82: move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 6) + 1
	ld	a,	(hl-)
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, (hl)
	ld	d, a
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
	C$player.c$83$2_0$145	= .
	.globl	C$player.c$83$2_0$145
;src\player.c:83: break;
	jr	00112$
	C$player.c$84$2_0$145	= .
	.globl	C$player.c$84$2_0$145
;src\player.c:84: case left:
00104$:
;src\player.c:85: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 4) + 1
	ld	a,	(hl-)
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:169: __current_metasprite = metasprite;
	ld	e, (hl)
	ld	d, a
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:171: return __move_metasprite_vflip(base_sprite, x - 8, y);
	ld	a, c
	add	a, #0xf8
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0x00
	push	hl
	call	___move_metasprite_vflip
	add	sp, #3
	C$player.c$86$2_0$145	= .
	.globl	C$player.c$86$2_0$145
;src\player.c:86: break;
	jr	00112$
	C$player.c$87$2_0$145	= .
	.globl	C$player.c$87$2_0$145
;src\player.c:87: default:
00105$:
;src\player.c:88: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	ld	hl, #(_mouse_metasprites + 4) + 1
	ld	a,	(hl-)
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:169: __current_metasprite = metasprite;
	ld	e, (hl)
	ld	d, a
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:171: return __move_metasprite_vflip(base_sprite, x - 8, y);
	ld	a, c
	add	a, #0xf8
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0x00
	push	hl
	call	___move_metasprite_vflip
	add	sp, #3
	C$player.c$90$1_0$144	= .
	.globl	C$player.c$90$1_0$144
;src\player.c:90: }
00112$:
	C$player.c$91$1_0$144	= .
	.globl	C$player.c$91$1_0$144
;src\player.c:91: }
	add	sp, #3
	C$player.c$91$1_0$144	= .
	.globl	C$player.c$91$1_0$144
	XG$DrawPlayer$0$0	= .
	.globl	XG$DrawPlayer$0$0
	ret
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
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
