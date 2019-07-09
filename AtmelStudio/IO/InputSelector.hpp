/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 

#ifndef INPUT_SELECTOR_H_
#define INPUT_SELECTOR_H_

#include "../Tools/Switch.hpp"
#include "../Tools/LedPin.hpp"

class InputSelector {

public:
	InterruptSwitch selectionButton;
	InterruptSwitch tapeLoopSwitch;
	LedPin tapeLoopLed;

private:
	uint8_t currentInput;
	bool tapeLoopEnabled;

public:
	InputSelector() :
		selectionButton(&PORTD, PIN7_bm, &(PORTD.PIN7CTRL)),
		tapeLoopSwitch(&PORTD, PIN5_bm, &(PORTD.PIN5CTRL)),
		tapeLoopLed(&PORTD, PIN6_bm),
		currentInput(PIN0_bm),
		tapeLoopEnabled(false) {}

	void init();
	void enable();
	void disable();

	void nextInput();

	void enableTapeLoop();
	void disableTapeLoop();
	bool isTapeLoopEnabled() { return this->tapeLoopEnabled; }
};

#endif /* INPUT_SELECTOR_H_ */