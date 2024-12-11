                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.1 #14650 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -msm83
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _BattleUpdate
                                     13 	.globl _BattleSetup
                                     14 	.globl _BestiaryUpdate
                                     15 	.globl _BestiarySetup
                                     16 	.globl _GameJohnDoeUpdate
                                     17 	.globl _GameJohnDoeSetup
                                     18 	.globl _CoreGameLoopUpdate
                                     19 	.globl _CoreGameLoopSetup
                                     20 	.globl _GameTitleUpdate
                                     21 	.globl _GameTitleSetup
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
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area _DABS (ABS)
                                     37 ;--------------------------------------------------------
                                     38 ; global & static initialisations
                                     39 ;--------------------------------------------------------
                                     40 	.area _HOME
                                     41 	.area _GSINIT
                                     42 	.area _GSFINAL
                                     43 	.area _GSINIT
                                     44 ;--------------------------------------------------------
                                     45 ; Home
                                     46 ;--------------------------------------------------------
                                     47 	.area _HOME
                                     48 	.area _HOME
                                     49 ;--------------------------------------------------------
                                     50 ; code
                                     51 ;--------------------------------------------------------
                                     52 	.area _CODE
                         00000000    53 	G$main$0$0	= .
                                     54 	.globl	G$main$0$0
                         00000000    55 	C$main.c$9$0_0$149	= .
                                     56 	.globl	C$main.c$9$0_0$149
                                     57 ;src\main.c:9: void main(void)
                                     58 ;	---------------------------------
                                     59 ; Function main
                                     60 ; ---------------------------------
    00000200                         61 _main::
    00000200 3B               [ 8]   62 	dec	sp
                         00000001    63 	C$main.c$11$2_0$149	= .
                                     64 	.globl	C$main.c$11$2_0$149
                                     65 ;src\main.c:11: uint8_t currentGameState = GAMEFIRSTLOAD;
    00000201 F8 00            [12]   66 	ldhl	sp,	#0
    00000203 36 00            [12]   67 	ld	(hl), #0x00
                         00000005    68 	C$main.c$12$2_0$149	= .
                                     69 	.globl	C$main.c$12$2_0$149
                                     70 ;src\main.c:12: uint8_t nextGameState = GAMETITLE;
    00000205 06 01            [ 8]   71 	ld	b, #0x01
                         00000007    72 	C$main.c$15$1_0$149	= .
                                     73 	.globl	C$main.c$15$1_0$149
                                     74 ;src\main.c:15: while(1) { 
    00000207                         75 00118$:
                         00000007    76 	C$main.c$19$2_0$150	= .
                                     77 	.globl	C$main.c$19$2_0$150
                                     78 ;src\main.c:19: if (nextGameState != currentGameState)
    00000207 F8 00            [12]   79 	ldhl	sp,	#0
    00000209 7E               [ 8]   80 	ld	a, (hl)
    0000020A 90               [ 4]   81 	sub	a, b
    0000020B 28 3B            [12]   82 	jr	Z, 00109$
                         0000000D    83 	C$main.c$21$3_0$151	= .
                                     84 	.globl	C$main.c$21$3_0$151
                                     85 ;src\main.c:21: currentGameState = nextGameState;
    0000020D F8 00            [12]   86 	ldhl	sp,	#0
                         0000000F    87 	C$main.c$22$3_0$151	= .
                                     88 	.globl	C$main.c$22$3_0$151
                                     89 ;src\main.c:22: switch (currentGameState)
    0000020F 78               [ 4]   90 	ld	a,b
    00000210 77               [ 8]   91 	ld	(hl),a
    00000211 3D               [ 4]   92 	dec	a
    00000212 28 13            [12]   93 	jr	Z, 00101$
    00000214 78               [ 4]   94 	ld	a,b
    00000215 FE 02            [ 8]   95 	cp	a,#0x02
    00000217 28 1C            [12]   96 	jr	Z, 00103$
    00000219 FE 03            [ 8]   97 	cp	a,#0x03
    0000021B 28 11            [12]   98 	jr	Z, 00102$
    0000021D FE 04            [ 8]   99 	cp	a,#0x04
    0000021F 28 1B            [12]  100 	jr	Z, 00104$
    00000221 D6 05            [ 8]  101 	sub	a, #0x05
    00000223 28 1E            [12]  102 	jr	Z, 00105$
    00000225 18 21            [12]  103 	jr	00109$
                         00000027   104 	C$main.c$24$4_0$152	= .
                                    105 	.globl	C$main.c$24$4_0$152
                                    106 ;src\main.c:24: case GAMETITLE:
    00000227                        107 00101$:
                         00000027   108 	C$main.c$25$4_0$152	= .
                                    109 	.globl	C$main.c$25$4_0$152
                                    110 ;src\main.c:25: GameTitleSetup();
    00000227 C5               [16]  111 	push	bc
    00000228 CD 7D 16         [24]  112 	call	_GameTitleSetup
    0000022B C1               [12]  113 	pop	bc
                         0000002C   114 	C$main.c$26$4_0$152	= .
                                    115 	.globl	C$main.c$26$4_0$152
                                    116 ;src\main.c:26: break;
    0000022C 18 1A            [12]  117 	jr	00109$
                         0000002E   118 	C$main.c$27$4_0$152	= .
                                    119 	.globl	C$main.c$27$4_0$152
                                    120 ;src\main.c:27: case GAMEJOHNDOE:
    0000022E                        121 00102$:
                         0000002E   122 	C$main.c$28$4_0$152	= .
                                    123 	.globl	C$main.c$28$4_0$152
                                    124 ;src\main.c:28: GameJohnDoeSetup();
    0000022E C5               [16]  125 	push	bc
    0000022F CD D1 34         [24]  126 	call	_GameJohnDoeSetup
    00000232 C1               [12]  127 	pop	bc
                         00000033   128 	C$main.c$29$4_0$152	= .
                                    129 	.globl	C$main.c$29$4_0$152
                                    130 ;src\main.c:29: break;
    00000233 18 13            [12]  131 	jr	00109$
                         00000035   132 	C$main.c$30$4_0$152	= .
                                    133 	.globl	C$main.c$30$4_0$152
                                    134 ;src\main.c:30: case COREGAMELOOP:
    00000235                        135 00103$:
                         00000035   136 	C$main.c$31$4_0$152	= .
                                    137 	.globl	C$main.c$31$4_0$152
                                    138 ;src\main.c:31: CoreGameLoopSetup();
    00000235 C5               [16]  139 	push	bc
    00000236 CD 90 2B         [24]  140 	call	_CoreGameLoopSetup
    00000239 C1               [12]  141 	pop	bc
                         0000003A   142 	C$main.c$32$4_0$152	= .
                                    143 	.globl	C$main.c$32$4_0$152
                                    144 ;src\main.c:32: break;
    0000023A 18 0C            [12]  145 	jr	00109$
                         0000003C   146 	C$main.c$33$4_0$152	= .
                                    147 	.globl	C$main.c$33$4_0$152
                                    148 ;src\main.c:33: case BESTIARY:
    0000023C                        149 00104$:
                         0000003C   150 	C$main.c$34$4_0$152	= .
                                    151 	.globl	C$main.c$34$4_0$152
                                    152 ;src\main.c:34: BestiarySetup();
    0000023C C5               [16]  153 	push	bc
    0000023D CD 5B 37         [24]  154 	call	_BestiarySetup
    00000240 C1               [12]  155 	pop	bc
                         00000041   156 	C$main.c$35$4_0$152	= .
                                    157 	.globl	C$main.c$35$4_0$152
                                    158 ;src\main.c:35: break;
    00000241 18 05            [12]  159 	jr	00109$
                         00000043   160 	C$main.c$36$4_0$152	= .
                                    161 	.globl	C$main.c$36$4_0$152
                                    162 ;src\main.c:36: case BATTLE:
    00000243                        163 00105$:
                         00000043   164 	C$main.c$37$4_0$152	= .
                                    165 	.globl	C$main.c$37$4_0$152
                                    166 ;src\main.c:37: BattleSetup();
    00000243 C5               [16]  167 	push	bc
    00000244 CD 12 5B         [24]  168 	call	_BattleSetup
    00000247 C1               [12]  169 	pop	bc
                         00000048   170 	C$main.c$40$2_0$150	= .
                                    171 	.globl	C$main.c$40$2_0$150
                                    172 ;src\main.c:40: }
    00000248                        173 00109$:
                         00000048   174 	C$main.c$47$2_0$150	= .
                                    175 	.globl	C$main.c$47$2_0$150
                                    176 ;src\main.c:47: switch (currentGameState)
    00000248 F8 00            [12]  177 	ldhl	sp,	#0
    0000024A 7E               [ 8]  178 	ld	a, (hl)
    0000024B 3D               [ 4]  179 	dec	a
    0000024C 28 1E            [12]  180 	jr	Z, 00110$
    0000024E F8 00            [12]  181 	ldhl	sp,	#0
    00000250 7E               [ 8]  182 	ld	a, (hl)
    00000251 D6 02            [ 8]  183 	sub	a, #0x02
    00000253 28 23            [12]  184 	jr	Z, 00112$
    00000255 F8 00            [12]  185 	ldhl	sp,	#0
    00000257 7E               [ 8]  186 	ld	a, (hl)
    00000258 D6 03            [ 8]  187 	sub	a, #0x03
    0000025A 28 16            [12]  188 	jr	Z, 00111$
    0000025C F8 00            [12]  189 	ldhl	sp,	#0
    0000025E 7E               [ 8]  190 	ld	a, (hl)
    0000025F D6 04            [ 8]  191 	sub	a, #0x04
    00000261 28 1B            [12]  192 	jr	Z, 00113$
    00000263 F8 00            [12]  193 	ldhl	sp,	#0
    00000265 7E               [ 8]  194 	ld	a, (hl)
    00000266 D6 05            [ 8]  195 	sub	a, #0x05
    00000268 28 1A            [12]  196 	jr	Z, 00114$
    0000026A 18 9B            [12]  197 	jr	00118$
                         0000006C   198 	C$main.c$49$3_0$153	= .
                                    199 	.globl	C$main.c$49$3_0$153
                                    200 ;src\main.c:49: case GAMETITLE:
    0000026C                        201 00110$:
                         0000006C   202 	C$main.c$50$3_0$153	= .
                                    203 	.globl	C$main.c$50$3_0$153
                                    204 ;src\main.c:50: nextGameState = GameTitleUpdate();
    0000026C CD F3 17         [24]  205 	call	_GameTitleUpdate
    0000026F 47               [ 4]  206 	ld	b, a
                         00000070   207 	C$main.c$51$3_0$153	= .
                                    208 	.globl	C$main.c$51$3_0$153
                                    209 ;src\main.c:51: break;
    00000270 18 95            [12]  210 	jr	00118$
                         00000072   211 	C$main.c$52$3_0$153	= .
                                    212 	.globl	C$main.c$52$3_0$153
                                    213 ;src\main.c:52: case GAMEJOHNDOE:
    00000272                        214 00111$:
                         00000072   215 	C$main.c$53$3_0$153	= .
                                    216 	.globl	C$main.c$53$3_0$153
                                    217 ;src\main.c:53: nextGameState = GameJohnDoeUpdate();
    00000272 CD FF 34         [24]  218 	call	_GameJohnDoeUpdate
    00000275 47               [ 4]  219 	ld	b, a
                         00000076   220 	C$main.c$54$3_0$153	= .
                                    221 	.globl	C$main.c$54$3_0$153
                                    222 ;src\main.c:54: break;
    00000276 18 8F            [12]  223 	jr	00118$
                         00000078   224 	C$main.c$55$3_0$153	= .
                                    225 	.globl	C$main.c$55$3_0$153
                                    226 ;src\main.c:55: case COREGAMELOOP:
    00000278                        227 00112$:
                         00000078   228 	C$main.c$56$3_0$153	= .
                                    229 	.globl	C$main.c$56$3_0$153
                                    230 ;src\main.c:56: nextGameState = CoreGameLoopUpdate();
    00000278 CD 4C 2C         [24]  231 	call	_CoreGameLoopUpdate
    0000027B 47               [ 4]  232 	ld	b, a
                         0000007C   233 	C$main.c$57$3_0$153	= .
                                    234 	.globl	C$main.c$57$3_0$153
                                    235 ;src\main.c:57: break;
    0000027C 18 89            [12]  236 	jr	00118$
                         0000007E   237 	C$main.c$58$3_0$153	= .
                                    238 	.globl	C$main.c$58$3_0$153
                                    239 ;src\main.c:58: case BESTIARY:
    0000027E                        240 00113$:
                         0000007E   241 	C$main.c$59$3_0$153	= .
                                    242 	.globl	C$main.c$59$3_0$153
                                    243 ;src\main.c:59: nextGameState = BestiaryUpdate();
    0000027E CD 89 37         [24]  244 	call	_BestiaryUpdate
    00000281 47               [ 4]  245 	ld	b, a
                         00000082   246 	C$main.c$60$3_0$153	= .
                                    247 	.globl	C$main.c$60$3_0$153
                                    248 ;src\main.c:60: break;
    00000282 18 83            [12]  249 	jr	00118$
                         00000084   250 	C$main.c$61$3_0$153	= .
                                    251 	.globl	C$main.c$61$3_0$153
                                    252 ;src\main.c:61: case BATTLE:
    00000284                        253 00114$:
                         00000084   254 	C$main.c$62$3_0$153	= .
                                    255 	.globl	C$main.c$62$3_0$153
                                    256 ;src\main.c:62: nextGameState = BattleUpdate();
    00000284 CD A0 5F         [24]  257 	call	_BattleUpdate
    00000287 47               [ 4]  258 	ld	b, a
                         00000088   259 	C$main.c$63$3_0$153	= .
                                    260 	.globl	C$main.c$63$3_0$153
                                    261 ;src\main.c:63: break;
    00000288 C3 07 02         [16]  262 	jp	00118$
                         0000008B   263 	C$main.c$66$1_0$149	= .
                                    264 	.globl	C$main.c$66$1_0$149
                                    265 ;src\main.c:66: }
                         0000008B   266 	C$main.c$73$1_0$149	= .
                                    267 	.globl	C$main.c$73$1_0$149
                                    268 ;src\main.c:73: }
    0000028B 33               [ 8]  269 	inc	sp
                         0000008C   270 	C$main.c$73$1_0$149	= .
                                    271 	.globl	C$main.c$73$1_0$149
                         0000008C   272 	XG$main$0$0	= .
                                    273 	.globl	XG$main$0$0
    0000028C C9               [16]  274 	ret
                                    275 	.area _CODE
                                    276 	.area _INITIALIZER
                                    277 	.area _CABS (ABS)
