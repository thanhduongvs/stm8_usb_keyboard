   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _usb_device_descriptor:
  17  0000 12            	dc.b	18
  18  0001 01            	dc.b	1
  19  0002 10            	dc.b	16
  20  0003 01            	dc.b	1
  21  0004 00            	dc.b	0
  22  0005 00            	dc.b	0
  23  0006 00            	dc.b	0
  24  0007 08            	dc.b	8
  25  0008 3b            	dc.b	59
  26  0009 04            	dc.b	4
  27  000a 25            	dc.b	37
  28  000b 03            	dc.b	3
  29  000c 09            	dc.b	9
  30  000d 01            	dc.b	1
  31  000e 01            	dc.b	1
  32  000f 02            	dc.b	2
  33  0010 00            	dc.b	0
  34  0011 01            	dc.b	1
  35  0012               _usb_configuration_descriptor:
  36  0012 09            	dc.b	9
  37  0013 02            	dc.b	2
  38  0014 22            	dc.b	34
  39  0015 00            	dc.b	0
  40  0016 01            	dc.b	1
  41  0017 01            	dc.b	1
  42  0018 04            	dc.b	4
  43  0019 a0            	dc.b	160
  44  001a 23            	dc.b	35
  45  001b 09            	dc.b	9
  46  001c 04            	dc.b	4
  47  001d 00            	dc.b	0
  48  001e 00            	dc.b	0
  49  001f 01            	dc.b	1
  50  0020 03            	dc.b	3
  51  0021 01            	dc.b	1
  52  0022 01            	dc.b	1
  53  0023 05            	dc.b	5
  54  0024 09            	dc.b	9
  55  0025 21            	dc.b	33
  56  0026 10            	dc.b	16
  57  0027 01            	dc.b	1
  58  0028 00            	dc.b	0
  59  0029 01            	dc.b	1
  60  002a 22            	dc.b	34
  61  002b 41            	dc.b	65
  62  002c 00            	dc.b	0
  63  002d 07            	dc.b	7
  64  002e 05            	dc.b	5
  65  002f 81            	dc.b	129
  66  0030 03            	dc.b	3
  67  0031 08            	dc.b	8
  68  0032 00            	dc.b	0
  69  0033 18            	dc.b	24
  70  0034               _usb_report_descriptor:
  71  0034 05            	dc.b	5
  72  0035 01            	dc.b	1
  73  0036 09            	dc.b	9
  74  0037 06            	dc.b	6
  75  0038 a1            	dc.b	161
  76  0039 01            	dc.b	1
  77  003a 05            	dc.b	5
  78  003b 07            	dc.b	7
  79  003c 19            	dc.b	25
  80  003d e0            	dc.b	224
  81  003e 29            	dc.b	41
  82  003f e7            	dc.b	231
  83  0040 15            	dc.b	21
  84  0041 00            	dc.b	0
  85  0042 25            	dc.b	37
  86  0043 01            	dc.b	1
  87  0044 75            	dc.b	117
  88  0045 01            	dc.b	1
  89  0046 95            	dc.b	149
  90  0047 08            	dc.b	8
  91  0048 81            	dc.b	129
  92  0049 02            	dc.b	2
  93  004a 95            	dc.b	149
  94  004b 01            	dc.b	1
  95  004c 75            	dc.b	117
  96  004d 08            	dc.b	8
  97  004e 81            	dc.b	129
  98  004f 01            	dc.b	1
  99  0050 95            	dc.b	149
 100  0051 03            	dc.b	3
 101  0052 75            	dc.b	117
 102  0053 01            	dc.b	1
 103  0054 05            	dc.b	5
 104  0055 08            	dc.b	8
 105  0056 19            	dc.b	25
 106  0057 01            	dc.b	1
 107  0058 29            	dc.b	41
 108  0059 03            	dc.b	3
 109  005a 91            	dc.b	145
 110  005b 02            	dc.b	2
 111  005c 95            	dc.b	149
 112  005d 01            	dc.b	1
 113  005e 75            	dc.b	117
 114  005f 05            	dc.b	5
 115  0060 91            	dc.b	145
 116  0061 01            	dc.b	1
 117  0062 95            	dc.b	149
 118  0063 06            	dc.b	6
 119  0064 75            	dc.b	117
 120  0065 08            	dc.b	8
 121  0066 15            	dc.b	21
 122  0067 00            	dc.b	0
 123  0068 26            	dc.b	38
 124  0069 ff            	dc.b	255
 125  006a 00            	dc.b	0
 126  006b 05            	dc.b	5
 127  006c 07            	dc.b	7
 128  006d 19            	dc.b	25
 129  006e 00            	dc.b	0
 130  006f 2a            	dc.b	42
 131  0070 ff            	dc.b	255
 132  0071 00            	dc.b	0
 133  0072 81            	dc.b	129
 134  0073 00            	dc.b	0
 135  0074 c0            	dc.b	192
 167                     ; 182 void usb_init(void)
 167                     ; 183 {
 169                     	switch	.text
 170  0000               _usb_init:
 174                     ; 184 	usb.state = USB_STATE_IDLE;
 176  0000 3f00          	clr	_usb
 177                     ; 185 	usb.event = USB_EVENT_NO;
 179  0002 3f01          	clr	_usb+1
 180                     ; 186 	usb.device_address = 0;
 182  0004 3f02          	clr	_usb+2
 183                     ; 187 	usb.setup_address  = 0;
 185  0006 3f04          	clr	_usb+4
 186                     ; 188 	usb.tx_is_all = TRUE;
 188  0008 35010028      	mov	_usb+40,#1
 189                     ; 189 	usb_ready = 0;
 191  000c 3f3e          	clr	_usb_ready
 192                     ; 190 	usb_ready_reg = 0;
 194  000e 3f3d          	clr	_usb_ready_reg
 195                     ; 191 }
 198  0010 81            	ret
 241                     ; 193 void usb_send_nack(void)
 241                     ; 194 {
 242                     	switch	.text
 243  0011               _usb_send_nack:
 245  0011 89            	pushw	x
 246       00000002      OFST:	set	2
 249                     ; 197 	GPIOC->ODR = 0x40;
 251  0012 3540500a      	mov	20490,#64
 252                     ; 198 	GPIOC->CR1 = 0xFF;
 254  0016 35ff500d      	mov	20493,#255
 255                     ; 199 	GPIOC->CR2 = 0xFF;
 257  001a 35ff500e      	mov	20494,#255
 258                     ; 200 	GPIOC->DDR = 0xFF;
 260  001e 35ff500c      	mov	20492,#255
 261                     ; 202 	data[0] = 0x80;
 263  0022 a680          	ld	a,#128
 264  0024 6b01          	ld	(OFST-1,sp),a
 265                     ; 203 	data[1] = USB_PID_NACK;
 267  0026 a65a          	ld	a,#90
 268  0028 6b02          	ld	(OFST+0,sp),a
 269                     ; 205 	usb_tx_count = 2;
 271  002a 3502003f      	mov	_usb_tx_count,#2
 272                     ; 206 	usb_tx_buffer_pointer = &data[0];
 274  002e 96            	ldw	x,sp
 275  002f 1c0001        	addw	x,#OFST-1
 276  0032 bf2a          	ldw	_usb_tx_buffer_pointer,x
 277                     ; 208 	usb_tx();
 279  0034 cd0000        	call	_usb_tx
 281                     ; 210 	nop();
 284  0037 9d            nop
 286                     ; 211 	nop();
 290  0038 9d            nop
 292                     ; 212 	nop();
 296  0039 9d            nop
 298                     ; 213 	nop();
 302  003a 9d            nop
 304                     ; 214 	nop();
 308  003b 9d            nop
 310                     ; 216 	GPIOC->CR2 = 0x00;
 313  003c 725f500e      	clr	20494
 314                     ; 217 	GPIOC->CR1 = 0x00;
 316  0040 725f500d      	clr	20493
 317                     ; 218 	GPIOC->DDR = 0x3F;
 319  0044 353f500c      	mov	20492,#63
 320                     ; 219 }
 323  0048 85            	popw	x
 324  0049 81            	ret
 327                     	bsct
 328  0000               _count:
 329  0000 00            	dc.b	0
 422                     ; 284 void usb_rx_ok(void)
 422                     ; 285 {
 423                     	switch	.text
 424  004a               _usb_rx_ok:
 426  004a 89            	pushw	x
 427       00000002      OFST:	set	2
 430                     ; 286 	switch (usb_rx_buffer[1])
 432  004b b62d          	ld	a,_usb_rx_buffer+1
 434                     ; 365 			break;
 435  004d a02d          	sub	a,#45
 436  004f 272a          	jreq	L73
 437  0051 a01e          	sub	a,#30
 438  0053 2603          	jrne	L21
 439  0055 cc018d        	jp	L75
 440  0058               L21:
 441  0058 a00f          	sub	a,#15
 442  005a 2603          	jrne	L41
 443  005c cc01cf        	jp	L521
 444  005f               L41:
 445  005f a00f          	sub	a,#15
 446  0061 2728          	jreq	L34
 447  0063 a05a          	sub	a,#90
 448  0065 2603          	jrne	L61
 449  0067 cc00ec        	jp	L74
 450  006a               L61:
 451  006a a00f          	sub	a,#15
 452  006c 2603          	jrne	L02
 453  006e cc01cf        	jp	L521
 454  0071               L02:
 455  0071 a00f          	sub	a,#15
 456  0073 270e          	jreq	L14
 457  0075               L76:
 458                     ; 364 			usb.state = USB_STATE_IDLE;
 460  0075 3f00          	clr	_usb
 461                     ; 365 			break;
 463  0077 accf01cf      	jpf	L521
 464  007b               L73:
 465                     ; 290 			usb.state = USB_STATE_SETUP;
 467  007b 35010000      	mov	_usb,#1
 468                     ; 291 			break;
 470  007f accf01cf      	jpf	L521
 471  0083               L14:
 472                     ; 296 			usb.state = USB_STATE_OUT;
 474  0083 35030000      	mov	_usb,#3
 475                     ; 297 			break;
 477  0087 accf01cf      	jpf	L521
 478  008b               L34:
 479                     ; 302 			if((usb_rx_buffer[2]&0x7F)==usb.device_address)
 481  008b b62e          	ld	a,_usb_rx_buffer+2
 482  008d a47f          	and	a,#127
 483  008f b102          	cp	a,_usb+2
 484  0091 2703          	jreq	L22
 485  0093 cc01cf        	jp	L521
 486  0096               L22:
 487                     ; 304 				if(usb.setup_address!=0)
 489  0096 3d04          	tnz	_usb+4
 490  0098 2703          	jreq	L131
 491                     ; 306 					usb.device_address=usb.setup_address;
 493  009a 450402        	mov	_usb+2,_usb+4
 494  009d               L131:
 495                     ; 308 				if(usb_ready_reg==1)			
 497  009d b63d          	ld	a,_usb_ready_reg
 498  009f a101          	cp	a,#1
 499  00a1 2604          	jrne	L331
 500                     ; 309 					usb_ready=1;
 502  00a3 3501003e      	mov	_usb_ready,#1
 503  00a7               L331:
 504                     ; 310 				if (usb.event == USB_EVENT_READY_DATA_IN)
 506  00a7 b601          	ld	a,_usb+1
 507  00a9 a102          	cp	a,#2
 508  00ab 2638          	jrne	L531
 509                     ; 255 	GPIOC->ODR = 0x40;
 512  00ad 3540500a      	mov	20490,#64
 513                     ; 256 	GPIOC->CR1 = 0xFF;
 515  00b1 35ff500d      	mov	20493,#255
 516                     ; 257 	GPIOC->CR2 = 0xFF;
 518  00b5 35ff500e      	mov	20494,#255
 519                     ; 258 	GPIOC->DDR = 0xFF;
 521  00b9 35ff500c      	mov	20492,#255
 522                     ; 260 	usb_tx_count = usb.tx_lenght;
 524  00bd 45273f        	mov	_usb_tx_count,_usb+39
 525                     ; 261 	usb_tx_buffer_pointer = &usb.tx_buffer[0];
 527  00c0 ae0017        	ldw	x,#_usb+23
 528  00c3 bf2a          	ldw	_usb_tx_buffer_pointer,x
 529                     ; 263 	usb_tx();
 531  00c5 cd0000        	call	_usb_tx
 533                     ; 265 	nop();
 536  00c8 9d            nop
 538                     ; 266 	nop();
 542  00c9 9d            nop
 544                     ; 267 	nop();
 548  00ca 9d            nop
 550                     ; 268 	nop();
 554  00cb 9d            nop
 556                     ; 269 	nop();
 560  00cc 9d            nop
 562                     ; 271 	GPIOC->CR2 = 0x00;
 565  00cd 725f500e      	clr	20494
 566                     ; 272 	GPIOC->CR1 = 0x00;
 568  00d1 725f500d      	clr	20493
 569                     ; 273 	GPIOC->DDR = 0x3F;
 571  00d5 353f500c      	mov	20492,#63
 572                     ; 313 					usb.state = USB_STATE_IN;
 575  00d9 35020000      	mov	_usb,#2
 576                     ; 314 					usb.event = USB_EVENT_WAIT_DATA_IN;
 578  00dd 35030001      	mov	_usb+1,#3
 580  00e1 accf01cf      	jpf	L521
 581  00e5               L531:
 582                     ; 318 					usb_send_nack();
 584  00e5 cd0011        	call	_usb_send_nack
 586  00e8 accf01cf      	jpf	L521
 587  00ec               L74:
 588                     ; 327 			if (usb.state == USB_STATE_SETUP)
 590  00ec b600          	ld	a,_usb
 591  00ee a101          	cp	a,#1
 592  00f0 2654          	jrne	L141
 593                     ; 225 	GPIOC->ODR = 0x40;
 596  00f2 3540500a      	mov	20490,#64
 597                     ; 226 	GPIOC->CR1 = 0xFF;
 599  00f6 35ff500d      	mov	20493,#255
 600                     ; 227 	GPIOC->CR2 = 0xFF;
 602  00fa 35ff500e      	mov	20494,#255
 603                     ; 228 	GPIOC->DDR = 0xFF;
 605  00fe 35ff500c      	mov	20492,#255
 606                     ; 230 	data[0] = 0x80;
 608  0102 a680          	ld	a,#128
 609  0104 6b01          	ld	(OFST-1,sp),a
 610                     ; 231 	data[1] = USB_PID_ACK;
 612  0106 a6d2          	ld	a,#210
 613  0108 6b02          	ld	(OFST+0,sp),a
 614                     ; 233 	usb_tx_count = 2;
 616  010a 3502003f      	mov	_usb_tx_count,#2
 617                     ; 234 	usb_tx_buffer_pointer = &data[0];
 619  010e 96            	ldw	x,sp
 620  010f 1c0001        	addw	x,#OFST-1
 621  0112 bf2a          	ldw	_usb_tx_buffer_pointer,x
 622                     ; 237 	usb_tx();
 624  0114 cd0000        	call	_usb_tx
 626                     ; 239 	nop();
 629  0117 9d            nop
 631                     ; 240 	nop();
 635  0118 9d            nop
 637                     ; 241 	nop();
 641  0119 9d            nop
 643                     ; 242 	nop();
 647  011a 9d            nop
 649                     ; 243 	nop();
 653  011b 9d            nop
 655                     ; 245 	GPIOC->CR2 = 0x00;
 658  011c 725f500e      	clr	20494
 659                     ; 246 	GPIOC->CR1 = 0x00;
 661  0120 725f500d      	clr	20493
 662                     ; 247 	GPIOC->DDR = 0x7F;
 664  0124 357f500c      	mov	20492,#127
 665                     ; 248 	GPIOC->DDR = 0x3F;
 667  0128 353f500c      	mov	20492,#63
 668                     ; 278 	uint8_t index = 0;
 672                     ; 280 	for (index = 0; index < 16; index++)
 674  012c 0f02          	clr	(OFST+0,sp)
 675  012e               L341:
 676                     ; 281 		usb.rx_buffer[index] = usb_rx_buffer[index];
 678  012e 7b02          	ld	a,(OFST+0,sp)
 679  0130 5f            	clrw	x
 680  0131 97            	ld	xl,a
 681  0132 e62c          	ld	a,(_usb_rx_buffer,x)
 682  0134 e706          	ld	(_usb+6,x),a
 683                     ; 280 	for (index = 0; index < 16; index++)
 685  0136 0c02          	inc	(OFST+0,sp)
 688  0138 7b02          	ld	a,(OFST+0,sp)
 689  013a a110          	cp	a,#16
 690  013c 25f0          	jrult	L341
 691                     ; 331 				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
 694  013e 35010001      	mov	_usb+1,#1
 696  0142 accf01cf      	jpf	L521
 697  0146               L141:
 698                     ; 333 			else if (usb.state == USB_STATE_OUT)
 700  0146 b600          	ld	a,_usb
 701  0148 a103          	cp	a,#3
 702  014a 2703          	jreq	L42
 703  014c cc01cf        	jp	L521
 704  014f               L42:
 705                     ; 225 	GPIOC->ODR = 0x40;
 708  014f 3540500a      	mov	20490,#64
 709                     ; 226 	GPIOC->CR1 = 0xFF;
 711  0153 35ff500d      	mov	20493,#255
 712                     ; 227 	GPIOC->CR2 = 0xFF;
 714  0157 35ff500e      	mov	20494,#255
 715                     ; 228 	GPIOC->DDR = 0xFF;
 717  015b 35ff500c      	mov	20492,#255
 718                     ; 230 	data[0] = 0x80;
 720  015f a680          	ld	a,#128
 721  0161 6b01          	ld	(OFST-1,sp),a
 722                     ; 231 	data[1] = USB_PID_ACK;
 724  0163 a6d2          	ld	a,#210
 725  0165 6b02          	ld	(OFST+0,sp),a
 726                     ; 233 	usb_tx_count = 2;
 728  0167 3502003f      	mov	_usb_tx_count,#2
 729                     ; 234 	usb_tx_buffer_pointer = &data[0];
 731  016b 96            	ldw	x,sp
 732  016c 1c0001        	addw	x,#OFST-1
 733  016f bf2a          	ldw	_usb_tx_buffer_pointer,x
 734                     ; 237 	usb_tx();
 736  0171 cd0000        	call	_usb_tx
 738                     ; 239 	nop();
 741  0174 9d            nop
 743                     ; 240 	nop();
 747  0175 9d            nop
 749                     ; 241 	nop();
 753  0176 9d            nop
 755                     ; 242 	nop();
 759  0177 9d            nop
 761                     ; 243 	nop();
 765  0178 9d            nop
 767                     ; 245 	GPIOC->CR2 = 0x00;
 770  0179 725f500e      	clr	20494
 771                     ; 246 	GPIOC->CR1 = 0x00;
 773  017d 725f500d      	clr	20493
 774                     ; 247 	GPIOC->DDR = 0x7F;
 776  0181 357f500c      	mov	20492,#127
 777                     ; 248 	GPIOC->DDR = 0x3F;
 779  0185 353f500c      	mov	20492,#63
 780                     ; 336 				usb.event = USB_EVENT_NO;
 783  0189 3f01          	clr	_usb+1
 784  018b 2042          	jra	L521
 785  018d               L75:
 786                     ; 343 			if (usb.state == USB_STATE_OUT)
 788  018d b600          	ld	a,_usb
 789  018f a103          	cp	a,#3
 790  0191 263c          	jrne	L521
 791                     ; 225 	GPIOC->ODR = 0x40;
 794  0193 3540500a      	mov	20490,#64
 795                     ; 226 	GPIOC->CR1 = 0xFF;
 797  0197 35ff500d      	mov	20493,#255
 798                     ; 227 	GPIOC->CR2 = 0xFF;
 800  019b 35ff500e      	mov	20494,#255
 801                     ; 228 	GPIOC->DDR = 0xFF;
 803  019f 35ff500c      	mov	20492,#255
 804                     ; 230 	data[0] = 0x80;
 806  01a3 a680          	ld	a,#128
 807  01a5 6b01          	ld	(OFST-1,sp),a
 808                     ; 231 	data[1] = USB_PID_ACK;
 810  01a7 a6d2          	ld	a,#210
 811  01a9 6b02          	ld	(OFST+0,sp),a
 812                     ; 233 	usb_tx_count = 2;
 814  01ab 3502003f      	mov	_usb_tx_count,#2
 815                     ; 234 	usb_tx_buffer_pointer = &data[0];
 817  01af 96            	ldw	x,sp
 818  01b0 1c0001        	addw	x,#OFST-1
 819  01b3 bf2a          	ldw	_usb_tx_buffer_pointer,x
 820                     ; 237 	usb_tx();
 822  01b5 cd0000        	call	_usb_tx
 824                     ; 239 	nop();
 827  01b8 9d            nop
 829                     ; 240 	nop();
 833  01b9 9d            nop
 835                     ; 241 	nop();
 839  01ba 9d            nop
 841                     ; 242 	nop();
 845  01bb 9d            nop
 847                     ; 243 	nop();
 851  01bc 9d            nop
 853                     ; 245 	GPIOC->CR2 = 0x00;
 856  01bd 725f500e      	clr	20494
 857                     ; 246 	GPIOC->CR1 = 0x00;
 859  01c1 725f500d      	clr	20493
 860                     ; 247 	GPIOC->DDR = 0x7F;
 862  01c5 357f500c      	mov	20492,#127
 863                     ; 248 	GPIOC->DDR = 0x3F;
 865  01c9 353f500c      	mov	20492,#63
 866                     ; 346 				usb.event = USB_EVENT_NO;
 869  01cd 3f01          	clr	_usb+1
 870  01cf               L521:
 871                     ; 368 }
 874  01cf 85            	popw	x
 875  01d0 81            	ret
 946                     ; 370 void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
 946                     ; 371 {
 947                     	switch	.text
 948  01d1               _usb_calc_crc16:
 950  01d1 89            	pushw	x
 951  01d2 5204          	subw	sp,#4
 952       00000004      OFST:	set	4
 955                     ; 372 	uint16_t crc = 0xFFFF;
 957  01d4 aeffff        	ldw	x,#65535
 958  01d7 1f03          	ldw	(OFST-1,sp),x
 959                     ; 376 	for (index = 0; index < lenght; index++)
 961  01d9 0f01          	clr	(OFST-3,sp)
 963  01db 2041          	jra	L122
 964  01dd               L512:
 965                     ; 378 		crc ^= *buffer++;
 967  01dd 1e05          	ldw	x,(OFST+1,sp)
 968  01df 1c0001        	addw	x,#1
 969  01e2 1f05          	ldw	(OFST+1,sp),x
 970  01e4 1d0001        	subw	x,#1
 971  01e7 f6            	ld	a,(x)
 972  01e8 5f            	clrw	x
 973  01e9 97            	ld	xl,a
 974  01ea 01            	rrwa	x,a
 975  01eb 1804          	xor	a,(OFST+0,sp)
 976  01ed 01            	rrwa	x,a
 977  01ee 1803          	xor	a,(OFST-1,sp)
 978  01f0 01            	rrwa	x,a
 979  01f1 1f03          	ldw	(OFST-1,sp),x
 980                     ; 380 		for (i = 8; i--;)
 982  01f3 a608          	ld	a,#8
 983  01f5 6b02          	ld	(OFST-2,sp),a
 985  01f7 201c          	jra	L132
 986  01f9               L522:
 987                     ; 382 			if ((crc & BIT(0)) != 0)
 989  01f9 7b04          	ld	a,(OFST+0,sp)
 990  01fb a501          	bcp	a,#1
 991  01fd 2712          	jreq	L532
 992                     ; 384 				crc >>= 1;
 994  01ff 0403          	srl	(OFST-1,sp)
 995  0201 0604          	rrc	(OFST+0,sp)
 996                     ; 385 				crc ^= 0xA001;
 998  0203 7b04          	ld	a,(OFST+0,sp)
 999  0205 a801          	xor	a,#1
1000  0207 6b04          	ld	(OFST+0,sp),a
1001  0209 7b03          	ld	a,(OFST-1,sp)
1002  020b a8a0          	xor	a,#160
1003  020d 6b03          	ld	(OFST-1,sp),a
1005  020f 2004          	jra	L132
1006  0211               L532:
1007                     ; 389 				crc >>= 1;
1009  0211 0403          	srl	(OFST-1,sp)
1010  0213 0604          	rrc	(OFST+0,sp)
1011  0215               L132:
1012                     ; 380 		for (i = 8; i--;)
1014  0215 7b02          	ld	a,(OFST-2,sp)
1015  0217 0a02          	dec	(OFST-2,sp)
1016  0219 4d            	tnz	a
1017  021a 26dd          	jrne	L522
1018                     ; 376 	for (index = 0; index < lenght; index++)
1020  021c 0c01          	inc	(OFST-3,sp)
1021  021e               L122:
1024  021e 7b01          	ld	a,(OFST-3,sp)
1025  0220 1109          	cp	a,(OFST+5,sp)
1026  0222 25b9          	jrult	L512
1027                     ; 394 	crc = ~crc;
1029  0224 1e03          	ldw	x,(OFST-1,sp)
1030  0226 53            	cplw	x
1031  0227 1f03          	ldw	(OFST-1,sp),x
1032                     ; 396 	*buffer++ = (uint8_t) crc;
1034  0229 7b04          	ld	a,(OFST+0,sp)
1035  022b 1e05          	ldw	x,(OFST+1,sp)
1036  022d 1c0001        	addw	x,#1
1037  0230 1f05          	ldw	(OFST+1,sp),x
1038  0232 1d0001        	subw	x,#1
1039  0235 f7            	ld	(x),a
1040                     ; 397 	*buffer = (uint8_t) (crc >> 8);
1042  0236 7b03          	ld	a,(OFST-1,sp)
1043  0238 1e05          	ldw	x,(OFST+1,sp)
1044  023a f7            	ld	(x),a
1045                     ; 398 }
1048  023b 5b06          	addw	sp,#6
1049  023d 81            	ret
1114                     ; 400 void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode)
1114                     ; 401 {
1115                     	switch	.text
1116  023e               _usb_send_data:
1118  023e 89            	pushw	x
1119  023f 88            	push	a
1120       00000001      OFST:	set	1
1123                     ; 404 	if(mode)
1125  0240 0d07          	tnz	(OFST+6,sp)
1126  0242 2603          	jrne	L23
1127  0244 cc02f0        	jp	L772
1128  0247               L23:
1129                     ; 405 		data_sync = USB_PID_DATA1;
1131  0247 354b003c      	mov	_data_sync,#75
1132  024b acf002f0      	jpf	L772
1133  024f               L572:
1134                     ; 409 		usb.tx_buffer[0] = 0x80;
1136  024f 35800017      	mov	_usb+23,#128
1137                     ; 410 		usb.tx_buffer[1] = data_sync;
1139  0253 453c18        	mov	_usb+24,_data_sync
1140                     ; 412 		if (lenght >= 8)
1142  0256 7b06          	ld	a,(OFST+5,sp)
1143  0258 a108          	cp	a,#8
1144  025a 2542          	jrult	L303
1145                     ; 414 			usb.tx_lenght = 12;
1147  025c 350c0027      	mov	_usb+39,#12
1148                     ; 416 			for (index = 2; index < 10; index++)
1150  0260 a602          	ld	a,#2
1151  0262 6b01          	ld	(OFST+0,sp),a
1152  0264               L503:
1153                     ; 417 				usb.tx_buffer[index] = *buffer++;
1155  0264 7b01          	ld	a,(OFST+0,sp)
1156  0266 5f            	clrw	x
1157  0267 97            	ld	xl,a
1158  0268 1602          	ldw	y,(OFST+1,sp)
1159  026a 72a90001      	addw	y,#1
1160  026e 1702          	ldw	(OFST+1,sp),y
1161  0270 72a20001      	subw	y,#1
1162  0274 90f6          	ld	a,(y)
1163  0276 e717          	ld	(_usb+23,x),a
1164                     ; 416 			for (index = 2; index < 10; index++)
1166  0278 0c01          	inc	(OFST+0,sp)
1169  027a 7b01          	ld	a,(OFST+0,sp)
1170  027c a10a          	cp	a,#10
1171  027e 25e4          	jrult	L503
1172                     ; 418 			lenght -= 8;
1174  0280 7b06          	ld	a,(OFST+5,sp)
1175  0282 a008          	sub	a,#8
1176  0284 6b06          	ld	(OFST+5,sp),a
1178  0286               L313:
1179                     ; 429 		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));
1181  0286 b627          	ld	a,_usb+39
1182  0288 a004          	sub	a,#4
1183  028a 88            	push	a
1184  028b ae0019        	ldw	x,#_usb+25
1185  028e cd01d1        	call	_usb_calc_crc16
1187  0291 84            	pop	a
1188                     ; 432 		if (data_sync == USB_PID_DATA1)
1190  0292 b63c          	ld	a,_data_sync
1191  0294 a14b          	cp	a,#75
1192  0296 2642          	jrne	L523
1193                     ; 433 			data_sync = USB_PID_DATA0;
1195  0298 35c3003c      	mov	_data_sync,#195
1197  029c 2040          	jra	L723
1198  029e               L303:
1199                     ; 422 			usb.tx_lenght = (uint8_t) (4 + lenght);
1201  029e 7b06          	ld	a,(OFST+5,sp)
1202  02a0 ab04          	add	a,#4
1203  02a2 b727          	ld	_usb+39,a
1204                     ; 423 			for (index = 2; index < 2 + lenght; index++)
1206  02a4 a602          	ld	a,#2
1207  02a6 6b01          	ld	(OFST+0,sp),a
1209  02a8 2016          	jra	L123
1210  02aa               L513:
1211                     ; 424 				usb.tx_buffer[index] = *buffer++;
1213  02aa 7b01          	ld	a,(OFST+0,sp)
1214  02ac 5f            	clrw	x
1215  02ad 97            	ld	xl,a
1216  02ae 1602          	ldw	y,(OFST+1,sp)
1217  02b0 72a90001      	addw	y,#1
1218  02b4 1702          	ldw	(OFST+1,sp),y
1219  02b6 72a20001      	subw	y,#1
1220  02ba 90f6          	ld	a,(y)
1221  02bc e717          	ld	(_usb+23,x),a
1222                     ; 423 			for (index = 2; index < 2 + lenght; index++)
1224  02be 0c01          	inc	(OFST+0,sp)
1225  02c0               L123:
1228  02c0 9c            	rvf
1229  02c1 7b01          	ld	a,(OFST+0,sp)
1230  02c3 5f            	clrw	x
1231  02c4 97            	ld	xl,a
1232  02c5 7b06          	ld	a,(OFST+5,sp)
1233  02c7 905f          	clrw	y
1234  02c9 9097          	ld	yl,a
1235  02cb 905c          	incw	y
1236  02cd 905c          	incw	y
1237  02cf bf00          	ldw	c_x,x
1238  02d1 90b300        	cpw	y,c_x
1239  02d4 2cd4          	jrsgt	L513
1240                     ; 425 			lenght = 0;
1242  02d6 0f06          	clr	(OFST+5,sp)
1243  02d8 20ac          	jra	L313
1244  02da               L523:
1245                     ; 435 			data_sync = USB_PID_DATA1;
1247  02da 354b003c      	mov	_data_sync,#75
1248  02de               L723:
1249                     ; 438 		usb.event = USB_EVENT_READY_DATA_IN;
1251  02de 35020001      	mov	_usb+1,#2
1253  02e2 2006          	jra	L533
1254  02e4               L133:
1255                     ; 444 			if (usb.event == USB_EVENT_WAIT_DATA_IN)
1257  02e4 b601          	ld	a,_usb+1
1258  02e6 a103          	cp	a,#3
1259  02e8 2706          	jreq	L772
1260                     ; 445 				break;
1262  02ea               L533:
1263                     ; 441 		while (usb.event == USB_EVENT_READY_DATA_IN)
1265  02ea b601          	ld	a,_usb+1
1266  02ec a102          	cp	a,#2
1267  02ee 27f4          	jreq	L133
1268  02f0               L772:
1269                     ; 407 	while (lenght > 0)
1271  02f0 0d06          	tnz	(OFST+5,sp)
1272  02f2 2703          	jreq	L43
1273  02f4 cc024f        	jp	L572
1274  02f7               L43:
1275                     ; 448 }
1278  02f7 5b03          	addw	sp,#3
1279  02f9 81            	ret
1303                     ; 450 void usb_send_null_data(void)
1303                     ; 451 {
1304                     	switch	.text
1305  02fa               _usb_send_null_data:
1309                     ; 452 	usb.tx_lenght = 4;
1311  02fa 35040027      	mov	_usb+39,#4
1312                     ; 453 	usb.tx_buffer[0] = 0x80;
1314  02fe 35800017      	mov	_usb+23,#128
1315                     ; 454 	usb.tx_buffer[1] = USB_PID_DATA1;
1317  0302 354b0018      	mov	_usb+24,#75
1318                     ; 455 	usb.tx_buffer[2] = 0;
1320  0306 3f19          	clr	_usb+25
1321                     ; 456 	usb.tx_buffer[3] = 0;
1323  0308 3f1a          	clr	_usb+26
1324                     ; 458 	usb.event = USB_EVENT_READY_DATA_IN;
1326  030a 35020001      	mov	_usb+1,#2
1327                     ; 459 }
1330  030e 81            	ret
1354                     ; 461 void usb_send_stall(void)
1354                     ; 462 {
1355                     	switch	.text
1356  030f               _usb_send_stall:
1360                     ; 463 	usb.tx_lenght = 2;
1362  030f 35020027      	mov	_usb+39,#2
1363                     ; 464 	usb.tx_buffer[0] = 0x80;
1365  0313 35800017      	mov	_usb+23,#128
1366                     ; 465 	usb.tx_buffer[1] = USB_PID_STALL;
1368  0317 351e0018      	mov	_usb+24,#30
1369                     ; 467 	usb.event = USB_EVENT_READY_DATA_IN;
1371  031b 35020001      	mov	_usb+1,#2
1372                     ; 468 }
1375  031f 81            	ret
1378                     	bsct
1379  0001               _counter_a:
1380  0001 00            	dc.b	0
1381  0002               _counter_b:
1382  0002 00            	dc.b	0
1383  0003               _counter_all:
1384  0003 00            	dc.b	0
1385  0004               _tx_counter:
1386  0004 00            	dc.b	0
1415                     ; 476 void usb_process(void)
1415                     ; 477 {
1416                     	switch	.text
1417  0320               _usb_process:
1421                     ; 478 	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
1423  0320 b601          	ld	a,_usb+1
1424  0322 a101          	cp	a,#1
1425  0324 2703          	jreq	L44
1426  0326 cc03b5        	jp	L124
1427  0329               L44:
1428                     ; 480 		switch (usb.rx_buffer[2])
1430  0329 b608          	ld	a,_usb+8
1432                     ; 544 				break;
1433  032b 4d            	tnz	a
1434  032c 2750          	jreq	L373
1435  032e a021          	sub	a,#33
1436  0330 2603cc03b2    	jreq	L704
1437  0335 a05f          	sub	a,#95
1438  0337 2705          	jreq	L363
1439  0339 4a            	dec	a
1440  033a 275d          	jreq	L104
1441  033c 2077          	jra	L124
1442  033e               L363:
1443                     ; 484 				switch (usb.rx_buffer[3])
1445  033e b609          	ld	a,_usb+9
1446  0340 a106          	cp	a,#6
1447  0342 2671          	jrne	L124
1450  0344               L563:
1451                     ; 488 						switch (usb.rx_buffer[5])
1453  0344 b60b          	ld	a,_usb+11
1455                     ; 501 								break;
1456  0346 4a            	dec	a
1457  0347 2705          	jreq	L763
1458  0349 4a            	dec	a
1459  034a 270f          	jreq	L173
1460  034c 2067          	jra	L124
1461  034e               L763:
1462                     ; 492 								usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor), 1);
1464  034e 4b01          	push	#1
1465  0350 4b12          	push	#18
1466  0352 ae0000        	ldw	x,#_usb_device_descriptor
1467  0355 cd023e        	call	_usb_send_data
1469  0358 85            	popw	x
1470                     ; 493 								break;
1472  0359 205a          	jra	L124
1473  035b               L173:
1474                     ; 497 								if(usb.rx_buffer[8]<ARRAY_LENGHT(usb_configuration_descriptor))
1476  035b b60e          	ld	a,_usb+14
1477  035d a122          	cp	a,#34
1478  035f 240e          	jruge	L734
1479                     ; 498 									usb_send_data(&usb_configuration_descriptor[0],usb.rx_buffer[8], 1);
1481  0361 4b01          	push	#1
1482  0363 3b000e        	push	_usb+14
1483  0366 ae0012        	ldw	x,#_usb_configuration_descriptor
1484  0369 cd023e        	call	_usb_send_data
1486  036c 85            	popw	x
1488  036d 2046          	jra	L124
1489  036f               L734:
1490                     ; 500 									usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor), 1);
1492  036f 4b01          	push	#1
1493  0371 4b22          	push	#34
1494  0373 ae0012        	ldw	x,#_usb_configuration_descriptor
1495  0376 cd023e        	call	_usb_send_data
1497  0379 85            	popw	x
1498  037a 2039          	jra	L124
1499  037c               L534:
1500                     ; 504 						break;
1502  037c 2037          	jra	L124
1503  037e               L373:
1504                     ; 511 				switch (usb.rx_buffer[3])
1506  037e b609          	ld	a,_usb+9
1508                     ; 522 						break;
1509  0380 a005          	sub	a,#5
1510  0382 2706          	jreq	L573
1511  0384 a004          	sub	a,#4
1512  0386 270a          	jreq	L773
1513  0388 202b          	jra	L124
1514  038a               L573:
1515                     ; 515 						usb.setup_address = usb.rx_buffer[4];
1517  038a 450a04        	mov	_usb+4,_usb+10
1518                     ; 516 						usb_send_null_data();
1520  038d cd02fa        	call	_usb_send_null_data
1522                     ; 517 						break;
1524  0390 2023          	jra	L124
1525  0392               L773:
1526                     ; 521 						usb_send_null_data();
1528  0392 cd02fa        	call	_usb_send_null_data
1530                     ; 522 						break;
1532  0395 201e          	jra	L124
1533  0397               L544:
1534                     ; 525 				break;
1536  0397 201c          	jra	L124
1537  0399               L104:
1538                     ; 529 				switch (usb.rx_buffer[3])
1540  0399 b609          	ld	a,_usb+9
1541  039b a106          	cp	a,#6
1542  039d 2616          	jrne	L124
1545  039f               L304:
1546                     ; 533 						usb_send_data(&usb_report_descriptor[0], ARRAY_LENGHT(usb_report_descriptor), 1);
1548  039f 4b01          	push	#1
1549  03a1 4b41          	push	#65
1550  03a3 ae0034        	ldw	x,#_usb_report_descriptor
1551  03a6 cd023e        	call	_usb_send_data
1553  03a9 85            	popw	x
1554                     ; 534 						usb_ready_reg=1;
1556  03aa 3501003d      	mov	_usb_ready_reg,#1
1557                     ; 535 						break;
1559  03ae 2005          	jra	L124
1560  03b0               L504:
1561                     ; 537 					default: break;
1563  03b0 2003          	jra	L124
1564  03b2               L704:
1565                     ; 543 				usb_send_stall();
1567  03b2 cd030f        	call	_usb_send_stall
1569                     ; 544 				break;
1571  03b5               L524:
1572  03b5               L124:
1573                     ; 548 }
1576  03b5 81            	ret
1841                     	xdef	_tx_counter
1842                     	xdef	_counter_all
1843                     	xdef	_counter_b
1844                     	xdef	_counter_a
1845                     	xdef	_usb_send_stall
1846                     	xdef	_usb_send_null_data
1847                     	xdef	_usb_calc_crc16
1848                     	xdef	_usb_rx_ok
1849                     	xdef	_count
1850                     	xdef	_usb_send_nack
1851                     	switch	.ubsct
1852  0000               _usb:
1853  0000 000000000000  	ds.b	41
1854                     	xdef	_usb
1855                     	xdef	_usb_report_descriptor
1856                     	xdef	_usb_configuration_descriptor
1857                     	xdef	_usb_device_descriptor
1858  0029               _usb_rx_count:
1859  0029 00            	ds.b	1
1860                     	xdef	_usb_rx_count
1861  002a               _usb_tx_buffer_pointer:
1862  002a 0000          	ds.b	2
1863                     	xdef	_usb_tx_buffer_pointer
1864  002c               _usb_rx_buffer:
1865  002c 000000000000  	ds.b	16
1866                     	xdef	_usb_rx_buffer
1867  003c               _data_sync:
1868  003c 00            	ds.b	1
1869                     	xdef	_data_sync
1870  003d               _usb_ready_reg:
1871  003d 00            	ds.b	1
1872                     	xdef	_usb_ready_reg
1873  003e               _usb_ready:
1874  003e 00            	ds.b	1
1875                     	xdef	_usb_ready
1876                     	xref	_usb_tx
1877                     	xdef	_usb_send_data
1878                     	xdef	_usb_process
1879                     	xdef	_usb_init
1880  003f               _usb_tx_count:
1881  003f 00            	ds.b	1
1882                     	xdef	_usb_tx_count
1883                     	xref.b	c_x
1903                     	end
