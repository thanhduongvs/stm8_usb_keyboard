   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _HSIDivFactor:
  17  0000 01            	dc.b	1
  18  0001 02            	dc.b	2
  19  0002 04            	dc.b	4
  20  0003 08            	dc.b	8
  21  0004               _CLKPrescTable:
  22  0004 01            	dc.b	1
  23  0005 02            	dc.b	2
  24  0006 04            	dc.b	4
  25  0007 08            	dc.b	8
  26  0008 0a            	dc.b	10
  27  0009 10            	dc.b	16
  28  000a 14            	dc.b	20
  29  000b 28            	dc.b	40
  58                     ; 66 void CLK_DeInit(void)
  58                     ; 67 {
  60                     	switch	.text
  61  0000               _CLK_DeInit:
  65                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  67  0000 350150c0      	mov	20672,#1
  68                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  70  0004 725f50c1      	clr	20673
  71                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  73  0008 35e150c4      	mov	20676,#225
  74                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  76  000c 725f50c5      	clr	20677
  77                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  79  0010 351850c6      	mov	20678,#24
  80                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  82  0014 35ff50c7      	mov	20679,#255
  83                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  85  0018 35ff50ca      	mov	20682,#255
  86                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  88  001c 725f50c8      	clr	20680
  89                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  91  0020 725f50c9      	clr	20681
  93  0024               L52:
  94                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  96  0024 c650c9        	ld	a,20681
  97  0027 a501          	bcp	a,#1
  98  0029 26f9          	jrne	L52
  99                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 101  002b 725f50c9      	clr	20681
 102                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 104  002f 725f50cc      	clr	20684
 105                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 107  0033 725f50cd      	clr	20685
 108                     ; 84 }
 111  0037 81            	ret
 167                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 167                     ; 96 {
 168                     	switch	.text
 169  0038               _CLK_FastHaltWakeUpCmd:
 173                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 175                     ; 101     if (NewState != DISABLE)
 177  0038 4d            	tnz	a
 178  0039 2706          	jreq	L75
 179                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 181  003b 721450c0      	bset	20672,#2
 183  003f 2004          	jra	L16
 184  0041               L75:
 185                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 187  0041 721550c0      	bres	20672,#2
 188  0045               L16:
 189                     ; 112 }
 192  0045 81            	ret
 227                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 227                     ; 120 {
 228                     	switch	.text
 229  0046               _CLK_HSECmd:
 233                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 235                     ; 125     if (NewState != DISABLE)
 237  0046 4d            	tnz	a
 238  0047 2706          	jreq	L101
 239                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 241  0049 721050c1      	bset	20673,#0
 243  004d 2004          	jra	L301
 244  004f               L101:
 245                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 247  004f 721150c1      	bres	20673,#0
 248  0053               L301:
 249                     ; 136 }
 252  0053 81            	ret
 287                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 287                     ; 144 {
 288                     	switch	.text
 289  0054               _CLK_HSICmd:
 293                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 295                     ; 149     if (NewState != DISABLE)
 297  0054 4d            	tnz	a
 298  0055 2706          	jreq	L321
 299                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 301  0057 721050c0      	bset	20672,#0
 303  005b 2004          	jra	L521
 304  005d               L321:
 305                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 307  005d 721150c0      	bres	20672,#0
 308  0061               L521:
 309                     ; 160 }
 312  0061 81            	ret
 347                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 347                     ; 168 {
 348                     	switch	.text
 349  0062               _CLK_LSICmd:
 353                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 355                     ; 173     if (NewState != DISABLE)
 357  0062 4d            	tnz	a
 358  0063 2706          	jreq	L541
 359                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 361  0065 721650c0      	bset	20672,#3
 363  0069 2004          	jra	L741
 364  006b               L541:
 365                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 367  006b 721750c0      	bres	20672,#3
 368  006f               L741:
 369                     ; 184 }
 372  006f 81            	ret
 407                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 407                     ; 193 {
 408                     	switch	.text
 409  0070               _CLK_CCOCmd:
 413                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 415                     ; 198     if (NewState != DISABLE)
 417  0070 4d            	tnz	a
 418  0071 2706          	jreq	L761
 419                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 421  0073 721050c9      	bset	20681,#0
 423  0077 2004          	jra	L171
 424  0079               L761:
 425                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 427  0079 721150c9      	bres	20681,#0
 428  007d               L171:
 429                     ; 209 }
 432  007d 81            	ret
 467                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 467                     ; 219 {
 468                     	switch	.text
 469  007e               _CLK_ClockSwitchCmd:
 473                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 475                     ; 224     if (NewState != DISABLE )
 477  007e 4d            	tnz	a
 478  007f 2706          	jreq	L112
 479                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 481  0081 721250c5      	bset	20677,#1
 483  0085 2004          	jra	L312
 484  0087               L112:
 485                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 487  0087 721350c5      	bres	20677,#1
 488  008b               L312:
 489                     ; 235 }
 492  008b 81            	ret
 528                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 528                     ; 246 {
 529                     	switch	.text
 530  008c               _CLK_SlowActiveHaltWakeUpCmd:
 534                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 536                     ; 251     if (NewState != DISABLE)
 538  008c 4d            	tnz	a
 539  008d 2706          	jreq	L332
 540                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 542  008f 721a50c0      	bset	20672,#5
 544  0093 2004          	jra	L532
 545  0095               L332:
 546                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 548  0095 721b50c0      	bres	20672,#5
 549  0099               L532:
 550                     ; 262 }
 553  0099 81            	ret
 712                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 712                     ; 273 {
 713                     	switch	.text
 714  009a               _CLK_PeripheralClockConfig:
 716  009a 89            	pushw	x
 717       00000000      OFST:	set	0
 720                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 722                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 724                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 726  009b 9e            	ld	a,xh
 727  009c a510          	bcp	a,#16
 728  009e 2633          	jrne	L123
 729                     ; 281         if (NewState != DISABLE)
 731  00a0 0d02          	tnz	(OFST+2,sp)
 732  00a2 2717          	jreq	L323
 733                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 735  00a4 7b01          	ld	a,(OFST+1,sp)
 736  00a6 a40f          	and	a,#15
 737  00a8 5f            	clrw	x
 738  00a9 97            	ld	xl,a
 739  00aa a601          	ld	a,#1
 740  00ac 5d            	tnzw	x
 741  00ad 2704          	jreq	L62
 742  00af               L03:
 743  00af 48            	sll	a
 744  00b0 5a            	decw	x
 745  00b1 26fc          	jrne	L03
 746  00b3               L62:
 747  00b3 ca50c7        	or	a,20679
 748  00b6 c750c7        	ld	20679,a
 750  00b9 2049          	jra	L723
 751  00bb               L323:
 752                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 754  00bb 7b01          	ld	a,(OFST+1,sp)
 755  00bd a40f          	and	a,#15
 756  00bf 5f            	clrw	x
 757  00c0 97            	ld	xl,a
 758  00c1 a601          	ld	a,#1
 759  00c3 5d            	tnzw	x
 760  00c4 2704          	jreq	L23
 761  00c6               L43:
 762  00c6 48            	sll	a
 763  00c7 5a            	decw	x
 764  00c8 26fc          	jrne	L43
 765  00ca               L23:
 766  00ca 43            	cpl	a
 767  00cb c450c7        	and	a,20679
 768  00ce c750c7        	ld	20679,a
 769  00d1 2031          	jra	L723
 770  00d3               L123:
 771                     ; 294         if (NewState != DISABLE)
 773  00d3 0d02          	tnz	(OFST+2,sp)
 774  00d5 2717          	jreq	L133
 775                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 777  00d7 7b01          	ld	a,(OFST+1,sp)
 778  00d9 a40f          	and	a,#15
 779  00db 5f            	clrw	x
 780  00dc 97            	ld	xl,a
 781  00dd a601          	ld	a,#1
 782  00df 5d            	tnzw	x
 783  00e0 2704          	jreq	L63
 784  00e2               L04:
 785  00e2 48            	sll	a
 786  00e3 5a            	decw	x
 787  00e4 26fc          	jrne	L04
 788  00e6               L63:
 789  00e6 ca50ca        	or	a,20682
 790  00e9 c750ca        	ld	20682,a
 792  00ec 2016          	jra	L723
 793  00ee               L133:
 794                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 796  00ee 7b01          	ld	a,(OFST+1,sp)
 797  00f0 a40f          	and	a,#15
 798  00f2 5f            	clrw	x
 799  00f3 97            	ld	xl,a
 800  00f4 a601          	ld	a,#1
 801  00f6 5d            	tnzw	x
 802  00f7 2704          	jreq	L24
 803  00f9               L44:
 804  00f9 48            	sll	a
 805  00fa 5a            	decw	x
 806  00fb 26fc          	jrne	L44
 807  00fd               L24:
 808  00fd 43            	cpl	a
 809  00fe c450ca        	and	a,20682
 810  0101 c750ca        	ld	20682,a
 811  0104               L723:
 812                     ; 306 }
 815  0104 85            	popw	x
 816  0105 81            	ret
