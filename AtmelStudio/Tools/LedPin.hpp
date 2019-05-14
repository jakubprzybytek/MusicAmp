/*
 * LedPin.h
 *
 * Created: 2019-05-14 18:30:53
 *  Author: Chipotle
 */ 

#include <avr/io.h>

#ifndef LEDPIN_H_
#define LEDPIN_H_
 
class LedPin {

private:
	PORT_t* port;
	uint8_t pin;

public:
	LedPin (PORT_t* port, uint8_t pin) : port(port), pin(pin) {}

	void init();
	
	void turnOn();
	void turnOff();
	void toggle();
};

#endif /* LEDPIN_H_ */