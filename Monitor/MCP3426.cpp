/*
 * MCP3426.cpp
 *
 * Created: 2017-07-14 22:37:21
 *  Author: Rodos
 */ 
#include <avr/io.h>

#include "MCP3426.hpp"

#define MCP3426_SLAVE_ADDRESS	0b11010000
#define MCP3426_TWI_TIMEOUT		10

#define MCP3426_CMD_INITIATE_SINGLE_CONVERSION (0x01<<7)

#define MCP3426_FIRST_CHANNEL (0x00<<5)
#define MCP3426_SECOND_CHANNEL (0x01<<5)

void MCP3426::init() {
	TWI_Init(twi, TWI_BAUD_FROM_FREQ((long long) 400000));
}

uint8_t MCP3426::read(uint16_t* firstChannelValue, uint16_t* secondChannelValue) {
	uint8_t toWrite = MCP3426_CMD_INITIATE_SINGLE_CONVERSION | MCP3426_FIRST_CHANNEL;
	uint8_t status = TWI_WritePacket(twi, MCP3426_SLAVE_ADDRESS, MCP3426_TWI_TIMEOUT, &toWrite, 0, &toWrite, 1);

	if (status != TWI_ERROR_NoError) {
		return status;
	}

	_delay_ms(5);

	status = TWI_ReadPacket(twi, MCP3426_SLAVE_ADDRESS, MCP3426_TWI_TIMEOUT, buffer, 0, buffer, 3);

	if (status != TWI_ERROR_NoError) {
		return status;
	}
	
	*firstChannelValue = (buffer[0] << 8) + buffer[1];

	toWrite = MCP3426_CMD_INITIATE_SINGLE_CONVERSION | MCP3426_SECOND_CHANNEL;
	status = TWI_WritePacket(twi, MCP3426_SLAVE_ADDRESS, MCP3426_TWI_TIMEOUT, &toWrite, 0, &toWrite, 1);

	if (status != TWI_ERROR_NoError) {
		return status;
	}

	_delay_ms(5);

	status = TWI_ReadPacket(twi, MCP3426_SLAVE_ADDRESS, MCP3426_TWI_TIMEOUT, buffer, 0, buffer, 3);

	*secondChannelValue = (buffer[0] << 8) + buffer[1];
	
	return status;
}
