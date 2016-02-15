/**
 * @file sevenSegDisplay.h
 *
 * 7 Segment display functions
 *
 * @author Noah Harvey (noah.harvey247 gmail)
 * @copyright GNU Public License 2
 */

#ifndef SEVENSEGDISPLAY_H
#define SEVENSEGDISPLAY_H

#include <avr/io.h>

/** The IO port to use for setting the display value
 *
 */
#define DISPPORT PORTD

/** The IO port for enabling the display digit.
 *
 */
#define DISPSELPORT PORTC

/** display config */
typedef struct
{
  /** the current digit to display */
  uint8_t dsel:1;

  /** Value of each digit to display
   *
   */
  uint8_t dval[2];
} DisplayConfig;

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
void setDispValue(uint8_t num, DisplayConfig* dispConfig);

/** Set the IO ports to set the 7 segment display value.
 * 
 * NOTE: this function is intended to be called within a loop as it handles
 * toggling the digit to display.
 */
void displayDigits(DisplayConfig* dispConfig);

#endif 
