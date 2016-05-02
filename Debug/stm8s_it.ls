   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 29 INTERRUPT_HANDLER(NonHandledInterrupt)
  44                     ; 30 {
  45                     	switch	.text
  46  0000               f_NonHandledInterrupt:
  50                     ; 31 }
  53  0000 80            	iret
  75                     ; 34 INTERRUPT_HANDLER_TRAP( TRAP_IRQHandler)
  75                     ; 35 {
  76                     	switch	.text
  77  0001               f_TRAP_IRQHandler:
  81                     ; 36 }
  84  0001 80            	iret
 106                     ; 38 INTERRUPT_HANDLER( TLI_IRQHandler)
 106                     ; 39 {
 107                     	switch	.text
 108  0002               f_TLI_IRQHandler:
 112                     ; 40 }
 115  0002 80            	iret
 137                     ; 42 INTERRUPT_HANDLER( AWU_IRQHandler)
 137                     ; 43 {
 138                     	switch	.text
 139  0003               f_AWU_IRQHandler:
 143                     ; 44 }
 146  0003 80            	iret
 168                     ; 46 INTERRUPT_HANDLER( CLK_IRQHandler)
 168                     ; 47 {
 169                     	switch	.text
 170  0004               f_CLK_IRQHandler:
 174                     ; 48 }
 177  0004 80            	iret
 200                     ; 50 INTERRUPT_HANDLER( EXTI_PORTA_IRQHandler)
 200                     ; 51 {
 201                     	switch	.text
 202  0005               f_EXTI_PORTA_IRQHandler:
 206                     ; 52 }
 209  0005 80            	iret
 232                     ; 54 INTERRUPT_HANDLER( EXTI_PORTB_IRQHandler)
 232                     ; 55 {
 233                     	switch	.text
 234  0006               f_EXTI_PORTB_IRQHandler:
 238                     ; 56 }
 241  0006 80            	iret
 264                     ; 58 INTERRUPT_HANDLER( EXTI_PORTC_IRQHandler)
 264                     ; 59 {
 265                     	switch	.text
 266  0007               f_EXTI_PORTC_IRQHandler:
 270                     ; 60 }
 273  0007 80            	iret
 296                     ; 62 INTERRUPT_HANDLER( EXTI_PORTD_IRQHandler)
 296                     ; 63 {
 297                     	switch	.text
 298  0008               f_EXTI_PORTD_IRQHandler:
 302                     ; 64 }
 305  0008 80            	iret
 328                     ; 66 INTERRUPT_HANDLER( EXTI_PORTE_IRQHandler)
 328                     ; 67 {
 329                     	switch	.text
 330  0009               f_EXTI_PORTE_IRQHandler:
 334                     ; 68 }
 337  0009 80            	iret
 359                     ; 86 INTERRUPT_HANDLER( SPI_IRQHandler)
 359                     ; 87 {
 360                     	switch	.text
 361  000a               f_SPI_IRQHandler:
 365                     ; 88 }
 368  000a 80            	iret
 391                     ; 90 INTERRUPT_HANDLER( TIM1_UPD_OVF_TRG_BRK_IRQHandler)
 391                     ; 91 {
 392                     	switch	.text
 393  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 397                     ; 92 }
 400  000b 80            	iret
 423                     ; 108 INTERRUPT_HANDLER( TIM2_UPD_OVF_BRK_IRQHandler)
 423                     ; 109 {
 424                     	switch	.text
 425  000c               f_TIM2_UPD_OVF_BRK_IRQHandler:
 429                     ; 110 }
 432  000c 80            	iret
 455                     ; 112 INTERRUPT_HANDLER( TIM2_CAP_COM_IRQHandler)
 455                     ; 113 {
 456                     	switch	.text
 457  000d               f_TIM2_CAP_COM_IRQHandler:
 461                     ; 114 }
 464  000d 80            	iret
 487                     ; 130 INTERRUPT_HANDLER( UART1_TX_IRQHandler)
 487                     ; 131 {
 488                     	switch	.text
 489  000e               f_UART1_TX_IRQHandler:
 493                     ; 132 }
 496  000e 80            	iret
 519                     ; 134 INTERRUPT_HANDLER( UART1_RX_IRQHandler)
 519                     ; 135 {
 520                     	switch	.text
 521  000f               f_UART1_RX_IRQHandler:
 525                     ; 136 }
 528  000f 80            	iret
 550                     ; 139 INTERRUPT_HANDLER( I2C_IRQHandler)
 550                     ; 140 {
 551                     	switch	.text
 552  0010               f_I2C_IRQHandler:
 556                     ; 141 }
 559  0010 80            	iret
 581                     ; 168 INTERRUPT_HANDLER( ADC1_IRQHandler)
 581                     ; 169 {
 582                     	switch	.text
 583  0011               f_ADC1_IRQHandler:
 587                     ; 170 }
 590  0011 80            	iret
 613                     ; 184 INTERRUPT_HANDLER( TIM4_UPD_OVF_IRQHandler)
 613                     ; 185 {
 614                     	switch	.text
 615  0012               f_TIM4_UPD_OVF_IRQHandler:
 619                     ; 186 }
 622  0012 80            	iret
 645                     ; 189 INTERRUPT_HANDLER( EEPROM_EEC_IRQHandler)
 645                     ; 190 {
 646                     	switch	.text
 647  0013               f_EEPROM_EEC_IRQHandler:
 651                     ; 191 }
 654  0013 80            	iret
 666                     	xdef	f_EEPROM_EEC_IRQHandler
 667                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 668                     	xdef	f_ADC1_IRQHandler
 669                     	xdef	f_I2C_IRQHandler
 670                     	xdef	f_UART1_RX_IRQHandler
 671                     	xdef	f_UART1_TX_IRQHandler
 672                     	xdef	f_TIM2_CAP_COM_IRQHandler
 673                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 674                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 675                     	xdef	f_SPI_IRQHandler
 676                     	xdef	f_EXTI_PORTE_IRQHandler
 677                     	xdef	f_EXTI_PORTD_IRQHandler
 678                     	xdef	f_EXTI_PORTC_IRQHandler
 679                     	xdef	f_EXTI_PORTB_IRQHandler
 680                     	xdef	f_EXTI_PORTA_IRQHandler
 681                     	xdef	f_CLK_IRQHandler
 682                     	xdef	f_AWU_IRQHandler
 683                     	xdef	f_TLI_IRQHandler
 684                     	xdef	f_TRAP_IRQHandler
 685                     	xdef	f_NonHandledInterrupt
 704                     	end
