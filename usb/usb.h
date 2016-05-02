#ifndef USB_H_
#define USB_H_

extern uint8_t usb_tx_count;

extern uint8_t usb_tx_buffer[16];


void usb_init(void);
void usb_process(void);
void usb_send_data(uint8_t * buffer, uint8_t lenght, uint8_t mode);


#endif /* USB_H_ */
