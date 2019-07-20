/*
 * EEPROM.h
 *
 * Created: 2019-03-02 18:42:07
 *  Author: Chipotle
 */ 

#ifndef EEPROM_H_
#define EEPROM_H_

#include "../Peripheral/eeprom_driver.h"

#define SETTINGS_EEPROM_PAGE 0
#define SETTINGS_EEPROM_DATA_VERSION 1

class SettingsMemory {

public:
	uint16_t eepromWrites;

private:
	uint8_t eepromPageBuffer[EEPROM_PAGESIZE];

public:
	void init();

	void loadData(uint8_t* audioVolume, uint8_t* subVolume, uint8_t* activeInputNumber);
	void storeData(uint8_t audioVolume, uint8_t subVolume, uint8_t activeInputNumber);
};

#endif /* EEPROM_H_ */