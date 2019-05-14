/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 

#ifndef INPUT_SELECTOR_H_
#define INPUT_SELECTOR_H_

#include "../Tools/Switch.hpp"

class InputSelector {

public:
	InterruptSwitch button;

private:
	uint8_t currentInput;

public:
	InputSelector() :
		button(&PORTD, PIN7_bm, &(PORTD.PIN7CTRL)),
		currentInput(PIN0_bm) {}

	void init();

	void nextInput();

};

#endif /* INPUT_SELECTOR_H_ */