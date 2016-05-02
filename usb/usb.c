#include "main.h"

extern void usb_tx(void);

uint8_t usb_ready;
uint8_t usb_ready_reg;
uint8_t data_sync;
uint8_t usb_rx_buffer[16];


uint8_t * usb_tx_buffer_pointer;

uint8_t usb_tx_count;
uint8_t usb_rx_count;

const uint8_t usb_device_descriptor[] = { 
	0x12, // Size of the Descriptor in Bytes
	0x01, // Device Descriptor (0x01)
	0x10, 
	0x01, // USB 1.1 = 0x0110， USB 1.0 = 0x0100
	0x00, // Class Code
	0x00, // Subclass Code
	0x00, // Protocol Code
	0x08, // Maximum Packet Size for Zero Endpoint
	0x3B, 0x04, // VID
	0x25, 0x03,// PID
	0x09, 0x01, // Device Release Number
	0x01, // Index of Manufacturer String Descriptor
	0x02, // Index of Product String Descriptor
	0x00, // Index of Serial Number String Descriptor
	0x01, // Number of Possible Configurations
};

const uint8_t usb_configuration_descriptor[] = { 
	0x09, // Size of Descriptor in Bytes
	0x02, // Configuration Descriptor (0x02)
	0x22,
	0x00, // Total length in bytes of data returned
	0x01, // Number of Interfaces
	0x01, // Value to use as an argument to select this configuration
	0x04, // Index of String Descriptor describing this configuration
	0xA0, // D7 Reserved, set to 1.(USB 1.0 Bus Powered),D6 Self Powered,D5 Remote Wakeup,D4..0 Reserved, set to 0.
	0x23,   // Maximum Power Consumption in 2mA units
	
	// interface descriptor
	0x09, // Size of Descriptor in Bytes (9 Bytes)
	0x04, // Interface Descriptor (0x04)
	0x00, // Number of Interface
	0x00, // Value used to select alternative setting
	0x01, // Number of Endpoints used for this interface
	0x03, // Class Code
	0x01, // Subclass Code
	0x01, // Protocol Code
	0x05, // Index of String Descriptor Describing this interface
	
	// HID descriptor
	0x09,    // Size of Descriptor in Bytes (9 Bytes)
	0x21, // HID descriptor (0x21)
	0x10, 
	0x01, // BCD representation of HID version
	0x00, // Target country code
	0x01, // Number of HID Report (or other HID class) Descriptor infos to follow */
	0x22, // Descriptor type: report
	0x41,
	0x00,  /* total length of report descriptor */
	
	// Endpoint descriptor
	0x07, // Size of Descriptor in Bytes (7 Bytes)
	0x05, // Endpoint descriptor (0x05)
	0x81, // IN endpoint number 1 (0x81)
	0x03, // attrib: Interrupt endpoint
	0x08, // 
	0x00, // maximum packet size
	0x18  // POLL INTERVAL (ms)
};

/* HID dung cho keyboard */
const uint8_t usb_report_descriptor[] = {
	0x05, 0x01,	//Usage Page (Generic Desktop) 
	0x09, 0x06,	//Usage (Keyboard) 
	0xA1, 0x01, // Collection (Application) 
	0x05, 0x07,  //    Usage Page (Keyboard/Keypad) 
	0x19, 0xE0,  //    Usage Minimum (Keyboard Left Control) 
	0x29, 0xE7,  //    Usage Maximum (Keyboard Right GUI) 
	0x15, 0x00,  //    Logical Minimum (0) 
	0x25, 0x01,  //    Logical Maximum (1) 
	0x75, 0x01,  //    Report Size (1) 
	0x95, 0x08,  //    Report Count (8) 
	0x81, 0x02,  //    Input (Data,Var,Abs,NWrp,Lin,Pref,NNul,Bit) 
	0x95, 0x01,  //    Report Count (1) 
	0x75, 0x08,  //    Report Size (8) 
	0x81, 0x01,  //    Input (Cnst,Ary,Abs) 
	0x95, 0x03,  //    Report Count (3) 
	0x75, 0x01,  //    Report Size (1) 
	0x05, 0x08,  //    Usage Page (LEDs) 
	0x19, 0x01,  //    Usage Minimum (Num Lock) 
	0x29, 0x03,  //    Usage Maximum (Scroll Lock) 
	0x91, 0x02,  //    Output (Data,Var,Abs,NWrp,Lin,Pref,NNul,NVol,Bit) 
	0x95, 0x01,  //    Report Count (1) 
	0x75, 0x05,  //    Report Size (5) 
	0x91, 0x01,  //    Output (Cnst,Ary,Abs,NWrp,Lin,Pref,NNul,NVol,Bit) 
	0x95, 0x06,  //    Report Count (6) 
	0x75, 0x08,  //    Report Size (8) 
	0x15, 0x00,  //    Logical Minimum (0) 
	0x26, 0xFF, 0x00,  //    Logical Maximum (255) 
	0x05, 0x07,  //    Usage Page (Keyboard/Keypad) 
	0x19, 0x00,  //    Usage Minimum (Undefined) 
	0x2A, 0xFF, 0x00,  //    Usage Maximum 
	0x81, 0x00,  //    Input (Data,Ary,Abs) 
	0xC0  //End Collection 
};

