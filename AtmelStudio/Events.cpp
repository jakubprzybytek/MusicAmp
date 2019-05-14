/*
 * Inputs.c
 *
 * Created: 2015-09-21 11:42:19
 *  Author: Rodos
 */ 

#include <avr/io.h>
#include <avr/sleep.h>

#include "Events.hpp"

#define MAX(a,b) ((a) > (b) ? (a) : (b))

void Events::submit(Event event) {
	if (this->eventsListIndex == MAX_EVENTS) {
		return;
	}

	this->eventsList[this->eventsListIndex++] = event;
	this->maxEventsListIndex = MAX(this->maxEventsListIndex, this->eventsListIndex);
}

Event Events::get() {
	while (this->eventsListIndex == 0) {
		SLEEP.CTRL = SLEEP_SMODE_IDLE_gc | SLEEP_SEN_bm;
		sleep_cpu();
		SLEEP.CTRL = SLEEP_SMODE_IDLE_gc;
	}

	Event toReturn = this->eventsList[0];
	for (uint8_t j = 1; j < this->eventsListIndex; j++) {
		this->eventsList[j - 1] = this->eventsList[j];
	}
	this->eventsListIndex--;
	return toReturn;
}
