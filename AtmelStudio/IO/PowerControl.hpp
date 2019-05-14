/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 

#include "../Tools/Switch.hpp"

#ifndef POWER_CONTROL_H_
#define POWER_CONTROL_H_

class PowerControl {

public:
	InterruptSwitch mainPowerSwitch;

	PowerControl() : mainPowerSwitch(&PORTC, PIN2_bm, &(PORTC.PIN2CTRL)) {}

	void init();

	void enablePower();
	void disablePower();

	void enableLight();
	void disableLight();

};

#endif /* POWER_CONTROL_H_ */