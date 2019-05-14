/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "PowerControl.hpp"

#define SWITCH_PIN PIN2_bm
#define LED_PIN PIN3_bm
#define TRIGGER_PIN PIN5_bm

void PowerControl::init() {
	PORTA.DIRSET = TRIGGER_PIN;
	PORTC.DIRSET = LED_PIN;

	mainPowerSwitch.init();
}

void PowerControl::enablePower() {
	PORTA.OUTSET = TRIGGER_PIN;
}

void PowerControl::disablePower() {
	PORTA.OUTCLR = TRIGGER_PIN;
}

void PowerControl::enableLight() {
	PORTC.OUTSET = LED_PIN;
}

void PowerControl::disableLight() {
	PORTC.OUTCLR = LED_PIN;
}
