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
                                     13 	.globl b_BattleSetup
                                     14 	.globl _BattleSetup
                                     15 	.globl b_BestiaryUpdate
                                     16 	.globl _BestiaryUpdate
                                     17 	.globl b_BestiarySetup
                                     18 	.globl _BestiarySetup
                                     19 	.globl b_GameJohnDoeUpdate
                                     20 	.globl _GameJohnDoeUpdate
                                     21 	.globl b_GameJohnDoeSetup
                                     22 	.globl _GameJohnDoeSetup
                                     23 	.globl b_CoreGameLoopUpdate
                                     24 	.globl _CoreGameLoopUpdate
                                     25 	.globl b_CoreGameLoopSetup
                                     26 	.globl _CoreGameLoopSetup
                                     27 	.globl _GameTitleUpdate
                                     28 	.globl _GameTitleSetup
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
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area _DABS (ABS)
                                     44 ;--------------------------------------------------------
                                     45 ; global & static initialisations
                                     46 ;--------------------------------------------------------
                                     47 	.area _HOME
                                     48 	.area _GSINIT
                                     49 	.area _GSFINAL
                                     50 	.area _GSINIT
                                     51 ;--------------------------------------------------------
                                     52 ; Home
                                     53 ;--------------------------------------------------------
                                     54 	.area _HOME
                                     55 	.area _HOME
                                     56 ;--------------------------------------------------------
                                     57 ; code
                                     58 ;--------------------------------------------------------
                                     59 	.area _CODE
                         00000000    60 	G$main$0$0	= .
                                     61 	.globl	G$main$0$0
                         00000000    62 	C$main.c$9$0_0$149	= .
                                     63 	.globl	C$main.c$9$0_0$149
                                     64 ;src\main.c:9: void main(void)
                                     65 ;	---------------------------------
                                     66 ; Function main
                                     67 ; ---------------------------------
    00000200                         68 _main::
    00000200 3B               [ 8]   69 	dec	sp
                         00000001    70 	C$main.c$11$2_0$149	= .
                                     71 	.globl	C$main.c$11$2_0$149
                                     72 ;src\main.c:11: uint8_t currentGameState = GAMEFIRSTLOAD;
    00000201 F8 00            [12]   73 	ldhl	sp,	#0
    00000203 36 00            [12]   74 	ld	(hl), #0x00
                         00000005    75 	C$main.c$12$2_0$149	= .
                                     76 	.globl	C$main.c$12$2_0$149
                                     77 ;src\main.c:12: uint8_t nextGameState = GAMETITLE;
    00000205 06 01            [ 8]   78 	ld	b, #0x01
                         00000007    79 	C$main.c$15$1_0$149	= .
                                     80 	.globl	C$main.c$15$1_0$149
                                     81 ;src\main.c:15: while(1) { 
    00000207                         82 00118$:
                         00000007    83 	C$main.c$19$2_0$150	= .
                                     84 	.globl	C$main.c$19$2_0$150
                                     85 ;src\main.c:19: if (nextGameState != currentGameState)
    00000207 F8 00            [12]   86 	ldhl	sp,	#0
    00000209 7E               [ 8]   87 	ld	a, (hl)
    0000020A 90               [ 4]   88 	sub	a, b
    0000020B 28 7C            [12]   89 	jr	Z, 00109$
                         0000000D    90 	C$main.c$21$3_0$151	= .
                                     91 	.globl	C$main.c$21$3_0$151
                                     92 ;src\main.c:21: currentGameState = nextGameState;
    0000020D F8 00            [12]   93 	ldhl	sp,	#0
    0000020F 70               [ 8]   94 	ld	(hl), b
                         00000010    95 	C$main.c$22$3_0$151	= .
                                     96 	.globl	C$main.c$22$3_0$151
                                     97 ;src\main.c:22: switch (currentGameState)
    00000210 78               [ 4]   98 	ld	a, b
    00000211 3D               [ 4]   99 	dec	a
    00000212 28 13            [12]  100 	jr	Z, 00101$
    00000214 78               [ 4]  101 	ld	a,b
    00000215 FE 02            [ 8]  102 	cp	a,#0x02
    00000217 28 33            [12]  103 	jr	Z, 00103$
    00000219 FE 03            [ 8]  104 	cp	a,#0x03
    0000021B 28 1A            [12]  105 	jr	Z, 00102$
    0000021D FE 04            [ 8]  106 	cp	a,#0x04
    0000021F 28 40            [12]  107 	jr	Z, 00104$
    00000221 D6 05            [ 8]  108 	sub	a, #0x05
    00000223 28 51            [12]  109 	jr	Z, 00105$
    00000225 18 62            [12]  110 	jr	00109$
                         00000027   111 	C$main.c$24$4_0$152	= .
                                    112 	.globl	C$main.c$24$4_0$152
                                    113 ;src\main.c:24: case GAMETITLE:
    00000227                        114 00101$:
                         00000027   115 	C$main.c$25$4_0$152	= .
                                    116 	.globl	C$main.c$25$4_0$152
                                    117 ;src\main.c:25: SWITCH_ROM(BANK(const_bank_ID_title));
    00000227 3E 01            [ 8]  118 	ld	a, #<(___bank_const_bank_ID_title)
    00000229 E0 90            [12]  119 	ldh	(__current_bank + 0), a
    0000022B 21 00 20         [12]  120 	ld	hl, #_rROMB0
    0000022E 36 01            [12]  121 	ld	(hl), #<(___bank_const_bank_ID_title)
                         00000030   122 	C$main.c$26$4_0$152	= .
                                    123 	.globl	C$main.c$26$4_0$152
                                    124 ;src\main.c:26: GameTitleSetup();
    00000230 C5               [16]  125 	push	bc
    00000231 CD 00 40         [24]  126 	call	_GameTitleSetup
    00000234 C1               [12]  127 	pop	bc
                         00000035   128 	C$main.c$27$4_0$152	= .
                                    129 	.globl	C$main.c$27$4_0$152
                                    130 ;src\main.c:27: break;
    00000235 18 52            [12]  131 	jr	00109$
                         00000037   132 	C$main.c$28$4_0$152	= .
                                    133 	.globl	C$main.c$28$4_0$152
                                    134 ;src\main.c:28: case GAMEJOHNDOE:
    00000237                        135 00102$:
                         00000037   136 	C$main.c$29$4_0$152	= .
                                    137 	.globl	C$main.c$29$4_0$152
                                    138 ;src\main.c:29: SWITCH_ROM(BANK(const_bank_ID_John));
    00000237 3E 01            [ 8]  139 	ld	a, #<(___bank_const_bank_ID_John)
    00000239 E0 90            [12]  140 	ldh	(__current_bank + 0), a
    0000023B 21 00 20         [12]  141 	ld	hl, #_rROMB0
    0000023E 36 01            [12]  142 	ld	(hl), #<(___bank_const_bank_ID_John)
                         00000040   143 	C$main.c$30$4_0$152	= .
                                    144 	.globl	C$main.c$30$4_0$152
                                    145 ;src\main.c:30: GameJohnDoeSetup();
    00000240 C5               [16]  146 	push	bc
    00000241 1E 01            [ 8]  147 	ld	e, #b_GameJohnDoeSetup
    00000243 21 C6 54         [12]  148 	ld	hl, #_GameJohnDoeSetup
    00000246 CD A4 0F         [24]  149 	call	___sdcc_bcall_ehl
    00000249 C1               [12]  150 	pop	bc
                         0000004A   151 	C$main.c$31$4_0$152	= .
                                    152 	.globl	C$main.c$31$4_0$152
                                    153 ;src\main.c:31: break;
    0000024A 18 3D            [12]  154 	jr	00109$
                         0000004C   155 	C$main.c$32$4_0$152	= .
                                    156 	.globl	C$main.c$32$4_0$152
                                    157 ;src\main.c:32: case COREGAMELOOP:
    0000024C                        158 00103$:
                         0000004C   159 	C$main.c$33$4_0$152	= .
                                    160 	.globl	C$main.c$33$4_0$152
                                    161 ;src\main.c:33: SWITCH_ROM(BANK(const_bank_ID_core));
    0000024C 3E 03            [ 8]  162 	ld	a, #<(___bank_const_bank_ID_core)
    0000024E E0 90            [12]  163 	ldh	(__current_bank + 0), a
    00000250 21 00 20         [12]  164 	ld	hl, #_rROMB0
    00000253 36 03            [12]  165 	ld	(hl), #<(___bank_const_bank_ID_core)
                         00000055   166 	C$main.c$34$4_0$152	= .
                                    167 	.globl	C$main.c$34$4_0$152
                                    168 ;src\main.c:34: CoreGameLoopSetup();
    00000255 C5               [16]  169 	push	bc
    00000256 1E 03            [ 8]  170 	ld	e, #b_CoreGameLoopSetup
    00000258 21 DA 55         [12]  171 	ld	hl, #_CoreGameLoopSetup
    0000025B CD A4 0F         [24]  172 	call	___sdcc_bcall_ehl
    0000025E C1               [12]  173 	pop	bc
                         0000005F   174 	C$main.c$35$4_0$152	= .
                                    175 	.globl	C$main.c$35$4_0$152
                                    176 ;src\main.c:35: break;
    0000025F 18 28            [12]  177 	jr	00109$
                         00000061   178 	C$main.c$36$4_0$152	= .
                                    179 	.globl	C$main.c$36$4_0$152
                                    180 ;src\main.c:36: case BESTIARY:
    00000261                        181 00104$:
                         00000061   182 	C$main.c$37$4_0$152	= .
                                    183 	.globl	C$main.c$37$4_0$152
                                    184 ;src\main.c:37: SWITCH_ROM(BANK(const_bank_ID_bestiary));
    00000261 3E 05            [ 8]  185 	ld	a, #<(___bank_const_bank_ID_bestiary)
    00000263 E0 90            [12]  186 	ldh	(__current_bank + 0), a
    00000265 21 00 20         [12]  187 	ld	hl, #_rROMB0
    00000268 36 05            [12]  188 	ld	(hl), #<(___bank_const_bank_ID_bestiary)
                         0000006A   189 	C$main.c$38$4_0$152	= .
                                    190 	.globl	C$main.c$38$4_0$152
                                    191 ;src\main.c:38: BestiarySetup();
    0000026A C5               [16]  192 	push	bc
    0000026B 1E 05            [ 8]  193 	ld	e, #b_BestiarySetup
    0000026D 21 1B 43         [12]  194 	ld	hl, #_BestiarySetup
    00000270 CD A4 0F         [24]  195 	call	___sdcc_bcall_ehl
    00000273 C1               [12]  196 	pop	bc
                         00000074   197 	C$main.c$39$4_0$152	= .
                                    198 	.globl	C$main.c$39$4_0$152
                                    199 ;src\main.c:39: break;
    00000274 18 13            [12]  200 	jr	00109$
                         00000076   201 	C$main.c$40$4_0$152	= .
                                    202 	.globl	C$main.c$40$4_0$152
                                    203 ;src\main.c:40: case BATTLE:
    00000276                        204 00105$:
                         00000076   205 	C$main.c$41$4_0$152	= .
                                    206 	.globl	C$main.c$41$4_0$152
                                    207 ;src\main.c:41: SWITCH_ROM(BANK(const_bank_ID_battle));
    00000276 3E 05            [ 8]  208 	ld	a, #<(___bank_const_bank_ID_battle)
    00000278 E0 90            [12]  209 	ldh	(__current_bank + 0), a
    0000027A 21 00 20         [12]  210 	ld	hl, #_rROMB0
    0000027D 36 05            [12]  211 	ld	(hl), #<(___bank_const_bank_ID_battle)
                         0000007F   212 	C$main.c$42$4_0$152	= .
                                    213 	.globl	C$main.c$42$4_0$152
                                    214 ;src\main.c:42: BattleSetup();
    0000027F C5               [16]  215 	push	bc
    00000280 1E 05            [ 8]  216 	ld	e, #b_BattleSetup
    00000282 21 7E 64         [12]  217 	ld	hl, #_BattleSetup
    00000285 CD A4 0F         [24]  218 	call	___sdcc_bcall_ehl
    00000288 C1               [12]  219 	pop	bc
                         00000089   220 	C$main.c$46$2_0$150	= .
                                    221 	.globl	C$main.c$46$2_0$150
                                    222 ;src\main.c:46: }
    00000289                        223 00109$:
                         00000089   224 	C$main.c$48$2_0$150	= .
                                    225 	.globl	C$main.c$48$2_0$150
                                    226 ;src\main.c:48: switch (currentGameState)
    00000289 F8 00            [12]  227 	ldhl	sp,	#0
    0000028B 7E               [ 8]  228 	ld	a, (hl)
    0000028C 3D               [ 4]  229 	dec	a
    0000028D 28 1F            [12]  230 	jr	Z, 00110$
    0000028F F8 00            [12]  231 	ldhl	sp,	#0
    00000291 7E               [ 8]  232 	ld	a, (hl)
    00000292 D6 02            [ 8]  233 	sub	a, #0x02
    00000294 28 2B            [12]  234 	jr	Z, 00112$
    00000296 F8 00            [12]  235 	ldhl	sp,	#0
    00000298 7E               [ 8]  236 	ld	a, (hl)
    00000299 D6 03            [ 8]  237 	sub	a, #0x03
    0000029B 28 18            [12]  238 	jr	Z, 00111$
    0000029D F8 00            [12]  239 	ldhl	sp,	#0
    0000029F 7E               [ 8]  240 	ld	a, (hl)
    000002A0 D6 04            [ 8]  241 	sub	a, #0x04
    000002A2 28 29            [12]  242 	jr	Z, 00113$
    000002A4 F8 00            [12]  243 	ldhl	sp,	#0
    000002A6 7E               [ 8]  244 	ld	a, (hl)
    000002A7 D6 05            [ 8]  245 	sub	a, #0x05
    000002A9 28 2E            [12]  246 	jr	Z, 00114$
    000002AB C3 07 02         [16]  247 	jp	00118$
                         000000AE   248 	C$main.c$50$3_0$153	= .
                                    249 	.globl	C$main.c$50$3_0$153
                                    250 ;src\main.c:50: case GAMETITLE:
    000002AE                        251 00110$:
                         000000AE   252 	C$main.c$51$3_0$153	= .
                                    253 	.globl	C$main.c$51$3_0$153
                                    254 ;src\main.c:51: nextGameState = GameTitleUpdate();
    000002AE CD 77 41         [24]  255 	call	_GameTitleUpdate
    000002B1 47               [ 4]  256 	ld	b, a
                         000000B2   257 	C$main.c$52$3_0$153	= .
                                    258 	.globl	C$main.c$52$3_0$153
                                    259 ;src\main.c:52: break;
    000002B2 C3 07 02         [16]  260 	jp	00118$
                         000000B5   261 	C$main.c$53$3_0$153	= .
                                    262 	.globl	C$main.c$53$3_0$153
                                    263 ;src\main.c:53: case GAMEJOHNDOE:
    000002B5                        264 00111$:
                         000000B5   265 	C$main.c$54$3_0$153	= .
                                    266 	.globl	C$main.c$54$3_0$153
                                    267 ;src\main.c:54: nextGameState = GameJohnDoeUpdate();
    000002B5 1E 01            [ 8]  268 	ld	e, #b_GameJohnDoeUpdate
    000002B7 21 F4 54         [12]  269 	ld	hl, #_GameJohnDoeUpdate
    000002BA CD A4 0F         [24]  270 	call	___sdcc_bcall_ehl
    000002BD 47               [ 4]  271 	ld	b, a
                         000000BE   272 	C$main.c$55$3_0$153	= .
                                    273 	.globl	C$main.c$55$3_0$153
                                    274 ;src\main.c:55: break;
    000002BE C3 07 02         [16]  275 	jp	00118$
                         000000C1   276 	C$main.c$56$3_0$153	= .
                                    277 	.globl	C$main.c$56$3_0$153
                                    278 ;src\main.c:56: case COREGAMELOOP:
    000002C1                        279 00112$:
                         000000C1   280 	C$main.c$57$3_0$153	= .
                                    281 	.globl	C$main.c$57$3_0$153
                                    282 ;src\main.c:57: nextGameState = CoreGameLoopUpdate();
    000002C1 1E 03            [ 8]  283 	ld	e, #b_CoreGameLoopUpdate
    000002C3 21 9B 56         [12]  284 	ld	hl, #_CoreGameLoopUpdate
    000002C6 CD A4 0F         [24]  285 	call	___sdcc_bcall_ehl
    000002C9 47               [ 4]  286 	ld	b, a
                         000000CA   287 	C$main.c$58$3_0$153	= .
                                    288 	.globl	C$main.c$58$3_0$153
                                    289 ;src\main.c:58: break;
    000002CA C3 07 02         [16]  290 	jp	00118$
                         000000CD   291 	C$main.c$59$3_0$153	= .
                                    292 	.globl	C$main.c$59$3_0$153
                                    293 ;src\main.c:59: case BESTIARY:
    000002CD                        294 00113$:
                         000000CD   295 	C$main.c$60$3_0$153	= .
                                    296 	.globl	C$main.c$60$3_0$153
                                    297 ;src\main.c:60: nextGameState = BestiaryUpdate();
    000002CD 1E 05            [ 8]  298 	ld	e, #b_BestiaryUpdate
    000002CF 21 4A 43         [12]  299 	ld	hl, #_BestiaryUpdate
    000002D2 CD A4 0F         [24]  300 	call	___sdcc_bcall_ehl
    000002D5 47               [ 4]  301 	ld	b, a
                         000000D6   302 	C$main.c$61$3_0$153	= .
                                    303 	.globl	C$main.c$61$3_0$153
                                    304 ;src\main.c:61: break;
    000002D6 C3 07 02         [16]  305 	jp	00118$
                         000000D9   306 	C$main.c$62$3_0$153	= .
                                    307 	.globl	C$main.c$62$3_0$153
                                    308 ;src\main.c:62: case BATTLE:
    000002D9                        309 00114$:
                         000000D9   310 	C$main.c$63$3_0$153	= .
                                    311 	.globl	C$main.c$63$3_0$153
                                    312 ;src\main.c:63: nextGameState = BattleUpdate();
    000002D9 CD 0D 69         [24]  313 	call	_BattleUpdate
    000002DC 47               [ 4]  314 	ld	b, a
                         000000DD   315 	C$main.c$64$3_0$153	= .
                                    316 	.globl	C$main.c$64$3_0$153
                                    317 ;src\main.c:64: break;
    000002DD C3 07 02         [16]  318 	jp	00118$
                         000000E0   319 	C$main.c$67$1_0$149	= .
                                    320 	.globl	C$main.c$67$1_0$149
                                    321 ;src\main.c:67: }
                         000000E0   322 	C$main.c$69$1_0$149	= .
                                    323 	.globl	C$main.c$69$1_0$149
                                    324 ;src\main.c:69: }
    000002E0 33               [ 8]  325 	inc	sp
                         000000E1   326 	C$main.c$69$1_0$149	= .
                                    327 	.globl	C$main.c$69$1_0$149
                         000000E1   328 	XG$main$0$0	= .
                                    329 	.globl	XG$main$0$0
    000002E1 C9               [16]  330 	ret
                                    331 	.area _CODE
                                    332 	.area _INITIALIZER
                                    333 	.area _CABS (ABS)
