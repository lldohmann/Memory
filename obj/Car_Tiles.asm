;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Car_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Car_Tiles
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
G$Car_Tiles$0_0$0 == .
_Car_Tiles:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x05	; 5
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x16	; 22
	.db #0x13	; 19
	.db #0x15	; 21
	.db #0x13	; 19
	.db #0x2f	; 47
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x77	; 119	'w'
	.db #0x56	; 86	'V'
	.db #0x77	; 119	'w'
	.db #0x54	; 84	'T'
	.db #0xbf	; 191
	.db #0xb0	; 176
	.db #0xfe	; 254
	.db #0xa0	; 160
	.db #0xf7	; 247
	.db #0xa0	; 160
	.db #0xef	; 239
	.db #0x80	; 128
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x4f	; 79	'O'
	.db #0x40	; 64
	.db #0x6f	; 111	'o'
	.db #0x40	; 64
	.db #0x67	; 103	'g'
	.db #0x40	; 64
	.db #0x37	; 55	'7'
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x1e	; 30
	.db #0x10	; 16
	.db #0x0e	; 14
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x03	; 3
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
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x7f	; 127
	.db #0x47	; 71	'G'
	.db #0xf8	; 248
	.db #0x8f	; 143
	.db #0xf4	; 244
	.db #0x3f	; 63
	.db #0xce	; 206
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x1c	; 28
	.db #0xfc	; 252
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xe7	; 231
	.db #0xe0	; 224
	.db #0xcf	; 207
	.db #0xc0	; 192
	.db #0xb8	; 184
	.db #0x80	; 128
	.db #0xf1	; 241
	.db #0x01	; 1
	.db #0xc7	; 199
	.db #0x07	; 7
	.db #0x1c	; 28
	.db #0x0c	; 12
	.db #0x7c	; 124
	.db #0x8c	; 140
	.db #0xf9	; 249
	.db #0x09	; 9
	.db #0xf9	; 249
	.db #0x09	; 9
	.db #0xf9	; 249
	.db #0x09	; 9
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xfe	; 254
	.db #0x0e	; 14
	.db #0xcf	; 207
	.db #0x03	; 3
	.db #0xb7	; 183
	.db #0x30	; 48	'0'
	.db #0x7b	; 123
	.db #0x78	; 120	'x'
	.db #0x4b	; 75	'K'
	.db #0x78	; 120	'x'
	.db #0x85	; 133
	.db #0xfc	; 252
	.db #0x85	; 133
	.db #0xec	; 236
	.db #0x0b	; 11
	.db #0x6e	; 110	'n'
	.db #0x8b	; 139
	.db #0xee	; 238
	.db #0x85	; 133
	.db #0xe6	; 230
	.db #0x44	; 68	'D'
	.db #0x77	; 119	'w'
	.db #0x44	; 68	'D'
	.db #0x77	; 119	'w'
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x13	; 19
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xfe	; 254
	.db #0x06	; 6
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0x0f	; 15
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0x1f	; 31
	.db #0x10	; 16
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0xe7	; 231
	.db #0xe4	; 228
	.db #0xf7	; 247
	.db #0xf4	; 244
	.db #0xb7	; 183
	.db #0xb4	; 180
	.db #0xf7	; 247
	.db #0xf5	; 245
	.db #0xee	; 238
	.db #0xea	; 234
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0xf8	; 248
	.db #0xe8	; 232
	.db #0xf9	; 249
	.db #0x09	; 9
	.db #0xf1	; 241
	.db #0x11	; 17
	.db #0xf2	; 242
	.db #0x12	; 18
	.db #0xf4	; 244
	.db #0x15	; 21
	.db #0xfc	; 252
	.db #0x7d	; 125
	.db #0xc2	; 194
	.db #0xc2	; 194
	.db #0x81	; 129
	.db #0xfd	; 253
	.db #0xc0	; 192
	.db #0x7f	; 127
	.db #0xf0	; 240
	.db #0xff	; 255
	.db #0xaf	; 175
	.db #0xef	; 239
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x3a	; 58
	.db #0x3a	; 58
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0xb2	; 178
	.db #0xb2	; 178
	.db #0xe6	; 230
	.db #0x66	; 102	'f'
	.db #0xc3	; 195
	.db #0xc1	; 193
	.db #0x27	; 39
	.db #0x24	; 36
	.db #0x7d	; 125
	.db #0x18	; 24
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x8e	; 142
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0x00	; 0
	.db #0xf7	; 247
	.db #0x00	; 0
	.db #0xfb	; 251
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xc1	; 193
	.db #0x41	; 65	'A'
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x4c	; 76	'L'
	.db #0x4c	; 76	'L'
	.db #0xe6	; 230
	.db #0xe6	; 230
	.db #0xf6	; 246
	.db #0xf6	; 246
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0xa8	; 168
	.db #0x2f	; 47
	.db #0xef	; 239
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
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
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x73	; 115	's'
	.db #0x13	; 19
	.db #0x3f	; 63
	.db #0x10	; 16
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0xbc	; 188
	.db #0x0c	; 12
	.db #0xb9	; 185
	.db #0x09	; 9
	.db #0xfb	; 251
	.db #0x7b	; 123
	.db #0x86	; 134
	.db #0x86	; 134
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0xec	; 236
	.db #0xec	; 236
	.db #0x37	; 55	'7'
	.db #0x37	; 55	'7'
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0xd7	; 215
	.db #0xd7	; 215
	.db #0xdc	; 220
	.db #0xdc	; 220
	.db #0xf3	; 243
	.db #0xf3	; 243
	.db #0x8c	; 140
	.db #0x8c	; 140
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x0f	; 15
	.db #0xff	; 255
	.db #0x78	; 120	'x'
	.db #0xff	; 255
	.db #0x84	; 132
	.db #0x87	; 135
	.db #0x03	; 3
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0x38	; 56	'8'
	.db #0x08	; 8
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0xdc	; 220
	.db #0xc4	; 196
	.db #0xec	; 236
	.db #0xe4	; 228
	.db #0xec	; 236
	.db #0xe4	; 228
	.db #0xe8	; 232
	.db #0xe8	; 232
	.db #0xdc	; 220
	.db #0xd4	; 212
	.db #0x7c	; 124
	.db #0x64	; 100	'd'
	.db #0x7e	; 126
	.db #0x62	; 98	'b'
	.db #0x9e	; 158
	.db #0x96	; 150
	.db #0x09	; 9
	.db #0x29	; 41
	.db #0x09	; 9
	.db #0x6b	; 107	'k'
	.db #0x91	; 145
	.db #0x97	; 151
	.db #0xe2	; 226
	.db #0xfe	; 254
	.db #0x04	; 4
	.db #0x3c	; 60
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x14	; 20
	.db #0xfc	; 252
	.db #0x64	; 100	'd'
	.db #0xfc	; 252
	.db #0xe4	; 228
	.db #0xfc	; 252
	.db #0xc8	; 200
	.db #0xf8	; 248
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
