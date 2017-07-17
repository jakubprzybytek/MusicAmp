/*
 * MCP3426.hpp
 *
 * Created: 2017-07-14 22:37:08
 *  Author: Rodos
 */ 

#ifndef MCP3426_H_
#define MCP3426_H_

#include "../LUFA/Drivers/Peripheral/TWI.h"

#define MCP_OK TWI_ERROR_NoError

class MCP3426 {

private:
	TWI_t * twi;

	uint8_t buffer[3];

public:
	MCP3426(TWI_t* twi) : twi(twi) {}

	void init();

	uint8_t read(uint16_t* firstChannelValue, uint16_t* secondChannelValue);
	
};

#endif /* MCP3426_H_ */