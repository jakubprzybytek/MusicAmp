/*
 * MusicAmp.cpp
 *
 * Created: 2017-05-31 23:33:11
 *  Author: Rodos
 */
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "Inputs/Encoder.hpp"
#include "IO/AnalogIndicator.hpp"
#include "Audio/PGA4311.hpp"

#define VOL_STEEP 5

uint8_t sleepTime = 1;
uint8_t vol = 50;

// encoder interrupt
ISR (TCC1_CCA_vect) {
	TCC1.CNT = 8;
//	sleepTime -= 1;
	vol = vol <= (100 - VOL_STEEP) ? vol + VOL_STEEP : 100;
}

// encoder interrupt
ISR (TCC1_OVF_vect) {
	TCC1.CNT = 8;
//	sleepTime += 1;
	vol = vol >= VOL_STEEP ? vol - VOL_STEEP : 0;
}

int main(void)
{
	AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);
	PGA4311 volumeControl(&SPIE, &PORTE, &PORTE, PIN3_bm);

	PORTA.DIRSET = PIN2_bm | PIN5_bm;
	PORTC.DIRSET = PIN3_bm;
	PORTE.DIRSET = PIN0_bm | PIN1_bm;
	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

	analogIndicator.Init();
	volumeControl.Init();

	Encoder_Init(&TCC1);
	
	// enable interrupts
	PMIC.CTRL = PMIC_HILVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	while(1)
	{
		PORTA.OUTSET = PIN2_bm | PIN5_bm;
		PORTC.OUTCLR = PIN3_bm;
		PORTE.OUTSET = PIN0_bm | PIN1_bm;
		PORTF.OUTSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

		for (uint8_t i = 0; i < sleepTime; i++) {
			_delay_ms(100);
		}

		PORTA.OUTCLR = PIN2_bm | PIN5_bm;
		PORTC.OUTSET = PIN3_bm;
		PORTE.OUTCLR = PIN0_bm | PIN1_bm;
		PORTF.OUTCLR = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

		for (uint8_t i = 0; i < sleepTime; i++) {
			_delay_ms(100);
		}

		analogIndicator.SetPercentValue(vol);

		volumeControl.SetVolume(vol * 2.5, vol * 2.5, vol * 2.5, vol * 2.5);
	}
}