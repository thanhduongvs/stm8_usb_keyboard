   1                     	xref	_usb_rx_count, _usb_rx_buffer, _usb_rx_ok, _usb_init
   2                     
   3                     	xdef	_usb_rx
   4                     
   5  0000               L_Bit0_Begin:
   6  0000 906314        	cpl		($14,y)					; 同步信号
   7  0003 0401          	srl		($01, SP)
   8  0005 90f6          	ld		a,(y)
   9  0007 2604ac8c008c  	jreq	L_End_Rx				; 输出，如果输入=0（数据包结束）
  10  000d 1801          	xor		a, ($01, SP)
  11  000f 6b01          	ld		($01, SP),a
  12  0011 9d            	nop
  13                     
  14  0012               L_Bit1_Begin:
  15  0012 906314        	cpl		($14,y)					; сигнал синхронизации
  16  0015 0401          	srl		($01, SP)
  17  0017 90f6          	ld		a,(y)
  18  0019 2771          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  19  001b 1801          	xor		a, ($01, SP)
  20  001d 6b01          	ld		($01, SP),a
  21  001f 5c            	incw	x
  22  0020 9d            	nop
  23                     
  24  0021               L_Bit2_Begin:
  25  0021 906314        	cpl		($14,y)					; сигнал синхронизации
  26  0024 0401          	srl		($01, SP)
  27  0026 90f6          	ld		a,(y)
  28  0028 2762          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  29  002a 1801          	xor		a, ($01, SP)
  30  002c 6b01          	ld		($01, SP),a
  31  002e 9d            	nop
  32  002f 9d            	nop
  33                     
  34  0030               L_Bit3_Begin:
  35  0030 906314        	cpl		($14,y)					; сигнал синхронизации
  36  0033 0401          	srl		($01, SP)
  37  0035 90f6          	ld		a,(y)
  38  0037 2753          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  39  0039 1801          	xor		a, ($01, SP)
  40  003b 6b01          	ld		($01, SP),a
  41  003d 9d            	nop
  42                     
  43  003e               L_Bit4_Begin:
  44  003e 906314        	cpl		($14,y)					; сигнал синхронизации
  45  0041 0401          	srl		($01, SP)
  46  0043 90f6          	ld		a,(y)
  47  0045 2745          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  48  0047 1801          	xor		a, ($01, SP)
  49  0049 6b01          	ld		($01, SP),a
  50  004b 9d            	nop
  51                     
  52  004c               L_Bit5_Begin:
  53  004c 906314        	cpl		($14,y)					; сигнал синхронизации
  54  004f 0401          	srl		($01, SP)
  55  0051 90f6          	ld		a,(y)
  56  0053 2737          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  57  0055 1801          	xor		a, ($01, SP)
  58  0057 6b01          	ld		($01, SP),a
  59  0059 0a02          	dec		($02,SP)
  60  005b 272f          	jreq	L_End_Rx
  61                     
  62  005d               L_Bit6_Begin:
  63  005d 906314        	cpl		($14,y)					; сигнал синхронизации
  64  0060 0401          	srl		($01, SP)
  65  0062 90f6          	ld		a,(y)
  66  0064 2726          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  67  0066 1801          	xor		a, ($01, SP)
  68  0068 6b01          	ld		($01, SP),a
  69  006a 9d            	nop
  70                     
  71  006b               L_Bit7_Begin:
  72  006b 906314        	cpl		($14,y)					; сигнал синхронизации
  73  006e 0401          	srl		($01, SP)
  74  0070 90f6          	ld		a,(y)
  75  0072 2718          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  76  0074 1801          	xor		a, ($01, SP)
  77  0076 6b01          	ld		($01, SP),a
  78                     
  79  0078 f7            	ld		(x),a					; сохраняем принятый байт
  80  0079 79            	rlc   	(x)
  81                     
  82  007a 906314        	cpl		($14,y)					; сигнал синхронизации
  83  007d 0401          	srl		($01, SP)
  84  007f 90f6          	ld		a,(y)
  85  0081 2709          	jreq	L_End_Rx				; выход, если input = 0 (конец пакета)
  86  0083 1801          	xor		a, ($01, SP)
  87  0085 6b01          	ld		($01, SP),a
  88                     
  89  0087 2089          	jra		L_Bit1_Begin
  90                     
  91  0089 9d            	nop
  92  008a 9d            	nop
  93  008b 9d            	nop
  94                     
  95  008c               L_End_Rx:
  96                     
  97  008c 84            	pop		a
  98  008d 84            	pop		a
  99  008e c70000        	ld		_usb_rx_count,a
 100                     
 101  0091 cd0000        	call	_usb_rx_ok
 102                     
 103  0094 725f500f      	clr		20495					; PD->ODR ???
 104                     
 105  0098 35fb5255      	mov		21077,#251 				; 复位定时器中断标志
 106                     
 107  009c 72115250      	bres	21072,#0				; 停止定时器
 108  00a0 725f525e      	clr		21086					; 重置计数器寄存器
 109  00a4 725f525f      	clr		21087					;
 110                     
 111  00a8 80            	iret
 112                     
 113                     ;
 114                     ;
 115                     ;
 116                     
 117  00a9               _usb_rx:
 118  00a9 ae00b7        	ldw		x, #L_Delay_Begin	; 表的起始地址的延迟
 119  00ac 72bb525e      	addw	x, 21086			; + 偏移量（定时器）
 120  00b0 a300e1        	cpw		x, #L_Delay_End		; 对于表格边框检查输出（zaschita!）
 121  00b3 2401          	jruge	L_Error
 122  00b5 fc            	jp		(x)					; 跳表的延误
 123                     	
 124  00b6               L_Error:
 125                     
 126  00b6 80            	iret ; 紧急输出
 127                     
 128  00b7               L_Delay_Begin:
 129  00b7 9d            	nop
 130  00b8 9d            	nop
 131  00b9 9d            	nop
 132  00ba 9d            	nop
 133  00bb 9d            	nop
 134  00bc 9d            	nop
 135  00bd 9d            	nop
 136  00be 9d            	nop
 137  00bf 9d            	nop
 138  00c0 9d            	nop
 139  00c1 9d            	nop
 140  00c2 9d            	nop
 141  00c3 9d            	nop
 142  00c4 9d            	nop
 143  00c5 9d            	nop
 144  00c6 9d            	nop
 145  00c7 9d            	nop
 146  00c8 9d            	nop
 147  00c9 9d            	nop
 148  00ca 9d            	nop
 149  00cb 9d            	nop
 150  00cc 9d            	nop
 151  00cd 9d            	nop
 152  00ce 9d            	nop
 153  00cf 9d            	nop
 154  00d0 9d            	nop
 155  00d1 9d            	nop
 156  00d2 9d            	nop
 157  00d3 9d            	nop
 158  00d4 9d            	nop
 159  00d5 9d            	nop
 160  00d6 9d            	nop
 161  00d7 9d            	nop
 162  00d8 9d            	nop
 163  00d9 9d            	nop
 164  00da 9d            	nop
 165  00db 9d            	nop
 166  00dc 9d            	nop
 167  00dd 9d            	nop
 168  00de 9d            	nop
 169  00df 9d            	nop
 170  00e0 9d            	nop
 171                     
 172  00e1               L_Delay_End:
 173                     
 174  00e1 ae0000        	ldw		x, #_usb_rx_buffer		; 启动该缓冲器的地址
 175  00e4 90ae500b      	ldw		y, #20491 				; 地址输入
 176  00e8 a60e          	ld		a, #$0E					; 收到的最大字节数（zaschita!）
 177  00ea 88            	push	a
 178  00eb a680          	ld		a, #$80
 179  00ed 88            	push	a
 180                     
 181  00ee ac000000      	jra		L_Bit0_Begin
