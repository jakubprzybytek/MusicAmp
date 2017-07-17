/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 

#include "../Tools/Switch.hpp"

#ifndef DEBUG_H_
#define DEBUG_H_

class Debug {

public:
	InterruptSwitch switcher;

	Debug() : switcher(&PORTA, PIN3_bm, &(PORTA.PIN3CTRL)) {}

	void init();

	void toggleLed();

	void blink(uint8_t count);

};

#endif /* DEBUG_H_ */