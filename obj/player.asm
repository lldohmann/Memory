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
	.globl _joypadPrevious
	.globl _joypadCurrent
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
_joypadCurrent::
	.ds 1
_joypadPrevious::
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
;src\player.c:13: void PlayerUpdate(struct player *ptr)
;	---------------------------------
; Function PlayerUpdate
; ---------------------------------
_PlayerUpdate::
	add	sp, #-4
	ld	c, e
	ld	b, d
;src\player.c:16: switch (ptr->playerState)
	ld	hl, #0x0007
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	NZ,00115$
;src\player.c:19: joypadPrevious = joypadCurrent;
	ld	a, (#_joypadCurrent)
	ld	(#_joypadPrevious),a
;src\player.c:20: joypadCurrent = joypad();
	call	_joypad
	ld	hl, #_joypadCurrent
	ld	(hl), a
;src\player.c:19: joypadPrevious = joypadCurrent;
	ld	e, (hl)
;src\player.c:23: ptr->y -= 1;
	ld	hl, #0x0002
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
;src\player.c:24: ptr->playerDirection = up;
	ld	hl, #0x0006
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;src\player.c:21: if (joypadCurrent & J_UP)
	bit	2, e
	jr	Z, 00111$
;src\player.c:23: ptr->y -= 1;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	dec	bc
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;src\player.c:24: ptr->playerDirection = up;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
	jr	00115$
00111$:
;src\player.c:26: else if (joypadCurrent & J_DOWN)
	bit	3, e
	jr	Z, 00108$
;src\player.c:28: ptr->y += 1;
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	inc	bc
	pop	hl
	push	hl
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;src\player.c:29: ptr->playerDirection = down;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	jr	00115$
00108$:
;src\player.c:31: else if (joypadCurrent & J_RIGHT)
	bit	0, e
	jr	Z, 00105$
;src\player.c:33: ptr->x += 1;
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,	(hl-)
;	spillPairReg hl
	ld	e, (hl)
	ld	d, a
	inc	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src\player.c:34: ptr->playerDirection = right;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x02
	jr	00115$
00105$:
;src\player.c:36: else if (joypadCurrent & J_LEFT)
	bit	1, e
	jr	Z, 00115$
;src\player.c:38: ptr->x -= 1;
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,	(hl-)
;	spillPairReg hl
	ld	e, (hl)
	ld	d, a
	dec	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;src\player.c:39: ptr->playerDirection = left;
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x03
;src\player.c:45: }
00115$:
;src\player.c:46: }
	add	sp, #4
	ret
;src\player.c:73: void DrawPlayer(struct player *ptr)
;	---------------------------------
; Function DrawPlayer
; ---------------------------------
_DrawPlayer::
	add	sp, #-3
;src\player.c:76: switch (ptr->playerDirection)
	ld	hl, #0x0006
	add	hl, de
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
;src\player.c:79: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
	ld	a, (de)
	ldhl	sp,	#2
	ld	(hl-), a
	ld	a, (bc)
;src\player.c:76: switch (ptr->playerDirection)
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
;src\player.c:78: case up:
00101$:
;src\player.c:79: move_metasprite(mouse_metasprites[1], 0, 0, ptr->x, ptr->y);
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
;src\player.c:80: break;
	jp	00112$
;src\player.c:81: case down:
00102$:
;src\player.c:82: move_metasprite(mouse_metasprites[0], 0, 0, ptr->x, ptr->y);
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
;src\player.c:83: break;
	jr	00112$
;src\player.c:84: case right:
00103$:
;src\player.c:85: move_metasprite(mouse_metasprites[3], 0, 0, ptr->x, ptr->y);
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
;src\player.c:86: break;
	jr	00112$
;src\player.c:87: case left:
00104$:
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
;src\player.c:89: break;
	jr	00112$
;src\player.c:90: default:
00105$:
;src\player.c:91: move_metasprite_vflip(mouse_metasprites[2], 0, 0, ptr->x, ptr->y);
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
;src\player.c:93: }
00112$:
;src\player.c:94: }
	add	sp, #3
	ret
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
_mouse_metasprites:
	.dw _mouse_down
	.dw _mouse_up
	.dw _mouse_right0
	.dw _mouse_right1
	.area _CODE
	.area _INITIALIZER
__xinit__joypadCurrent:
	.db #0x00	; 0
__xinit__joypadPrevious:
	.db #0x00	; 0
	.area _CABS (ABS)
