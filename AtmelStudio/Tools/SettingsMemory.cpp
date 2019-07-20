/*
 * EEPROM.cpp
 *
 * Created: 2019-03-02 18:44:44
 *  Author: Chipotle
 */ 

#include "SettingsMemory.hpp"

void SettingsMemory::init() {
	EEPROM_DisableMapping();
}

void SettingsMemory::loadData(uint8_t* audioVolume, uint8_t* subVolume, uint8_t* activeInputNumber) {
	uint8_t byteAddr = 0;

	uint8_t storedDataVersion = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);

	((uint8_t*) &eepromWrites)[0] = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);
	((uint8_t*) &eepromWrites)[1] = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);

	if (storedDataVersion != SETTINGS_EEPROM_DATA_VERSION) {
		return;
	}

	*audioVolume = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);
	*subVolume = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);
	*activeInputNumber = EEPROM_ReadByte(SETTINGS_EEPROM_PAGE, byteAddr++);
}

void SettingsMemory::storeData(uint8_t audioVolume, uint8_t subVolume, uint8_t activeInputNumber) {
	uint8_t byteAddr = 0;
	eepromWrites++;

	eepromPageBuffer[byteAddr++] = SETTINGS_EEPROM_DATA_VERSION;
	eepromPageBuffer[byteAddr++] = ((uint8_t*) &eepromWrites)[0];
	eepromPageBuffer[byteAddr++] = ((uint8_t*) &eepromWrites)[1];
	eepromPageBuffer[byteAddr++] = audioVolume;
	eepromPageBuffer[byteAddr++] = subVolume;
	eepromPageBuffer[byteAddr++] = activeInputNumber;
	
	EEPROM_FlushBuffer();
	EEPROM_LoadPage(eepromPageBuffer);
	EEPROM_AtomicWritePage(SETTINGS_EEPROM_PAGE);
}
