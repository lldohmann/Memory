                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Tick_Map
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Tick_Map
                                     12 ;--------------------------------------------------------
                                     13 ; special function registers
                                     14 ;--------------------------------------------------------
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area _DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area _INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; absolute external ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area _DABS (ABS)
                                     27 ;--------------------------------------------------------
                                     28 ; global & static initialisations
                                     29 ;--------------------------------------------------------
                                     30 	.area _HOME
                                     31 	.area _GSINIT
                                     32 	.area _GSFINAL
                                     33 	.area _GSINIT
                                     34 ;--------------------------------------------------------
                                     35 ; Home
                                     36 ;--------------------------------------------------------
                                     37 	.area _HOME
                                     38 	.area _HOME
                                     39 ;--------------------------------------------------------
                                     40 ; code
                                     41 ;--------------------------------------------------------
                                     42 	.area _CODE_5
                                     43 	.area _CODE_5
                         00000000    44 G$Tick_Map$0_0$0 == .
    00055B1D                         45 _Tick_Map:
    00055B1D 80                      46 	.db #0x80	; 128
    00055B1E 83                      47 	.db #0x83	; 131
    00055B1F 88                      48 	.db #0x88	; 136
    00055B20 8C                      49 	.db #0x8c	; 140
    00055B21 91                      50 	.db #0x91	; 145
    00055B22 80                      51 	.db #0x80	; 128
    00055B23 84                      52 	.db #0x84	; 132
    00055B24 89                      53 	.db #0x89	; 137
    00055B25 8D                      54 	.db #0x8d	; 141
    00055B26 91                      55 	.db #0x91	; 145
    00055B27 81                      56 	.db #0x81	; 129
    00055B28 85                      57 	.db #0x85	; 133
    00055B29 8A                      58 	.db #0x8a	; 138
    00055B2A 8E                      59 	.db #0x8e	; 142
    00055B2B 92                      60 	.db #0x92	; 146
    00055B2C 82                      61 	.db #0x82	; 130
    00055B2D 86                      62 	.db #0x86	; 134
    00055B2E 8B                      63 	.db #0x8b	; 139
    00055B2F 8F                      64 	.db #0x8f	; 143
    00055B30 93                      65 	.db #0x93	; 147
    00055B31 94                      66 	.db #0x94	; 148
    00055B32 87                      67 	.db #0x87	; 135
    00055B33 94                      68 	.db #0x94	; 148
    00055B34 90                      69 	.db #0x90	; 144
    00055B35 94                      70 	.db #0x94	; 148
                                     71 	.area _INITIALIZER
                                     72 	.area _CABS (ABS)
