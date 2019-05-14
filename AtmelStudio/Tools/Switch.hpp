/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 


#ifndef SWITCH_H_
#define SWITCH_H_

class InterruptSwitch {

private:
	PORT_t* port;
	uint8_t pin;
	register8_t* pinCtrl;

public:
	InterruptSwitch (PORT_t* port, uint8_t pin, register8_t* pinCtrl) : port(port), pin(pin), pinCtrl(pinCtrl) {}

	void init(uint8_t pinCtrlValue = PORT_OPC_PULLUP_gc | PORT_ISC_LEVEL_gc);

	void enableInterrupt();
	void disableInterrupt();

	bool isUp();

};

#endif /* SWITCH_H_ */