enum usb_events_list
{
	USB_EVENT_NO = 0,
	USB_EVENT_RECEIVE_SETUP_DATA = 1,
	USB_EVENT_READY_DATA_IN = 2,
	USB_EVENT_WAIT_DATA_IN = 3,
	USB_EVENT
};

enum usb_states_list
{
	USB_STATE_IDLE = 0,
	USB_STATE_SETUP = 1,
	USB_STATE_IN = 2,
	USB_STATE_OUT = 3,
	USB_STATE_DATA = 4,
	USB_STATE_ADDRESS_CHANGE = 5
};

enum usb_packets_id_list
{
	USB_PID_SETUP = 0x2D,
	USB_PID_DATA0 = 0xC3,
	USB_PID_DATA1 = 0x4B,
	USB_PID_IN = 0x69,
	USB_PID_OUT = 0xE1,
	USB_PID_ACK = 0xD2,
	USB_PID_NACK = 0x5A,
	USB_PID_STALL = 0x1E
};

enum usb_request_standart_type_list
{
	USB_REQUEST_TYPE_TO_DEVICE = 0x00,
	USB_REQUEST_TYPE_TO_INTERFACE = 0x01,
	USB_REQUEST_TYPE_TO_ENDPOINT = 0x02,
	USB_REQUEST_TYPE_FROM_DEVICE = 0x80,
	USB_REQUEST_TYPE_FROM_INTERFACE = 0x81,
	USB_REQUEST_TYPE_FROM_ENDPOINT = 0x82
};

enum usb_request_list
{
	USB_REQUEST_GET_STATUS = 0x00,
	USB_REQUEST_SET_ADDRESS = 0x05,
	USB_REQUEST_GET_DESCRIPTOR = 0x06,
	USB_REQUEST_SET_DESCRIPTOR = 0x07,
	USB_REQUEST_GET_CONFIGURATION = 0x08,
	USB_REQUEST_SET_CONFIGURATION = 0x09
};

struct usb_type
{
	volatile uint8_t state;
	volatile uint8_t event;
	volatile uint8_t device_address;

	uint8_t endpoint_number;
	uint8_t setup_address;
	uint8_t setup_endpoint;

	uint8_t rx_buffer[16];
	uint8_t rx_lenght;

	uint8_t tx_buffer[16];
	uint8_t tx_lenght;
	uint8_t tx_is_all;
} usb;

void usb_init(void)
{
	usb.state = USB_STATE_IDLE;
	usb.event = USB_EVENT_NO;
	usb.device_address = 0;
	usb.setup_address  = 0;
	usb.tx_is_all = TRUE;
	usb_ready = 0;
	usb_ready_reg = 0;
}

void usb_send_nack(void)
{
	uint8_t data[2];

	GPIOC->ODR = 0x40;
	GPIOC->CR1 = 0xFF;
	GPIOC->CR2 = 0xFF;
	GPIOC->DDR = 0xFF;

	data[0] = 0x80;
	data[1] = USB_PID_NACK;

	usb_tx_count = 2;
	usb_tx_buffer_pointer = &data[0];

	usb_tx();

	nop();
	nop();
	nop();
	nop();
	nop();

	GPIOC->CR2 = 0x00;
	GPIOC->CR1 = 0x00;
	GPIOC->DDR = 0x3F;
}