1004                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1004                     ; 320 {
1005                     	switch	.text
1006  0106               _CLK_ClockSwitchConfig:
1008  0106 89            	pushw	x
1009  0107 5204          	subw	sp,#4
1010       00000004      OFST:	set	4
1013                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1015  0109 ae0491        	ldw	x,#1169
1016  010c 1f03          	ldw	(OFST-1,sp),x
1017                     ; 324     ErrorStatus Swif = ERROR;
1019                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1021                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1023                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1025                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1027                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1029  010e c650c3        	ld	a,20675
1030  0111 6b01          	ld	(OFST-3,sp),a
1031                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1033  0113 7b05          	ld	a,(OFST+1,sp)
1034  0115 a101          	cp	a,#1
1035  0117 2639          	jrne	L544
1036                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1038  0119 721250c5      	bset	20677,#1
1039                     ; 343         if (ITState != DISABLE)
1041  011d 0d09          	tnz	(OFST+5,sp)
1042  011f 2706          	jreq	L744
1043                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1045  0121 721450c5      	bset	20677,#2
1047  0125 2004          	jra	L154
1048  0127               L744:
1049                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1051  0127 721550c5      	bres	20677,#2
1052  012b               L154:
1053                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1055  012b 7b06          	ld	a,(OFST+2,sp)
1056  012d c750c4        	ld	20676,a
1058  0130 2007          	jra	L754
1059  0132               L354:
1060                     ; 357             DownCounter--;
1062  0132 1e03          	ldw	x,(OFST-1,sp)
1063  0134 1d0001        	subw	x,#1
1064  0137 1f03          	ldw	(OFST-1,sp),x
1065  0139               L754:
1066                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1068  0139 c650c5        	ld	a,20677
1069  013c a501          	bcp	a,#1
1070  013e 2704          	jreq	L364
1072  0140 1e03          	ldw	x,(OFST-1,sp)
1073  0142 26ee          	jrne	L354
1074  0144               L364:
1075                     ; 360         if (DownCounter != 0)
1077  0144 1e03          	ldw	x,(OFST-1,sp)
1078  0146 2706          	jreq	L564
1079                     ; 362             Swif = SUCCESS;
1081  0148 a601          	ld	a,#1
1082  014a 6b02          	ld	(OFST-2,sp),a
1084  014c 201b          	jra	L174
1085  014e               L564:
1086                     ; 366             Swif = ERROR;
1088  014e 0f02          	clr	(OFST-2,sp)
1089  0150 2017          	jra	L174
1090  0152               L544:
1091                     ; 374         if (ITState != DISABLE)
1093  0152 0d09          	tnz	(OFST+5,sp)
1094  0154 2706          	jreq	L374
1095                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1097  0156 721450c5      	bset	20677,#2
1099  015a 2004          	jra	L574
1100  015c               L374:
1101                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1103  015c 721550c5      	bres	20677,#2
1104  0160               L574:
1105                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1107  0160 7b06          	ld	a,(OFST+2,sp)
1108  0162 c750c4        	ld	20676,a
1109                     ; 388         Swif = SUCCESS;
1111  0165 a601          	ld	a,#1
1112  0167 6b02          	ld	(OFST-2,sp),a
1113  0169               L174:
1114                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1116  0169 0d0a          	tnz	(OFST+6,sp)
1117  016b 260c          	jrne	L774
1119  016d 7b01          	ld	a,(OFST-3,sp)
1120  016f a1e1          	cp	a,#225
1121  0171 2606          	jrne	L774
1122                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1124  0173 721150c0      	bres	20672,#0
1126  0177 201e          	jra	L105
1127  0179               L774:
1128                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1130  0179 0d0a          	tnz	(OFST+6,sp)
1131  017b 260c          	jrne	L305
1133  017d 7b01          	ld	a,(OFST-3,sp)
1134  017f a1d2          	cp	a,#210
1135  0181 2606          	jrne	L305
1136                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1138  0183 721750c0      	bres	20672,#3
1140  0187 200e          	jra	L105
1141  0189               L305:
1142                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1144  0189 0d0a          	tnz	(OFST+6,sp)
1145  018b 260a          	jrne	L105
1147  018d 7b01          	ld	a,(OFST-3,sp)
1148  018f a1b4          	cp	a,#180
1149  0191 2604          	jrne	L105
1150                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1152  0193 721150c1      	bres	20673,#0
1153  0197               L105:
1154                     ; 406     return(Swif);
1156  0197 7b02          	ld	a,(OFST-2,sp)
1159  0199 5b06          	addw	sp,#6
1160  019b 81            	ret
1298                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1298                     ; 417 {
1299                     	switch	.text
1300  019c               _CLK_HSIPrescalerConfig:
1302  019c 88            	push	a
1303       00000000      OFST:	set	0
1306                     ; 419     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1308                     ; 422     CLK->CKDIVR = (uint8_t)((CLK->CKDIVR & (uint8_t)(~CLK_CKDIVR_HSIDIV)) | (uint8_t) HSIPrescaler);
1310  019d c650c6        	ld	a,20678
1311  01a0 a4e7          	and	a,#231
1312  01a2 1a01          	or	a,(OFST+1,sp)
1313  01a4 c750c6        	ld	20678,a
1314                     ; 423 }
1317  01a7 84            	pop	a
1318  01a8 81            	ret
1453                     ; 434 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1453                     ; 435 {
1454                     	switch	.text
1455  01a9               _CLK_CCOConfig:
1457  01a9 88            	push	a
1458       00000000      OFST:	set	0
1461                     ; 438     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1463                     ; 441     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1465  01aa c650c9        	ld	a,20681
1466  01ad a4e1          	and	a,#225
1467  01af c750c9        	ld	20681,a
1468                     ; 444     CLK->CCOR |= (uint8_t)CLK_CCO;
1470  01b2 c650c9        	ld	a,20681
1471  01b5 1a01          	or	a,(OFST+1,sp)
1472  01b7 c750c9        	ld	20681,a
1473                     ; 447     CLK->CCOR |= CLK_CCOR_CCOEN;
1475  01ba 721050c9      	bset	20681,#0
1476                     ; 449 }
1479  01be 84            	pop	a
1480  01bf 81            	ret
1545                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1545                     ; 460 {
1546                     	switch	.text
1547  01c0               _CLK_ITConfig:
1549  01c0 89            	pushw	x
1550       00000000      OFST:	set	0
1553                     ; 463     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1555                     ; 464     assert_param(IS_CLK_IT_OK(CLK_IT));
1557                     ; 466     if (NewState != DISABLE)
1559  01c1 9f            	ld	a,xl
1560  01c2 4d            	tnz	a
1561  01c3 2719          	jreq	L507
1562                     ; 468         switch (CLK_IT)
1564  01c5 9e            	ld	a,xh
1566                     ; 476         default:
1566                     ; 477             break;
1567  01c6 a00c          	sub	a,#12
1568  01c8 270a          	jreq	L146
1569  01ca a010          	sub	a,#16
1570  01cc 2624          	jrne	L317
1571                     ; 470         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1571                     ; 471             CLK->SWCR |= CLK_SWCR_SWIEN;
1573  01ce 721450c5      	bset	20677,#2
1574                     ; 472             break;
1576  01d2 201e          	jra	L317
1577  01d4               L146:
1578                     ; 473         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1578                     ; 474             CLK->CSSR |= CLK_CSSR_CSSDIE;
1580  01d4 721450c8      	bset	20680,#2
1581                     ; 475             break;
1583  01d8 2018          	jra	L317
1584  01da               L346:
1585                     ; 476         default:
1585                     ; 477             break;
1587  01da 2016          	jra	L317
1588  01dc               L117:
1590  01dc 2014          	jra	L317
1591  01de               L507:
1592                     ; 482         switch (CLK_IT)
1594  01de 7b01          	ld	a,(OFST+1,sp)
1596                     ; 490         default:
1596                     ; 491             break;
1597  01e0 a00c          	sub	a,#12
1598  01e2 270a          	jreq	L746
1599  01e4 a010          	sub	a,#16
1600  01e6 260a          	jrne	L317
1601                     ; 484         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1601                     ; 485             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1603  01e8 721550c5      	bres	20677,#2
1604                     ; 486             break;
1606  01ec 2004          	jra	L317
1607  01ee               L746:
1608                     ; 487         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1608                     ; 488             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1610  01ee 721550c8      	bres	20680,#2
1611                     ; 489             break;
1612  01f2               L317:
1613                     ; 495 }
1616  01f2 85            	popw	x
1617  01f3 81            	ret
1618  01f4               L156:
1619                     ; 490         default:
1619                     ; 491             break;
1621  01f4 20fc          	jra	L317
1622  01f6               L717:
1623  01f6 20fa          	jra	L317
1658                     ; 502 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1658                     ; 503 {
1659                     	switch	.text
1660  01f8               _CLK_SYSCLKConfig:
1662  01f8 88            	push	a
1663       00000000      OFST:	set	0
1666                     ; 506     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1668                     ; 508     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1670  01f9 a580          	bcp	a,#128
1671  01fb 2614          	jrne	L737
1672                     ; 510         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1674  01fd c650c6        	ld	a,20678
1675  0200 a4e7          	and	a,#231
1676  0202 c750c6        	ld	20678,a
1677                     ; 511         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1679  0205 7b01          	ld	a,(OFST+1,sp)
1680  0207 a418          	and	a,#24
1681  0209 ca50c6        	or	a,20678
1682  020c c750c6        	ld	20678,a
1684  020f 2012          	jra	L147
1685  0211               L737:
1686                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1688  0211 c650c6        	ld	a,20678
1689  0214 a4f8          	and	a,#248
1690  0216 c750c6        	ld	20678,a
1691                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1693  0219 7b01          	ld	a,(OFST+1,sp)
1694  021b a407          	and	a,#7
1695  021d ca50c6        	or	a,20678
1696  0220 c750c6        	ld	20678,a
1697  0223               L147:
1698                     ; 519 }
1701  0223 84            	pop	a
1702  0224 81            	ret
1758                     ; 526 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
1758                     ; 527 {
1759                     	switch	.text
1760  0225               _CLK_SWIMConfig:
1764                     ; 530     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
1766                     ; 532     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
1768  0225 4d            	tnz	a
1769  0226 2706          	jreq	L177
1770                     ; 535         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
1772  0228 721050cd      	bset	20685,#0
1774  022c 2004          	jra	L377
1775  022e               L177:
1776                     ; 540         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
1778  022e 721150cd      	bres	20685,#0
1779  0232               L377:
1780                     ; 543 }
1783  0232 81            	ret
1807                     ; 552 void CLK_ClockSecuritySystemEnable(void)
1807                     ; 553 {
1808                     	switch	.text
1809  0233               _CLK_ClockSecuritySystemEnable:
1813                     ; 555     CLK->CSSR |= CLK_CSSR_CSSEN;
1815  0233 721050c8      	bset	20680,#0
1816                     ; 556 }
1819  0237 81            	ret
1844                     ; 564 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
1844                     ; 565 {
1845                     	switch	.text
1846  0238               _CLK_GetSYSCLKSource:
1850                     ; 566     return((CLK_Source_TypeDef)CLK->CMSR);
1852  0238 c650c3        	ld	a,20675
1855  023b 81            	ret
1918                     ; 574 uint32_t CLK_GetClockFreq(void)
1918                     ; 575 {
1919                     	switch	.text
1920  023c               _CLK_GetClockFreq:
1922  023c 5209          	subw	sp,#9
1923       00000009      OFST:	set	9
1926                     ; 577     uint32_t clockfrequency = 0;
1928                     ; 578     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
1930                     ; 579     uint8_t tmp = 0, presc = 0;
1934                     ; 582     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
1936  023e c650c3        	ld	a,20675
1937  0241 6b09          	ld	(OFST+0,sp),a
1938                     ; 584     if (clocksource == CLK_SOURCE_HSI)
1940  0243 7b09          	ld	a,(OFST+0,sp)
1941  0245 a1e1          	cp	a,#225
1942  0247 2641          	jrne	L7401
1943                     ; 586         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
1945  0249 c650c6        	ld	a,20678
1946  024c a418          	and	a,#24
1947  024e 6b09          	ld	(OFST+0,sp),a
1948                     ; 587         tmp = (uint8_t)(tmp >> 3);
1950  0250 0409          	srl	(OFST+0,sp)
1951  0252 0409          	srl	(OFST+0,sp)
1952  0254 0409          	srl	(OFST+0,sp)
1953                     ; 588         presc = HSIDivFactor[tmp];
1955  0256 7b09          	ld	a,(OFST+0,sp)
1956  0258 5f            	clrw	x
1957  0259 97            	ld	xl,a
1958  025a d60000        	ld	a,(_HSIDivFactor,x)
1959  025d 6b09          	ld	(OFST+0,sp),a
1960                     ; 589         clockfrequency = HSI_VALUE / presc;
1962  025f 7b09          	ld	a,(OFST+0,sp)
1963  0261 b703          	ld	c_lreg+3,a
1964  0263 3f02          	clr	c_lreg+2
1965  0265 3f01          	clr	c_lreg+1
1966  0267 3f00          	clr	c_lreg
1967  0269 96            	ldw	x,sp
1968  026a 1c0001        	addw	x,#OFST-8
1969  026d cd0000        	call	c_rtol
1971  0270 ae2400        	ldw	x,#9216
1972  0273 bf02          	ldw	c_lreg+2,x
1973  0275 ae00f4        	ldw	x,#244
1974  0278 bf00          	ldw	c_lreg,x
1975  027a 96            	ldw	x,sp
1976  027b 1c0001        	addw	x,#OFST-8
1977  027e cd0000        	call	c_ludv
1979  0281 96            	ldw	x,sp
1980  0282 1c0005        	addw	x,#OFST-4
1981  0285 cd0000        	call	c_rtol
1984  0288 201c          	jra	L1501
1985  028a               L7401:
1986                     ; 591     else if ( clocksource == CLK_SOURCE_LSI)
1988  028a 7b09          	ld	a,(OFST+0,sp)
1989  028c a1d2          	cp	a,#210
1990  028e 260c          	jrne	L3501
1991                     ; 593         clockfrequency = LSI_VALUE;
1993  0290 aef400        	ldw	x,#62464
1994  0293 1f07          	ldw	(OFST-2,sp),x
1995  0295 ae0001        	ldw	x,#1
1996  0298 1f05          	ldw	(OFST-4,sp),x
1998  029a 200a          	jra	L1501
1999  029c               L3501:
2000                     ; 597         clockfrequency = HSE_VALUE;
2002  029c ae2400        	ldw	x,#9216
2003  029f 1f07          	ldw	(OFST-2,sp),x
2004  02a1 ae00f4        	ldw	x,#244
2005  02a4 1f05          	ldw	(OFST-4,sp),x
2006  02a6               L1501:
2007                     ; 600     return((uint32_t)clockfrequency);
2009  02a6 96            	ldw	x,sp
2010  02a7 1c0005        	addw	x,#OFST-4
2011  02aa cd0000        	call	c_ltor
2015  02ad 5b09          	addw	sp,#9
2016  02af 81            	ret
2115                     ; 611 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2115                     ; 612 {
2116                     	switch	.text
2117  02b0               _CLK_AdjustHSICalibrationValue:
2119  02b0 88            	push	a
2120       00000000      OFST:	set	0
2123                     ; 615     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2125                     ; 618     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2127  02b1 c650cc        	ld	a,20684
2128  02b4 a4f8          	and	a,#248
2129  02b6 1a01          	or	a,(OFST+1,sp)
2130  02b8 c750cc        	ld	20684,a
2131                     ; 620 }
2134  02bb 84            	pop	a
2135  02bc 81            	ret
2159                     ; 631 void CLK_SYSCLKEmergencyClear(void)
2159                     ; 632 {
2160                     	switch	.text
2161  02bd               _CLK_SYSCLKEmergencyClear:
2165                     ; 633     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2167  02bd 721150c5      	bres	20677,#0
2168                     ; 634 }
2171  02c1 81            	ret
2324                     ; 643 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2324                     ; 644 {
2325                     	switch	.text
2326  02c2               _CLK_GetFlagStatus:
2328  02c2 89            	pushw	x
2329  02c3 5203          	subw	sp,#3
2330       00000003      OFST:	set	3
2333                     ; 646     uint16_t statusreg = 0;
2335                     ; 647     uint8_t tmpreg = 0;
2337                     ; 648     FlagStatus bitstatus = RESET;
2339                     ; 651     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2341                     ; 654     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2343  02c5 01            	rrwa	x,a
2344  02c6 9f            	ld	a,xl
2345  02c7 a4ff          	and	a,#255
2346  02c9 97            	ld	xl,a
2347  02ca 4f            	clr	a
2348  02cb 02            	rlwa	x,a
2349  02cc 1f01          	ldw	(OFST-2,sp),x
2350  02ce 01            	rrwa	x,a
2351                     ; 657     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2353  02cf 1e01          	ldw	x,(OFST-2,sp)
2354  02d1 a30100        	cpw	x,#256
2355  02d4 2607          	jrne	L1221
2356                     ; 659         tmpreg = CLK->ICKR;
2358  02d6 c650c0        	ld	a,20672
2359  02d9 6b03          	ld	(OFST+0,sp),a
2361  02db 202f          	jra	L3221
2362  02dd               L1221:
2363                     ; 661     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2365  02dd 1e01          	ldw	x,(OFST-2,sp)
2366  02df a30200        	cpw	x,#512
2367  02e2 2607          	jrne	L5221
2368                     ; 663         tmpreg = CLK->ECKR;
2370  02e4 c650c1        	ld	a,20673
2371  02e7 6b03          	ld	(OFST+0,sp),a
2373  02e9 2021          	jra	L3221
2374  02eb               L5221:
2375                     ; 665     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2377  02eb 1e01          	ldw	x,(OFST-2,sp)
2378  02ed a30300        	cpw	x,#768
2379  02f0 2607          	jrne	L1321
2380                     ; 667         tmpreg = CLK->SWCR;
2382  02f2 c650c5        	ld	a,20677
2383  02f5 6b03          	ld	(OFST+0,sp),a
2385  02f7 2013          	jra	L3221
2386  02f9               L1321:
2387                     ; 669     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2389  02f9 1e01          	ldw	x,(OFST-2,sp)
2390  02fb a30400        	cpw	x,#1024
2391  02fe 2607          	jrne	L5321
2392                     ; 671         tmpreg = CLK->CSSR;
2394  0300 c650c8        	ld	a,20680
2395  0303 6b03          	ld	(OFST+0,sp),a
2397  0305 2005          	jra	L3221
2398  0307               L5321:
2399                     ; 675         tmpreg = CLK->CCOR;
2401  0307 c650c9        	ld	a,20681
2402  030a 6b03          	ld	(OFST+0,sp),a
2403  030c               L3221:
2404                     ; 678     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2406  030c 7b05          	ld	a,(OFST+2,sp)
2407  030e 1503          	bcp	a,(OFST+0,sp)
2408  0310 2706          	jreq	L1421
2409                     ; 680         bitstatus = SET;
2411  0312 a601          	ld	a,#1
2412  0314 6b03          	ld	(OFST+0,sp),a
2414  0316 2002          	jra	L3421
2415  0318               L1421:
2416                     ; 684         bitstatus = RESET;
2418  0318 0f03          	clr	(OFST+0,sp)
2419  031a               L3421:
2420                     ; 688     return((FlagStatus)bitstatus);
2422  031a 7b03          	ld	a,(OFST+0,sp)
2425  031c 5b05          	addw	sp,#5
2426  031e 81            	ret
2472                     ; 698 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2472                     ; 699 {
2473                     	switch	.text
2474  031f               _CLK_GetITStatus:
2476  031f 88            	push	a
2477  0320 88            	push	a
2478       00000001      OFST:	set	1
2481                     ; 701     ITStatus bitstatus = RESET;
2483                     ; 704     assert_param(IS_CLK_IT_OK(CLK_IT));
2485                     ; 706     if (CLK_IT == CLK_IT_SWIF)
2487  0321 a11c          	cp	a,#28
2488  0323 2611          	jrne	L7621
2489                     ; 709         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2491  0325 c450c5        	and	a,20677
2492  0328 a10c          	cp	a,#12
2493  032a 2606          	jrne	L1721
2494                     ; 711             bitstatus = SET;
2496  032c a601          	ld	a,#1
2497  032e 6b01          	ld	(OFST+0,sp),a
2499  0330 2015          	jra	L5721
2500  0332               L1721:
2501                     ; 715             bitstatus = RESET;
2503  0332 0f01          	clr	(OFST+0,sp)
2504  0334 2011          	jra	L5721
2505  0336               L7621:
2506                     ; 721         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2508  0336 c650c8        	ld	a,20680
2509  0339 1402          	and	a,(OFST+1,sp)
2510  033b a10c          	cp	a,#12
2511  033d 2606          	jrne	L7721
2512                     ; 723             bitstatus = SET;
2514  033f a601          	ld	a,#1
2515  0341 6b01          	ld	(OFST+0,sp),a
2517  0343 2002          	jra	L5721
2518  0345               L7721:
2519                     ; 727             bitstatus = RESET;
2521  0345 0f01          	clr	(OFST+0,sp)
2522  0347               L5721:
2523                     ; 732     return bitstatus;
2525  0347 7b01          	ld	a,(OFST+0,sp)
2528  0349 85            	popw	x
2529  034a 81            	ret
2565                     ; 742 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2565                     ; 743 {
2566                     	switch	.text
2567  034b               _CLK_ClearITPendingBit:
2571                     ; 746     assert_param(IS_CLK_IT_OK(CLK_IT));
2573                     ; 748     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2575  034b a10c          	cp	a,#12
2576  034d 2606          	jrne	L1231
2577                     ; 751         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2579  034f 721750c8      	bres	20680,#3
2581  0353 2004          	jra	L3231
2582  0355               L1231:
2583                     ; 756         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2585  0355 721750c5      	bres	20677,#3
2586  0359               L3231:
2587                     ; 759 }
2590  0359 81            	ret
2625                     	xdef	_CLKPrescTable
2626                     	xdef	_HSIDivFactor
2627                     	xdef	_CLK_ClearITPendingBit
2628                     	xdef	_CLK_GetITStatus
2629                     	xdef	_CLK_GetFlagStatus
2630                     	xdef	_CLK_GetSYSCLKSource
2631                     	xdef	_CLK_GetClockFreq
2632                     	xdef	_CLK_AdjustHSICalibrationValue
2633                     	xdef	_CLK_SYSCLKEmergencyClear
2634                     	xdef	_CLK_ClockSecuritySystemEnable
2635                     	xdef	_CLK_SWIMConfig
2636                     	xdef	_CLK_SYSCLKConfig
2637                     	xdef	_CLK_ITConfig
2638                     	xdef	_CLK_CCOConfig
2639                     	xdef	_CLK_HSIPrescalerConfig
2640                     	xdef	_CLK_ClockSwitchConfig
2641                     	xdef	_CLK_PeripheralClockConfig
2642                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
2643                     	xdef	_CLK_FastHaltWakeUpCmd
2644                     	xdef	_CLK_ClockSwitchCmd
2645                     	xdef	_CLK_CCOCmd
2646                     	xdef	_CLK_LSICmd
2647                     	xdef	_CLK_HSICmd
2648                     	xdef	_CLK_HSECmd
2649                     	xdef	_CLK_DeInit
2650                     	xref.b	c_lreg
2651                     	xref.b	c_x
2670                     	xref	c_ltor
2671                     	xref	c_ludv
2672                     	xref	c_rtol
2673                     	end
