/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "PowerControl.hpp"

#define TRIGGER_PIN PIN5_bm

void PowerControl::init() {
	PORTA.DIRSET = TRIGGER_PIN;

	powerLed.init();
	mainPowerSwitch.init();
	mainPowerSwitch.enableInterrupt();
}

void PowerControl::enablePower() {
	PORTA.OUTSET = TRIGGER_PIN;
}

void PowerControl::disablePower() {
	PORTA.OUTCLR = TRIGGER_PIN;
}

void PowerControl::enableLight() {
	powerLed.turnOn();
}

void PowerControl::disableLight() {
	powerLed.turnOff();
}
