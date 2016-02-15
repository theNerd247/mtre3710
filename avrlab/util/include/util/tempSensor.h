/**
 * @file tempSensor.h 
 *
 * Temperature stuffs
 *
 * @author Noah Harvey (noah.harvey247 gmail)
 * @copyright GNU Public License 2
 */

#ifndef TEMPSENSOR_H
#define TEMPSENSOR_H

#include <avr/io.h>

uint8_t ind = 0;
static const uint16_t tempData[][2] =
{
	{241,0},
	{343,10},
	{445,20},
	{567,30},
	{668,40},
	{753,50},
	{871,60},
	{910,70},
	{938,80}
};

#define U tempData[ind]
#define L tempData[ind-1]

/**
 * @brief gets the input temperature from the adc value
 * 
 * raw is linearly interpollated via the below table: 
 * **NOTE:** This function is an inline function and is meant to be used in an
 * ISR
 *
 *  ADC | Temp (degrees C)
 * -----|------------------
 *  241 | 10
 *  343 | 20
 *  445 | 30
 *  567 | 40
 *  668 | 50
 *  753 | 60
 *  871 | 70
 *  910 | 80
 *  938 | 90
 *
 * @param raw - the raw ADC value (should be read directly from the ADCH/L
 * registers)
 *
 * @return void
 * 
 */
getTemperature(void)
{
	ind = 0;
	//get the upper bound of the temperature
	while(ind < 7 && raw > tempData[ind][0])
		ind++;

	//do a nearest linear interpolation
	if(ind == 0)
		/*setNum(89);*/
		setNum(tempData[ind][1]/tempData[ind][0]*raw);
	else
		setNum((U[1]-L[1])*(raw-L[0])/(U[0]-L[0])+L[1]);
}

uint16_t adc;
ISR(ADC_vect)
{
	/* get ADC value*/
	adc = ADCL;
	adc |= (ADCH << 8);

	setTemp(adc);
}

#endif 

