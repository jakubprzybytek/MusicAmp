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

#include "IO/Switch.hpp"
#include "IO/Encoder.hpp"
#include "IO/AnalogIndicator.hpp"
#include "Audio/PGA4311.hpp"

#define LED_INIT PORTA.DIRSET = PIN2_bm;
#define LED_ON   PORTA.OUTSET = PIN2_bm;
#define LED_OFF  PORTA.OUTCLR = PIN2_bm;
#define LED_TGL  PORTA.OUTTGL = PIN2_bm;

#define VOL_STEEP 5

PowerSwitch powerSwitch;

bool turnedOn = false;

uint8_t sleepTime = 1;
uint8_t vol = 50;

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
	powerSwitch.processTimerInterrupt();
}

// Power Switch 0 int
ISR (PORTC_INT0_vect) {
	powerSwitch.processSwitchInterrupt();

	if (turnedOn) {
		turnOff();
	} else {
		turnOn();
	}

	turnedOn = !turnedOn;

	LED_TGL
	vol = vol <= (100 - VOL_STEEP) ? vol + VOL_STEEP : 0;
}

int main(void)
{
	Encoder mainEncoder(&TCC1);
	Encoder secondaryEncoder(&TCD1);
	AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);
	PGA4311 volumeControl(&SPIE, &PORTE, &PORTE, PIN3_bm);

	LED_INIT

	PORTA.DIRSET = PIN5_bm;
	PORTE.DIRSET = PIN0_bm | PIN1_bm;
	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

	powerSwitch.init();

	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();
	analogIndicator.Init();
	volumeControl.Init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	while(1)
	{
		PORTA.OUTSET = PIN5_bm;
		PORTE.OUTSET = PIN0_bm | PIN1_bm;
		PORTF.OUTSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

		for (uint8_t i = 0; i < sleepTime; i++) {
			_delay_ms(100);
		}

		PORTA.OUTCLR = PIN5_bm;
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
	powerSwitch.enableLight();
}

void turnOff() {
	powerSwitch.disableLight();
}
