/*
 * Encoder.cpp
 *
 * Created: 2017-06-01 20:10:56
 *  Author: Rodos
 */ 
#include <avr/io.h>

void Encoder_Init(TC1_t * TC) {
	// set up port pins
	PORTD.DIRCLR = PIN2_bm | PIN3_bm;
	PORTD.PIN2CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	PORTD.PIN3CTRL = PORT_ISC_LEVEL_gc | PORT_OPC_PULLUP_gc;
	
	// set up event channel
	EVSYS.CH0MUX = EVSYS_CHMUX_PORTD_PIN2_gc;
	EVSYS.CH0CTRL = EVSYS_QDEN_bm |	EVSYS_DIGFILT_8SAMPLES_gc;

	// set up counter
	TC->INTCTRLA = TC_OVFINTLVL_LO_gc;
	TC->INTCTRLB = TC_CCAINTLVL_LO_gc;
	TC->CTRLA = TC_CLKSEL_EVCH0_gc;
	TC->CTRLD = TC_EVACT_QDEC_gc | TC_EVSEL_CH0_gc;
	TC->CCA = 5;
	TC->CNT = 8;
	TC->PER = 11;
}