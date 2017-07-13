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
#include "Events.hpp"

#include "Tools/Timer.hpp"

#include "IO/Debug.hpp"
#include "IO/PowerControl.hpp"
#include "IO/Encoder.hpp"
#include "IO/AnalogIndicator.hpp"

#include "Audio/PGA4311.hpp"

#define VOL_STEEP 5

Timer oscillationCancellingTimer(&TCE1, 200);

Debug debug;
PowerControl powerControl;

Events events;

bool turnedOn = false;

uint8_t sleepTime = 1;
uint8_t vol = 10;

// Secondary encoder interrupt: right
ISR (TCC1_CCA_vect) {
	TCC1.CNT = 8;
	events.setStatus(Events::ENCODER_RIGHT);
}

// Secondary encoder interrupt: left
ISR (TCC1_OVF_vect) {
	TCC1.CNT = 8;
	events.setStatus(Events::ENCODER_LEFT);
}

// Main encoder interrupt: right
ISR (TCD1_CCA_vect) {
	TCD1.CNT = 8;
	events.setStatus(Events::ENCODER_RIGHT);
}

// Main encoder interrupt: left
ISR (TCD1_OVF_vect) {
	TCD1.CNT = 8;
	events.setStatus(Events::ENCODER_LEFT);
}

// Port A: Debug Switch 0 int
ISR (PORTA_INT0_vect) {
	processSwitchInterrupt();

	debug.toggleLed();
}

// Port C: Power Switch 0 int
ISR (PORTC_INT0_vect) {
	processSwitchInterrupt();

	if (turnedOn) {
		turnOff();
	} else {
		turnOn();
	}

	turnedOn = !turnedOn;
}

// TCE1: All Switch timer interrupt
ISR (TCE1_OVF_vect) {
	processTimerInterrupt();
}

void processSwitchInterrupt() {
	debug.switcher.disableInterrupt();
	powerControl.switcher.disableInterrupt();

	oscillationCancellingTimer.enable();
}

void processTimerInterrupt() {
	if (debug.switcher.isUp() && powerControl.switcher.isUp()) {
		oscillationCancellingTimer.disable();

		debug.switcher.enableInterrupt();
		powerControl.switcher.enableInterrupt();
	}
}

int main(void)
{
	Encoder mainEncoder(&TCC1);
	Encoder secondaryEncoder(&TCD1);
	AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);
	PGA4311 volumeControl(&SPIE, &PORTE, &PORTE, PIN3_bm);

	PORTE.DIRSET = PIN0_bm | PIN1_bm;
	PORTF.DIRSET = PIN0_bm | PIN1_bm | PIN2_bm | PIN3_bm | PIN4_bm;

	oscillationCancellingTimer.init();

	debug.init();
	powerControl.init();

	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();
	analogIndicator.Init();
	volumeControl.Init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	uint8_t eventsStatus;
	while(1)
	{
		eventsStatus = events.getStatus();

		if (eventsStatus == Events::ENCODER_LEFT) {
			vol = vol >= VOL_STEEP ? vol - VOL_STEEP : 0;
		}

		if (eventsStatus == Events::ENCODER_RIGHT) {
			vol = vol <= (100 - VOL_STEEP) ? vol + VOL_STEEP : 100;
		}

		analogIndicator.SetPercentValue(vol);
		volumeControl.SetVolume(vol * 2.5, vol * 2.5, vol * 2.5, vol * 2.5);

/*		
		
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
*/
	}
}

void turnOn() {
	powerControl.enableLight();
	powerControl.enablePower();

	debug.toggleLed();
}

void turnOff() {
	powerControl.disableLight();
	powerControl.disablePower();
}
