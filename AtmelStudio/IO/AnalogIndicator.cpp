/*
 * AnalogIndicator.cpp
 *
 * Created: 2017-06-17 17:44:15
 *  Author: Rodos
 */ 

#include <avr/io.h>

#include "AnalogIndicator.hpp"

#define SINGLE_STEEP 3190.0 / 100.0 // 3190 gives 100% on the display

void AnalogIndicator::init() {
	dacPort->DIRSET = dacPin_bm;
	dac->CTRLB = DAC_CHSEL_SINGLE_gc | !DAC_CH0TRIG_bm;
	dac->CTRLC = DAC_REFSEL_INT1V_gc;
	dac->CTRLA = DAC_CH0EN_bm | DAC_ENABLE_bm;
	
	while ( (dac->STATUS & DAC_CH0DRE_bm) == false );
	dac->CH0DATA = 0;
}

void AnalogIndicator::setPercentValue(uint8_t value) {
	dac->CH0DATA = value * SINGLE_STEEP;
}

void AnalogIndicator::setPercentValue(float value) {
	dac->CH0DATA = (uint16_t)(value * SINGLE_STEEP);
}

void AnalogIndicator::setValue(uint16_t value) {
	dac->CH0DATA = value;
}
