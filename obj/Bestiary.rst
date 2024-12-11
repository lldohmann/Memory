                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Bestiary
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _BestiaryUpdate
                                     12 	.globl _BestiarySetup
                                     13 	.globl _InvertColor
                                     14 	.globl _fadeFromBlack
                                     15 	.globl _fadeToBlack
                                     16 	.globl _DrawText
                                     17 	.globl _DrawNumber
                                     18 	.globl _set_bkg_tiles
                                     19 	.globl _set_bkg_data
                                     20 	.globl _joypad
                                     21 	.globl _invert
                                     22 ;--------------------------------------------------------
                                     23 ; special function registers
                                     24 ;--------------------------------------------------------
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area _DATA
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area _INITIALIZED
                         00000000    33 G$invert$0_0$0==.
    0000CEE8                         34 _invert::
    0000CEE8                         35 	.ds 1
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area _DABS (ABS)
                                     40 ;--------------------------------------------------------
                                     41 ; global & static initialisations
                                     42 ;--------------------------------------------------------
                                     43 	.area _HOME
                                     44 	.area _GSINIT
                                     45 	.area _GSFINAL
                                     46 	.area _GSINIT
                                     47 ;--------------------------------------------------------
                                     48 ; Home
                                     49 ;--------------------------------------------------------
                                     50 	.area _HOME
                                     51 	.area _HOME
                                     52 ;--------------------------------------------------------
                                     53 ; code
                                     54 ;--------------------------------------------------------
                                     55 	.area _CODE
                         00000000    56 	G$BestiarySetup$0$0	= .
                                     57 	.globl	G$BestiarySetup$0$0
                         00000000    58 	C$Bestiary.c$48$0_0$137	= .
                                     59 	.globl	C$Bestiary.c$48$0_0$137
                                     60 ;src\Bestiary.c:48: void BestiarySetup(void)
                                     61 ;	---------------------------------
                                     62 ; Function BestiarySetup
                                     63 ; ---------------------------------
    0000375B                         64 _BestiarySetup::
                                     65 ;c:\gbdk\include\gb\gb.h:1449: SCX_REG=x, SCY_REG=y;
    0000375B AF               [ 4]   66 	xor	a, a
    0000375C E0 43            [12]   67 	ldh	(_SCX_REG + 0), a
    0000375E AF               [ 4]   68 	xor	a, a
    0000375F E0 42            [12]   69 	ldh	(_SCY_REG + 0), a
                         00000006    70 	C$Bestiary.c$51$1_0$137	= .
                                     71 	.globl	C$Bestiary.c$51$1_0$137
                                     72 ;src\Bestiary.c:51: set_bkg_data(0, 53, FontTiles); // Load font and window tiles
    00003761 11 DC 46         [12]   73 	ld	de, #_FontTiles
    00003764 D5               [16]   74 	push	de
    00003765 21 00 35         [12]   75 	ld	hl, #0x3500
    00003768 E5               [16]   76 	push	hl
    00003769 CD 08 63         [24]   77 	call	_set_bkg_data
    0000376C E8 04            [16]   78 	add	sp, #4
                         00000013    79 	C$Bestiary.c$52$1_0$137	= .
                                     80 	.globl	C$Bestiary.c$52$1_0$137
                                     81 ;src\Bestiary.c:52: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map); // draw background window & text
    0000376E 11 80 CD         [12]   82 	ld	de, #_Bestiary_Map
    00003771 D5               [16]   83 	push	de
    00003772 21 14 12         [12]   84 	ld	hl, #0x1214
    00003775 E5               [16]   85 	push	hl
    00003776 AF               [ 4]   86 	xor	a, a
    00003777 0F               [ 4]   87 	rrca
    00003778 F5               [16]   88 	push	af
    00003779 CD 35 64         [24]   89 	call	_set_bkg_tiles
    0000377C E8 06            [16]   90 	add	sp, #6
                         00000023    91 	C$Bestiary.c$53$1_0$137	= .
                                     92 	.globl	C$Bestiary.c$53$1_0$137
                                     93 ;src\Bestiary.c:53: SHOW_BKG; 
    0000377E F0 40            [12]   94 	ldh	a, (_LCDC_REG + 0)
    00003780 F6 01            [ 8]   95 	or	a, #0x01
    00003782 E0 40            [12]   96 	ldh	(_LCDC_REG + 0), a
                         00000029    97 	C$Bestiary.c$54$1_0$137	= .
                                     98 	.globl	C$Bestiary.c$54$1_0$137
                                     99 ;src\Bestiary.c:54: fadeFromBlack(10);
    00003784 3E 0A            [ 8]  100 	ld	a, #0x0a
                         0000002B   101 	C$Bestiary.c$55$1_0$137	= .
                                    102 	.globl	C$Bestiary.c$55$1_0$137
                                    103 ;src\Bestiary.c:55: }
                         0000002B   104 	C$Bestiary.c$55$1_0$137	= .
                                    105 	.globl	C$Bestiary.c$55$1_0$137
                         0000002B   106 	XG$BestiarySetup$0$0	= .
                                    107 	.globl	XG$BestiarySetup$0$0
    00003786 C3 CA 26         [16]  108 	jp	_fadeFromBlack
                         0000002E   109 	G$BestiaryUpdate$0$0	= .
                                    110 	.globl	G$BestiaryUpdate$0$0
                         0000002E   111 	C$Bestiary.c$57$1_0$142	= .
                                    112 	.globl	C$Bestiary.c$57$1_0$142
                                    113 ;src\Bestiary.c:57: uint8_t BestiaryUpdate(void)
                                    114 ;	---------------------------------
                                    115 ; Function BestiaryUpdate
                                    116 ; ---------------------------------
    00003789                        117 _BestiaryUpdate::
                         0000002E   118 	C$Bestiary.c$59$1_0$142	= .
                                    119 	.globl	C$Bestiary.c$59$1_0$142
                                    120 ;src\Bestiary.c:59: joypadPrevious = joypadCurrent;
    00003789 FA 6E CD         [16]  121 	ld	a, (#_joypadCurrent)
    0000378C EA 6D CD         [16]  122 	ld	(#_joypadPrevious),a
                         00000034   123 	C$Bestiary.c$60$1_0$142	= .
                                    124 	.globl	C$Bestiary.c$60$1_0$142
                                    125 ;src\Bestiary.c:60: joypadCurrent = joypad();
    0000378F CD F7 63         [24]  126 	call	_joypad
    00003792 21 6E CD         [12]  127 	ld	hl, #_joypadCurrent
    00003795 77               [ 8]  128 	ld	(hl), a
                         0000003B   129 	C$Bestiary.c$62$1_0$142	= .
                                    130 	.globl	C$Bestiary.c$62$1_0$142
                                    131 ;src\Bestiary.c:62: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
    00003796 CB 4E            [12]  132 	bit	1, (hl)
    00003798 28 23            [12]  133 	jr	Z, 00104$
    0000379A FA 6D CD         [16]  134 	ld	a, (#_joypadPrevious)
    0000379D CB 4F            [ 8]  135 	bit	1, a
    0000379F 20 1C            [12]  136 	jr	NZ, 00104$
                         00000046   137 	C$Bestiary.c$64$2_0$143	= .
                                    138 	.globl	C$Bestiary.c$64$2_0$143
                                    139 ;src\Bestiary.c:64: if (index - 1 >= 0)
    000037A1 21 6F CD         [12]  140 	ld	hl, #_index
    000037A4 4E               [ 8]  141 	ld	c, (hl)
    000037A5 AF               [ 4]  142 	xor	a, a
    000037A6 47               [ 4]  143 	ld	b, a
    000037A7 0B               [ 8]  144 	dec	bc
    000037A8 CB 78            [ 8]  145 	bit	7, b
    000037AA 20 11            [12]  146 	jr	NZ, 00104$
                         00000051   147 	C$Bestiary.c$66$3_0$144	= .
                                    148 	.globl	C$Bestiary.c$66$3_0$144
                                    149 ;src\Bestiary.c:66: index--;
    000037AC 35               [12]  150 	dec	(hl)
                         00000052   151 	C$Bestiary.c$67$3_0$144	= .
                                    152 	.globl	C$Bestiary.c$67$3_0$144
                                    153 ;src\Bestiary.c:67: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
    000037AD 11 80 CD         [12]  154 	ld	de, #_Bestiary_Map
    000037B0 D5               [16]  155 	push	de
    000037B1 21 14 12         [12]  156 	ld	hl, #0x1214
    000037B4 E5               [16]  157 	push	hl
    000037B5 AF               [ 4]  158 	xor	a, a
    000037B6 0F               [ 4]  159 	rrca
    000037B7 F5               [16]  160 	push	af
    000037B8 CD 35 64         [24]  161 	call	_set_bkg_tiles
    000037BB E8 06            [16]  162 	add	sp, #6
    000037BD                        163 00104$:
                         00000062   164 	C$Bestiary.c$70$1_0$142	= .
                                    165 	.globl	C$Bestiary.c$70$1_0$142
                                    166 ;src\Bestiary.c:70: if ((joypadCurrent & J_RIGHT) && !(joypadPrevious & J_RIGHT))
    000037BD FA 6E CD         [16]  167 	ld	a, (#_joypadCurrent)
    000037C0 0F               [ 4]  168 	rrca
    000037C1 30 3C            [12]  169 	jr	NC, 00109$
    000037C3 FA 6D CD         [16]  170 	ld	a, (#_joypadPrevious)
    000037C6 0F               [ 4]  171 	rrca
    000037C7 38 36            [12]  172 	jr	C, 00109$
                         0000006E   173 	C$Bestiary.c$72$2_0$145	= .
                                    174 	.globl	C$Bestiary.c$72$2_0$145
                                    175 ;src\Bestiary.c:72: if (index + 1 <= 18)
    000037C9 21 6F CD         [12]  176 	ld	hl, #_index
    000037CC 4E               [ 8]  177 	ld	c, (hl)
    000037CD AF               [ 4]  178 	xor	a, a
    000037CE 47               [ 4]  179 	ld	b, a
    000037CF 03               [ 8]  180 	inc	bc
    000037D0 58               [ 4]  181 	ld	e, b
    000037D1 16 00            [ 8]  182 	ld	d, #0x00
    000037D3 3E 12            [ 8]  183 	ld	a, #0x12
    000037D5 B9               [ 4]  184 	cp	a, c
    000037D6 3E 00            [ 8]  185 	ld	a, #0x00
    000037D8 98               [ 4]  186 	sbc	a, b
    000037D9 CB 7B            [ 8]  187 	bit	7, e
    000037DB 28 07            [12]  188 	jr	Z, 00377$
    000037DD CB 7A            [ 8]  189 	bit	7, d
    000037DF 20 08            [12]  190 	jr	NZ, 00378$
    000037E1 BF               [ 4]  191 	cp	a, a
    000037E2 18 05            [12]  192 	jr	00378$
    000037E4                        193 00377$:
    000037E4 CB 7A            [ 8]  194 	bit	7, d
    000037E6 28 01            [12]  195 	jr	Z, 00378$
    000037E8 37               [ 4]  196 	scf
    000037E9                        197 00378$:
    000037E9 38 14            [12]  198 	jr	C, 00109$
                         00000090   199 	C$Bestiary.c$74$3_0$146	= .
                                    200 	.globl	C$Bestiary.c$74$3_0$146
                                    201 ;src\Bestiary.c:74: index++;
    000037EB 21 6F CD         [12]  202 	ld	hl, #_index
    000037EE 34               [12]  203 	inc	(hl)
                         00000094   204 	C$Bestiary.c$75$3_0$146	= .
                                    205 	.globl	C$Bestiary.c$75$3_0$146
                                    206 ;src\Bestiary.c:75: set_bkg_tiles(0, 0, Bestiary_MapWidth, Bestiary_MapHeight, Bestiary_Map);
    000037EF 11 80 CD         [12]  207 	ld	de, #_Bestiary_Map
    000037F2 D5               [16]  208 	push	de
    000037F3 21 14 12         [12]  209 	ld	hl, #0x1214
    000037F6 E5               [16]  210 	push	hl
    000037F7 AF               [ 4]  211 	xor	a, a
    000037F8 0F               [ 4]  212 	rrca
    000037F9 F5               [16]  213 	push	af
    000037FA CD 35 64         [24]  214 	call	_set_bkg_tiles
    000037FD E8 06            [16]  215 	add	sp, #6
    000037FF                        216 00109$:
                         000000A4   217 	C$Bestiary.c$78$1_0$142	= .
                                    218 	.globl	C$Bestiary.c$78$1_0$142
                                    219 ;src\Bestiary.c:78: if (joypadCurrent & J_START)
    000037FF FA 6E CD         [16]  220 	ld	a, (#_joypadCurrent)
    00003802 07               [ 4]  221 	rlca
    00003803 30 03            [12]  222 	jr	NC, 00112$
                         000000AA   223 	C$Bestiary.c$80$2_0$147	= .
                                    224 	.globl	C$Bestiary.c$80$2_0$147
                                    225 ;src\Bestiary.c:80: InvertColor();
    00003805 CD AD 27         [24]  226 	call	_InvertColor
    00003808                        227 00112$:
                         000000AD   228 	C$Bestiary.c$62$1_0$142	= .
                                    229 	.globl	C$Bestiary.c$62$1_0$142
                                    230 ;src\Bestiary.c:62: if ((joypadCurrent & J_LEFT) && !(joypadPrevious & J_LEFT))
    00003808 FA 6E CD         [16]  231 	ld	a, (#_joypadCurrent)
                         000000B0   232 	C$Bestiary.c$94$1_0$142	= .
                                    233 	.globl	C$Bestiary.c$94$1_0$142
                                    234 ;src\Bestiary.c:94: if (joypadCurrent & J_SELECT)
    0000380B CB 77            [ 8]  235 	bit	6, a
    0000380D 28 08            [12]  236 	jr	Z, 00114$
                         000000B4   237 	C$Bestiary.c$96$2_0$148	= .
                                    238 	.globl	C$Bestiary.c$96$2_0$148
                                    239 ;src\Bestiary.c:96: fadeToBlack(10);
    0000380F 3E 0A            [ 8]  240 	ld	a, #0x0a
    00003811 CD 81 26         [24]  241 	call	_fadeToBlack
                         000000B9   242 	C$Bestiary.c$97$2_0$148	= .
                                    243 	.globl	C$Bestiary.c$97$2_0$148
                                    244 ;src\Bestiary.c:97: return GAMETITLE;
    00003814 3E 01            [ 8]  245 	ld	a, #0x01
    00003816 C9               [16]  246 	ret
    00003817                        247 00114$:
                         000000BC   248 	C$Bestiary.c$99$1_0$142	= .
                                    249 	.globl	C$Bestiary.c$99$1_0$142
                                    250 ;src\Bestiary.c:99: if (joypadCurrent & J_A)
    00003817 CB 67            [ 8]  251 	bit	4, a
    00003819 28 1C            [12]  252 	jr	Z, 00116$
                         000000C0   253 	C$Bestiary.c$101$2_0$149	= .
                                    254 	.globl	C$Bestiary.c$101$2_0$149
                                    255 ;src\Bestiary.c:101: fadeToBlack(3);
    0000381B 3E 03            [ 8]  256 	ld	a, #0x03
    0000381D CD 81 26         [24]  257 	call	_fadeToBlack
                         000000C5   258 	C$Bestiary.c$102$2_0$149	= .
                                    259 	.globl	C$Bestiary.c$102$2_0$149
                                    260 ;src\Bestiary.c:102: fadeFromBlack(3);
    00003820 3E 03            [ 8]  261 	ld	a, #0x03
    00003822 CD CA 26         [24]  262 	call	_fadeFromBlack
                         000000CA   263 	C$Bestiary.c$103$2_0$149	= .
                                    264 	.globl	C$Bestiary.c$103$2_0$149
                                    265 ;src\Bestiary.c:103: fadeToBlack(3);
    00003825 3E 03            [ 8]  266 	ld	a, #0x03
    00003827 CD 81 26         [24]  267 	call	_fadeToBlack
                         000000CF   268 	C$Bestiary.c$104$2_0$149	= .
                                    269 	.globl	C$Bestiary.c$104$2_0$149
                                    270 ;src\Bestiary.c:104: fadeFromBlack(3);
    0000382A 3E 03            [ 8]  271 	ld	a, #0x03
    0000382C CD CA 26         [24]  272 	call	_fadeFromBlack
                         000000D4   273 	C$Bestiary.c$105$2_0$149	= .
                                    274 	.globl	C$Bestiary.c$105$2_0$149
                                    275 ;src\Bestiary.c:105: fadeToBlack(3);
    0000382F 3E 03            [ 8]  276 	ld	a, #0x03
    00003831 CD 81 26         [24]  277 	call	_fadeToBlack
                         000000D9   278 	C$Bestiary.c$106$2_0$149	= .
                                    279 	.globl	C$Bestiary.c$106$2_0$149
                                    280 ;src\Bestiary.c:106: return BATTLE;
    00003834 3E 05            [ 8]  281 	ld	a, #0x05
    00003836 C9               [16]  282 	ret
    00003837                        283 00116$:
                         000000DC   284 	C$Bestiary.c$108$1_0$142	= .
                                    285 	.globl	C$Bestiary.c$108$1_0$142
                                    286 ;src\Bestiary.c:108: if (index == 0) // JIM
    00003837 FA 6F CD         [16]  287 	ld	a, (#_index)
    0000383A B7               [ 4]  288 	or	a, a
    0000383B C2 E6 38         [16]  289 	jp	NZ, 00171$
                         000000E3   290 	C$Bestiary.c$110$2_0$150	= .
                                    291 	.globl	C$Bestiary.c$110$2_0$150
                                    292 ;src\Bestiary.c:110: set_bkg_data(128, 79, Crow_Tiles); // init with crow monster
    0000383E 11 A8 35         [12]  293 	ld	de, #_Crow_Tiles
    00003841 D5               [16]  294 	push	de
    00003842 21 80 4F         [12]  295 	ld	hl, #0x4f80
    00003845 E5               [16]  296 	push	hl
    00003846 CD 08 63         [24]  297 	call	_set_bkg_data
    00003849 E8 04            [16]  298 	add	sp, #4
                         000000F0   299 	C$Bestiary.c$111$2_0$150	= .
                                    300 	.globl	C$Bestiary.c$111$2_0$150
                                    301 ;src\Bestiary.c:111: set_bkg_tiles(2, 4, Crow_MapWidth, Crow_MapHeight, Crow_Map); // draw Crow monster
    0000384B 11 38 37         [12]  302 	ld	de, #_Crow_Map
    0000384E D5               [16]  303 	push	de
    0000384F 21 05 07         [12]  304 	ld	hl, #0x705
    00003852 E5               [16]  305 	push	hl
    00003853 21 02 04         [12]  306 	ld	hl, #0x402
    00003856 E5               [16]  307 	push	hl
    00003857 CD 35 64         [24]  308 	call	_set_bkg_tiles
    0000385A E8 06            [16]  309 	add	sp, #6
                         00000101   310 	C$Bestiary.c$112$2_0$150	= .
                                    311 	.globl	C$Bestiary.c$112$2_0$150
                                    312 ;src\Bestiary.c:112: DrawNumber(4, 0, 0, 3, TRUE);     // ID
    0000385C 21 03 01         [12]  313 	ld	hl, #0x103
    0000385F E5               [16]  314 	push	hl
    00003860 11 00 00         [12]  315 	ld	de, #0x0000
    00003863 D5               [16]  316 	push	de
    00003864 1E 00            [ 8]  317 	ld	e, #0x00
    00003866 3E 04            [ 8]  318 	ld	a, #0x04
    00003868 CD AA 24         [24]  319 	call	_DrawNumber
                         00000110   320 	C$Bestiary.c$114$2_0$150	= .
                                    321 	.globl	C$Bestiary.c$114$2_0$150
                                    322 ;src\Bestiary.c:114: DrawNumber(17, 2, 3, 1, TRUE);    // ATTACK
    0000386B 21 01 01         [12]  323 	ld	hl, #0x101
    0000386E E5               [16]  324 	push	hl
    0000386F 11 03 00         [12]  325 	ld	de, #0x0003
    00003872 D5               [16]  326 	push	de
    00003873 1E 02            [ 8]  327 	ld	e, #0x02
    00003875 3E 11            [ 8]  328 	ld	a, #0x11
    00003877 CD AA 24         [24]  329 	call	_DrawNumber
                         0000011F   330 	C$Bestiary.c$115$2_0$150	= .
                                    331 	.globl	C$Bestiary.c$115$2_0$150
                                    332 ;src\Bestiary.c:115: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
    0000387A 21 01 01         [12]  333 	ld	hl, #0x101
    0000387D E5               [16]  334 	push	hl
    0000387E 11 02 00         [12]  335 	ld	de, #0x0002
    00003881 D5               [16]  336 	push	de
    00003882 1E 04            [ 8]  337 	ld	e, #0x04
    00003884 3E 11            [ 8]  338 	ld	a, #0x11
    00003886 CD AA 24         [24]  339 	call	_DrawNumber
                         0000012E   340 	C$Bestiary.c$116$2_0$150	= .
                                    341 	.globl	C$Bestiary.c$116$2_0$150
                                    342 ;src\Bestiary.c:116: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
    00003889 21 01 01         [12]  343 	ld	hl, #0x101
    0000388C E5               [16]  344 	push	hl
    0000388D 11 01 00         [12]  345 	ld	de, #0x0001
    00003890 D5               [16]  346 	push	de
    00003891 1E 06            [ 8]  347 	ld	e, #0x06
    00003893 3E 11            [ 8]  348 	ld	a, #0x11
    00003895 CD AA 24         [24]  349 	call	_DrawNumber
                         0000013D   350 	C$Bestiary.c$117$2_0$150	= .
                                    351 	.globl	C$Bestiary.c$117$2_0$150
                                    352 ;src\Bestiary.c:117: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    00003898 21 01 01         [12]  353 	ld	hl, #0x101
    0000389B E5               [16]  354 	push	hl
    0000389C 11 04 00         [12]  355 	ld	de, #0x0004
    0000389F D5               [16]  356 	push	de
    000038A0 1E 08            [ 8]  357 	ld	e, #0x08
    000038A2 3E 11            [ 8]  358 	ld	a, #0x11
    000038A4 CD AA 24         [24]  359 	call	_DrawNumber
                         0000014C   360 	C$Bestiary.c$118$2_0$150	= .
                                    361 	.globl	C$Bestiary.c$118$2_0$150
                                    362 ;src\Bestiary.c:118: DrawNumber(17, 10, 5, 1, TRUE);   // EXP.
    000038A7 21 01 01         [12]  363 	ld	hl, #0x101
    000038AA E5               [16]  364 	push	hl
    000038AB 11 05 00         [12]  365 	ld	de, #0x0005
    000038AE D5               [16]  366 	push	de
    000038AF 1E 0A            [ 8]  367 	ld	e, #0x0a
    000038B1 3E 11            [ 8]  368 	ld	a, #0x11
    000038B3 CD AA 24         [24]  369 	call	_DrawNumber
                         0000015B   370 	C$Bestiary.c$119$2_0$150	= .
                                    371 	.globl	C$Bestiary.c$119$2_0$150
                                    372 ;src\Bestiary.c:119: DrawText(1, 13, "JIM IS A ", TRUE);
    000038B6 3E 01            [ 8]  373 	ld	a, #0x01
    000038B8 F5               [16]  374 	push	af
    000038B9 33               [ 8]  375 	inc	sp
    000038BA 11 A7 43         [12]  376 	ld	de, #___str_0
    000038BD D5               [16]  377 	push	de
    000038BE 1E 0D            [ 8]  378 	ld	e, #0x0d
    000038C0 3E 01            [ 8]  379 	ld	a, #0x01
    000038C2 CD 84 25         [24]  380 	call	_DrawText
                         0000016A   381 	C$Bestiary.c$120$2_0$150	= .
                                    382 	.globl	C$Bestiary.c$120$2_0$150
                                    383 ;src\Bestiary.c:120: DrawText(1, 14, "GAMBLER. HE LIKES", TRUE);
    000038C5 3E 01            [ 8]  384 	ld	a, #0x01
    000038C7 F5               [16]  385 	push	af
    000038C8 33               [ 8]  386 	inc	sp
    000038C9 11 B1 43         [12]  387 	ld	de, #___str_1
    000038CC D5               [16]  388 	push	de
    000038CD 1E 0E            [ 8]  389 	ld	e, #0x0e
    000038CF 3E 01            [ 8]  390 	ld	a, #0x01
    000038D1 CD 84 25         [24]  391 	call	_DrawText
                         00000179   392 	C$Bestiary.c$121$2_0$150	= .
                                    393 	.globl	C$Bestiary.c$121$2_0$150
                                    394 ;src\Bestiary.c:121: DrawText(1, 15, "SHOOTING DICE.", TRUE);
    000038D4 3E 01            [ 8]  395 	ld	a, #0x01
    000038D6 F5               [16]  396 	push	af
    000038D7 33               [ 8]  397 	inc	sp
    000038D8 11 C3 43         [12]  398 	ld	de, #___str_2
    000038DB D5               [16]  399 	push	de
    000038DC 1E 0F            [ 8]  400 	ld	e, #0x0f
    000038DE 3E 01            [ 8]  401 	ld	a, #0x01
    000038E0 CD 84 25         [24]  402 	call	_DrawText
    000038E3 C3 A4 43         [16]  403 	jp	00172$
    000038E6                        404 00171$:
                         0000018B   405 	C$Bestiary.c$123$1_0$142	= .
                                    406 	.globl	C$Bestiary.c$123$1_0$142
                                    407 ;src\Bestiary.c:123: else if (index == 1) // Gypsy
    000038E6 FA 6F CD         [16]  408 	ld	a, (#_index)
    000038E9 3D               [ 4]  409 	dec	a
    000038EA C2 95 39         [16]  410 	jp	NZ,00168$
                         00000192   411 	C$Bestiary.c$125$2_0$151	= .
                                    412 	.globl	C$Bestiary.c$125$2_0$151
                                    413 ;src\Bestiary.c:125: set_bkg_data(128, 79, GypsyTiles); 
    000038ED 11 3C 4A         [12]  414 	ld	de, #_GypsyTiles
    000038F0 D5               [16]  415 	push	de
    000038F1 21 80 4F         [12]  416 	ld	hl, #0x4f80
    000038F4 E5               [16]  417 	push	hl
    000038F5 CD 08 63         [24]  418 	call	_set_bkg_data
    000038F8 E8 04            [16]  419 	add	sp, #4
                         0000019F   420 	C$Bestiary.c$126$2_0$151	= .
                                    421 	.globl	C$Bestiary.c$126$2_0$151
                                    422 ;src\Bestiary.c:126: set_bkg_tiles(2, 4, Gypsy_MapWidth, Gypsy_MapHeight, Gypsy_Map); 
    000038FA 11 2C 4C         [12]  423 	ld	de, #_Gypsy_Map
    000038FD D5               [16]  424 	push	de
    000038FE 21 06 07         [12]  425 	ld	hl, #0x706
    00003901 E5               [16]  426 	push	hl
    00003902 21 02 04         [12]  427 	ld	hl, #0x402
    00003905 E5               [16]  428 	push	hl
    00003906 CD 35 64         [24]  429 	call	_set_bkg_tiles
    00003909 E8 06            [16]  430 	add	sp, #6
                         000001B0   431 	C$Bestiary.c$127$2_0$151	= .
                                    432 	.globl	C$Bestiary.c$127$2_0$151
                                    433 ;src\Bestiary.c:127: DrawNumber(4, 0, 1, 3, TRUE);     // ID
    0000390B 21 03 01         [12]  434 	ld	hl, #0x103
    0000390E E5               [16]  435 	push	hl
    0000390F 11 01 00         [12]  436 	ld	de, #0x0001
    00003912 D5               [16]  437 	push	de
    00003913 1E 00            [ 8]  438 	ld	e, #0x00
    00003915 3E 04            [ 8]  439 	ld	a, #0x04
    00003917 CD AA 24         [24]  440 	call	_DrawNumber
                         000001BF   441 	C$Bestiary.c$129$2_0$151	= .
                                    442 	.globl	C$Bestiary.c$129$2_0$151
                                    443 ;src\Bestiary.c:129: DrawNumber(17, 2, 2, 1, TRUE);    // ATTACK
    0000391A 21 01 01         [12]  444 	ld	hl, #0x101
    0000391D E5               [16]  445 	push	hl
    0000391E 11 02 00         [12]  446 	ld	de, #0x0002
    00003921 D5               [16]  447 	push	de
    00003922 1E 02            [ 8]  448 	ld	e, #0x02
    00003924 3E 11            [ 8]  449 	ld	a, #0x11
    00003926 CD AA 24         [24]  450 	call	_DrawNumber
                         000001CE   451 	C$Bestiary.c$130$2_0$151	= .
                                    452 	.globl	C$Bestiary.c$130$2_0$151
                                    453 ;src\Bestiary.c:130: DrawNumber(17, 4, 2, 1, TRUE);    // DEFENSE
    00003929 21 01 01         [12]  454 	ld	hl, #0x101
    0000392C E5               [16]  455 	push	hl
    0000392D 11 02 00         [12]  456 	ld	de, #0x0002
    00003930 D5               [16]  457 	push	de
    00003931 1E 04            [ 8]  458 	ld	e, #0x04
    00003933 3E 11            [ 8]  459 	ld	a, #0x11
    00003935 CD AA 24         [24]  460 	call	_DrawNumber
                         000001DD   461 	C$Bestiary.c$131$2_0$151	= .
                                    462 	.globl	C$Bestiary.c$131$2_0$151
                                    463 ;src\Bestiary.c:131: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
    00003938 21 01 01         [12]  464 	ld	hl, #0x101
    0000393B E5               [16]  465 	push	hl
    0000393C 11 03 00         [12]  466 	ld	de, #0x0003
    0000393F D5               [16]  467 	push	de
    00003940 1E 06            [ 8]  468 	ld	e, #0x06
    00003942 3E 11            [ 8]  469 	ld	a, #0x11
    00003944 CD AA 24         [24]  470 	call	_DrawNumber
                         000001EC   471 	C$Bestiary.c$132$2_0$151	= .
                                    472 	.globl	C$Bestiary.c$132$2_0$151
                                    473 ;src\Bestiary.c:132: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
    00003947 21 01 01         [12]  474 	ld	hl, #0x101
    0000394A E5               [16]  475 	push	hl
    0000394B 11 02 00         [12]  476 	ld	de, #0x0002
    0000394E D5               [16]  477 	push	de
    0000394F 1E 08            [ 8]  478 	ld	e, #0x08
    00003951 3E 11            [ 8]  479 	ld	a, #0x11
    00003953 CD AA 24         [24]  480 	call	_DrawNumber
                         000001FB   481 	C$Bestiary.c$133$2_0$151	= .
                                    482 	.globl	C$Bestiary.c$133$2_0$151
                                    483 ;src\Bestiary.c:133: DrawNumber(17, 10, 7, 1, TRUE);   // EXP.
    00003956 21 01 01         [12]  484 	ld	hl, #0x101
    00003959 E5               [16]  485 	push	hl
    0000395A 11 07 00         [12]  486 	ld	de, #0x0007
    0000395D D5               [16]  487 	push	de
    0000395E 1E 0A            [ 8]  488 	ld	e, #0x0a
    00003960 3E 11            [ 8]  489 	ld	a, #0x11
    00003962 CD AA 24         [24]  490 	call	_DrawNumber
                         0000020A   491 	C$Bestiary.c$134$2_0$151	= .
                                    492 	.globl	C$Bestiary.c$134$2_0$151
                                    493 ;src\Bestiary.c:134: DrawText(1, 13, "GYPSY MOTHS ARE", TRUE);
    00003965 3E 01            [ 8]  494 	ld	a, #0x01
    00003967 F5               [16]  495 	push	af
    00003968 33               [ 8]  496 	inc	sp
    00003969 11 D2 43         [12]  497 	ld	de, #___str_3
    0000396C D5               [16]  498 	push	de
    0000396D 1E 0D            [ 8]  499 	ld	e, #0x0d
    0000396F 3E 01            [ 8]  500 	ld	a, #0x01
    00003971 CD 84 25         [24]  501 	call	_DrawText
                         00000219   502 	C$Bestiary.c$135$2_0$151	= .
                                    503 	.globl	C$Bestiary.c$135$2_0$151
                                    504 ;src\Bestiary.c:135: DrawText(1, 14, "TAKING ALL FROM", TRUE);
    00003974 3E 01            [ 8]  505 	ld	a, #0x01
    00003976 F5               [16]  506 	push	af
    00003977 33               [ 8]  507 	inc	sp
    00003978 11 E2 43         [12]  508 	ld	de, #___str_4
    0000397B D5               [16]  509 	push	de
    0000397C 1E 0E            [ 8]  510 	ld	e, #0x0e
    0000397E 3E 01            [ 8]  511 	ld	a, #0x01
    00003980 CD 84 25         [24]  512 	call	_DrawText
                         00000228   513 	C$Bestiary.c$136$2_0$151	= .
                                    514 	.globl	C$Bestiary.c$136$2_0$151
                                    515 ;src\Bestiary.c:136: DrawText(1, 15, "EVERYWHERE!", TRUE);
    00003983 3E 01            [ 8]  516 	ld	a, #0x01
    00003985 F5               [16]  517 	push	af
    00003986 33               [ 8]  518 	inc	sp
    00003987 11 F2 43         [12]  519 	ld	de, #___str_5
    0000398A D5               [16]  520 	push	de
    0000398B 1E 0F            [ 8]  521 	ld	e, #0x0f
    0000398D 3E 01            [ 8]  522 	ld	a, #0x01
    0000398F CD 84 25         [24]  523 	call	_DrawText
    00003992 C3 A4 43         [16]  524 	jp	00172$
    00003995                        525 00168$:
                         0000023A   526 	C$Bestiary.c$138$1_0$142	= .
                                    527 	.globl	C$Bestiary.c$138$1_0$142
                                    528 ;src\Bestiary.c:138: else if (index == 2) // Wally
    00003995 FA 6F CD         [16]  529 	ld	a, (#_index)
    00003998 D6 02            [ 8]  530 	sub	a, #0x02
    0000399A C2 54 3A         [16]  531 	jp	NZ,00165$
                         00000242   532 	C$Bestiary.c$140$2_0$152	= .
                                    533 	.globl	C$Bestiary.c$140$2_0$152
                                    534 ;src\Bestiary.c:140: set_bkg_data(128, 79, WallyTiles); 
    0000399D 11 E9 CE         [12]  535 	ld	de, #_WallyTiles
    000039A0 D5               [16]  536 	push	de
    000039A1 21 80 4F         [12]  537 	ld	hl, #0x4f80
    000039A4 E5               [16]  538 	push	hl
    000039A5 CD 08 63         [24]  539 	call	_set_bkg_data
    000039A8 E8 04            [16]  540 	add	sp, #4
                         0000024F   541 	C$Bestiary.c$141$2_0$152	= .
                                    542 	.globl	C$Bestiary.c$141$2_0$152
                                    543 ;src\Bestiary.c:141: set_bkg_tiles(2, 4, Wally_MapWidth, Wally_MapHeight, Wally_Map); 
    000039AA 11 A9 D0         [12]  544 	ld	de, #_Wally_Map
    000039AD D5               [16]  545 	push	de
    000039AE 21 05 06         [12]  546 	ld	hl, #0x605
    000039B1 E5               [16]  547 	push	hl
    000039B2 21 02 04         [12]  548 	ld	hl, #0x402
    000039B5 E5               [16]  549 	push	hl
    000039B6 CD 35 64         [24]  550 	call	_set_bkg_tiles
    000039B9 E8 06            [16]  551 	add	sp, #6
                         00000260   552 	C$Bestiary.c$142$2_0$152	= .
                                    553 	.globl	C$Bestiary.c$142$2_0$152
                                    554 ;src\Bestiary.c:142: DrawNumber(4, 0, 2, 3, TRUE);     // ID
    000039BB 21 03 01         [12]  555 	ld	hl, #0x103
    000039BE E5               [16]  556 	push	hl
    000039BF 11 02 00         [12]  557 	ld	de, #0x0002
    000039C2 D5               [16]  558 	push	de
    000039C3 1E 00            [ 8]  559 	ld	e, #0x00
    000039C5 3E 04            [ 8]  560 	ld	a, #0x04
    000039C7 CD AA 24         [24]  561 	call	_DrawNumber
                         0000026F   562 	C$Bestiary.c$144$2_0$152	= .
                                    563 	.globl	C$Bestiary.c$144$2_0$152
                                    564 ;src\Bestiary.c:144: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
    000039CA 21 01 01         [12]  565 	ld	hl, #0x101
    000039CD E5               [16]  566 	push	hl
    000039CE 11 04 00         [12]  567 	ld	de, #0x0004
    000039D1 D5               [16]  568 	push	de
    000039D2 1E 02            [ 8]  569 	ld	e, #0x02
    000039D4 3E 11            [ 8]  570 	ld	a, #0x11
    000039D6 CD AA 24         [24]  571 	call	_DrawNumber
                         0000027E   572 	C$Bestiary.c$145$2_0$152	= .
                                    573 	.globl	C$Bestiary.c$145$2_0$152
                                    574 ;src\Bestiary.c:145: DrawNumber(17, 4, 4, 1, TRUE);    // DEFENSE
    000039D9 21 01 01         [12]  575 	ld	hl, #0x101
    000039DC E5               [16]  576 	push	hl
    000039DD 11 04 00         [12]  577 	ld	de, #0x0004
    000039E0 D5               [16]  578 	push	de
    000039E1 1E 04            [ 8]  579 	ld	e, #0x04
    000039E3 3E 11            [ 8]  580 	ld	a, #0x11
    000039E5 CD AA 24         [24]  581 	call	_DrawNumber
                         0000028D   582 	C$Bestiary.c$146$2_0$152	= .
                                    583 	.globl	C$Bestiary.c$146$2_0$152
                                    584 ;src\Bestiary.c:146: DrawNumber(17, 6, 4, 1, TRUE);    // SPECIAL
    000039E8 21 01 01         [12]  585 	ld	hl, #0x101
    000039EB E5               [16]  586 	push	hl
    000039EC 11 04 00         [12]  587 	ld	de, #0x0004
    000039EF D5               [16]  588 	push	de
    000039F0 1E 06            [ 8]  589 	ld	e, #0x06
    000039F2 3E 11            [ 8]  590 	ld	a, #0x11
    000039F4 CD AA 24         [24]  591 	call	_DrawNumber
                         0000029C   592 	C$Bestiary.c$147$2_0$152	= .
                                    593 	.globl	C$Bestiary.c$147$2_0$152
                                    594 ;src\Bestiary.c:147: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    000039F7 21 01 01         [12]  595 	ld	hl, #0x101
    000039FA E5               [16]  596 	push	hl
    000039FB 11 04 00         [12]  597 	ld	de, #0x0004
    000039FE D5               [16]  598 	push	de
    000039FF 1E 08            [ 8]  599 	ld	e, #0x08
    00003A01 3E 11            [ 8]  600 	ld	a, #0x11
    00003A03 CD AA 24         [24]  601 	call	_DrawNumber
                         000002AB   602 	C$Bestiary.c$148$2_0$152	= .
                                    603 	.globl	C$Bestiary.c$148$2_0$152
                                    604 ;src\Bestiary.c:148: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
    00003A06 21 02 01         [12]  605 	ld	hl, #0x102
    00003A09 E5               [16]  606 	push	hl
    00003A0A 11 0C 00         [12]  607 	ld	de, #0x000c
    00003A0D D5               [16]  608 	push	de
    00003A0E 1E 0A            [ 8]  609 	ld	e, #0x0a
    00003A10 3E 10            [ 8]  610 	ld	a, #0x10
    00003A12 CD AA 24         [24]  611 	call	_DrawNumber
                         000002BA   612 	C$Bestiary.c$149$2_0$152	= .
                                    613 	.globl	C$Bestiary.c$149$2_0$152
                                    614 ;src\Bestiary.c:149: DrawText(1, 13, "WALLY IS IN A", TRUE);
    00003A15 3E 01            [ 8]  615 	ld	a, #0x01
    00003A17 F5               [16]  616 	push	af
    00003A18 33               [ 8]  617 	inc	sp
    00003A19 11 FE 43         [12]  618 	ld	de, #___str_6
    00003A1C D5               [16]  619 	push	de
    00003A1D 1E 0D            [ 8]  620 	ld	e, #0x0d
    00003A1F 3E 01            [ 8]  621 	ld	a, #0x01
    00003A21 CD 84 25         [24]  622 	call	_DrawText
                         000002C9   623 	C$Bestiary.c$150$2_0$152	= .
                                    624 	.globl	C$Bestiary.c$150$2_0$152
                                    625 ;src\Bestiary.c:150: DrawText(1, 14, "GANG. HE SAYS", TRUE);
    00003A24 3E 01            [ 8]  626 	ld	a, #0x01
    00003A26 F5               [16]  627 	push	af
    00003A27 33               [ 8]  628 	inc	sp
    00003A28 11 0C 44         [12]  629 	ld	de, #___str_7
    00003A2B D5               [16]  630 	push	de
    00003A2C 1E 0E            [ 8]  631 	ld	e, #0x0e
    00003A2E 3E 01            [ 8]  632 	ld	a, #0x01
    00003A30 CD 84 25         [24]  633 	call	_DrawText
                         000002D8   634 	C$Bestiary.c$151$2_0$152	= .
                                    635 	.globl	C$Bestiary.c$151$2_0$152
                                    636 ;src\Bestiary.c:151: DrawText(1, 15, "NO TO DRUGS!", TRUE);
    00003A33 3E 01            [ 8]  637 	ld	a, #0x01
    00003A35 F5               [16]  638 	push	af
    00003A36 33               [ 8]  639 	inc	sp
    00003A37 11 1A 44         [12]  640 	ld	de, #___str_8
    00003A3A D5               [16]  641 	push	de
    00003A3B 1E 0F            [ 8]  642 	ld	e, #0x0f
    00003A3D 3E 01            [ 8]  643 	ld	a, #0x01
    00003A3F CD 84 25         [24]  644 	call	_DrawText
                         000002E7   645 	C$Bestiary.c$152$2_0$152	= .
                                    646 	.globl	C$Bestiary.c$152$2_0$152
                                    647 ;src\Bestiary.c:152: DrawText(1, 16, "HOW COOL!", TRUE);
    00003A42 3E 01            [ 8]  648 	ld	a, #0x01
    00003A44 F5               [16]  649 	push	af
    00003A45 33               [ 8]  650 	inc	sp
    00003A46 11 27 44         [12]  651 	ld	de, #___str_9
    00003A49 D5               [16]  652 	push	de
    00003A4A 1E 10            [ 8]  653 	ld	e, #0x10
    00003A4C 3E 01            [ 8]  654 	ld	a, #0x01
    00003A4E CD 84 25         [24]  655 	call	_DrawText
    00003A51 C3 A4 43         [16]  656 	jp	00172$
    00003A54                        657 00165$:
                         000002F9   658 	C$Bestiary.c$154$1_0$142	= .
                                    659 	.globl	C$Bestiary.c$154$1_0$142
                                    660 ;src\Bestiary.c:154: else if (index == 3)
    00003A54 FA 6F CD         [16]  661 	ld	a, (#_index)
    00003A57 D6 03            [ 8]  662 	sub	a, #0x03
    00003A59 C2 13 3B         [16]  663 	jp	NZ,00162$
                         00000301   664 	C$Bestiary.c$156$2_0$153	= .
                                    665 	.globl	C$Bestiary.c$156$2_0$153
                                    666 ;src\Bestiary.c:156: set_bkg_data(128, 20, Tick_Tiles);
    00003A5C 11 9E 50         [12]  667 	ld	de, #_Tick_Tiles
    00003A5F D5               [16]  668 	push	de
    00003A60 21 80 14         [12]  669 	ld	hl, #0x1480
    00003A63 E5               [16]  670 	push	hl
    00003A64 CD 08 63         [24]  671 	call	_set_bkg_data
    00003A67 E8 04            [16]  672 	add	sp, #4
                         0000030E   673 	C$Bestiary.c$157$2_0$153	= .
                                    674 	.globl	C$Bestiary.c$157$2_0$153
                                    675 ;src\Bestiary.c:157: set_bkg_tiles(2, 4, Tick_MapWidth, Tick_MapHeight, Tick_Map);
    00003A69 11 C7 D0         [12]  676 	ld	de, #_Tick_Map
    00003A6C D5               [16]  677 	push	de
    00003A6D 21 05 05         [12]  678 	ld	hl, #0x505
    00003A70 E5               [16]  679 	push	hl
    00003A71 21 02 04         [12]  680 	ld	hl, #0x402
    00003A74 E5               [16]  681 	push	hl
    00003A75 CD 35 64         [24]  682 	call	_set_bkg_tiles
    00003A78 E8 06            [16]  683 	add	sp, #6
                         0000031F   684 	C$Bestiary.c$158$2_0$153	= .
                                    685 	.globl	C$Bestiary.c$158$2_0$153
                                    686 ;src\Bestiary.c:158: DrawNumber(4, 0, 3, 3, TRUE);     // ID
    00003A7A 21 03 01         [12]  687 	ld	hl, #0x103
    00003A7D E5               [16]  688 	push	hl
    00003A7E 11 03 00         [12]  689 	ld	de, #0x0003
    00003A81 D5               [16]  690 	push	de
    00003A82 1E 00            [ 8]  691 	ld	e, #0x00
    00003A84 3E 04            [ 8]  692 	ld	a, #0x04
    00003A86 CD AA 24         [24]  693 	call	_DrawNumber
                         0000032E   694 	C$Bestiary.c$160$2_0$153	= .
                                    695 	.globl	C$Bestiary.c$160$2_0$153
                                    696 ;src\Bestiary.c:160: DrawNumber(17, 2, 4, 1, TRUE);    // ATTACK
    00003A89 21 01 01         [12]  697 	ld	hl, #0x101
    00003A8C E5               [16]  698 	push	hl
    00003A8D 11 04 00         [12]  699 	ld	de, #0x0004
    00003A90 D5               [16]  700 	push	de
    00003A91 1E 02            [ 8]  701 	ld	e, #0x02
    00003A93 3E 11            [ 8]  702 	ld	a, #0x11
    00003A95 CD AA 24         [24]  703 	call	_DrawNumber
                         0000033D   704 	C$Bestiary.c$161$2_0$153	= .
                                    705 	.globl	C$Bestiary.c$161$2_0$153
                                    706 ;src\Bestiary.c:161: DrawNumber(17, 4, 7, 1, TRUE);    // DEFENSE
    00003A98 21 01 01         [12]  707 	ld	hl, #0x101
    00003A9B E5               [16]  708 	push	hl
    00003A9C 11 07 00         [12]  709 	ld	de, #0x0007
    00003A9F D5               [16]  710 	push	de
    00003AA0 1E 04            [ 8]  711 	ld	e, #0x04
    00003AA2 3E 11            [ 8]  712 	ld	a, #0x11
    00003AA4 CD AA 24         [24]  713 	call	_DrawNumber
                         0000034C   714 	C$Bestiary.c$162$2_0$153	= .
                                    715 	.globl	C$Bestiary.c$162$2_0$153
                                    716 ;src\Bestiary.c:162: DrawNumber(17, 6, 3, 1, TRUE);    // SPECIAL
    00003AA7 21 01 01         [12]  717 	ld	hl, #0x101
    00003AAA E5               [16]  718 	push	hl
    00003AAB 11 03 00         [12]  719 	ld	de, #0x0003
    00003AAE D5               [16]  720 	push	de
    00003AAF 1E 06            [ 8]  721 	ld	e, #0x06
    00003AB1 3E 11            [ 8]  722 	ld	a, #0x11
    00003AB3 CD AA 24         [24]  723 	call	_DrawNumber
                         0000035B   724 	C$Bestiary.c$163$2_0$153	= .
                                    725 	.globl	C$Bestiary.c$163$2_0$153
                                    726 ;src\Bestiary.c:163: DrawNumber(17, 8, 2, 1, TRUE);    // SPEED
    00003AB6 21 01 01         [12]  727 	ld	hl, #0x101
    00003AB9 E5               [16]  728 	push	hl
    00003ABA 11 02 00         [12]  729 	ld	de, #0x0002
    00003ABD D5               [16]  730 	push	de
    00003ABE 1E 08            [ 8]  731 	ld	e, #0x08
    00003AC0 3E 11            [ 8]  732 	ld	a, #0x11
    00003AC2 CD AA 24         [24]  733 	call	_DrawNumber
                         0000036A   734 	C$Bestiary.c$164$2_0$153	= .
                                    735 	.globl	C$Bestiary.c$164$2_0$153
                                    736 ;src\Bestiary.c:164: DrawNumber(16, 10, 16, 2, TRUE);   // EXP.
    00003AC5 21 02 01         [12]  737 	ld	hl, #0x102
    00003AC8 E5               [16]  738 	push	hl
    00003AC9 11 10 00         [12]  739 	ld	de, #0x0010
    00003ACC D5               [16]  740 	push	de
    00003ACD 1E 0A            [ 8]  741 	ld	e, #0x0a
    00003ACF 3E 10            [ 8]  742 	ld	a, #0x10
    00003AD1 CD AA 24         [24]  743 	call	_DrawNumber
                         00000379   744 	C$Bestiary.c$165$2_0$153	= .
                                    745 	.globl	C$Bestiary.c$165$2_0$153
                                    746 ;src\Bestiary.c:165: DrawText(1, 13, "BLOOD SUCKING", TRUE);
    00003AD4 3E 01            [ 8]  747 	ld	a, #0x01
    00003AD6 F5               [16]  748 	push	af
    00003AD7 33               [ 8]  749 	inc	sp
    00003AD8 11 31 44         [12]  750 	ld	de, #___str_10
    00003ADB D5               [16]  751 	push	de
    00003ADC 1E 0D            [ 8]  752 	ld	e, #0x0d
    00003ADE 3E 01            [ 8]  753 	ld	a, #0x01
    00003AE0 CD 84 25         [24]  754 	call	_DrawText
                         00000388   755 	C$Bestiary.c$166$2_0$153	= .
                                    756 	.globl	C$Bestiary.c$166$2_0$153
                                    757 ;src\Bestiary.c:166: DrawText(1, 14, "PARASITE!", TRUE);
    00003AE3 3E 01            [ 8]  758 	ld	a, #0x01
    00003AE5 F5               [16]  759 	push	af
    00003AE6 33               [ 8]  760 	inc	sp
    00003AE7 11 3F 44         [12]  761 	ld	de, #___str_11
    00003AEA D5               [16]  762 	push	de
    00003AEB 1E 0E            [ 8]  763 	ld	e, #0x0e
    00003AED 3E 01            [ 8]  764 	ld	a, #0x01
    00003AEF CD 84 25         [24]  765 	call	_DrawText
                         00000397   766 	C$Bestiary.c$167$2_0$153	= .
                                    767 	.globl	C$Bestiary.c$167$2_0$153
                                    768 ;src\Bestiary.c:167: DrawText(1, 15, "THEY HIDE IN", TRUE);
    00003AF2 3E 01            [ 8]  769 	ld	a, #0x01
    00003AF4 F5               [16]  770 	push	af
    00003AF5 33               [ 8]  771 	inc	sp
    00003AF6 11 49 44         [12]  772 	ld	de, #___str_12
    00003AF9 D5               [16]  773 	push	de
    00003AFA 1E 0F            [ 8]  774 	ld	e, #0x0f
    00003AFC 3E 01            [ 8]  775 	ld	a, #0x01
    00003AFE CD 84 25         [24]  776 	call	_DrawText
                         000003A6   777 	C$Bestiary.c$168$2_0$153	= .
                                    778 	.globl	C$Bestiary.c$168$2_0$153
                                    779 ;src\Bestiary.c:168: DrawText(1, 16, "TALL GRASS!", TRUE);
    00003B01 3E 01            [ 8]  780 	ld	a, #0x01
    00003B03 F5               [16]  781 	push	af
    00003B04 33               [ 8]  782 	inc	sp
    00003B05 11 56 44         [12]  783 	ld	de, #___str_13
    00003B08 D5               [16]  784 	push	de
    00003B09 1E 10            [ 8]  785 	ld	e, #0x10
    00003B0B 3E 01            [ 8]  786 	ld	a, #0x01
    00003B0D CD 84 25         [24]  787 	call	_DrawText
    00003B10 C3 A4 43         [16]  788 	jp	00172$
    00003B13                        789 00162$:
                         000003B8   790 	C$Bestiary.c$170$1_0$142	= .
                                    791 	.globl	C$Bestiary.c$170$1_0$142
                                    792 ;src\Bestiary.c:170: else if (index == 4)
    00003B13 FA 6F CD         [16]  793 	ld	a, (#_index)
    00003B16 D6 04            [ 8]  794 	sub	a, #0x04
    00003B18 C2 D2 3B         [16]  795 	jp	NZ,00159$
                         000003C0   796 	C$Bestiary.c$172$2_0$154	= .
                                    797 	.globl	C$Bestiary.c$172$2_0$154
                                    798 ;src\Bestiary.c:172: set_bkg_data(128, 39, Cop_Tiles);
    00003B1B 11 66 4D         [12]  799 	ld	de, #_Cop_Tiles
    00003B1E D5               [16]  800 	push	de
    00003B1F 21 80 27         [12]  801 	ld	hl, #0x2780
    00003B22 E5               [16]  802 	push	hl
    00003B23 CD 08 63         [24]  803 	call	_set_bkg_data
    00003B26 E8 04            [16]  804 	add	sp, #4
                         000003CD   805 	C$Bestiary.c$173$2_0$154	= .
                                    806 	.globl	C$Bestiary.c$173$2_0$154
                                    807 ;src\Bestiary.c:173: set_bkg_tiles(2, 4, Officer_MapWidth, Officer_MapHeight, Officer_Map);
    00003B28 11 F6 4F         [12]  808 	ld	de, #_Officer_Map
    00003B2B D5               [16]  809 	push	de
    00003B2C 21 06 07         [12]  810 	ld	hl, #0x706
    00003B2F E5               [16]  811 	push	hl
    00003B30 21 02 04         [12]  812 	ld	hl, #0x402
    00003B33 E5               [16]  813 	push	hl
    00003B34 CD 35 64         [24]  814 	call	_set_bkg_tiles
    00003B37 E8 06            [16]  815 	add	sp, #6
                         000003DE   816 	C$Bestiary.c$174$2_0$154	= .
                                    817 	.globl	C$Bestiary.c$174$2_0$154
                                    818 ;src\Bestiary.c:174: DrawNumber(4, 0, 4, 3, TRUE);     // ID
    00003B39 21 03 01         [12]  819 	ld	hl, #0x103
    00003B3C E5               [16]  820 	push	hl
    00003B3D 11 04 00         [12]  821 	ld	de, #0x0004
    00003B40 D5               [16]  822 	push	de
    00003B41 1E 00            [ 8]  823 	ld	e, #0x00
    00003B43 3E 04            [ 8]  824 	ld	a, #0x04
    00003B45 CD AA 24         [24]  825 	call	_DrawNumber
                         000003ED   826 	C$Bestiary.c$176$2_0$154	= .
                                    827 	.globl	C$Bestiary.c$176$2_0$154
                                    828 ;src\Bestiary.c:176: DrawNumber(17, 2, 9, 1, TRUE);    // ATTACK
    00003B48 21 01 01         [12]  829 	ld	hl, #0x101
    00003B4B E5               [16]  830 	push	hl
    00003B4C 11 09 00         [12]  831 	ld	de, #0x0009
    00003B4F D5               [16]  832 	push	de
    00003B50 1E 02            [ 8]  833 	ld	e, #0x02
    00003B52 3E 11            [ 8]  834 	ld	a, #0x11
    00003B54 CD AA 24         [24]  835 	call	_DrawNumber
                         000003FC   836 	C$Bestiary.c$177$2_0$154	= .
                                    837 	.globl	C$Bestiary.c$177$2_0$154
                                    838 ;src\Bestiary.c:177: DrawNumber(17, 4, 5, 1, TRUE);    // DEFENSE
    00003B57 21 01 01         [12]  839 	ld	hl, #0x101
    00003B5A E5               [16]  840 	push	hl
    00003B5B 11 05 00         [12]  841 	ld	de, #0x0005
    00003B5E D5               [16]  842 	push	de
    00003B5F 1E 04            [ 8]  843 	ld	e, #0x04
    00003B61 3E 11            [ 8]  844 	ld	a, #0x11
    00003B63 CD AA 24         [24]  845 	call	_DrawNumber
                         0000040B   846 	C$Bestiary.c$178$2_0$154	= .
                                    847 	.globl	C$Bestiary.c$178$2_0$154
                                    848 ;src\Bestiary.c:178: DrawNumber(17, 6, 2, 1, TRUE);    // SPECIAL
    00003B66 21 01 01         [12]  849 	ld	hl, #0x101
    00003B69 E5               [16]  850 	push	hl
    00003B6A 11 02 00         [12]  851 	ld	de, #0x0002
    00003B6D D5               [16]  852 	push	de
    00003B6E 1E 06            [ 8]  853 	ld	e, #0x06
    00003B70 3E 11            [ 8]  854 	ld	a, #0x11
    00003B72 CD AA 24         [24]  855 	call	_DrawNumber
                         0000041A   856 	C$Bestiary.c$179$2_0$154	= .
                                    857 	.globl	C$Bestiary.c$179$2_0$154
                                    858 ;src\Bestiary.c:179: DrawNumber(17, 8, 4, 1, TRUE);    // SPEED
    00003B75 21 01 01         [12]  859 	ld	hl, #0x101
    00003B78 E5               [16]  860 	push	hl
    00003B79 11 04 00         [12]  861 	ld	de, #0x0004
    00003B7C D5               [16]  862 	push	de
    00003B7D 1E 08            [ 8]  863 	ld	e, #0x08
    00003B7F 3E 11            [ 8]  864 	ld	a, #0x11
    00003B81 CD AA 24         [24]  865 	call	_DrawNumber
                         00000429   866 	C$Bestiary.c$180$2_0$154	= .
                                    867 	.globl	C$Bestiary.c$180$2_0$154
                                    868 ;src\Bestiary.c:180: DrawNumber(16, 10, 12, 2, TRUE);   // EXP.
    00003B84 21 02 01         [12]  869 	ld	hl, #0x102
    00003B87 E5               [16]  870 	push	hl
    00003B88 11 0C 00         [12]  871 	ld	de, #0x000c
    00003B8B D5               [16]  872 	push	de
    00003B8C 1E 0A            [ 8]  873 	ld	e, #0x0a
    00003B8E 3E 10            [ 8]  874 	ld	a, #0x10
    00003B90 CD AA 24         [24]  875 	call	_DrawNumber
                         00000438   876 	C$Bestiary.c$181$2_0$154	= .
                                    877 	.globl	C$Bestiary.c$181$2_0$154
                                    878 ;src\Bestiary.c:181: DrawText(1, 13, "OH NO! THE COPS!", TRUE);
    00003B93 3E 01            [ 8]  879 	ld	a, #0x01
    00003B95 F5               [16]  880 	push	af
    00003B96 33               [ 8]  881 	inc	sp
    00003B97 11 62 44         [12]  882 	ld	de, #___str_14
    00003B9A D5               [16]  883 	push	de
    00003B9B 1E 0D            [ 8]  884 	ld	e, #0x0d
    00003B9D 3E 01            [ 8]  885 	ld	a, #0x01
    00003B9F CD 84 25         [24]  886 	call	_DrawText
                         00000447   887 	C$Bestiary.c$182$2_0$154	= .
                                    888 	.globl	C$Bestiary.c$182$2_0$154
                                    889 ;src\Bestiary.c:182: DrawText(1, 14, "SOMEONE HAS BEEN", TRUE);
    00003BA2 3E 01            [ 8]  890 	ld	a, #0x01
    00003BA4 F5               [16]  891 	push	af
    00003BA5 33               [ 8]  892 	inc	sp
    00003BA6 11 73 44         [12]  893 	ld	de, #___str_15
    00003BA9 D5               [16]  894 	push	de
    00003BAA 1E 0E            [ 8]  895 	ld	e, #0x0e
    00003BAC 3E 01            [ 8]  896 	ld	a, #0x01
    00003BAE CD 84 25         [24]  897 	call	_DrawText
                         00000456   898 	C$Bestiary.c$183$2_0$154	= .
                                    899 	.globl	C$Bestiary.c$183$2_0$154
                                    900 ;src\Bestiary.c:183: DrawText(1, 15, "BEING NAUGHTY!", TRUE);
    00003BB1 3E 01            [ 8]  901 	ld	a, #0x01
    00003BB3 F5               [16]  902 	push	af
    00003BB4 33               [ 8]  903 	inc	sp
    00003BB5 11 84 44         [12]  904 	ld	de, #___str_16
    00003BB8 D5               [16]  905 	push	de
    00003BB9 1E 0F            [ 8]  906 	ld	e, #0x0f
    00003BBB 3E 01            [ 8]  907 	ld	a, #0x01
    00003BBD CD 84 25         [24]  908 	call	_DrawText
                         00000465   909 	C$Bestiary.c$184$2_0$154	= .
                                    910 	.globl	C$Bestiary.c$184$2_0$154
                                    911 ;src\Bestiary.c:184: DrawText(1, 16, "CAN'T BE YOU?", TRUE);
    00003BC0 3E 01            [ 8]  912 	ld	a, #0x01
    00003BC2 F5               [16]  913 	push	af
    00003BC3 33               [ 8]  914 	inc	sp
    00003BC4 11 93 44         [12]  915 	ld	de, #___str_17
    00003BC7 D5               [16]  916 	push	de
    00003BC8 1E 10            [ 8]  917 	ld	e, #0x10
    00003BCA 3E 01            [ 8]  918 	ld	a, #0x01
    00003BCC CD 84 25         [24]  919 	call	_DrawText
    00003BCF C3 A4 43         [16]  920 	jp	00172$
    00003BD2                        921 00159$:
                         00000477   922 	C$Bestiary.c$186$1_0$142	= .
                                    923 	.globl	C$Bestiary.c$186$1_0$142
                                    924 ;src\Bestiary.c:186: else if (index == 5)
    00003BD2 FA 6F CD         [16]  925 	ld	a, (#_index)
    00003BD5 D6 05            [ 8]  926 	sub	a, #0x05
    00003BD7 C2 91 3C         [16]  927 	jp	NZ,00156$
                         0000047F   928 	C$Bestiary.c$188$2_0$155	= .
                                    929 	.globl	C$Bestiary.c$188$2_0$155
                                    930 ;src\Bestiary.c:188: set_bkg_data(128, 39, Cop_Tiles);
    00003BDA 11 66 4D         [12]  931 	ld	de, #_Cop_Tiles
    00003BDD D5               [16]  932 	push	de
    00003BDE 21 80 27         [12]  933 	ld	hl, #0x2780
    00003BE1 E5               [16]  934 	push	hl
    00003BE2 CD 08 63         [24]  935 	call	_set_bkg_data
    00003BE5 E8 04            [16]  936 	add	sp, #4
                         0000048C   937 	C$Bestiary.c$189$2_0$155	= .
                                    938 	.globl	C$Bestiary.c$189$2_0$155
                                    939 ;src\Bestiary.c:189: set_bkg_tiles(2, 4, Police_MapWidth, Police_MapHeight, Police_Map);
    00003BE7 11 20 50         [12]  940 	ld	de, #_Police_Map
    00003BEA D5               [16]  941 	push	de
    00003BEB 21 06 07         [12]  942 	ld	hl, #0x706
    00003BEE E5               [16]  943 	push	hl
    00003BEF 21 02 04         [12]  944 	ld	hl, #0x402
    00003BF2 E5               [16]  945 	push	hl
    00003BF3 CD 35 64         [24]  946 	call	_set_bkg_tiles
    00003BF6 E8 06            [16]  947 	add	sp, #6
                         0000049D   948 	C$Bestiary.c$190$2_0$155	= .
                                    949 	.globl	C$Bestiary.c$190$2_0$155
                                    950 ;src\Bestiary.c:190: DrawNumber(4, 0, 5, 3, TRUE);     // ID
    00003BF8 21 03 01         [12]  951 	ld	hl, #0x103
    00003BFB E5               [16]  952 	push	hl
    00003BFC 11 05 00         [12]  953 	ld	de, #0x0005
    00003BFF D5               [16]  954 	push	de
    00003C00 1E 00            [ 8]  955 	ld	e, #0x00
    00003C02 3E 04            [ 8]  956 	ld	a, #0x04
    00003C04 CD AA 24         [24]  957 	call	_DrawNumber
                         000004AC   958 	C$Bestiary.c$192$2_0$155	= .
                                    959 	.globl	C$Bestiary.c$192$2_0$155
                                    960 ;src\Bestiary.c:192: DrawNumber(16, 2, 10, 2, TRUE);    // ATTACK
    00003C07 21 02 01         [12]  961 	ld	hl, #0x102
    00003C0A E5               [16]  962 	push	hl
    00003C0B 11 0A 00         [12]  963 	ld	de, #0x000a
    00003C0E D5               [16]  964 	push	de
    00003C0F 1E 02            [ 8]  965 	ld	e, #0x02
    00003C11 3E 10            [ 8]  966 	ld	a, #0x10
    00003C13 CD AA 24         [24]  967 	call	_DrawNumber
                         000004BB   968 	C$Bestiary.c$193$2_0$155	= .
                                    969 	.globl	C$Bestiary.c$193$2_0$155
                                    970 ;src\Bestiary.c:193: DrawNumber(16, 4, 15, 2, TRUE);    // DEFENSE
    00003C16 21 02 01         [12]  971 	ld	hl, #0x102
    00003C19 E5               [16]  972 	push	hl
    00003C1A 11 0F 00         [12]  973 	ld	de, #0x000f
    00003C1D D5               [16]  974 	push	de
    00003C1E 1E 04            [ 8]  975 	ld	e, #0x04
    00003C20 3E 10            [ 8]  976 	ld	a, #0x10
    00003C22 CD AA 24         [24]  977 	call	_DrawNumber
                         000004CA   978 	C$Bestiary.c$194$2_0$155	= .
                                    979 	.globl	C$Bestiary.c$194$2_0$155
                                    980 ;src\Bestiary.c:194: DrawNumber(17, 6, 5, 1, TRUE);    // SPECIAL
    00003C25 21 01 01         [12]  981 	ld	hl, #0x101
    00003C28 E5               [16]  982 	push	hl
    00003C29 11 05 00         [12]  983 	ld	de, #0x0005
    00003C2C D5               [16]  984 	push	de
    00003C2D 1E 06            [ 8]  985 	ld	e, #0x06
    00003C2F 3E 11            [ 8]  986 	ld	a, #0x11
    00003C31 CD AA 24         [24]  987 	call	_DrawNumber
                         000004D9   988 	C$Bestiary.c$195$2_0$155	= .
                                    989 	.globl	C$Bestiary.c$195$2_0$155
                                    990 ;src\Bestiary.c:195: DrawNumber(17, 8, 6, 1, TRUE);    // SPEED
    00003C34 21 01 01         [12]  991 	ld	hl, #0x101
    00003C37 E5               [16]  992 	push	hl
    00003C38 11 06 00         [12]  993 	ld	de, #0x0006
    00003C3B D5               [16]  994 	push	de
    00003C3C 1E 08            [ 8]  995 	ld	e, #0x08
    00003C3E 3E 11            [ 8]  996 	ld	a, #0x11
    00003C40 CD AA 24         [24]  997 	call	_DrawNumber
                         000004E8   998 	C$Bestiary.c$196$2_0$155	= .
                                    999 	.globl	C$Bestiary.c$196$2_0$155
                                   1000 ;src\Bestiary.c:196: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
    00003C43 21 02 01         [12] 1001 	ld	hl, #0x102
    00003C46 E5               [16] 1002 	push	hl
    00003C47 11 16 00         [12] 1003 	ld	de, #0x0016
    00003C4A D5               [16] 1004 	push	de
    00003C4B 1E 0A            [ 8] 1005 	ld	e, #0x0a
    00003C4D 3E 10            [ 8] 1006 	ld	a, #0x10
    00003C4F CD AA 24         [24] 1007 	call	_DrawNumber
                         000004F7  1008 	C$Bestiary.c$197$2_0$155	= .
                                   1009 	.globl	C$Bestiary.c$197$2_0$155
                                   1010 ;src\Bestiary.c:197: DrawText(1, 13, "LOOKS LIKE THE ", TRUE);
    00003C52 3E 01            [ 8] 1011 	ld	a, #0x01
    00003C54 F5               [16] 1012 	push	af
    00003C55 33               [ 8] 1013 	inc	sp
    00003C56 11 A1 44         [12] 1014 	ld	de, #___str_18
    00003C59 D5               [16] 1015 	push	de
    00003C5A 1E 0D            [ 8] 1016 	ld	e, #0x0d
    00003C5C 3E 01            [ 8] 1017 	ld	a, #0x01
    00003C5E CD 84 25         [24] 1018 	call	_DrawText
                         00000506  1019 	C$Bestiary.c$198$2_0$155	= .
                                   1020 	.globl	C$Bestiary.c$198$2_0$155
                                   1021 ;src\Bestiary.c:198: DrawText(1, 14, "POLICE HAS COME", TRUE);
    00003C61 3E 01            [ 8] 1022 	ld	a, #0x01
    00003C63 F5               [16] 1023 	push	af
    00003C64 33               [ 8] 1024 	inc	sp
    00003C65 11 B1 44         [12] 1025 	ld	de, #___str_19
    00003C68 D5               [16] 1026 	push	de
    00003C69 1E 0E            [ 8] 1027 	ld	e, #0x0e
    00003C6B 3E 01            [ 8] 1028 	ld	a, #0x01
    00003C6D CD 84 25         [24] 1029 	call	_DrawText
                         00000515  1030 	C$Bestiary.c$199$2_0$155	= .
                                   1031 	.globl	C$Bestiary.c$199$2_0$155
                                   1032 ;src\Bestiary.c:199: DrawText(1, 15, "TO TAKE YOU AWAY!", TRUE);
    00003C70 3E 01            [ 8] 1033 	ld	a, #0x01
    00003C72 F5               [16] 1034 	push	af
    00003C73 33               [ 8] 1035 	inc	sp
    00003C74 11 C1 44         [12] 1036 	ld	de, #___str_20
    00003C77 D5               [16] 1037 	push	de
    00003C78 1E 0F            [ 8] 1038 	ld	e, #0x0f
    00003C7A 3E 01            [ 8] 1039 	ld	a, #0x01
    00003C7C CD 84 25         [24] 1040 	call	_DrawText
                         00000524  1041 	C$Bestiary.c$200$2_0$155	= .
                                   1042 	.globl	C$Bestiary.c$200$2_0$155
                                   1043 ;src\Bestiary.c:200: DrawText(1, 16, "STOP RESISTING!", TRUE);
    00003C7F 3E 01            [ 8] 1044 	ld	a, #0x01
    00003C81 F5               [16] 1045 	push	af
    00003C82 33               [ 8] 1046 	inc	sp
    00003C83 11 D3 44         [12] 1047 	ld	de, #___str_21
    00003C86 D5               [16] 1048 	push	de
    00003C87 1E 10            [ 8] 1049 	ld	e, #0x10
    00003C89 3E 01            [ 8] 1050 	ld	a, #0x01
    00003C8B CD 84 25         [24] 1051 	call	_DrawText
    00003C8E C3 A4 43         [16] 1052 	jp	00172$
    00003C91                       1053 00156$:
                         00000536  1054 	C$Bestiary.c$202$1_0$142	= .
                                   1055 	.globl	C$Bestiary.c$202$1_0$142
                                   1056 ;src\Bestiary.c:202: else if (index == 6)
    00003C91 FA 6F CD         [16] 1057 	ld	a, (#_index)
    00003C94 D6 06            [ 8] 1058 	sub	a, #0x06
    00003C96 C2 41 3D         [16] 1059 	jp	NZ,00153$
                         0000053E  1060 	C$Bestiary.c$204$2_0$156	= .
                                   1061 	.globl	C$Bestiary.c$204$2_0$156
                                   1062 ;src\Bestiary.c:204: set_bkg_data(128, 39, Cop_Tiles);
    00003C99 11 66 4D         [12] 1063 	ld	de, #_Cop_Tiles
    00003C9C D5               [16] 1064 	push	de
    00003C9D 21 80 27         [12] 1065 	ld	hl, #0x2780
    00003CA0 E5               [16] 1066 	push	hl
    00003CA1 CD 08 63         [24] 1067 	call	_set_bkg_data
    00003CA4 E8 04            [16] 1068 	add	sp, #4
                         0000054B  1069 	C$Bestiary.c$205$2_0$156	= .
                                   1070 	.globl	C$Bestiary.c$205$2_0$156
                                   1071 ;src\Bestiary.c:205: set_bkg_tiles(2, 4, Sheriff_MapWidth, Sheriff_MapHeight, Sheriff_Map);
    00003CA6 11 4A 50         [12] 1072 	ld	de, #_Sheriff_Map
    00003CA9 D5               [16] 1073 	push	de
    00003CAA 21 06 07         [12] 1074 	ld	hl, #0x706
    00003CAD E5               [16] 1075 	push	hl
    00003CAE 21 02 04         [12] 1076 	ld	hl, #0x402
    00003CB1 E5               [16] 1077 	push	hl
    00003CB2 CD 35 64         [24] 1078 	call	_set_bkg_tiles
    00003CB5 E8 06            [16] 1079 	add	sp, #6
                         0000055C  1080 	C$Bestiary.c$206$2_0$156	= .
                                   1081 	.globl	C$Bestiary.c$206$2_0$156
                                   1082 ;src\Bestiary.c:206: DrawNumber(4, 0, 6, 3, TRUE);     // ID
    00003CB7 21 03 01         [12] 1083 	ld	hl, #0x103
    00003CBA E5               [16] 1084 	push	hl
    00003CBB 11 06 00         [12] 1085 	ld	de, #0x0006
    00003CBE D5               [16] 1086 	push	de
    00003CBF 1E 00            [ 8] 1087 	ld	e, #0x00
    00003CC1 3E 04            [ 8] 1088 	ld	a, #0x04
    00003CC3 CD AA 24         [24] 1089 	call	_DrawNumber
                         0000056B  1090 	C$Bestiary.c$208$2_0$156	= .
                                   1091 	.globl	C$Bestiary.c$208$2_0$156
                                   1092 ;src\Bestiary.c:208: DrawNumber(16, 2, 16, 2, TRUE);    // ATTACK
    00003CC6 21 02 01         [12] 1093 	ld	hl, #0x102
    00003CC9 E5               [16] 1094 	push	hl
    00003CCA 11 10 00         [12] 1095 	ld	de, #0x0010
    00003CCD D5               [16] 1096 	push	de
    00003CCE 1E 02            [ 8] 1097 	ld	e, #0x02
    00003CD0 3E 10            [ 8] 1098 	ld	a, #0x10
    00003CD2 CD AA 24         [24] 1099 	call	_DrawNumber
                         0000057A  1100 	C$Bestiary.c$209$2_0$156	= .
                                   1101 	.globl	C$Bestiary.c$209$2_0$156
                                   1102 ;src\Bestiary.c:209: DrawNumber(16, 4, 10, 2, TRUE);    // DEFENSE
    00003CD5 21 02 01         [12] 1103 	ld	hl, #0x102
    00003CD8 E5               [16] 1104 	push	hl
    00003CD9 11 0A 00         [12] 1105 	ld	de, #0x000a
    00003CDC D5               [16] 1106 	push	de
    00003CDD 1E 04            [ 8] 1107 	ld	e, #0x04
    00003CDF 3E 10            [ 8] 1108 	ld	a, #0x10
    00003CE1 CD AA 24         [24] 1109 	call	_DrawNumber
                         00000589  1110 	C$Bestiary.c$210$2_0$156	= .
                                   1111 	.globl	C$Bestiary.c$210$2_0$156
                                   1112 ;src\Bestiary.c:210: DrawNumber(17, 6, 6, 1, TRUE);    // SPECIAL
    00003CE4 21 01 01         [12] 1113 	ld	hl, #0x101
    00003CE7 E5               [16] 1114 	push	hl
    00003CE8 11 06 00         [12] 1115 	ld	de, #0x0006
    00003CEB D5               [16] 1116 	push	de
    00003CEC 1E 06            [ 8] 1117 	ld	e, #0x06
    00003CEE 3E 11            [ 8] 1118 	ld	a, #0x11
    00003CF0 CD AA 24         [24] 1119 	call	_DrawNumber
                         00000598  1120 	C$Bestiary.c$211$2_0$156	= .
                                   1121 	.globl	C$Bestiary.c$211$2_0$156
                                   1122 ;src\Bestiary.c:211: DrawNumber(17, 8, 8, 1, TRUE);    // SPEED
    00003CF3 21 01 01         [12] 1123 	ld	hl, #0x101
    00003CF6 E5               [16] 1124 	push	hl
    00003CF7 11 08 00         [12] 1125 	ld	de, #0x0008
    00003CFA D5               [16] 1126 	push	de
    00003CFB 1E 08            [ 8] 1127 	ld	e, #0x08
    00003CFD 3E 11            [ 8] 1128 	ld	a, #0x11
    00003CFF CD AA 24         [24] 1129 	call	_DrawNumber
                         000005A7  1130 	C$Bestiary.c$212$2_0$156	= .
                                   1131 	.globl	C$Bestiary.c$212$2_0$156
                                   1132 ;src\Bestiary.c:212: DrawNumber(16, 10, 22, 2, TRUE);   // EXP.
    00003D02 21 02 01         [12] 1133 	ld	hl, #0x102
    00003D05 E5               [16] 1134 	push	hl
    00003D06 11 16 00         [12] 1135 	ld	de, #0x0016
    00003D09 D5               [16] 1136 	push	de
    00003D0A 1E 0A            [ 8] 1137 	ld	e, #0x0a
    00003D0C 3E 10            [ 8] 1138 	ld	a, #0x10
    00003D0E CD AA 24         [24] 1139 	call	_DrawNumber
                         000005B6  1140 	C$Bestiary.c$213$2_0$156	= .
                                   1141 	.globl	C$Bestiary.c$213$2_0$156
                                   1142 ;src\Bestiary.c:213: DrawText(1, 13, "THE SHERIFF IS", TRUE);
    00003D11 3E 01            [ 8] 1143 	ld	a, #0x01
    00003D13 F5               [16] 1144 	push	af
    00003D14 33               [ 8] 1145 	inc	sp
    00003D15 11 E3 44         [12] 1146 	ld	de, #___str_22
    00003D18 D5               [16] 1147 	push	de
    00003D19 1E 0D            [ 8] 1148 	ld	e, #0x0d
    00003D1B 3E 01            [ 8] 1149 	ld	a, #0x01
    00003D1D CD 84 25         [24] 1150 	call	_DrawText
                         000005C5  1151 	C$Bestiary.c$214$2_0$156	= .
                                   1152 	.globl	C$Bestiary.c$214$2_0$156
                                   1153 ;src\Bestiary.c:214: DrawText(1, 14, "CALLED IN DUE", TRUE);
    00003D20 3E 01            [ 8] 1154 	ld	a, #0x01
    00003D22 F5               [16] 1155 	push	af
    00003D23 33               [ 8] 1156 	inc	sp
    00003D24 11 F2 44         [12] 1157 	ld	de, #___str_23
    00003D27 D5               [16] 1158 	push	de
    00003D28 1E 0E            [ 8] 1159 	ld	e, #0x0e
    00003D2A 3E 01            [ 8] 1160 	ld	a, #0x01
    00003D2C CD 84 25         [24] 1161 	call	_DrawText
                         000005D4  1162 	C$Bestiary.c$215$2_0$156	= .
                                   1163 	.globl	C$Bestiary.c$215$2_0$156
                                   1164 ;src\Bestiary.c:215: DrawText(1, 15, "POLICE NEGLIGENCE", TRUE);
    00003D2F 3E 01            [ 8] 1165 	ld	a, #0x01
    00003D31 F5               [16] 1166 	push	af
    00003D32 33               [ 8] 1167 	inc	sp
    00003D33 11 00 45         [12] 1168 	ld	de, #___str_24
    00003D36 D5               [16] 1169 	push	de
    00003D37 1E 0F            [ 8] 1170 	ld	e, #0x0f
    00003D39 3E 01            [ 8] 1171 	ld	a, #0x01
    00003D3B CD 84 25         [24] 1172 	call	_DrawText
    00003D3E C3 A4 43         [16] 1173 	jp	00172$
    00003D41                       1174 00153$:
                         000005E6  1175 	C$Bestiary.c$217$1_0$142	= .
                                   1176 	.globl	C$Bestiary.c$217$1_0$142
                                   1177 ;src\Bestiary.c:217: else if (index == 7)
    00003D41 FA 6F CD         [16] 1178 	ld	a, (#_index)
    00003D44 D6 07            [ 8] 1179 	sub	a, #0x07
    00003D46 C2 00 3E         [16] 1180 	jp	NZ,00150$
                         000005EE  1181 	C$Bestiary.c$219$2_0$157	= .
                                   1182 	.globl	C$Bestiary.c$219$2_0$157
                                   1183 ;src\Bestiary.c:219: set_bkg_data(128, 39, Cop_Tiles);
    00003D49 11 66 4D         [12] 1184 	ld	de, #_Cop_Tiles
    00003D4C D5               [16] 1185 	push	de
    00003D4D 21 80 27         [12] 1186 	ld	hl, #0x2780
    00003D50 E5               [16] 1187 	push	hl
    00003D51 CD 08 63         [24] 1188 	call	_set_bkg_data
    00003D54 E8 04            [16] 1189 	add	sp, #4
                         000005FB  1190 	C$Bestiary.c$220$2_0$157	= .
                                   1191 	.globl	C$Bestiary.c$220$2_0$157
                                   1192 ;src\Bestiary.c:220: set_bkg_tiles(2, 4, Chief_MapWidth, Chief_MapHeight, Chief_Map);
    00003D56 11 74 50         [12] 1193 	ld	de, #_Chief_Map
    00003D59 D5               [16] 1194 	push	de
    00003D5A 21 06 07         [12] 1195 	ld	hl, #0x706
    00003D5D E5               [16] 1196 	push	hl
    00003D5E 21 02 04         [12] 1197 	ld	hl, #0x402
    00003D61 E5               [16] 1198 	push	hl
    00003D62 CD 35 64         [24] 1199 	call	_set_bkg_tiles
    00003D65 E8 06            [16] 1200 	add	sp, #6
                         0000060C  1201 	C$Bestiary.c$221$2_0$157	= .
                                   1202 	.globl	C$Bestiary.c$221$2_0$157
                                   1203 ;src\Bestiary.c:221: DrawNumber(4, 0, 7, 3, TRUE);     // ID
    00003D67 21 03 01         [12] 1204 	ld	hl, #0x103
    00003D6A E5               [16] 1205 	push	hl
    00003D6B 11 07 00         [12] 1206 	ld	de, #0x0007
    00003D6E D5               [16] 1207 	push	de
    00003D6F 1E 00            [ 8] 1208 	ld	e, #0x00
    00003D71 3E 04            [ 8] 1209 	ld	a, #0x04
    00003D73 CD AA 24         [24] 1210 	call	_DrawNumber
                         0000061B  1211 	C$Bestiary.c$223$2_0$157	= .
                                   1212 	.globl	C$Bestiary.c$223$2_0$157
                                   1213 ;src\Bestiary.c:223: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
    00003D76 21 02 01         [12] 1214 	ld	hl, #0x102
    00003D79 E5               [16] 1215 	push	hl
    00003D7A 11 1E 00         [12] 1216 	ld	de, #0x001e
    00003D7D D5               [16] 1217 	push	de
    00003D7E 1E 02            [ 8] 1218 	ld	e, #0x02
    00003D80 3E 10            [ 8] 1219 	ld	a, #0x10
    00003D82 CD AA 24         [24] 1220 	call	_DrawNumber
                         0000062A  1221 	C$Bestiary.c$224$2_0$157	= .
                                   1222 	.globl	C$Bestiary.c$224$2_0$157
                                   1223 ;src\Bestiary.c:224: DrawNumber(16, 4, 20, 2, TRUE);    // DEFENSE
    00003D85 21 02 01         [12] 1224 	ld	hl, #0x102
    00003D88 E5               [16] 1225 	push	hl
    00003D89 11 14 00         [12] 1226 	ld	de, #0x0014
    00003D8C D5               [16] 1227 	push	de
    00003D8D 1E 04            [ 8] 1228 	ld	e, #0x04
    00003D8F 3E 10            [ 8] 1229 	ld	a, #0x10
    00003D91 CD AA 24         [24] 1230 	call	_DrawNumber
                         00000639  1231 	C$Bestiary.c$225$2_0$157	= .
                                   1232 	.globl	C$Bestiary.c$225$2_0$157
                                   1233 ;src\Bestiary.c:225: DrawNumber(17, 6, 10, 1, TRUE);    // SPECIAL
    00003D94 21 01 01         [12] 1234 	ld	hl, #0x101
    00003D97 E5               [16] 1235 	push	hl
    00003D98 11 0A 00         [12] 1236 	ld	de, #0x000a
    00003D9B D5               [16] 1237 	push	de
    00003D9C 1E 06            [ 8] 1238 	ld	e, #0x06
    00003D9E 3E 11            [ 8] 1239 	ld	a, #0x11
    00003DA0 CD AA 24         [24] 1240 	call	_DrawNumber
                         00000648  1241 	C$Bestiary.c$226$2_0$157	= .
                                   1242 	.globl	C$Bestiary.c$226$2_0$157
                                   1243 ;src\Bestiary.c:226: DrawNumber(17, 8, 10, 1, TRUE);    // SPEED
    00003DA3 21 01 01         [12] 1244 	ld	hl, #0x101
    00003DA6 E5               [16] 1245 	push	hl
    00003DA7 11 0A 00         [12] 1246 	ld	de, #0x000a
    00003DAA D5               [16] 1247 	push	de
    00003DAB 1E 08            [ 8] 1248 	ld	e, #0x08
    00003DAD 3E 11            [ 8] 1249 	ld	a, #0x11
    00003DAF CD AA 24         [24] 1250 	call	_DrawNumber
                         00000657  1251 	C$Bestiary.c$227$2_0$157	= .
                                   1252 	.globl	C$Bestiary.c$227$2_0$157
                                   1253 ;src\Bestiary.c:227: DrawNumber(16, 10, 55, 2, TRUE);   // EXP.
    00003DB2 21 02 01         [12] 1254 	ld	hl, #0x102
    00003DB5 E5               [16] 1255 	push	hl
    00003DB6 11 37 00         [12] 1256 	ld	de, #0x0037
    00003DB9 D5               [16] 1257 	push	de
    00003DBA 1E 0A            [ 8] 1258 	ld	e, #0x0a
    00003DBC 3E 10            [ 8] 1259 	ld	a, #0x10
    00003DBE CD AA 24         [24] 1260 	call	_DrawNumber
                         00000666  1261 	C$Bestiary.c$228$2_0$157	= .
                                   1262 	.globl	C$Bestiary.c$228$2_0$157
                                   1263 ;src\Bestiary.c:228: DrawText(1, 13, "CHIEF! CHIEF!", TRUE);
    00003DC1 3E 01            [ 8] 1264 	ld	a, #0x01
    00003DC3 F5               [16] 1265 	push	af
    00003DC4 33               [ 8] 1266 	inc	sp
    00003DC5 11 12 45         [12] 1267 	ld	de, #___str_25
    00003DC8 D5               [16] 1268 	push	de
    00003DC9 1E 0D            [ 8] 1269 	ld	e, #0x0d
    00003DCB 3E 01            [ 8] 1270 	ld	a, #0x01
    00003DCD CD 84 25         [24] 1271 	call	_DrawText
                         00000675  1272 	C$Bestiary.c$229$2_0$157	= .
                                   1273 	.globl	C$Bestiary.c$229$2_0$157
                                   1274 ;src\Bestiary.c:229: DrawText(1, 14, "YOU GOT TO HELP!", TRUE);
    00003DD0 3E 01            [ 8] 1275 	ld	a, #0x01
    00003DD2 F5               [16] 1276 	push	af
    00003DD3 33               [ 8] 1277 	inc	sp
    00003DD4 11 20 45         [12] 1278 	ld	de, #___str_26
    00003DD7 D5               [16] 1279 	push	de
    00003DD8 1E 0E            [ 8] 1280 	ld	e, #0x0e
    00003DDA 3E 01            [ 8] 1281 	ld	a, #0x01
    00003DDC CD 84 25         [24] 1282 	call	_DrawText
                         00000684  1283 	C$Bestiary.c$230$2_0$157	= .
                                   1284 	.globl	C$Bestiary.c$230$2_0$157
                                   1285 ;src\Bestiary.c:230: DrawText(1, 15, "WHY MUST I DO", TRUE);
    00003DDF 3E 01            [ 8] 1286 	ld	a, #0x01
    00003DE1 F5               [16] 1287 	push	af
    00003DE2 33               [ 8] 1288 	inc	sp
    00003DE3 11 31 45         [12] 1289 	ld	de, #___str_27
    00003DE6 D5               [16] 1290 	push	de
    00003DE7 1E 0F            [ 8] 1291 	ld	e, #0x0f
    00003DE9 3E 01            [ 8] 1292 	ld	a, #0x01
    00003DEB CD 84 25         [24] 1293 	call	_DrawText
                         00000693  1294 	C$Bestiary.c$231$2_0$157	= .
                                   1295 	.globl	C$Bestiary.c$231$2_0$157
                                   1296 ;src\Bestiary.c:231: DrawText(1, 16, "EVERYTHING HERE?", TRUE);
    00003DEE 3E 01            [ 8] 1297 	ld	a, #0x01
    00003DF0 F5               [16] 1298 	push	af
    00003DF1 33               [ 8] 1299 	inc	sp
    00003DF2 11 3F 45         [12] 1300 	ld	de, #___str_28
    00003DF5 D5               [16] 1301 	push	de
    00003DF6 1E 10            [ 8] 1302 	ld	e, #0x10
    00003DF8 3E 01            [ 8] 1303 	ld	a, #0x01
    00003DFA CD 84 25         [24] 1304 	call	_DrawText
    00003DFD C3 A4 43         [16] 1305 	jp	00172$
    00003E00                       1306 00150$:
                         000006A5  1307 	C$Bestiary.c$233$1_0$142	= .
                                   1308 	.globl	C$Bestiary.c$233$1_0$142
                                   1309 ;src\Bestiary.c:233: else if (index == 8)
    00003E00 FA 6F CD         [16] 1310 	ld	a, (#_index)
    00003E03 D6 08            [ 8] 1311 	sub	a, #0x08
    00003E05 C2 B0 3E         [16] 1312 	jp	NZ,00147$
                         000006AD  1313 	C$Bestiary.c$235$2_0$158	= .
                                   1314 	.globl	C$Bestiary.c$235$2_0$158
                                   1315 ;src\Bestiary.c:235: set_bkg_data(128, 30, Man_Tiles);
    00003E08 11 EE 51         [12] 1316 	ld	de, #_Man_Tiles
    00003E0B D5               [16] 1317 	push	de
    00003E0C 21 80 1E         [12] 1318 	ld	hl, #0x1e80
    00003E0F E5               [16] 1319 	push	hl
    00003E10 CD 08 63         [24] 1320 	call	_set_bkg_data
    00003E13 E8 04            [16] 1321 	add	sp, #4
                         000006BA  1322 	C$Bestiary.c$236$2_0$158	= .
                                   1323 	.globl	C$Bestiary.c$236$2_0$158
                                   1324 ;src\Bestiary.c:236: set_bkg_tiles(2, 4, Man_MapWidth, Man_MapHeight, Man_Map);
    00003E15 11 E0 D0         [12] 1325 	ld	de, #_Man_Map
    00003E18 D5               [16] 1326 	push	de
    00003E19 21 06 06         [12] 1327 	ld	hl, #0x606
    00003E1C E5               [16] 1328 	push	hl
    00003E1D 21 02 04         [12] 1329 	ld	hl, #0x402
    00003E20 E5               [16] 1330 	push	hl
    00003E21 CD 35 64         [24] 1331 	call	_set_bkg_tiles
    00003E24 E8 06            [16] 1332 	add	sp, #6
                         000006CB  1333 	C$Bestiary.c$237$2_0$158	= .
                                   1334 	.globl	C$Bestiary.c$237$2_0$158
                                   1335 ;src\Bestiary.c:237: DrawNumber(4, 0, 8, 3, TRUE);     // ID
    00003E26 21 03 01         [12] 1336 	ld	hl, #0x103
    00003E29 E5               [16] 1337 	push	hl
    00003E2A 11 08 00         [12] 1338 	ld	de, #0x0008
    00003E2D D5               [16] 1339 	push	de
    00003E2E 1E 00            [ 8] 1340 	ld	e, #0x00
    00003E30 3E 04            [ 8] 1341 	ld	a, #0x04
    00003E32 CD AA 24         [24] 1342 	call	_DrawNumber
                         000006DA  1343 	C$Bestiary.c$239$2_0$158	= .
                                   1344 	.globl	C$Bestiary.c$239$2_0$158
                                   1345 ;src\Bestiary.c:239: DrawNumber(17, 2, 0, 1, TRUE);    // ATTACK
    00003E35 21 01 01         [12] 1346 	ld	hl, #0x101
    00003E38 E5               [16] 1347 	push	hl
    00003E39 11 00 00         [12] 1348 	ld	de, #0x0000
    00003E3C D5               [16] 1349 	push	de
    00003E3D 1E 02            [ 8] 1350 	ld	e, #0x02
    00003E3F 3E 11            [ 8] 1351 	ld	a, #0x11
    00003E41 CD AA 24         [24] 1352 	call	_DrawNumber
                         000006E9  1353 	C$Bestiary.c$240$2_0$158	= .
                                   1354 	.globl	C$Bestiary.c$240$2_0$158
                                   1355 ;src\Bestiary.c:240: DrawNumber(15, 4, 255, 3, TRUE);    // DEFENSE
    00003E44 21 03 01         [12] 1356 	ld	hl, #0x103
    00003E47 E5               [16] 1357 	push	hl
    00003E48 11 FF 00         [12] 1358 	ld	de, #0x00ff
    00003E4B D5               [16] 1359 	push	de
    00003E4C 1E 04            [ 8] 1360 	ld	e, #0x04
    00003E4E 3E 0F            [ 8] 1361 	ld	a, #0x0f
    00003E50 CD AA 24         [24] 1362 	call	_DrawNumber
                         000006F8  1363 	C$Bestiary.c$241$2_0$158	= .
                                   1364 	.globl	C$Bestiary.c$241$2_0$158
                                   1365 ;src\Bestiary.c:241: DrawNumber(17, 6, 1, 1, TRUE);    // SPECIAL
    00003E53 21 01 01         [12] 1366 	ld	hl, #0x101
    00003E56 E5               [16] 1367 	push	hl
    00003E57 11 01 00         [12] 1368 	ld	de, #0x0001
    00003E5A D5               [16] 1369 	push	de
    00003E5B 1E 06            [ 8] 1370 	ld	e, #0x06
    00003E5D 3E 11            [ 8] 1371 	ld	a, #0x11
    00003E5F CD AA 24         [24] 1372 	call	_DrawNumber
                         00000707  1373 	C$Bestiary.c$242$2_0$158	= .
                                   1374 	.globl	C$Bestiary.c$242$2_0$158
                                   1375 ;src\Bestiary.c:242: DrawNumber(17, 8, 1, 1, TRUE);    // SPEED
    00003E62 21 01 01         [12] 1376 	ld	hl, #0x101
    00003E65 E5               [16] 1377 	push	hl
    00003E66 11 01 00         [12] 1378 	ld	de, #0x0001
    00003E69 D5               [16] 1379 	push	de
    00003E6A 1E 08            [ 8] 1380 	ld	e, #0x08
    00003E6C 3E 11            [ 8] 1381 	ld	a, #0x11
    00003E6E CD AA 24         [24] 1382 	call	_DrawNumber
                         00000716  1383 	C$Bestiary.c$243$2_0$158	= .
                                   1384 	.globl	C$Bestiary.c$243$2_0$158
                                   1385 ;src\Bestiary.c:243: DrawNumber(16, 10, 1, 1, TRUE);   // EXP.
    00003E71 21 01 01         [12] 1386 	ld	hl, #0x101
    00003E74 E5               [16] 1387 	push	hl
    00003E75 11 01 00         [12] 1388 	ld	de, #0x0001
    00003E78 D5               [16] 1389 	push	de
    00003E79 1E 0A            [ 8] 1390 	ld	e, #0x0a
    00003E7B 3E 10            [ 8] 1391 	ld	a, #0x10
    00003E7D CD AA 24         [24] 1392 	call	_DrawNumber
                         00000725  1393 	C$Bestiary.c$244$2_0$158	= .
                                   1394 	.globl	C$Bestiary.c$244$2_0$158
                                   1395 ;src\Bestiary.c:244: DrawText(1, 13, "HE'S BUILT", TRUE);
    00003E80 3E 01            [ 8] 1396 	ld	a, #0x01
    00003E82 F5               [16] 1397 	push	af
    00003E83 33               [ 8] 1398 	inc	sp
    00003E84 11 50 45         [12] 1399 	ld	de, #___str_29
    00003E87 D5               [16] 1400 	push	de
    00003E88 1E 0D            [ 8] 1401 	ld	e, #0x0d
    00003E8A 3E 01            [ 8] 1402 	ld	a, #0x01
    00003E8C CD 84 25         [24] 1403 	call	_DrawText
                         00000734  1404 	C$Bestiary.c$245$2_0$158	= .
                                   1405 	.globl	C$Bestiary.c$245$2_0$158
                                   1406 ;src\Bestiary.c:245: DrawText(1, 14, "LIKE A BRICK", TRUE);
    00003E8F 3E 01            [ 8] 1407 	ld	a, #0x01
    00003E91 F5               [16] 1408 	push	af
    00003E92 33               [ 8] 1409 	inc	sp
    00003E93 11 5B 45         [12] 1410 	ld	de, #___str_30
    00003E96 D5               [16] 1411 	push	de
    00003E97 1E 0E            [ 8] 1412 	ld	e, #0x0e
    00003E99 3E 01            [ 8] 1413 	ld	a, #0x01
    00003E9B CD 84 25         [24] 1414 	call	_DrawText
                         00000743  1415 	C$Bestiary.c$246$2_0$158	= .
                                   1416 	.globl	C$Bestiary.c$246$2_0$158
                                   1417 ;src\Bestiary.c:246: DrawText(1, 15, "HOUSE!", TRUE);
    00003E9E 3E 01            [ 8] 1418 	ld	a, #0x01
    00003EA0 F5               [16] 1419 	push	af
    00003EA1 33               [ 8] 1420 	inc	sp
    00003EA2 11 68 45         [12] 1421 	ld	de, #___str_31
    00003EA5 D5               [16] 1422 	push	de
    00003EA6 1E 0F            [ 8] 1423 	ld	e, #0x0f
    00003EA8 3E 01            [ 8] 1424 	ld	a, #0x01
    00003EAA CD 84 25         [24] 1425 	call	_DrawText
    00003EAD C3 A4 43         [16] 1426 	jp	00172$
    00003EB0                       1427 00147$:
                         00000755  1428 	C$Bestiary.c$248$1_0$142	= .
                                   1429 	.globl	C$Bestiary.c$248$1_0$142
                                   1430 ;src\Bestiary.c:248: else if (index == 9)
    00003EB0 FA 6F CD         [16] 1431 	ld	a, (#_index)
    00003EB3 D6 09            [ 8] 1432 	sub	a, #0x09
    00003EB5 20 7B            [12] 1433 	jr	NZ, 00144$
                         0000075C  1434 	C$Bestiary.c$250$2_0$159	= .
                                   1435 	.globl	C$Bestiary.c$250$2_0$159
                                   1436 ;src\Bestiary.c:250: set_bkg_data(128, 26, Car_Tiles);
    00003EB7 11 24 56         [12] 1437 	ld	de, #_Car_Tiles
    00003EBA D5               [16] 1438 	push	de
    00003EBB 21 80 1A         [12] 1439 	ld	hl, #0x1a80
    00003EBE E5               [16] 1440 	push	hl
    00003EBF CD 08 63         [24] 1441 	call	_set_bkg_data
    00003EC2 E8 04            [16] 1442 	add	sp, #4
                         00000769  1443 	C$Bestiary.c$251$2_0$159	= .
                                   1444 	.globl	C$Bestiary.c$251$2_0$159
                                   1445 ;src\Bestiary.c:251: set_bkg_tiles(2, 4, Car_MapWidth, Car_MapHeight, Car_Map);
    00003EC4 11 D4 57         [12] 1446 	ld	de, #_Car_Map
    00003EC7 D5               [16] 1447 	push	de
    00003EC8 21 06 05         [12] 1448 	ld	hl, #0x506
    00003ECB E5               [16] 1449 	push	hl
    00003ECC 21 02 04         [12] 1450 	ld	hl, #0x402
    00003ECF E5               [16] 1451 	push	hl
    00003ED0 CD 35 64         [24] 1452 	call	_set_bkg_tiles
    00003ED3 E8 06            [16] 1453 	add	sp, #6
                         0000077A  1454 	C$Bestiary.c$252$2_0$159	= .
                                   1455 	.globl	C$Bestiary.c$252$2_0$159
                                   1456 ;src\Bestiary.c:252: DrawNumber(4, 0, 9, 3, TRUE);     // ID
    00003ED5 21 03 01         [12] 1457 	ld	hl, #0x103
    00003ED8 E5               [16] 1458 	push	hl
    00003ED9 11 09 00         [12] 1459 	ld	de, #0x0009
    00003EDC D5               [16] 1460 	push	de
    00003EDD 1E 00            [ 8] 1461 	ld	e, #0x00
    00003EDF 3E 04            [ 8] 1462 	ld	a, #0x04
    00003EE1 CD AA 24         [24] 1463 	call	_DrawNumber
                         00000789  1464 	C$Bestiary.c$254$2_0$159	= .
                                   1465 	.globl	C$Bestiary.c$254$2_0$159
                                   1466 ;src\Bestiary.c:254: DrawNumber(16, 2, 30, 2, TRUE);    // ATTACK
    00003EE4 21 02 01         [12] 1467 	ld	hl, #0x102
    00003EE7 E5               [16] 1468 	push	hl
    00003EE8 11 1E 00         [12] 1469 	ld	de, #0x001e
    00003EEB D5               [16] 1470 	push	de
    00003EEC 1E 02            [ 8] 1471 	ld	e, #0x02
    00003EEE 3E 10            [ 8] 1472 	ld	a, #0x10
    00003EF0 CD AA 24         [24] 1473 	call	_DrawNumber
                         00000798  1474 	C$Bestiary.c$255$2_0$159	= .
                                   1475 	.globl	C$Bestiary.c$255$2_0$159
                                   1476 ;src\Bestiary.c:255: DrawNumber(16, 4, 25, 3, TRUE);    // DEFENSE
    00003EF3 21 03 01         [12] 1477 	ld	hl, #0x103
    00003EF6 E5               [16] 1478 	push	hl
    00003EF7 11 19 00         [12] 1479 	ld	de, #0x0019
    00003EFA D5               [16] 1480 	push	de
    00003EFB 1E 04            [ 8] 1481 	ld	e, #0x04
    00003EFD 3E 10            [ 8] 1482 	ld	a, #0x10
    00003EFF CD AA 24         [24] 1483 	call	_DrawNumber
                         000007A7  1484 	C$Bestiary.c$256$2_0$159	= .
                                   1485 	.globl	C$Bestiary.c$256$2_0$159
                                   1486 ;src\Bestiary.c:256: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
    00003F02 21 02 01         [12] 1487 	ld	hl, #0x102
    00003F05 E5               [16] 1488 	push	hl
    00003F06 11 0F 00         [12] 1489 	ld	de, #0x000f
    00003F09 D5               [16] 1490 	push	de
    00003F0A 1E 06            [ 8] 1491 	ld	e, #0x06
    00003F0C 3E 10            [ 8] 1492 	ld	a, #0x10
    00003F0E CD AA 24         [24] 1493 	call	_DrawNumber
                         000007B6  1494 	C$Bestiary.c$257$2_0$159	= .
                                   1495 	.globl	C$Bestiary.c$257$2_0$159
                                   1496 ;src\Bestiary.c:257: DrawNumber(16, 8, 40, 2, TRUE);    // SPEED
    00003F11 21 02 01         [12] 1497 	ld	hl, #0x102
    00003F14 E5               [16] 1498 	push	hl
    00003F15 11 28 00         [12] 1499 	ld	de, #0x0028
    00003F18 D5               [16] 1500 	push	de
    00003F19 1E 08            [ 8] 1501 	ld	e, #0x08
    00003F1B 3E 10            [ 8] 1502 	ld	a, #0x10
    00003F1D CD AA 24         [24] 1503 	call	_DrawNumber
                         000007C5  1504 	C$Bestiary.c$258$2_0$159	= .
                                   1505 	.globl	C$Bestiary.c$258$2_0$159
                                   1506 ;src\Bestiary.c:258: DrawNumber(16, 10, 66, 2, TRUE);   // EXP.
    00003F20 21 02 01         [12] 1507 	ld	hl, #0x102
    00003F23 E5               [16] 1508 	push	hl
    00003F24 11 42 00         [12] 1509 	ld	de, #0x0042
    00003F27 D5               [16] 1510 	push	de
    00003F28 1E 0A            [ 8] 1511 	ld	e, #0x0a
    00003F2A 3E 10            [ 8] 1512 	ld	a, #0x10
    00003F2C CD AA 24         [24] 1513 	call	_DrawNumber
    00003F2F C3 A4 43         [16] 1514 	jp	00172$
    00003F32                       1515 00144$:
                         000007D7  1516 	C$Bestiary.c$260$1_0$142	= .
                                   1517 	.globl	C$Bestiary.c$260$1_0$142
                                   1518 ;src\Bestiary.c:260: else if (index == 10)
    00003F32 FA 6F CD         [16] 1519 	ld	a, (#_index)
    00003F35 D6 0A            [ 8] 1520 	sub	a, #0x0a
    00003F37 20 7B            [12] 1521 	jr	NZ, 00141$
                         000007DE  1522 	C$Bestiary.c$262$2_0$160	= .
                                   1523 	.globl	C$Bestiary.c$262$2_0$160
                                   1524 ;src\Bestiary.c:262: set_bkg_data(128, 46, Semi_Tiles);
    00003F39 11 F2 57         [12] 1525 	ld	de, #_Semi_Tiles
    00003F3C D5               [16] 1526 	push	de
    00003F3D 21 80 2E         [12] 1527 	ld	hl, #0x2e80
    00003F40 E5               [16] 1528 	push	hl
    00003F41 CD 08 63         [24] 1529 	call	_set_bkg_data
    00003F44 E8 04            [16] 1530 	add	sp, #4
                         000007EB  1531 	C$Bestiary.c$263$2_0$160	= .
                                   1532 	.globl	C$Bestiary.c$263$2_0$160
                                   1533 ;src\Bestiary.c:263: set_bkg_tiles(2, 4, Semi_MapWidth, Semi_MapHeight, Semi_Map);
    00003F46 11 E2 5A         [12] 1534 	ld	de, #_Semi_Map
    00003F49 D5               [16] 1535 	push	de
    00003F4A 21 06 08         [12] 1536 	ld	hl, #0x806
    00003F4D E5               [16] 1537 	push	hl
    00003F4E 21 02 04         [12] 1538 	ld	hl, #0x402
    00003F51 E5               [16] 1539 	push	hl
    00003F52 CD 35 64         [24] 1540 	call	_set_bkg_tiles
    00003F55 E8 06            [16] 1541 	add	sp, #6
                         000007FC  1542 	C$Bestiary.c$264$2_0$160	= .
                                   1543 	.globl	C$Bestiary.c$264$2_0$160
                                   1544 ;src\Bestiary.c:264: DrawNumber(4, 0, 10, 3, TRUE);     // ID
    00003F57 21 03 01         [12] 1545 	ld	hl, #0x103
    00003F5A E5               [16] 1546 	push	hl
    00003F5B 11 0A 00         [12] 1547 	ld	de, #0x000a
    00003F5E D5               [16] 1548 	push	de
    00003F5F 1E 00            [ 8] 1549 	ld	e, #0x00
    00003F61 3E 04            [ 8] 1550 	ld	a, #0x04
    00003F63 CD AA 24         [24] 1551 	call	_DrawNumber
                         0000080B  1552 	C$Bestiary.c$266$2_0$160	= .
                                   1553 	.globl	C$Bestiary.c$266$2_0$160
                                   1554 ;src\Bestiary.c:266: DrawNumber(16, 2, 66, 2, TRUE);    // ATTACK
    00003F66 21 02 01         [12] 1555 	ld	hl, #0x102
    00003F69 E5               [16] 1556 	push	hl
    00003F6A 11 42 00         [12] 1557 	ld	de, #0x0042
    00003F6D D5               [16] 1558 	push	de
    00003F6E 1E 02            [ 8] 1559 	ld	e, #0x02
    00003F70 3E 10            [ 8] 1560 	ld	a, #0x10
    00003F72 CD AA 24         [24] 1561 	call	_DrawNumber
                         0000081A  1562 	C$Bestiary.c$267$2_0$160	= .
                                   1563 	.globl	C$Bestiary.c$267$2_0$160
                                   1564 ;src\Bestiary.c:267: DrawNumber(16, 4, 66, 2, TRUE);    // DEFENSE
    00003F75 21 02 01         [12] 1565 	ld	hl, #0x102
    00003F78 E5               [16] 1566 	push	hl
    00003F79 11 42 00         [12] 1567 	ld	de, #0x0042
    00003F7C D5               [16] 1568 	push	de
    00003F7D 1E 04            [ 8] 1569 	ld	e, #0x04
    00003F7F 3E 10            [ 8] 1570 	ld	a, #0x10
    00003F81 CD AA 24         [24] 1571 	call	_DrawNumber
                         00000829  1572 	C$Bestiary.c$268$2_0$160	= .
                                   1573 	.globl	C$Bestiary.c$268$2_0$160
                                   1574 ;src\Bestiary.c:268: DrawNumber(16, 6, 15, 2, TRUE);    // SPECIAL
    00003F84 21 02 01         [12] 1575 	ld	hl, #0x102
    00003F87 E5               [16] 1576 	push	hl
    00003F88 11 0F 00         [12] 1577 	ld	de, #0x000f
    00003F8B D5               [16] 1578 	push	de
    00003F8C 1E 06            [ 8] 1579 	ld	e, #0x06
    00003F8E 3E 10            [ 8] 1580 	ld	a, #0x10
    00003F90 CD AA 24         [24] 1581 	call	_DrawNumber
                         00000838  1582 	C$Bestiary.c$269$2_0$160	= .
                                   1583 	.globl	C$Bestiary.c$269$2_0$160
                                   1584 ;src\Bestiary.c:269: DrawNumber(16, 8, 35, 2, TRUE);    // SPEED
    00003F93 21 02 01         [12] 1585 	ld	hl, #0x102
    00003F96 E5               [16] 1586 	push	hl
    00003F97 11 23 00         [12] 1587 	ld	de, #0x0023
    00003F9A D5               [16] 1588 	push	de
    00003F9B 1E 08            [ 8] 1589 	ld	e, #0x08
    00003F9D 3E 10            [ 8] 1590 	ld	a, #0x10
    00003F9F CD AA 24         [24] 1591 	call	_DrawNumber
                         00000847  1592 	C$Bestiary.c$270$2_0$160	= .
                                   1593 	.globl	C$Bestiary.c$270$2_0$160
                                   1594 ;src\Bestiary.c:270: DrawNumber(15, 10, 100, 3, TRUE);   // EXP.
    00003FA2 21 03 01         [12] 1595 	ld	hl, #0x103
    00003FA5 E5               [16] 1596 	push	hl
    00003FA6 11 64 00         [12] 1597 	ld	de, #0x0064
    00003FA9 D5               [16] 1598 	push	de
    00003FAA 1E 0A            [ 8] 1599 	ld	e, #0x0a
    00003FAC 3E 0F            [ 8] 1600 	ld	a, #0x0f
    00003FAE CD AA 24         [24] 1601 	call	_DrawNumber
    00003FB1 C3 A4 43         [16] 1602 	jp	00172$
    00003FB4                       1603 00141$:
                         00000859  1604 	C$Bestiary.c$272$1_0$142	= .
                                   1605 	.globl	C$Bestiary.c$272$1_0$142
                                   1606 ;src\Bestiary.c:272: else if (index == 11)
    00003FB4 FA 6F CD         [16] 1607 	ld	a, (#_index)
    00003FB7 D6 0B            [ 8] 1608 	sub	a, #0x0b
    00003FB9 C2 64 40         [16] 1609 	jp	NZ,00138$
                         00000861  1610 	C$Bestiary.c$274$2_0$161	= .
                                   1611 	.globl	C$Bestiary.c$274$2_0$161
                                   1612 ;src\Bestiary.c:274: set_bkg_data(128, 31, Sis_Tiles);
    00003FBC 11 DE 53         [12] 1613 	ld	de, #_Sis_Tiles
    00003FBF D5               [16] 1614 	push	de
    00003FC0 21 80 1F         [12] 1615 	ld	hl, #0x1f80
    00003FC3 E5               [16] 1616 	push	hl
    00003FC4 CD 08 63         [24] 1617 	call	_set_bkg_data
    00003FC7 E8 04            [16] 1618 	add	sp, #4
                         0000086E  1619 	C$Bestiary.c$275$2_0$161	= .
                                   1620 	.globl	C$Bestiary.c$275$2_0$161
                                   1621 ;src\Bestiary.c:275: set_bkg_tiles(2, 4, BigSis_MapWidth, BigSis_MapHeight, BigSis_Map);
    00003FC9 11 DE 55         [12] 1622 	ld	de, #_BigSis_Map
    00003FCC D5               [16] 1623 	push	de
    00003FCD 21 05 07         [12] 1624 	ld	hl, #0x705
    00003FD0 E5               [16] 1625 	push	hl
    00003FD1 21 02 04         [12] 1626 	ld	hl, #0x402
    00003FD4 E5               [16] 1627 	push	hl
    00003FD5 CD 35 64         [24] 1628 	call	_set_bkg_tiles
    00003FD8 E8 06            [16] 1629 	add	sp, #6
                         0000087F  1630 	C$Bestiary.c$276$2_0$161	= .
                                   1631 	.globl	C$Bestiary.c$276$2_0$161
                                   1632 ;src\Bestiary.c:276: DrawNumber(4, 0, 11, 3, TRUE);     // ID
    00003FDA 21 03 01         [12] 1633 	ld	hl, #0x103
    00003FDD E5               [16] 1634 	push	hl
    00003FDE 11 0B 00         [12] 1635 	ld	de, #0x000b
    00003FE1 D5               [16] 1636 	push	de
    00003FE2 1E 00            [ 8] 1637 	ld	e, #0x00
    00003FE4 3E 04            [ 8] 1638 	ld	a, #0x04
    00003FE6 CD AA 24         [24] 1639 	call	_DrawNumber
                         0000088E  1640 	C$Bestiary.c$278$2_0$161	= .
                                   1641 	.globl	C$Bestiary.c$278$2_0$161
                                   1642 ;src\Bestiary.c:278: DrawNumber(16, 2, 26, 2, TRUE);    // ATTACK
    00003FE9 21 02 01         [12] 1643 	ld	hl, #0x102
    00003FEC E5               [16] 1644 	push	hl
    00003FED 11 1A 00         [12] 1645 	ld	de, #0x001a
    00003FF0 D5               [16] 1646 	push	de
    00003FF1 1E 02            [ 8] 1647 	ld	e, #0x02
    00003FF3 3E 10            [ 8] 1648 	ld	a, #0x10
    00003FF5 CD AA 24         [24] 1649 	call	_DrawNumber
                         0000089D  1650 	C$Bestiary.c$279$2_0$161	= .
                                   1651 	.globl	C$Bestiary.c$279$2_0$161
                                   1652 ;src\Bestiary.c:279: DrawNumber(16, 4, 14, 2, TRUE);    // DEFENSE
    00003FF8 21 02 01         [12] 1653 	ld	hl, #0x102
    00003FFB E5               [16] 1654 	push	hl
    00003FFC 11 0E 00         [12] 1655 	ld	de, #0x000e
    00003FFF D5               [16] 1656 	push	de
    00004000 1E 04            [ 8] 1657 	ld	e, #0x04
    00004002 3E 10            [ 8] 1658 	ld	a, #0x10
    00004004 CD AA 24         [24] 1659 	call	_DrawNumber
                         000008AC  1660 	C$Bestiary.c$280$2_0$161	= .
                                   1661 	.globl	C$Bestiary.c$280$2_0$161
                                   1662 ;src\Bestiary.c:280: DrawNumber(16, 6, 20, 2, TRUE);    // SPECIAL
    00004007 21 02 01         [12] 1663 	ld	hl, #0x102
    0000400A E5               [16] 1664 	push	hl
    0000400B 11 14 00         [12] 1665 	ld	de, #0x0014
    0000400E D5               [16] 1666 	push	de
    0000400F 1E 06            [ 8] 1667 	ld	e, #0x06
    00004011 3E 10            [ 8] 1668 	ld	a, #0x10
    00004013 CD AA 24         [24] 1669 	call	_DrawNumber
                         000008BB  1670 	C$Bestiary.c$281$2_0$161	= .
                                   1671 	.globl	C$Bestiary.c$281$2_0$161
                                   1672 ;src\Bestiary.c:281: DrawNumber(16, 8, 20, 2, TRUE);    // SPEED
    00004016 21 02 01         [12] 1673 	ld	hl, #0x102
    00004019 E5               [16] 1674 	push	hl
    0000401A 11 14 00         [12] 1675 	ld	de, #0x0014
    0000401D D5               [16] 1676 	push	de
    0000401E 1E 08            [ 8] 1677 	ld	e, #0x08
    00004020 3E 10            [ 8] 1678 	ld	a, #0x10
    00004022 CD AA 24         [24] 1679 	call	_DrawNumber
                         000008CA  1680 	C$Bestiary.c$282$2_0$161	= .
                                   1681 	.globl	C$Bestiary.c$282$2_0$161
                                   1682 ;src\Bestiary.c:282: DrawNumber(16, 10, 38, 2, TRUE);   // EXP.
    00004025 21 02 01         [12] 1683 	ld	hl, #0x102
    00004028 E5               [16] 1684 	push	hl
    00004029 11 26 00         [12] 1685 	ld	de, #0x0026
    0000402C D5               [16] 1686 	push	de
    0000402D 1E 0A            [ 8] 1687 	ld	e, #0x0a
    0000402F 3E 10            [ 8] 1688 	ld	a, #0x10
    00004031 CD AA 24         [24] 1689 	call	_DrawNumber
                         000008D9  1690 	C$Bestiary.c$283$2_0$161	= .
                                   1691 	.globl	C$Bestiary.c$283$2_0$161
                                   1692 ;src\Bestiary.c:283: DrawText(1, 13, "AROUND HERE,", TRUE);
    00004034 3E 01            [ 8] 1693 	ld	a, #0x01
    00004036 F5               [16] 1694 	push	af
    00004037 33               [ 8] 1695 	inc	sp
    00004038 11 6F 45         [12] 1696 	ld	de, #___str_32
    0000403B D5               [16] 1697 	push	de
    0000403C 1E 0D            [ 8] 1698 	ld	e, #0x0d
    0000403E 3E 01            [ 8] 1699 	ld	a, #0x01
    00004040 CD 84 25         [24] 1700 	call	_DrawText
                         000008E8  1701 	C$Bestiary.c$284$2_0$161	= .
                                   1702 	.globl	C$Bestiary.c$284$2_0$161
                                   1703 ;src\Bestiary.c:284: DrawText(1, 14, "SHE'S KNOWN ", TRUE);
    00004043 3E 01            [ 8] 1704 	ld	a, #0x01
    00004045 F5               [16] 1705 	push	af
    00004046 33               [ 8] 1706 	inc	sp
    00004047 11 7C 45         [12] 1707 	ld	de, #___str_33
    0000404A D5               [16] 1708 	push	de
    0000404B 1E 0E            [ 8] 1709 	ld	e, #0x0e
    0000404D 3E 01            [ 8] 1710 	ld	a, #0x01
    0000404F CD 84 25         [24] 1711 	call	_DrawText
                         000008F7  1712 	C$Bestiary.c$285$2_0$161	= .
                                   1713 	.globl	C$Bestiary.c$285$2_0$161
                                   1714 ;src\Bestiary.c:285: DrawText(1, 15, "AS BIG SIS!", TRUE);
    00004052 3E 01            [ 8] 1715 	ld	a, #0x01
    00004054 F5               [16] 1716 	push	af
    00004055 33               [ 8] 1717 	inc	sp
    00004056 11 89 45         [12] 1718 	ld	de, #___str_34
    00004059 D5               [16] 1719 	push	de
    0000405A 1E 0F            [ 8] 1720 	ld	e, #0x0f
    0000405C 3E 01            [ 8] 1721 	ld	a, #0x01
    0000405E CD 84 25         [24] 1722 	call	_DrawText
    00004061 C3 A4 43         [16] 1723 	jp	00172$
    00004064                       1724 00138$:
                         00000909  1725 	C$Bestiary.c$287$1_0$142	= .
                                   1726 	.globl	C$Bestiary.c$287$1_0$142
                                   1727 ;src\Bestiary.c:287: else if (index == 12)
    00004064 FA 6F CD         [16] 1728 	ld	a, (#_index)
    00004067 D6 0C            [ 8] 1729 	sub	a, #0x0c
    00004069 C2 14 41         [16] 1730 	jp	NZ,00135$
                         00000911  1731 	C$Bestiary.c$289$2_0$162	= .
                                   1732 	.globl	C$Bestiary.c$289$2_0$162
                                   1733 ;src\Bestiary.c:289: set_bkg_data(128, 31, Sis_Tiles);
    0000406C 11 DE 53         [12] 1734 	ld	de, #_Sis_Tiles
    0000406F D5               [16] 1735 	push	de
    00004070 21 80 1F         [12] 1736 	ld	hl, #0x1f80
    00004073 E5               [16] 1737 	push	hl
    00004074 CD 08 63         [24] 1738 	call	_set_bkg_data
    00004077 E8 04            [16] 1739 	add	sp, #4
                         0000091E  1740 	C$Bestiary.c$290$2_0$162	= .
                                   1741 	.globl	C$Bestiary.c$290$2_0$162
                                   1742 ;src\Bestiary.c:290: set_bkg_tiles(2, 4, MadSis_MapWidth, MadSis_MapHeight, MadSis_Map);
    00004079 11 01 56         [12] 1743 	ld	de, #_MadSis_Map
    0000407C D5               [16] 1744 	push	de
    0000407D 21 05 07         [12] 1745 	ld	hl, #0x705
    00004080 E5               [16] 1746 	push	hl
    00004081 21 02 04         [12] 1747 	ld	hl, #0x402
    00004084 E5               [16] 1748 	push	hl
    00004085 CD 35 64         [24] 1749 	call	_set_bkg_tiles
    00004088 E8 06            [16] 1750 	add	sp, #6
                         0000092F  1751 	C$Bestiary.c$291$2_0$162	= .
                                   1752 	.globl	C$Bestiary.c$291$2_0$162
                                   1753 ;src\Bestiary.c:291: DrawNumber(4, 0, 12, 3, TRUE);     // ID
    0000408A 21 03 01         [12] 1754 	ld	hl, #0x103
    0000408D E5               [16] 1755 	push	hl
    0000408E 11 0C 00         [12] 1756 	ld	de, #0x000c
    00004091 D5               [16] 1757 	push	de
    00004092 1E 00            [ 8] 1758 	ld	e, #0x00
    00004094 3E 04            [ 8] 1759 	ld	a, #0x04
    00004096 CD AA 24         [24] 1760 	call	_DrawNumber
                         0000093E  1761 	C$Bestiary.c$293$2_0$162	= .
                                   1762 	.globl	C$Bestiary.c$293$2_0$162
                                   1763 ;src\Bestiary.c:293: DrawNumber(16, 2, 36, 2, TRUE);    // ATTACK
    00004099 21 02 01         [12] 1764 	ld	hl, #0x102
    0000409C E5               [16] 1765 	push	hl
    0000409D 11 24 00         [12] 1766 	ld	de, #0x0024
    000040A0 D5               [16] 1767 	push	de
    000040A1 1E 02            [ 8] 1768 	ld	e, #0x02
    000040A3 3E 10            [ 8] 1769 	ld	a, #0x10
    000040A5 CD AA 24         [24] 1770 	call	_DrawNumber
                         0000094D  1771 	C$Bestiary.c$294$2_0$162	= .
                                   1772 	.globl	C$Bestiary.c$294$2_0$162
                                   1773 ;src\Bestiary.c:294: DrawNumber(16, 4, 24, 2, TRUE);    // DEFENSE
    000040A8 21 02 01         [12] 1774 	ld	hl, #0x102
    000040AB E5               [16] 1775 	push	hl
    000040AC 11 18 00         [12] 1776 	ld	de, #0x0018
    000040AF D5               [16] 1777 	push	de
    000040B0 1E 04            [ 8] 1778 	ld	e, #0x04
    000040B2 3E 10            [ 8] 1779 	ld	a, #0x10
    000040B4 CD AA 24         [24] 1780 	call	_DrawNumber
                         0000095C  1781 	C$Bestiary.c$295$2_0$162	= .
                                   1782 	.globl	C$Bestiary.c$295$2_0$162
                                   1783 ;src\Bestiary.c:295: DrawNumber(16, 6, 30, 2, TRUE);    // SPECIAL
    000040B7 21 02 01         [12] 1784 	ld	hl, #0x102
    000040BA E5               [16] 1785 	push	hl
    000040BB 11 1E 00         [12] 1786 	ld	de, #0x001e
    000040BE D5               [16] 1787 	push	de
    000040BF 1E 06            [ 8] 1788 	ld	e, #0x06
    000040C1 3E 10            [ 8] 1789 	ld	a, #0x10
    000040C3 CD AA 24         [24] 1790 	call	_DrawNumber
                         0000096B  1791 	C$Bestiary.c$296$2_0$162	= .
                                   1792 	.globl	C$Bestiary.c$296$2_0$162
                                   1793 ;src\Bestiary.c:296: DrawNumber(16, 8, 30, 2, TRUE);    // SPEED
    000040C6 21 02 01         [12] 1794 	ld	hl, #0x102
    000040C9 E5               [16] 1795 	push	hl
    000040CA 11 1E 00         [12] 1796 	ld	de, #0x001e
    000040CD D5               [16] 1797 	push	de
    000040CE 1E 08            [ 8] 1798 	ld	e, #0x08
    000040D0 3E 10            [ 8] 1799 	ld	a, #0x10
    000040D2 CD AA 24         [24] 1800 	call	_DrawNumber
                         0000097A  1801 	C$Bestiary.c$297$2_0$162	= .
                                   1802 	.globl	C$Bestiary.c$297$2_0$162
                                   1803 ;src\Bestiary.c:297: DrawNumber(16, 10, 58, 2, TRUE);   // EXP.
    000040D5 21 02 01         [12] 1804 	ld	hl, #0x102
    000040D8 E5               [16] 1805 	push	hl
    000040D9 11 3A 00         [12] 1806 	ld	de, #0x003a
    000040DC D5               [16] 1807 	push	de
    000040DD 1E 0A            [ 8] 1808 	ld	e, #0x0a
    000040DF 3E 10            [ 8] 1809 	ld	a, #0x10
    000040E1 CD AA 24         [24] 1810 	call	_DrawNumber
                         00000989  1811 	C$Bestiary.c$298$2_0$162	= .
                                   1812 	.globl	C$Bestiary.c$298$2_0$162
                                   1813 ;src\Bestiary.c:298: DrawText(1, 13, "SHE REMEMBERS", TRUE);
    000040E4 3E 01            [ 8] 1814 	ld	a, #0x01
    000040E6 F5               [16] 1815 	push	af
    000040E7 33               [ 8] 1816 	inc	sp
    000040E8 11 95 45         [12] 1817 	ld	de, #___str_35
    000040EB D5               [16] 1818 	push	de
    000040EC 1E 0D            [ 8] 1819 	ld	e, #0x0d
    000040EE 3E 01            [ 8] 1820 	ld	a, #0x01
    000040F0 CD 84 25         [24] 1821 	call	_DrawText
                         00000998  1822 	C$Bestiary.c$299$2_0$162	= .
                                   1823 	.globl	C$Bestiary.c$299$2_0$162
                                   1824 ;src\Bestiary.c:299: DrawText(1, 14, "YOUR LAST ", TRUE);
    000040F3 3E 01            [ 8] 1825 	ld	a, #0x01
    000040F5 F5               [16] 1826 	push	af
    000040F6 33               [ 8] 1827 	inc	sp
    000040F7 11 A3 45         [12] 1828 	ld	de, #___str_36
    000040FA D5               [16] 1829 	push	de
    000040FB 1E 0E            [ 8] 1830 	ld	e, #0x0e
    000040FD 3E 01            [ 8] 1831 	ld	a, #0x01
    000040FF CD 84 25         [24] 1832 	call	_DrawText
                         000009A7  1833 	C$Bestiary.c$300$2_0$162	= .
                                   1834 	.globl	C$Bestiary.c$300$2_0$162
                                   1835 ;src\Bestiary.c:300: DrawText(1, 15, "FIGHT.    ", TRUE);
    00004102 3E 01            [ 8] 1836 	ld	a, #0x01
    00004104 F5               [16] 1837 	push	af
    00004105 33               [ 8] 1838 	inc	sp
    00004106 11 AE 45         [12] 1839 	ld	de, #___str_37
    00004109 D5               [16] 1840 	push	de
    0000410A 1E 0F            [ 8] 1841 	ld	e, #0x0f
    0000410C 3E 01            [ 8] 1842 	ld	a, #0x01
    0000410E CD 84 25         [24] 1843 	call	_DrawText
    00004111 C3 A4 43         [16] 1844 	jp	00172$
    00004114                       1845 00135$:
                         000009B9  1846 	C$Bestiary.c$302$1_0$142	= .
                                   1847 	.globl	C$Bestiary.c$302$1_0$142
                                   1848 ;src\Bestiary.c:302: else if (index == 13)
    00004114 FA 6F CD         [16] 1849 	ld	a, (#_index)
    00004117 D6 0D            [ 8] 1850 	sub	a, #0x0d
    00004119 20 6C            [12] 1851 	jr	NZ, 00132$
                         000009C0  1852 	C$Bestiary.c$304$2_0$163	= .
                                   1853 	.globl	C$Bestiary.c$304$2_0$163
                                   1854 ;src\Bestiary.c:304: set_bkg_data(128, 29, Experiment_Tiles);
    0000411B 11 78 D4         [12] 1855 	ld	de, #_Experiment_Tiles
    0000411E D5               [16] 1856 	push	de
    0000411F 21 80 1D         [12] 1857 	ld	hl, #0x1d80
    00004122 E5               [16] 1858 	push	hl
    00004123 CD 08 63         [24] 1859 	call	_set_bkg_data
    00004126 E8 04            [16] 1860 	add	sp, #4
                         000009CD  1861 	C$Bestiary.c$305$2_0$163	= .
                                   1862 	.globl	C$Bestiary.c$305$2_0$163
                                   1863 ;src\Bestiary.c:305: set_bkg_tiles(2, 4, Experiment_MapWidth, Experiment_MapHeight, Experiment_Map );
    00004128 11 58 D6         [12] 1864 	ld	de, #_Experiment_Map
    0000412B D5               [16] 1865 	push	de
    0000412C 21 05 07         [12] 1866 	ld	hl, #0x705
    0000412F E5               [16] 1867 	push	hl
    00004130 21 02 04         [12] 1868 	ld	hl, #0x402
    00004133 E5               [16] 1869 	push	hl
    00004134 CD 35 64         [24] 1870 	call	_set_bkg_tiles
    00004137 E8 06            [16] 1871 	add	sp, #6
                         000009DE  1872 	C$Bestiary.c$306$2_0$163	= .
                                   1873 	.globl	C$Bestiary.c$306$2_0$163
                                   1874 ;src\Bestiary.c:306: DrawNumber(4, 0, 13, 3, TRUE);
    00004139 21 03 01         [12] 1875 	ld	hl, #0x103
    0000413C E5               [16] 1876 	push	hl
    0000413D 11 0D 00         [12] 1877 	ld	de, #0x000d
    00004140 D5               [16] 1878 	push	de
    00004141 1E 00            [ 8] 1879 	ld	e, #0x00
    00004143 3E 04            [ 8] 1880 	ld	a, #0x04
    00004145 CD AA 24         [24] 1881 	call	_DrawNumber
                         000009ED  1882 	C$Bestiary.c$307$2_0$163	= .
                                   1883 	.globl	C$Bestiary.c$307$2_0$163
                                   1884 ;src\Bestiary.c:307: DrawText(1, 13, "ONE OF YAKUB'S", TRUE);
    00004148 3E 01            [ 8] 1885 	ld	a, #0x01
    0000414A F5               [16] 1886 	push	af
    0000414B 33               [ 8] 1887 	inc	sp
    0000414C 11 B9 45         [12] 1888 	ld	de, #___str_38
    0000414F D5               [16] 1889 	push	de
    00004150 1E 0D            [ 8] 1890 	ld	e, #0x0d
    00004152 3E 01            [ 8] 1891 	ld	a, #0x01
    00004154 CD 84 25         [24] 1892 	call	_DrawText
                         000009FC  1893 	C$Bestiary.c$308$2_0$163	= .
                                   1894 	.globl	C$Bestiary.c$308$2_0$163
                                   1895 ;src\Bestiary.c:308: DrawText(1, 14, "EXPERIMENTS!", TRUE);
    00004157 3E 01            [ 8] 1896 	ld	a, #0x01
    00004159 F5               [16] 1897 	push	af
    0000415A 33               [ 8] 1898 	inc	sp
    0000415B 11 C8 45         [12] 1899 	ld	de, #___str_39
    0000415E D5               [16] 1900 	push	de
    0000415F 1E 0E            [ 8] 1901 	ld	e, #0x0e
    00004161 3E 01            [ 8] 1902 	ld	a, #0x01
    00004163 CD 84 25         [24] 1903 	call	_DrawText
                         00000A0B  1904 	C$Bestiary.c$309$2_0$163	= .
                                   1905 	.globl	C$Bestiary.c$309$2_0$163
                                   1906 ;src\Bestiary.c:309: DrawText(1, 15, "MAKES YOU ", TRUE);
    00004166 3E 01            [ 8] 1907 	ld	a, #0x01
    00004168 F5               [16] 1908 	push	af
    00004169 33               [ 8] 1909 	inc	sp
    0000416A 11 D5 45         [12] 1910 	ld	de, #___str_40
    0000416D D5               [16] 1911 	push	de
    0000416E 1E 0F            [ 8] 1912 	ld	e, #0x0f
    00004170 3E 01            [ 8] 1913 	ld	a, #0x01
    00004172 CD 84 25         [24] 1914 	call	_DrawText
                         00000A1A  1915 	C$Bestiary.c$310$2_0$163	= .
                                   1916 	.globl	C$Bestiary.c$310$2_0$163
                                   1917 ;src\Bestiary.c:310: DrawText(1, 16, "THINK, HUH? ", TRUE);
    00004175 3E 01            [ 8] 1918 	ld	a, #0x01
    00004177 F5               [16] 1919 	push	af
    00004178 33               [ 8] 1920 	inc	sp
    00004179 11 E0 45         [12] 1921 	ld	de, #___str_41
    0000417C D5               [16] 1922 	push	de
    0000417D 1E 10            [ 8] 1923 	ld	e, #0x10
    0000417F 3E 01            [ 8] 1924 	ld	a, #0x01
    00004181 CD 84 25         [24] 1925 	call	_DrawText
    00004184 C3 A4 43         [16] 1926 	jp	00172$
    00004187                       1927 00132$:
                         00000A2C  1928 	C$Bestiary.c$312$1_0$142	= .
                                   1929 	.globl	C$Bestiary.c$312$1_0$142
                                   1930 ;src\Bestiary.c:312: else if (index == 14)
    00004187 FA 6F CD         [16] 1931 	ld	a, (#_index)
    0000418A D6 0E            [ 8] 1932 	sub	a, #0x0e
    0000418C 20 5D            [12] 1933 	jr	NZ, 00129$
                         00000A33  1934 	C$Bestiary.c$314$2_0$164	= .
                                   1935 	.globl	C$Bestiary.c$314$2_0$164
                                   1936 ;src\Bestiary.c:314: set_bkg_data(128, 19, Ghost_Tiles);
    0000418E 11 8F D6         [12] 1937 	ld	de, #_Ghost_Tiles
    00004191 D5               [16] 1938 	push	de
    00004192 21 80 13         [12] 1939 	ld	hl, #0x1380
    00004195 E5               [16] 1940 	push	hl
    00004196 CD 08 63         [24] 1941 	call	_set_bkg_data
    00004199 E8 04            [16] 1942 	add	sp, #4
                         00000A40  1943 	C$Bestiary.c$315$2_0$164	= .
                                   1944 	.globl	C$Bestiary.c$315$2_0$164
                                   1945 ;src\Bestiary.c:315: set_bkg_tiles(2, 4, Ghost_MapWidth, Ghost_MapHeight, Ghost_Map);
    0000419B 11 7B D6         [12] 1946 	ld	de, #_Ghost_Map
    0000419E D5               [16] 1947 	push	de
    0000419F 21 04 05         [12] 1948 	ld	hl, #0x504
    000041A2 E5               [16] 1949 	push	hl
    000041A3 21 02 04         [12] 1950 	ld	hl, #0x402
    000041A6 E5               [16] 1951 	push	hl
    000041A7 CD 35 64         [24] 1952 	call	_set_bkg_tiles
    000041AA E8 06            [16] 1953 	add	sp, #6
                         00000A51  1954 	C$Bestiary.c$316$2_0$164	= .
                                   1955 	.globl	C$Bestiary.c$316$2_0$164
                                   1956 ;src\Bestiary.c:316: DrawNumber(4, 0, 14, 3, TRUE);
    000041AC 21 03 01         [12] 1957 	ld	hl, #0x103
    000041AF E5               [16] 1958 	push	hl
    000041B0 11 0E 00         [12] 1959 	ld	de, #0x000e
    000041B3 D5               [16] 1960 	push	de
    000041B4 1E 00            [ 8] 1961 	ld	e, #0x00
    000041B6 3E 04            [ 8] 1962 	ld	a, #0x04
    000041B8 CD AA 24         [24] 1963 	call	_DrawNumber
                         00000A60  1964 	C$Bestiary.c$317$2_0$164	= .
                                   1965 	.globl	C$Bestiary.c$317$2_0$164
                                   1966 ;src\Bestiary.c:317: DrawText(1, 13, "AHH! A GHOST!", TRUE);
    000041BB 3E 01            [ 8] 1967 	ld	a, #0x01
    000041BD F5               [16] 1968 	push	af
    000041BE 33               [ 8] 1969 	inc	sp
    000041BF 11 ED 45         [12] 1970 	ld	de, #___str_42
    000041C2 D5               [16] 1971 	push	de
    000041C3 1E 0D            [ 8] 1972 	ld	e, #0x0d
    000041C5 3E 01            [ 8] 1973 	ld	a, #0x01
    000041C7 CD 84 25         [24] 1974 	call	_DrawText
                         00000A6F  1975 	C$Bestiary.c$318$2_0$164	= .
                                   1976 	.globl	C$Bestiary.c$318$2_0$164
                                   1977 ;src\Bestiary.c:318: DrawText(1, 14, "WHO IS UNDER", TRUE);
    000041CA 3E 01            [ 8] 1978 	ld	a, #0x01
    000041CC F5               [16] 1979 	push	af
    000041CD 33               [ 8] 1980 	inc	sp
    000041CE 11 FB 45         [12] 1981 	ld	de, #___str_43
    000041D1 D5               [16] 1982 	push	de
    000041D2 1E 0E            [ 8] 1983 	ld	e, #0x0e
    000041D4 3E 01            [ 8] 1984 	ld	a, #0x01
    000041D6 CD 84 25         [24] 1985 	call	_DrawText
                         00000A7E  1986 	C$Bestiary.c$319$2_0$164	= .
                                   1987 	.globl	C$Bestiary.c$319$2_0$164
                                   1988 ;src\Bestiary.c:319: DrawText(1, 15, "THAT SHEET? ", TRUE);
    000041D9 3E 01            [ 8] 1989 	ld	a, #0x01
    000041DB F5               [16] 1990 	push	af
    000041DC 33               [ 8] 1991 	inc	sp
    000041DD 11 08 46         [12] 1992 	ld	de, #___str_44
    000041E0 D5               [16] 1993 	push	de
    000041E1 1E 0F            [ 8] 1994 	ld	e, #0x0f
    000041E3 3E 01            [ 8] 1995 	ld	a, #0x01
    000041E5 CD 84 25         [24] 1996 	call	_DrawText
    000041E8 C3 A4 43         [16] 1997 	jp	00172$
    000041EB                       1998 00129$:
                         00000A90  1999 	C$Bestiary.c$321$1_0$142	= .
                                   2000 	.globl	C$Bestiary.c$321$1_0$142
                                   2001 ;src\Bestiary.c:321: else if (index == 15)
    000041EB FA 6F CD         [16] 2002 	ld	a, (#_index)
    000041EE D6 0F            [ 8] 2003 	sub	a, #0x0f
    000041F0 20 5D            [12] 2004 	jr	NZ, 00126$
                         00000A97  2005 	C$Bestiary.c$323$2_0$165	= .
                                   2006 	.globl	C$Bestiary.c$323$2_0$165
                                   2007 ;src\Bestiary.c:323: set_bkg_data(128, 14, Saucer_Tiles);
    000041F2 11 CF D7         [12] 2008 	ld	de, #_Saucer_Tiles
    000041F5 D5               [16] 2009 	push	de
    000041F6 21 80 0E         [12] 2010 	ld	hl, #0xe80
    000041F9 E5               [16] 2011 	push	hl
    000041FA CD 08 63         [24] 2012 	call	_set_bkg_data
    000041FD E8 04            [16] 2013 	add	sp, #4
                         00000AA4  2014 	C$Bestiary.c$324$2_0$165	= .
                                   2015 	.globl	C$Bestiary.c$324$2_0$165
                                   2016 ;src\Bestiary.c:324: set_bkg_tiles(2, 4, Saucer_MapWidth, Saucer_MapHeight, Ghost_Map);
    000041FF 11 7B D6         [12] 2017 	ld	de, #_Ghost_Map
    00004202 D5               [16] 2018 	push	de
    00004203 21 05 03         [12] 2019 	ld	hl, #0x305
    00004206 E5               [16] 2020 	push	hl
    00004207 21 02 04         [12] 2021 	ld	hl, #0x402
    0000420A E5               [16] 2022 	push	hl
    0000420B CD 35 64         [24] 2023 	call	_set_bkg_tiles
    0000420E E8 06            [16] 2024 	add	sp, #6
                         00000AB5  2025 	C$Bestiary.c$325$2_0$165	= .
                                   2026 	.globl	C$Bestiary.c$325$2_0$165
                                   2027 ;src\Bestiary.c:325: DrawNumber(4, 0, 15, 3, TRUE);
    00004210 21 03 01         [12] 2028 	ld	hl, #0x103
    00004213 E5               [16] 2029 	push	hl
    00004214 11 0F 00         [12] 2030 	ld	de, #0x000f
    00004217 D5               [16] 2031 	push	de
    00004218 1E 00            [ 8] 2032 	ld	e, #0x00
    0000421A 3E 04            [ 8] 2033 	ld	a, #0x04
    0000421C CD AA 24         [24] 2034 	call	_DrawNumber
                         00000AC4  2035 	C$Bestiary.c$326$2_0$165	= .
                                   2036 	.globl	C$Bestiary.c$326$2_0$165
                                   2037 ;src\Bestiary.c:326: DrawText(1, 13, "LOOK! A UFO!", TRUE);
    0000421F 3E 01            [ 8] 2038 	ld	a, #0x01
    00004221 F5               [16] 2039 	push	af
    00004222 33               [ 8] 2040 	inc	sp
    00004223 11 15 46         [12] 2041 	ld	de, #___str_45
    00004226 D5               [16] 2042 	push	de
    00004227 1E 0D            [ 8] 2043 	ld	e, #0x0d
    00004229 3E 01            [ 8] 2044 	ld	a, #0x01
    0000422B CD 84 25         [24] 2045 	call	_DrawText
                         00000AD3  2046 	C$Bestiary.c$327$2_0$165	= .
                                   2047 	.globl	C$Bestiary.c$327$2_0$165
                                   2048 ;src\Bestiary.c:327: DrawText(1, 14, "A FLYING", TRUE);
    0000422E 3E 01            [ 8] 2049 	ld	a, #0x01
    00004230 F5               [16] 2050 	push	af
    00004231 33               [ 8] 2051 	inc	sp
    00004232 11 22 46         [12] 2052 	ld	de, #___str_46
    00004235 D5               [16] 2053 	push	de
    00004236 1E 0E            [ 8] 2054 	ld	e, #0x0e
    00004238 3E 01            [ 8] 2055 	ld	a, #0x01
    0000423A CD 84 25         [24] 2056 	call	_DrawText
                         00000AE2  2057 	C$Bestiary.c$328$2_0$165	= .
                                   2058 	.globl	C$Bestiary.c$328$2_0$165
                                   2059 ;src\Bestiary.c:328: DrawText(1, 15, "SAUCER?!", TRUE);
    0000423D 3E 01            [ 8] 2060 	ld	a, #0x01
    0000423F F5               [16] 2061 	push	af
    00004240 33               [ 8] 2062 	inc	sp
    00004241 11 2B 46         [12] 2063 	ld	de, #___str_47
    00004244 D5               [16] 2064 	push	de
    00004245 1E 0F            [ 8] 2065 	ld	e, #0x0f
    00004247 3E 01            [ 8] 2066 	ld	a, #0x01
    00004249 CD 84 25         [24] 2067 	call	_DrawText
    0000424C C3 A4 43         [16] 2068 	jp	00172$
    0000424F                       2069 00126$:
                         00000AF4  2070 	C$Bestiary.c$330$1_0$142	= .
                                   2071 	.globl	C$Bestiary.c$330$1_0$142
                                   2072 ;src\Bestiary.c:330: else if (index == 16)
    0000424F FA 6F CD         [16] 2073 	ld	a, (#_index)
    00004252 D6 10            [ 8] 2074 	sub	a, #0x10
    00004254 20 6C            [12] 2075 	jr	NZ, 00123$
                         00000AFB  2076 	C$Bestiary.c$332$2_0$166	= .
                                   2077 	.globl	C$Bestiary.c$332$2_0$166
                                   2078 ;src\Bestiary.c:332: set_bkg_data(128, 20, SockHead_Tiles);
    00004256 11 EA D8         [12] 2079 	ld	de, #_SockHead_Tiles
    00004259 D5               [16] 2080 	push	de
    0000425A 21 80 14         [12] 2081 	ld	hl, #0x1480
    0000425D E5               [16] 2082 	push	hl
    0000425E CD 08 63         [24] 2083 	call	_set_bkg_data
    00004261 E8 04            [16] 2084 	add	sp, #4
                         00000B08  2085 	C$Bestiary.c$333$2_0$166	= .
                                   2086 	.globl	C$Bestiary.c$333$2_0$166
                                   2087 ;src\Bestiary.c:333: set_bkg_tiles(2, 4, SockHead_MapWidth, SockHead_MapHeight, SockHead_Map);
    00004263 11 CE D8         [12] 2088 	ld	de, #_SockHead_Map
    00004266 D5               [16] 2089 	push	de
    00004267 21 04 07         [12] 2090 	ld	hl, #0x704
    0000426A E5               [16] 2091 	push	hl
    0000426B 21 02 04         [12] 2092 	ld	hl, #0x402
    0000426E E5               [16] 2093 	push	hl
    0000426F CD 35 64         [24] 2094 	call	_set_bkg_tiles
    00004272 E8 06            [16] 2095 	add	sp, #6
                         00000B19  2096 	C$Bestiary.c$334$2_0$166	= .
                                   2097 	.globl	C$Bestiary.c$334$2_0$166
                                   2098 ;src\Bestiary.c:334: DrawNumber(4, 0, 16, 3, TRUE);
    00004274 21 03 01         [12] 2099 	ld	hl, #0x103
    00004277 E5               [16] 2100 	push	hl
    00004278 11 10 00         [12] 2101 	ld	de, #0x0010
    0000427B D5               [16] 2102 	push	de
    0000427C 1E 00            [ 8] 2103 	ld	e, #0x00
    0000427E 3E 04            [ 8] 2104 	ld	a, #0x04
    00004280 CD AA 24         [24] 2105 	call	_DrawNumber
                         00000B28  2106 	C$Bestiary.c$335$2_0$166	= .
                                   2107 	.globl	C$Bestiary.c$335$2_0$166
                                   2108 ;src\Bestiary.c:335: DrawText(1, 13, "SOCK HEADS", TRUE);
    00004283 3E 01            [ 8] 2109 	ld	a, #0x01
    00004285 F5               [16] 2110 	push	af
    00004286 33               [ 8] 2111 	inc	sp
    00004287 11 34 46         [12] 2112 	ld	de, #___str_48
    0000428A D5               [16] 2113 	push	de
    0000428B 1E 0D            [ 8] 2114 	ld	e, #0x0d
    0000428D 3E 01            [ 8] 2115 	ld	a, #0x01
    0000428F CD 84 25         [24] 2116 	call	_DrawText
                         00000B37  2117 	C$Bestiary.c$336$2_0$166	= .
                                   2118 	.globl	C$Bestiary.c$336$2_0$166
                                   2119 ;src\Bestiary.c:336: DrawText(1, 14, "DON'T THINK", TRUE);
    00004292 3E 01            [ 8] 2120 	ld	a, #0x01
    00004294 F5               [16] 2121 	push	af
    00004295 33               [ 8] 2122 	inc	sp
    00004296 11 3F 46         [12] 2123 	ld	de, #___str_49
    00004299 D5               [16] 2124 	push	de
    0000429A 1E 0E            [ 8] 2125 	ld	e, #0x0e
    0000429C 3E 01            [ 8] 2126 	ld	a, #0x01
    0000429E CD 84 25         [24] 2127 	call	_DrawText
                         00000B46  2128 	C$Bestiary.c$337$2_0$166	= .
                                   2129 	.globl	C$Bestiary.c$337$2_0$166
                                   2130 ;src\Bestiary.c:337: DrawText(1, 15, "ABOUT THE", TRUE);
    000042A1 3E 01            [ 8] 2131 	ld	a, #0x01
    000042A3 F5               [16] 2132 	push	af
    000042A4 33               [ 8] 2133 	inc	sp
    000042A5 11 4B 46         [12] 2134 	ld	de, #___str_50
    000042A8 D5               [16] 2135 	push	de
    000042A9 1E 0F            [ 8] 2136 	ld	e, #0x0f
    000042AB 3E 01            [ 8] 2137 	ld	a, #0x01
    000042AD CD 84 25         [24] 2138 	call	_DrawText
                         00000B55  2139 	C$Bestiary.c$338$2_0$166	= .
                                   2140 	.globl	C$Bestiary.c$338$2_0$166
                                   2141 ;src\Bestiary.c:338: DrawText(1, 16, "FUTURE.", TRUE);
    000042B0 3E 01            [ 8] 2142 	ld	a, #0x01
    000042B2 F5               [16] 2143 	push	af
    000042B3 33               [ 8] 2144 	inc	sp
    000042B4 11 55 46         [12] 2145 	ld	de, #___str_51
    000042B7 D5               [16] 2146 	push	de
    000042B8 1E 10            [ 8] 2147 	ld	e, #0x10
    000042BA 3E 01            [ 8] 2148 	ld	a, #0x01
    000042BC CD 84 25         [24] 2149 	call	_DrawText
    000042BF C3 A4 43         [16] 2150 	jp	00172$
    000042C2                       2151 00123$:
                         00000B67  2152 	C$Bestiary.c$340$1_0$142	= .
                                   2153 	.globl	C$Bestiary.c$340$1_0$142
                                   2154 ;src\Bestiary.c:340: else if (index == 17)
    000042C2 FA 6F CD         [16] 2155 	ld	a, (#_index)
    000042C5 D6 11            [ 8] 2156 	sub	a, #0x11
    000042C7 20 6B            [12] 2157 	jr	NZ, 00120$
                         00000B6E  2158 	C$Bestiary.c$342$2_0$167	= .
                                   2159 	.globl	C$Bestiary.c$342$2_0$167
                                   2160 ;src\Bestiary.c:342: set_bkg_data(128, 26, Toby_Tiles);
    000042C9 11 56 DA         [12] 2161 	ld	de, #_Toby_Tiles
    000042CC D5               [16] 2162 	push	de
    000042CD 21 80 1A         [12] 2163 	ld	hl, #0x1a80
    000042D0 E5               [16] 2164 	push	hl
    000042D1 CD 08 63         [24] 2165 	call	_set_bkg_data
    000042D4 E8 04            [16] 2166 	add	sp, #4
                         00000B7B  2167 	C$Bestiary.c$343$2_0$167	= .
                                   2168 	.globl	C$Bestiary.c$343$2_0$167
                                   2169 ;src\Bestiary.c:343: set_bkg_tiles(2, 4, Toby_MapWidth, Toby_MapHeight, Toby_Map);
    000042D6 11 3A DA         [12] 2170 	ld	de, #_Toby_Map
    000042D9 D5               [16] 2171 	push	de
    000042DA 21 04 07         [12] 2172 	ld	hl, #0x704
    000042DD E5               [16] 2173 	push	hl
    000042DE 21 02 04         [12] 2174 	ld	hl, #0x402
    000042E1 E5               [16] 2175 	push	hl
    000042E2 CD 35 64         [24] 2176 	call	_set_bkg_tiles
    000042E5 E8 06            [16] 2177 	add	sp, #6
                         00000B8C  2178 	C$Bestiary.c$344$2_0$167	= .
                                   2179 	.globl	C$Bestiary.c$344$2_0$167
                                   2180 ;src\Bestiary.c:344: DrawNumber(4, 0, 17, 3, TRUE);
    000042E7 21 03 01         [12] 2181 	ld	hl, #0x103
    000042EA E5               [16] 2182 	push	hl
    000042EB 11 11 00         [12] 2183 	ld	de, #0x0011
    000042EE D5               [16] 2184 	push	de
    000042EF 1E 00            [ 8] 2185 	ld	e, #0x00
    000042F1 3E 04            [ 8] 2186 	ld	a, #0x04
    000042F3 CD AA 24         [24] 2187 	call	_DrawNumber
                         00000B9B  2188 	C$Bestiary.c$345$2_0$167	= .
                                   2189 	.globl	C$Bestiary.c$345$2_0$167
                                   2190 ;src\Bestiary.c:345: DrawText(1, 13, "FOX LOVES TO SAY", TRUE);
    000042F6 3E 01            [ 8] 2191 	ld	a, #0x01
    000042F8 F5               [16] 2192 	push	af
    000042F9 33               [ 8] 2193 	inc	sp
    000042FA 11 5D 46         [12] 2194 	ld	de, #___str_52
    000042FD D5               [16] 2195 	push	de
    000042FE 1E 0D            [ 8] 2196 	ld	e, #0x0d
    00004300 3E 01            [ 8] 2197 	ld	a, #0x01
    00004302 CD 84 25         [24] 2198 	call	_DrawText
                         00000BAA  2199 	C$Bestiary.c$346$2_0$167	= .
                                   2200 	.globl	C$Bestiary.c$346$2_0$167
                                   2201 ;src\Bestiary.c:346: DrawText(1, 14, "FLOAT LIKE A ", TRUE);
    00004305 3E 01            [ 8] 2202 	ld	a, #0x01
    00004307 F5               [16] 2203 	push	af
    00004308 33               [ 8] 2204 	inc	sp
    00004309 11 6E 46         [12] 2205 	ld	de, #___str_53
    0000430C D5               [16] 2206 	push	de
    0000430D 1E 0E            [ 8] 2207 	ld	e, #0x0e
    0000430F 3E 01            [ 8] 2208 	ld	a, #0x01
    00004311 CD 84 25         [24] 2209 	call	_DrawText
                         00000BB9  2210 	C$Bestiary.c$347$2_0$167	= .
                                   2211 	.globl	C$Bestiary.c$347$2_0$167
                                   2212 ;src\Bestiary.c:347: DrawText(1, 15, "BUTTERFLY, STING", TRUE);
    00004314 3E 01            [ 8] 2213 	ld	a, #0x01
    00004316 F5               [16] 2214 	push	af
    00004317 33               [ 8] 2215 	inc	sp
    00004318 11 7C 46         [12] 2216 	ld	de, #___str_54
    0000431B D5               [16] 2217 	push	de
    0000431C 1E 0F            [ 8] 2218 	ld	e, #0x0f
    0000431E 3E 01            [ 8] 2219 	ld	a, #0x01
    00004320 CD 84 25         [24] 2220 	call	_DrawText
                         00000BC8  2221 	C$Bestiary.c$348$2_0$167	= .
                                   2222 	.globl	C$Bestiary.c$348$2_0$167
                                   2223 ;src\Bestiary.c:348: DrawText(1, 16, "LIKE A BEE!", TRUE);
    00004323 3E 01            [ 8] 2224 	ld	a, #0x01
    00004325 F5               [16] 2225 	push	af
    00004326 33               [ 8] 2226 	inc	sp
    00004327 11 8D 46         [12] 2227 	ld	de, #___str_55
    0000432A D5               [16] 2228 	push	de
    0000432B 1E 10            [ 8] 2229 	ld	e, #0x10
    0000432D 3E 01            [ 8] 2230 	ld	a, #0x01
    0000432F CD 84 25         [24] 2231 	call	_DrawText
    00004332 18 70            [12] 2232 	jr	00172$
    00004334                       2233 00120$:
                         00000BD9  2234 	C$Bestiary.c$350$1_0$142	= .
                                   2235 	.globl	C$Bestiary.c$350$1_0$142
                                   2236 ;src\Bestiary.c:350: else if (index == 18)
    00004334 FA 6F CD         [16] 2237 	ld	a, (#_index)
    00004337 D6 12            [ 8] 2238 	sub	a, #0x12
    00004339 20 69            [12] 2239 	jr	NZ, 00172$
                         00000BE0  2240 	C$Bestiary.c$352$2_0$168	= .
                                   2241 	.globl	C$Bestiary.c$352$2_0$168
                                   2242 ;src\Bestiary.c:352: set_bkg_data(128, 24, Drunk_Tiles);
    0000433B 11 D0 D2         [12] 2243 	ld	de, #_Drunk_Tiles
    0000433E D5               [16] 2244 	push	de
    0000433F 21 80 18         [12] 2245 	ld	hl, #0x1880
    00004342 E5               [16] 2246 	push	hl
    00004343 CD 08 63         [24] 2247 	call	_set_bkg_data
    00004346 E8 04            [16] 2248 	add	sp, #4
                         00000BED  2249 	C$Bestiary.c$353$2_0$168	= .
                                   2250 	.globl	C$Bestiary.c$353$2_0$168
                                   2251 ;src\Bestiary.c:353: set_bkg_tiles(2, 4, Drunk_MapWidth, Drunk_MapHeight, Drunk_Map);
    00004348 11 60 D4         [12] 2252 	ld	de, #_Drunk_Map
    0000434B D5               [16] 2253 	push	de
    0000434C 21 04 06         [12] 2254 	ld	hl, #0x604
    0000434F E5               [16] 2255 	push	hl
    00004350 21 02 04         [12] 2256 	ld	hl, #0x402
    00004353 E5               [16] 2257 	push	hl
    00004354 CD 35 64         [24] 2258 	call	_set_bkg_tiles
    00004357 E8 06            [16] 2259 	add	sp, #6
                         00000BFE  2260 	C$Bestiary.c$354$2_0$168	= .
                                   2261 	.globl	C$Bestiary.c$354$2_0$168
                                   2262 ;src\Bestiary.c:354: DrawNumber(4, 0, 18, 3, TRUE);
    00004359 21 03 01         [12] 2263 	ld	hl, #0x103
    0000435C E5               [16] 2264 	push	hl
    0000435D 11 12 00         [12] 2265 	ld	de, #0x0012
    00004360 D5               [16] 2266 	push	de
    00004361 1E 00            [ 8] 2267 	ld	e, #0x00
    00004363 3E 04            [ 8] 2268 	ld	a, #0x04
    00004365 CD AA 24         [24] 2269 	call	_DrawNumber
                         00000C0D  2270 	C$Bestiary.c$355$2_0$168	= .
                                   2271 	.globl	C$Bestiary.c$355$2_0$168
                                   2272 ;src\Bestiary.c:355: DrawText(1, 13, "DRUNK STUMBLES.", TRUE);
    00004368 3E 01            [ 8] 2273 	ld	a, #0x01
    0000436A F5               [16] 2274 	push	af
    0000436B 33               [ 8] 2275 	inc	sp
    0000436C 11 99 46         [12] 2276 	ld	de, #___str_56
    0000436F D5               [16] 2277 	push	de
    00004370 1E 0D            [ 8] 2278 	ld	e, #0x0d
    00004372 3E 01            [ 8] 2279 	ld	a, #0x01
    00004374 CD 84 25         [24] 2280 	call	_DrawText
                         00000C1C  2281 	C$Bestiary.c$356$2_0$168	= .
                                   2282 	.globl	C$Bestiary.c$356$2_0$168
                                   2283 ;src\Bestiary.c:356: DrawText(1, 14, "HE HITS HARD.", TRUE);
    00004377 3E 01            [ 8] 2284 	ld	a, #0x01
    00004379 F5               [16] 2285 	push	af
    0000437A 33               [ 8] 2286 	inc	sp
    0000437B 11 A9 46         [12] 2287 	ld	de, #___str_57
    0000437E D5               [16] 2288 	push	de
    0000437F 1E 0E            [ 8] 2289 	ld	e, #0x0e
    00004381 3E 01            [ 8] 2290 	ld	a, #0x01
    00004383 CD 84 25         [24] 2291 	call	_DrawText
                         00000C2B  2292 	C$Bestiary.c$357$2_0$168	= .
                                   2293 	.globl	C$Bestiary.c$357$2_0$168
                                   2294 ;src\Bestiary.c:357: DrawText(1, 15, "AND YELLS A LOT.", TRUE);
    00004386 3E 01            [ 8] 2295 	ld	a, #0x01
    00004388 F5               [16] 2296 	push	af
    00004389 33               [ 8] 2297 	inc	sp
    0000438A 11 B7 46         [12] 2298 	ld	de, #___str_58
    0000438D D5               [16] 2299 	push	de
    0000438E 1E 0F            [ 8] 2300 	ld	e, #0x0f
    00004390 3E 01            [ 8] 2301 	ld	a, #0x01
    00004392 CD 84 25         [24] 2302 	call	_DrawText
                         00000C3A  2303 	C$Bestiary.c$358$2_0$168	= .
                                   2304 	.globl	C$Bestiary.c$358$2_0$168
                                   2305 ;src\Bestiary.c:358: DrawText(1, 16, "NOT FUN TO BE NEAR.", TRUE);
    00004395 3E 01            [ 8] 2306 	ld	a, #0x01
    00004397 F5               [16] 2307 	push	af
    00004398 33               [ 8] 2308 	inc	sp
    00004399 11 C8 46         [12] 2309 	ld	de, #___str_59
    0000439C D5               [16] 2310 	push	de
    0000439D 1E 10            [ 8] 2311 	ld	e, #0x10
    0000439F 3E 01            [ 8] 2312 	ld	a, #0x01
    000043A1 CD 84 25         [24] 2313 	call	_DrawText
    000043A4                       2314 00172$:
                         00000C49  2315 	C$Bestiary.c$360$1_0$142	= .
                                   2316 	.globl	C$Bestiary.c$360$1_0$142
                                   2317 ;src\Bestiary.c:360: return BESTIARY;
    000043A4 3E 04            [ 8] 2318 	ld	a, #0x04
                         00000C4B  2319 	C$Bestiary.c$361$1_0$142	= .
                                   2320 	.globl	C$Bestiary.c$361$1_0$142
                                   2321 ;src\Bestiary.c:361: }
                         00000C4B  2322 	C$Bestiary.c$361$1_0$142	= .
                                   2323 	.globl	C$Bestiary.c$361$1_0$142
                         00000C4B  2324 	XG$BestiaryUpdate$0$0	= .
                                   2325 	.globl	XG$BestiaryUpdate$0$0
    000043A6 C9               [16] 2326 	ret
                         00000C4C  2327 FBestiary$__str_0$0_0$0 == .
    000043A7                       2328 ___str_0:
    000043A7 4A 49 4D 20 49 53 20  2329 	.ascii "JIM IS A "
             41 20
    000043B0 00                    2330 	.db 0x00
                         00000C56  2331 FBestiary$__str_1$0_0$0 == .
    000043B1                       2332 ___str_1:
    000043B1 47 41 4D 42 4C 45 52  2333 	.ascii "GAMBLER. HE LIKES"
             2E 20 48 45 20 4C 49
             4B 45 53
    000043C2 00                    2334 	.db 0x00
                         00000C68  2335 FBestiary$__str_2$0_0$0 == .
    000043C3                       2336 ___str_2:
    000043C3 53 48 4F 4F 54 49 4E  2337 	.ascii "SHOOTING DICE."
             47 20 44 49 43 45 2E
    000043D1 00                    2338 	.db 0x00
                         00000C77  2339 FBestiary$__str_3$0_0$0 == .
    000043D2                       2340 ___str_3:
    000043D2 47 59 50 53 59 20 4D  2341 	.ascii "GYPSY MOTHS ARE"
             4F 54 48 53 20 41 52
             45
    000043E1 00                    2342 	.db 0x00
                         00000C87  2343 FBestiary$__str_4$0_0$0 == .
    000043E2                       2344 ___str_4:
    000043E2 54 41 4B 49 4E 47 20  2345 	.ascii "TAKING ALL FROM"
             41 4C 4C 20 46 52 4F
             4D
    000043F1 00                    2346 	.db 0x00
                         00000C97  2347 FBestiary$__str_5$0_0$0 == .
    000043F2                       2348 ___str_5:
    000043F2 45 56 45 52 59 57 48  2349 	.ascii "EVERYWHERE!"
             45 52 45 21
    000043FD 00                    2350 	.db 0x00
                         00000CA3  2351 FBestiary$__str_6$0_0$0 == .
    000043FE                       2352 ___str_6:
    000043FE 57 41 4C 4C 59 20 49  2353 	.ascii "WALLY IS IN A"
             53 20 49 4E 20 41
    0000440B 00                    2354 	.db 0x00
                         00000CB1  2355 FBestiary$__str_7$0_0$0 == .
    0000440C                       2356 ___str_7:
    0000440C 47 41 4E 47 2E 20 48  2357 	.ascii "GANG. HE SAYS"
             45 20 53 41 59 53
    00004419 00                    2358 	.db 0x00
                         00000CBF  2359 FBestiary$__str_8$0_0$0 == .
    0000441A                       2360 ___str_8:
    0000441A 4E 4F 20 54 4F 20 44  2361 	.ascii "NO TO DRUGS!"
             52 55 47 53 21
    00004426 00                    2362 	.db 0x00
                         00000CCC  2363 FBestiary$__str_9$0_0$0 == .
    00004427                       2364 ___str_9:
    00004427 48 4F 57 20 43 4F 4F  2365 	.ascii "HOW COOL!"
             4C 21
    00004430 00                    2366 	.db 0x00
                         00000CD6  2367 FBestiary$__str_10$0_0$0 == .
    00004431                       2368 ___str_10:
    00004431 42 4C 4F 4F 44 20 53  2369 	.ascii "BLOOD SUCKING"
             55 43 4B 49 4E 47
    0000443E 00                    2370 	.db 0x00
                         00000CE4  2371 FBestiary$__str_11$0_0$0 == .
    0000443F                       2372 ___str_11:
    0000443F 50 41 52 41 53 49 54  2373 	.ascii "PARASITE!"
             45 21
    00004448 00                    2374 	.db 0x00
                         00000CEE  2375 FBestiary$__str_12$0_0$0 == .
    00004449                       2376 ___str_12:
    00004449 54 48 45 59 20 48 49  2377 	.ascii "THEY HIDE IN"
             44 45 20 49 4E
    00004455 00                    2378 	.db 0x00
                         00000CFB  2379 FBestiary$__str_13$0_0$0 == .
    00004456                       2380 ___str_13:
    00004456 54 41 4C 4C 20 47 52  2381 	.ascii "TALL GRASS!"
             41 53 53 21
    00004461 00                    2382 	.db 0x00
                         00000D07  2383 FBestiary$__str_14$0_0$0 == .
    00004462                       2384 ___str_14:
    00004462 4F 48 20 4E 4F 21 20  2385 	.ascii "OH NO! THE COPS!"
             54 48 45 20 43 4F 50
             53 21
    00004472 00                    2386 	.db 0x00
                         00000D18  2387 FBestiary$__str_15$0_0$0 == .
    00004473                       2388 ___str_15:
    00004473 53 4F 4D 45 4F 4E 45  2389 	.ascii "SOMEONE HAS BEEN"
             20 48 41 53 20 42 45
             45 4E
    00004483 00                    2390 	.db 0x00
                         00000D29  2391 FBestiary$__str_16$0_0$0 == .
    00004484                       2392 ___str_16:
    00004484 42 45 49 4E 47 20 4E  2393 	.ascii "BEING NAUGHTY!"
             41 55 47 48 54 59 21
    00004492 00                    2394 	.db 0x00
                         00000D38  2395 FBestiary$__str_17$0_0$0 == .
    00004493                       2396 ___str_17:
    00004493 43 41 4E 27 54 20 42  2397 	.ascii "CAN'T BE YOU?"
             45 20 59 4F 55 3F
    000044A0 00                    2398 	.db 0x00
                         00000D46  2399 FBestiary$__str_18$0_0$0 == .
    000044A1                       2400 ___str_18:
    000044A1 4C 4F 4F 4B 53 20 4C  2401 	.ascii "LOOKS LIKE THE "
             49 4B 45 20 54 48 45
             20
    000044B0 00                    2402 	.db 0x00
                         00000D56  2403 FBestiary$__str_19$0_0$0 == .
    000044B1                       2404 ___str_19:
    000044B1 50 4F 4C 49 43 45 20  2405 	.ascii "POLICE HAS COME"
             48 41 53 20 43 4F 4D
             45
    000044C0 00                    2406 	.db 0x00
                         00000D66  2407 FBestiary$__str_20$0_0$0 == .
    000044C1                       2408 ___str_20:
    000044C1 54 4F 20 54 41 4B 45  2409 	.ascii "TO TAKE YOU AWAY!"
             20 59 4F 55 20 41 57
             41 59 21
    000044D2 00                    2410 	.db 0x00
                         00000D78  2411 FBestiary$__str_21$0_0$0 == .
    000044D3                       2412 ___str_21:
    000044D3 53 54 4F 50 20 52 45  2413 	.ascii "STOP RESISTING!"
             53 49 53 54 49 4E 47
             21
    000044E2 00                    2414 	.db 0x00
                         00000D88  2415 FBestiary$__str_22$0_0$0 == .
    000044E3                       2416 ___str_22:
    000044E3 54 48 45 20 53 48 45  2417 	.ascii "THE SHERIFF IS"
             52 49 46 46 20 49 53
    000044F1 00                    2418 	.db 0x00
                         00000D97  2419 FBestiary$__str_23$0_0$0 == .
    000044F2                       2420 ___str_23:
    000044F2 43 41 4C 4C 45 44 20  2421 	.ascii "CALLED IN DUE"
             49 4E 20 44 55 45
    000044FF 00                    2422 	.db 0x00
                         00000DA5  2423 FBestiary$__str_24$0_0$0 == .
    00004500                       2424 ___str_24:
    00004500 50 4F 4C 49 43 45 20  2425 	.ascii "POLICE NEGLIGENCE"
             4E 45 47 4C 49 47 45
             4E 43 45
    00004511 00                    2426 	.db 0x00
                         00000DB7  2427 FBestiary$__str_25$0_0$0 == .
    00004512                       2428 ___str_25:
    00004512 43 48 49 45 46 21 20  2429 	.ascii "CHIEF! CHIEF!"
             43 48 49 45 46 21
    0000451F 00                    2430 	.db 0x00
                         00000DC5  2431 FBestiary$__str_26$0_0$0 == .
    00004520                       2432 ___str_26:
    00004520 59 4F 55 20 47 4F 54  2433 	.ascii "YOU GOT TO HELP!"
             20 54 4F 20 48 45 4C
             50 21
    00004530 00                    2434 	.db 0x00
                         00000DD6  2435 FBestiary$__str_27$0_0$0 == .
    00004531                       2436 ___str_27:
    00004531 57 48 59 20 4D 55 53  2437 	.ascii "WHY MUST I DO"
             54 20 49 20 44 4F
    0000453E 00                    2438 	.db 0x00
                         00000DE4  2439 FBestiary$__str_28$0_0$0 == .
    0000453F                       2440 ___str_28:
    0000453F 45 56 45 52 59 54 48  2441 	.ascii "EVERYTHING HERE?"
             49 4E 47 20 48 45 52
             45 3F
    0000454F 00                    2442 	.db 0x00
                         00000DF5  2443 FBestiary$__str_29$0_0$0 == .
    00004550                       2444 ___str_29:
    00004550 48 45 27 53 20 42 55  2445 	.ascii "HE'S BUILT"
             49 4C 54
    0000455A 00                    2446 	.db 0x00
                         00000E00  2447 FBestiary$__str_30$0_0$0 == .
    0000455B                       2448 ___str_30:
    0000455B 4C 49 4B 45 20 41 20  2449 	.ascii "LIKE A BRICK"
             42 52 49 43 4B
    00004567 00                    2450 	.db 0x00
                         00000E0D  2451 FBestiary$__str_31$0_0$0 == .
    00004568                       2452 ___str_31:
    00004568 48 4F 55 53 45 21     2453 	.ascii "HOUSE!"
    0000456E 00                    2454 	.db 0x00
                         00000E14  2455 FBestiary$__str_32$0_0$0 == .
    0000456F                       2456 ___str_32:
    0000456F 41 52 4F 55 4E 44 20  2457 	.ascii "AROUND HERE,"
             48 45 52 45 2C
    0000457B 00                    2458 	.db 0x00
                         00000E21  2459 FBestiary$__str_33$0_0$0 == .
    0000457C                       2460 ___str_33:
    0000457C 53 48 45 27 53 20 4B  2461 	.ascii "SHE'S KNOWN "
             4E 4F 57 4E 20
    00004588 00                    2462 	.db 0x00
                         00000E2E  2463 FBestiary$__str_34$0_0$0 == .
    00004589                       2464 ___str_34:
    00004589 41 53 20 42 49 47 20  2465 	.ascii "AS BIG SIS!"
             53 49 53 21
    00004594 00                    2466 	.db 0x00
                         00000E3A  2467 FBestiary$__str_35$0_0$0 == .
    00004595                       2468 ___str_35:
    00004595 53 48 45 20 52 45 4D  2469 	.ascii "SHE REMEMBERS"
             45 4D 42 45 52 53
    000045A2 00                    2470 	.db 0x00
                         00000E48  2471 FBestiary$__str_36$0_0$0 == .
    000045A3                       2472 ___str_36:
    000045A3 59 4F 55 52 20 4C 41  2473 	.ascii "YOUR LAST "
             53 54 20
    000045AD 00                    2474 	.db 0x00
                         00000E53  2475 FBestiary$__str_37$0_0$0 == .
    000045AE                       2476 ___str_37:
    000045AE 46 49 47 48 54 2E 20  2477 	.ascii "FIGHT.    "
             20 20 20
    000045B8 00                    2478 	.db 0x00
                         00000E5E  2479 FBestiary$__str_38$0_0$0 == .
    000045B9                       2480 ___str_38:
    000045B9 4F 4E 45 20 4F 46 20  2481 	.ascii "ONE OF YAKUB'S"
             59 41 4B 55 42 27 53
    000045C7 00                    2482 	.db 0x00
                         00000E6D  2483 FBestiary$__str_39$0_0$0 == .
    000045C8                       2484 ___str_39:
    000045C8 45 58 50 45 52 49 4D  2485 	.ascii "EXPERIMENTS!"
             45 4E 54 53 21
    000045D4 00                    2486 	.db 0x00
                         00000E7A  2487 FBestiary$__str_40$0_0$0 == .
    000045D5                       2488 ___str_40:
    000045D5 4D 41 4B 45 53 20 59  2489 	.ascii "MAKES YOU "
             4F 55 20
    000045DF 00                    2490 	.db 0x00
                         00000E85  2491 FBestiary$__str_41$0_0$0 == .
    000045E0                       2492 ___str_41:
    000045E0 54 48 49 4E 4B 2C 20  2493 	.ascii "THINK, HUH? "
             48 55 48 3F 20
    000045EC 00                    2494 	.db 0x00
                         00000E92  2495 FBestiary$__str_42$0_0$0 == .
    000045ED                       2496 ___str_42:
    000045ED 41 48 48 21 20 41 20  2497 	.ascii "AHH! A GHOST!"
             47 48 4F 53 54 21
    000045FA 00                    2498 	.db 0x00
                         00000EA0  2499 FBestiary$__str_43$0_0$0 == .
    000045FB                       2500 ___str_43:
    000045FB 57 48 4F 20 49 53 20  2501 	.ascii "WHO IS UNDER"
             55 4E 44 45 52
    00004607 00                    2502 	.db 0x00
                         00000EAD  2503 FBestiary$__str_44$0_0$0 == .
    00004608                       2504 ___str_44:
    00004608 54 48 41 54 20 53 48  2505 	.ascii "THAT SHEET? "
             45 45 54 3F 20
    00004614 00                    2506 	.db 0x00
                         00000EBA  2507 FBestiary$__str_45$0_0$0 == .
    00004615                       2508 ___str_45:
    00004615 4C 4F 4F 4B 21 20 41  2509 	.ascii "LOOK! A UFO!"
             20 55 46 4F 21
    00004621 00                    2510 	.db 0x00
                         00000EC7  2511 FBestiary$__str_46$0_0$0 == .
    00004622                       2512 ___str_46:
    00004622 41 20 46 4C 59 49 4E  2513 	.ascii "A FLYING"
             47
    0000462A 00                    2514 	.db 0x00
                         00000ED0  2515 FBestiary$__str_47$0_0$0 == .
    0000462B                       2516 ___str_47:
    0000462B 53 41 55 43 45 52 3F  2517 	.ascii "SAUCER?!"
             21
    00004633 00                    2518 	.db 0x00
                         00000ED9  2519 FBestiary$__str_48$0_0$0 == .
    00004634                       2520 ___str_48:
    00004634 53 4F 43 4B 20 48 45  2521 	.ascii "SOCK HEADS"
             41 44 53
    0000463E 00                    2522 	.db 0x00
                         00000EE4  2523 FBestiary$__str_49$0_0$0 == .
    0000463F                       2524 ___str_49:
    0000463F 44 4F 4E 27 54 20 54  2525 	.ascii "DON'T THINK"
             48 49 4E 4B
    0000464A 00                    2526 	.db 0x00
                         00000EF0  2527 FBestiary$__str_50$0_0$0 == .
    0000464B                       2528 ___str_50:
    0000464B 41 42 4F 55 54 20 54  2529 	.ascii "ABOUT THE"
             48 45
    00004654 00                    2530 	.db 0x00
                         00000EFA  2531 FBestiary$__str_51$0_0$0 == .
    00004655                       2532 ___str_51:
    00004655 46 55 54 55 52 45 2E  2533 	.ascii "FUTURE."
    0000465C 00                    2534 	.db 0x00
                         00000F02  2535 FBestiary$__str_52$0_0$0 == .
    0000465D                       2536 ___str_52:
    0000465D 46 4F 58 20 4C 4F 56  2537 	.ascii "FOX LOVES TO SAY"
             45 53 20 54 4F 20 53
             41 59
    0000466D 00                    2538 	.db 0x00
                         00000F13  2539 FBestiary$__str_53$0_0$0 == .
    0000466E                       2540 ___str_53:
    0000466E 46 4C 4F 41 54 20 4C  2541 	.ascii "FLOAT LIKE A "
             49 4B 45 20 41 20
    0000467B 00                    2542 	.db 0x00
                         00000F21  2543 FBestiary$__str_54$0_0$0 == .
    0000467C                       2544 ___str_54:
    0000467C 42 55 54 54 45 52 46  2545 	.ascii "BUTTERFLY, STING"
             4C 59 2C 20 53 54 49
             4E 47
    0000468C 00                    2546 	.db 0x00
                         00000F32  2547 FBestiary$__str_55$0_0$0 == .
    0000468D                       2548 ___str_55:
    0000468D 4C 49 4B 45 20 41 20  2549 	.ascii "LIKE A BEE!"
             42 45 45 21
    00004698 00                    2550 	.db 0x00
                         00000F3E  2551 FBestiary$__str_56$0_0$0 == .
    00004699                       2552 ___str_56:
    00004699 44 52 55 4E 4B 20 53  2553 	.ascii "DRUNK STUMBLES."
             54 55 4D 42 4C 45 53
             2E
    000046A8 00                    2554 	.db 0x00
                         00000F4E  2555 FBestiary$__str_57$0_0$0 == .
    000046A9                       2556 ___str_57:
    000046A9 48 45 20 48 49 54 53  2557 	.ascii "HE HITS HARD."
             20 48 41 52 44 2E
    000046B6 00                    2558 	.db 0x00
                         00000F5C  2559 FBestiary$__str_58$0_0$0 == .
    000046B7                       2560 ___str_58:
    000046B7 41 4E 44 20 59 45 4C  2561 	.ascii "AND YELLS A LOT."
             4C 53 20 41 20 4C 4F
             54 2E
    000046C7 00                    2562 	.db 0x00
                         00000F6D  2563 FBestiary$__str_59$0_0$0 == .
    000046C8                       2564 ___str_59:
    000046C8 4E 4F 54 20 46 55 4E  2565 	.ascii "NOT FUN TO BE NEAR."
             20 54 4F 20 42 45 20
             4E 45 41 52 2E
    000046DB 00                    2566 	.db 0x00
                                   2567 	.area _CODE
                                   2568 	.area _INITIALIZER
                         00000000  2569 FBestiary$__xinit_invert$0_0$0 == .
    000072C4                       2570 __xinit__invert:
    000072C4 00                    2571 	.db #0x00	; 0
                                   2572 	.area _CABS (ABS)
