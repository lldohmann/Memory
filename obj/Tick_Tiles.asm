;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Tick_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Tick_Tiles
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
	.area _CODE_5
	.area _CODE_5
G$Tick_Tiles$0_0$0 == .
_Tick_Tiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x03	; 3
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
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x1d	; 29
	.db #0x2f	; 47
	.db #0x3e	; 62
	.db #0x4c	; 76	'L'
	.db #0x48	; 72	'H'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0xcc	; 204
	.db #0xe8	; 232
	.db #0xe5	; 229
	.db #0x6d	; 109	'm'
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x1b	; 27
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x85	; 133
	.db #0x07	; 7
	.db #0xe5	; 229
	.db #0xc6	; 198
	.db #0x3e	; 62
	.db #0xb9	; 185
	.db #0xa9	; 169
	.db #0xfe	; 254
	.db #0x6a	; 106	'j'
	.db #0x7d	; 125
	.db #0x39	; 57	'9'
	.db #0x16	; 22
	.db #0x12	; 18
	.db #0x1d	; 29
	.db #0xf1	; 241
	.db #0xbe	; 190
	.db #0x50	; 80	'P'
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xb7	; 183
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x0c	; 12
	.db #0x05	; 5
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x13	; 19
	.db #0x13	; 19
	.db #0x36	; 54	'6'
	.db #0x1c	; 28
	.db #0x2c	; 44
	.db #0x38	; 56	'8'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xb0	; 176
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x52	; 82	'R'
	.db #0x4a	; 74	'J'
	.db #0x5a	; 90	'Z'
	.db #0x5a	; 90	'Z'
	.db #0x7e	; 126
	.db #0x24	; 36
	.db #0x66	; 102	'f'
	.db #0x5a	; 90	'Z'
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0x1c	; 28
	.db #0xbe	; 190
	.db #0x39	; 57	'9'
	.db #0x7d	; 125
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0x7b	; 123
	.db #0xff	; 255
	.db #0xef	; 239
	.db #0xf7	; 247
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x10	; 16
	.db #0xef	; 239
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0xc3	; 195
	.db #0x81	; 129
	.db #0x7e	; 126
	.db #0x7e	; 126
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
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x33	; 51	'3'
	.db #0x17	; 23
	.db #0xa7	; 167
	.db #0xb6	; 182
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0xd8	; 216
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0x70	; 112	'p'
	.db #0xa1	; 161
	.db #0xe0	; 224
	.db #0xa7	; 167
	.db #0x63	; 99	'c'
	.db #0x7c	; 124
	.db #0x9d	; 157
	.db #0x95	; 149
	.db #0x7f	; 127
	.db #0x56	; 86	'V'
	.db #0xbe	; 190
	.db #0x9c	; 156
	.db #0x68	; 104	'h'
	.db #0x48	; 72	'H'
	.db #0xb8	; 184
	.db #0x8f	; 143
	.db #0x7d	; 125
	.db #0x0a	; 10
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xed	; 237
	.db #0x10	; 16
	.db #0xd0	; 208
	.db #0x10	; 16
	.db #0xb0	; 176
	.db #0x30	; 48	'0'
	.db #0xa0	; 160
	.db #0xd0	; 208
	.db #0x70	; 112	'p'
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x6c	; 108	'l'
	.db #0x38	; 56	'8'
	.db #0x34	; 52	'4'
	.db #0x1c	; 28
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x0a	; 10
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0e	; 14
	.db #0x0d	; 13
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0xc0	; 192
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
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xb8	; 184
	.db #0xf4	; 244
	.db #0x7c	; 124
	.db #0x32	; 50	'2'
	.db #0x12	; 18
	.db #0x0c	; 12
	.db #0x0c	; 12
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
