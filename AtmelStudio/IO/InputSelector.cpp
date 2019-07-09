/*
 * Switch.cpp
 *
 * Created: 2017-06-28 22:00:45
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "InputSelector.hpp"

#define TAPE_LOOP_OUTPUT_PIN PIN3_bm
#define TAPE_LOOP_INPUT_PIN PIN4_bm

void InputSelector::init() {
	selectionButton.init();
	tapeLoopSwitch.init(PORT_OPC_PULLUP_gc | PORT_ISC_BOTHEDGES_gc);
	tapeLoopLed.init();

	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | TAPE_LOOP_OUTPUT_PIN | TAPE_LOOP_INPUT_PIN;
}

void InputSelector::enable() {
	selectionButton.enableInterrupt();
	tapeLoopSwitch.enableInterrupt();
	PORTF.OUTSET = currentInput;
}

void InputSelector::disable() {
	PORTF.OUTCLR = PIN0_bm | PIN1_bm | PIN2_bm;
	selectionButton.disableInterrupt();
	tapeLoopSwitch.disableInterrupt();
}

void InputSelector::nextInput() {
	PORTF.OUTCLR = currentInput;
	currentInput = currentInput == PIN2_bm ? PIN0_bm : (currentInput << 1);
	PORTF.OUTSET = currentInput;
}

void InputSelector::enableTapeLoop() {
	PORTF.OUTSET = TAPE_LOOP_OUTPUT_PIN;
	PORTF.OUTSET = TAPE_LOOP_INPUT_PIN;
	
	tapeLoopEnabled = true;
}

void InputSelector::disableTapeLoop() {
	PORTF.OUTCLR = TAPE_LOOP_OUTPUT_PIN;
	PORTF.OUTCLR = TAPE_LOOP_INPUT_PIN;

	tapeLoopEnabled = false;
}
