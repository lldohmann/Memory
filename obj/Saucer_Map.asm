;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module Saucer_Map
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Saucer_Map
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
G$Saucer_Map$0_0$0==.
_Saucer_Map::
	.ds 15
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
FSaucer_Map$__xinit_Saucer_Map$0_0$0 == .
__xinit__Saucer_Map:
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x86	; 134
	.db #0x89	; 137
	.db #0x8c	; 140
	.db #0x81	; 129
	.db #0x84	; 132
	.db #0x87	; 135
	.db #0x8a	; 138
	.db #0x8d	; 141
	.db #0x82	; 130
	.db #0x85	; 133
	.db #0x88	; 136
	.db #0x8b	; 139
	.db #0x80	; 128
	.area _CABS (ABS)
