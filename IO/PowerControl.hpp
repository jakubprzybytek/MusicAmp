/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 


#ifndef POWER_CONTROL_H_
#define POWER_CONTROL_H_

class PowerControl {

public:
	void init();

	void processSwitchInterrupt();
	void processTimerInterrupt();

	void enablePower();
	void disablePower();

	void enableLight();
	void disableLight();

private:
	void enableInterrupt();
	void disableInterrupt();

	bool isSwitchUp();

};

#endif /* POWER_CONTROL_H_ */