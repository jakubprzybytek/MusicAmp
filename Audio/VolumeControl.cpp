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

void VolumeControl::setVolume(uint8_t newAudioVolume, uint8_t newBassVolume) {
	audioVolume = newAudioVolume;
	bassVolume = newBassVolume;
	uint8_t audioRaw = audioVolume * 2.5;
	uint8_t bassRaw = audioRaw * newBassVolume / 100.0;
	pga4311.setVolume(audioRaw, bassRaw, audioRaw, bassRaw);
}

void VolumeControl::stepAudioUp() {
	setVolume(audioVolume <= (VOL_MAX - VOL_STEEP) ? audioVolume + VOL_STEEP : VOL_MAX, bassVolume);
}

void VolumeControl::stepAudioDown() {
	setVolume(audioVolume >= VOL_STEEP ? audioVolume - VOL_STEEP : 0, bassVolume);
}

void VolumeControl::stepBassUp() {
	setVolume(audioVolume, bassVolume <= (VOL_MAX - VOL_STEEP) ? bassVolume + VOL_STEEP : VOL_MAX);
}

void VolumeControl::stepBassDown() {
	setVolume(audioVolume, bassVolume >= VOL_STEEP ? bassVolume - VOL_STEEP : 0);
}

uint8_t VolumeControl::getCurrentAudioVolume() {
	return audioVolume;
}

uint8_t VolumeControl::getCurrentBassVolume() {
	return bassVolume;
}

void VolumeControl::mute() {
	PORTE.OUTCLR = PIN0_bm | PIN1_bm;
}

void VolumeControl::unmute() {
	PORTE.OUTSET = PIN0_bm | PIN1_bm;
	setVolume(audioVolume, bassVolume);
}
