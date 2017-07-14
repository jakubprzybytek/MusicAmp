/*
 * VolumeControl.cpp
 *
 * Created: 2017-07-14 19:50:18
 *  Author: Rodos
 */ 

#include "VolumeControl.hpp"

void VolumeControl::init() {
	
	PORTE.DIRSET = PIN0_bm | PIN1_bm;

	pga4311.init();
}

void VolumeControl::setVolume(uint8_t newAudioVolume) {
	audioVolume = newAudioVolume;
	pga4311.setVolume(audioVolume * 2.5, audioVolume * 2.5, audioVolume * 2.5, audioVolume * 2.5);
}

void VolumeControl::stepUp() {
	setVolume(audioVolume <= (100 - VOL_STEEP) ? audioVolume + VOL_STEEP : 100);
}

void VolumeControl::stepDown() {
	setVolume(audioVolume >= VOL_STEEP ? audioVolume - VOL_STEEP : 0);
}

uint8_t VolumeControl::getCurrentVolume() {
	return audioVolume;
}

void VolumeControl::mute() {
	PORTE.OUTCLR = PIN0_bm | PIN1_bm;
}

void VolumeControl::unmute() {
	PORTE.OUTSET = PIN0_bm | PIN1_bm;
}

void VolumeControl::muteTgl() {
	PORTE.OUTTGL = PIN0_bm | PIN1_bm;
}
