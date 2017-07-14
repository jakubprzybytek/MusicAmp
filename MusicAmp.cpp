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
#include "IO/InputSelector.hpp"
#include "IO/VolumeControl.hpp"

Debug debug;
Timer oscillationCancellingTimer(&TCE1, 200);

Events events;

// controllers
PowerControl powerControl;
InputSelector inputSelector;
VolumeControl volumeControl;

bool turnedOn = false;

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
	inputSelector.nextInput();
	volumeControl.muteTgl();
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
	// inputs
	Encoder mainEncoder(&TCC1);
	Encoder secondaryEncoder(&TCD1);

	// outputs
	AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);

	debug.init();
	oscillationCancellingTimer.init();

	powerControl.init();
	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();

	analogIndicator.Init();

	inputSelector.init();
	volumeControl.init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	uint8_t eventsStatus;
	while(1)
	{
		eventsStatus = events.getStatus();

		if (eventsStatus == Events::ENCODER_LEFT) {
			volumeControl.stepDown();
		}

		if (eventsStatus == Events::ENCODER_RIGHT) {
			volumeControl.stepUp();
		}

		analogIndicator.SetPercentValue(volumeControl.getCurrentVolume());
	}
}

void turnOn() {
	powerControl.enableLight();
	_delay_ms(100);
	powerControl.enablePower();
	_delay_ms(100);
	volumeControl.unmute();

	debug.toggleLed();
}

void turnOff() {
	volumeControl.mute();
	powerControl.disableLight();
	powerControl.disablePower();
}
