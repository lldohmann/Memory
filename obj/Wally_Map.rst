                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Wally_Map
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Wally_Map
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
                         00000000    44 G$Wally_Map$0_0$0 == .
    00055677                         45 _Wally_Map:
    00055677 80                      46 	.db #0x80	; 128
    00055678 86                      47 	.db #0x86	; 134
    00055679 8C                      48 	.db #0x8c	; 140
    0005567A 92                      49 	.db #0x92	; 146
    0005567B 97                      50 	.db #0x97	; 151
    0005567C 81                      51 	.db #0x81	; 129
    0005567D 87                      52 	.db #0x87	; 135
    0005567E 8D                      53 	.db #0x8d	; 141
    0005567F 93                      54 	.db #0x93	; 147
    00055680 98                      55 	.db #0x98	; 152
    00055681 82                      56 	.db #0x82	; 130
    00055682 88                      57 	.db #0x88	; 136
    00055683 8E                      58 	.db #0x8e	; 142
    00055684 94                      59 	.db #0x94	; 148
    00055685 99                      60 	.db #0x99	; 153
    00055686 83                      61 	.db #0x83	; 131
    00055687 89                      62 	.db #0x89	; 137
    00055688 8F                      63 	.db #0x8f	; 143
    00055689 95                      64 	.db #0x95	; 149
    0005568A 9A                      65 	.db #0x9a	; 154
    0005568B 84                      66 	.db #0x84	; 132
    0005568C 8A                      67 	.db #0x8a	; 138
    0005568D 90                      68 	.db #0x90	; 144
    0005568E 96                      69 	.db #0x96	; 150
    0005568F 9B                      70 	.db #0x9b	; 155
    00055690 85                      71 	.db #0x85	; 133
    00055691 8B                      72 	.db #0x8b	; 139
    00055692 91                      73 	.db #0x91	; 145
    00055693 9C                      74 	.db #0x9c	; 156
    00055694 9C                      75 	.db #0x9c	; 156
                                     76 	.area _INITIALIZER
                                     77 	.area _CABS (ABS)
