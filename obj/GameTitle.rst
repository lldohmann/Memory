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
                                     11 	.globl _GameTitleUpdate
                                     12 	.globl _GameTitleSetup
                                     13 	.globl _fadeFromBlack
                                     14 	.globl _fadeToBlack
                                     15 	.globl _set_sprite_data
                                     16 	.globl _set_bkg_tiles
                                     17 	.globl _set_bkg_data
                                     18 	.globl _joypad
                                     19 	.globl _frame
                                     20 	.globl _timer
                                     21 	.globl _globe_metasprites
                                     22 	.globl _globe7
                                     23 	.globl _globe6
                                     24 	.globl _globe5
                                     25 	.globl _globe4
                                     26 	.globl _globe3
                                     27 	.globl _globe2
                                     28 	.globl _globe1
                                     29 ;--------------------------------------------------------
                                     30 ; special function registers
                                     31 ;--------------------------------------------------------
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area _DATA
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area _INITIALIZED
                         00000000    40 G$timer$0_0$0==.
    0000CD6B                         41 _timer::
    0000CD6B                         42 	.ds 1
                         00000001    43 G$frame$0_0$0==.
    0000CD6C                         44 _frame::
    0000CD6C                         45 	.ds 1
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area _DABS (ABS)
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area _HOME
                                     54 	.area _GSINIT
                                     55 	.area _GSFINAL
                                     56 	.area _GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area _HOME
                                     61 	.area _HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area _CODE
                         00000000    66 	G$GameTitleSetup$0$0	= .
                                     67 	.globl	G$GameTitleSetup$0$0
                         00000000    68 	C$GameTitle.c$91$0_0$164	= .
                                     69 	.globl	C$GameTitle.c$91$0_0$164
                                     70 ;src\GameTitle.c:91: void GameTitleSetup(void)
                                     71 ;	---------------------------------
                                     72 ; Function GameTitleSetup
                                     73 ; ---------------------------------
    0000167D                         74 _GameTitleSetup::
                                     75 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    0000167D AF               [ 4]   76 	xor	a, a
    0000167E E0 43            [12]   77 	ldh	(_SCX_REG + 0), a
    00001680 AF               [ 4]   78 	xor	a, a
    00001681 E0 42            [12]   79 	ldh	(_SCY_REG + 0), a
                         00000006    80 	C$GameTitle.c$94$1_0$164	= .
                                     81 	.globl	C$GameTitle.c$94$1_0$164
                                     82 ;src\GameTitle.c:94: BGP_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00001683 3E FE            [ 8]   83 	ld	a, #0xfe
    00001685 E0 47            [12]   84 	ldh	(_BGP_REG + 0), a
                         0000000A    85 	C$GameTitle.c$95$1_0$164	= .
                                     86 	.globl	C$GameTitle.c$95$1_0$164
                                     87 ;src\GameTitle.c:95: OBP0_REG = DMG_PALETTE(DMG_DARK_GRAY, DMG_BLACK, DMG_BLACK, DMG_BLACK);
    00001687 3E FE            [ 8]   88 	ld	a, #0xfe
    00001689 E0 48            [12]   89 	ldh	(_OBP0_REG + 0), a
                         0000000E    90 	C$GameTitle.c$96$1_0$164	= .
                                     91 	.globl	C$GameTitle.c$96$1_0$164
                                     92 ;src\GameTitle.c:96: SPRITES_8x16;
    0000168B F0 40            [12]   93 	ldh	a, (_LCDC_REG + 0)
    0000168D F6 04            [ 8]   94 	or	a, #0x04
    0000168F E0 40            [12]   95 	ldh	(_LCDC_REG + 0), a
                         00000014    96 	C$GameTitle.c$97$1_0$164	= .
                                     97 	.globl	C$GameTitle.c$97$1_0$164
                                     98 ;src\GameTitle.c:97: set_bkg_data(0, 50, TitleLabel);
    00001691 11 7E 21         [12]   99 	ld	de, #_TitleLabel
    00001694 D5               [16]  100 	push	de
    00001695 21 00 32         [12]  101 	ld	hl, #0x3200
    00001698 E5               [16]  102 	push	hl
    00001699 CD 08 63         [24]  103 	call	_set_bkg_data
    0000169C E8 04            [16]  104 	add	sp, #4
                         00000021   105 	C$GameTitle.c$98$1_0$164	= .
                                    106 	.globl	C$GameTitle.c$98$1_0$164
                                    107 ;src\GameTitle.c:98: set_bkg_tiles(0, 0, Title_MapWidth, Title_MapHeight, Title_Map);
    0000169E 11 16 20         [12]  108 	ld	de, #_Title_Map
    000016A1 D5               [16]  109 	push	de
    000016A2 21 14 12         [12]  110 	ld	hl, #0x1214
    000016A5 E5               [16]  111 	push	hl
    000016A6 AF               [ 4]  112 	xor	a, a
    000016A7 0F               [ 4]  113 	rrca
    000016A8 F5               [16]  114 	push	af
    000016A9 CD 35 64         [24]  115 	call	_set_bkg_tiles
    000016AC E8 06            [16]  116 	add	sp, #6
                         00000031   117 	C$GameTitle.c$99$1_0$164	= .
                                    118 	.globl	C$GameTitle.c$99$1_0$164
                                    119 ;src\GameTitle.c:99: set_sprite_data(0, 112, Globe_Tiles);
    000016AE 11 16 19         [12]  120 	ld	de, #_Globe_Tiles
    000016B1 D5               [16]  121 	push	de
    000016B2 21 00 70         [12]  122 	ld	hl, #0x7000
    000016B5 E5               [16]  123 	push	hl
    000016B6 CD 10 63         [24]  124 	call	_set_sprite_data
    000016B9 E8 04            [16]  125 	add	sp, #4
                                    126 ;src\GameTitle.c:100: move_metasprite(globe_metasprites[6], 0, 0, 88, 64);
    000016BB 21 F1 17         [12]  127 	ld	hl, #(_globe_metasprites + 12)
    000016BE 2A               [ 8]  128 	ld	a, (hl+)
    000016BF 4F               [ 4]  129 	ld	c, a
    000016C0 7E               [ 8]  130 	ld	a, (hl)
                                    131 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000016C1 21 C5 C0         [12]  132 	ld	hl, #___current_metasprite
    000016C4 71               [ 8]  133 	ld	(hl), c
    000016C5 23               [ 8]  134 	inc	hl
    000016C6 77               [ 8]  135 	ld	(hl), a
                                    136 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000016C7 21 C7 C0         [12]  137 	ld	hl, #___current_base_tile
    000016CA 36 00            [12]  138 	ld	(hl), #0x00
                                    139 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000016CC 21 C8 C0         [12]  140 	ld	hl, #___current_base_prop
    000016CF 36 00            [12]  141 	ld	(hl), #0x00
                                    142 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000016D1 11 58 40         [12]  143 	ld	de, #0x4058
    000016D4 AF               [ 4]  144 	xor	a, a
    000016D5 CD 36 60         [24]  145 	call	___move_metasprite
                         0000005B   146 	C$GameTitle.c$101$1_0$164	= .
                                    147 	.globl	C$GameTitle.c$101$1_0$164
                                    148 ;src\GameTitle.c:101: SHOW_BKG;
    000016D8 F0 40            [12]  149 	ldh	a, (_LCDC_REG + 0)
    000016DA F6 01            [ 8]  150 	or	a, #0x01
    000016DC E0 40            [12]  151 	ldh	(_LCDC_REG + 0), a
                         00000061   152 	C$GameTitle.c$102$1_0$164	= .
                                    153 	.globl	C$GameTitle.c$102$1_0$164
                                    154 ;src\GameTitle.c:102: SHOW_SPRITES;
    000016DE F0 40            [12]  155 	ldh	a, (_LCDC_REG + 0)
    000016E0 F6 02            [ 8]  156 	or	a, #0x02
    000016E2 E0 40            [12]  157 	ldh	(_LCDC_REG + 0), a
                         00000067   158 	C$GameTitle.c$103$1_0$164	= .
                                    159 	.globl	C$GameTitle.c$103$1_0$164
                                    160 ;src\GameTitle.c:103: fadeFromBlack(10);
    000016E4 3E 0A            [ 8]  161 	ld	a, #0x0a
                         00000069   162 	C$GameTitle.c$104$1_0$164	= .
                                    163 	.globl	C$GameTitle.c$104$1_0$164
                                    164 ;src\GameTitle.c:104: }
                         00000069   165 	C$GameTitle.c$104$1_0$164	= .
                                    166 	.globl	C$GameTitle.c$104$1_0$164
                         00000069   167 	XG$GameTitleSetup$0$0	= .
                                    168 	.globl	XG$GameTitleSetup$0$0
    000016E6 C3 CA 26         [16]  169 	jp	_fadeFromBlack
                         0000006C   170 G$globe1$0_0$0 == .
    000016E9                        171 _globe1:
    000016E9 00                     172 	.db #0x00	;  0
    000016EA 00                     173 	.db #0x00	;  0
    000016EB 00                     174 	.db #0x00	; 0
    000016EC 00                     175 	.db #0x00	; 0
    000016ED 10                     176 	.db #0x10	;  16
    000016EE 00                     177 	.db #0x00	;  0
    000016EF 02                     178 	.db #0x02	; 2
    000016F0 00                     179 	.db #0x00	; 0
    000016F1 F0                     180 	.db #0xf0	; -16
    000016F2 08                     181 	.db #0x08	;  8
    000016F3 04                     182 	.db #0x04	; 4
    000016F4 00                     183 	.db #0x00	; 0
    000016F5 10                     184 	.db #0x10	;  16
    000016F6 00                     185 	.db #0x00	;  0
    000016F7 06                     186 	.db #0x06	; 6
    000016F8 00                     187 	.db #0x00	; 0
    000016F9 F0                     188 	.db #0xf0	; -16
    000016FA 08                     189 	.db #0x08	;  8
    000016FB 08                     190 	.db #0x08	; 8
    000016FC 00                     191 	.db #0x00	; 0
    000016FD 10                     192 	.db #0x10	;  16
    000016FE 00                     193 	.db #0x00	;  0
    000016FF 0A                     194 	.db #0x0a	; 10
    00001700 00                     195 	.db #0x00	; 0
    00001701 F0                     196 	.db #0xf0	; -16
    00001702 08                     197 	.db #0x08	;  8
    00001703 0C                     198 	.db #0x0c	; 12
    00001704 00                     199 	.db #0x00	; 0
    00001705 10                     200 	.db #0x10	;  16
    00001706 00                     201 	.db #0x00	;  0
    00001707 0E                     202 	.db #0x0e	; 14
    00001708 00                     203 	.db #0x00	; 0
    00001709 80                     204 	.db #0x80	; -128
    0000170A 00                     205 	.db #0x00	;  0
    0000170B 00                     206 	.db #0x00	; 0
    0000170C 00                     207 	.db #0x00	; 0
                         00000090   208 G$globe2$0_0$0 == .
    0000170D                        209 _globe2:
    0000170D 00                     210 	.db #0x00	;  0
    0000170E 00                     211 	.db #0x00	;  0
    0000170F 10                     212 	.db #0x10	; 16
    00001710 00                     213 	.db #0x00	; 0
    00001711 10                     214 	.db #0x10	;  16
    00001712 00                     215 	.db #0x00	;  0
    00001713 12                     216 	.db #0x12	; 18
    00001714 00                     217 	.db #0x00	; 0
    00001715 F0                     218 	.db #0xf0	; -16
    00001716 08                     219 	.db #0x08	;  8
    00001717 14                     220 	.db #0x14	; 20
    00001718 00                     221 	.db #0x00	; 0
    00001719 10                     222 	.db #0x10	;  16
    0000171A 00                     223 	.db #0x00	;  0
    0000171B 16                     224 	.db #0x16	; 22
    0000171C 00                     225 	.db #0x00	; 0
    0000171D F0                     226 	.db #0xf0	; -16
    0000171E 08                     227 	.db #0x08	;  8
    0000171F 18                     228 	.db #0x18	; 24
    00001720 00                     229 	.db #0x00	; 0
    00001721 10                     230 	.db #0x10	;  16
    00001722 00                     231 	.db #0x00	;  0
    00001723 1A                     232 	.db #0x1a	; 26
    00001724 00                     233 	.db #0x00	; 0
    00001725 F0                     234 	.db #0xf0	; -16
    00001726 08                     235 	.db #0x08	;  8
    00001727 1C                     236 	.db #0x1c	; 28
    00001728 00                     237 	.db #0x00	; 0
    00001729 10                     238 	.db #0x10	;  16
    0000172A 00                     239 	.db #0x00	;  0
    0000172B 1E                     240 	.db #0x1e	; 30
    0000172C 00                     241 	.db #0x00	; 0
    0000172D 80                     242 	.db #0x80	; -128
    0000172E 00                     243 	.db #0x00	;  0
    0000172F 00                     244 	.db #0x00	; 0
    00001730 00                     245 	.db #0x00	; 0
                         000000B4   246 G$globe3$0_0$0 == .
    00001731                        247 _globe3:
    00001731 00                     248 	.db #0x00	;  0
    00001732 00                     249 	.db #0x00	;  0
    00001733 20                     250 	.db #0x20	; 32
    00001734 00                     251 	.db #0x00	; 0
    00001735 10                     252 	.db #0x10	;  16
    00001736 00                     253 	.db #0x00	;  0
    00001737 22                     254 	.db #0x22	; 34
    00001738 00                     255 	.db #0x00	; 0
    00001739 F0                     256 	.db #0xf0	; -16
    0000173A 08                     257 	.db #0x08	;  8
    0000173B 24                     258 	.db #0x24	; 36
    0000173C 00                     259 	.db #0x00	; 0
    0000173D 10                     260 	.db #0x10	;  16
    0000173E 00                     261 	.db #0x00	;  0
    0000173F 26                     262 	.db #0x26	; 38
    00001740 00                     263 	.db #0x00	; 0
    00001741 F0                     264 	.db #0xf0	; -16
    00001742 08                     265 	.db #0x08	;  8
    00001743 28                     266 	.db #0x28	; 40
    00001744 00                     267 	.db #0x00	; 0
    00001745 10                     268 	.db #0x10	;  16
    00001746 00                     269 	.db #0x00	;  0
    00001747 2A                     270 	.db #0x2a	; 42
    00001748 00                     271 	.db #0x00	; 0
    00001749 F0                     272 	.db #0xf0	; -16
    0000174A 08                     273 	.db #0x08	;  8
    0000174B 2C                     274 	.db #0x2c	; 44
    0000174C 00                     275 	.db #0x00	; 0
    0000174D 10                     276 	.db #0x10	;  16
    0000174E 00                     277 	.db #0x00	;  0
    0000174F 2E                     278 	.db #0x2e	; 46
    00001750 00                     279 	.db #0x00	; 0
    00001751 80                     280 	.db #0x80	; -128
    00001752 00                     281 	.db #0x00	;  0
    00001753 00                     282 	.db #0x00	; 0
    00001754 00                     283 	.db #0x00	; 0
                         000000D8   284 G$globe4$0_0$0 == .
    00001755                        285 _globe4:
    00001755 00                     286 	.db #0x00	;  0
    00001756 00                     287 	.db #0x00	;  0
    00001757 30                     288 	.db #0x30	; 48	'0'
    00001758 00                     289 	.db #0x00	; 0
    00001759 10                     290 	.db #0x10	;  16
    0000175A 00                     291 	.db #0x00	;  0
    0000175B 32                     292 	.db #0x32	; 50	'2'
    0000175C 00                     293 	.db #0x00	; 0
    0000175D F0                     294 	.db #0xf0	; -16
    0000175E 08                     295 	.db #0x08	;  8
    0000175F 34                     296 	.db #0x34	; 52	'4'
    00001760 00                     297 	.db #0x00	; 0
    00001761 10                     298 	.db #0x10	;  16
    00001762 00                     299 	.db #0x00	;  0
    00001763 36                     300 	.db #0x36	; 54	'6'
    00001764 00                     301 	.db #0x00	; 0
    00001765 F0                     302 	.db #0xf0	; -16
    00001766 08                     303 	.db #0x08	;  8
    00001767 38                     304 	.db #0x38	; 56	'8'
    00001768 00                     305 	.db #0x00	; 0
    00001769 10                     306 	.db #0x10	;  16
    0000176A 00                     307 	.db #0x00	;  0
    0000176B 3A                     308 	.db #0x3a	; 58
    0000176C 00                     309 	.db #0x00	; 0
    0000176D F0                     310 	.db #0xf0	; -16
    0000176E 08                     311 	.db #0x08	;  8
    0000176F 3C                     312 	.db #0x3c	; 60
    00001770 00                     313 	.db #0x00	; 0
    00001771 10                     314 	.db #0x10	;  16
    00001772 00                     315 	.db #0x00	;  0
    00001773 3E                     316 	.db #0x3e	; 62
    00001774 00                     317 	.db #0x00	; 0
    00001775 80                     318 	.db #0x80	; -128
    00001776 00                     319 	.db #0x00	;  0
    00001777 00                     320 	.db #0x00	; 0
    00001778 00                     321 	.db #0x00	; 0
                         000000FC   322 G$globe5$0_0$0 == .
    00001779                        323 _globe5:
    00001779 00                     324 	.db #0x00	;  0
    0000177A 00                     325 	.db #0x00	;  0
    0000177B 40                     326 	.db #0x40	; 64
    0000177C 00                     327 	.db #0x00	; 0
    0000177D 10                     328 	.db #0x10	;  16
    0000177E 00                     329 	.db #0x00	;  0
    0000177F 42                     330 	.db #0x42	; 66	'B'
    00001780 00                     331 	.db #0x00	; 0
    00001781 F0                     332 	.db #0xf0	; -16
    00001782 08                     333 	.db #0x08	;  8
    00001783 44                     334 	.db #0x44	; 68	'D'
    00001784 00                     335 	.db #0x00	; 0
    00001785 10                     336 	.db #0x10	;  16
    00001786 00                     337 	.db #0x00	;  0
    00001787 46                     338 	.db #0x46	; 70	'F'
    00001788 00                     339 	.db #0x00	; 0
    00001789 F0                     340 	.db #0xf0	; -16
    0000178A 08                     341 	.db #0x08	;  8
    0000178B 48                     342 	.db #0x48	; 72	'H'
    0000178C 00                     343 	.db #0x00	; 0
    0000178D 10                     344 	.db #0x10	;  16
    0000178E 00                     345 	.db #0x00	;  0
    0000178F 4A                     346 	.db #0x4a	; 74	'J'
    00001790 00                     347 	.db #0x00	; 0
    00001791 F0                     348 	.db #0xf0	; -16
    00001792 08                     349 	.db #0x08	;  8
    00001793 4C                     350 	.db #0x4c	; 76	'L'
    00001794 00                     351 	.db #0x00	; 0
    00001795 10                     352 	.db #0x10	;  16
    00001796 00                     353 	.db #0x00	;  0
    00001797 4E                     354 	.db #0x4e	; 78	'N'
    00001798 00                     355 	.db #0x00	; 0
    00001799 80                     356 	.db #0x80	; -128
    0000179A 00                     357 	.db #0x00	;  0
    0000179B 00                     358 	.db #0x00	; 0
    0000179C 00                     359 	.db #0x00	; 0
                         00000120   360 G$globe6$0_0$0 == .
    0000179D                        361 _globe6:
    0000179D 00                     362 	.db #0x00	;  0
    0000179E 00                     363 	.db #0x00	;  0
    0000179F 50                     364 	.db #0x50	; 80	'P'
    000017A0 00                     365 	.db #0x00	; 0
    000017A1 10                     366 	.db #0x10	;  16
    000017A2 00                     367 	.db #0x00	;  0
    000017A3 52                     368 	.db #0x52	; 82	'R'
    000017A4 00                     369 	.db #0x00	; 0
    000017A5 F0                     370 	.db #0xf0	; -16
    000017A6 08                     371 	.db #0x08	;  8
    000017A7 54                     372 	.db #0x54	; 84	'T'
    000017A8 00                     373 	.db #0x00	; 0
    000017A9 10                     374 	.db #0x10	;  16
    000017AA 00                     375 	.db #0x00	;  0
    000017AB 56                     376 	.db #0x56	; 86	'V'
    000017AC 00                     377 	.db #0x00	; 0
    000017AD F0                     378 	.db #0xf0	; -16
    000017AE 08                     379 	.db #0x08	;  8
    000017AF 58                     380 	.db #0x58	; 88	'X'
    000017B0 00                     381 	.db #0x00	; 0
    000017B1 10                     382 	.db #0x10	;  16
    000017B2 00                     383 	.db #0x00	;  0
    000017B3 5A                     384 	.db #0x5a	; 90	'Z'
    000017B4 00                     385 	.db #0x00	; 0
    000017B5 F0                     386 	.db #0xf0	; -16
    000017B6 08                     387 	.db #0x08	;  8
    000017B7 5C                     388 	.db #0x5c	; 92
    000017B8 00                     389 	.db #0x00	; 0
    000017B9 10                     390 	.db #0x10	;  16
    000017BA 00                     391 	.db #0x00	;  0
    000017BB 5E                     392 	.db #0x5e	; 94
    000017BC 00                     393 	.db #0x00	; 0
    000017BD 80                     394 	.db #0x80	; -128
    000017BE 00                     395 	.db #0x00	;  0
    000017BF 00                     396 	.db #0x00	; 0
    000017C0 00                     397 	.db #0x00	; 0
                         00000144   398 G$globe7$0_0$0 == .
    000017C1                        399 _globe7:
    000017C1 00                     400 	.db #0x00	;  0
    000017C2 00                     401 	.db #0x00	;  0
    000017C3 60                     402 	.db #0x60	; 96
    000017C4 00                     403 	.db #0x00	; 0
    000017C5 10                     404 	.db #0x10	;  16
    000017C6 00                     405 	.db #0x00	;  0
    000017C7 62                     406 	.db #0x62	; 98	'b'
    000017C8 00                     407 	.db #0x00	; 0
    000017C9 F0                     408 	.db #0xf0	; -16
    000017CA 08                     409 	.db #0x08	;  8
    000017CB 64                     410 	.db #0x64	; 100	'd'
    000017CC 00                     411 	.db #0x00	; 0
    000017CD 10                     412 	.db #0x10	;  16
    000017CE 00                     413 	.db #0x00	;  0
    000017CF 66                     414 	.db #0x66	; 102	'f'
    000017D0 00                     415 	.db #0x00	; 0
    000017D1 F0                     416 	.db #0xf0	; -16
    000017D2 08                     417 	.db #0x08	;  8
    000017D3 68                     418 	.db #0x68	; 104	'h'
    000017D4 00                     419 	.db #0x00	; 0
    000017D5 10                     420 	.db #0x10	;  16
    000017D6 00                     421 	.db #0x00	;  0
    000017D7 6A                     422 	.db #0x6a	; 106	'j'
    000017D8 00                     423 	.db #0x00	; 0
    000017D9 F0                     424 	.db #0xf0	; -16
    000017DA 08                     425 	.db #0x08	;  8
    000017DB 6C                     426 	.db #0x6c	; 108	'l'
    000017DC 00                     427 	.db #0x00	; 0
    000017DD 10                     428 	.db #0x10	;  16
    000017DE 00                     429 	.db #0x00	;  0
    000017DF 6E                     430 	.db #0x6e	; 110	'n'
    000017E0 00                     431 	.db #0x00	; 0
    000017E1 80                     432 	.db #0x80	; -128
    000017E2 00                     433 	.db #0x00	;  0
    000017E3 00                     434 	.db #0x00	; 0
    000017E4 00                     435 	.db #0x00	; 0
                         00000168   436 G$globe_metasprites$0_0$0 == .
    000017E5                        437 _globe_metasprites:
    000017E5 E9 16                  438 	.dw _globe1
    000017E7 0D 17                  439 	.dw _globe2
    000017E9 31 17                  440 	.dw _globe3
    000017EB 55 17                  441 	.dw _globe4
    000017ED 79 17                  442 	.dw _globe5
    000017EF 9D 17                  443 	.dw _globe6
    000017F1 C1 17                  444 	.dw _globe7
                         00000176   445 	G$GameTitleUpdate$0$0	= .
                                    446 	.globl	G$GameTitleUpdate$0$0
                         00000176   447 	C$GameTitle.c$108$1_0$172	= .
                                    448 	.globl	C$GameTitle.c$108$1_0$172
                                    449 ;src\GameTitle.c:108: uint8_t GameTitleUpdate(void)
                                    450 ;	---------------------------------
                                    451 ; Function GameTitleUpdate
                                    452 ; ---------------------------------
    000017F3                        453 _GameTitleUpdate::
                         00000176   454 	C$GameTitle.c$110$1_0$172	= .
                                    455 	.globl	C$GameTitle.c$110$1_0$172
                                    456 ;src\GameTitle.c:110: joypadPrevious = joypadCurrent;
    000017F3 FA 6E CD         [16]  457 	ld	a, (#_joypadCurrent)
    000017F6 EA 6D CD         [16]  458 	ld	(#_joypadPrevious),a
                         0000017C   459 	C$GameTitle.c$111$1_0$172	= .
                                    460 	.globl	C$GameTitle.c$111$1_0$172
                                    461 ;src\GameTitle.c:111: joypadCurrent = joypad();
    000017F9 CD F7 63         [24]  462 	call	_joypad
    000017FC EA 6E CD         [16]  463 	ld	(#_joypadCurrent),a
                         00000182   464 	C$GameTitle.c$112$1_0$172	= .
                                    465 	.globl	C$GameTitle.c$112$1_0$172
                                    466 ;src\GameTitle.c:112: timer++;
    000017FF 21 6B CD         [12]  467 	ld	hl, #_timer
    00001802 34               [12]  468 	inc	(hl)
                         00000186   469 	C$GameTitle.c$113$1_0$172	= .
                                    470 	.globl	C$GameTitle.c$113$1_0$172
                                    471 ;src\GameTitle.c:113: if (timer == 60)
    00001803 7E               [ 8]  472 	ld	a, (hl)
    00001804 D6 3C            [ 8]  473 	sub	a, #0x3c
    00001806 20 09            [12]  474 	jr	NZ, 00102$
                         0000018B   475 	C$GameTitle.c$115$2_0$173	= .
                                    476 	.globl	C$GameTitle.c$115$2_0$173
                                    477 ;src\GameTitle.c:115: frame++; 
    00001808 21 6C CD         [12]  478 	ld	hl, #_frame
    0000180B 34               [12]  479 	inc	(hl)
                         0000018F   480 	C$GameTitle.c$116$2_0$173	= .
                                    481 	.globl	C$GameTitle.c$116$2_0$173
                                    482 ;src\GameTitle.c:116: timer = 0;
    0000180C 21 6B CD         [12]  483 	ld	hl, #_timer
    0000180F 36 00            [12]  484 	ld	(hl), #0x00
    00001811                        485 00102$:
                         00000194   486 	C$GameTitle.c$118$1_0$172	= .
                                    487 	.globl	C$GameTitle.c$118$1_0$172
                                    488 ;src\GameTitle.c:118: if (frame >= 7) frame = 0;
    00001811 21 6C CD         [12]  489 	ld	hl, #_frame
    00001814 7E               [ 8]  490 	ld	a, (hl)
    00001815 D6 07            [ 8]  491 	sub	a, #0x07
    00001817 38 02            [12]  492 	jr	C, 00104$
    00001819 36 00            [12]  493 	ld	(hl), #0x00
    0000181B                        494 00104$:
                                    495 ;src\GameTitle.c:119: move_metasprite(globe_metasprites[frame], 0, 0, 88, 64);
    0000181B 01 E5 17         [12]  496 	ld	bc, #_globe_metasprites+0
    0000181E 21 6C CD         [12]  497 	ld	hl, #_frame
    00001821 6E               [ 8]  498 	ld	l, (hl)
                                    499 ;	spillPairReg hl
                                    500 ;	spillPairReg hl
    00001822 AF               [ 4]  501 	xor	a, a
    00001823 67               [ 4]  502 	ld	h, a
    00001824 29               [ 8]  503 	add	hl, hl
    00001825 09               [ 8]  504 	add	hl, bc
    00001826 2A               [ 8]  505 	ld	a, (hl+)
    00001827 6E               [ 8]  506 	ld	l, (hl)
                                    507 ;	spillPairReg hl
                                    508 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    00001828 5F               [ 4]  509 	ld	e, a
    00001829 55               [ 4]  510 	ld	d, l
    0000182A 21 C5 C0         [12]  511 	ld	hl, #___current_metasprite
    0000182D 7B               [ 4]  512 	ld	a, e
    0000182E 22               [ 8]  513 	ld	(hl+), a
    0000182F 72               [ 8]  514 	ld	(hl), d
                                    515 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00001830 21 C7 C0         [12]  516 	ld	hl, #___current_base_tile
    00001833 36 00            [12]  517 	ld	(hl), #0x00
                                    518 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00001835 21 C8 C0         [12]  519 	ld	hl, #___current_base_prop
    00001838 36 00            [12]  520 	ld	(hl), #0x00
                                    521 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    0000183A C5               [16]  522 	push	bc
    0000183B 11 58 40         [12]  523 	ld	de, #0x4058
    0000183E AF               [ 4]  524 	xor	a, a
    0000183F CD 36 60         [24]  525 	call	___move_metasprite
    00001842 C1               [12]  526 	pop	bc
                         000001C6   527 	C$GameTitle.c$120$1_0$172	= .
                                    528 	.globl	C$GameTitle.c$120$1_0$172
                                    529 ;src\GameTitle.c:120: if (joypadCurrent & J_START)
    00001843 21 6E CD         [12]  530 	ld	hl, #_joypadCurrent
    00001846 5E               [ 8]  531 	ld	e, (hl)
    00001847 CB 7B            [ 8]  532 	bit	7, e
    00001849 28 2A            [12]  533 	jr	Z, 00106$
                         000001CE   534 	C$GameTitle.c$122$2_0$174	= .
                                    535 	.globl	C$GameTitle.c$122$2_0$174
                                    536 ;src\GameTitle.c:122: fadeToBlack(10);
    0000184B C5               [16]  537 	push	bc
    0000184C 3E 0A            [ 8]  538 	ld	a, #0x0a
    0000184E CD 81 26         [24]  539 	call	_fadeToBlack
    00001851 C1               [12]  540 	pop	bc
                                    541 ;src\GameTitle.c:123: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    00001852 21 6C CD         [12]  542 	ld	hl, #_frame
    00001855 6E               [ 8]  543 	ld	l, (hl)
                                    544 ;	spillPairReg hl
                                    545 ;	spillPairReg hl
    00001856 AF               [ 4]  546 	xor	a, a
    00001857 67               [ 4]  547 	ld	h, a
    00001858 29               [ 8]  548 	add	hl, hl
    00001859 09               [ 8]  549 	add	hl, bc
    0000185A 2A               [ 8]  550 	ld	a, (hl+)
    0000185B 4E               [ 8]  551 	ld	c, (hl)
                                    552 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    0000185C 21 C5 C0         [12]  553 	ld	hl, #___current_metasprite
    0000185F 22               [ 8]  554 	ld	(hl+), a
    00001860 71               [ 8]  555 	ld	(hl), c
                                    556 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    00001861 21 C7 C0         [12]  557 	ld	hl, #___current_base_tile
    00001864 36 00            [12]  558 	ld	(hl), #0x00
                                    559 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00001866 21 C8 C0         [12]  560 	ld	hl, #___current_base_prop
    00001869 36 00            [12]  561 	ld	(hl), #0x00
                                    562 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    0000186B 11 B0 B0         [12]  563 	ld	de, #0xb0b0
    0000186E AF               [ 4]  564 	xor	a, a
    0000186F CD 36 60         [24]  565 	call	___move_metasprite
                         000001F5   566 	C$GameTitle.c$124$2_0$174	= .
                                    567 	.globl	C$GameTitle.c$124$2_0$174
                                    568 ;src\GameTitle.c:124: return COREGAMELOOP;
    00001872 3E 02            [ 8]  569 	ld	a, #0x02
    00001874 C9               [16]  570 	ret
    00001875                        571 00106$:
                         000001F8   572 	C$GameTitle.c$126$1_0$172	= .
                                    573 	.globl	C$GameTitle.c$126$1_0$172
                                    574 ;src\GameTitle.c:126: if (joypadCurrent & J_SELECT)
    00001875 CB 73            [ 8]  575 	bit	6, e
    00001877 28 2A            [12]  576 	jr	Z, 00108$
                         000001FC   577 	C$GameTitle.c$128$2_0$175	= .
                                    578 	.globl	C$GameTitle.c$128$2_0$175
                                    579 ;src\GameTitle.c:128: fadeToBlack(10);
    00001879 C5               [16]  580 	push	bc
    0000187A 3E 0A            [ 8]  581 	ld	a, #0x0a
    0000187C CD 81 26         [24]  582 	call	_fadeToBlack
    0000187F C1               [12]  583 	pop	bc
                                    584 ;src\GameTitle.c:129: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    00001880 21 6C CD         [12]  585 	ld	hl, #_frame
    00001883 6E               [ 8]  586 	ld	l, (hl)
                                    587 ;	spillPairReg hl
                                    588 ;	spillPairReg hl
    00001884 26 00            [ 8]  589 	ld	h, #0x00
                                    590 ;	spillPairReg hl
                                    591 ;	spillPairReg hl
    00001886 29               [ 8]  592 	add	hl, hl
    00001887 09               [ 8]  593 	add	hl, bc
    00001888 2A               [ 8]  594 	ld	a, (hl+)
    00001889 4E               [ 8]  595 	ld	c, (hl)
                                    596 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    0000188A 21 C5 C0         [12]  597 	ld	hl, #___current_metasprite
    0000188D 22               [ 8]  598 	ld	(hl+), a
    0000188E 71               [ 8]  599 	ld	(hl), c
                                    600 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    0000188F 21 C7 C0         [12]  601 	ld	hl, #___current_base_tile
    00001892 36 00            [12]  602 	ld	(hl), #0x00
                                    603 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00001894 21 C8 C0         [12]  604 	ld	hl, #___current_base_prop
    00001897 36 00            [12]  605 	ld	(hl), #0x00
                                    606 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00001899 11 B0 B0         [12]  607 	ld	de, #0xb0b0
    0000189C AF               [ 4]  608 	xor	a, a
    0000189D CD 36 60         [24]  609 	call	___move_metasprite
                         00000223   610 	C$GameTitle.c$130$2_0$175	= .
                                    611 	.globl	C$GameTitle.c$130$2_0$175
                                    612 ;src\GameTitle.c:130: return GAMEJOHNDOE;
    000018A0 3E 03            [ 8]  613 	ld	a, #0x03
    000018A2 C9               [16]  614 	ret
    000018A3                        615 00108$:
                         00000226   616 	C$GameTitle.c$132$1_0$172	= .
                                    617 	.globl	C$GameTitle.c$132$1_0$172
                                    618 ;src\GameTitle.c:132: if (joypadCurrent & J_B)
    000018A3 CB 6B            [ 8]  619 	bit	5, e
    000018A5 28 3E            [12]  620 	jr	Z, 00110$
                         0000022A   621 	C$GameTitle.c$134$2_0$176	= .
                                    622 	.globl	C$GameTitle.c$134$2_0$176
                                    623 ;src\GameTitle.c:134: fadeToBlack(3);
    000018A7 C5               [16]  624 	push	bc
    000018A8 3E 03            [ 8]  625 	ld	a, #0x03
    000018AA CD 81 26         [24]  626 	call	_fadeToBlack
    000018AD 3E 03            [ 8]  627 	ld	a, #0x03
    000018AF CD CA 26         [24]  628 	call	_fadeFromBlack
    000018B2 3E 03            [ 8]  629 	ld	a, #0x03
    000018B4 CD 81 26         [24]  630 	call	_fadeToBlack
    000018B7 3E 03            [ 8]  631 	ld	a, #0x03
    000018B9 CD CA 26         [24]  632 	call	_fadeFromBlack
    000018BC 3E 03            [ 8]  633 	ld	a, #0x03
    000018BE CD 81 26         [24]  634 	call	_fadeToBlack
    000018C1 C1               [12]  635 	pop	bc
                                    636 ;src\GameTitle.c:139: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    000018C2 21 6C CD         [12]  637 	ld	hl, #_frame
    000018C5 6E               [ 8]  638 	ld	l, (hl)
                                    639 ;	spillPairReg hl
                                    640 ;	spillPairReg hl
    000018C6 AF               [ 4]  641 	xor	a, a
    000018C7 67               [ 4]  642 	ld	h, a
    000018C8 29               [ 8]  643 	add	hl, hl
    000018C9 09               [ 8]  644 	add	hl, bc
    000018CA 2A               [ 8]  645 	ld	a, (hl+)
    000018CB 4E               [ 8]  646 	ld	c, (hl)
                                    647 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000018CC 21 C5 C0         [12]  648 	ld	hl, #___current_metasprite
    000018CF 22               [ 8]  649 	ld	(hl+), a
    000018D0 71               [ 8]  650 	ld	(hl), c
                                    651 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000018D1 21 C7 C0         [12]  652 	ld	hl, #___current_base_tile
    000018D4 36 00            [12]  653 	ld	(hl), #0x00
                                    654 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    000018D6 21 C8 C0         [12]  655 	ld	hl, #___current_base_prop
    000018D9 36 00            [12]  656 	ld	(hl), #0x00
                                    657 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    000018DB 11 B0 B0         [12]  658 	ld	de, #0xb0b0
    000018DE AF               [ 4]  659 	xor	a, a
    000018DF CD 36 60         [24]  660 	call	___move_metasprite
                         00000265   661 	C$GameTitle.c$140$2_0$176	= .
                                    662 	.globl	C$GameTitle.c$140$2_0$176
                                    663 ;src\GameTitle.c:140: return BATTLE;
    000018E2 3E 05            [ 8]  664 	ld	a, #0x05
    000018E4 C9               [16]  665 	ret
    000018E5                        666 00110$:
                         00000268   667 	C$GameTitle.c$142$1_0$172	= .
                                    668 	.globl	C$GameTitle.c$142$1_0$172
                                    669 ;src\GameTitle.c:142: if (joypadCurrent & J_A)
    000018E5 CB 63            [ 8]  670 	bit	4, e
    000018E7 28 2A            [12]  671 	jr	Z, 00112$
                         0000026C   672 	C$GameTitle.c$144$2_0$177	= .
                                    673 	.globl	C$GameTitle.c$144$2_0$177
                                    674 ;src\GameTitle.c:144: fadeToBlack(10);
    000018E9 C5               [16]  675 	push	bc
    000018EA 3E 0A            [ 8]  676 	ld	a, #0x0a
    000018EC CD 81 26         [24]  677 	call	_fadeToBlack
    000018EF C1               [12]  678 	pop	bc
                                    679 ;src\GameTitle.c:145: move_metasprite(globe_metasprites[frame], 0, 0, -80, -80);
    000018F0 21 6C CD         [12]  680 	ld	hl, #_frame
    000018F3 6E               [ 8]  681 	ld	l, (hl)
                                    682 ;	spillPairReg hl
                                    683 ;	spillPairReg hl
    000018F4 AF               [ 4]  684 	xor	a, a
    000018F5 67               [ 4]  685 	ld	h, a
    000018F6 29               [ 8]  686 	add	hl, hl
    000018F7 09               [ 8]  687 	add	hl, bc
    000018F8 2A               [ 8]  688 	ld	a, (hl+)
    000018F9 4E               [ 8]  689 	ld	c, (hl)
                                    690 ;c:\gbdk\include\gb\metasprites.h:169: __current_metasprite = metasprite;
    000018FA 21 C5 C0         [12]  691 	ld	hl, #___current_metasprite
    000018FD 22               [ 8]  692 	ld	(hl+), a
    000018FE 71               [ 8]  693 	ld	(hl), c
                                    694 ;c:\gbdk\include\gb\metasprites.h:170: __current_base_tile = base_tile;
    000018FF 21 C7 C0         [12]  695 	ld	hl, #___current_base_tile
    00001902 36 00            [12]  696 	ld	(hl), #0x00
                                    697 ;c:\gbdk\include\gb\metasprites.h:171: __current_base_prop = 0;
    00001904 21 C8 C0         [12]  698 	ld	hl, #___current_base_prop
    00001907 36 00            [12]  699 	ld	(hl), #0x00
                                    700 ;c:\gbdk\include\gb\metasprites.h:172: return __move_metasprite(base_sprite, (y << 8) | (uint8_t)x);
    00001909 11 B0 B0         [12]  701 	ld	de, #0xb0b0
    0000190C AF               [ 4]  702 	xor	a, a
    0000190D CD 36 60         [24]  703 	call	___move_metasprite
                         00000293   704 	C$GameTitle.c$146$2_0$177	= .
                                    705 	.globl	C$GameTitle.c$146$2_0$177
                                    706 ;src\GameTitle.c:146: return BESTIARY;
    00001910 3E 04            [ 8]  707 	ld	a, #0x04
    00001912 C9               [16]  708 	ret
    00001913                        709 00112$:
                         00000296   710 	C$GameTitle.c$149$1_0$172	= .
                                    711 	.globl	C$GameTitle.c$149$1_0$172
                                    712 ;src\GameTitle.c:149: return GAMETITLE;
    00001913 3E 01            [ 8]  713 	ld	a, #0x01
                         00000298   714 	C$GameTitle.c$150$1_0$172	= .
                                    715 	.globl	C$GameTitle.c$150$1_0$172
                                    716 ;src\GameTitle.c:150: }
                         00000298   717 	C$GameTitle.c$150$1_0$172	= .
                                    718 	.globl	C$GameTitle.c$150$1_0$172
                         00000298   719 	XG$GameTitleUpdate$0$0	= .
                                    720 	.globl	XG$GameTitleUpdate$0$0
    00001915 C9               [16]  721 	ret
                                    722 	.area _CODE
                                    723 	.area _INITIALIZER
                         00000000   724 FGameTitle$__xinit_timer$0_0$0 == .
    00007147                        725 __xinit__timer:
    00007147 00                     726 	.db #0x00	; 0
                         00000001   727 FGameTitle$__xinit_frame$0_0$0 == .
    00007148                        728 __xinit__frame:
    00007148 00                     729 	.db #0x00	; 0
                                    730 	.area _CABS (ABS)
