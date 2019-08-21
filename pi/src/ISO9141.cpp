/**
 * Blabla c'est pas moi qui l'ai fait
 *
 */

#include "ISO9141.h"

#include <cstring>
#include <stdio.h>

#include "port.h"
#include "Notification.h"

#define USE_FAST_DELAYS

#ifdef USE_FAST_DELAYS
	#define AFTER_READ_DELAY_MS		1
	#define AFTER_WRITE_DELAY_MS	1
#else
	#define AFTER_READ_DELAY_MS		55
	#define AFTER_WRITE_DELAY_MS	10
#endif

void ISO9141::writeByte(uint8_t b)
{
	serial_rx_off();
	serialWrite(b);
	delayMs(AFTER_WRITE_DELAY_MS);		// ISO requires 5-20 ms delay between bytes.
	serial_rx_on();
}

// inspired by SternOBDII\code\checksum.c
uint8_t ISO9141::computeChecksum(uint8_t *data, uint8_t len)
{
	uint8_t i;
	uint8_t crc;

	crc = 0;
	for (i = 0; i < len; i++)
		crc = crc + data[i];

	return crc;
}

// inspired by SternOBDII\code\iso.c
int ISO9141::write(uint8_t *data, uint8_t len)
{
	uint8_t i, n;
	uint8_t buf[20];

	// ISO header
	buf[0] = 0x68;
	buf[1] = 0x6A;		// 0x68 0x6A is an OBD-II request
	buf[2] = 0xF1;		// our requester's address (off-board tool)
	// append message
	for (i = 0; i < len; i++)
		buf[i + 3] = data[i];

	// calculate checksum
	i += 3;
	buf[i] = ISO9141::computeChecksum(buf, i);

	// send char one by one
	n = i + 1;
	for (i = 0; i < n; i++)
	{
		ISO9141::writeByte(buf[i]);
	}

	return 0;
}

int ISO9141::readRawPrint()
{
	int len = -1;
	int err = 0;
	do {
		len ++;
		uint8_t byte = serialRead(&err);
		printf("%02X ", byte);
	} while(err == 0);
	printf("\n");
	return len;
}

// Read the command echo and the response
int ISO9141::read(uint8_t *data, uint8_t len)
{
	uint8_t i;
	uint8_t buf[20];
	int err;

	// header 3 bytes: [0x48] [destination=0x6B] [source=0x10]
	// data cmdlen+len bytes: [40+cmd0] {[cmd1] [cmd2] ...} [result]
	// checksum 1 bytes: [sum(header)+sum(data)]

	for (i = 0; i < 3 + 1 + len; i++)
		buf[i] = serialRead(&err);

	// test, skip header comparison
	// ignore failure for the moment (0x7f)
	// ignore crc for the moment

	// Command echo starts at offset 3, followed by response
	memcpy(data, buf + 3, len);

	delayMs(AFTER_READ_DELAY_MS);    // guarantee 55 ms pause between requests

	return len;
}

/* ISO 9141 init */
int ISO9141::init()
{
	uint8_t b;
	uint8_t kw1, kw2;
	int err;
	serial_tx_off(); //disable UART so we can "bit-Bang" the slow init.
	serial_rx_off();
	delayMs(3000); //k line should be free of traffic for at least two secconds.
	
	
	// drive K line high for 300ms
	txPinHigh();
	delayMs(300);

	// send 0x33 at 5 bauds
	// start bit
	printf("Bit-banging 0x33...\n");
	Notification::notify("Bit-banging 0x33...");
	txPinLow();
	delayMs(200);
	// data
	b = 0x33;
	for (uint8_t mask = 0x01; mask; mask <<= 1)
	{
		if (b & mask) // choose bit
			txPinHigh();
		else
			txPinLow();
		delayMs(200);
	}
	// stop bit + 60 ms delay
	txPinHigh();
	delayMs(260);

	// switch now to 10400 bauds
	printf("Serial ON\n");
	Notification::notify("Serial ON");
	serial_on();

	// wait for 0x55 from the ECU (up to 300ms)
	//since our time out for reading is 125ms, we will try it three times
	for (int i = 0; i < 3; i++)
	{
		printf("Reading response from ECU...\n");
		Notification::notify("Reading ECU response");
		b = serialRead0x55();
		if (b != 0)
			break;
	}

	if (b != 0x55) {
		printf("Did not get 0x55 from ECU, got 0x%02X instead\n", b);
		Notification::notify("ECU response error");
		return -1;
	}

	// wait for kw1 and kw2
	kw1 = serialRead(&err);
	printf("kw1: 0x%02X\n", kw1);

	kw2 = serialRead(&err);
	printf("kw2: 0x%02X\n", kw2);
	delayMs(25); // TODO: nécessaire?

	// sent ~kw2 (invert of last keyword)
	writeByte(~kw2);
	
	// ECU answer by 0xCC (~0x33)
	b = serialRead0xCC();
	if (b != 0xCC) {
		printf("Did not get 0xCC from ECU, got 0x%02X instead\n", b);
		Notification::notify("Keyword response error");
		return -1;
	}

	// init OK!
	return 0;
}
