                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Police_Map
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Police_Map
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
                                     42 	.area _CODE
                                     43 	.area _CODE
                         00000000    44 G$Police_Map$0_0$0 == .
    00005020                         45 _Police_Map:
    00005020 A8                      46 	.db #0xa8	; 168
    00005021 A8                      47 	.db #0xa8	; 168
    00005022 A8                      48 	.db #0xa8	; 168
    00005023 8F                      49 	.db #0x8f	; 143
    00005024 A8                      50 	.db #0xa8	; 168
    00005025 A8                      51 	.db #0xa8	; 168
    00005026 A8                      52 	.db #0xa8	; 168
    00005027 83                      53 	.db #0x83	; 131
    00005028 89                      54 	.db #0x89	; 137
    00005029 90                      55 	.db #0x90	; 144
    0000502A 96                      56 	.db #0x96	; 150
    0000502B 9C                      57 	.db #0x9c	; 156
    0000502C 80                      58 	.db #0x80	; 128
    0000502D 84                      59 	.db #0x84	; 132
    0000502E 8A                      60 	.db #0x8a	; 138
    0000502F 91                      61 	.db #0x91	; 145
    00005030 97                      62 	.db #0x97	; 151
    00005031 9D                      63 	.db #0x9d	; 157
    00005032 81                      64 	.db #0x81	; 129
    00005033 85                      65 	.db #0x85	; 133
    00005034 8B                      66 	.db #0x8b	; 139
    00005035 92                      67 	.db #0x92	; 146
    00005036 98                      68 	.db #0x98	; 152
    00005037 9E                      69 	.db #0x9e	; 158
    00005038 82                      70 	.db #0x82	; 130
    00005039 86                      71 	.db #0x86	; 134
    0000503A A1                      72 	.db #0xa1	; 161
    0000503B 93                      73 	.db #0x93	; 147
    0000503C 99                      74 	.db #0x99	; 153
    0000503D A8                      75 	.db #0xa8	; 168
    0000503E A8                      76 	.db #0xa8	; 168
    0000503F 87                      77 	.db #0x87	; 135
    00005040 A2                      78 	.db #0xa2	; 162
    00005041 94                      79 	.db #0x94	; 148
    00005042 9A                      80 	.db #0x9a	; 154
    00005043 A8                      81 	.db #0xa8	; 168
    00005044 A8                      82 	.db #0xa8	; 168
    00005045 88                      83 	.db #0x88	; 136
    00005046 A3                      84 	.db #0xa3	; 163
    00005047 95                      85 	.db #0x95	; 149
    00005048 9B                      86 	.db #0x9b	; 155
    00005049 A8                      87 	.db #0xa8	; 168
                                     88 	.area _INITIALIZER
                                     89 	.area _CABS (ABS)
