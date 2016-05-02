   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 52 void TIM1_DeInit(void)
  43                     ; 53 {
  45                     	switch	.text
  46  0000               _TIM1_DeInit:
  50                     ; 54     TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  52  0000 725f5250      	clr	21072
  53                     ; 55     TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  55  0004 725f5251      	clr	21073
  56                     ; 56     TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  58  0008 725f5252      	clr	21074
  59                     ; 57     TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  61  000c 725f5253      	clr	21075
  62                     ; 58     TIM1->IER  = TIM1_IER_RESET_VALUE;
  64  0010 725f5254      	clr	21076
  65                     ; 59     TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  67  0014 725f5256      	clr	21078
  68                     ; 61     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  70  0018 725f525c      	clr	21084
  71                     ; 62     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  73  001c 725f525d      	clr	21085
  74                     ; 64     TIM1->CCMR1 = 0x01;
  76  0020 35015258      	mov	21080,#1
  77                     ; 65     TIM1->CCMR2 = 0x01;
  79  0024 35015259      	mov	21081,#1
  80                     ; 66     TIM1->CCMR3 = 0x01;
  82  0028 3501525a      	mov	21082,#1
  83                     ; 67     TIM1->CCMR4 = 0x01;
  85  002c 3501525b      	mov	21083,#1
  86                     ; 69     TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  88  0030 725f525c      	clr	21084
  89                     ; 70     TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  91  0034 725f525d      	clr	21085
  92                     ; 71     TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  94  0038 725f5258      	clr	21080
  95                     ; 72     TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  97  003c 725f5259      	clr	21081
  98                     ; 73     TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 100  0040 725f525a      	clr	21082
 101                     ; 74     TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 103  0044 725f525b      	clr	21083
 104                     ; 75     TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 106  0048 725f525e      	clr	21086
 107                     ; 76     TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 109  004c 725f525f      	clr	21087
 110                     ; 77     TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 112  0050 725f5260      	clr	21088
 113                     ; 78     TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 115  0054 725f5261      	clr	21089
 116                     ; 79     TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 118  0058 35ff5262      	mov	21090,#255
 119                     ; 80     TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 121  005c 35ff5263      	mov	21091,#255
 122                     ; 81     TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 124  0060 725f5265      	clr	21093
 125                     ; 82     TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 127  0064 725f5266      	clr	21094
 128                     ; 83     TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 130  0068 725f5267      	clr	21095
 131                     ; 84     TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 133  006c 725f5268      	clr	21096
 134                     ; 85     TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 136  0070 725f5269      	clr	21097
 137                     ; 86     TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 139  0074 725f526a      	clr	21098
 140                     ; 87     TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 142  0078 725f526b      	clr	21099
 143                     ; 88     TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 145  007c 725f526c      	clr	21100
 146                     ; 89     TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 148  0080 725f526f      	clr	21103
 149                     ; 90     TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 151  0084 35015257      	mov	21079,#1
 152                     ; 91     TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 154  0088 725f526e      	clr	21102
 155                     ; 92     TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 157  008c 725f526d      	clr	21101
 158                     ; 93     TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 160  0090 725f5264      	clr	21092
 161                     ; 94     TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 163  0094 725f5255      	clr	21077
 164                     ; 95 }
 167  0098 81            	ret
 276                     ; 105 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 276                     ; 106                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 276                     ; 107                        uint16_t TIM1_Period,
 276                     ; 108                        uint8_t TIM1_RepetitionCounter)
 276                     ; 109 {
 277                     	switch	.text
 278  0099               _TIM1_TimeBaseInit:
 280  0099 89            	pushw	x
 281       00000000      OFST:	set	0
 284                     ; 112     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 286                     ; 115     TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 288  009a 7b06          	ld	a,(OFST+6,sp)
 289  009c c75262        	ld	21090,a
 290                     ; 116     TIM1->ARRL = (uint8_t)(TIM1_Period);
 292  009f 7b07          	ld	a,(OFST+7,sp)
 293  00a1 c75263        	ld	21091,a
 294                     ; 119     TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 296  00a4 9e            	ld	a,xh
 297  00a5 c75260        	ld	21088,a
 298                     ; 120     TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 300  00a8 9f            	ld	a,xl
 301  00a9 c75261        	ld	21089,a
 302                     ; 123     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 302                     ; 124                            | (uint8_t)(TIM1_CounterMode));
 304  00ac c65250        	ld	a,21072
 305  00af a48f          	and	a,#143
 306  00b1 1a05          	or	a,(OFST+5,sp)
 307  00b3 c75250        	ld	21072,a
 308                     ; 127     TIM1->RCR = TIM1_RepetitionCounter;
 310  00b6 7b08          	ld	a,(OFST+8,sp)
 311  00b8 c75264        	ld	21092,a
 312                     ; 129 }
 315  00bb 85            	popw	x
 316  00bc 81            	ret
 601                     ; 150 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 601                     ; 151                   TIM1_OutputState_TypeDef TIM1_OutputState,
 601                     ; 152                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 601                     ; 153                   uint16_t TIM1_Pulse,
 601                     ; 154                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 601                     ; 155                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 601                     ; 156                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 601                     ; 157                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 601                     ; 158 {
 602                     	switch	.text
 603  00bd               _TIM1_OC1Init:
 605  00bd 89            	pushw	x
 606  00be 5203          	subw	sp,#3
 607       00000003      OFST:	set	3
 610                     ; 160     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 612                     ; 161     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 614                     ; 162     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 616                     ; 163     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 618                     ; 164     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 620                     ; 165     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 622                     ; 166     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 624                     ; 170     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 624                     ; 171                                | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 626  00c0 c6525c        	ld	a,21084
 627  00c3 a4f0          	and	a,#240
 628  00c5 c7525c        	ld	21084,a
 629                     ; 174   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 629                     ; 175                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 629                     ; 176                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 629                     ; 177                                         | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 631  00c8 7b0c          	ld	a,(OFST+9,sp)
 632  00ca a408          	and	a,#8
 633  00cc 6b03          	ld	(OFST+0,sp),a
 634  00ce 7b0b          	ld	a,(OFST+8,sp)
 635  00d0 a402          	and	a,#2
 636  00d2 1a03          	or	a,(OFST+0,sp)
 637  00d4 6b02          	ld	(OFST-1,sp),a
 638  00d6 7b08          	ld	a,(OFST+5,sp)
 639  00d8 a404          	and	a,#4
 640  00da 6b01          	ld	(OFST-2,sp),a
 641  00dc 9f            	ld	a,xl
 642  00dd a401          	and	a,#1
 643  00df 1a01          	or	a,(OFST-2,sp)
 644  00e1 1a02          	or	a,(OFST-1,sp)
 645  00e3 ca525c        	or	a,21084
 646  00e6 c7525c        	ld	21084,a
 647                     ; 180     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 647                     ; 181                             (uint8_t)TIM1_OCMode);
 649  00e9 c65258        	ld	a,21080
 650  00ec a48f          	and	a,#143
 651  00ee 1a04          	or	a,(OFST+1,sp)
 652  00f0 c75258        	ld	21080,a
 653                     ; 184     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 655  00f3 c6526f        	ld	a,21103
 656  00f6 a4fc          	and	a,#252
 657  00f8 c7526f        	ld	21103,a
 658                     ; 186     TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 658                     ; 187                             (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 660  00fb 7b0e          	ld	a,(OFST+11,sp)
 661  00fd a402          	and	a,#2
 662  00ff 6b03          	ld	(OFST+0,sp),a
 663  0101 7b0d          	ld	a,(OFST+10,sp)
 664  0103 a401          	and	a,#1
 665  0105 1a03          	or	a,(OFST+0,sp)
 666  0107 ca526f        	or	a,21103
 667  010a c7526f        	ld	21103,a
 668                     ; 190     TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 670  010d 7b09          	ld	a,(OFST+6,sp)
 671  010f c75265        	ld	21093,a
 672                     ; 191     TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 674  0112 7b0a          	ld	a,(OFST+7,sp)
 675  0114 c75266        	ld	21094,a
 676                     ; 192 }
 679  0117 5b05          	addw	sp,#5
 680  0119 81            	ret
 784                     ; 213 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 784                     ; 214                   TIM1_OutputState_TypeDef TIM1_OutputState,
 784                     ; 215                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 784                     ; 216                   uint16_t TIM1_Pulse,
 784                     ; 217                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 784                     ; 218                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 784                     ; 219                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 784                     ; 220                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 784                     ; 221 {
 785                     	switch	.text
 786  011a               _TIM1_OC2Init:
 788  011a 89            	pushw	x
 789  011b 5203          	subw	sp,#3
 790       00000003      OFST:	set	3
 793                     ; 223     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 795                     ; 224     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 797                     ; 225     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 799                     ; 226     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 801                     ; 227     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 803                     ; 228     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 805                     ; 229     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 807                     ; 233     TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 807                     ; 234                                 TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 809  011d c6525c        	ld	a,21084
 810  0120 a40f          	and	a,#15
 811  0122 c7525c        	ld	21084,a
 812                     ; 238     TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 812                     ; 239                              (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 812                     ; 240                              (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 812                     ; 241                              (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 814  0125 7b0c          	ld	a,(OFST+9,sp)
 815  0127 a480          	and	a,#128
 816  0129 6b03          	ld	(OFST+0,sp),a
 817  012b 7b0b          	ld	a,(OFST+8,sp)
 818  012d a420          	and	a,#32
 819  012f 1a03          	or	a,(OFST+0,sp)
 820  0131 6b02          	ld	(OFST-1,sp),a
 821  0133 7b08          	ld	a,(OFST+5,sp)
 822  0135 a440          	and	a,#64
 823  0137 6b01          	ld	(OFST-2,sp),a
 824  0139 9f            	ld	a,xl
 825  013a a410          	and	a,#16
 826  013c 1a01          	or	a,(OFST-2,sp)
 827  013e 1a02          	or	a,(OFST-1,sp)
 828  0140 ca525c        	or	a,21084
 829  0143 c7525c        	ld	21084,a
 830                     ; 244     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 830                     ; 245                              (uint8_t)TIM1_OCMode);
 832  0146 c65259        	ld	a,21081
 833  0149 a48f          	and	a,#143
 834  014b 1a04          	or	a,(OFST+1,sp)
 835  014d c75259        	ld	21081,a
 836                     ; 248     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 838  0150 c6526f        	ld	a,21103
 839  0153 a4f3          	and	a,#243
 840  0155 c7526f        	ld	21103,a
 841                     ; 250     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 841                     ; 251                             (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 843  0158 7b0e          	ld	a,(OFST+11,sp)
 844  015a a408          	and	a,#8
 845  015c 6b03          	ld	(OFST+0,sp),a
 846  015e 7b0d          	ld	a,(OFST+10,sp)
 847  0160 a404          	and	a,#4
 848  0162 1a03          	or	a,(OFST+0,sp)
 849  0164 ca526f        	or	a,21103
 850  0167 c7526f        	ld	21103,a
 851                     ; 254     TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 853  016a 7b09          	ld	a,(OFST+6,sp)
 854  016c c75267        	ld	21095,a
 855                     ; 255     TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 857  016f 7b0a          	ld	a,(OFST+7,sp)
 858  0171 c75268        	ld	21096,a
 859                     ; 257 }
 862  0174 5b05          	addw	sp,#5
 863  0176 81            	ret
 967                     ; 278 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 967                     ; 279                   TIM1_OutputState_TypeDef TIM1_OutputState,
 967                     ; 280                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 967                     ; 281                   uint16_t TIM1_Pulse,
 967                     ; 282                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 967                     ; 283                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 967                     ; 284                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 967                     ; 285                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 967                     ; 286 {
 968                     	switch	.text
 969  0177               _TIM1_OC3Init:
 971  0177 89            	pushw	x
 972  0178 5203          	subw	sp,#3
 973       00000003      OFST:	set	3
 976                     ; 288     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 978                     ; 289     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 980                     ; 290     assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 982                     ; 291     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 984                     ; 292     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 986                     ; 293     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 988                     ; 294     assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 990                     ; 298     TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
 990                     ; 299                                 TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
 992  017a c6525d        	ld	a,21085
 993  017d a4f0          	and	a,#240
 994  017f c7525d        	ld	21085,a
 995                     ; 302     TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
 995                     ; 303                              (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
 995                     ; 304                              (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
 995                     ; 305                              (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
 997  0182 7b0c          	ld	a,(OFST+9,sp)
 998  0184 a408          	and	a,#8
 999  0186 6b03          	ld	(OFST+0,sp),a
1000  0188 7b0b          	ld	a,(OFST+8,sp)
1001  018a a402          	and	a,#2
1002  018c 1a03          	or	a,(OFST+0,sp)
1003  018e 6b02          	ld	(OFST-1,sp),a
1004  0190 7b08          	ld	a,(OFST+5,sp)
1005  0192 a404          	and	a,#4
1006  0194 6b01          	ld	(OFST-2,sp),a
1007  0196 9f            	ld	a,xl
1008  0197 a401          	and	a,#1
1009  0199 1a01          	or	a,(OFST-2,sp)
1010  019b 1a02          	or	a,(OFST-1,sp)
1011  019d ca525d        	or	a,21085
1012  01a0 c7525d        	ld	21085,a
1013                     ; 308     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1013                     ; 309                              (uint8_t)TIM1_OCMode);
1015  01a3 c6525a        	ld	a,21082
1016  01a6 a48f          	and	a,#143
1017  01a8 1a04          	or	a,(OFST+1,sp)
1018  01aa c7525a        	ld	21082,a
1019                     ; 312     TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1021  01ad c6526f        	ld	a,21103
1022  01b0 a4cf          	and	a,#207
1023  01b2 c7526f        	ld	21103,a
1024                     ; 314     TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1024                     ; 315                             (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1026  01b5 7b0e          	ld	a,(OFST+11,sp)
1027  01b7 a420          	and	a,#32
1028  01b9 6b03          	ld	(OFST+0,sp),a
1029  01bb 7b0d          	ld	a,(OFST+10,sp)
1030  01bd a410          	and	a,#16
1031  01bf 1a03          	or	a,(OFST+0,sp)
1032  01c1 ca526f        	or	a,21103
1033  01c4 c7526f        	ld	21103,a
1034                     ; 318     TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1036  01c7 7b09          	ld	a,(OFST+6,sp)
1037  01c9 c75269        	ld	21097,a
1038                     ; 319     TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1040  01cc 7b0a          	ld	a,(OFST+7,sp)
1041  01ce c7526a        	ld	21098,a
1042                     ; 321 }
1045  01d1 5b05          	addw	sp,#5
1046  01d3 81            	ret
1120                     ; 336 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1120                     ; 337                   TIM1_OutputState_TypeDef TIM1_OutputState,
1120                     ; 338                   uint16_t TIM1_Pulse,
1120                     ; 339                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1120                     ; 340                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1120                     ; 341 {
1121                     	switch	.text
1122  01d4               _TIM1_OC4Init:
1124  01d4 89            	pushw	x
1125  01d5 88            	push	a
1126       00000001      OFST:	set	1
1129                     ; 343     assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1131                     ; 344     assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1133                     ; 345     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1135                     ; 346     assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1137                     ; 349     TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1139  01d6 c6525d        	ld	a,21085
1140  01d9 a4cf          	and	a,#207
1141  01db c7525d        	ld	21085,a
1142                     ; 351     TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1142                     ; 352                              (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1144  01de 7b08          	ld	a,(OFST+7,sp)
1145  01e0 a420          	and	a,#32
1146  01e2 6b01          	ld	(OFST+0,sp),a
1147  01e4 9f            	ld	a,xl
1148  01e5 a410          	and	a,#16
1149  01e7 1a01          	or	a,(OFST+0,sp)
1150  01e9 ca525d        	or	a,21085
1151  01ec c7525d        	ld	21085,a
1152                     ; 355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1152                     ; 356                             TIM1_OCMode);
1154  01ef c6525b        	ld	a,21083
1155  01f2 a48f          	and	a,#143
1156  01f4 1a02          	or	a,(OFST+1,sp)
1157  01f6 c7525b        	ld	21083,a
1158                     ; 359     if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1160  01f9 0d09          	tnz	(OFST+8,sp)
1161  01fb 270a          	jreq	L534
1162                     ; 361         TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1164  01fd c6526f        	ld	a,21103
1165  0200 aadf          	or	a,#223
1166  0202 c7526f        	ld	21103,a
1168  0205 2004          	jra	L734
1169  0207               L534:
1170                     ; 365         TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1172  0207 721d526f      	bres	21103,#6
1173  020b               L734:
1174                     ; 369     TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1176  020b 7b06          	ld	a,(OFST+5,sp)
1177  020d c7526b        	ld	21099,a
1178                     ; 370     TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1180  0210 7b07          	ld	a,(OFST+6,sp)
1181  0212 c7526c        	ld	21100,a
1182                     ; 372 }
1185  0215 5b03          	addw	sp,#3
1186  0217 81            	ret
1391                     ; 387 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1391                     ; 388                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1391                     ; 389                      uint8_t TIM1_DeadTime,
1391                     ; 390                      TIM1_BreakState_TypeDef TIM1_Break,
1391                     ; 391                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1391                     ; 392                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1391                     ; 393 {
1392                     	switch	.text
1393  0218               _TIM1_BDTRConfig:
1395  0218 89            	pushw	x
1396  0219 88            	push	a
1397       00000001      OFST:	set	1
1400                     ; 395     assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1402                     ; 396     assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1404                     ; 397     assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1406                     ; 398     assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1408                     ; 399     assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1410                     ; 401     TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1412  021a 7b06          	ld	a,(OFST+5,sp)
1413  021c c7526e        	ld	21102,a
1414                     ; 405     TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1414                     ; 406                             (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1414                     ; 407                             (uint8_t)TIM1_AutomaticOutput));
1416  021f 7b07          	ld	a,(OFST+6,sp)
1417  0221 1a08          	or	a,(OFST+7,sp)
1418  0223 1a09          	or	a,(OFST+8,sp)
1419  0225 6b01          	ld	(OFST+0,sp),a
1420  0227 9f            	ld	a,xl
1421  0228 1a02          	or	a,(OFST+1,sp)
1422  022a 1a01          	or	a,(OFST+0,sp)
1423  022c c7526d        	ld	21101,a
1424                     ; 409 }
1427  022f 5b03          	addw	sp,#3
1428  0231 81            	ret
1630                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1630                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1630                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1630                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1630                     ; 427                  uint8_t TIM1_ICFilter)
1630                     ; 428 {
1631                     	switch	.text
1632  0232               _TIM1_ICInit:
1634  0232 89            	pushw	x
1635       00000000      OFST:	set	0
1638                     ; 431     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1640                     ; 432     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1642                     ; 433     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1644                     ; 434     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1646                     ; 435     assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
1648                     ; 437     if (TIM1_Channel == TIM1_CHANNEL_1)
1650  0233 9e            	ld	a,xh
1651  0234 4d            	tnz	a
1652  0235 2614          	jrne	L766
1653                     ; 440         TI1_Config((uint8_t)TIM1_ICPolarity,
1653                     ; 441                    (uint8_t)TIM1_ICSelection,
1653                     ; 442                    (uint8_t)TIM1_ICFilter);
1655  0237 7b07          	ld	a,(OFST+7,sp)
1656  0239 88            	push	a
1657  023a 7b06          	ld	a,(OFST+6,sp)
1658  023c 97            	ld	xl,a
1659  023d 7b03          	ld	a,(OFST+3,sp)
1660  023f 95            	ld	xh,a
1661  0240 cd080f        	call	L3_TI1_Config
1663  0243 84            	pop	a
1664                     ; 444         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1666  0244 7b06          	ld	a,(OFST+6,sp)
1667  0246 cd06b7        	call	_TIM1_SetIC1Prescaler
1670  0249 2046          	jra	L176
1671  024b               L766:
1672                     ; 446     else if (TIM1_Channel == TIM1_CHANNEL_2)
1674  024b 7b01          	ld	a,(OFST+1,sp)
1675  024d a101          	cp	a,#1
1676  024f 2614          	jrne	L376
1677                     ; 449         TI2_Config((uint8_t)TIM1_ICPolarity,
1677                     ; 450                    (uint8_t)TIM1_ICSelection,
1677                     ; 451                    (uint8_t)TIM1_ICFilter);
1679  0251 7b07          	ld	a,(OFST+7,sp)
1680  0253 88            	push	a
1681  0254 7b06          	ld	a,(OFST+6,sp)
1682  0256 97            	ld	xl,a
1683  0257 7b03          	ld	a,(OFST+3,sp)
1684  0259 95            	ld	xh,a
1685  025a cd083f        	call	L5_TI2_Config
1687  025d 84            	pop	a
1688                     ; 453         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1690  025e 7b06          	ld	a,(OFST+6,sp)
1691  0260 cd06c4        	call	_TIM1_SetIC2Prescaler
1694  0263 202c          	jra	L176
1695  0265               L376:
1696                     ; 455     else if (TIM1_Channel == TIM1_CHANNEL_3)
1698  0265 7b01          	ld	a,(OFST+1,sp)
1699  0267 a102          	cp	a,#2
1700  0269 2614          	jrne	L776
1701                     ; 458         TI3_Config((uint8_t)TIM1_ICPolarity,
1701                     ; 459                    (uint8_t)TIM1_ICSelection,
1701                     ; 460                    (uint8_t)TIM1_ICFilter);
1703  026b 7b07          	ld	a,(OFST+7,sp)
1704  026d 88            	push	a
1705  026e 7b06          	ld	a,(OFST+6,sp)
1706  0270 97            	ld	xl,a
1707  0271 7b03          	ld	a,(OFST+3,sp)
1708  0273 95            	ld	xh,a
1709  0274 cd086f        	call	L7_TI3_Config
1711  0277 84            	pop	a
1712                     ; 462         TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
1714  0278 7b06          	ld	a,(OFST+6,sp)
1715  027a cd06d1        	call	_TIM1_SetIC3Prescaler
1718  027d 2012          	jra	L176
1719  027f               L776:
1720                     ; 467         TI4_Config((uint8_t)TIM1_ICPolarity,
1720                     ; 468                    (uint8_t)TIM1_ICSelection,
1720                     ; 469                    (uint8_t)TIM1_ICFilter);
1722  027f 7b07          	ld	a,(OFST+7,sp)
1723  0281 88            	push	a
1724  0282 7b06          	ld	a,(OFST+6,sp)
1725  0284 97            	ld	xl,a
1726  0285 7b03          	ld	a,(OFST+3,sp)
1727  0287 95            	ld	xh,a
1728  0288 cd089f        	call	L11_TI4_Config
1730  028b 84            	pop	a
1731                     ; 471         TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
1733  028c 7b06          	ld	a,(OFST+6,sp)
1734  028e cd06de        	call	_TIM1_SetIC4Prescaler
1736  0291               L176:
1737                     ; 474 }
1740  0291 85            	popw	x
1741  0292 81            	ret
1837                     ; 490 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
1837                     ; 491                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1837                     ; 492                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
1837                     ; 493                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1837                     ; 494                      uint8_t TIM1_ICFilter)
1837                     ; 495 {
1838                     	switch	.text
1839  0293               _TIM1_PWMIConfig:
1841  0293 89            	pushw	x
1842  0294 89            	pushw	x
1843       00000002      OFST:	set	2
1846                     ; 496     uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
1848                     ; 497     uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
1850                     ; 500     assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
1852                     ; 501     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1854                     ; 502     assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1856                     ; 503     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
1858                     ; 506     if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
1860  0295 9f            	ld	a,xl
1861  0296 a101          	cp	a,#1
1862  0298 2706          	jreq	L157
1863                     ; 508         icpolarity = TIM1_ICPOLARITY_FALLING;
1865  029a a601          	ld	a,#1
1866  029c 6b01          	ld	(OFST-1,sp),a
1868  029e 2002          	jra	L357
1869  02a0               L157:
1870                     ; 512         icpolarity = TIM1_ICPOLARITY_RISING;
1872  02a0 0f01          	clr	(OFST-1,sp)
1873  02a2               L357:
1874                     ; 516     if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
1876  02a2 7b07          	ld	a,(OFST+5,sp)
1877  02a4 a101          	cp	a,#1
1878  02a6 2606          	jrne	L557
1879                     ; 518         icselection = TIM1_ICSELECTION_INDIRECTTI;
1881  02a8 a602          	ld	a,#2
1882  02aa 6b02          	ld	(OFST+0,sp),a
1884  02ac 2004          	jra	L757
1885  02ae               L557:
1886                     ; 522         icselection = TIM1_ICSELECTION_DIRECTTI;
1888  02ae a601          	ld	a,#1
1889  02b0 6b02          	ld	(OFST+0,sp),a
1890  02b2               L757:
1891                     ; 525     if (TIM1_Channel == TIM1_CHANNEL_1)
1893  02b2 0d03          	tnz	(OFST+1,sp)
1894  02b4 2626          	jrne	L167
1895                     ; 528         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1895                     ; 529                    (uint8_t)TIM1_ICFilter);
1897  02b6 7b09          	ld	a,(OFST+7,sp)
1898  02b8 88            	push	a
1899  02b9 7b08          	ld	a,(OFST+6,sp)
1900  02bb 97            	ld	xl,a
1901  02bc 7b05          	ld	a,(OFST+3,sp)
1902  02be 95            	ld	xh,a
1903  02bf cd080f        	call	L3_TI1_Config
1905  02c2 84            	pop	a
1906                     ; 532         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1908  02c3 7b08          	ld	a,(OFST+6,sp)
1909  02c5 cd06b7        	call	_TIM1_SetIC1Prescaler
1911                     ; 535         TI2_Config(icpolarity, icselection, TIM1_ICFilter);
1913  02c8 7b09          	ld	a,(OFST+7,sp)
1914  02ca 88            	push	a
1915  02cb 7b03          	ld	a,(OFST+1,sp)
1916  02cd 97            	ld	xl,a
1917  02ce 7b02          	ld	a,(OFST+0,sp)
1918  02d0 95            	ld	xh,a
1919  02d1 cd083f        	call	L5_TI2_Config
1921  02d4 84            	pop	a
1922                     ; 538         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1924  02d5 7b08          	ld	a,(OFST+6,sp)
1925  02d7 cd06c4        	call	_TIM1_SetIC2Prescaler
1928  02da 2024          	jra	L367
1929  02dc               L167:
1930                     ; 543         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
1930                     ; 544                    (uint8_t)TIM1_ICFilter);
1932  02dc 7b09          	ld	a,(OFST+7,sp)
1933  02de 88            	push	a
1934  02df 7b08          	ld	a,(OFST+6,sp)
1935  02e1 97            	ld	xl,a
1936  02e2 7b05          	ld	a,(OFST+3,sp)
1937  02e4 95            	ld	xh,a
1938  02e5 cd083f        	call	L5_TI2_Config
1940  02e8 84            	pop	a
1941                     ; 547         TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
1943  02e9 7b08          	ld	a,(OFST+6,sp)
1944  02eb cd06c4        	call	_TIM1_SetIC2Prescaler
1946                     ; 550         TI1_Config(icpolarity, icselection, TIM1_ICFilter);
1948  02ee 7b09          	ld	a,(OFST+7,sp)
1949  02f0 88            	push	a
1950  02f1 7b03          	ld	a,(OFST+1,sp)
1951  02f3 97            	ld	xl,a
1952  02f4 7b02          	ld	a,(OFST+0,sp)
1953  02f6 95            	ld	xh,a
1954  02f7 cd080f        	call	L3_TI1_Config
1956  02fa 84            	pop	a
1957                     ; 553         TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
1959  02fb 7b08          	ld	a,(OFST+6,sp)
1960  02fd cd06b7        	call	_TIM1_SetIC1Prescaler
1962  0300               L367:
1963                     ; 555 }
1966  0300 5b04          	addw	sp,#4
1967  0302 81            	ret
2022                     ; 563 void TIM1_Cmd(FunctionalState NewState)
2022                     ; 564 {
2023                     	switch	.text
2024  0303               _TIM1_Cmd:
2028                     ; 566     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2030                     ; 569     if (NewState != DISABLE)
2032  0303 4d            	tnz	a
2033  0304 2706          	jreq	L3101
2034                     ; 571         TIM1->CR1 |= TIM1_CR1_CEN;
2036  0306 72105250      	bset	21072,#0
2038  030a 2004          	jra	L5101
2039  030c               L3101:
2040                     ; 575         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2042  030c 72115250      	bres	21072,#0
2043  0310               L5101:
2044                     ; 577 }
2047  0310 81            	ret
2083                     ; 585 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2083                     ; 586 {
2084                     	switch	.text
2085  0311               _TIM1_CtrlPWMOutputs:
2089                     ; 588     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2091                     ; 592     if (NewState != DISABLE)
2093  0311 4d            	tnz	a
2094  0312 2706          	jreq	L5301
2095                     ; 594         TIM1->BKR |= TIM1_BKR_MOE;
2097  0314 721e526d      	bset	21101,#7
2099  0318 2004          	jra	L7301
2100  031a               L5301:
2101                     ; 598         TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2103  031a 721f526d      	bres	21101,#7
2104  031e               L7301:
2105                     ; 600 }
2108  031e 81            	ret
2215                     ; 619 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2215                     ; 620 {
2216                     	switch	.text
2217  031f               _TIM1_ITConfig:
2219  031f 89            	pushw	x
2220       00000000      OFST:	set	0
2223                     ; 622     assert_param(IS_TIM1_IT_OK(TIM1_IT));
2225                     ; 623     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2227                     ; 625     if (NewState != DISABLE)
2229  0320 9f            	ld	a,xl
2230  0321 4d            	tnz	a
2231  0322 2709          	jreq	L7011
2232                     ; 628         TIM1->IER |= (uint8_t)TIM1_IT;
2234  0324 9e            	ld	a,xh
2235  0325 ca5254        	or	a,21076
2236  0328 c75254        	ld	21076,a
2238  032b 2009          	jra	L1111
2239  032d               L7011:
2240                     ; 633         TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2242  032d 7b01          	ld	a,(OFST+1,sp)
2243  032f 43            	cpl	a
2244  0330 c45254        	and	a,21076
2245  0333 c75254        	ld	21076,a
2246  0336               L1111:
2247                     ; 635 }
2250  0336 85            	popw	x
2251  0337 81            	ret
2275                     ; 642 void TIM1_InternalClockConfig(void)
2275                     ; 643 {
2276                     	switch	.text
2277  0338               _TIM1_InternalClockConfig:
2281                     ; 645     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2283  0338 c65252        	ld	a,21074
2284  033b a4f8          	and	a,#248
2285  033d c75252        	ld	21074,a
2286                     ; 646 }
2289  0340 81            	ret
2406                     ; 664 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2406                     ; 665                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2406                     ; 666                               uint8_t ExtTRGFilter)
2406                     ; 667 {
2407                     	switch	.text
2408  0341               _TIM1_ETRClockMode1Config:
2410  0341 89            	pushw	x
2411       00000000      OFST:	set	0
2414                     ; 669     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2416                     ; 670     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2418                     ; 673     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2420  0342 7b05          	ld	a,(OFST+5,sp)
2421  0344 88            	push	a
2422  0345 9f            	ld	a,xl
2423  0346 97            	ld	xl,a
2424  0347 7b02          	ld	a,(OFST+2,sp)
2425  0349 95            	ld	xh,a
2426  034a ad1f          	call	_TIM1_ETRConfig
2428  034c 84            	pop	a
2429                     ; 676     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2429                     ; 677                            | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2431  034d c65252        	ld	a,21074
2432  0350 a488          	and	a,#136
2433  0352 aa77          	or	a,#119
2434  0354 c75252        	ld	21074,a
2435                     ; 678 }
2438  0357 85            	popw	x
2439  0358 81            	ret
2497                     ; 696 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2497                     ; 697                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2497                     ; 698                               uint8_t ExtTRGFilter)
2497                     ; 699 {
2498                     	switch	.text
2499  0359               _TIM1_ETRClockMode2Config:
2501  0359 89            	pushw	x
2502       00000000      OFST:	set	0
2505                     ; 701     assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2507                     ; 702     assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2509                     ; 705     TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2511  035a 7b05          	ld	a,(OFST+5,sp)
2512  035c 88            	push	a
2513  035d 9f            	ld	a,xl
2514  035e 97            	ld	xl,a
2515  035f 7b02          	ld	a,(OFST+2,sp)
2516  0361 95            	ld	xh,a
2517  0362 ad07          	call	_TIM1_ETRConfig
2519  0364 84            	pop	a
2520                     ; 708     TIM1->ETR |= TIM1_ETR_ECE;
2522  0365 721c5253      	bset	21075,#6
2523                     ; 709 }
2526  0369 85            	popw	x
2527  036a 81            	ret
2583                     ; 727 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2583                     ; 728                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2583                     ; 729                     uint8_t ExtTRGFilter)
2583                     ; 730 {
2584                     	switch	.text
2585  036b               _TIM1_ETRConfig:
2587  036b 89            	pushw	x
2588       00000000      OFST:	set	0
2591                     ; 732     assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
2593                     ; 734     TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
2593                     ; 735                       (uint8_t)ExtTRGFilter );
2595  036c 9f            	ld	a,xl
2596  036d 1a01          	or	a,(OFST+1,sp)
2597  036f 1a05          	or	a,(OFST+5,sp)
2598  0371 ca5253        	or	a,21075
2599  0374 c75253        	ld	21075,a
2600                     ; 736 }
2603  0377 85            	popw	x
2604  0378 81            	ret
2693                     ; 753 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
2693                     ; 754                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2693                     ; 755                                  uint8_t ICFilter)
2693                     ; 756 {
2694                     	switch	.text
2695  0379               _TIM1_TIxExternalClockConfig:
2697  0379 89            	pushw	x
2698       00000000      OFST:	set	0
2701                     ; 758     assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
2703                     ; 759     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2705                     ; 760     assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
2707                     ; 763     if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
2709  037a 9e            	ld	a,xh
2710  037b a160          	cp	a,#96
2711  037d 260f          	jrne	L1131
2712                     ; 765         TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2714  037f 7b05          	ld	a,(OFST+5,sp)
2715  0381 88            	push	a
2716  0382 ae0001        	ldw	x,#1
2717  0385 7b03          	ld	a,(OFST+3,sp)
2718  0387 95            	ld	xh,a
2719  0388 cd083f        	call	L5_TI2_Config
2721  038b 84            	pop	a
2723  038c 200d          	jra	L3131
2724  038e               L1131:
2725                     ; 769         TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
2727  038e 7b05          	ld	a,(OFST+5,sp)
2728  0390 88            	push	a
2729  0391 ae0001        	ldw	x,#1
2730  0394 7b03          	ld	a,(OFST+3,sp)
2731  0396 95            	ld	xh,a
2732  0397 cd080f        	call	L3_TI1_Config
2734  039a 84            	pop	a
2735  039b               L3131:
2736                     ; 773     TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
2738  039b 7b01          	ld	a,(OFST+1,sp)
2739  039d ad0a          	call	_TIM1_SelectInputTrigger
2741                     ; 776     TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
2743  039f c65252        	ld	a,21074
2744  03a2 aa07          	or	a,#7
2745  03a4 c75252        	ld	21074,a
2746                     ; 777 }
2749  03a7 85            	popw	x
2750  03a8 81            	ret
2835                     ; 789 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
2835                     ; 790 {
2836                     	switch	.text
2837  03a9               _TIM1_SelectInputTrigger:
2839  03a9 88            	push	a
2840       00000000      OFST:	set	0
2843                     ; 792     assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
2845                     ; 795     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
2847  03aa c65252        	ld	a,21074
2848  03ad a48f          	and	a,#143
2849  03af 1a01          	or	a,(OFST+1,sp)
2850  03b1 c75252        	ld	21074,a
2851                     ; 796 }
2854  03b4 84            	pop	a
2855  03b5 81            	ret
2891                     ; 806 void TIM1_UpdateDisableConfig(FunctionalState NewState)
2891                     ; 807 {
2892                     	switch	.text
2893  03b6               _TIM1_UpdateDisableConfig:
2897                     ; 809     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2899                     ; 812     if (NewState != DISABLE)
2901  03b6 4d            	tnz	a
2902  03b7 2706          	jreq	L1731
2903                     ; 814         TIM1->CR1 |= TIM1_CR1_UDIS;
2905  03b9 72125250      	bset	21072,#1
2907  03bd 2004          	jra	L3731
2908  03bf               L1731:
2909                     ; 818         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
2911  03bf 72135250      	bres	21072,#1
2912  03c3               L3731:
2913                     ; 820 }
2916  03c3 81            	ret
2974                     ; 830 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
2974                     ; 831 {
2975                     	switch	.text
2976  03c4               _TIM1_UpdateRequestConfig:
2980                     ; 833     assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
2982                     ; 836     if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
2984  03c4 4d            	tnz	a
2985  03c5 2706          	jreq	L3241
2986                     ; 838         TIM1->CR1 |= TIM1_CR1_URS;
2988  03c7 72145250      	bset	21072,#2
2990  03cb 2004          	jra	L5241
2991  03cd               L3241:
2992                     ; 842         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
2994  03cd 72155250      	bres	21072,#2
2995  03d1               L5241:
2996                     ; 844 }
2999  03d1 81            	ret
3035                     ; 853 void TIM1_SelectHallSensor(FunctionalState NewState)
3035                     ; 854 {
3036                     	switch	.text
3037  03d2               _TIM1_SelectHallSensor:
3041                     ; 856     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3043                     ; 859     if (NewState != DISABLE)
3045  03d2 4d            	tnz	a
3046  03d3 2706          	jreq	L5441
3047                     ; 861         TIM1->CR2 |= TIM1_CR2_TI1S;
3049  03d5 721e5251      	bset	21073,#7
3051  03d9 2004          	jra	L7441
3052  03db               L5441:
3053                     ; 865         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3055  03db 721f5251      	bres	21073,#7
3056  03df               L7441:
3057                     ; 867 }
3060  03df 81            	ret
3117                     ; 878 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3117                     ; 879 {
3118                     	switch	.text
3119  03e0               _TIM1_SelectOnePulseMode:
3123                     ; 881     assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3125                     ; 884     if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3127  03e0 4d            	tnz	a
3128  03e1 2706          	jreq	L7741
3129                     ; 886         TIM1->CR1 |= TIM1_CR1_OPM;
3131  03e3 72165250      	bset	21072,#3
3133  03e7 2004          	jra	L1051
3134  03e9               L7741:
3135                     ; 890         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3137  03e9 72175250      	bres	21072,#3
3138  03ed               L1051:
3139                     ; 893 }
3142  03ed 81            	ret
3240                     ; 909 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3240                     ; 910 {
3241                     	switch	.text
3242  03ee               _TIM1_SelectOutputTrigger:
3244  03ee 88            	push	a
3245       00000000      OFST:	set	0
3248                     ; 912     assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3250                     ; 915     TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3250                     ; 916                           (uint8_t) TIM1_TRGOSource);
3252  03ef c65251        	ld	a,21073
3253  03f2 a48f          	and	a,#143
3254  03f4 1a01          	or	a,(OFST+1,sp)
3255  03f6 c75251        	ld	21073,a
3256                     ; 917 }
3259  03f9 84            	pop	a
3260  03fa 81            	ret
3334                     ; 929 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
3334                     ; 930 {
3335                     	switch	.text
3336  03fb               _TIM1_SelectSlaveMode:
3338  03fb 88            	push	a
3339       00000000      OFST:	set	0
3342                     ; 933     assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
3344                     ; 936     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
3344                     ; 937                            (uint8_t)TIM1_SlaveMode);
3346  03fc c65252        	ld	a,21074
3347  03ff a4f8          	and	a,#248
3348  0401 1a01          	or	a,(OFST+1,sp)
3349  0403 c75252        	ld	21074,a
3350                     ; 939 }
3353  0406 84            	pop	a
3354  0407 81            	ret
3390                     ; 947 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
3390                     ; 948 {
3391                     	switch	.text
3392  0408               _TIM1_SelectMasterSlaveMode:
3396                     ; 950     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3398                     ; 953     if (NewState != DISABLE)
3400  0408 4d            	tnz	a
3401  0409 2706          	jreq	L3161
3402                     ; 955         TIM1->SMCR |= TIM1_SMCR_MSM;
3404  040b 721e5252      	bset	21074,#7
3406  040f 2004          	jra	L5161
3407  0411               L3161:
3408                     ; 959         TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
3410  0411 721f5252      	bres	21074,#7
3411  0415               L5161:
3412                     ; 961 }
3415  0415 81            	ret
3501                     ; 983 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
3501                     ; 984                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
3501                     ; 985                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
3501                     ; 986 {
3502                     	switch	.text
3503  0416               _TIM1_EncoderInterfaceConfig:
3505  0416 89            	pushw	x
3506       00000000      OFST:	set	0
3509                     ; 990     assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
3511                     ; 991     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
3513                     ; 992     assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
3515                     ; 995     if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
3517  0417 9f            	ld	a,xl
3518  0418 4d            	tnz	a
3519  0419 2706          	jreq	L7561
3520                     ; 997         TIM1->CCER1 |= TIM1_CCER1_CC1P;
3522  041b 7212525c      	bset	21084,#1
3524  041f 2004          	jra	L1661
3525  0421               L7561:
3526                     ; 1001         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
3528  0421 7213525c      	bres	21084,#1
3529  0425               L1661:
3530                     ; 1004     if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
3532  0425 0d05          	tnz	(OFST+5,sp)
3533  0427 2706          	jreq	L3661
3534                     ; 1006         TIM1->CCER1 |= TIM1_CCER1_CC2P;
3536  0429 721a525c      	bset	21084,#5
3538  042d 2004          	jra	L5661
3539  042f               L3661:
3540                     ; 1010         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
3542  042f 721b525c      	bres	21084,#5
3543  0433               L5661:
3544                     ; 1013     TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
3544                     ; 1014                            | (uint8_t) TIM1_EncoderMode);
3546  0433 c65252        	ld	a,21074
3547  0436 a4f0          	and	a,#240
3548  0438 1a01          	or	a,(OFST+1,sp)
3549  043a c75252        	ld	21074,a
3550                     ; 1017     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
3550                     ; 1018                             | (uint8_t) CCMR_TIxDirect_Set);
3552  043d c65258        	ld	a,21080
3553  0440 a4fc          	and	a,#252
3554  0442 aa01          	or	a,#1
3555  0444 c75258        	ld	21080,a
3556                     ; 1019     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
3556                     ; 1020                             | (uint8_t) CCMR_TIxDirect_Set);
3558  0447 c65259        	ld	a,21081
3559  044a a4fc          	and	a,#252
3560  044c aa01          	or	a,#1
3561  044e c75259        	ld	21081,a
3562                     ; 1022 }
3565  0451 85            	popw	x
3566  0452 81            	ret
3633                     ; 1035 void TIM1_PrescalerConfig(uint16_t Prescaler,
3633                     ; 1036                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
3633                     ; 1037 {
3634                     	switch	.text
3635  0453               _TIM1_PrescalerConfig:
3637  0453 89            	pushw	x
3638       00000000      OFST:	set	0
3641                     ; 1039     assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
3643                     ; 1042     TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
3645  0454 9e            	ld	a,xh
3646  0455 c75260        	ld	21088,a
3647                     ; 1043     TIM1->PSCRL = (uint8_t)(Prescaler);
3649  0458 9f            	ld	a,xl
3650  0459 c75261        	ld	21089,a
3651                     ; 1046     TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
3653  045c 7b05          	ld	a,(OFST+5,sp)
3654  045e c75257        	ld	21079,a
3655                     ; 1048 }
3658  0461 85            	popw	x
3659  0462 81            	ret
3695                     ; 1061 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
3695                     ; 1062 {
3696                     	switch	.text
3697  0463               _TIM1_CounterModeConfig:
3699  0463 88            	push	a
3700       00000000      OFST:	set	0
3703                     ; 1064     assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
3705                     ; 1068     TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
3705                     ; 1069                           | (uint8_t)TIM1_CounterMode);
3707  0464 c65250        	ld	a,21072
3708  0467 a48f          	and	a,#143
3709  0469 1a01          	or	a,(OFST+1,sp)
3710  046b c75250        	ld	21072,a
3711                     ; 1070 }
3714  046e 84            	pop	a
3715  046f 81            	ret
3773                     ; 1081 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3773                     ; 1082 {
3774                     	switch	.text
3775  0470               _TIM1_ForcedOC1Config:
3777  0470 88            	push	a
3778       00000000      OFST:	set	0
3781                     ; 1084     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3783                     ; 1087     TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
3783                     ; 1088                              (uint8_t)TIM1_ForcedAction);
3785  0471 c65258        	ld	a,21080
3786  0474 a48f          	and	a,#143
3787  0476 1a01          	or	a,(OFST+1,sp)
3788  0478 c75258        	ld	21080,a
3789                     ; 1089 }
3792  047b 84            	pop	a
3793  047c 81            	ret
3829                     ; 1100 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3829                     ; 1101 {
3830                     	switch	.text
3831  047d               _TIM1_ForcedOC2Config:
3833  047d 88            	push	a
3834       00000000      OFST:	set	0
3837                     ; 1103     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3839                     ; 1106     TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
3839                     ; 1107                               | (uint8_t)TIM1_ForcedAction);
3841  047e c65259        	ld	a,21081
3842  0481 a48f          	and	a,#143
3843  0483 1a01          	or	a,(OFST+1,sp)
3844  0485 c75259        	ld	21081,a
3845                     ; 1108 }
3848  0488 84            	pop	a
3849  0489 81            	ret
3885                     ; 1120 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3885                     ; 1121 {
3886                     	switch	.text
3887  048a               _TIM1_ForcedOC3Config:
3889  048a 88            	push	a
3890       00000000      OFST:	set	0
3893                     ; 1123     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3895                     ; 1126     TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
3895                     ; 1127                               | (uint8_t)TIM1_ForcedAction);
3897  048b c6525a        	ld	a,21082
3898  048e a48f          	and	a,#143
3899  0490 1a01          	or	a,(OFST+1,sp)
3900  0492 c7525a        	ld	21082,a
3901                     ; 1128 }
3904  0495 84            	pop	a
3905  0496 81            	ret
3941                     ; 1140 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
3941                     ; 1141 {
3942                     	switch	.text
3943  0497               _TIM1_ForcedOC4Config:
3945  0497 88            	push	a
3946       00000000      OFST:	set	0
3949                     ; 1143     assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
3951                     ; 1146     TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
3951                     ; 1147                               | (uint8_t)TIM1_ForcedAction);
3953  0498 c6525b        	ld	a,21083
3954  049b a48f          	and	a,#143
3955  049d 1a01          	or	a,(OFST+1,sp)
3956  049f c7525b        	ld	21083,a
3957                     ; 1148 }
3960  04a2 84            	pop	a
3961  04a3 81            	ret
3997                     ; 1157 void TIM1_ARRPreloadConfig(FunctionalState NewState)
3997                     ; 1158 {
3998                     	switch	.text
3999  04a4               _TIM1_ARRPreloadConfig:
4003                     ; 1160     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4005                     ; 1163     if (NewState != DISABLE)
4007  04a4 4d            	tnz	a
4008  04a5 2706          	jreq	L5502
4009                     ; 1165         TIM1->CR1 |= TIM1_CR1_ARPE;
4011  04a7 721e5250      	bset	21072,#7
4013  04ab 2004          	jra	L7502
4014  04ad               L5502:
4015                     ; 1169         TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4017  04ad 721f5250      	bres	21072,#7
4018  04b1               L7502:
4019                     ; 1171 }
4022  04b1 81            	ret
4057                     ; 1180 void TIM1_SelectCOM(FunctionalState NewState)
4057                     ; 1181 {
4058                     	switch	.text
4059  04b2               _TIM1_SelectCOM:
4063                     ; 1183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4065                     ; 1186     if (NewState != DISABLE)
4067  04b2 4d            	tnz	a
4068  04b3 2706          	jreq	L7702
4069                     ; 1188         TIM1->CR2 |= TIM1_CR2_COMS;
4071  04b5 72145251      	bset	21073,#2
4073  04b9 2004          	jra	L1012
4074  04bb               L7702:
4075                     ; 1192         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4077  04bb 72155251      	bres	21073,#2
4078  04bf               L1012:
4079                     ; 1194 }
4082  04bf 81            	ret
4118                     ; 1202 void TIM1_CCPreloadControl(FunctionalState NewState)
4118                     ; 1203 {
4119                     	switch	.text
4120  04c0               _TIM1_CCPreloadControl:
4124                     ; 1205     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4126                     ; 1208     if (NewState != DISABLE)
4128  04c0 4d            	tnz	a
4129  04c1 2706          	jreq	L1212
4130                     ; 1210         TIM1->CR2 |= TIM1_CR2_CCPC;
4132  04c3 72105251      	bset	21073,#0
4134  04c7 2004          	jra	L3212
4135  04c9               L1212:
4136                     ; 1214         TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
4138  04c9 72115251      	bres	21073,#0
4139  04cd               L3212:
4140                     ; 1216 }
4143  04cd 81            	ret
4179                     ; 1225 void TIM1_OC1PreloadConfig(FunctionalState NewState)
4179                     ; 1226 {
4180                     	switch	.text
4181  04ce               _TIM1_OC1PreloadConfig:
4185                     ; 1228     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4187                     ; 1231     if (NewState != DISABLE)
4189  04ce 4d            	tnz	a
4190  04cf 2706          	jreq	L3412
4191                     ; 1233         TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
4193  04d1 72165258      	bset	21080,#3
4195  04d5 2004          	jra	L5412
4196  04d7               L3412:
4197                     ; 1237         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4199  04d7 72175258      	bres	21080,#3
4200  04db               L5412:
4201                     ; 1239 }
4204  04db 81            	ret
4240                     ; 1248 void TIM1_OC2PreloadConfig(FunctionalState NewState)
4240                     ; 1249 {
4241                     	switch	.text
4242  04dc               _TIM1_OC2PreloadConfig:
4246                     ; 1251     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4248                     ; 1254     if (NewState != DISABLE)
4250  04dc 4d            	tnz	a
4251  04dd 2706          	jreq	L5612
4252                     ; 1256         TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
4254  04df 72165259      	bset	21081,#3
4256  04e3 2004          	jra	L7612
4257  04e5               L5612:
4258                     ; 1260         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4260  04e5 72175259      	bres	21081,#3
4261  04e9               L7612:
4262                     ; 1262 }
4265  04e9 81            	ret
4301                     ; 1271 void TIM1_OC3PreloadConfig(FunctionalState NewState)
4301                     ; 1272 {
4302                     	switch	.text
4303  04ea               _TIM1_OC3PreloadConfig:
4307                     ; 1274     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4309                     ; 1277     if (NewState != DISABLE)
4311  04ea 4d            	tnz	a
4312  04eb 2706          	jreq	L7022
4313                     ; 1279         TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
4315  04ed 7216525a      	bset	21082,#3
4317  04f1 2004          	jra	L1122
4318  04f3               L7022:
4319                     ; 1283         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4321  04f3 7217525a      	bres	21082,#3
4322  04f7               L1122:
4323                     ; 1285 }
4326  04f7 81            	ret
4362                     ; 1295 void TIM1_OC4PreloadConfig(FunctionalState NewState)
4362                     ; 1296 {
4363                     	switch	.text
4364  04f8               _TIM1_OC4PreloadConfig:
4368                     ; 1298     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4370                     ; 1301     if (NewState != DISABLE)
4372  04f8 4d            	tnz	a
4373  04f9 2706          	jreq	L1322
4374                     ; 1303         TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
4376  04fb 7216525b      	bset	21083,#3
4378  04ff 2004          	jra	L3322
4379  0501               L1322:
4380                     ; 1307         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
4382  0501 7217525b      	bres	21083,#3
4383  0505               L3322:
4384                     ; 1309 }
4387  0505 81            	ret
4422                     ; 1317 void TIM1_OC1FastConfig(FunctionalState NewState)
4422                     ; 1318 {
4423                     	switch	.text
4424  0506               _TIM1_OC1FastConfig:
4428                     ; 1320     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4430                     ; 1323     if (NewState != DISABLE)
4432  0506 4d            	tnz	a
4433  0507 2706          	jreq	L3522
4434                     ; 1325         TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
4436  0509 72145258      	bset	21080,#2
4438  050d 2004          	jra	L5522
4439  050f               L3522:
4440                     ; 1329         TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4442  050f 72155258      	bres	21080,#2
4443  0513               L5522:
4444                     ; 1331 }
4447  0513 81            	ret
4482                     ; 1341 void TIM1_OC2FastConfig(FunctionalState NewState)
4482                     ; 1342 {
4483                     	switch	.text
4484  0514               _TIM1_OC2FastConfig:
4488                     ; 1344     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4490                     ; 1347     if (NewState != DISABLE)
4492  0514 4d            	tnz	a
4493  0515 2706          	jreq	L5722
4494                     ; 1349         TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
4496  0517 72145259      	bset	21081,#2
4498  051b 2004          	jra	L7722
4499  051d               L5722:
4500                     ; 1353         TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4502  051d 72155259      	bres	21081,#2
4503  0521               L7722:
4504                     ; 1355 }
4507  0521 81            	ret
4542                     ; 1364 void TIM1_OC3FastConfig(FunctionalState NewState)
4542                     ; 1365 {
4543                     	switch	.text
4544  0522               _TIM1_OC3FastConfig:
4548                     ; 1367     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4550                     ; 1370     if (NewState != DISABLE)
4552  0522 4d            	tnz	a
4553  0523 2706          	jreq	L7132
4554                     ; 1372         TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
4556  0525 7214525a      	bset	21082,#2
4558  0529 2004          	jra	L1232
4559  052b               L7132:
4560                     ; 1376         TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4562  052b 7215525a      	bres	21082,#2
4563  052f               L1232:
4564                     ; 1378 }
4567  052f 81            	ret
4602                     ; 1387 void TIM1_OC4FastConfig(FunctionalState NewState)
4602                     ; 1388 {
4603                     	switch	.text
4604  0530               _TIM1_OC4FastConfig:
4608                     ; 1390     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4610                     ; 1393     if (NewState != DISABLE)
4612  0530 4d            	tnz	a
4613  0531 2706          	jreq	L1432
4614                     ; 1395         TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
4616  0533 7214525b      	bset	21083,#2
4618  0537 2004          	jra	L3432
4619  0539               L1432:
4620                     ; 1399         TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
4622  0539 7215525b      	bres	21083,#2
4623  053d               L3432:
4624                     ; 1401 }
4627  053d 81            	ret
4732                     ; 1418 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
4732                     ; 1419 {
4733                     	switch	.text
4734  053e               _TIM1_GenerateEvent:
4738                     ; 1421     assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
4740                     ; 1424     TIM1->EGR = (uint8_t)TIM1_EventSource;
4742  053e c75257        	ld	21079,a
4743                     ; 1425 }
4746  0541 81            	ret
4782                     ; 1436 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4782                     ; 1437 {
4783                     	switch	.text
4784  0542               _TIM1_OC1PolarityConfig:
4788                     ; 1439     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4790                     ; 1442     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4792  0542 4d            	tnz	a
4793  0543 2706          	jreq	L5242
4794                     ; 1444         TIM1->CCER1 |= TIM1_CCER1_CC1P;
4796  0545 7212525c      	bset	21084,#1
4798  0549 2004          	jra	L7242
4799  054b               L5242:
4800                     ; 1448         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4802  054b 7213525c      	bres	21084,#1
4803  054f               L7242:
4804                     ; 1450 }
4807  054f 81            	ret
4843                     ; 1461 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4843                     ; 1462 {
4844                     	switch	.text
4845  0550               _TIM1_OC1NPolarityConfig:
4849                     ; 1464     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4851                     ; 1467     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4853  0550 4d            	tnz	a
4854  0551 2706          	jreq	L7442
4855                     ; 1469         TIM1->CCER1 |= TIM1_CCER1_CC1NP;
4857  0553 7216525c      	bset	21084,#3
4859  0557 2004          	jra	L1542
4860  0559               L7442:
4861                     ; 1473         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
4863  0559 7217525c      	bres	21084,#3
4864  055d               L1542:
4865                     ; 1475 }
4868  055d 81            	ret
4904                     ; 1486 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
4904                     ; 1487 {
4905                     	switch	.text
4906  055e               _TIM1_OC2PolarityConfig:
4910                     ; 1489     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
4912                     ; 1492     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
4914  055e 4d            	tnz	a
4915  055f 2706          	jreq	L1742
4916                     ; 1494         TIM1->CCER1 |= TIM1_CCER1_CC2P;
4918  0561 721a525c      	bset	21084,#5
4920  0565 2004          	jra	L3742
4921  0567               L1742:
4922                     ; 1498         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4924  0567 721b525c      	bres	21084,#5
4925  056b               L3742:
4926                     ; 1500 }
4929  056b 81            	ret
4965                     ; 1510 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
4965                     ; 1511 {
4966                     	switch	.text
4967  056c               _TIM1_OC2NPolarityConfig:
4971                     ; 1513     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
4973                     ; 1516     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
4975  056c 4d            	tnz	a
4976  056d 2706          	jreq	L3152
4977                     ; 1518         TIM1->CCER1 |= TIM1_CCER1_CC2NP;
4979  056f 721e525c      	bset	21084,#7
4981  0573 2004          	jra	L5152
4982  0575               L3152:
4983                     ; 1522         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
4985  0575 721f525c      	bres	21084,#7
4986  0579               L5152:
4987                     ; 1524 }
4990  0579 81            	ret
5026                     ; 1535 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5026                     ; 1536 {
5027                     	switch	.text
5028  057a               _TIM1_OC3PolarityConfig:
5032                     ; 1538     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5034                     ; 1541     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5036  057a 4d            	tnz	a
5037  057b 2706          	jreq	L5352
5038                     ; 1543         TIM1->CCER2 |= TIM1_CCER2_CC3P;
5040  057d 7212525d      	bset	21085,#1
5042  0581 2004          	jra	L7352
5043  0583               L5352:
5044                     ; 1547         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
5046  0583 7213525d      	bres	21085,#1
5047  0587               L7352:
5048                     ; 1549 }
5051  0587 81            	ret
5087                     ; 1560 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5087                     ; 1561 {
5088                     	switch	.text
5089  0588               _TIM1_OC3NPolarityConfig:
5093                     ; 1563     assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5095                     ; 1566     if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5097  0588 4d            	tnz	a
5098  0589 2706          	jreq	L7552
5099                     ; 1568         TIM1->CCER2 |= TIM1_CCER2_CC3NP;
5101  058b 7216525d      	bset	21085,#3
5103  058f 2004          	jra	L1652
5104  0591               L7552:
5105                     ; 1572         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
5107  0591 7217525d      	bres	21085,#3
5108  0595               L1652:
5109                     ; 1574 }
5112  0595 81            	ret
5148                     ; 1584 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5148                     ; 1585 {
5149                     	switch	.text
5150  0596               _TIM1_OC4PolarityConfig:
5154                     ; 1587     assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5156                     ; 1590     if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5158  0596 4d            	tnz	a
5159  0597 2706          	jreq	L1062
5160                     ; 1592         TIM1->CCER2 |= TIM1_CCER2_CC4P;
5162  0599 721a525d      	bset	21085,#5
5164  059d 2004          	jra	L3062
5165  059f               L1062:
5166                     ; 1596         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
5168  059f 721b525d      	bres	21085,#5
5169  05a3               L3062:
5170                     ; 1598 }
5173  05a3 81            	ret
5218                     ; 1613 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5218                     ; 1614 {
5219                     	switch	.text
5220  05a4               _TIM1_CCxCmd:
5222  05a4 89            	pushw	x
5223       00000000      OFST:	set	0
5226                     ; 1616     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5228                     ; 1617     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5230                     ; 1619     if (TIM1_Channel == TIM1_CHANNEL_1)
5232  05a5 9e            	ld	a,xh
5233  05a6 4d            	tnz	a
5234  05a7 2610          	jrne	L7262
5235                     ; 1622         if (NewState != DISABLE)
5237  05a9 9f            	ld	a,xl
5238  05aa 4d            	tnz	a
5239  05ab 2706          	jreq	L1362
5240                     ; 1624             TIM1->CCER1 |= TIM1_CCER1_CC1E;
5242  05ad 7210525c      	bset	21084,#0
5244  05b1 2040          	jra	L5362
5245  05b3               L1362:
5246                     ; 1628             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5248  05b3 7211525c      	bres	21084,#0
5249  05b7 203a          	jra	L5362
5250  05b9               L7262:
5251                     ; 1632     else if (TIM1_Channel == TIM1_CHANNEL_2)
5253  05b9 7b01          	ld	a,(OFST+1,sp)
5254  05bb a101          	cp	a,#1
5255  05bd 2610          	jrne	L7362
5256                     ; 1635         if (NewState != DISABLE)
5258  05bf 0d02          	tnz	(OFST+2,sp)
5259  05c1 2706          	jreq	L1462
5260                     ; 1637             TIM1->CCER1 |= TIM1_CCER1_CC2E;
5262  05c3 7218525c      	bset	21084,#4
5264  05c7 202a          	jra	L5362
5265  05c9               L1462:
5266                     ; 1641             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5268  05c9 7219525c      	bres	21084,#4
5269  05cd 2024          	jra	L5362
5270  05cf               L7362:
5271                     ; 1644     else if (TIM1_Channel == TIM1_CHANNEL_3)
5273  05cf 7b01          	ld	a,(OFST+1,sp)
5274  05d1 a102          	cp	a,#2
5275  05d3 2610          	jrne	L7462
5276                     ; 1647         if (NewState != DISABLE)
5278  05d5 0d02          	tnz	(OFST+2,sp)
5279  05d7 2706          	jreq	L1562
5280                     ; 1649             TIM1->CCER2 |= TIM1_CCER2_CC3E;
5282  05d9 7210525d      	bset	21085,#0
5284  05dd 2014          	jra	L5362
5285  05df               L1562:
5286                     ; 1653             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5288  05df 7211525d      	bres	21085,#0
5289  05e3 200e          	jra	L5362
5290  05e5               L7462:
5291                     ; 1659         if (NewState != DISABLE)
5293  05e5 0d02          	tnz	(OFST+2,sp)
5294  05e7 2706          	jreq	L7562
5295                     ; 1661             TIM1->CCER2 |= TIM1_CCER2_CC4E;
5297  05e9 7218525d      	bset	21085,#4
5299  05ed 2004          	jra	L5362
5300  05ef               L7562:
5301                     ; 1665             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5303  05ef 7219525d      	bres	21085,#4
5304  05f3               L5362:
5305                     ; 1668 }
5308  05f3 85            	popw	x
5309  05f4 81            	ret
5354                     ; 1681 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
5354                     ; 1682 {
5355                     	switch	.text
5356  05f5               _TIM1_CCxNCmd:
5358  05f5 89            	pushw	x
5359       00000000      OFST:	set	0
5362                     ; 1684     assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
5364                     ; 1685     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5366                     ; 1687     if (TIM1_Channel == TIM1_CHANNEL_1)
5368  05f6 9e            	ld	a,xh
5369  05f7 4d            	tnz	a
5370  05f8 2610          	jrne	L5072
5371                     ; 1690         if (NewState != DISABLE)
5373  05fa 9f            	ld	a,xl
5374  05fb 4d            	tnz	a
5375  05fc 2706          	jreq	L7072
5376                     ; 1692             TIM1->CCER1 |= TIM1_CCER1_CC1NE;
5378  05fe 7214525c      	bset	21084,#2
5380  0602 202a          	jra	L3172
5381  0604               L7072:
5382                     ; 1696             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
5384  0604 7215525c      	bres	21084,#2
5385  0608 2024          	jra	L3172
5386  060a               L5072:
5387                     ; 1699     else if (TIM1_Channel == TIM1_CHANNEL_2)
5389  060a 7b01          	ld	a,(OFST+1,sp)
5390  060c a101          	cp	a,#1
5391  060e 2610          	jrne	L5172
5392                     ; 1702         if (NewState != DISABLE)
5394  0610 0d02          	tnz	(OFST+2,sp)
5395  0612 2706          	jreq	L7172
5396                     ; 1704             TIM1->CCER1 |= TIM1_CCER1_CC2NE;
5398  0614 721c525c      	bset	21084,#6
5400  0618 2014          	jra	L3172
5401  061a               L7172:
5402                     ; 1708             TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
5404  061a 721d525c      	bres	21084,#6
5405  061e 200e          	jra	L3172
5406  0620               L5172:
5407                     ; 1714         if (NewState != DISABLE)
5409  0620 0d02          	tnz	(OFST+2,sp)
5410  0622 2706          	jreq	L5272
5411                     ; 1716             TIM1->CCER2 |= TIM1_CCER2_CC3NE;
5413  0624 7214525d      	bset	21085,#2
5415  0628 2004          	jra	L3172
5416  062a               L5272:
5417                     ; 1720             TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
5419  062a 7215525d      	bres	21085,#2
5420  062e               L3172:
5421                     ; 1723 }
5424  062e 85            	popw	x
5425  062f 81            	ret
5470                     ; 1747 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
5470                     ; 1748 {
5471                     	switch	.text
5472  0630               _TIM1_SelectOCxM:
5474  0630 89            	pushw	x
5475       00000000      OFST:	set	0
5478                     ; 1750     assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
5480                     ; 1751     assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
5482                     ; 1753     if (TIM1_Channel == TIM1_CHANNEL_1)
5484  0631 9e            	ld	a,xh
5485  0632 4d            	tnz	a
5486  0633 2610          	jrne	L3572
5487                     ; 1756         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
5489  0635 7211525c      	bres	21084,#0
5490                     ; 1759         TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
5490                     ; 1760                                 | (uint8_t)TIM1_OCMode);
5492  0639 c65258        	ld	a,21080
5493  063c a48f          	and	a,#143
5494  063e 1a02          	or	a,(OFST+2,sp)
5495  0640 c75258        	ld	21080,a
5497  0643 203a          	jra	L5572
5498  0645               L3572:
5499                     ; 1762     else if (TIM1_Channel == TIM1_CHANNEL_2)
5501  0645 7b01          	ld	a,(OFST+1,sp)
5502  0647 a101          	cp	a,#1
5503  0649 2610          	jrne	L7572
5504                     ; 1765         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
5506  064b 7219525c      	bres	21084,#4
5507                     ; 1768         TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5507                     ; 1769                                 | (uint8_t)TIM1_OCMode);
5509  064f c65259        	ld	a,21081
5510  0652 a48f          	and	a,#143
5511  0654 1a02          	or	a,(OFST+2,sp)
5512  0656 c75259        	ld	21081,a
5514  0659 2024          	jra	L5572
5515  065b               L7572:
5516                     ; 1771     else if (TIM1_Channel == TIM1_CHANNEL_3)
5518  065b 7b01          	ld	a,(OFST+1,sp)
5519  065d a102          	cp	a,#2
5520  065f 2610          	jrne	L3672
5521                     ; 1774         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
5523  0661 7211525d      	bres	21085,#0
5524                     ; 1777         TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
5524                     ; 1778                                 | (uint8_t)TIM1_OCMode);
5526  0665 c6525a        	ld	a,21082
5527  0668 a48f          	and	a,#143
5528  066a 1a02          	or	a,(OFST+2,sp)
5529  066c c7525a        	ld	21082,a
5531  066f 200e          	jra	L5572
5532  0671               L3672:
5533                     ; 1783         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
5535  0671 7219525d      	bres	21085,#4
5536                     ; 1786         TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5536                     ; 1787                                 | (uint8_t)TIM1_OCMode);
5538  0675 c6525b        	ld	a,21083
5539  0678 a48f          	and	a,#143
5540  067a 1a02          	or	a,(OFST+2,sp)
5541  067c c7525b        	ld	21083,a
5542  067f               L5572:
5543                     ; 1789 }
5546  067f 85            	popw	x
5547  0680 81            	ret
5581                     ; 1798 void TIM1_SetCounter(uint16_t Counter)
5581                     ; 1799 {
5582                     	switch	.text
5583  0681               _TIM1_SetCounter:
5587                     ; 1801     TIM1->CNTRH = (uint8_t)(Counter >> 8);
5589  0681 9e            	ld	a,xh
5590  0682 c7525e        	ld	21086,a
5591                     ; 1802     TIM1->CNTRL = (uint8_t)(Counter);
5593  0685 9f            	ld	a,xl
5594  0686 c7525f        	ld	21087,a
5595                     ; 1804 }
5598  0689 81            	ret
5632                     ; 1813 void TIM1_SetAutoreload(uint16_t Autoreload)
5632                     ; 1814 {
5633                     	switch	.text
5634  068a               _TIM1_SetAutoreload:
5638                     ; 1817     TIM1->ARRH = (uint8_t)(Autoreload >> 8);
5640  068a 9e            	ld	a,xh
5641  068b c75262        	ld	21090,a
5642                     ; 1818     TIM1->ARRL = (uint8_t)(Autoreload);
5644  068e 9f            	ld	a,xl
5645  068f c75263        	ld	21091,a
5646                     ; 1820 }
5649  0692 81            	ret
5683                     ; 1829 void TIM1_SetCompare1(uint16_t Compare1)
5683                     ; 1830 {
5684                     	switch	.text
5685  0693               _TIM1_SetCompare1:
5689                     ; 1832     TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
5691  0693 9e            	ld	a,xh
5692  0694 c75265        	ld	21093,a
5693                     ; 1833     TIM1->CCR1L = (uint8_t)(Compare1);
5695  0697 9f            	ld	a,xl
5696  0698 c75266        	ld	21094,a
5697                     ; 1835 }
5700  069b 81            	ret
5734                     ; 1844 void TIM1_SetCompare2(uint16_t Compare2)
5734                     ; 1845 {
5735                     	switch	.text
5736  069c               _TIM1_SetCompare2:
5740                     ; 1847     TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
5742  069c 9e            	ld	a,xh
5743  069d c75267        	ld	21095,a
5744                     ; 1848     TIM1->CCR2L = (uint8_t)(Compare2);
5746  06a0 9f            	ld	a,xl
5747  06a1 c75268        	ld	21096,a
5748                     ; 1850 }
5751  06a4 81            	ret
5785                     ; 1859 void TIM1_SetCompare3(uint16_t Compare3)
5785                     ; 1860 {
5786                     	switch	.text
5787  06a5               _TIM1_SetCompare3:
5791                     ; 1862     TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
5793  06a5 9e            	ld	a,xh
5794  06a6 c75269        	ld	21097,a
5795                     ; 1863     TIM1->CCR3L = (uint8_t)(Compare3);
5797  06a9 9f            	ld	a,xl
5798  06aa c7526a        	ld	21098,a
5799                     ; 1865 }
5802  06ad 81            	ret
5836                     ; 1874 void TIM1_SetCompare4(uint16_t Compare4)
5836                     ; 1875 {
5837                     	switch	.text
5838  06ae               _TIM1_SetCompare4:
5842                     ; 1877     TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
5844  06ae 9e            	ld	a,xh
5845  06af c7526b        	ld	21099,a
5846                     ; 1878     TIM1->CCR4L = (uint8_t)(Compare4);
5848  06b2 9f            	ld	a,xl
5849  06b3 c7526c        	ld	21100,a
5850                     ; 1879 }
5853  06b6 81            	ret
5889                     ; 1892 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
5889                     ; 1893 {
5890                     	switch	.text
5891  06b7               _TIM1_SetIC1Prescaler:
5893  06b7 88            	push	a
5894       00000000      OFST:	set	0
5897                     ; 1895     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
5899                     ; 1898     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
5899                     ; 1899                             | (uint8_t)TIM1_IC1Prescaler);
5901  06b8 c65258        	ld	a,21080
5902  06bb a4f3          	and	a,#243
5903  06bd 1a01          	or	a,(OFST+1,sp)
5904  06bf c75258        	ld	21080,a
5905                     ; 1901 }
5908  06c2 84            	pop	a
5909  06c3 81            	ret
5945                     ; 1913 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
5945                     ; 1914 {
5946                     	switch	.text
5947  06c4               _TIM1_SetIC2Prescaler:
5949  06c4 88            	push	a
5950       00000000      OFST:	set	0
5953                     ; 1917     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
5955                     ; 1920     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
5955                     ; 1921                             | (uint8_t)TIM1_IC2Prescaler);
5957  06c5 c65259        	ld	a,21081
5958  06c8 a4f3          	and	a,#243
5959  06ca 1a01          	or	a,(OFST+1,sp)
5960  06cc c75259        	ld	21081,a
5961                     ; 1922 }
5964  06cf 84            	pop	a
5965  06d0 81            	ret
6001                     ; 1935 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
6001                     ; 1936 {
6002                     	switch	.text
6003  06d1               _TIM1_SetIC3Prescaler:
6005  06d1 88            	push	a
6006       00000000      OFST:	set	0
6009                     ; 1939     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
6011                     ; 1942     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
6011                     ; 1943                             (uint8_t)TIM1_IC3Prescaler);
6013  06d2 c6525a        	ld	a,21082
6014  06d5 a4f3          	and	a,#243
6015  06d7 1a01          	or	a,(OFST+1,sp)
6016  06d9 c7525a        	ld	21082,a
6017                     ; 1944 }
6020  06dc 84            	pop	a
6021  06dd 81            	ret
6057                     ; 1956 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
6057                     ; 1957 {
6058                     	switch	.text
6059  06de               _TIM1_SetIC4Prescaler:
6061  06de 88            	push	a
6062       00000000      OFST:	set	0
6065                     ; 1960     assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
6067                     ; 1963     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
6067                     ; 1964                             (uint8_t)TIM1_IC4Prescaler);
6069  06df c6525b        	ld	a,21083
6070  06e2 a4f3          	and	a,#243
6071  06e4 1a01          	or	a,(OFST+1,sp)
6072  06e6 c7525b        	ld	21083,a
6073                     ; 1965 }
6076  06e9 84            	pop	a
6077  06ea 81            	ret
6129                     ; 1972 uint16_t TIM1_GetCapture1(void)
6129                     ; 1973 {
6130                     	switch	.text
6131  06eb               _TIM1_GetCapture1:
6133  06eb 5204          	subw	sp,#4
6134       00000004      OFST:	set	4
6137                     ; 1976     uint16_t tmpccr1 = 0;
6139                     ; 1977     uint8_t tmpccr1l=0, tmpccr1h=0;
6143                     ; 1979     tmpccr1h = TIM1->CCR1H;
6145  06ed c65265        	ld	a,21093
6146  06f0 6b02          	ld	(OFST-2,sp),a
6147                     ; 1980     tmpccr1l = TIM1->CCR1L;
6149  06f2 c65266        	ld	a,21094
6150  06f5 6b01          	ld	(OFST-3,sp),a
6151                     ; 1982     tmpccr1 = (uint16_t)(tmpccr1l);
6153  06f7 7b01          	ld	a,(OFST-3,sp)
6154  06f9 5f            	clrw	x
6155  06fa 97            	ld	xl,a
6156  06fb 1f03          	ldw	(OFST-1,sp),x
6157                     ; 1983     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
6159  06fd 7b02          	ld	a,(OFST-2,sp)
6160  06ff 5f            	clrw	x
6161  0700 97            	ld	xl,a
6162  0701 4f            	clr	a
6163  0702 02            	rlwa	x,a
6164  0703 01            	rrwa	x,a
6165  0704 1a04          	or	a,(OFST+0,sp)
6166  0706 01            	rrwa	x,a
6167  0707 1a03          	or	a,(OFST-1,sp)
6168  0709 01            	rrwa	x,a
6169  070a 1f03          	ldw	(OFST-1,sp),x
6170                     ; 1985     return (uint16_t)tmpccr1;
6172  070c 1e03          	ldw	x,(OFST-1,sp)
6175  070e 5b04          	addw	sp,#4
6176  0710 81            	ret
6228                     ; 1993 uint16_t TIM1_GetCapture2(void)
6228                     ; 1994 {
6229                     	switch	.text
6230  0711               _TIM1_GetCapture2:
6232  0711 5204          	subw	sp,#4
6233       00000004      OFST:	set	4
6236                     ; 1997     uint16_t tmpccr2 = 0;
6238                     ; 1998     uint8_t tmpccr2l=0, tmpccr2h=0;
6242                     ; 2000     tmpccr2h = TIM1->CCR2H;
6244  0713 c65267        	ld	a,21095
6245  0716 6b02          	ld	(OFST-2,sp),a
6246                     ; 2001     tmpccr2l = TIM1->CCR2L;
6248  0718 c65268        	ld	a,21096
6249  071b 6b01          	ld	(OFST-3,sp),a
6250                     ; 2003     tmpccr2 = (uint16_t)(tmpccr2l);
6252  071d 7b01          	ld	a,(OFST-3,sp)
6253  071f 5f            	clrw	x
6254  0720 97            	ld	xl,a
6255  0721 1f03          	ldw	(OFST-1,sp),x
6256                     ; 2004     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
6258  0723 7b02          	ld	a,(OFST-2,sp)
6259  0725 5f            	clrw	x
6260  0726 97            	ld	xl,a
6261  0727 4f            	clr	a
6262  0728 02            	rlwa	x,a
6263  0729 01            	rrwa	x,a
6264  072a 1a04          	or	a,(OFST+0,sp)
6265  072c 01            	rrwa	x,a
6266  072d 1a03          	or	a,(OFST-1,sp)
6267  072f 01            	rrwa	x,a
6268  0730 1f03          	ldw	(OFST-1,sp),x
6269                     ; 2006     return (uint16_t)tmpccr2;
6271  0732 1e03          	ldw	x,(OFST-1,sp)
6274  0734 5b04          	addw	sp,#4
6275  0736 81            	ret
6327                     ; 2014 uint16_t TIM1_GetCapture3(void)
6327                     ; 2015 {
6328                     	switch	.text
6329  0737               _TIM1_GetCapture3:
6331  0737 5204          	subw	sp,#4
6332       00000004      OFST:	set	4
6335                     ; 2017     uint16_t tmpccr3 = 0;
6337                     ; 2018     uint8_t tmpccr3l=0, tmpccr3h=0;
6341                     ; 2020     tmpccr3h = TIM1->CCR3H;
6343  0739 c65269        	ld	a,21097
6344  073c 6b02          	ld	(OFST-2,sp),a
6345                     ; 2021     tmpccr3l = TIM1->CCR3L;
6347  073e c6526a        	ld	a,21098
6348  0741 6b01          	ld	(OFST-3,sp),a
6349                     ; 2023     tmpccr3 = (uint16_t)(tmpccr3l);
6351  0743 7b01          	ld	a,(OFST-3,sp)
6352  0745 5f            	clrw	x
6353  0746 97            	ld	xl,a
6354  0747 1f03          	ldw	(OFST-1,sp),x
6355                     ; 2024     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
6357  0749 7b02          	ld	a,(OFST-2,sp)
6358  074b 5f            	clrw	x
6359  074c 97            	ld	xl,a
6360  074d 4f            	clr	a
6361  074e 02            	rlwa	x,a
6362  074f 01            	rrwa	x,a
6363  0750 1a04          	or	a,(OFST+0,sp)
6364  0752 01            	rrwa	x,a
6365  0753 1a03          	or	a,(OFST-1,sp)
6366  0755 01            	rrwa	x,a
6367  0756 1f03          	ldw	(OFST-1,sp),x
6368                     ; 2026     return (uint16_t)tmpccr3;
6370  0758 1e03          	ldw	x,(OFST-1,sp)
6373  075a 5b04          	addw	sp,#4
6374  075c 81            	ret
6426                     ; 2034 uint16_t TIM1_GetCapture4(void)
6426                     ; 2035 {
6427                     	switch	.text
6428  075d               _TIM1_GetCapture4:
6430  075d 5204          	subw	sp,#4
6431       00000004      OFST:	set	4
6434                     ; 2037     uint16_t tmpccr4 = 0;
6436                     ; 2038     uint8_t tmpccr4l=0, tmpccr4h=0;
6440                     ; 2040     tmpccr4h = TIM1->CCR4H;
6442  075f c6526b        	ld	a,21099
6443  0762 6b02          	ld	(OFST-2,sp),a
6444                     ; 2041     tmpccr4l = TIM1->CCR4L;
6446  0764 c6526c        	ld	a,21100
6447  0767 6b01          	ld	(OFST-3,sp),a
6448                     ; 2043     tmpccr4 = (uint16_t)(tmpccr4l);
6450  0769 7b01          	ld	a,(OFST-3,sp)
6451  076b 5f            	clrw	x
6452  076c 97            	ld	xl,a
6453  076d 1f03          	ldw	(OFST-1,sp),x
6454                     ; 2044     tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
6456  076f 7b02          	ld	a,(OFST-2,sp)
6457  0771 5f            	clrw	x
6458  0772 97            	ld	xl,a
6459  0773 4f            	clr	a
6460  0774 02            	rlwa	x,a
6461  0775 01            	rrwa	x,a
6462  0776 1a04          	or	a,(OFST+0,sp)
6463  0778 01            	rrwa	x,a
6464  0779 1a03          	or	a,(OFST-1,sp)
6465  077b 01            	rrwa	x,a
6466  077c 1f03          	ldw	(OFST-1,sp),x
6467                     ; 2046     return (uint16_t)tmpccr4;
6469  077e 1e03          	ldw	x,(OFST-1,sp)
6472  0780 5b04          	addw	sp,#4
6473  0782 81            	ret
6507                     ; 2054 uint16_t TIM1_GetCounter(void)
6507                     ; 2055 {
6508                     	switch	.text
6509  0783               _TIM1_GetCounter:
6511  0783 89            	pushw	x
6512       00000002      OFST:	set	2
6515                     ; 2056   uint16_t tmpcntr = 0;
6517                     ; 2058   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
6519  0784 c6525e        	ld	a,21086
6520  0787 5f            	clrw	x
6521  0788 97            	ld	xl,a
6522  0789 4f            	clr	a
6523  078a 02            	rlwa	x,a
6524  078b 1f01          	ldw	(OFST-1,sp),x
6525                     ; 2061     return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
6527  078d c6525f        	ld	a,21087
6528  0790 5f            	clrw	x
6529  0791 97            	ld	xl,a
6530  0792 01            	rrwa	x,a
6531  0793 1a02          	or	a,(OFST+0,sp)
6532  0795 01            	rrwa	x,a
6533  0796 1a01          	or	a,(OFST-1,sp)
6534  0798 01            	rrwa	x,a
6537  0799 5b02          	addw	sp,#2
6538  079b 81            	ret
6572                     ; 2069 uint16_t TIM1_GetPrescaler(void)
6572                     ; 2070 {
6573                     	switch	.text
6574  079c               _TIM1_GetPrescaler:
6576  079c 89            	pushw	x
6577       00000002      OFST:	set	2
6580                     ; 2071    uint16_t temp = 0;
6582                     ; 2073    temp = ((uint16_t)TIM1->PSCRH << 8);
6584  079d c65260        	ld	a,21088
6585  07a0 5f            	clrw	x
6586  07a1 97            	ld	xl,a
6587  07a2 4f            	clr	a
6588  07a3 02            	rlwa	x,a
6589  07a4 1f01          	ldw	(OFST-1,sp),x
6590                     ; 2076     return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
6592  07a6 c65261        	ld	a,21089
6593  07a9 5f            	clrw	x
6594  07aa 97            	ld	xl,a
6595  07ab 01            	rrwa	x,a
6596  07ac 1a02          	or	a,(OFST+0,sp)
6597  07ae 01            	rrwa	x,a
6598  07af 1a01          	or	a,(OFST-1,sp)
6599  07b1 01            	rrwa	x,a
6602  07b2 5b02          	addw	sp,#2
6603  07b4 81            	ret
6777                     ; 2097 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
6777                     ; 2098 {
6778                     	switch	.text
6779  07b5               _TIM1_GetFlagStatus:
6781  07b5 89            	pushw	x
6782  07b6 89            	pushw	x
6783       00000002      OFST:	set	2
6786                     ; 2099     FlagStatus bitstatus = RESET;
6788                     ; 2100     uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
6792                     ; 2103     assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
6794                     ; 2105     tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
6796  07b7 9f            	ld	a,xl
6797  07b8 c45255        	and	a,21077
6798  07bb 6b01          	ld	(OFST-1,sp),a
6799                     ; 2106     tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
6801  07bd 7b03          	ld	a,(OFST+1,sp)
6802  07bf 6b02          	ld	(OFST+0,sp),a
6803                     ; 2108     if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
6805  07c1 c65256        	ld	a,21078
6806  07c4 1402          	and	a,(OFST+0,sp)
6807  07c6 1a01          	or	a,(OFST-1,sp)
6808  07c8 2706          	jreq	L5643
6809                     ; 2110         bitstatus = SET;
6811  07ca a601          	ld	a,#1
6812  07cc 6b02          	ld	(OFST+0,sp),a
6814  07ce 2002          	jra	L7643
6815  07d0               L5643:
6816                     ; 2114         bitstatus = RESET;
6818  07d0 0f02          	clr	(OFST+0,sp)
6819  07d2               L7643:
6820                     ; 2116     return (FlagStatus)(bitstatus);
6822  07d2 7b02          	ld	a,(OFST+0,sp)
6825  07d4 5b04          	addw	sp,#4
6826  07d6 81            	ret
6861                     ; 2137 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
6861                     ; 2138 {
6862                     	switch	.text
6863  07d7               _TIM1_ClearFlag:
6865  07d7 89            	pushw	x
6866       00000000      OFST:	set	0
6869                     ; 2140     assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
6871                     ; 2143     TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
6873  07d8 9f            	ld	a,xl
6874  07d9 43            	cpl	a
6875  07da c75255        	ld	21077,a
6876                     ; 2144     TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
6876                     ; 2145                           (uint8_t)0x1E);
6878  07dd 7b01          	ld	a,(OFST+1,sp)
6879  07df 43            	cpl	a
6880  07e0 a41e          	and	a,#30
6881  07e2 c75256        	ld	21078,a
6882                     ; 2146 }
6885  07e5 85            	popw	x
6886  07e6 81            	ret
6950                     ; 2162 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
6950                     ; 2163 {
6951                     	switch	.text
6952  07e7               _TIM1_GetITStatus:
6954  07e7 88            	push	a
6955  07e8 89            	pushw	x
6956       00000002      OFST:	set	2
6959                     ; 2164     ITStatus bitstatus = RESET;
6961                     ; 2165     uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
6965                     ; 2168     assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
6967                     ; 2170     TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
6969  07e9 c45255        	and	a,21077
6970  07ec 6b01          	ld	(OFST-1,sp),a
6971                     ; 2172     TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
6973  07ee c65254        	ld	a,21076
6974  07f1 1403          	and	a,(OFST+1,sp)
6975  07f3 6b02          	ld	(OFST+0,sp),a
6976                     ; 2174     if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
6978  07f5 0d01          	tnz	(OFST-1,sp)
6979  07f7 270a          	jreq	L1453
6981  07f9 0d02          	tnz	(OFST+0,sp)
6982  07fb 2706          	jreq	L1453
6983                     ; 2176         bitstatus = SET;
6985  07fd a601          	ld	a,#1
6986  07ff 6b02          	ld	(OFST+0,sp),a
6988  0801 2002          	jra	L3453
6989  0803               L1453:
6990                     ; 2180         bitstatus = RESET;
6992  0803 0f02          	clr	(OFST+0,sp)
6993  0805               L3453:
6994                     ; 2182     return (ITStatus)(bitstatus);
6996  0805 7b02          	ld	a,(OFST+0,sp)
6999  0807 5b03          	addw	sp,#3
7000  0809 81            	ret
7036                     ; 2199 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
7036                     ; 2200 {
7037                     	switch	.text
7038  080a               _TIM1_ClearITPendingBit:
7042                     ; 2202     assert_param(IS_TIM1_IT_OK(TIM1_IT));
7044                     ; 2205     TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
7046  080a 43            	cpl	a
7047  080b c75255        	ld	21077,a
7048                     ; 2206 }
7051  080e 81            	ret
7103                     ; 2224 static void TI1_Config(uint8_t TIM1_ICPolarity,
7103                     ; 2225                        uint8_t TIM1_ICSelection,
7103                     ; 2226                        uint8_t TIM1_ICFilter)
7103                     ; 2227 {
7104                     	switch	.text
7105  080f               L3_TI1_Config:
7107  080f 89            	pushw	x
7108  0810 88            	push	a
7109       00000001      OFST:	set	1
7112                     ; 2230     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7114  0811 7211525c      	bres	21084,#0
7115                     ; 2233     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
7115                     ; 2234                             (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7117  0815 7b06          	ld	a,(OFST+5,sp)
7118  0817 97            	ld	xl,a
7119  0818 a610          	ld	a,#16
7120  081a 42            	mul	x,a
7121  081b 9f            	ld	a,xl
7122  081c 1a03          	or	a,(OFST+2,sp)
7123  081e 6b01          	ld	(OFST+0,sp),a
7124  0820 c65258        	ld	a,21080
7125  0823 a40c          	and	a,#12
7126  0825 1a01          	or	a,(OFST+0,sp)
7127  0827 c75258        	ld	21080,a
7128                     ; 2237     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7130  082a 0d02          	tnz	(OFST+1,sp)
7131  082c 2706          	jreq	L1163
7132                     ; 2239         TIM1->CCER1 |= TIM1_CCER1_CC1P;
7134  082e 7212525c      	bset	21084,#1
7136  0832 2004          	jra	L3163
7137  0834               L1163:
7138                     ; 2243         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
7140  0834 7213525c      	bres	21084,#1
7141  0838               L3163:
7142                     ; 2247     TIM1->CCER1 |=  TIM1_CCER1_CC1E;
7144  0838 7210525c      	bset	21084,#0
7145                     ; 2248 }
7148  083c 5b03          	addw	sp,#3
7149  083e 81            	ret
7201                     ; 2266 static void TI2_Config(uint8_t TIM1_ICPolarity,
7201                     ; 2267                        uint8_t TIM1_ICSelection,
7201                     ; 2268                        uint8_t TIM1_ICFilter)
7201                     ; 2269 {
7202                     	switch	.text
7203  083f               L5_TI2_Config:
7205  083f 89            	pushw	x
7206  0840 88            	push	a
7207       00000001      OFST:	set	1
7210                     ; 2271     TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
7212  0841 7219525c      	bres	21084,#4
7213                     ; 2274     TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
7213                     ; 2275                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7215  0845 7b06          	ld	a,(OFST+5,sp)
7216  0847 97            	ld	xl,a
7217  0848 a610          	ld	a,#16
7218  084a 42            	mul	x,a
7219  084b 9f            	ld	a,xl
7220  084c 1a03          	or	a,(OFST+2,sp)
7221  084e 6b01          	ld	(OFST+0,sp),a
7222  0850 c65259        	ld	a,21081
7223  0853 a40c          	and	a,#12
7224  0855 1a01          	or	a,(OFST+0,sp)
7225  0857 c75259        	ld	21081,a
7226                     ; 2277     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7228  085a 0d02          	tnz	(OFST+1,sp)
7229  085c 2706          	jreq	L3463
7230                     ; 2279         TIM1->CCER1 |= TIM1_CCER1_CC2P;
7232  085e 721a525c      	bset	21084,#5
7234  0862 2004          	jra	L5463
7235  0864               L3463:
7236                     ; 2283         TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
7238  0864 721b525c      	bres	21084,#5
7239  0868               L5463:
7240                     ; 2286     TIM1->CCER1 |=  TIM1_CCER1_CC2E;
7242  0868 7218525c      	bset	21084,#4
7243                     ; 2287 }
7246  086c 5b03          	addw	sp,#3
7247  086e 81            	ret
7299                     ; 2305 static void TI3_Config(uint8_t TIM1_ICPolarity,
7299                     ; 2306                        uint8_t TIM1_ICSelection,
7299                     ; 2307                        uint8_t TIM1_ICFilter)
7299                     ; 2308 {
7300                     	switch	.text
7301  086f               L7_TI3_Config:
7303  086f 89            	pushw	x
7304  0870 88            	push	a
7305       00000001      OFST:	set	1
7308                     ; 2310     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
7310  0871 7211525d      	bres	21085,#0
7311                     ; 2313     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
7311                     ; 2314                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7313  0875 7b06          	ld	a,(OFST+5,sp)
7314  0877 97            	ld	xl,a
7315  0878 a610          	ld	a,#16
7316  087a 42            	mul	x,a
7317  087b 9f            	ld	a,xl
7318  087c 1a03          	or	a,(OFST+2,sp)
7319  087e 6b01          	ld	(OFST+0,sp),a
7320  0880 c6525a        	ld	a,21082
7321  0883 a40c          	and	a,#12
7322  0885 1a01          	or	a,(OFST+0,sp)
7323  0887 c7525a        	ld	21082,a
7324                     ; 2317     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7326  088a 0d02          	tnz	(OFST+1,sp)
7327  088c 2706          	jreq	L5763
7328                     ; 2319         TIM1->CCER2 |= TIM1_CCER2_CC3P;
7330  088e 7212525d      	bset	21085,#1
7332  0892 2004          	jra	L7763
7333  0894               L5763:
7334                     ; 2323         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
7336  0894 7213525d      	bres	21085,#1
7337  0898               L7763:
7338                     ; 2326     TIM1->CCER2 |=  TIM1_CCER2_CC3E;
7340  0898 7210525d      	bset	21085,#0
7341                     ; 2327 }
7344  089c 5b03          	addw	sp,#3
7345  089e 81            	ret
7397                     ; 2346 static void TI4_Config(uint8_t TIM1_ICPolarity,
7397                     ; 2347                        uint8_t TIM1_ICSelection,
7397                     ; 2348                        uint8_t TIM1_ICFilter)
7397                     ; 2349 {
7398                     	switch	.text
7399  089f               L11_TI4_Config:
7401  089f 89            	pushw	x
7402  08a0 88            	push	a
7403       00000001      OFST:	set	1
7406                     ; 2352     TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
7408  08a1 7219525d      	bres	21085,#4
7409                     ; 2355     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
7409                     ; 2356                             | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
7411  08a5 7b06          	ld	a,(OFST+5,sp)
7412  08a7 97            	ld	xl,a
7413  08a8 a610          	ld	a,#16
7414  08aa 42            	mul	x,a
7415  08ab 9f            	ld	a,xl
7416  08ac 1a03          	or	a,(OFST+2,sp)
7417  08ae 6b01          	ld	(OFST+0,sp),a
7418  08b0 c6525b        	ld	a,21083
7419  08b3 a40c          	and	a,#12
7420  08b5 1a01          	or	a,(OFST+0,sp)
7421  08b7 c7525b        	ld	21083,a
7422                     ; 2359     if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
7424  08ba 0d02          	tnz	(OFST+1,sp)
7425  08bc 2706          	jreq	L7273
7426                     ; 2361         TIM1->CCER2 |= TIM1_CCER2_CC4P;
7428  08be 721a525d      	bset	21085,#5
7430  08c2 2004          	jra	L1373
7431  08c4               L7273:
7432                     ; 2365         TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
7434  08c4 721b525d      	bres	21085,#5
7435  08c8               L1373:
7436                     ; 2369     TIM1->CCER2 |=  TIM1_CCER2_CC4E;
7438  08c8 7218525d      	bset	21085,#4
7439                     ; 2370 }
7442  08cc 5b03          	addw	sp,#3
7443  08ce 81            	ret
7456                     	xdef	_TIM1_ClearITPendingBit
7457                     	xdef	_TIM1_GetITStatus
7458                     	xdef	_TIM1_ClearFlag
7459                     	xdef	_TIM1_GetFlagStatus
7460                     	xdef	_TIM1_GetPrescaler
7461                     	xdef	_TIM1_GetCounter
7462                     	xdef	_TIM1_GetCapture4
7463                     	xdef	_TIM1_GetCapture3
7464                     	xdef	_TIM1_GetCapture2
7465                     	xdef	_TIM1_GetCapture1
7466                     	xdef	_TIM1_SetIC4Prescaler
7467                     	xdef	_TIM1_SetIC3Prescaler
7468                     	xdef	_TIM1_SetIC2Prescaler
7469                     	xdef	_TIM1_SetIC1Prescaler
7470                     	xdef	_TIM1_SetCompare4
7471                     	xdef	_TIM1_SetCompare3
7472                     	xdef	_TIM1_SetCompare2
7473                     	xdef	_TIM1_SetCompare1
7474                     	xdef	_TIM1_SetAutoreload
7475                     	xdef	_TIM1_SetCounter
7476                     	xdef	_TIM1_SelectOCxM
7477                     	xdef	_TIM1_CCxNCmd
7478                     	xdef	_TIM1_CCxCmd
7479                     	xdef	_TIM1_OC4PolarityConfig
7480                     	xdef	_TIM1_OC3NPolarityConfig
7481                     	xdef	_TIM1_OC3PolarityConfig
7482                     	xdef	_TIM1_OC2NPolarityConfig
7483                     	xdef	_TIM1_OC2PolarityConfig
7484                     	xdef	_TIM1_OC1NPolarityConfig
7485                     	xdef	_TIM1_OC1PolarityConfig
7486                     	xdef	_TIM1_GenerateEvent
7487                     	xdef	_TIM1_OC4FastConfig
7488                     	xdef	_TIM1_OC3FastConfig
7489                     	xdef	_TIM1_OC2FastConfig
7490                     	xdef	_TIM1_OC1FastConfig
7491                     	xdef	_TIM1_OC4PreloadConfig
7492                     	xdef	_TIM1_OC3PreloadConfig
7493                     	xdef	_TIM1_OC2PreloadConfig
7494                     	xdef	_TIM1_OC1PreloadConfig
7495                     	xdef	_TIM1_CCPreloadControl
7496                     	xdef	_TIM1_SelectCOM
7497                     	xdef	_TIM1_ARRPreloadConfig
7498                     	xdef	_TIM1_ForcedOC4Config
7499                     	xdef	_TIM1_ForcedOC3Config
7500                     	xdef	_TIM1_ForcedOC2Config
7501                     	xdef	_TIM1_ForcedOC1Config
7502                     	xdef	_TIM1_CounterModeConfig
7503                     	xdef	_TIM1_PrescalerConfig
7504                     	xdef	_TIM1_EncoderInterfaceConfig
7505                     	xdef	_TIM1_SelectMasterSlaveMode
7506                     	xdef	_TIM1_SelectSlaveMode
7507                     	xdef	_TIM1_SelectOutputTrigger
7508                     	xdef	_TIM1_SelectOnePulseMode
7509                     	xdef	_TIM1_SelectHallSensor
7510                     	xdef	_TIM1_UpdateRequestConfig
7511                     	xdef	_TIM1_UpdateDisableConfig
7512                     	xdef	_TIM1_SelectInputTrigger
7513                     	xdef	_TIM1_TIxExternalClockConfig
7514                     	xdef	_TIM1_ETRConfig
7515                     	xdef	_TIM1_ETRClockMode2Config
7516                     	xdef	_TIM1_ETRClockMode1Config
7517                     	xdef	_TIM1_InternalClockConfig
7518                     	xdef	_TIM1_ITConfig
7519                     	xdef	_TIM1_CtrlPWMOutputs
7520                     	xdef	_TIM1_Cmd
7521                     	xdef	_TIM1_PWMIConfig
7522                     	xdef	_TIM1_ICInit
7523                     	xdef	_TIM1_BDTRConfig
7524                     	xdef	_TIM1_OC4Init
7525                     	xdef	_TIM1_OC3Init
7526                     	xdef	_TIM1_OC2Init
7527                     	xdef	_TIM1_OC1Init
7528                     	xdef	_TIM1_TimeBaseInit
7529                     	xdef	_TIM1_DeInit
7548                     	end
