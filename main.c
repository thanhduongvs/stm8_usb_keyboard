#include "main.h"

extern uint8_t usb_ready;

void main(void)
{
	uint8_t KEY_A[8]={0x00, 0x00, 0x04,0x00,0x00, 0x00, 0x00,0x00};
	uint8_t KEY_B[8]={0x00, 0x00, 0x05,0x00,0x00, 0x00, 0x00,0x00};
	uint8_t KEY_ENTER[8]={0x00, 0x00, 0x28,0x00,0x00, 0x00, 0x00,0x00};

	CLK->CKDIVR = 0;
	disableInterrupts();
	Init_GPIO();
	Init_TIM1();
	Init_Clock();
	usb_init();
	enableInterrupts();

	while(usb_ready == 0)
	{
		usb_process();
	}
	while(1)
	{
		usb_send_data(&KEY_A[0], 8, 0);
		delay(1000);
		usb_send_data(&KEY_ENTER[0], 8, 0);
		delay(1000);
		usb_send_data(&KEY_B[0], 8, 0);
		delay(1000);
	}
}
