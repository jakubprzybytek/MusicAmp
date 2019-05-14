/*
 * Encoder.cpp
 *
 * Created: 2017-06-01 20:10:56
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "Encoder.hpp"

void Encoder::initMain() {
	// set up port pins
	PORTD.DIRCLR = PIN2_bm | PIN3_bm;
	PORTD.PIN2CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	PORTD.PIN3CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	
	// set up event channel
	EVSYS.CH0MUX = EVSYS_CHMUX_PORTD_PIN2_gc;
	EVSYS.CH0CTRL = EVSYS_QDEN_bm |	EVSYS_DIGFILT_8SAMPLES_gc;

	initTimer();
	tc->CTRLD = TC_EVACT_QDEC_gc | TC_EVSEL_CH0_gc;
}

void Encoder::initSecondary() {
	// set up port pins
	PORTB.DIRCLR = PIN4_bm | PIN5_bm;
	PORTB.PIN4CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	PORTB.PIN5CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	
	EVSYS.CH2MUX = EVSYS_CHMUX_PORTB_PIN4_gc;
	EVSYS.CH2CTRL = EVSYS_QDEN_bm |	EVSYS_DIGFILT_8SAMPLES_gc;

	initTimer();
	tc->CTRLD = TC_EVACT_QDEC_gc | TC_EVSEL_CH2_gc;
	//tc->CTRLA = TC_CLKSEL_EVCH2_gc;
}

void Encoder::initTimer() {
	// set up counter
	tc->INTCTRLA = TC_OVFINTLVL_LO_gc;
	tc->INTCTRLB = TC_CCAINTLVL_LO_gc;
	tc->CCA = 5;
	tc->CNT = 8;
	tc->PER = 11;
}

void Encoder::enable() {
	tc->CTRLA = TC_CLKSEL_EVCH0_gc + this->eventNumber;
}

void Encoder::disable() {
	tc->CTRLA = TC_CLKSEL_OFF_gc;
}

