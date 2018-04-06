/*
 * PowerSupplyMonitor.cpp
 *
 * Created: 2017-07-17 21:16:54
 *  Author: Rodos
 */ 

#include "PowerSupplyMonitor.hpp"

#define VOLTAGE_FACTOR 32.0 / 2.0 / 1000.0 // 2k? || 30k?
#define CURRENT_FACTOR 3.0 / 1000.0

void PowerSupplyMonitor::init() {
	mcp3426.init();
}

bool PowerSupplyMonitor::readPowerValue(float* power) {
	static uint16_t voltage, current;
	uint8_t status = mcp3426.read(&current, &voltage);
	
	if (status != MCP_OK) {
		return false;
	}

	*power = (voltage * VOLTAGE_FACTOR) * (current * CURRENT_FACTOR);
	//*power = voltage * VOLTAGE_FACTOR;

	return true;
}
