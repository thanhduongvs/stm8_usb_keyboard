   1                     	xref	_usb_tx_count, _usb_tx_buffer_pointer
   2                     
   3                     	xdef	_usb_tx
   4                     
   5  0000               L_Bit0_Idle:
   6  0000 9d            	nop
   7  0001 9d            	nop
   8  0002 4a            	dec		a
   9  0003 2658          	jrne	L_Bit1_Begin
  10  0005 9d            	nop
  11  0006 9d            	nop
  12  0007 9d            	nop
  13  0008 7253500a      	cpl		20490
  14  000c 9d            	nop
  15  000d 9d            	nop
  16  000e a606          	ld		a, #$06
  17  0010 204b          	jra		L_Bit1_Begin
  18  0012 9d            	nop
  19  0013 9d            	nop
  20                     
  21  0014               L_Bit1_Idle:
  22  0014 9d            	nop
  23  0015 9d            	nop
  24  0016 4a            	dec		a
  25  0017 2651          	jrne	L_Bit2_Begin
  26  0019 9d            	nop
  27  001a 9d            	nop
  28  001b 9d            	nop
  29  001c 7253500a      	cpl		20490
  30  0020 9d            	nop
  31  0021 9d            	nop
  32  0022 a606          	ld		a, #$06
  33  0024 2044          	jra		L_Bit2_Begin
  34  0026 9d            	nop
  35  0027 9d            	nop
  36                     
  37  0028               L_Bit2_Idle:
  38  0028 9d            	nop
  39  0029 4a            	dec		a
  40  002a 264a          	jrne	L_Bit3_Begin
  41  002c 9d            	nop
  42  002d 9d            	nop
  43  002e 9d            	nop
  44  002f 9d            	nop
  45  0030 7253500a      	cpl		20490
  46  0034 9d            	nop
  47  0035 a606          	ld		a, #$06
  48  0037 203d          	jra		L_Bit3_Begin
  49  0039 9d            	nop
  50  003a 9d            	nop
  51                     
  52  003b               L_Bit3_Idle:
  53  003b 9d            	nop
  54  003c 9d            	nop
  55  003d 9d            	nop
  56  003e 4a            	dec		a
  57  003f 2643          	jrne	L_Bit4_Begin
  58  0041 9d            	nop;
  59  0042 9d            	nop
  60  0043 9d            	nop
  61  0044 7253500a      	cpl		20490
  62  0048 9d            	nop
  63  0049 9d            	nop
  64  004a a606          	ld		a, #$06
  65  004c 2036          	jra		L_Bit4_Begin
  66  004e 9d            	nop
  67  004f 9d            	nop
  68                     	;nop
  69                     
  70                     
  71  0050               L_Bit0_Begin:
  72  0050 76            	rrc		(x)						// бит 0 -> СC.C
  73  0051 25ad          	jrc		L_Bit0_Idle				// перейти, если равен CС.C = 1
  74  0053 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
  75  0057 a606          	ld		a, #$06					// если была инверсия, сбрасываем
  76  0059 9d            	nop
  77  005a 9d            	nop
  78  005b 9d            	nop
  79  005c 9d            	nop
  80                     
  81  005d               L_Bit1_Begin:
  82  005d 76            	rrc		(x)						// бит 0 -> СC.C
  83  005e 25b4          	jrc		L_Bit1_Idle				// перейти, если равен CС.C = 1
  84  0060 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
  85  0064 a606          	ld		a, #$06
  86  0066 9d            	nop
  87  0067 9d            	nop
  88  0068 9d            	nop
  89  0069 9d            	nop
  90                     
  91  006a               L_Bit2_Begin:
  92  006a 76            	rrc		(x)						// бит 0 -> СC.C
  93  006b 25bb          	jrc		L_Bit2_Idle				// перейти, если равен CС.C = 1
  94  006d 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
  95  0071 a606          	ld		a, #$06
  96  0073 9d            	nop
  97  0074 9d            	nop
  98  0075 9d            	nop
  99                     	;nop
 100                     
 101  0076               L_Bit3_Begin:
 102  0076 76            	rrc		(x)						// бит 0 -> СC.C
 103  0077 25c2          	jrc		L_Bit3_Idle				// перейти, если равен CС.C = 1
 104  0079 9d            	nop;
 105  007a 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
 106  007e a606          	ld		a, #$06
 107  0080 9d            	nop
 108  0081 9d            	nop
 109  0082 9d            	nop
 110  0083 9d            	nop
 111                     
 112  0084               L_Bit4_Begin:
 113  0084 76            	rrc		(x)						// бит 0 -> СC.C
 114  0085 2541          	jrc		L_Bit4_Idle				// перейти, если равен CС.C = 1
 115  0087 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
 116  008b a606          	ld		a, #$06
 117  008d 9d            	nop
 118  008e 9d            	nop
 119  008f 9d            	nop
 120  0090 9d            	nop
 121                     
 122  0091               L_Bit5_Begin:
 123  0091 76            	rrc		(x)						// бит 0 -> СC.C
 124  0092 2548          	jrc		L_Bit5_Idle				// перейти, если равен CС.C = 1
 125  0094 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
 126  0098 a606          	ld		a, #$06
 127  009a 9d            	nop
 128  009b 9d            	nop
 129  009c 9d            	nop
 130  009d 9d            	nop
 131                     
 132  009e               L_Bit6_Begin:
 133  009e 76            	rrc		(x)						// бит 0 -> СC.C
 134  009f 254f          	jrc		L_Bit6_Idle				// перейти, если равен CС.C = 1
 135  00a1 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
 136  00a5 a606          	ld		a, #$06
 137  00a7 9d            	nop
 138  00a8 9d            	nop
 139                     
 140  00a9               L_Bit7_Begin:
 141  00a9 76            	rrc		(x)						// бит 0 -> СC.C
 142  00aa 2557          	jrc		L_Bit7_Idle				// перейти, если равен CС.C = 1
 143  00ac 9d            	nop
 144  00ad 9d            	nop
 145  00ae 7253500a      	cpl		20490					// инверсия выходных сигналов [N,Z,C=1]
 146  00b2 a606          	ld		a, #$06
 147                     
 148  00b4               L_Check_End:
 149                     
 150  00b4 5c            	incw	x
 151  00b5 725a0000      	dec		_usb_tx_count
 152  00b9 2695          	jrne	L_Bit0_Begin
 153                     
 154  00bb 9d            	nop
 155  00bc               L_Tx_End:
 156  00bc 9d            	nop
 157  00bd 9d            	nop
 158                     
 159  00be 725f500a      	clr		20490
 160                     
 161  00c2 81            	ret
 162                     
 163  00c3 9d            	nop
 164  00c4 9d            	nop
 165  00c5 9d            	nop
 166  00c6 9d            	nop
 167                     
 168                     ;
 169                     ;
 170                     ;
 171  00c7 9d            	nop
 172                     
 173  00c8               L_Bit4_Idle:
 174  00c8 9d            	nop
 175  00c9 9d            	nop
 176  00ca 4a            	dec		a
 177  00cb 26c4          	jrne	L_Bit5_Begin
 178  00cd 9d            	nop
 179  00ce 9d            	nop
 180  00cf 9d            	nop
 181  00d0 7253500a      	cpl		20490
 182  00d4 9d            	nop
 183  00d5 9d            	nop
 184  00d6 a606          	ld		a, #$06
 185  00d8 20b7          	jra		L_Bit5_Begin
 186  00da 9d            	nop
 187                     
 188  00db 9d            	nop
 189  00dc               L_Bit5_Idle:
 190  00dc 9d            	nop
 191  00dd 9d            	nop
 192  00de 4a            	dec		a
 193  00df 26bd          	jrne	L_Bit6_Begin
 194  00e1 9d            	nop
 195  00e2 9d            	nop
 196  00e3 9d            	nop
 197  00e4 7253500a      	cpl		20490
 198  00e8 9d            	nop
 199  00e9 9d            	nop
 200  00ea a606          	ld		a, #$06
 201  00ec 20b0          	jra		L_Bit6_Begin
 202  00ee 9d            	nop
 203  00ef 9d            	nop
 204                     
 205  00f0               L_Bit6_Idle:
 206                     
 207  00f0 4a            	dec		a
 208  00f1 26b6          	jrne	L_Bit7_Begin
 209  00f3 9d            	nop
 210  00f4 9d            	nop
 211  00f5 9d            	nop
 212  00f6 9d            	nop
 213  00f7 9d            	nop
 214  00f8 7253500a      	cpl		20490
 215  00fc a606          	ld		a, #$06
 216  00fe 20a9          	jra		L_Bit7_Begin
 217  0100 9d            	nop
 218  0101 9d            	nop
 219  0102 9d            	nop
 220                     
 221  0103               L_Bit7_Idle:
 222  0103 4a            	dec		a
 223  0104 26ae          	jrne	L_Check_End
 224  0106 725a0000      	dec		_usb_tx_count
 225  010a 9d            	nop
 226  010b 5c            	incw	x
 227  010c 9d            	nop
 228  010d a606          	ld		a, #$06
 229  010f 9d            	nop
 230  0110 7253500a      	cpl		20490
 231  0114 9d            	nop
 232  0115 725d0000      	tnz		_usb_tx_count
 233  0119 2704ac500050  	jrne	L_Bit0_Begin
 234  011f 209b          	jra		L_Tx_End
 235                     
 236                     ;
 237                     ;	Точка входа
 238                     ;
 239  0121               _usb_tx:
 240                     
 241  0121 ce0000        	ldw		x, _usb_tx_buffer_pointer
 242                     	
 243  0124 a640          	ld		a,#$40
 244  0126 c7500a        	ld		20490,a
 245                     
 246  0129 a606          	ld		a, #$06						; счет
 247                     
 248  012b ac500050      	jra		L_Bit0_Begin