;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Ghost_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Ghost_Tiles
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
G$Ghost_Tiles$0_0$0==.
_Ghost_Tiles::
	.ds 320
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
	.area _INITIALIZER
FGhost_Tiles$__xinit_Ghost_Tiles$0_0$0 == .
__xinit__Ghost_Tiles:
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x55	; 85	'U'
	.db #0x56	; 86	'V'
	.db #0xbd	; 189
	.db #0xae	; 174
	.db #0xb5	; 181
	.db #0x8e	; 142
	.db #0x55	; 85	'U'
	.db #0x4e	; 78	'N'
	.db #0x3d	; 61
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x13	; 19
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x1a	; 26
	.db #0x1c	; 28
	.db #0x26	; 38
	.db #0x38	; 56	'8'
	.db #0x4f	; 79	'O'
	.db #0x70	; 112	'p'
	.db #0x4f	; 79	'O'
	.db #0x60	; 96
	.db #0x47	; 71	'G'
	.db #0x60	; 96
	.db #0x27	; 39
	.db #0x3b	; 59
	.db #0x1c	; 28
	.db #0x1c	; 28
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
	.db #0x07	; 7
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x4f	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x93	; 147
	.db #0xa2	; 162
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x05	; 5
	.db #0x73	; 115	's'
	.db #0x03	; 3
	.db #0x7f	; 127
	.db #0x06	; 6
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x00	; 0
	.db #0x78	; 120	'x'
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x67	; 103	'g'
	.db #0xa7	; 167
	.db #0xb9	; 185
	.db #0xe8	; 232
	.db #0xeb	; 235
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x1f	; 31
	.db #0x7f	; 127
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x3c	; 60
	.db #0x03	; 3
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbe	; 190
	.db #0x01	; 1
	.db #0x9b	; 155
	.db #0x87	; 135
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
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
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0xf8	; 248
	.db #0xe4	; 228
	.db #0x1c	; 28
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0x9d	; 157
	.db #0x13	; 19
	.db #0x0d	; 13
	.db #0x0b	; 11
	.db #0x4e	; 78	'N'
	.db #0x49	; 73	'I'
	.db #0x9e	; 158
	.db #0x19	; 25
	.db #0xfe	; 254
	.db #0x31	; 49	'1'
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x83	; 131
	.db #0x78	; 120	'x'
	.db #0xc6	; 198
	.db #0xe2	; 226
	.db #0x9a	; 154
	.db #0x0e	; 14
	.db #0xef	; 239
	.db #0xbd	; 189
	.db #0xbe	; 190
	.db #0xf9	; 249
	.db #0xfe	; 254
	.db #0xe7	; 231
	.db #0xf9	; 249
	.db #0x1f	; 31
	.db #0xe6	; 230
	.db #0xff	; 255
	.db #0x08	; 8
	.db #0xfe	; 254
	.db #0xf1	; 241
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xbd	; 189
	.db #0x82	; 130
	.db #0x9b	; 155
	.db #0x87	; 135
	.db #0x44	; 68	'D'
	.db #0x4c	; 76	'L'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x4a	; 74	'J'
	.db #0xca	; 202
	.db #0x5f	; 95
	.db #0xd5	; 213
	.db #0xaf	; 175
	.db #0xb1	; 177
	.db #0x6e	; 110	'n'
	.db #0xf2	; 242
	.db #0x7c	; 124
	.db #0xe4	; 228
	.db #0x78	; 120	'x'
	.db #0xc8	; 200
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0x74	; 116	't'
	.db #0x0c	; 12
	.db #0x34	; 52	'4'
	.db #0x0c	; 12
	.db #0xc8	; 200
	.db #0xd8	; 216
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
	.area _CABS (ABS)
