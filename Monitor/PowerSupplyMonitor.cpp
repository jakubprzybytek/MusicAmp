/*
 * PowerSupplyMonitor.cpp
 *
 * Created: 2017-07-17 21:16:54
 *  Author: Rodos
 */ 

#include "PowerSupplyMonitor.hpp"

void PowerSupplyMonitor::init() {
	mcp3426.init();
}

bool PowerSupplyMonitor::readPowerValue(uint16_t* power) {
	static uint16_t voltage, current;
	uint8_t status = mcp3426.read(&current, &voltage);
	
	if (status != MCP_OK) {
		return false;
	}

	*power = voltage;

	return true;
}
