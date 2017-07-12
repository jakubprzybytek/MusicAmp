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
	// led
	PORTA.DIRSET = LED_PIN_bm;

	// switch
	PORTA.DIRCLR = SWITCH_PIN;
	PORTA.PIN3CTRL = PORT_OPC_PULLUP_gc | PORT_ISC_FALLING_gc;
	PORTA.INT0MASK = SWITCH_PIN;
	PORTA.INTCTRL = PORT_INT0LVL_LO_gc;
	PORTA.INTFLAGS = PORT_INT0IF_bm;
}

void Debug::toggleLed() {
	PORTA.OUTTGL = LED_PIN_bm;
}
