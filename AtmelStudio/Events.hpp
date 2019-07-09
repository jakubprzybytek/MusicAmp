/*
 * Inputs.h
 *
 * Created: 2015-09-21 11:37:48
 *  Author: Rodos
 */ 

//#define NO_ACTION 0x00


#ifndef EVENTS_H_
#define EVENTS_H_

#define MAX_EVENTS 10

enum Event {
	NO_ACTION,
	
	ENCODER_MAIN_LEFT,
	ENCODER_MAIN_RIGHT,
	ENCODER_SECONDARY_LEFT,
	ENCODER_SECONDARY_RIGHT,

	INPUT_SELECTOR_TRIGGERED,

	TIMER_DOWN
};

class Events {

public:
	uint16_t maxEventsListIndex;

private:
	Event eventsList[MAX_EVENTS];
	uint8_t eventsListIndex;

public:
	void submit(Event event);
	Event get();

};

#endif /* EVENTS_H_ */
