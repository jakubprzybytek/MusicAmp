/* 
* TapeLoopControl.h
*
* Created: 2019-05-14 18:41:00
* Author: Chipotle
*/

#ifndef __TAPELOOPCONTROL_H__
#define __TAPELOOPCONTROL_H__

#include "../Tools/LedPin.hpp"
#include "../Tools/Switch.hpp"

class TapeLoopControl {

public:
	InterruptSwitch switcher;
	LedPin led;

public:
	TapeLoopControl() :
		switcher(&PORTD, PIN5_bm, &(PORTD.PIN5CTRL)),
		led(&PORTD, PIN6_bm) {}

	void init();

};

#endif //__TAPELOOPCONTROL_H__
