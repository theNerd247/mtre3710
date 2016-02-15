/**
 * @file sevenSegDisplay.c 
 *
 * function definitions for sevenSegDisplay.h
 *
 * @author Noah Harvey (noah.harvey247 gmail)
 * @copyright GNU Public License 2
 */

#include "util/sevenSegDisplay.h"

/** The IO pin configuration for each digit (from a BCD truth table)
 *
 * This assumes the following pin config:
 *
 * PORTnx | Segment
 * -------|-------
 *  0     | a
 *  1     | b
 *  2     | c
 *   ...  |  ...
 *  6     | g
 *
 */
const unsigned char BCDTABLE[10] =
{
  0x3f  //0
  ,0x06 //1
  ,0x5b //2
  ,0x4f //3
  ,0x66 //4
  ,0x6d //5
  ,0x7d //6
  ,0x07 //7
  ,0x7f //8
  ,0x6f //9
};

/** The bits/pins on DISPSELPORT to use for bit selection
 *
 * The first value is to be the 1's place digit. The second on is to be 10's
 * place digit.
 */
const unsigned char DIGPINS[2] = {_BV(1),_BV(0)};

/**
 * @brief sets the iopins for the 7SEG display
 *
 *
 * @param num - the number to output (between 0 and 99). If num > 99 the
 * function returns.
 *
 * @return void
 *
 */
void setDispValue(uint8_t num, DisplayConfig* dispConfig)
{
  if(num > 99)
    return;

  dispConfig->dval[0] = num%10;
  dispConfig->dval[1] = num/10;
}

void displayDigits(DisplayConfig* dispConfig)
{
  //quickly turn off the digits before switching
  DISPSELPORT = 0x00;

  /* switch the digit to use and set the 7SEG value */
  dispConfig->dsel ^= 1;
  DISPPORT = ~(BCDTABLE[dispConfig->dval[dispConfig->dsel]]);

  /* turn on the 7SEG digit */
  DISPSELPORT = DIGPINS[dispConfig->dsel];
}
