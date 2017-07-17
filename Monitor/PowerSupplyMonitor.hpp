/*
 * PowerSupplyMonitor.hpp
 *
 * Created: 2017-07-17 21:16:45
 *  Author: Rodos
 */ 

#ifndef POWERSUPPLYMONITOR_H_
#define POWERSUPPLYMONITOR_H_

#include "../Devices/MCP3426.hpp"

class PowerSupplyMonitor {

private:
	MCP3426 mcp3426;

public:
	PowerSupplyMonitor() : mcp3426(&TWIC) {}

	void init();

	bool readPowerValue(uint16_t* power);
};

#endif /* POWERSUPPLYMONITOR_H_ */