
#include "port.h"

#include <QThread>

void txPinHigh()
{
	
}

void txPinLow()
{
	
}

void portInit()
{
	
}

void serial_rx_on()
{
	
}

void serial_rx_off()
{
	
}

void serial_tx_off()
{
	
}

uint8_t serialRead0x55()
{
	return 0x55;
}

uint8_t serialRead0xCC()
{
	return 0xCC;
}

uint8_t serialRead(int* err)
{
	*err = 0;
	delayMs(10);
	return rand() % 256;
}

void serialWrite(uint8_t data)
{
	(void)data;
}

void serial_on()
{
	
}

void delayMs(uint32_t delay)
{
	QThread::msleep(delay);
}
