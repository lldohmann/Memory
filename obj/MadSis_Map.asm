;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module MadSis_Map
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _MadSis_Map
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
G$MadSis_Map$0_0$0 == .
_MadSis_Map:
	.db #0x80	; 128
	.db #0x87	; 135
	.db #0x8e	; 142
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x81	; 129
	.db #0x88	; 136
	.db #0x8f	; 143
	.db #0x94	; 148
	.db #0xa0	; 160
	.db #0x82	; 130
	.db #0x89	; 137
	.db #0x90	; 144
	.db #0x95	; 149
	.db #0x9a	; 154
	.db #0x83	; 131
	.db #0x9f	; 159
	.db #0x91	; 145
	.db #0x96	; 150
	.db #0x9b	; 155
	.db #0x84	; 132
	.db #0x8b	; 139
	.db #0x92	; 146
	.db #0x97	; 151
	.db #0x9c	; 156
	.db #0x85	; 133
	.db #0x8c	; 140
	.db #0x93	; 147
	.db #0x98	; 152
	.db #0x9d	; 157
	.db #0x86	; 134
	.db #0x8d	; 141
	.db #0x80	; 128
	.db #0x99	; 153
	.db #0x9e	; 158
	.area _INITIALIZER
	.area _CABS (ABS)
