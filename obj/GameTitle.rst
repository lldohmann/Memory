                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module GameTitle
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl b_GameTitleUpdate
                                     12 	.globl _GameTitleUpdate
                                     13 	.globl b___func_GameTitleUpdate
                                     14 	.globl ___func_GameTitleUpdate
                                     15 	.globl b_GameTitleSetup
                                     16 	.globl _GameTitleSetup
                                     17 	.globl b___func_GameTitleSetup
                                     18 	.globl ___func_GameTitleSetup
                                     19 	.globl b___func_const_bank_ID_title
                                     20 	.globl ___func_const_bank_ID_title
                                     21 	.globl _fadeFromBlack
                                     22 	.globl _fadeToBlack
                                     23 	.globl _set_sprite_data
                                     24 	.globl _set_bkg_tiles
                                     25 	.globl _set_bkg_data
                                     26 	.globl _joypad
                                     27 	.globl _frame
                                     28 	.globl _timer
                                     29 	.globl _globe_metasprites
                                     30 	.globl _globe7
                                     31 	.globl _globe6
                                     32 	.globl _globe5
                                     33 	.globl _globe4
                                     34 	.globl _globe3
                                     35 	.globl _globe2
                                     36 	.globl _globe1
                                     37 	.globl _const_bank_ID_title
                                     38 ;--------------------------------------------------------
                                     39 ; special function registers
                                     40 ;--------------------------------------------------------
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area _DATA
                                     45 ;--------------------------------------------------------
                                     46 ; ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area _INITIALIZED
                         00000000    49 G$timer$0_0$0==.
    0000CD6B                         50 _timer::
    0000CD6B                         51 	.ds 1
                         00000001    52 G$frame$0_0$0==.
    0000CD6C                         53 _frame::
    0000CD6C                         54 	.ds 1
                                     55 ;--------------------------------------------------------
                                     56 ; absolute external ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area _DABS (ABS)
                                     59 ;--------------------------------------------------------
                                     60 ; global & static initialisations
                                     61 ;--------------------------------------------------------
                                     62 	.area _HOME
                                     63 	.area _GSINIT
                                     64 	.area _GSFINAL
                                     65 	.area _GSINIT
                                     66 ;--------------------------------------------------------
                                     67 ; Home
                                     68 ;--------------------------------------------------------
                                     69 	.area _HOME
                                     70 	.area _HOME
                                     71 ;--------------------------------------------------------
                                     72 ; code
                                     73 ;--------------------------------------------------------
                                     74 	.area _CODE_1
                         00000000    75 	G$__func_const_bank_ID_title$0$0	= .
                                     76 	.globl	G$__func_const_bank_ID_title$0$0
                         00000000    77 	C$GameTitle.c$10$0_0$164	= .
                                     78 	.globl	C$GameTitle.c$10$0_0$164
                                     79 ;src\GameTitle.c:10: BANKREF(const_bank_ID_title)
                                     80 ;	---------------------------------
                                     81 ; Function __func_const_bank_ID_title
                                     82 ; ---------------------------------
                         00000001    83 	b___func_const_bank_ID_title	= 1
    00014000                         84 ___func_const_bank_ID_title::
                                     85 	.local b___func_const_bank_ID_title 
                         00000001    86 	___bank_const_bank_ID_title = b___func_const_bank_ID_title 
                                     87 	.globl ___bank_const_bank_ID_title 
                         00000000    88 	G$__func_GameTitleSetup$0$0	= .
                                     89 	.globl	G$__func_GameTitleSetup$0$0
                         00000000    90 	C$GameTitle.c$98$1_0$166	= .
                                     91 	.globl	C$GameTitle.c$98$1_0$166
                                     92 ;src\GameTitle.c:98: BANKREF(GameTitleSetup)
                                     93 ;	---------------------------------
                                     94 ; Function __func_GameTitleSetup
                                     95 ; ---------------------------------
                         00000001    96 	b___func_GameTitleSetup	= 1
    00014000                         97 ___func_GameTitleSetup::
                                     98 	.local b___func_GameTitleSetup 
                         00000001    99 	___bank_GameTitleSetup = b___func_GameTitleSetup 
                                    100 	.globl ___bank_GameTitleSetup 
                         00000000   101 	G$GameTitleSetup$0$0	= .
                                    102 	.globl	G$GameTitleSetup$0$0
                         00000000   103 	C$GameTitle.c$99$1_0$168	= .
                                    104 	.globl	C$GameTitle.c$99$1_0$168
                                    105 ;src\GameTitle.c:99: void GameTitleSetup(void) BANKED
                                    106 ;	---------------------------------
                                    107 ; Function GameTitleSetup
                                    108 ; ---------------------------------
                         00000001   109 	b_GameTitleSetup	= 1
    00014000                        110 _GameTitleSetup::
                                    111 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    00014000 AF               [ 4]  112 	xor	a, a
    00014001 E0 43            [12]  113 	ldh	(_SCX_REG + 0), a
    00014003 AF               [ 4]  114 	xor	a, a
    00014004 E0 42            [12]  115 	ldh	(_SCY_REG + 0), a
                         00000006   116 	C$GameTitle.c$102$1_0$168	= .
                                    117 	.globl	C$GameTitle.c$102$1_0$168
                                    118 ;src\GameTitle.c:102: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00014006 3E FE            [ 8]  119 	ld	a, #0xfe
    00014008 E0 47            [12]  120 	ldh	(_BGP_REG + 0), a
                         0000000A   121 	C$GameTitle.c$103$1_0$168	= .
                                    122 	.globl	C$GameTitle.c$103$1_0$168
                                    123 ;src\GameTitle.c:103: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    0001400A 3E FE            [ 8]  124 	ld	a, #0xfe
    0001400C E0 48            [12]  125 	ldh	(_OBP0_REG + 0), a
                         0000000E   126 	C$GameTitle.c$104$1_0$168	= .
                                    127 	.globl	C$GameTitle.c$104$1_0$168
                                    128 ;src\GameTitle.c:104: SPRITES_8x16;
    0001400E F0 40            [12]  129 	ldh	a, (_LCDC_REG + 0)
    00014010 F6 04            [ 8]  130 	or	a, #0x04
    00014012 E0 40            [12]  131 	ldh	(_LCDC_REG + 0), a
                         00000014   132 	C$GameTitle.c$105$1_0$168	= .
                                    133 	.globl	C$GameTitle.c$105$1_0$168
                                    134 ;src\GameTitle.c:105: set_bkg_data(0, 50, TitleLabel);
    00014014 11 02 4B         [12]  135 	ld	de, #_TitleLabel
    00014017 D5               [16]  136 	push	de
    00014018 21 00 32         [12]  137 	ld	hl, #0x3200
    0001401B E5               [16]  138 	push	hl
    0001401C CD 85 0E         [24]  139 	call	_set_bkg_data
    0001401F E8 04            [16]  140 	add	sp, #4
                         00000021   141 	C$GameTitle.c$106$1_0$168	= .
                                    142 	.globl	C$GameTitle.c$106$1_0$168
                                    143 ;src\GameTitle.c:106: set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
    00014021 11 9A 49         [12]  144 	ld	de, #_Title_Map
    00014024 D5               [16]  145 	push	de
    00014025 21 14 12         [12]  146 	ld	hl, #0x1214
    00014028 E5               [16]  147 	push	hl
    00014029 AF               [ 4]  148 	xor	a, a
    0001402A 0F               [ 4]  149 	rrca
    0001402B F5               [16]  150 	push	af
    0001402C CD CC 0F         [24]  151 	call	_set_bkg_tiles
    0001402F E8 06            [16]  152 	add	sp, #6
                         00000031   153 	C$GameTitle.c$107$1_0$168	= .
                                    154 	.globl	C$GameTitle.c$107$1_0$168
                                    155 ;src\GameTitle.c:107: set_sprite_data(0, 112, Globe_Tiles);
    00014031 11 9A 42         [12]  156 	ld	de, #_Globe_Tiles
    00014034 D5               [16]  157 	push	de
    00014035 21 00 70         [12]  158 	ld	hl, #0x7000
    00014038 E5               [16]  159 	push	hl
    00014039 CD 8D 0E         [24]  160 	call	_set_sprite_data
    0001403C E8 04            [16]  161 	add	sp, #4
                                    162 ;src\GameTitle.c:108: move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
    0001403E 21 75 41         [12]  163 	ld	hl, #(_globe_metasprites + 12)
    00014041 2A               [ 8]  164 	ld	a, (hl+)
    00014042 4F               [ 4]  165 	ld	c, a
    00014043 7E               [ 8]  166 	ld	a, (hl)
                                    167 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00014044 21 C5 C0         [12]  168 	ld	hl, #___current_metasprite
    00014047 71               [ 8]  169 	ld	(hl), c
    00014048 23               [ 8]  170 	inc	hl
    00014049 77               [ 8]  171 	ld	(hl), a
                                    172 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    0001404A 21 C7 C0         [12]  173 	ld	hl, #___current_base_tile
    0001404D 36 00            [12]  174 	ld	(hl), #0x00
                                    175 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    0001404F 21 C8 C0         [12]  176 	ld	hl, #___current_base_prop
    00014052 36 00            [12]  177 	ld	(hl), #0x00
                                    178 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00014054 11 58 40         [12]  179 	ld	de, #0x4058
    00014057 AF               [ 4]  180 	xor	a, a
    00014058 CD AA 06         [24]  181 	call	___move_metasprite
                         0000005B   182 	C$GameTitle.c$109$1_0$168	= .
                                    183 	.globl	C$GameTitle.c$109$1_0$168
                                    184 ;src\GameTitle.c:109: SHOW_BKG;
    0001405B F0 40            [12]  185 	ldh	a, (_LCDC_REG + 0)
    0001405D F6 01            [ 8]  186 	or	a, #0x01
    0001405F E0 40            [12]  187 	ldh	(_LCDC_REG + 0), a
                         00000061   188 	C$GameTitle.c$110$1_0$168	= .
                                    189 	.globl	C$GameTitle.c$110$1_0$168
                                    190 ;src\GameTitle.c:110: SHOW_SPRITES;
    00014061 F0 40            [12]  191 	ldh	a, (_LCDC_REG + 0)
    00014063 F6 02            [ 8]  192 	or	a, #0x02
    00014065 E0 40            [12]  193 	ldh	(_LCDC_REG + 0), a
                         00000067   194 	C$GameTitle.c$111$1_0$168	= .
                                    195 	.globl	C$GameTitle.c$111$1_0$168
                                    196 ;src\GameTitle.c:111: fadeFromBlack(10);
    00014067 3E 0A            [ 8]  197 	ld	a, #0x0a
                         00000069   198 	C$GameTitle.c$112$1_0$168	= .
                                    199 	.globl	C$GameTitle.c$112$1_0$168
                                    200 ;src\GameTitle.c:112: }
                         00000069   201 	C$GameTitle.c$112$1_0$168	= .
                                    202 	.globl	C$GameTitle.c$112$1_0$168
                         00000069   203 	XG$GameTitleSetup$0$0	= .
                                    204 	.globl	XG$GameTitleSetup$0$0
    00014069 C3 FD 0A         [16]  205 	jp	_fadeFromBlack
                         0000006C   206 G$const_bank_ID_title$0_0$0 == .
    0001406C                        207 _const_bank_ID_title:
    0001406C 01                     208 	.db #0x01	; 1
                         0000006D   209 G$globe1$0_0$0 == .
    0001406D                        210 _globe1:
    0001406D 00                     211 	.db #0x00	;  0
    0001406E 00                     212 	.db #0x00	;  0
    0001406F 00                     213 	.db #0x00	; 0
    00014070 00                     214 	.db #0x00	; 0
    00014071 10                     215 	.db #0x10	;  16
    00014072 00                     216 	.db #0x00	;  0
    00014073 02                     217 	.db #0x02	; 2
    00014074 00                     218 	.db #0x00	; 0
    00014075 F0                     219 	.db #0xf0	; -16
    00014076 08                     220 	.db #0x08	;  8
    00014077 04                     221 	.db #0x04	; 4
    00014078 00                     222 	.db #0x00	; 0
    00014079 10                     223 	.db #0x10	;  16
    0001407A 00                     224 	.db #0x00	;  0
    0001407B 06                     225 	.db #0x06	; 6
    0001407C 00                     226 	.db #0x00	; 0
    0001407D F0                     227 	.db #0xf0	; -16
    0001407E 08                     228 	.db #0x08	;  8
    0001407F 08                     229 	.db #0x08	; 8
    00014080 00                     230 	.db #0x00	; 0
    00014081 10                     231 	.db #0x10	;  16
    00014082 00                     232 	.db #0x00	;  0
    00014083 0A                     233 	.db #0x0a	; 10
    00014084 00                     234 	.db #0x00	; 0
    00014085 F0                     235 	.db #0xf0	; -16
    00014086 08                     236 	.db #0x08	;  8
    00014087 0C                     237 	.db #0x0c	; 12
    00014088 00                     238 	.db #0x00	; 0
    00014089 10                     239 	.db #0x10	;  16
    0001408A 00                     240 	.db #0x00	;  0
    0001408B 0E                     241 	.db #0x0e	; 14
    0001408C 00                     242 	.db #0x00	; 0
    0001408D 80                     243 	.db #0x80	; -128
    0001408E 00                     244 	.db #0x00	;  0
    0001408F 00                     245 	.db #0x00	; 0
    00014090 00                     246 	.db #0x00	; 0
                         00000091   247 G$globe2$0_0$0 == .
    00014091                        248 _globe2:
    00014091 00                     249 	.db #0x00	;  0
    00014092 00                     250 	.db #0x00	;  0
    00014093 10                     251 	.db #0x10	; 16
    00014094 00                     252 	.db #0x00	; 0
    00014095 10                     253 	.db #0x10	;  16
    00014096 00                     254 	.db #0x00	;  0
    00014097 12                     255 	.db #0x12	; 18
    00014098 00                     256 	.db #0x00	; 0
    00014099 F0                     257 	.db #0xf0	; -16
    0001409A 08                     258 	.db #0x08	;  8
    0001409B 14                     259 	.db #0x14	; 20
    0001409C 00                     260 	.db #0x00	; 0
    0001409D 10                     261 	.db #0x10	;  16
    0001409E 00                     262 	.db #0x00	;  0
    0001409F 16                     263 	.db #0x16	; 22
    000140A0 00                     264 	.db #0x00	; 0
    000140A1 F0                     265 	.db #0xf0	; -16
    000140A2 08                     266 	.db #0x08	;  8
    000140A3 18                     267 	.db #0x18	; 24
    000140A4 00                     268 	.db #0x00	; 0
    000140A5 10                     269 	.db #0x10	;  16
    000140A6 00                     270 	.db #0x00	;  0
    000140A7 1A                     271 	.db #0x1a	; 26
    000140A8 00                     272 	.db #0x00	; 0
    000140A9 F0                     273 	.db #0xf0	; -16
    000140AA 08                     274 	.db #0x08	;  8
    000140AB 1C                     275 	.db #0x1c	; 28
    000140AC 00                     276 	.db #0x00	; 0
    000140AD 10                     277 	.db #0x10	;  16
    000140AE 00                     278 	.db #0x00	;  0
    000140AF 1E                     279 	.db #0x1e	; 30
    000140B0 00                     280 	.db #0x00	; 0
    000140B1 80                     281 	.db #0x80	; -128
    000140B2 00                     282 	.db #0x00	;  0
    000140B3 00                     283 	.db #0x00	; 0
    000140B4 00                     284 	.db #0x00	; 0
                         000000B5   285 G$globe3$0_0$0 == .
    000140B5                        286 _globe3:
    000140B5 00                     287 	.db #0x00	;  0
    000140B6 00                     288 	.db #0x00	;  0
    000140B7 20                     289 	.db #0x20	; 32
    000140B8 00                     290 	.db #0x00	; 0
    000140B9 10                     291 	.db #0x10	;  16
    000140BA 00                     292 	.db #0x00	;  0
    000140BB 22                     293 	.db #0x22	; 34
    000140BC 00                     294 	.db #0x00	; 0
    000140BD F0                     295 	.db #0xf0	; -16
    000140BE 08                     296 	.db #0x08	;  8
    000140BF 24                     297 	.db #0x24	; 36
    000140C0 00                     298 	.db #0x00	; 0
    000140C1 10                     299 	.db #0x10	;  16
    000140C2 00                     300 	.db #0x00	;  0
    000140C3 26                     301 	.db #0x26	; 38
    000140C4 00                     302 	.db #0x00	; 0
    000140C5 F0                     303 	.db #0xf0	; -16
    000140C6 08                     304 	.db #0x08	;  8
    000140C7 28                     305 	.db #0x28	; 40
    000140C8 00                     306 	.db #0x00	; 0
    000140C9 10                     307 	.db #0x10	;  16
    000140CA 00                     308 	.db #0x00	;  0
    000140CB 2A                     309 	.db #0x2a	; 42
    000140CC 00                     310 	.db #0x00	; 0
    000140CD F0                     311 	.db #0xf0	; -16
    000140CE 08                     312 	.db #0x08	;  8
    000140CF 2C                     313 	.db #0x2c	; 44
    000140D0 00                     314 	.db #0x00	; 0
    000140D1 10                     315 	.db #0x10	;  16
    000140D2 00                     316 	.db #0x00	;  0
    000140D3 2E                     317 	.db #0x2e	; 46
    000140D4 00                     318 	.db #0x00	; 0
    000140D5 80                     319 	.db #0x80	; -128
    000140D6 00                     320 	.db #0x00	;  0
    000140D7 00                     321 	.db #0x00	; 0
    000140D8 00                     322 	.db #0x00	; 0
                         000000D9   323 G$globe4$0_0$0 == .
    000140D9                        324 _globe4:
    000140D9 00                     325 	.db #0x00	;  0
    000140DA 00                     326 	.db #0x00	;  0
    000140DB 30                     327 	.db #0x30	; 48	'0'
    000140DC 00                     328 	.db #0x00	; 0
    000140DD 10                     329 	.db #0x10	;  16
    000140DE 00                     330 	.db #0x00	;  0
    000140DF 32                     331 	.db #0x32	; 50	'2'
    000140E0 00                     332 	.db #0x00	; 0
    000140E1 F0                     333 	.db #0xf0	; -16
    000140E2 08                     334 	.db #0x08	;  8
    000140E3 34                     335 	.db #0x34	; 52	'4'
    000140E4 00                     336 	.db #0x00	; 0
    000140E5 10                     337 	.db #0x10	;  16
    000140E6 00                     338 	.db #0x00	;  0
    000140E7 36                     339 	.db #0x36	; 54	'6'
    000140E8 00                     340 	.db #0x00	; 0
    000140E9 F0                     341 	.db #0xf0	; -16
    000140EA 08                     342 	.db #0x08	;  8
    000140EB 38                     343 	.db #0x38	; 56	'8'
    000140EC 00                     344 	.db #0x00	; 0
    000140ED 10                     345 	.db #0x10	;  16
    000140EE 00                     346 	.db #0x00	;  0
    000140EF 3A                     347 	.db #0x3a	; 58
    000140F0 00                     348 	.db #0x00	; 0
    000140F1 F0                     349 	.db #0xf0	; -16
    000140F2 08                     350 	.db #0x08	;  8
    000140F3 3C                     351 	.db #0x3c	; 60
    000140F4 00                     352 	.db #0x00	; 0
    000140F5 10                     353 	.db #0x10	;  16
    000140F6 00                     354 	.db #0x00	;  0
    000140F7 3E                     355 	.db #0x3e	; 62
    000140F8 00                     356 	.db #0x00	; 0
    000140F9 80                     357 	.db #0x80	; -128
    000140FA 00                     358 	.db #0x00	;  0
    000140FB 00                     359 	.db #0x00	; 0
    000140FC 00                     360 	.db #0x00	; 0
                         000000FD   361 G$globe5$0_0$0 == .
    000140FD                        362 _globe5:
    000140FD 00                     363 	.db #0x00	;  0
    000140FE 00                     364 	.db #0x00	;  0
    000140FF 40                     365 	.db #0x40	; 64
    00014100 00                     366 	.db #0x00	; 0
    00014101 10                     367 	.db #0x10	;  16
    00014102 00                     368 	.db #0x00	;  0
    00014103 42                     369 	.db #0x42	; 66	'B'
    00014104 00                     370 	.db #0x00	; 0
    00014105 F0                     371 	.db #0xf0	; -16
    00014106 08                     372 	.db #0x08	;  8
    00014107 44                     373 	.db #0x44	; 68	'D'
    00014108 00                     374 	.db #0x00	; 0
    00014109 10                     375 	.db #0x10	;  16
    0001410A 00                     376 	.db #0x00	;  0
    0001410B 46                     377 	.db #0x46	; 70	'F'
    0001410C 00                     378 	.db #0x00	; 0
    0001410D F0                     379 	.db #0xf0	; -16
    0001410E 08                     380 	.db #0x08	;  8
    0001410F 48                     381 	.db #0x48	; 72	'H'
    00014110 00                     382 	.db #0x00	; 0
    00014111 10                     383 	.db #0x10	;  16
    00014112 00                     384 	.db #0x00	;  0
    00014113 4A                     385 	.db #0x4a	; 74	'J'
    00014114 00                     386 	.db #0x00	; 0
    00014115 F0                     387 	.db #0xf0	; -16
    00014116 08                     388 	.db #0x08	;  8
    00014117 4C                     389 	.db #0x4c	; 76	'L'
    00014118 00                     390 	.db #0x00	; 0
    00014119 10                     391 	.db #0x10	;  16
    0001411A 00                     392 	.db #0x00	;  0
    0001411B 4E                     393 	.db #0x4e	; 78	'N'
    0001411C 00                     394 	.db #0x00	; 0
    0001411D 80                     395 	.db #0x80	; -128
    0001411E 00                     396 	.db #0x00	;  0
    0001411F 00                     397 	.db #0x00	; 0
    00014120 00                     398 	.db #0x00	; 0
                         00000121   399 G$globe6$0_0$0 == .
    00014121                        400 _globe6:
    00014121 00                     401 	.db #0x00	;  0
    00014122 00                     402 	.db #0x00	;  0
    00014123 50                     403 	.db #0x50	; 80	'P'
    00014124 00                     404 	.db #0x00	; 0
    00014125 10                     405 	.db #0x10	;  16
    00014126 00                     406 	.db #0x00	;  0
    00014127 52                     407 	.db #0x52	; 82	'R'
    00014128 00                     408 	.db #0x00	; 0
    00014129 F0                     409 	.db #0xf0	; -16
    0001412A 08                     410 	.db #0x08	;  8
    0001412B 54                     411 	.db #0x54	; 84	'T'
    0001412C 00                     412 	.db #0x00	; 0
    0001412D 10                     413 	.db #0x10	;  16
    0001412E 00                     414 	.db #0x00	;  0
    0001412F 56                     415 	.db #0x56	; 86	'V'
    00014130 00                     416 	.db #0x00	; 0
    00014131 F0                     417 	.db #0xf0	; -16
    00014132 08                     418 	.db #0x08	;  8
    00014133 58                     419 	.db #0x58	; 88	'X'
    00014134 00                     420 	.db #0x00	; 0
    00014135 10                     421 	.db #0x10	;  16
    00014136 00                     422 	.db #0x00	;  0
    00014137 5A                     423 	.db #0x5a	; 90	'Z'
    00014138 00                     424 	.db #0x00	; 0
    00014139 F0                     425 	.db #0xf0	; -16
    0001413A 08                     426 	.db #0x08	;  8
    0001413B 5C                     427 	.db #0x5c	; 92
    0001413C 00                     428 	.db #0x00	; 0
    0001413D 10                     429 	.db #0x10	;  16
    0001413E 00                     430 	.db #0x00	;  0
    0001413F 5E                     431 	.db #0x5e	; 94
    00014140 00                     432 	.db #0x00	; 0
    00014141 80                     433 	.db #0x80	; -128
    00014142 00                     434 	.db #0x00	;  0
    00014143 00                     435 	.db #0x00	; 0
    00014144 00                     436 	.db #0x00	; 0
                         00000145   437 G$globe7$0_0$0 == .
    00014145                        438 _globe7:
    00014145 00                     439 	.db #0x00	;  0
    00014146 00                     440 	.db #0x00	;  0
    00014147 60                     441 	.db #0x60	; 96
    00014148 00                     442 	.db #0x00	; 0
    00014149 10                     443 	.db #0x10	;  16
    0001414A 00                     444 	.db #0x00	;  0
    0001414B 62                     445 	.db #0x62	; 98	'b'
    0001414C 00                     446 	.db #0x00	; 0
    0001414D F0                     447 	.db #0xf0	; -16
    0001414E 08                     448 	.db #0x08	;  8
    0001414F 64                     449 	.db #0x64	; 100	'd'
    00014150 00                     450 	.db #0x00	; 0
    00014151 10                     451 	.db #0x10	;  16
    00014152 00                     452 	.db #0x00	;  0
    00014153 66                     453 	.db #0x66	; 102	'f'
    00014154 00                     454 	.db #0x00	; 0
    00014155 F0                     455 	.db #0xf0	; -16
    00014156 08                     456 	.db #0x08	;  8
    00014157 68                     457 	.db #0x68	; 104	'h'
    00014158 00                     458 	.db #0x00	; 0
    00014159 10                     459 	.db #0x10	;  16
    0001415A 00                     460 	.db #0x00	;  0
    0001415B 6A                     461 	.db #0x6a	; 106	'j'
    0001415C 00                     462 	.db #0x00	; 0
    0001415D F0                     463 	.db #0xf0	; -16
    0001415E 08                     464 	.db #0x08	;  8
    0001415F 6C                     465 	.db #0x6c	; 108	'l'
    00014160 00                     466 	.db #0x00	; 0
    00014161 10                     467 	.db #0x10	;  16
    00014162 00                     468 	.db #0x00	;  0
    00014163 6E                     469 	.db #0x6e	; 110	'n'
    00014164 00                     470 	.db #0x00	; 0
    00014165 80                     471 	.db #0x80	; -128
    00014166 00                     472 	.db #0x00	;  0
    00014167 00                     473 	.db #0x00	; 0
    00014168 00                     474 	.db #0x00	; 0
                         00000169   475 G$globe_metasprites$0_0$0 == .
    00014169                        476 _globe_metasprites:
    00014169 6D 40                  477 	.dw _globe1
    0001416B 91 40                  478 	.dw _globe2
    0001416D B5 40                  479 	.dw _globe3
    0001416F D9 40                  480 	.dw _globe4
    00014171 FD 40                  481 	.dw _globe5
    00014173 21 41                  482 	.dw _globe6
    00014175 45 41                  483 	.dw _globe7
                         00000177   484 	G$__func_GameTitleUpdate$0$0	= .
                                    485 	.globl	G$__func_GameTitleUpdate$0$0
                         00000177   486 	C$GameTitle.c$117$1_0$176	= .
                                    487 	.globl	C$GameTitle.c$117$1_0$176
                                    488 ;src\GameTitle.c:117: BANKREF(GameTitleUpdate)
                                    489 ;	---------------------------------
                                    490 ; Function __func_GameTitleUpdate
                                    491 ; ---------------------------------
                         00000001   492 	b___func_GameTitleUpdate	= 1
    00014177                        493 ___func_GameTitleUpdate::
                                    494 	.local b___func_GameTitleUpdate 
                         00000001   495 	___bank_GameTitleUpdate = b___func_GameTitleUpdate 
                                    496 	.globl ___bank_GameTitleUpdate 
                         00000177   497 	G$GameTitleUpdate$0$0	= .
                                    498 	.globl	G$GameTitleUpdate$0$0
                         00000177   499 	C$GameTitle.c$118$1_0$178	= .
                                    500 	.globl	C$GameTitle.c$118$1_0$178
                                    501 ;src\GameTitle.c:118: uint8_t GameTitleUpdate(void) BANKED
                                    502 ;	---------------------------------
                                    503 ; Function GameTitleUpdate
                                    504 ; ---------------------------------
                         00000001   505 	b_GameTitleUpdate	= 1
    00014177                        506 _GameTitleUpdate::
                         00000177   507 	C$GameTitle.c$120$1_0$178	= .
                                    508 	.globl	C$GameTitle.c$120$1_0$178
                                    509 ;src\GameTitle.c:120: joypadPrevious = joypadCurrent;
    00014177 FA 6E CD         [16]  510 	ld	a, (#_joypadCurrent)
    0001417A EA 6D CD         [16]  511 	ld	(#_joypadPrevious),a
                         0000017D   512 	C$GameTitle.c$121$1_0$178	= .
                                    513 	.globl	C$GameTitle.c$121$1_0$178
                                    514 ;src\GameTitle.c:121: joypadCurrent = joypad();
    0001417D CD 74 0F         [24]  515 	call	_joypad
    00014180 EA 6E CD         [16]  516 	ld	(#_joypadCurrent),a
                         00000183   517 	C$GameTitle.c$122$1_0$178	= .
                                    518 	.globl	C$GameTitle.c$122$1_0$178
                                    519 ;src\GameTitle.c:122: timer++;
    00014183 21 6B CD         [12]  520 	ld	hl, #_timer
    00014186 34               [12]  521 	inc	(hl)
                         00000187   522 	C$GameTitle.c$123$1_0$178	= .
                                    523 	.globl	C$GameTitle.c$123$1_0$178
                                    524 ;src\GameTitle.c:123: if (timer == 60)
    00014187 7E               [ 8]  525 	ld	a, (hl)
    00014188 D6 3C            [ 8]  526 	sub	a, #0x3c
    0001418A 20 09            [12]  527 	jr	NZ, 00102$
                         0000018C   528 	C$GameTitle.c$125$2_0$179	= .
                                    529 	.globl	C$GameTitle.c$125$2_0$179
                                    530 ;src\GameTitle.c:125: frame++; 
    0001418C 21 6C CD         [12]  531 	ld	hl, #_frame
    0001418F 34               [12]  532 	inc	(hl)
                         00000190   533 	C$GameTitle.c$126$2_0$179	= .
                                    534 	.globl	C$GameTitle.c$126$2_0$179
                                    535 ;src\GameTitle.c:126: timer = 0;
    00014190 21 6B CD         [12]  536 	ld	hl, #_timer
    00014193 36 00            [12]  537 	ld	(hl), #0x00
    00014195                        538 00102$:
                         00000195   539 	C$GameTitle.c$128$1_0$178	= .
                                    540 	.globl	C$GameTitle.c$128$1_0$178
                                    541 ;src\GameTitle.c:128: if (frame >= 7) frame = 0;
    00014195 21 6C CD         [12]  542 	ld	hl, #_frame
    00014198 7E               [ 8]  543 	ld	a, (hl)
    00014199 D6 07            [ 8]  544 	sub	a, #0x07
    0001419B 38 02            [12]  545 	jr	C, 00104$
    0001419D 36 00            [12]  546 	ld	(hl), #0x00
    0001419F                        547 00104$:
                                    548 ;src\GameTitle.c:129: move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
    0001419F 01 69 41         [12]  549 	ld	bc, #_globe_metasprites+0
    000141A2 21 6C CD         [12]  550 	ld	hl, #_frame
    000141A5 6E               [ 8]  551 	ld	l, (hl)
                                    552 ;	spillPairReg hl
                                    553 ;	spillPairReg hl
    000141A6 AF               [ 4]  554 	xor	a, a
    000141A7 67               [ 4]  555 	ld	h, a
    000141A8 29               [ 8]  556 	add	hl, hl
    000141A9 09               [ 8]  557 	add	hl, bc
    000141AA 2A               [ 8]  558 	ld	a, (hl+)
    000141AB 6E               [ 8]  559 	ld	l, (hl)
                                    560 ;	spillPairReg hl
                                    561 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000141AC 5F               [ 4]  562 	ld	e, a
    000141AD 55               [ 4]  563 	ld	d, l
    000141AE 21 C5 C0         [12]  564 	ld	hl, #___current_metasprite
    000141B1 7B               [ 4]  565 	ld	a, e
    000141B2 22               [ 8]  566 	ld	(hl+), a
    000141B3 72               [ 8]  567 	ld	(hl), d
                                    568 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000141B4 21 C7 C0         [12]  569 	ld	hl, #___current_base_tile
    000141B7 36 00            [12]  570 	ld	(hl), #0x00
                                    571 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000141B9 21 C8 C0         [12]  572 	ld	hl, #___current_base_prop
    000141BC 36 00            [12]  573 	ld	(hl), #0x00
                                    574 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000141BE C5               [16]  575 	push	bc
    000141BF 11 58 40         [12]  576 	ld	de, #0x4058
    000141C2 AF               [ 4]  577 	xor	a, a
    000141C3 CD AA 06         [24]  578 	call	___move_metasprite
    000141C6 C1               [12]  579 	pop	bc
                         000001C7   580 	C$GameTitle.c$130$1_0$178	= .
                                    581 	.globl	C$GameTitle.c$130$1_0$178
                                    582 ;src\GameTitle.c:130: if (joypadCurrent & J_START)
    000141C7 21 6E CD         [12]  583 	ld	hl, #_joypadCurrent
    000141CA 5E               [ 8]  584 	ld	e, (hl)
    000141CB CB 7B            [ 8]  585 	bit	7, e
    000141CD 28 2A            [12]  586 	jr	Z, 00106$
                         000001CF   587 	C$GameTitle.c$132$2_0$180	= .
                                    588 	.globl	C$GameTitle.c$132$2_0$180
                                    589 ;src\GameTitle.c:132: fadeToBlack(10);
    000141CF C5               [16]  590 	push	bc
    000141D0 3E 0A            [ 8]  591 	ld	a, #0x0a
    000141D2 CD B4 0A         [24]  592 	call	_fadeToBlack
    000141D5 C1               [12]  593 	pop	bc
                                    594 ;src\GameTitle.c:133: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    000141D6 21 6C CD         [12]  595 	ld	hl, #_frame
    000141D9 6E               [ 8]  596 	ld	l, (hl)
                                    597 ;	spillPairReg hl
                                    598 ;	spillPairReg hl
    000141DA AF               [ 4]  599 	xor	a, a
    000141DB 67               [ 4]  600 	ld	h, a
    000141DC 29               [ 8]  601 	add	hl, hl
    000141DD 09               [ 8]  602 	add	hl, bc
    000141DE 2A               [ 8]  603 	ld	a, (hl+)
    000141DF 4E               [ 8]  604 	ld	c, (hl)
                                    605 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000141E0 21 C5 C0         [12]  606 	ld	hl, #___current_metasprite
    000141E3 22               [ 8]  607 	ld	(hl+), a
    000141E4 71               [ 8]  608 	ld	(hl), c
                                    609 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000141E5 21 C7 C0         [12]  610 	ld	hl, #___current_base_tile
    000141E8 36 00            [12]  611 	ld	(hl), #0x00
                                    612 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000141EA 21 C8 C0         [12]  613 	ld	hl, #___current_base_prop
    000141ED 36 00            [12]  614 	ld	(hl), #0x00
                                    615 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000141EF 11 B0 B0         [12]  616 	ld	de, #0xb0b0
    000141F2 AF               [ 4]  617 	xor	a, a
    000141F3 CD AA 06         [24]  618 	call	___move_metasprite
                         000001F6   619 	C$GameTitle.c$134$2_0$180	= .
                                    620 	.globl	C$GameTitle.c$134$2_0$180
                                    621 ;src\GameTitle.c:134: return COREGAMELOOP;
    000141F6 3E 02            [ 8]  622 	ld	a, #0x02
    000141F8 C9               [16]  623 	ret
    000141F9                        624 00106$:
                         000001F9   625 	C$GameTitle.c$136$1_0$178	= .
                                    626 	.globl	C$GameTitle.c$136$1_0$178
                                    627 ;src\GameTitle.c:136: if (joypadCurrent & J_SELECT)
    000141F9 CB 73            [ 8]  628 	bit	6, e
    000141FB 28 2A            [12]  629 	jr	Z, 00108$
                         000001FD   630 	C$GameTitle.c$138$2_0$181	= .
                                    631 	.globl	C$GameTitle.c$138$2_0$181
                                    632 ;src\GameTitle.c:138: fadeToBlack(10);
    000141FD C5               [16]  633 	push	bc
    000141FE 3E 0A            [ 8]  634 	ld	a, #0x0a
    00014200 CD B4 0A         [24]  635 	call	_fadeToBlack
    00014203 C1               [12]  636 	pop	bc
                                    637 ;src\GameTitle.c:139: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    00014204 21 6C CD         [12]  638 	ld	hl, #_frame
    00014207 6E               [ 8]  639 	ld	l, (hl)
                                    640 ;	spillPairReg hl
                                    641 ;	spillPairReg hl
    00014208 26 00            [ 8]  642 	ld	h, #0x00
                                    643 ;	spillPairReg hl
                                    644 ;	spillPairReg hl
    0001420A 29               [ 8]  645 	add	hl, hl
    0001420B 09               [ 8]  646 	add	hl, bc
    0001420C 2A               [ 8]  647 	ld	a, (hl+)
    0001420D 4E               [ 8]  648 	ld	c, (hl)
                                    649 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    0001420E 21 C5 C0         [12]  650 	ld	hl, #___current_metasprite
    00014211 22               [ 8]  651 	ld	(hl+), a
    00014212 71               [ 8]  652 	ld	(hl), c
                                    653 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00014213 21 C7 C0         [12]  654 	ld	hl, #___current_base_tile
    00014216 36 00            [12]  655 	ld	(hl), #0x00
                                    656 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00014218 21 C8 C0         [12]  657 	ld	hl, #___current_base_prop
    0001421B 36 00            [12]  658 	ld	(hl), #0x00
                                    659 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    0001421D 11 B0 B0         [12]  660 	ld	de, #0xb0b0
    00014220 AF               [ 4]  661 	xor	a, a
    00014221 CD AA 06         [24]  662 	call	___move_metasprite
                         00000224   663 	C$GameTitle.c$140$2_0$181	= .
                                    664 	.globl	C$GameTitle.c$140$2_0$181
                                    665 ;src\GameTitle.c:140: return GAMEJOHNDOE;
    00014224 3E 03            [ 8]  666 	ld	a, #0x03
    00014226 C9               [16]  667 	ret
    00014227                        668 00108$:
                         00000227   669 	C$GameTitle.c$142$1_0$178	= .
                                    670 	.globl	C$GameTitle.c$142$1_0$178
                                    671 ;src\GameTitle.c:142: if (joypadCurrent & J_B)
    00014227 CB 6B            [ 8]  672 	bit	5, e
    00014229 28 3E            [12]  673 	jr	Z, 00110$
                         0000022B   674 	C$GameTitle.c$144$2_0$182	= .
                                    675 	.globl	C$GameTitle.c$144$2_0$182
                                    676 ;src\GameTitle.c:144: fadeToBlack(3);
    0001422B C5               [16]  677 	push	bc
    0001422C 3E 03            [ 8]  678 	ld	a, #0x03
    0001422E CD B4 0A         [24]  679 	call	_fadeToBlack
    00014231 3E 03            [ 8]  680 	ld	a, #0x03
    00014233 CD FD 0A         [24]  681 	call	_fadeFromBlack
    00014236 3E 03            [ 8]  682 	ld	a, #0x03
    00014238 CD B4 0A         [24]  683 	call	_fadeToBlack
    0001423B 3E 03            [ 8]  684 	ld	a, #0x03
    0001423D CD FD 0A         [24]  685 	call	_fadeFromBlack
    00014240 3E 03            [ 8]  686 	ld	a, #0x03
    00014242 CD B4 0A         [24]  687 	call	_fadeToBlack
    00014245 C1               [12]  688 	pop	bc
                                    689 ;src\GameTitle.c:149: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    00014246 21 6C CD         [12]  690 	ld	hl, #_frame
    00014249 6E               [ 8]  691 	ld	l, (hl)
                                    692 ;	spillPairReg hl
                                    693 ;	spillPairReg hl
    0001424A AF               [ 4]  694 	xor	a, a
    0001424B 67               [ 4]  695 	ld	h, a
    0001424C 29               [ 8]  696 	add	hl, hl
    0001424D 09               [ 8]  697 	add	hl, bc
    0001424E 2A               [ 8]  698 	ld	a, (hl+)
    0001424F 4E               [ 8]  699 	ld	c, (hl)
                                    700 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00014250 21 C5 C0         [12]  701 	ld	hl, #___current_metasprite
    00014253 22               [ 8]  702 	ld	(hl+), a
    00014254 71               [ 8]  703 	ld	(hl), c
                                    704 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00014255 21 C7 C0         [12]  705 	ld	hl, #___current_base_tile
    00014258 36 00            [12]  706 	ld	(hl), #0x00
                                    707 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    0001425A 21 C8 C0         [12]  708 	ld	hl, #___current_base_prop
    0001425D 36 00            [12]  709 	ld	(hl), #0x00
                                    710 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    0001425F 11 B0 B0         [12]  711 	ld	de, #0xb0b0
    00014262 AF               [ 4]  712 	xor	a, a
    00014263 CD AA 06         [24]  713 	call	___move_metasprite
                         00000266   714 	C$GameTitle.c$150$2_0$182	= .
                                    715 	.globl	C$GameTitle.c$150$2_0$182
                                    716 ;src\GameTitle.c:150: return BATTLE;
    00014266 3E 05            [ 8]  717 	ld	a, #0x05
    00014268 C9               [16]  718 	ret
    00014269                        719 00110$:
                         00000269   720 	C$GameTitle.c$152$1_0$178	= .
                                    721 	.globl	C$GameTitle.c$152$1_0$178
                                    722 ;src\GameTitle.c:152: if (joypadCurrent & J_A)
    00014269 CB 63            [ 8]  723 	bit	4, e
    0001426B 28 2A            [12]  724 	jr	Z, 00112$
                         0000026D   725 	C$GameTitle.c$154$2_0$183	= .
                                    726 	.globl	C$GameTitle.c$154$2_0$183
                                    727 ;src\GameTitle.c:154: fadeToBlack(10);
    0001426D C5               [16]  728 	push	bc
    0001426E 3E 0A            [ 8]  729 	ld	a, #0x0a
    00014270 CD B4 0A         [24]  730 	call	_fadeToBlack
    00014273 C1               [12]  731 	pop	bc
                                    732 ;src\GameTitle.c:155: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    00014274 21 6C CD         [12]  733 	ld	hl, #_frame
    00014277 6E               [ 8]  734 	ld	l, (hl)
                                    735 ;	spillPairReg hl
                                    736 ;	spillPairReg hl
    00014278 AF               [ 4]  737 	xor	a, a
    00014279 67               [ 4]  738 	ld	h, a
    0001427A 29               [ 8]  739 	add	hl, hl
    0001427B 09               [ 8]  740 	add	hl, bc
    0001427C 2A               [ 8]  741 	ld	a, (hl+)
    0001427D 4E               [ 8]  742 	ld	c, (hl)
                                    743 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    0001427E 21 C5 C0         [12]  744 	ld	hl, #___current_metasprite
    00014281 22               [ 8]  745 	ld	(hl+), a
    00014282 71               [ 8]  746 	ld	(hl), c
                                    747 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00014283 21 C7 C0         [12]  748 	ld	hl, #___current_base_tile
    00014286 36 00            [12]  749 	ld	(hl), #0x00
                                    750 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00014288 21 C8 C0         [12]  751 	ld	hl, #___current_base_prop
    0001428B 36 00            [12]  752 	ld	(hl), #0x00
                                    753 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    0001428D 11 B0 B0         [12]  754 	ld	de, #0xb0b0
    00014290 AF               [ 4]  755 	xor	a, a
    00014291 CD AA 06         [24]  756 	call	___move_metasprite
                         00000294   757 	C$GameTitle.c$156$2_0$183	= .
                                    758 	.globl	C$GameTitle.c$156$2_0$183
                                    759 ;src\GameTitle.c:156: return BESTIARY;
    00014294 3E 04            [ 8]  760 	ld	a, #0x04
    00014296 C9               [16]  761 	ret
    00014297                        762 00112$:
                         00000297   763 	C$GameTitle.c$159$1_0$178	= .
                                    764 	.globl	C$GameTitle.c$159$1_0$178
                                    765 ;src\GameTitle.c:159: return GAMETITLE;
    00014297 3E 01            [ 8]  766 	ld	a, #0x01
                         00000299   767 	C$GameTitle.c$160$1_0$178	= .
                                    768 	.globl	C$GameTitle.c$160$1_0$178
                                    769 ;src\GameTitle.c:160: }
                         00000299   770 	C$GameTitle.c$160$1_0$178	= .
                                    771 	.globl	C$GameTitle.c$160$1_0$178
                         00000299   772 	XG$GameTitleUpdate$0$0	= .
                                    773 	.globl	XG$GameTitleUpdate$0$0
    00014299 C9               [16]  774 	ret
                                    775 	.area _CODE_1
                                    776 	.area _INITIALIZER
                         00000000   777 FGameTitle$__xinit_timer$0_0$0 == .
    00001CDE                        778 __xinit__timer:
    00001CDE 00                     779 	.db #0x00	; 0
                         00000001   780 FGameTitle$__xinit_frame$0_0$0 == .
    00001CDF                        781 __xinit__frame:
    00001CDF 00                     782 	.db #0x00	; 0
                                    783 	.area _CABS (ABS)
