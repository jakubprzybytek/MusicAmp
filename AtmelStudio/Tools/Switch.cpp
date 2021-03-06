/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "Switch.hpp"

void InterruptSwitch::init(uint8_t pinCtrlValue) {
	port->DIRCLR = pin;
	*(pinCtrl) = pinCtrlValue;
	port->INT0MASK |= pin;
}

void InterruptSwitch::enableInterrupt() {
	port->INTCTRL = PORT_INT0LVL_LO_gc;
	port->INTFLAGS = PORT_INT0IF_bm;
}

void InterruptSwitch::disableInterrupt() {
	port->INTCTRL = PORT_INT0LVL_OFF_gc;
}

bool InterruptSwitch::isUp() {
	return port->IN & pin;
}
