#include <ctype.h>

#include "ptk.h"

 /*
  * Passes strings that are at least one digit, and an optional decimal point with
  * at least one digit.
  */

int number (const char *s)
{
	int ndigits, ndots;

   /*
    * Optional sign.
    */
	if (*s == '-')
		++s;
   /*
    * At least one digit, zero or one decimal points.
    */
	ndigits = 0;
	ndots = 0;
	while (isdigit (*s) || (*s == '.')) {
		if (isdigit (*s)) {
			++ndigits;
		} else {
			++ndots;
			if (ndots > 1)
				return 0;
		}
		++s;
	}
	if (ndigits < 1)
		return 0;
   /*
    * Optional exponent.
    */
	if ((*s == 'e') || (*s == 'E')) {
		++s;
		if ((*s == '-') || (*s == '+'))
			++s;
		ndigits = 0;
		while (isdigit (*s)) {
			++ndigits;
			++s;
		}
	}
	return *s == '\0';
}
