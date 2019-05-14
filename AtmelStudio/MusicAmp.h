/*
 * MusicAmp.h
 *
 * Created: 2017-06-29 20:37:02
 *  Author: Rodos
 */ 


#ifndef MUSICAMP_H_
#define MUSICAMP_H_

void processSwitchInterrupt();
void processTimerInterrupt();

void setAnalogIndicatorMode(uint8_t newMode, uint8_t delay = 0);

void turnOn();
void turnOff();

void enableTapeLoop();
void disableTapeLoop();

#endif /* MUSICAMP_H_ */