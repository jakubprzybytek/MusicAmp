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

#include "Monitor/MCP3426.hpp"

Debug debug;
Timer oscillationCancellingTimer(&TCE1, 400);

Events events;

// outputs
AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);

// controllers
PowerControl powerControl;
InputSelector inputSelector;
VolumeControl volumeControl;

// monitors
MCP3426 mcp3426(&TWIC);

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

// TCE1: All Switch timer interrupt
ISR (TCE1_OVF_vect) {
	processTimerInterrupt();
}

// Port A: Debug Switch 0 int
ISR (PORTA_INT0_vect) {
	processSwitchInterrupt();

	debug.toggleLed();
	inputSelector.nextInput();
	//volumeControl.muteTgl();

	uint16_t voltage, current;

	uint8_t status = mcp3426.read(&current, &voltage);
	if (status == MCP_OK) {
		analogIndicator.setPercentValue(voltage / 5);
	}
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

	debug.init();
	oscillationCancellingTimer.init();

	powerControl.init();
	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();

	// outputs
	analogIndicator.init();

	// controllers
	inputSelector.init();
	volumeControl.init();

	// monitors
	mcp3426.init();

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

		analogIndicator.setPercentValue(volumeControl.getCurrentVolume());
	}
}

void turnOn() {
	powerControl.enableLight();
	_delay_ms(100);
	powerControl.enablePower();
	_delay_ms(100);
	volumeControl.unmute();

	debug.blink(1);
}

void turnOff() {
	volumeControl.mute();
	powerControl.disableLight();
	powerControl.disablePower();

	debug.blink(2);
}
