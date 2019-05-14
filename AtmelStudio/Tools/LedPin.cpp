/*
 * LedPin.cpp
 *
 * Created: 2019-05-14 18:31:04
 *  Author: Chipotle
 */ 

#include "LedPin.hpp"

void LedPin::init() {
	port->DIRSET = pin;
}

void LedPin::turnOn() {
	port->OUTSET = pin;
}

void LedPin::turnOff() {
	port->OUTCLR = pin;
}

void LedPin::toggle() {
	port->OUTTGL = pin;
}
