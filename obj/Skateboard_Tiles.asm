;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Skateboard_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Skateboard_Tiles
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
	.area _CODE
G$Skateboard_Tiles$0_0$0 == .
_Skateboard_Tiles:
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x4f	; 79	'O'
	.db #0x75	; 117	'u'
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x13	; 19
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x3c	; 60
	.db #0x23	; 35
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0xe4	; 228
	.db #0x5c	; 92
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x48	; 72	'H'
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xfc	; 252
	.db #0x7f	; 127
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0xb1	; 177
	.db #0xa2	; 162
	.db #0x78	; 120	'x'
	.db #0x6a	; 106	'j'
	.db #0x3c	; 60
	.db #0x37	; 55	'7'
	.db #0x26	; 38
	.db #0x3b	; 59
	.db #0x91	; 145
	.db #0x9f	; 159
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x0b	; 11
	.db #0xfb	; 251
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xa2	; 162
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0x3c	; 60
	.db #0x64	; 100	'd'
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x83	; 131
	.db #0xff	; 255
	.db #0x8f	; 143
	.db #0xfc	; 252
	.db #0x7f	; 127
	.db #0x70	; 112	'p'
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x90	; 144
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x24	; 36
	.db #0x3f	; 63
	.db #0x22	; 34
	.db #0x3f	; 63
	.db #0x93	; 147
	.db #0x9f	; 159
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x0b	; 11
	.db #0xfb	; 251
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xa2	; 162
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfc	; 252
	.db #0x44	; 68	'D'
	.db #0xf8	; 248
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x70	; 112	'p'
	.db #0x90	; 144
	.db #0x38	; 56	'8'
	.db #0xc8	; 200
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x78	; 120	'x'
	.db #0x87	; 135
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x18	; 24
	.db #0x17	; 23
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x3c	; 60
	.db #0x23	; 35
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0xc2	; 194
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x30	; 48	'0'
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0x38	; 56	'8'
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x80	; 128
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
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
