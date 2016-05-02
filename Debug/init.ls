   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  43                     ; 3 void Init_GPIO(void)
  43                     ; 4 {
  45                     	switch	.text
  46  0000               _Init_GPIO:
  50                     ; 5 	GPIOC->CR1 = 0xFF;
  52  0000 35ff500d      	mov	20493,#255
  53                     ; 7 	GPIOC->CR1 = 0;
  55  0004 725f500d      	clr	20493
  56                     ; 8 	GPIOC->CR2 = 0;
  58  0008 725f500e      	clr	20494
  59                     ; 9 	GPIOC->DDR = 0x3F;
  61  000c 353f500c      	mov	20492,#63
  62                     ; 10 	GPIOC->ODR = 0;
  64  0010 725f500a      	clr	20490
  65                     ; 11 }
  68  0014 81            	ret
  92                     ; 13 void Init_Clock(void)
  92                     ; 14 {
  93                     	switch	.text
  94  0015               _Init_Clock:
  98                     ; 15 	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
 100  0015 4b00          	push	#0
 101  0017 4b00          	push	#0
 102  0019 ae00b4        	ldw	x,#180
 103  001c a601          	ld	a,#1
 104  001e 95            	ld	xh,a
 105  001f cd0000        	call	_CLK_ClockSwitchConfig
 107  0022 85            	popw	x
 108                     ; 16 }
 111  0023 81            	ret
 140                     ; 18 void Init_TIM1(void)
 140                     ; 19 {
 141                     	switch	.text
 142  0024               _Init_TIM1:
 146                     ; 20 	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;
 148  0024 721e50c7      	bset	20679,#7
 149                     ; 22 	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
 151  0028 4b00          	push	#0
 152  002a ae03e8        	ldw	x,#1000
 153  002d 89            	pushw	x
 154  002e 4b00          	push	#0
 155  0030 5f            	clrw	x
 156  0031 cd0000        	call	_TIM1_TimeBaseInit
 158  0034 5b04          	addw	sp,#4
 159                     ; 23 	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
 161  0036 4b02          	push	#2
 162  0038 4b00          	push	#0
 163  003a 4b01          	push	#1
 164  003c 5f            	clrw	x
 165  003d a601          	ld	a,#1
 166  003f 95            	ld	xh,a
 167  0040 cd0000        	call	_TIM1_ICInit
 169  0043 5b03          	addw	sp,#3
 170                     ; 24 	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
 172  0045 a660          	ld	a,#96
 173  0047 cd0000        	call	_TIM1_SelectInputTrigger
 175                     ; 25 	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
 177  004a a606          	ld	a,#6
 178  004c cd0000        	call	_TIM1_SelectSlaveMode
 180                     ; 26 	TIM1_ClearFlag(TIM1_FLAG_CC2);
 182  004f ae0004        	ldw	x,#4
 183  0052 cd0000        	call	_TIM1_ClearFlag
 185                     ; 27 	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 187  0055 ae0001        	ldw	x,#1
 188  0058 a604          	ld	a,#4
 189  005a 95            	ld	xh,a
 190  005b cd0000        	call	_TIM1_ITConfig
 192                     ; 28 }
 195  005e 81            	ret
 238                     ; 30 void delay(uint8_t n)
 238                     ; 31 {
 239                     	switch	.text
 240  005f               _delay:
 242  005f 88            	push	a
 243  0060 89            	pushw	x
 244       00000002      OFST:	set	2
 247  0061 2013          	jra	L56
 248  0063               L36:
 249                     ; 35 		for(i=0;i<2000;i++);
 251  0063 5f            	clrw	x
 252  0064 1f01          	ldw	(OFST-1,sp),x
 253  0066               L17:
 257  0066 1e01          	ldw	x,(OFST-1,sp)
 258  0068 1c0001        	addw	x,#1
 259  006b 1f01          	ldw	(OFST-1,sp),x
 262  006d 1e01          	ldw	x,(OFST-1,sp)
 263  006f a307d0        	cpw	x,#2000
 264  0072 25f2          	jrult	L17
 265                     ; 36 		n--;
 267  0074 0a03          	dec	(OFST+1,sp)
 268  0076               L56:
 269                     ; 33 	while(n>0)
 271  0076 0d03          	tnz	(OFST+1,sp)
 272  0078 26e9          	jrne	L36
 273                     ; 38 }
 276  007a 5b03          	addw	sp,#3
 277  007c 81            	ret
 290                     	xdef	_delay
 291                     	xdef	_Init_TIM1
 292                     	xdef	_Init_Clock
 293                     	xdef	_Init_GPIO
 294                     	xref	_TIM1_ClearFlag
 295                     	xref	_TIM1_SelectSlaveMode
 296                     	xref	_TIM1_SelectInputTrigger
 297                     	xref	_TIM1_ITConfig
 298                     	xref	_TIM1_ICInit
 299                     	xref	_TIM1_TimeBaseInit
 300                     	xref	_CLK_ClockSwitchConfig
 319                     	end
