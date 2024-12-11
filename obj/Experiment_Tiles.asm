;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Experiment_Tiles
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Experiment_Tiles
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
G$Experiment_Tiles$0_0$0==.
_Experiment_Tiles::
	.ds 480
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
FExperiment_Tiles$__xinit_Experiment_Tiles$0_0$0 == .
__xinit__Experiment_Tiles:
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
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x0a	; 10
	.db #0x0a	; 10
	.db #0x04	; 4
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x0c	; 12
	.db #0x0f	; 15
	.db #0x12	; 18
	.db #0x1a	; 26
	.db #0x09	; 9
	.db #0x0d	; 13
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x8a	; 138
	.db #0x8e	; 142
	.db #0x54	; 84	'T'
	.db #0x5c	; 92
	.db #0xaf	; 175
	.db #0xbf	; 191
	.db #0x69	; 105	'i'
	.db #0x79	; 121	'y'
	.db #0x58	; 88	'X'
	.db #0x79	; 121	'y'
	.db #0x50	; 80	'P'
	.db #0x71	; 113	'q'
	.db #0x50	; 80	'P'
	.db #0x72	; 114	'r'
	.db #0x54	; 84	'T'
	.db #0x76	; 118	'v'
	.db #0x5e	; 94
	.db #0x7d	; 125
	.db #0x5d	; 93
	.db #0x7e	; 126
	.db #0x56	; 86	'V'
	.db #0x75	; 117	'u'
	.db #0x57	; 87	'W'
	.db #0x70	; 112	'p'
	.db #0x9f	; 159
	.db #0xa3	; 163
	.db #0x5f	; 95
	.db #0x63	; 99	'c'
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x8f	; 143
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x70	; 112	'p'
	.db #0x78	; 120	'x'
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x32	; 50	'2'
	.db #0x26	; 38
	.db #0x32	; 50	'2'
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x24	; 36
	.db #0x2c	; 44
	.db #0x32	; 50	'2'
	.db #0x26	; 38
	.db #0x72	; 114	'r'
	.db #0x76	; 118	'v'
	.db #0x82	; 130
	.db #0xf6	; 246
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x45	; 69	'E'
	.db #0x8e	; 142
	.db #0x92	; 146
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0x70	; 112	'p'
	.db #0x70	; 112	'p'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x68	; 104	'h'
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x92	; 146
	.db #0xe4	; 228
	.db #0x09	; 9
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x02	; 2
	.db #0x8a	; 138
	.db #0x64	; 100	'd'
	.db #0x14	; 20
	.db #0x89	; 137
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x8a	; 138
	.db #0xca	; 202
	.db #0x11	; 17
	.db #0x24	; 36
	.db #0x48	; 72	'H'
	.db #0x04	; 4
	.db #0xab	; 171
	.db #0xcb	; 203
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
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
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x22	; 34
	.db #0xe2	; 226
	.db #0xd5	; 213
	.db #0xf5	; 245
	.db #0x6a	; 106	'j'
	.db #0x7a	; 122	'z'
	.db #0x74	; 116	't'
	.db #0xfc	; 252
	.db #0xf4	; 244
	.db #0xfc	; 252
	.db #0x7a	; 122	'z'
	.db #0x7e	; 126
	.db #0xfa	; 250
	.db #0x7e	; 126
	.db #0x3a	; 58
	.db #0x7e	; 126
	.db #0xba	; 186
	.db #0x3e	; 62
	.db #0x7a	; 122	'z'
	.db #0xbe	; 190
	.db #0x3a	; 58
	.db #0x7e	; 126
	.db #0x7a	; 122	'z'
	.db #0x3e	; 62
	.db #0xfa	; 250
	.db #0x8e	; 142
	.db #0xf9	; 249
	.db #0xc5	; 197
	.db #0xfa	; 250
	.db #0xc6	; 198
	.db #0xfc	; 252
	.db #0x0c	; 12
	.db #0xf0	; 240
	.db #0xf1	; 241
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x3e	; 62
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x90	; 144
	.db #0x58	; 88	'X'
	.db #0x48	; 72	'H'
	.db #0x48	; 72	'H'
	.db #0x68	; 104	'h'
	.db #0x4c	; 76	'L'
	.db #0x64	; 100	'd'
	.db #0x4c	; 76	'L'
	.db #0x64	; 100	'd'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x24	; 36
	.db #0x34	; 52	'4'
	.db #0x2c	; 44
	.db #0x34	; 52	'4'
	.db #0x4e	; 78	'N'
	.db #0x6e	; 110	'n'
	.db #0x4f	; 79	'O'
	.db #0x61	; 97	'a'
	.db #0x81	; 129
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x42	; 66	'B'
	.db #0x62	; 98	'b'
	.db #0x21	; 33
	.db #0x39	; 57	'9'
	.db #0x11	; 17
	.db #0x1f	; 31
	.db #0x0e	; 14
	.db #0x0e	; 14
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
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
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
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x58	; 88	'X'
	.db #0x48	; 72	'H'
	.db #0xb0	; 176
	.db #0x90	; 144
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0xc0	; 192
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
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
