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

public:
	Encoder(TC1_t * tc) : tc(tc) {};

	void InitMain();
	void InitSecondary();

private:
	void InitTimer();

};


#endif /* ENCODER_H_ */