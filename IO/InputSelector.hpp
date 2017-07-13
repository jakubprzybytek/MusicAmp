/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 


#ifndef INPUT_SELECTOR_H_
#define INPUT_SELECTOR_H_

class InputSelector {

private:
	uint8_t currentInput;

public:
	InputSelector() : currentInput(PIN0_bm) {}

	void init();

	void nextInput();

};

#endif /* INPUT_SELECTOR_H_ */