/* 
* TapeLoopControl.cpp
*
* Created: 2019-05-14 18:41:00
* Author: Chipotle
*/

#include "TapeLoopControl.h"

void TapeLoopControl::init() {
	switcher.init(PORT_OPC_PULLUP_gc | PORT_ISC_BOTHEDGES_gc);
	led.init();
}
