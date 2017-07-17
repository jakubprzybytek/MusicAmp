/*
 * AnalogIndicator.hpp
 *
 * Created: 2017-06-17 17:44:24
 *  Author: Rodos
 */ 


#ifndef ANALOGINDICATOR_H_
#define ANALOGINDICATOR_H_

class AnalogIndicator {

private:
	DAC_t* dac;
	PORT_t* dacPort;
	uint8_t dacPin_bm;

public:
	AnalogIndicator(DAC_t* dac, PORT_t* dacPort, uint8_t dacPin_bm)
		: dac(dac), dacPort(dacPort), dacPin_bm(dacPin_bm) {};

	void init();

	void setPercentValue(uint8_t value);
	void setValue(uint16_t value);

};

#endif /* ANALOGINDICATOR_H_ */