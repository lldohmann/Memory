                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module BigSis_Map
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _BigSis_Map
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
                         00000000    44 G$BigSis_Map$0_0$0 == .
    00055F4A                         45 _BigSis_Map:
    00055F4A 80                      46 	.db #0x80	; 128
    00055F4B 87                      47 	.db #0x87	; 135
    00055F4C 8E                      48 	.db #0x8e	; 142
    00055F4D A0                      49 	.db #0xa0	; 160
    00055F4E A0                      50 	.db #0xa0	; 160
    00055F4F 81                      51 	.db #0x81	; 129
    00055F50 88                      52 	.db #0x88	; 136
    00055F51 8F                      53 	.db #0x8f	; 143
    00055F52 94                      54 	.db #0x94	; 148
    00055F53 A0                      55 	.db #0xa0	; 160
    00055F54 82                      56 	.db #0x82	; 130
    00055F55 89                      57 	.db #0x89	; 137
    00055F56 90                      58 	.db #0x90	; 144
    00055F57 95                      59 	.db #0x95	; 149
    00055F58 9A                      60 	.db #0x9a	; 154
    00055F59 83                      61 	.db #0x83	; 131
    00055F5A 8A                      62 	.db #0x8a	; 138
    00055F5B 91                      63 	.db #0x91	; 145
    00055F5C 96                      64 	.db #0x96	; 150
    00055F5D 9B                      65 	.db #0x9b	; 155
    00055F5E 84                      66 	.db #0x84	; 132
    00055F5F 8B                      67 	.db #0x8b	; 139
    00055F60 92                      68 	.db #0x92	; 146
    00055F61 97                      69 	.db #0x97	; 151
    00055F62 9C                      70 	.db #0x9c	; 156
    00055F63 85                      71 	.db #0x85	; 133
    00055F64 8C                      72 	.db #0x8c	; 140
    00055F65 93                      73 	.db #0x93	; 147
    00055F66 98                      74 	.db #0x98	; 152
    00055F67 9D                      75 	.db #0x9d	; 157
    00055F68 86                      76 	.db #0x86	; 134
    00055F69 8D                      77 	.db #0x8d	; 141
    00055F6A A0                      78 	.db #0xa0	; 160
    00055F6B 99                      79 	.db #0x99	; 153
    00055F6C 9E                      80 	.db #0x9e	; 158
                                     81 	.area _INITIALIZER
                                     82 	.area _CABS (ABS)
