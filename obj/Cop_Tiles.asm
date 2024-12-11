;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Cop_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Cop_Tiles
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
G$Cop_Tiles$0_0$0 == .
_Cop_Tiles:
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
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x1e	; 30
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xd0	; 208
	.db #0x90	; 144
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x34	; 52	'4'
	.db #0x1c	; 28
	.db #0x6e	; 110	'n'
	.db #0x26	; 38
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0xb3	; 179
	.db #0xa3	; 163
	.db #0xac	; 172
	.db #0xa4	; 164
	.db #0xc8	; 200
	.db #0x48	; 72	'H'
	.db #0xd8	; 216
	.db #0xda	; 218
	.db #0x3f	; 63
	.db #0x7b	; 123
	.db #0x47	; 71	'G'
	.db #0x4e	; 78	'N'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x38	; 56	'8'
	.db #0x78	; 120	'x'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xc8	; 200
	.db #0x8c	; 140
	.db #0x56	; 86	'V'
	.db #0x16	; 22
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0xc1	; 193
	.db #0xc3	; 195
	.db #0x47	; 71	'G'
	.db #0x47	; 71	'G'
	.db #0xc2	; 194
	.db #0xa2	; 162
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc6	; 198
	.db #0x87	; 135
	.db #0x8a	; 138
	.db #0x88	; 136
	.db #0xdb	; 219
	.db #0x91	; 145
	.db #0x6e	; 110	'n'
	.db #0x6e	; 110	'n'
	.db #0x74	; 116	't'
	.db #0x5c	; 92
	.db #0x47	; 71	'G'
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x4f	; 79	'O'
	.db #0x71	; 113	'q'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0x0b	; 11
	.db #0x67	; 103	'g'
	.db #0x67	; 103	'g'
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x5c	; 92
	.db #0x2c	; 44
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0xc4	; 196
	.db #0x84	; 132
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
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
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
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
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0xf2	; 242
	.db #0xf2	; 242
	.db #0xf1	; 241
	.db #0x91	; 145
	.db #0x63	; 99	'c'
	.db #0x61	; 97	'a'
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x3c	; 60
	.db #0x0c	; 12
	.db #0xfa	; 250
	.db #0xfa	; 250
	.db #0xf9	; 249
	.db #0xf5	; 245
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xda	; 218
	.db #0xda	; 218
	.db #0x79	; 121	'y'
	.db #0x11	; 17
	.db #0x81	; 129
	.db #0x05	; 5
	.db #0x29	; 41
	.db #0xad	; 173
	.db #0x8a	; 138
	.db #0xc2	; 194
	.db #0x06	; 6
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0xc9	; 201
	.db #0x19	; 25
	.db #0x09	; 9
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0xef	; 239
	.db #0xee	; 238
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x90	; 144
	.db #0xd0	; 208
	.db #0xe1	; 225
	.db #0xe1	; 225
	.db #0xc2	; 194
	.db #0xc6	; 198
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0xc3	; 195
	.db #0xc5	; 197
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x38	; 56	'8'
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xe1	; 225
	.db #0xc5	; 197
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0xe9	; 233
	.db #0x41	; 65	'A'
	.db #0xb1	; 177
	.db #0xf0	; 240
	.db #0x91	; 145
	.db #0x90	; 144
	.db #0x19	; 25
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x9f	; 159
	.db #0xdf	; 223
	.db #0x71	; 113	'q'
	.db #0x70	; 112	'p'
	.db #0x5f	; 95
	.db #0x5f	; 95
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x98	; 152
	.db #0xc8	; 200
	.db #0x58	; 88	'X'
	.db #0x48	; 72	'H'
	.db #0x88	; 136
	.db #0x48	; 72	'H'
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0xfe	; 254
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
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xb0	; 176
	.db #0xe0	; 224
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0xd0	; 208
	.db #0x90	; 144
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xac	; 172
	.db #0xa4	; 164
	.db #0xc8	; 200
	.db #0x48	; 72	'H'
	.db #0xd8	; 216
	.db #0xda	; 218
	.db #0x3f	; 63
	.db #0x7b	; 123
	.db #0x47	; 71	'G'
	.db #0x4e	; 78	'N'
	.db #0xc4	; 196
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x83	; 131
	.db #0x82	; 130
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x5c	; 92
	.db #0x28	; 40
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x30	; 48	'0'
	.db #0x14	; 20
	.db #0xe4	; 228
	.db #0xe4	; 228
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x0d	; 13
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0xcc	; 204
	.db #0x8c	; 140
	.db #0x78	; 120	'x'
	.db #0x74	; 116	't'
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
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
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x38	; 56	'8'
	.db #0x27	; 39
	.db #0x25	; 37
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xe1	; 225
	.db #0xc5	; 197
	.db #0x45	; 69	'E'
	.db #0x49	; 73	'I'
	.db #0xe9	; 233
	.db #0x41	; 65	'A'
	.db #0xb1	; 177
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x36	; 54	'6'
	.db #0x22	; 34
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0xc6	; 198
	.db #0x82	; 130
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x80	; 128
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
	.area _INITIALIZER
	.area _CABS (ABS)
