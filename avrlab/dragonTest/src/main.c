#include <avr/io.h>
#include <util/delay.h>

#include "util/util.h"
#include "util/sevenSegDisplay.h"

void setupDisplay(void)
{
  //set port D to output pins
  SETPORT(DDRD, 0xff, 0xff);

  //set bits PORTC0-1 to GPIO output
  SETPORT(DDRC,0x3,0x3);
}

/**
 * @brief port configuration for the ADC
 * 
 * @return void
 * 
 */
void setupadc(void)
{
	// Vref external
	BITON(ADMUX,REFS0);
	
	// Read from ADC5
	BITON(ADMUX,MUX0);
	BITON(ADMUX,MUX1);

	BITOFF(ADMUX,ADLAR);

	BITOFF(PRR,PRADC);

	// Enable ADC interrupt
	BITON(ADSCRA,_BV(3));
	
	// Enable auto trigger
	BITON(ADSCRA,_BV(5));

	// Enable ADC
	BITON(ADSCRA,_BV(7));
	
	// Start free-running conversions
	BITON(ADSCRA,_BV(6));

}

int main(int argc, char const* argv[])
{
	DisplayConfig dispConfig;

  setupDisplay();

  uint8_t i = 0;
  uint8_t t = 0;

  dispConfig.dsel = 1;

  while(1)
  {
    if(t % 50 == 0)
    {
      if(i > 99)
        i = 0;

      setDispValue(i++,&dispConfig);
    }
    t++;

    displayDigits(&dispConfig);
		_delay_ms(1);
  };

  return 0;
}
