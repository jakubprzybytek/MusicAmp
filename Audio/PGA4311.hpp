/*
 * PGA4311.hpp
 *
 * Created: 2017-06-17 17:02:04
 *  Author: Rodos
 */ 

#ifndef PGA4311_H_
#define PGA4311_H_

class PGA4311 {

private:
	SPI_t* spi;
	PORT_t* spiPort;
	PORT_t* csPort;
	uint8_t csPin_bm;

public:
	PGA4311(SPI_t* spi, PORT_t* spiPort, PORT_t* csPort, uint8_t csPin_bm)
		: spi(spi), spiPort(spiPort), csPort(csPort), csPin_bm(csPin_bm) {};

	void Init();

	void SetVolume(uint8_t firstChanell, uint8_t secondChanell, uint8_t thirdChanell, uint8_t fourthChanell);

};

#endif /* PGA4311_H_ */