@inline void usb_send_ack(void)
{
	uint8_t data[2];

	GPIOC->ODR = 0x40;
	GPIOC->CR1 = 0xFF;
	GPIOC->CR2 = 0xFF;
	GPIOC->DDR = 0xFF;
	
	data[0] = 0x80;
	data[1] = USB_PID_ACK;

	usb_tx_count = 2;
	usb_tx_buffer_pointer = &data[0];

	
	usb_tx();
	
	nop();
	nop();
	nop();
	nop();
	nop();

	GPIOC->CR2 = 0x00;
	GPIOC->CR1 = 0x00;
	GPIOC->DDR = 0x7F;
	GPIOC->DDR = 0x3F;
}

uint8_t count = 0;

@inline void usb_send_answer(void)
{
	GPIOC->ODR = 0x40;
	GPIOC->CR1 = 0xFF;
	GPIOC->CR2 = 0xFF;
	GPIOC->DDR = 0xFF;

	usb_tx_count = usb.tx_lenght;
	usb_tx_buffer_pointer = &usb.tx_buffer[0];

	usb_tx();

	nop();
	nop();
	nop();
	nop();
	nop();

	GPIOC->CR2 = 0x00;
	GPIOC->CR1 = 0x00;
	GPIOC->DDR = 0x3F;
}

@inline void usb_copy_rx_buffer(void)
{
	uint8_t index = 0;

	for (index = 0; index < 16; index++)
		usb.rx_buffer[index] = usb_rx_buffer[index];
}

void usb_rx_ok(void)
{
	switch (usb_rx_buffer[1])
	{
		case (USB_PID_SETUP):
		{
			usb.state = USB_STATE_SETUP;
			break;
		}
		
		case (USB_PID_OUT):
		{
			usb.state = USB_STATE_OUT;
			break;
		}
		
		case (USB_PID_IN):
		{
			if((usb_rx_buffer[2]&0x7F)==usb.device_address)
			{
				if(usb.setup_address!=0)
				{
					usb.device_address=usb.setup_address;
				}
				if(usb_ready_reg==1)			
					usb_ready=1;
				if (usb.event == USB_EVENT_READY_DATA_IN)
				{
					usb_send_answer();
					usb.state = USB_STATE_IN;
					usb.event = USB_EVENT_WAIT_DATA_IN;
				}
				else
				{
					usb_send_nack();
				}
			}
			
			break;
		}
		
		case (USB_PID_DATA0):
		{
			if (usb.state == USB_STATE_SETUP)
			{
				usb_send_ack();
				usb_copy_rx_buffer();
				usb.event = USB_EVENT_RECEIVE_SETUP_DATA;
			}
			else if (usb.state == USB_STATE_OUT)
			{
				usb_send_ack();
				usb.event = USB_EVENT_NO;
			}
			break;
		}
		
		case (USB_PID_DATA1):
		{
			if (usb.state == USB_STATE_OUT)
			{
				usb_send_ack();
				usb.event = USB_EVENT_NO;
			}

			break;
		}
		
		case (USB_PID_ACK):
		{
			break;
		}
		
		case (USB_PID_NACK):
		{
			break;
		}
		
		default:
		{
			usb.state = USB_STATE_IDLE;
			break;
		}
	}
}

void usb_calc_crc16(uint8_t * buffer, uint8_t lenght)
{
	uint16_t crc = 0xFFFF;
	uint8_t index;
	uint8_t i;

	for (index = 0; index < lenght; index++)
	{
		crc ^= *buffer++;

		for (i = 8; i--;)
		{
			if ((crc & BIT(0)) != 0)
			{
				crc >>= 1;
				crc ^= 0xA001;
			}
			else
			{
				crc >>= 1;
			}
		}
	}

	crc = ~crc;

	*buffer++ = (uint8_t) crc;
	*buffer = (uint8_t) (crc >> 8);
}

