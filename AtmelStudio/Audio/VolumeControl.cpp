/*
 * VolumeControl.cpp
 *
 * Created: 2017-07-14 19:50:18
 *  Author: Rodos
 */ 

#include "VolumeControl.hpp"

#define VOL_STEEP 5
#define VOL_MAX 100

#define SUB_RAW_MIN (192 - 50)
#define SUB_RAW_MAX (192 - 0)

void VolumeControl::init(uint8_t newAudioVolume, uint8_t newBassVolume) {
	PORTE.DIRSET = PIN0_bm | PIN1_bm;
	pga4311.init();
	setVolume(newAudioVolume, newBassVolume);
}

void VolumeControl::setVolume(uint8_t newAudioVolume, uint8_t newBassVolume) {
	audioVolume = newAudioVolume;
	bassVolume = newBassVolume;
	uint8_t audioRaw = audioVolume * 2.5;
	uint8_t bassRaw = SUB_RAW_MIN + (SUB_RAW_MAX - SUB_RAW_MIN) * bassVolume / 100;
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
