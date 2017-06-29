/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 


#ifndef SWITCH_H_
#define SWITCH_H_

class PowerSwitch {


public:
	void init();

	void processSwitchInterrupt();
	void processTimerInterrupt();

	void enableLight();
	void disableLight();

private:
	void enableInterrupt();
	void disableInterrupt();

	bool isSwitchUp();

};

#endif /* SWITCH_H_ */