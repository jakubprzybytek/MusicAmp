/*
 * VolumeControl.h
 *
 * Created: 2017-07-14 19:50:01
 *  Author: Rodos
 */ 


#ifndef VOLUMECONTROL_H_
#define VOLUMECONTROL_H_

#include <avr/io.h>

#include "../Audio/PGA4311.hpp"

#define VOL_STEEP 5

class VolumeControl {

private:
	PGA4311 pga4311;

	uint8_t audioVolume; // in percentage

public:
	VolumeControl() : pga4311(&SPIE, &PORTE, &PORTE, PIN3_bm) {}

	void init();

	void stepUp();
	void stepDown();
	void setVolume(uint8_t newAudioVolume);

	uint8_t getCurrentVolume();

	void mute();
	void unmute();
	void muteTgl();

};

#endif /* VOLUMECONTROL_H_ */