void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode)
{
	uint8_t index;
	
	if(mode)
		data_sync = USB_PID_DATA1;
		
	while (lenght > 0)
	{
		usb.tx_buffer[0] = 0x80;
		usb.tx_buffer[1] = data_sync;
		
		if (lenght >= 8)
		{
			usb.tx_lenght = 12;

			for (index = 2; index < 10; index++)
				usb.tx_buffer[index] = *buffer++;
			lenght -= 8;
		}
		else
		{
			usb.tx_lenght = (uint8_t) (4 + lenght);
			for (index = 2; index < 2 + lenght; index++)
				usb.tx_buffer[index] = *buffer++;
			lenght = 0;
		}

		// calculate CRC
		usb_calc_crc16(&usb.tx_buffer[2], (uint8_t) (usb.tx_lenght - 4));

		// toggle data0 data1
		if (data_sync == USB_PID_DATA1)
			data_sync = USB_PID_DATA0;
		else
			data_sync = USB_PID_DATA1;

		// data is available to send out 
		usb.event = USB_EVENT_READY_DATA_IN;
		
		// wait for transmission and then start the next
		while (usb.event == USB_EVENT_READY_DATA_IN)
		{
			//if ((usb.state != USB_STATE_IN)&&(usb.state != USB_STATE_SETUP))
			if (usb.event == USB_EVENT_WAIT_DATA_IN)
				break;
		}
	}
}

void usb_send_null_data(void)
{
	usb.tx_lenght = 4;
	usb.tx_buffer[0] = 0x80;
	usb.tx_buffer[1] = USB_PID_DATA1;
	usb.tx_buffer[2] = 0;
	usb.tx_buffer[3] = 0;
	
	usb.event = USB_EVENT_READY_DATA_IN;
}

void usb_send_stall(void)
{
	usb.tx_lenght = 2;
	usb.tx_buffer[0] = 0x80;
	usb.tx_buffer[1] = USB_PID_STALL;
	
	usb.event = USB_EVENT_READY_DATA_IN;
}

uint8_t counter_a = 0;
uint8_t counter_b = 0;
uint8_t counter_all = 0;

uint8_t tx_counter = 0;

void usb_process(void)
{
	if (usb.event == USB_EVENT_RECEIVE_SETUP_DATA)
	{
		switch (usb.rx_buffer[2])
		{
			case (USB_REQUEST_TYPE_FROM_DEVICE): //0x80
			{
				switch (usb.rx_buffer[3])
				{
					case (USB_REQUEST_GET_DESCRIPTOR):
					{
						switch (usb.rx_buffer[5])
						{
							case (1):	// device descriptor
							{
								usb_send_data(&usb_device_descriptor[0], ARRAY_LENGHT(usb_device_descriptor), 1);
								break;
							}
							case (2):	// configuration descriptor
							{
								if(usb.rx_buffer[8]<ARRAY_LENGHT(usb_configuration_descriptor))
									usb_send_data(&usb_configuration_descriptor[0],usb.rx_buffer[8], 1);
								else
									usb_send_data(&usb_configuration_descriptor[0], ARRAY_LENGHT(usb_configuration_descriptor), 1);
								break;
							}
						}
						break;
					}
				}
				break;
			}
			case (USB_REQUEST_TYPE_TO_DEVICE):	//0x00
			{
				switch (usb.rx_buffer[3])
				{
					case (USB_REQUEST_SET_ADDRESS):	//0x05
					{
						usb.setup_address = usb.rx_buffer[4];
						usb_send_null_data();
						break;
					}
					case (USB_REQUEST_SET_CONFIGURATION):	//0x09
					{
						usb_send_null_data();
						break;
					}
				}
				break;
			}
			case (0x81):
			{
				switch (usb.rx_buffer[3])
				{
					case(USB_REQUEST_GET_DESCRIPTOR):
					{
						usb_send_data(&usb_report_descriptor[0], ARRAY_LENGHT(usb_report_descriptor), 1);
						usb_ready_reg=1;
						break;
					}
					default: break;
				}
				break;
			}
			case (0x21):
			{
				usb_send_stall();
				break;
			}
		}
	}
}
