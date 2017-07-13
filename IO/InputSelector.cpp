/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "InputSelector.hpp"

void InputSelector::init() {
	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;
	PORTF.OUTSET = currentInput;
}

void InputSelector::nextInput() {
	PORTF.OUTCLR = currentInput;
	currentInput = currentInput == PIN2_bm ? PIN0_bm : (currentInput << 1);
	PORTF.OUTSET = currentInput;
}
