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
#include "IO/InputSelector.hpp"
#include "IO/AnalogIndicator.hpp"

#include "Audio/VolumeControl.hpp"
#include "Monitor/PowerSupplyMonitor.hpp"

Debug debug;
Timer oscillationCancellingTimer(&TCC0, 600);
Timer heartbeat(&TCD0, 500);
uint16_t hearbeatCounter = 0;

Events events;

// outputs
AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);

// controllers
PowerControl powerControl;
InputSelector inputSelector;
VolumeControl volumeControl(33, 60);

// monitors
PowerSupplyMonitor powerSupplyMonitor;

#define ANALOG_INDICATOR_MODE_POWER 0x00
#define ANALOG_INDICATOR_MODE_OFF 0x01
uint8_t analogIndicatorMode = ANALOG_INDICATOR_MODE_POWER;

bool turnedOn = false;

// Main encoder interrupt: right
ISR (TCC1_CCA_vect) {
	TCC1.CNT = 8;
	events.setStatus(Events::ENCODER_MAIN_RIGHT);
}

// Main encoder interrupt: left
ISR (TCC1_OVF_vect) {
	events.setStatus(Events::ENCODER_MAIN_LEFT);
	TCC1.CNT = 8;
}

// Secondary encoder interrupt: right
ISR (TCD1_CCA_vect) {
	TCD1.CNT = 8;
	events.setStatus(Events::ENCODER_SECONDARY_RIGHT);
}

// Secondary encoder interrupt: left
ISR (TCD1_OVF_vect) {
	TCD1.CNT = 8;
	events.setStatus(Events::ENCODER_SECONDARY_LEFT);
}

/* *****************
 * TCC0: All Switch timer interrupt
 ***************** */
ISR (TCC0_OVF_vect) {
	processTimerInterrupt();
}

/* *****************
 * TCD0: Heartbeat timer interrupt
 ***************** */
ISR (TCD0_OVF_vect) {
	if (hearbeatCounter > 0) {
		hearbeatCounter--;
		if (hearbeatCounter == 0) {
			events.setStatus(Events::TIMER_DOWN);
		}
	}

	switch (analogIndicatorMode) {
		case ANALOG_INDICATOR_MODE_POWER:
			static float power;
			if (!powerSupplyMonitor.readPowerValue(&power)) {
				return;
			}
			analogIndicator.setPercentValue(power);
			break;
	}
}

/* *****************
 * Port A: Debug Switch 0 int
 ***************** */
ISR (PORTA_INT0_vect) {
	processSwitchInterrupt();

	debug.toggleLed();
	//inputSelector.nextInput();
	//volumeControl.muteTgl();
	
	static float power;
	if (!powerSupplyMonitor.readPowerValue(&power)) {
		return;
	}

	analogIndicator.setPercentValue(power);
}

/* *****************
 * Port C: Power Switch 0 int
 ***************** */
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

	// core features
	oscillationCancellingTimer.init();
	heartbeat.init();

	// IO
	powerControl.init();
	mainEncoder.InitMain();
	secondaryEncoder.InitSecondary();

	// outputs
	analogIndicator.init();

	// controllers
	inputSelector.init();
	volumeControl.init();

	// monitors
	powerSupplyMonitor.init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	heartbeat.enable();

	uint8_t eventsStatus;
	while(1)
	{
		eventsStatus = events.getStatus();

		if (eventsStatus == Events::ENCODER_MAIN_LEFT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, 3);

			volumeControl.stepAudioDown();
			analogIndicator.setPercentValue(volumeControl.getCurrentAudioVolume());
		}

		if (eventsStatus == Events::ENCODER_MAIN_RIGHT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, 3);

			volumeControl.stepAudioUp();
			analogIndicator.setPercentValue(volumeControl.getCurrentAudioVolume());
		}

		if (eventsStatus == Events::ENCODER_SECONDARY_LEFT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, 3);

			volumeControl.stepBassDown();
			analogIndicator.setPercentValue(volumeControl.getCurrentBassVolume());
		}

		if (eventsStatus == Events::ENCODER_SECONDARY_RIGHT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, 3);

			volumeControl.stepBassUp();
			analogIndicator.setPercentValue(volumeControl.getCurrentBassVolume());
		}

		if (eventsStatus == Events::TIMER_DOWN) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_POWER);
		}
	}
}

void setAnalogIndicatorMode(uint8_t newMode, uint8_t delay) {
	hearbeatCounter = delay * 4; // heartbeat every 1/4s
	analogIndicatorMode = newMode;
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
