   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               __vectab:
  17  0000 82            	dc.b	130
  19  0001 00            	dc.b	page(__stext)
  20  0002 0000          	dc.w	__stext
  21  0004 82            	dc.b	130
  23  0005 00            	dc.b	page(f_TRAP_IRQHandler)
  24  0006 0000          	dc.w	f_TRAP_IRQHandler
  25  0008 82            	dc.b	130
  27  0009 00            	dc.b	page(f_TLI_IRQHandler)
  28  000a 0000          	dc.w	f_TLI_IRQHandler
  29  000c 82            	dc.b	130
  31  000d 00            	dc.b	page(f_AWU_IRQHandler)
  32  000e 0000          	dc.w	f_AWU_IRQHandler
  33  0010 82            	dc.b	130
  35  0011 00            	dc.b	page(f_CLK_IRQHandler)
  36  0012 0000          	dc.w	f_CLK_IRQHandler
  37  0014 82            	dc.b	130
  39  0015 00            	dc.b	page(f_EXTI_PORTA_IRQHandler)
  40  0016 0000          	dc.w	f_EXTI_PORTA_IRQHandler
  41  0018 82            	dc.b	130
  43  0019 00            	dc.b	page(f_EXTI_PORTB_IRQHandler)
  44  001a 0000          	dc.w	f_EXTI_PORTB_IRQHandler
  45  001c 82            	dc.b	130
  47  001d 00            	dc.b	page(f_EXTI_PORTC_IRQHandler)
  48  001e 0000          	dc.w	f_EXTI_PORTC_IRQHandler
  49  0020 82            	dc.b	130
  51  0021 00            	dc.b	page(f_EXTI_PORTD_IRQHandler)
  52  0022 0000          	dc.w	f_EXTI_PORTD_IRQHandler
  53  0024 82            	dc.b	130
  55  0025 00            	dc.b	page(f_EXTI_PORTE_IRQHandler)
  56  0026 0000          	dc.w	f_EXTI_PORTE_IRQHandler
  57  0028 82            	dc.b	130
  59  0029 00            	dc.b	page(f_NonHandledInterrupt)
  60  002a 0000          	dc.w	f_NonHandledInterrupt
  61  002c 82            	dc.b	130
  63  002d 00            	dc.b	page(f_NonHandledInterrupt)
  64  002e 0000          	dc.w	f_NonHandledInterrupt
  65  0030 82            	dc.b	130
  67  0031 00            	dc.b	page(f_SPI_IRQHandler)
  68  0032 0000          	dc.w	f_SPI_IRQHandler
  69  0034 82            	dc.b	130
  71  0035 00            	dc.b	page(f_TIM1_UPD_OVF_TRG_BRK_IRQHandler)
  72  0036 0000          	dc.w	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
  73  0038 82            	dc.b	130
  75  0039 00            	dc.b	page(_usb_rx)
  76  003a 0000          	dc.w	_usb_rx
  77  003c 82            	dc.b	130
  79  003d 00            	dc.b	page(f_TIM2_UPD_OVF_BRK_IRQHandler)
  80  003e 0000          	dc.w	f_TIM2_UPD_OVF_BRK_IRQHandler
  81  0040 82            	dc.b	130
  83  0041 00            	dc.b	page(f_TIM2_CAP_COM_IRQHandler)
  84  0042 0000          	dc.w	f_TIM2_CAP_COM_IRQHandler
  85  0044 82            	dc.b	130
  87  0045 00            	dc.b	page(f_NonHandledInterrupt)
  88  0046 0000          	dc.w	f_NonHandledInterrupt
  89  0048 82            	dc.b	130
  91  0049 00            	dc.b	page(f_NonHandledInterrupt)
  92  004a 0000          	dc.w	f_NonHandledInterrupt
  93  004c 82            	dc.b	130
  95  004d 00            	dc.b	page(f_UART1_TX_IRQHandler)
  96  004e 0000          	dc.w	f_UART1_TX_IRQHandler
  97  0050 82            	dc.b	130
  99  0051 00            	dc.b	page(f_UART1_RX_IRQHandler)
 100  0052 0000          	dc.w	f_UART1_RX_IRQHandler
 101  0054 82            	dc.b	130
 103  0055 00            	dc.b	page(f_I2C_IRQHandler)
 104  0056 0000          	dc.w	f_I2C_IRQHandler
 105  0058 82            	dc.b	130
 107  0059 00            	dc.b	page(f_NonHandledInterrupt)
 108  005a 0000          	dc.w	f_NonHandledInterrupt
 109  005c 82            	dc.b	130
 111  005d 00            	dc.b	page(f_NonHandledInterrupt)
 112  005e 0000          	dc.w	f_NonHandledInterrupt
 113  0060 82            	dc.b	130
 115  0061 00            	dc.b	page(f_ADC1_IRQHandler)
 116  0062 0000          	dc.w	f_ADC1_IRQHandler
 117  0064 82            	dc.b	130
 119  0065 00            	dc.b	page(f_TIM4_UPD_OVF_IRQHandler)
 120  0066 0000          	dc.w	f_TIM4_UPD_OVF_IRQHandler
 121  0068 82            	dc.b	130
 123  0069 00            	dc.b	page(f_EEPROM_EEC_IRQHandler)
 124  006a 0000          	dc.w	f_EEPROM_EEC_IRQHandler
 125  006c 82            	dc.b	130
 127  006d 00            	dc.b	page(f_NonHandledInterrupt)
 128  006e 0000          	dc.w	f_NonHandledInterrupt
 129  0070 82            	dc.b	130
 131  0071 00            	dc.b	page(f_NonHandledInterrupt)
 132  0072 0000          	dc.w	f_NonHandledInterrupt
 133  0074 82            	dc.b	130
 135  0075 00            	dc.b	page(f_NonHandledInterrupt)
 136  0076 0000          	dc.w	f_NonHandledInterrupt
 137  0078 82            	dc.b	130
 139  0079 00            	dc.b	page(f_NonHandledInterrupt)
 140  007a 0000          	dc.w	f_NonHandledInterrupt
 141  007c 82            	dc.b	130
 143  007d 00            	dc.b	page(f_NonHandledInterrupt)
 144  007e 0000          	dc.w	f_NonHandledInterrupt
 204                     	xdef	__vectab
 205                     	xref	_usb_rx
 206                     	xref	f_EEPROM_EEC_IRQHandler
 207                     	xref	f_TIM4_UPD_OVF_IRQHandler
 208                     	xref	f_ADC1_IRQHandler
 209                     	xref	f_I2C_IRQHandler
 210                     	xref	f_UART1_RX_IRQHandler
 211                     	xref	f_UART1_TX_IRQHandler
 212                     	xref	f_TIM2_CAP_COM_IRQHandler
 213                     	xref	f_TIM2_UPD_OVF_BRK_IRQHandler
 214                     	xref	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 215                     	xref	f_SPI_IRQHandler
 216                     	xref	f_EXTI_PORTE_IRQHandler
 217                     	xref	f_EXTI_PORTD_IRQHandler
 218                     	xref	f_EXTI_PORTC_IRQHandler
 219                     	xref	f_EXTI_PORTB_IRQHandler
 220                     	xref	f_EXTI_PORTA_IRQHandler
 221                     	xref	f_CLK_IRQHandler
 222                     	xref	f_AWU_IRQHandler
 223                     	xref	f_TLI_IRQHandler
 224                     	xref	f_TRAP_IRQHandler
 225                     	xref	f_NonHandledInterrupt
 226                     	xref	__stext
 245                     	end
