;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Sis_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Sis_Tiles
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
G$Sis_Tiles$0_0$0 == .
_Sis_Tiles:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x0d	; 13
	.db #0x0a	; 10
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x06	; 6
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x19	; 25
	.db #0x11	; 17
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0xe2	; 226
	.db #0x62	; 98	'b'
	.db #0xdd	; 221
	.db #0xd9	; 217
	.db #0x94	; 148
	.db #0x94	; 148
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0xa6	; 166
	.db #0xa4	; 164
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x53	; 83	'S'
	.db #0x53	; 83	'S'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x11	; 17
	.db #0x59	; 89	'Y'
	.db #0xee	; 238
	.db #0xee	; 238
	.db #0x11	; 17
	.db #0x30	; 48	'0'
	.db #0xc8	; 200
	.db #0xdb	; 219
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0xc6	; 198
	.db #0xc6	; 198
	.db #0x61	; 97	'a'
	.db #0x31	; 49	'1'
	.db #0x33	; 51	'3'
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xa1	; 161
	.db #0xe1	; 225
	.db #0x3e	; 62
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x74	; 116	't'
	.db #0xf4	; 244
	.db #0x23	; 35
	.db #0x23	; 35
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0xa0	; 160
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xdc	; 220
	.db #0xac	; 172
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0xf3	; 243
	.db #0xb1	; 177
	.db #0x41	; 65	'A'
	.db #0xc1	; 193
	.db #0x9f	; 159
	.db #0x8f	; 143
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x56	; 86	'V'
	.db #0x56	; 86	'V'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0xeb	; 235
	.db #0xf9	; 249
	.db #0x0b	; 11
	.db #0x19	; 25
	.db #0x77	; 119	'w'
	.db #0x76	; 118	'v'
	.db #0x83	; 131
	.db #0x82	; 130
	.db #0xff	; 255
	.db #0x7d	; 125
	.db #0x4c	; 76	'L'
	.db #0x48	; 72	'H'
	.db #0x58	; 88	'X'
	.db #0x5c	; 92
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x66	; 102	'f'
	.db #0x76	; 118	'v'
	.db #0x4a	; 74	'J'
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xf9	; 249
	.db #0xf8	; 248
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x62	; 98	'b'
	.db #0x62	; 98	'b'
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x92	; 146
	.db #0x92	; 146
	.db #0x6d	; 109	'm'
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x28	; 40
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xf0	; 240
	.db #0xb0	; 176
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0x30	; 48	'0'
	.db #0x98	; 152
	.db #0x98	; 152
	.db #0x8c	; 140
	.db #0x84	; 132
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0x66	; 102	'f'
	.db #0x3f	; 63
	.db #0xa9	; 169
	.db #0xa9	; 169
	.db #0x51	; 81	'Q'
	.db #0xd1	; 209
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x8c	; 140
	.db #0x88	; 136
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x82	; 130
	.db #0x9a	; 154
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x03	; 3
	.db #0x83	; 131
	.db #0x1a	; 26
	.db #0x1a	; 26
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x69	; 105	'i'
	.db #0x69	; 105	'i'
	.db #0x85	; 133
	.db #0x84	; 132
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x25	; 37
	.db #0x2d	; 45
	.db #0x52	; 82	'R'
	.db #0x72	; 114	'r'
	.db #0xa7	; 167
	.db #0xab	; 171
	.db #0x9d	; 157
	.db #0xb7	; 183
	.db #0x86	; 134
	.db #0x86	; 134
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x54	; 84	'T'
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc6	; 198
	.db #0xc4	; 196
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0x8a	; 138
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x4a	; 74	'J'
	.db #0x89	; 137
	.db #0x83	; 131
	.db #0x21	; 33
	.db #0xa3	; 163
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x30	; 48	'0'
	.db #0x48	; 72	'H'
	.db #0xc8	; 200
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x31	; 49	'1'
	.db #0x33	; 51	'3'
	.db #0x23	; 35
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x1e	; 30
	.db #0xcc	; 204
	.db #0xe1	; 225
	.db #0xb7	; 183
	.db #0xe9	; 233
	.area _INITIALIZER
	.area _CABS (ABS)
