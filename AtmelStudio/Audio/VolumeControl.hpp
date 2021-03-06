/*
 * VolumeControl.h
 *
 * Created: 2017-07-14 19:50:01
 *  Author: Rodos
 */ 


#ifndef VOLUMECONTROL_H_
#define VOLUMECONTROL_H_

#include <avr/io.h>

#include "../Devices/PGA4311.hpp"

class VolumeControl {

private:
	PGA4311 pga4311;

	uint8_t audioVolume; // in percentage
	uint8_t bassVolume; // in percentage

public:
	VolumeControl() : 
		pga4311(&SPIE, &PORTE, &PORTE, PIN3_bm),
		audioVolume(0),
		bassVolume(0) {}

private:
	void setVolume(uint8_t newAudioVolume, uint8_t newBassVolume);

public:
	void init(uint8_t initialAudioVolume, uint8_t initialBassVolume);

	void stepAudioUp();
	void stepAudioDown();
	void stepBassUp();
	void stepBassDown();

	uint8_t getCurrentAudioVolume();
	uint8_t getCurrentBassVolume();

	void mute();
	void unmute();

};

#endif /* VOLUMECONTROL_H_ */