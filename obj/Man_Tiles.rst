                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Man_Tiles
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Man_Tiles
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
                         00000000    44 G$Man_Tiles$0_0$0 == .
    000051EE                         45 _Man_Tiles:
    000051EE 00                      46 	.db #0x00	; 0
    000051EF 00                      47 	.db #0x00	; 0
    000051F0 00                      48 	.db #0x00	; 0
    000051F1 00                      49 	.db #0x00	; 0
    000051F2 00                      50 	.db #0x00	; 0
    000051F3 00                      51 	.db #0x00	; 0
    000051F4 00                      52 	.db #0x00	; 0
    000051F5 00                      53 	.db #0x00	; 0
    000051F6 00                      54 	.db #0x00	; 0
    000051F7 00                      55 	.db #0x00	; 0
    000051F8 00                      56 	.db #0x00	; 0
    000051F9 00                      57 	.db #0x00	; 0
    000051FA 00                      58 	.db #0x00	; 0
    000051FB 00                      59 	.db #0x00	; 0
    000051FC 00                      60 	.db #0x00	; 0
    000051FD 00                      61 	.db #0x00	; 0
    000051FE 01                      62 	.db #0x01	; 1
    000051FF 01                      63 	.db #0x01	; 1
    00005200 03                      64 	.db #0x03	; 3
    00005201 03                      65 	.db #0x03	; 3
    00005202 03                      66 	.db #0x03	; 3
    00005203 03                      67 	.db #0x03	; 3
    00005204 07                      68 	.db #0x07	; 7
    00005205 07                      69 	.db #0x07	; 7
    00005206 0F                      70 	.db #0x0f	; 15
    00005207 0F                      71 	.db #0x0f	; 15
    00005208 0F                      72 	.db #0x0f	; 15
    00005209 0F                      73 	.db #0x0f	; 15
    0000520A 1F                      74 	.db #0x1f	; 31
    0000520B 1F                      75 	.db #0x1f	; 31
    0000520C 1F                      76 	.db #0x1f	; 31
    0000520D 1F                      77 	.db #0x1f	; 31
    0000520E 3F                      78 	.db #0x3f	; 63
    0000520F 3F                      79 	.db #0x3f	; 63
    00005210 3F                      80 	.db #0x3f	; 63
    00005211 3F                      81 	.db #0x3f	; 63
    00005212 3F                      82 	.db #0x3f	; 63
    00005213 3F                      83 	.db #0x3f	; 63
    00005214 7F                      84 	.db #0x7f	; 127
    00005215 7F                      85 	.db #0x7f	; 127
    00005216 7F                      86 	.db #0x7f	; 127
    00005217 7F                      87 	.db #0x7f	; 127
    00005218 FF                      88 	.db #0xff	; 255
    00005219 7F                      89 	.db #0x7f	; 127
    0000521A 7F                      90 	.db #0x7f	; 127
    0000521B FF                      91 	.db #0xff	; 255
    0000521C 7F                      92 	.db #0x7f	; 127
    0000521D FF                      93 	.db #0xff	; 255
    0000521E FF                      94 	.db #0xff	; 255
    0000521F FF                      95 	.db #0xff	; 255
    00005220 FF                      96 	.db #0xff	; 255
    00005221 FF                      97 	.db #0xff	; 255
    00005222 FF                      98 	.db #0xff	; 255
    00005223 FF                      99 	.db #0xff	; 255
    00005224 FF                     100 	.db #0xff	; 255
    00005225 FF                     101 	.db #0xff	; 255
    00005226 FF                     102 	.db #0xff	; 255
    00005227 FF                     103 	.db #0xff	; 255
    00005228 7F                     104 	.db #0x7f	; 127
    00005229 FF                     105 	.db #0xff	; 255
    0000522A 7F                     106 	.db #0x7f	; 127
    0000522B FF                     107 	.db #0xff	; 255
    0000522C FF                     108 	.db #0xff	; 255
    0000522D 7F                     109 	.db #0x7f	; 127
    0000522E 7F                     110 	.db #0x7f	; 127
    0000522F 7F                     111 	.db #0x7f	; 127
    00005230 7F                     112 	.db #0x7f	; 127
    00005231 7F                     113 	.db #0x7f	; 127
    00005232 3E                     114 	.db #0x3e	; 62
    00005233 3F                     115 	.db #0x3f	; 63
    00005234 3F                     116 	.db #0x3f	; 63
    00005235 3E                     117 	.db #0x3e	; 62
    00005236 1F                     118 	.db #0x1f	; 31
    00005237 1E                     119 	.db #0x1e	; 30
    00005238 1F                     120 	.db #0x1f	; 31
    00005239 1F                     121 	.db #0x1f	; 31
    0000523A 1F                     122 	.db #0x1f	; 31
    0000523B 0F                     123 	.db #0x0f	; 15
    0000523C 0F                     124 	.db #0x0f	; 15
    0000523D 0F                     125 	.db #0x0f	; 15
    0000523E 07                     126 	.db #0x07	; 7
    0000523F 07                     127 	.db #0x07	; 7
    00005240 03                     128 	.db #0x03	; 3
    00005241 03                     129 	.db #0x03	; 3
    00005242 01                     130 	.db #0x01	; 1
    00005243 01                     131 	.db #0x01	; 1
    00005244 00                     132 	.db #0x00	; 0
    00005245 00                     133 	.db #0x00	; 0
    00005246 00                     134 	.db #0x00	; 0
    00005247 00                     135 	.db #0x00	; 0
    00005248 00                     136 	.db #0x00	; 0
    00005249 00                     137 	.db #0x00	; 0
    0000524A 00                     138 	.db #0x00	; 0
    0000524B 00                     139 	.db #0x00	; 0
    0000524C 00                     140 	.db #0x00	; 0
    0000524D 00                     141 	.db #0x00	; 0
    0000524E 00                     142 	.db #0x00	; 0
    0000524F 00                     143 	.db #0x00	; 0
    00005250 00                     144 	.db #0x00	; 0
    00005251 00                     145 	.db #0x00	; 0
    00005252 00                     146 	.db #0x00	; 0
    00005253 00                     147 	.db #0x00	; 0
    00005254 01                     148 	.db #0x01	; 1
    00005255 01                     149 	.db #0x01	; 1
    00005256 07                     150 	.db #0x07	; 7
    00005257 07                     151 	.db #0x07	; 7
    00005258 1F                     152 	.db #0x1f	; 31
    00005259 1F                     153 	.db #0x1f	; 31
    0000525A 7F                     154 	.db #0x7f	; 127
    0000525B 7F                     155 	.db #0x7f	; 127
    0000525C FF                     156 	.db #0xff	; 255
    0000525D FF                     157 	.db #0xff	; 255
    0000525E FF                     158 	.db #0xff	; 255
    0000525F FF                     159 	.db #0xff	; 255
    00005260 FF                     160 	.db #0xff	; 255
    00005261 FF                     161 	.db #0xff	; 255
    00005262 FF                     162 	.db #0xff	; 255
    00005263 FF                     163 	.db #0xff	; 255
    00005264 FF                     164 	.db #0xff	; 255
    00005265 FF                     165 	.db #0xff	; 255
    00005266 FF                     166 	.db #0xff	; 255
    00005267 FF                     167 	.db #0xff	; 255
    00005268 FF                     168 	.db #0xff	; 255
    00005269 FF                     169 	.db #0xff	; 255
    0000526A FF                     170 	.db #0xff	; 255
    0000526B FF                     171 	.db #0xff	; 255
    0000526C FF                     172 	.db #0xff	; 255
    0000526D FF                     173 	.db #0xff	; 255
    0000526E FC                     174 	.db #0xfc	; 252
    0000526F F8                     175 	.db #0xf8	; 248
    00005270 F8                     176 	.db #0xf8	; 248
    00005271 F0                     177 	.db #0xf0	; 240
    00005272 E0                     178 	.db #0xe0	; 224
    00005273 F0                     179 	.db #0xf0	; 240
    00005274 F0                     180 	.db #0xf0	; 240
    00005275 E0                     181 	.db #0xe0	; 224
    00005276 F0                     182 	.db #0xf0	; 240
    00005277 E0                     183 	.db #0xe0	; 224
    00005278 C0                     184 	.db #0xc0	; 192
    00005279 E0                     185 	.db #0xe0	; 224
    0000527A 80                     186 	.db #0x80	; 128
    0000527B C0                     187 	.db #0xc0	; 192
    0000527C 80                     188 	.db #0x80	; 128
    0000527D 81                     189 	.db #0x81	; 129
    0000527E 01                     190 	.db #0x01	; 1
    0000527F 81                     191 	.db #0x81	; 129
    00005280 01                     192 	.db #0x01	; 1
    00005281 03                     193 	.db #0x03	; 3
    00005282 07                     194 	.db #0x07	; 7
    00005283 03                     195 	.db #0x03	; 3
    00005284 07                     196 	.db #0x07	; 7
    00005285 03                     197 	.db #0x03	; 3
    00005286 03                     198 	.db #0x03	; 3
    00005287 03                     199 	.db #0x03	; 3
    00005288 03                     200 	.db #0x03	; 3
    00005289 01                     201 	.db #0x01	; 1
    0000528A 81                     202 	.db #0x81	; 129
    0000528B 80                     203 	.db #0x80	; 128
    0000528C C0                     204 	.db #0xc0	; 192
    0000528D C0                     205 	.db #0xc0	; 192
    0000528E E0                     206 	.db #0xe0	; 224
    0000528F E0                     207 	.db #0xe0	; 224
    00005290 F8                     208 	.db #0xf8	; 248
    00005291 F0                     209 	.db #0xf0	; 240
    00005292 FC                     210 	.db #0xfc	; 252
    00005293 FC                     211 	.db #0xfc	; 252
    00005294 FE                     212 	.db #0xfe	; 254
    00005295 FF                     213 	.db #0xff	; 255
    00005296 7F                     214 	.db #0x7f	; 127
    00005297 7F                     215 	.db #0x7f	; 127
    00005298 1F                     216 	.db #0x1f	; 31
    00005299 1F                     217 	.db #0x1f	; 31
    0000529A 0F                     218 	.db #0x0f	; 15
    0000529B 07                     219 	.db #0x07	; 7
    0000529C 00                     220 	.db #0x00	; 0
    0000529D 00                     221 	.db #0x00	; 0
    0000529E 00                     222 	.db #0x00	; 0
    0000529F 00                     223 	.db #0x00	; 0
    000052A0 07                     224 	.db #0x07	; 7
    000052A1 07                     225 	.db #0x07	; 7
    000052A2 3F                     226 	.db #0x3f	; 63
    000052A3 3F                     227 	.db #0x3f	; 63
    000052A4 FF                     228 	.db #0xff	; 255
    000052A5 FF                     229 	.db #0xff	; 255
    000052A6 FF                     230 	.db #0xff	; 255
    000052A7 FF                     231 	.db #0xff	; 255
    000052A8 FF                     232 	.db #0xff	; 255
    000052A9 FF                     233 	.db #0xff	; 255
    000052AA FF                     234 	.db #0xff	; 255
    000052AB FF                     235 	.db #0xff	; 255
    000052AC FF                     236 	.db #0xff	; 255
    000052AD FF                     237 	.db #0xff	; 255
    000052AE F8                     238 	.db #0xf8	; 248
    000052AF FC                     239 	.db #0xfc	; 252
    000052B0 F0                     240 	.db #0xf0	; 240
    000052B1 F8                     241 	.db #0xf8	; 248
    000052B2 E0                     242 	.db #0xe0	; 224
    000052B3 F0                     243 	.db #0xf0	; 240
    000052B4 E0                     244 	.db #0xe0	; 224
    000052B5 E0                     245 	.db #0xe0	; 224
    000052B6 E0                     246 	.db #0xe0	; 224
    000052B7 E0                     247 	.db #0xe0	; 224
    000052B8 E0                     248 	.db #0xe0	; 224
    000052B9 E0                     249 	.db #0xe0	; 224
    000052BA E0                     250 	.db #0xe0	; 224
    000052BB C0                     251 	.db #0xc0	; 192
    000052BC 80                     252 	.db #0x80	; 128
    000052BD C0                     253 	.db #0xc0	; 192
    000052BE 80                     254 	.db #0x80	; 128
    000052BF C0                     255 	.db #0xc0	; 192
    000052C0 C0                     256 	.db #0xc0	; 192
    000052C1 C0                     257 	.db #0xc0	; 192
    000052C2 E0                     258 	.db #0xe0	; 224
    000052C3 E0                     259 	.db #0xe0	; 224
    000052C4 F0                     260 	.db #0xf0	; 240
    000052C5 F0                     261 	.db #0xf0	; 240
    000052C6 F8                     262 	.db #0xf8	; 248
    000052C7 F0                     263 	.db #0xf0	; 240
    000052C8 F0                     264 	.db #0xf0	; 240
    000052C9 F8                     265 	.db #0xf8	; 248
    000052CA D0                     266 	.db #0xd0	; 208
    000052CB E0                     267 	.db #0xe0	; 224
    000052CC 40                     268 	.db #0x40	; 64
    000052CD 80                     269 	.db #0x80	; 128
    000052CE 00                     270 	.db #0x00	; 0
    000052CF 00                     271 	.db #0x00	; 0
    000052D0 80                     272 	.db #0x80	; 128
    000052D1 80                     273 	.db #0x80	; 128
    000052D2 80                     274 	.db #0x80	; 128
    000052D3 80                     275 	.db #0x80	; 128
    000052D4 C0                     276 	.db #0xc0	; 192
    000052D5 80                     277 	.db #0x80	; 128
    000052D6 C0                     278 	.db #0xc0	; 192
    000052D7 C0                     279 	.db #0xc0	; 192
    000052D8 C0                     280 	.db #0xc0	; 192
    000052D9 C0                     281 	.db #0xc0	; 192
    000052DA C0                     282 	.db #0xc0	; 192
    000052DB C0                     283 	.db #0xc0	; 192
    000052DC 40                     284 	.db #0x40	; 64
    000052DD 00                     285 	.db #0x00	; 0
    000052DE 00                     286 	.db #0x00	; 0
    000052DF 00                     287 	.db #0x00	; 0
    000052E0 00                     288 	.db #0x00	; 0
    000052E1 00                     289 	.db #0x00	; 0
    000052E2 00                     290 	.db #0x00	; 0
    000052E3 00                     291 	.db #0x00	; 0
    000052E4 00                     292 	.db #0x00	; 0
    000052E5 00                     293 	.db #0x00	; 0
    000052E6 80                     294 	.db #0x80	; 128
    000052E7 C0                     295 	.db #0xc0	; 192
    000052E8 80                     296 	.db #0x80	; 128
    000052E9 80                     297 	.db #0x80	; 128
    000052EA 80                     298 	.db #0x80	; 128
    000052EB 80                     299 	.db #0x80	; 128
    000052EC 00                     300 	.db #0x00	; 0
    000052ED 00                     301 	.db #0x00	; 0
    000052EE 80                     302 	.db #0x80	; 128
    000052EF 80                     303 	.db #0x80	; 128
    000052F0 C0                     304 	.db #0xc0	; 192
    000052F1 C0                     305 	.db #0xc0	; 192
    000052F2 C0                     306 	.db #0xc0	; 192
    000052F3 C0                     307 	.db #0xc0	; 192
    000052F4 E0                     308 	.db #0xe0	; 224
    000052F5 E0                     309 	.db #0xe0	; 224
    000052F6 F0                     310 	.db #0xf0	; 240
    000052F7 F0                     311 	.db #0xf0	; 240
    000052F8 F0                     312 	.db #0xf0	; 240
    000052F9 F0                     313 	.db #0xf0	; 240
    000052FA F8                     314 	.db #0xf8	; 248
    000052FB F8                     315 	.db #0xf8	; 248
    000052FC F8                     316 	.db #0xf8	; 248
    000052FD F8                     317 	.db #0xf8	; 248
    000052FE FC                     318 	.db #0xfc	; 252
    000052FF FC                     319 	.db #0xfc	; 252
    00005300 FC                     320 	.db #0xfc	; 252
    00005301 FC                     321 	.db #0xfc	; 252
    00005302 FC                     322 	.db #0xfc	; 252
    00005303 FC                     323 	.db #0xfc	; 252
    00005304 FE                     324 	.db #0xfe	; 254
    00005305 FE                     325 	.db #0xfe	; 254
    00005306 FE                     326 	.db #0xfe	; 254
    00005307 FE                     327 	.db #0xfe	; 254
    00005308 FF                     328 	.db #0xff	; 255
    00005309 FE                     329 	.db #0xfe	; 254
    0000530A FE                     330 	.db #0xfe	; 254
    0000530B FF                     331 	.db #0xff	; 255
    0000530C FE                     332 	.db #0xfe	; 254
    0000530D FF                     333 	.db #0xff	; 255
    0000530E FF                     334 	.db #0xff	; 255
    0000530F FF                     335 	.db #0xff	; 255
    00005310 FF                     336 	.db #0xff	; 255
    00005311 FF                     337 	.db #0xff	; 255
    00005312 FF                     338 	.db #0xff	; 255
    00005313 FF                     339 	.db #0xff	; 255
    00005314 FF                     340 	.db #0xff	; 255
    00005315 FF                     341 	.db #0xff	; 255
    00005316 FF                     342 	.db #0xff	; 255
    00005317 FF                     343 	.db #0xff	; 255
    00005318 FE                     344 	.db #0xfe	; 254
    00005319 FF                     345 	.db #0xff	; 255
    0000531A FE                     346 	.db #0xfe	; 254
    0000531B FF                     347 	.db #0xff	; 255
    0000531C FF                     348 	.db #0xff	; 255
    0000531D FE                     349 	.db #0xfe	; 254
    0000531E FE                     350 	.db #0xfe	; 254
    0000531F FE                     351 	.db #0xfe	; 254
    00005320 FE                     352 	.db #0xfe	; 254
    00005321 FE                     353 	.db #0xfe	; 254
    00005322 7C                     354 	.db #0x7c	; 124
    00005323 FC                     355 	.db #0xfc	; 252
    00005324 FC                     356 	.db #0xfc	; 252
    00005325 7C                     357 	.db #0x7c	; 124
    00005326 F8                     358 	.db #0xf8	; 248
    00005327 78                     359 	.db #0x78	; 120	'x'
    00005328 F8                     360 	.db #0xf8	; 248
    00005329 F8                     361 	.db #0xf8	; 248
    0000532A F8                     362 	.db #0xf8	; 248
    0000532B F0                     363 	.db #0xf0	; 240
    0000532C F0                     364 	.db #0xf0	; 240
    0000532D F0                     365 	.db #0xf0	; 240
    0000532E E0                     366 	.db #0xe0	; 224
    0000532F E0                     367 	.db #0xe0	; 224
    00005330 C0                     368 	.db #0xc0	; 192
    00005331 C0                     369 	.db #0xc0	; 192
    00005332 80                     370 	.db #0x80	; 128
    00005333 80                     371 	.db #0x80	; 128
    00005334 00                     372 	.db #0x00	; 0
    00005335 00                     373 	.db #0x00	; 0
    00005336 00                     374 	.db #0x00	; 0
    00005337 00                     375 	.db #0x00	; 0
    00005338 00                     376 	.db #0x00	; 0
    00005339 00                     377 	.db #0x00	; 0
    0000533A 00                     378 	.db #0x00	; 0
    0000533B 00                     379 	.db #0x00	; 0
    0000533C 00                     380 	.db #0x00	; 0
    0000533D 00                     381 	.db #0x00	; 0
    0000533E 00                     382 	.db #0x00	; 0
    0000533F 00                     383 	.db #0x00	; 0
    00005340 00                     384 	.db #0x00	; 0
    00005341 00                     385 	.db #0x00	; 0
    00005342 00                     386 	.db #0x00	; 0
    00005343 00                     387 	.db #0x00	; 0
    00005344 80                     388 	.db #0x80	; 128
    00005345 80                     389 	.db #0x80	; 128
    00005346 E0                     390 	.db #0xe0	; 224
    00005347 E0                     391 	.db #0xe0	; 224
    00005348 F8                     392 	.db #0xf8	; 248
    00005349 F8                     393 	.db #0xf8	; 248
    0000534A FE                     394 	.db #0xfe	; 254
    0000534B FE                     395 	.db #0xfe	; 254
    0000534C FF                     396 	.db #0xff	; 255
    0000534D FF                     397 	.db #0xff	; 255
    0000534E 3F                     398 	.db #0x3f	; 63
    0000534F 1F                     399 	.db #0x1f	; 31
    00005350 1F                     400 	.db #0x1f	; 31
    00005351 0F                     401 	.db #0x0f	; 15
    00005352 07                     402 	.db #0x07	; 7
    00005353 0F                     403 	.db #0x0f	; 15
    00005354 0F                     404 	.db #0x0f	; 15
    00005355 07                     405 	.db #0x07	; 7
    00005356 0F                     406 	.db #0x0f	; 15
    00005357 07                     407 	.db #0x07	; 7
    00005358 03                     408 	.db #0x03	; 3
    00005359 07                     409 	.db #0x07	; 7
    0000535A 01                     410 	.db #0x01	; 1
    0000535B 03                     411 	.db #0x03	; 3
    0000535C 01                     412 	.db #0x01	; 1
    0000535D 81                     413 	.db #0x81	; 129
    0000535E 80                     414 	.db #0x80	; 128
    0000535F 81                     415 	.db #0x81	; 129
    00005360 80                     416 	.db #0x80	; 128
    00005361 C0                     417 	.db #0xc0	; 192
    00005362 E0                     418 	.db #0xe0	; 224
    00005363 C0                     419 	.db #0xc0	; 192
    00005364 E0                     420 	.db #0xe0	; 224
    00005365 C0                     421 	.db #0xc0	; 192
    00005366 C0                     422 	.db #0xc0	; 192
    00005367 C0                     423 	.db #0xc0	; 192
    00005368 C0                     424 	.db #0xc0	; 192
    00005369 80                     425 	.db #0x80	; 128
    0000536A 81                     426 	.db #0x81	; 129
    0000536B 01                     427 	.db #0x01	; 1
    0000536C 03                     428 	.db #0x03	; 3
    0000536D 03                     429 	.db #0x03	; 3
    0000536E 07                     430 	.db #0x07	; 7
    0000536F 07                     431 	.db #0x07	; 7
    00005370 1F                     432 	.db #0x1f	; 31
    00005371 0F                     433 	.db #0x0f	; 15
    00005372 3F                     434 	.db #0x3f	; 63
    00005373 3F                     435 	.db #0x3f	; 63
    00005374 7F                     436 	.db #0x7f	; 127
    00005375 FF                     437 	.db #0xff	; 255
    00005376 FE                     438 	.db #0xfe	; 254
    00005377 FE                     439 	.db #0xfe	; 254
    00005378 F8                     440 	.db #0xf8	; 248
    00005379 F8                     441 	.db #0xf8	; 248
    0000537A F0                     442 	.db #0xf0	; 240
    0000537B E0                     443 	.db #0xe0	; 224
    0000537C 00                     444 	.db #0x00	; 0
    0000537D 00                     445 	.db #0x00	; 0
    0000537E 00                     446 	.db #0x00	; 0
    0000537F 00                     447 	.db #0x00	; 0
    00005380 E0                     448 	.db #0xe0	; 224
    00005381 E0                     449 	.db #0xe0	; 224
    00005382 FC                     450 	.db #0xfc	; 252
    00005383 FC                     451 	.db #0xfc	; 252
    00005384 FF                     452 	.db #0xff	; 255
    00005385 FF                     453 	.db #0xff	; 255
    00005386 FF                     454 	.db #0xff	; 255
    00005387 FF                     455 	.db #0xff	; 255
    00005388 FF                     456 	.db #0xff	; 255
    00005389 FF                     457 	.db #0xff	; 255
    0000538A FF                     458 	.db #0xff	; 255
    0000538B FF                     459 	.db #0xff	; 255
    0000538C FF                     460 	.db #0xff	; 255
    0000538D FF                     461 	.db #0xff	; 255
    0000538E 1F                     462 	.db #0x1f	; 31
    0000538F 3F                     463 	.db #0x3f	; 63
    00005390 0F                     464 	.db #0x0f	; 15
    00005391 1F                     465 	.db #0x1f	; 31
    00005392 07                     466 	.db #0x07	; 7
    00005393 0F                     467 	.db #0x0f	; 15
    00005394 07                     468 	.db #0x07	; 7
    00005395 07                     469 	.db #0x07	; 7
    00005396 07                     470 	.db #0x07	; 7
    00005397 07                     471 	.db #0x07	; 7
    00005398 07                     472 	.db #0x07	; 7
    00005399 07                     473 	.db #0x07	; 7
    0000539A 07                     474 	.db #0x07	; 7
    0000539B 03                     475 	.db #0x03	; 3
    0000539C 01                     476 	.db #0x01	; 1
    0000539D 03                     477 	.db #0x03	; 3
    0000539E 01                     478 	.db #0x01	; 1
    0000539F 03                     479 	.db #0x03	; 3
    000053A0 03                     480 	.db #0x03	; 3
    000053A1 03                     481 	.db #0x03	; 3
    000053A2 07                     482 	.db #0x07	; 7
    000053A3 07                     483 	.db #0x07	; 7
    000053A4 0F                     484 	.db #0x0f	; 15
    000053A5 0F                     485 	.db #0x0f	; 15
    000053A6 1F                     486 	.db #0x1f	; 31
    000053A7 0F                     487 	.db #0x0f	; 15
    000053A8 0F                     488 	.db #0x0f	; 15
    000053A9 1F                     489 	.db #0x1f	; 31
    000053AA 0B                     490 	.db #0x0b	; 11
    000053AB 07                     491 	.db #0x07	; 7
    000053AC 02                     492 	.db #0x02	; 2
    000053AD 01                     493 	.db #0x01	; 1
    000053AE 00                     494 	.db #0x00	; 0
    000053AF 00                     495 	.db #0x00	; 0
    000053B0 01                     496 	.db #0x01	; 1
    000053B1 01                     497 	.db #0x01	; 1
    000053B2 01                     498 	.db #0x01	; 1
    000053B3 01                     499 	.db #0x01	; 1
    000053B4 03                     500 	.db #0x03	; 3
    000053B5 01                     501 	.db #0x01	; 1
    000053B6 03                     502 	.db #0x03	; 3
    000053B7 03                     503 	.db #0x03	; 3
    000053B8 03                     504 	.db #0x03	; 3
    000053B9 03                     505 	.db #0x03	; 3
    000053BA 03                     506 	.db #0x03	; 3
    000053BB 03                     507 	.db #0x03	; 3
    000053BC 02                     508 	.db #0x02	; 2
    000053BD 00                     509 	.db #0x00	; 0
    000053BE 00                     510 	.db #0x00	; 0
    000053BF 00                     511 	.db #0x00	; 0
    000053C0 00                     512 	.db #0x00	; 0
    000053C1 00                     513 	.db #0x00	; 0
    000053C2 00                     514 	.db #0x00	; 0
    000053C3 00                     515 	.db #0x00	; 0
    000053C4 00                     516 	.db #0x00	; 0
    000053C5 00                     517 	.db #0x00	; 0
    000053C6 01                     518 	.db #0x01	; 1
    000053C7 03                     519 	.db #0x03	; 3
    000053C8 01                     520 	.db #0x01	; 1
    000053C9 01                     521 	.db #0x01	; 1
    000053CA 01                     522 	.db #0x01	; 1
    000053CB 01                     523 	.db #0x01	; 1
    000053CC 00                     524 	.db #0x00	; 0
    000053CD 00                     525 	.db #0x00	; 0
    000053CE 00                     526 	.db #0x00	; 0
    000053CF 00                     527 	.db #0x00	; 0
    000053D0 00                     528 	.db #0x00	; 0
    000053D1 00                     529 	.db #0x00	; 0
    000053D2 00                     530 	.db #0x00	; 0
    000053D3 00                     531 	.db #0x00	; 0
    000053D4 00                     532 	.db #0x00	; 0
    000053D5 00                     533 	.db #0x00	; 0
    000053D6 00                     534 	.db #0x00	; 0
    000053D7 00                     535 	.db #0x00	; 0
    000053D8 00                     536 	.db #0x00	; 0
    000053D9 00                     537 	.db #0x00	; 0
    000053DA 00                     538 	.db #0x00	; 0
    000053DB 00                     539 	.db #0x00	; 0
    000053DC 00                     540 	.db #0x00	; 0
    000053DD 00                     541 	.db #0x00	; 0
                                    542 	.area _INITIALIZER
                                    543 	.area _CABS (ABS)
