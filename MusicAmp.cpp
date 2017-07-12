/*
 * MusicAmp.cpp
 *
 * Created: 2017-05-31 23:33:11
 *  Author: Rodos
 */
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "MusicAmp.h"

#include "IO/PowerControl.hpp"
#include "IO/Encoder.hpp"
#include "IO/AnalogIndicator.hpp"
#include "Audio/PGA4311.hpp"

#define LED_INIT PORTA.DIRSET = PIN2_bm;
#define LED_ON   PORTA.OUTSET = PIN2_bm;
#define LED_OFF  PORTA.OUTCLR = PIN2_bm;
#define LED_TGL  PORTA.OUTTGL = PIN2_bm;

#define VOL_STEEP 5

PowerControl powerControl;

bool turnedOn = false;

uint8_t sleepTime = 1;
uint8_t vol = 10;

// encoder interrupt
ISR (TCC1_CCA_vect) {
	TCC1.CNT = 8;
	vol = vol <= (100 - VOL_STEEP) ? vol + VOL_STEEP : 100;
}

// encoder interrupt
ISR (TCC1_OVF_vect) {
	TCC1.CNT = 8;
	vol = vol >= VOL_STEEP ? vol - VOL_STEEP : 0;
}

// encoder interrupt
ISR (TCD1_CCA_vect) {
	TCD1.CNT = 8;
	vol = vol <= (100 - VOL_STEEP) ? vol + VOL_STEEP : 100;
}

// encoder interrupt
ISR (TCD1_OVF_vect) {
	TCD1.CNT = 8;
	vol = vol >= VOL_STEEP ? vol - VOL_STEEP : 0;
}

// Power Switch timer interrupt
ISR (TCE1_OVF_vect) {
	powerControl.processTimerInterrupt();
}

// Power Switch 0 int
ISR (PORTC_INT0_vect) {
	powerControl.processSwitchInterrupt();

	if (turnedOn) {
		turnOff();
	} else {
		turnOn();
	}

	turnedOn = !turnedOn;
}

int main(void)
{
	Encoder mainEncoder(&TCC1);
	Encoder secondaryEncoder(&TCD1);
	AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);
	PGA4311 volumeControl(&SPIE, &PORTE, &PORTE, PIN3_bm);

	LED_INIT

	PORTE.DIRSET = PIN0_bm | PIN1_bm;
	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

	powerControl.init();

	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();
	analogIndicator.Init();
	volumeControl.Init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	while(1)
	{
		PORTE.OUTSET = PIN0_bm | PIN1_bm;
		PORTF.OUTSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

		for (uint8_t i = 0; i < sleepTime; i++) {
			_delay_ms(100);
		}

		PORTE.OUTCLR = PIN0_bm | PIN1_bm;
		PORTF.OUTCLR = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

		for (uint8_t i = 0; i < sleepTime; i++) {
			_delay_ms(100);
		}

		analogIndicator.SetPercentValue(vol);

		volumeControl.SetVolume(vol * 2.5, vol * 2.5, vol * 2.5, vol * 2.5);
	}
}

void turnOn() {
	powerControl.enableLight();
	powerControl.enablePower();

	LED_TGL
}

void turnOff() {
	powerControl.disableLight();
	powerControl.disablePower();
}
