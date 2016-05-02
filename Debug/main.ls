   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               L3_KEY_A:
  17  0000 00            	dc.b	0
  18  0001 00            	dc.b	0
  19  0002 04            	dc.b	4
  20  0003 00            	dc.b	0
  21  0004 00            	dc.b	0
  22  0005 00            	dc.b	0
  23  0006 00            	dc.b	0
  24  0007 00            	dc.b	0
  25  0008               L5_KEY_B:
  26  0008 00            	dc.b	0
  27  0009 00            	dc.b	0
  28  000a 05            	dc.b	5
  29  000b 00            	dc.b	0
  30  000c 00            	dc.b	0
  31  000d 00            	dc.b	0
  32  000e 00            	dc.b	0
  33  000f 00            	dc.b	0
  34  0010               L7_KEY_ENTER:
  35  0010 00            	dc.b	0
  36  0011 00            	dc.b	0
  37  0012 28            	dc.b	40
  38  0013 00            	dc.b	0
  39  0014 00            	dc.b	0
  40  0015 00            	dc.b	0
  41  0016 00            	dc.b	0
  42  0017 00            	dc.b	0
 113                     ; 5 void main(void)
 113                     ; 6 {
 115                     	switch	.text
 116  0000               _main:
 118  0000 5218          	subw	sp,#24
 119       00000018      OFST:	set	24
 122                     ; 7 	uint8_t KEY_A[8]={0x00, 0x00, 0x04,0x00,0x00, 0x00, 0x00,0x00};
 124  0002 96            	ldw	x,sp
 125  0003 1c0001        	addw	x,#OFST-23
 126  0006 90ae0000      	ldw	y,#L3_KEY_A
 127  000a a608          	ld	a,#8
 128  000c cd0000        	call	c_xymvx
 130                     ; 8 	uint8_t KEY_B[8]={0x00, 0x00, 0x05,0x00,0x00, 0x00, 0x00,0x00};
 132  000f 96            	ldw	x,sp
 133  0010 1c0009        	addw	x,#OFST-15
 134  0013 90ae0008      	ldw	y,#L5_KEY_B
 135  0017 a608          	ld	a,#8
 136  0019 cd0000        	call	c_xymvx
 138                     ; 9 	uint8_t KEY_ENTER[8]={0x00, 0x00, 0x28,0x00,0x00, 0x00, 0x00,0x00};
 140  001c 96            	ldw	x,sp
 141  001d 1c0011        	addw	x,#OFST-7
 142  0020 90ae0010      	ldw	y,#L7_KEY_ENTER
 143  0024 a608          	ld	a,#8
 144  0026 cd0000        	call	c_xymvx
 146                     ; 11 	CLK->CKDIVR = 0;
 148  0029 725f50c6      	clr	20678
 149                     ; 12 	disableInterrupts();
 152  002d 9b            sim
 154                     ; 13 	Init_GPIO();
 157  002e cd0000        	call	_Init_GPIO
 159                     ; 14 	Init_TIM1();
 161  0031 cd0000        	call	_Init_TIM1
 163                     ; 15 	Init_Clock();
 165  0034 cd0000        	call	_Init_Clock
 167                     ; 16 	usb_init();
 169  0037 cd0000        	call	_usb_init
 171                     ; 17 	enableInterrupts();
 174  003a 9a            rim
 178  003b 2003          	jra	L74
 179  003d               L54:
 180                     ; 21 		usb_process();
 182  003d cd0000        	call	_usb_process
 184  0040               L74:
 185                     ; 19 	while(usb_ready == 0)
 187  0040 3d00          	tnz	_usb_ready
 188  0042 27f9          	jreq	L54
 189  0044               L35:
 190                     ; 25 		usb_send_data(&KEY_A[0], 8, 0);
 192  0044 4b00          	push	#0
 193  0046 4b08          	push	#8
 194  0048 96            	ldw	x,sp
 195  0049 1c0003        	addw	x,#OFST-21
 196  004c cd0000        	call	_usb_send_data
 198  004f 85            	popw	x
 199                     ; 26 		delay(1000);
 201  0050 a6e8          	ld	a,#232
 202  0052 cd0000        	call	_delay
 204                     ; 27 		usb_send_data(&KEY_ENTER[0], 8, 0);
 206  0055 4b00          	push	#0
 207  0057 4b08          	push	#8
 208  0059 96            	ldw	x,sp
 209  005a 1c0013        	addw	x,#OFST-5
 210  005d cd0000        	call	_usb_send_data
 212  0060 85            	popw	x
 213                     ; 28 		delay(1000);
 215  0061 a6e8          	ld	a,#232
 216  0063 cd0000        	call	_delay
 218                     ; 29 		usb_send_data(&KEY_B[0], 8, 0);
 220  0066 4b00          	push	#0
 221  0068 4b08          	push	#8
 222  006a 96            	ldw	x,sp
 223  006b 1c000b        	addw	x,#OFST-13
 224  006e cd0000        	call	_usb_send_data
 226  0071 85            	popw	x
 227                     ; 30 		delay(1000);
 229  0072 a6e8          	ld	a,#232
 230  0074 cd0000        	call	_delay
 233  0077 20cb          	jra	L35
 246                     	xdef	_main
 247                     	xref.b	_usb_ready
 248                     	xref	_delay
 249                     	xref	_Init_TIM1
 250                     	xref	_Init_Clock
 251                     	xref	_Init_GPIO
 252                     	xref	_usb_send_data
 253                     	xref	_usb_process
 254                     	xref	_usb_init
 255                     	xref.b	c_x
 274                     	xref	c_xymvx
 275                     	end
