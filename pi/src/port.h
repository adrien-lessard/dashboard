
#pragma once

#ifdef __arm__
#include <wiringPi.h>
#else
#include "fakeWiringPi.h"
#endif

#include <inttypes.h>

#ifndef ARRAY_SIZE
#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
#endif

const int txPin = 14;

void portInit();
void serial_rx_on();
void serial_rx_off();
void serial_tx_off();
uint8_t serialRead();
void serialWrite(uint8_t data);
void serial_on();
void delayMs(uint32_t delay);
