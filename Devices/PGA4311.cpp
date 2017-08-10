/*
 * PGA4311.cpp
 *
 * Created: 2017-06-17 16:59:35
 *  Author: Rodos
 */ 

#include <avr/io.h>

#include "PGA4311.hpp"

void PGA4311::init() {
	csPort->DIRSET = csPin_bm;
	spiPort->DIRSET = PIN4_bm | PIN5_bm | PIN7_bm;
	spi->CTRL = SPI_ENABLE_bm | SPI_MASTER_bm | SPI_MODE_0_gc | SPI_PRESCALER_DIV128_gc;
	spi->INTCTRL = SPI_INTLVL_OFF_gc;
}

void PGA4311::setVolume(uint8_t firstChanell, uint8_t secondChanell, uint8_t thirdChanell, uint8_t fourthChanell) {
	csPort->OUTCLR = csPin_bm;

	spi->DATA = fourthChanell;
	while (!(spi->STATUS & SPI_IF_bm)) ;
	spi->DATA = thirdChanell;
	while (!(spi->STATUS & SPI_IF_bm)) ;
	spi->DATA = secondChanell;
	while (!(spi->STATUS & SPI_IF_bm)) ;
	spi->DATA = firstChanell;
	while (!(spi->STATUS & SPI_IF_bm)) ;

	csPort->OUTSET = csPin_bm;
}
