
#pragma once

#include <inttypes.h>

#ifndef ARRAY_SIZE
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
#endif


void portInit();
void txPinHigh();
void txPinLow();
void serial_rx_on();
void serial_rx_off();
void serial_tx_off();
uint8_t serialRead();
uint8_t serialRead0x55();
uint8_t serialRead0xCC();
void serialWrite(uint8_t data);
void serial_on();
void delayMs(uint32_t delay);
