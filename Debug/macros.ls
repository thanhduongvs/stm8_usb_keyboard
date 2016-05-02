   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     	switch	.ubsct
  16  0000               L31_counter_0_5_ms:
  17  0000 00            	ds.b	1
  59                     ; 8 void synchronization_10ms_refresh(void)
  59                     ; 9 {
  61                     	switch	.text
  62  0000               _synchronization_10ms_refresh:
  66                     ; 12 	if (is_ready == FALSE)
  68                     	btst	L11_is_ready
  69  0005 250e          	jrult	L14
  70                     ; 14 		if (++counter_0_5_ms >= 20)
  72  0007 3c00          	inc	L31_counter_0_5_ms
  73  0009 b600          	ld	a,L31_counter_0_5_ms
  74  000b a114          	cp	a,#20
  75  000d 2506          	jrult	L14
  76                     ; 16 			counter_0_5_ms = 0;
  78  000f 3f00          	clr	L31_counter_0_5_ms
  79                     ; 17 			is_ready = TRUE;
  81  0011 72100000      	bset	L11_is_ready
  82  0015               L14:
  83                     ; 20 }
  86  0015 81            	ret
 112                     ; 22 _Bool time_synchronization_10ms(void)
 112                     ; 23 {
 113                     	switch	.text
 114  0016               _time_synchronization_10ms:
 118                     ; 24 	if (is_ready == TRUE)
 120                     	btst	L11_is_ready
 121  001b 2407          	jruge	L55
 122                     ; 26 		is_ready = FALSE;
 124  001d 72110000      	bres	L11_is_ready
 125                     ; 27 		return TRUE;
 127  0021 a601          	ld	a,#1
 130  0023 81            	ret
 131  0024               L55:
 132                     ; 30 	return FALSE;
 134  0024 4f            	clr	a
 137  0025 81            	ret
 161                     ; 33 uint8_t get_random_byte(void)
 161                     ; 34 {
 162                     	switch	.text
 163  0026               _get_random_byte:
 167                     ; 35 	random *= 5;
 169  0026 be01          	ldw	x,L7_random
 170  0028 90ae0005      	ldw	y,#5
 171  002c cd0000        	call	c_imul
 173  002f bf01          	ldw	L7_random,x
 174                     ; 36 	random += 1;
 176  0031 be01          	ldw	x,L7_random
 177  0033 1c0001        	addw	x,#1
 178  0036 bf01          	ldw	L7_random,x
 179                     ; 37 	random %= 256;
 181  0038 b601          	ld	a,L7_random
 182  003a 97            	ld	xl,a
 183  003b b602          	ld	a,L7_random+1
 184  003d a4ff          	and	a,#255
 185  003f 5f            	clrw	x
 186  0040 b702          	ld	L7_random+1,a
 187  0042 9f            	ld	a,xl
 188  0043 b701          	ld	L7_random,a
 189                     ; 39 	return (uint8_t) random;
 191  0045 b602          	ld	a,L7_random+1
 194  0047 81            	ret
 230                     ; 42 void delay_ms(volatile uint16_t delay)
 230                     ; 43 {
 231                     	switch	.text
 232  0048               _delay_ms:
 236                     ; 44 	delay_count = delay << 1;
 238  0048 58            	sllw	x
 239  0049 bf03          	ldw	L3_delay_count,x
 240                     ; 45 	delay_flag = TRUE;
 242  004b 72100001      	bset	L5_delay_flag
 244  004f               L111:
 245                     ; 47 	while (delay_flag == TRUE)
 247                     	btst	L5_delay_flag
 248  0054 25f9          	jrult	L111
 249                     ; 50 }
 252  0056 81            	ret
 277                     ; 52 void delay_ms_refresh(void)
 277                     ; 53 {
 278                     	switch	.text
 279  0057               _delay_ms_refresh:
 283                     ; 54 	if (delay_flag == TRUE)
 285                     	btst	L5_delay_flag
 286  005c 240d          	jruge	L521
 287                     ; 56 		if (--delay_count == 0U)
 289  005e be03          	ldw	x,L3_delay_count
 290  0060 1d0001        	subw	x,#1
 291  0063 bf03          	ldw	L3_delay_count,x
 292  0065 2604          	jrne	L521
 293                     ; 58 			delay_flag = FALSE;
 295  0067 72110001      	bres	L5_delay_flag
 296  006b               L521:
 297                     ; 61 }
 300  006b 81            	ret
 353                     .bit:	section	.data,bit
 354  0000               L11_is_ready:
 355  0000 00            	ds.b	1
 356                     	switch	.ubsct
 357  0001               L7_random:
 358  0001 0000          	ds.b	2
 359                     	switch	.bit
 360  0001               L5_delay_flag:
 361  0001 00            	ds.b	1
 362                     	switch	.ubsct
 363  0003               L3_delay_count:
 364  0003 0000          	ds.b	2
 365                     	xdef	_time_synchronization_10ms
 366                     	xdef	_synchronization_10ms_refresh
 367                     	xdef	_get_random_byte
 368                     	xdef	_delay_ms
 369                     	xdef	_delay_ms_refresh
 370                     	xref.b	c_x
 390                     	xref	c_imul
 391                     	end
