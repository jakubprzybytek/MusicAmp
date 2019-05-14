/*
 * Encoder.h
 *
 * Created: 2015-09-15 22:36:31
 *  Author: Rodos
 */ 

#ifndef ENCODER_H_
#define ENCODER_H_

class Encoder {

private:
	TC1_t * tc;
	uint8_t eventNumber;

public:
	Encoder(TC1_t * tc, uint8_t eventNumber) : tc(tc), eventNumber(eventNumber) {};

	void initMain();
	void initSecondary();

private:
	void initTimer();

public:
	void enable();
	void disable();

};


#endif /* ENCODER_H_ */