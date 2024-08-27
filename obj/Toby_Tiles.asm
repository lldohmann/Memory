;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Toby_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Toby_Tiles
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
G$Toby_Tiles$0_0$0==.
_Toby_Tiles::
	.ds 432
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
FToby_Tiles$__xinit_Toby_Tiles$0_0$0 == .
__xinit__Toby_Tiles:
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
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x00	; 0
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x26	; 38
	.db #0x23	; 35
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x22	; 34
	.db #0x3e	; 62
	.db #0x2e	; 46
	.db #0x03	; 3
	.db #0x32	; 50	'2'
	.db #0x2e	; 46
	.db #0x2c	; 44
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x10	; 16
	.db #0x16	; 22
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0xc0	; 192
	.db #0x1c	; 28
	.db #0xbc	; 188
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x49	; 73	'I'
	.db #0x4e	; 78	'N'
	.db #0x8a	; 138
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x81	; 129
	.db #0x87	; 135
	.db #0x8f	; 143
	.db #0xfc	; 252
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0x60	; 96
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
	.db #0xcf	; 207
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x29	; 41
	.db #0x29	; 41
	.db #0x2d	; 45
	.db #0x2d	; 45
	.db #0x2a	; 42
	.db #0x2c	; 44
	.db #0x3b	; 59
	.db #0x3f	; 63
	.db #0x49	; 73	'I'
	.db #0x42	; 66	'B'
	.db #0x89	; 137
	.db #0x91	; 145
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x90	; 144
	.db #0x11	; 17
	.db #0x91	; 145
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0xc0	; 192
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
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x3a	; 58
	.db #0x3c	; 60
	.db #0x3f	; 63
	.db #0x3e	; 62
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0x38	; 56	'8'
	.db #0x70	; 112	'p'
	.db #0xec	; 236
	.db #0x68	; 104	'h'
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x12	; 18
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x34	; 52	'4'
	.db #0x02	; 2
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x62	; 98	'b'
	.db #0x12	; 18
	.db #0x33	; 51	'3'
	.db #0xf2	; 242
	.db #0x3a	; 58
	.db #0x31	; 49	'1'
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0xe9	; 233
	.db #0xf1	; 241
	.db #0x11	; 17
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x4f	; 79	'O'
	.db #0xc7	; 199
	.db #0x81	; 129
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x63	; 99	'c'
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x88	; 136
	.db #0x0c	; 12
	.db #0x88	; 136
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0xcc	; 204
	.db #0xaa	; 170
	.db #0x8e	; 142
	.db #0xc9	; 201
	.db #0x55	; 85	'U'
	.db #0xc4	; 196
	.db #0x44	; 68	'D'
	.db #0xc2	; 194
	.db #0x44	; 68	'D'
	.db #0xc2	; 194
	.db #0x40	; 64
	.db #0x42	; 66	'B'
	.db #0x44	; 68	'D'
	.db #0x5e	; 94
	.db #0x7c	; 124
	.db #0x22	; 34
	.db #0x44	; 68	'D'
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x30	; 48	'0'
	.db #0x24	; 36
	.db #0x10	; 16
	.db #0x24	; 36
	.db #0x26	; 38
	.db #0x22	; 34
	.db #0x26	; 38
	.db #0x22	; 34
	.db #0x33	; 51	'3'
	.db #0x21	; 33
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xb0	; 176
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0x50	; 80	'P'
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x14	; 20
	.db #0x0c	; 12
	.db #0x94	; 148
	.db #0x1c	; 28
	.db #0xd4	; 212
	.db #0xa4	; 164
	.db #0x66	; 102	'f'
	.db #0xf2	; 242
	.db #0x1e	; 30
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
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x00	; 0
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)