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

void PowerSwitch::Init() {
	PORTC.DIRCLR = SWITCH_PIN;
	PORTC.DIRSET = LED_PIN;
	PORTC.PIN2CTRL = PORT_OPC_PULLUP_gc | PORT_ISC_FALLING_gc;
	PORTC.INT0MASK = SWITCH_PIN;
}

void PowerSwitch::EnableInterrupt() {
	PORTC.INTCTRL = PORT_INT0LVL_LO_gc;
	PORTC.INTFLAGS = PORT_INT0IF_bm;
}

void PowerSwitch::DisableInterrupt() {
	PORTC.INTCTRL = PORT_INT0LVL_OFF_gc;
}
	
bool PowerSwitch::IsUp() {
	return PORTC.IN & SWITCH_PIN;
}

void PowerSwitch::EnableLight() {
	PORTC.OUTSET = LED_PIN;
}

void PowerSwitch::DisableLight() {
	PORTC.OUTCLR = LED_PIN;
}
