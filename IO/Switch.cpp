/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "Switch.hpp"

#define SWITCH_PIN PIN2_bm
#define LED_PIN PIN3_bm

void PowerSwitch::init() {
	PORTC.DIRCLR = SWITCH_PIN;
	PORTC.DIRSET = LED_PIN;
	PORTC.PIN2CTRL = PORT_OPC_PULLUP_gc | PORT_ISC_FALLING_gc;
	PORTC.INT0MASK = SWITCH_PIN;

	TCE1.PER = 500;
	TCE1.INTCTRLA = TC_OVFINTLVL_MED_gc;

	enableInterrupt();
}

void PowerSwitch::enableInterrupt() {
	PORTC.INTCTRL = PORT_INT0LVL_LO_gc;
	PORTC.INTFLAGS = PORT_INT0IF_bm;
}

void PowerSwitch::disableInterrupt() {
	PORTC.INTCTRL = PORT_INT0LVL_OFF_gc;
}

void PowerSwitch::processSwitchInterrupt() {
	disableInterrupt();
	TCE1.CTRLA = TC_CLKSEL_DIV1024_gc;
}

void PowerSwitch::processTimerInterrupt() {
	if (isSwitchUp()) {
		TCE1.CTRLA = TC_CLKSEL_OFF_gc;
		enableInterrupt();
	}
}

bool PowerSwitch::isSwitchUp() {
	return PORTC.IN & SWITCH_PIN;
}

void PowerSwitch::enableLight() {
	PORTC.OUTSET = LED_PIN;
}

void PowerSwitch::disableLight() {
	PORTC.OUTCLR = LED_PIN;
}
