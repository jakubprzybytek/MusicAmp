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
#include "IO/Encoder.hpp"
#include "IO/PowerControl.hpp"
#include "IO/InputSelector.hpp"
#include "IO/TapeLoopControl.h"
#include "IO/AnalogIndicator.hpp"

#include "Audio/VolumeControl.hpp"
#include "Monitor/PowerSupplyMonitor.hpp"

#define ALTERNATIVE_ANALOG_INDICATOR_MODE_TIME 2

Debug debug;
Timer oscillationCancellingTimer(&TCC0, 600);
Timer heartbeat(&TCD0, 500);
uint16_t hearbeatCounter = 0;

Events events;

// inputs
Encoder mainEncoder(&TCC1, 0);
Encoder secondaryEncoder(&TCD1, 2);

// outputs
AnalogIndicator analogIndicator(&DACB, &PORTB, PIN2_bm);

// controllers
PowerControl powerControl;
InputSelector inputSelector;
TapeLoopControl tapeLoopControl;
VolumeControl volumeControl(33, 60);

// sensors
PowerSupplyMonitor powerSupplyMonitor;

enum AnalogIndicatorMode {
	ANALOG_INDICATOR_MODE_POWER,
	ANALOG_INDICATOR_MODE_OFF
};
uint8_t analogIndicatorMode = ANALOG_INDICATOR_MODE_POWER;

bool turnedOn = false;

/* *****************
 * Main encoder interrupt: right
 ***************** */
ISR (TCC1_CCA_vect) {
	TCC1.CNT = 8;
	events.submit(ENCODER_MAIN_RIGHT);
}

/* *****************
 * Main encoder interrupt: left
 ***************** */
ISR (TCC1_OVF_vect) {
	events.submit(ENCODER_MAIN_LEFT);
	TCC1.CNT = 8;
}

/* *****************
 * Secondary encoder interrupt: right
 ***************** */
ISR (TCD1_CCA_vect) {
	TCD1.CNT = 8;
	events.submit(ENCODER_SECONDARY_RIGHT);
}

/* *****************
 * Secondary encoder interrupt: left
 ***************** */
ISR (TCD1_OVF_vect) {
	TCD1.CNT = 8;
	events.submit(ENCODER_SECONDARY_LEFT);
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
			events.submit(TIMER_DOWN);
		}
	}

	switch (analogIndicatorMode) {
		case ANALOG_INDICATOR_MODE_POWER:
			static float power;
			if (!powerSupplyMonitor.readPowerValue(&power)) {
				analogIndicator.setPercentValue((uint8_t)0); // delete me
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

	//debug.toggleLed();
	debug.blink(1);
	inputSelector.nextInput();
	//volumeControl.muteTgl();
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

/* *****************
 * Port D: Input Selector Switch and Tape Loop Switch 0 int
 ***************** */
ISR (PORTD_INT0_vect) {
	processSwitchInterrupt();

	if (!tapeLoopControl.switcher.isUp()) {
		enableTapeLoop();
	} else {
		disableTapeLoop();
	}

	if (!inputSelector.button.isUp()) {
		debug.blink(2);
	}
}

void processSwitchInterrupt() {
	debug.switcher.disableInterrupt();
	powerControl.mainPowerSwitch.disableInterrupt();
	inputSelector.button.disableInterrupt();

	oscillationCancellingTimer.enable();
}

void processTimerInterrupt() {
	if (debug.switcher.isUp() && powerControl.mainPowerSwitch.isUp() && inputSelector.button.isUp()) {
		oscillationCancellingTimer.disable();

		debug.switcher.enableInterrupt();
		powerControl.mainPowerSwitch.enableInterrupt();
		inputSelector.button.enableInterrupt();
	}
}

int main(void)
{
	debug.init();

	// core features
	oscillationCancellingTimer.init();
	heartbeat.init();

	// Basic inputs
	mainEncoder.initMain();
	secondaryEncoder.initSecondary();

	// Basic outputs
	analogIndicator.init();

	// controllers
	volumeControl.init();

	// monitors
	powerSupplyMonitor.init();

	// integrated controllers
	powerControl.init();
	inputSelector.init();
	tapeLoopControl.init();

	// enable interrupts
	PMIC.CTRL = PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm;
	sei();

	heartbeat.enable();

	while(1) {
		Event event = events.get();

		if (event == ENCODER_MAIN_LEFT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, ALTERNATIVE_ANALOG_INDICATOR_MODE_TIME);

			volumeControl.stepAudioDown();
			analogIndicator.setPercentValue(volumeControl.getCurrentAudioVolume());
		}

		if (event == ENCODER_MAIN_RIGHT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, ALTERNATIVE_ANALOG_INDICATOR_MODE_TIME);

			volumeControl.stepAudioUp();
			analogIndicator.setPercentValue(volumeControl.getCurrentAudioVolume());
		}

		if (event == ENCODER_SECONDARY_LEFT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, ALTERNATIVE_ANALOG_INDICATOR_MODE_TIME);

			volumeControl.stepBassDown();
			analogIndicator.setPercentValue(volumeControl.getCurrentBassVolume());
		}

		if (event == ENCODER_SECONDARY_RIGHT) {
			setAnalogIndicatorMode(ANALOG_INDICATOR_MODE_OFF, ALTERNATIVE_ANALOG_INDICATOR_MODE_TIME);

			volumeControl.stepBassUp();
			analogIndicator.setPercentValue(volumeControl.getCurrentBassVolume());
		}

		if (event == TIMER_DOWN) {
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
	mainEncoder.enable();
	secondaryEncoder.enable();

	_delay_ms(100);
	powerControl.enablePower();

	_delay_ms(100);
	if (!tapeLoopControl.switcher.isUp()) {
		enableTapeLoop();
	}
	
	_delay_ms(50);
	volumeControl.unmute();

	debug.blink(1);
}

void turnOff() {
	volumeControl.mute();
	disableTapeLoop();
	mainEncoder.disable();
	secondaryEncoder.disable();

	_delay_ms(100);
	powerControl.disablePower();

	_delay_ms(100);
	powerControl.disableLight();

	debug.blink(2);
}

void enableTapeLoop() {
	tapeLoopControl.led.turnOn();
}

void disableTapeLoop() {
	tapeLoopControl.led.turnOff();
}
