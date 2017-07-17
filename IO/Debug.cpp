/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>
#include <util/delay.h>

#include "Debug.hpp"

#define LED_PIN_bm PIN2_bm;
#define SWITCH_PIN PIN3_bm;

#define LED_ON PORTA.OUTSET = LED_PIN_bm;
#define LED_OFF PORTA.OUTCLR = LED_PIN_bm;

void Debug::init() {
	PORTA.DIRSET = LED_PIN_bm;
	switcher.init();
}

void Debug::toggleLed() {
	PORTA.OUTTGL = LED_PIN_bm;
}

void Debug::blink(uint8_t count) {
	LED_ON
	_delay_ms(100);
	for (uint8_t i = 1; i < count; i++) {
		LED_OFF
		_delay_ms(100);
		LED_ON
		_delay_ms(100);
	}
	LED_OFF
}
