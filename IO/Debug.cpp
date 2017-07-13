/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "Debug.hpp"

#define LED_PIN_bm PIN2_bm;
#define SWITCH_PIN PIN3_bm;

void Debug::init() {

	PORTA.DIRSET = LED_PIN_bm;

	switcher.init();
}

void Debug::toggleLed() {
	PORTA.OUTTGL = LED_PIN_bm;
}
