/*
 * Switch.hpp
 *
 * Created: 2017-06-28 22:01:06
 *  Author: Rodos
 */ 


#ifndef SWITCH_H_
#define SWITCH_H_

class PowerSwitch {

public:

	void Init();

	void EnableInterrupt();
	void DisableInterrupt();
	bool IsUp();

	void EnableLight();
	void DisableLight();

};

#endif /* SWITCH_H_ */