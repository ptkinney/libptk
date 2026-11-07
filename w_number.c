#include <wctype.h>

#include "ptk.h"

 /*
  * Passes strings that are at least one digit, and an optional decimal point with
  * at least one digit.
  */

int wnumber (const wchar_t *s)
{
	int ndigits, ndots;

   /*
    * Optional sign.
    */
	if (*s == L'-')
		++s;
   /*
    * At least one digit, zero or one decimal points.
    */
	ndigits = 0;
	ndots = 0;
	while (iswdigit (*s) || (*s == L'.')) {
		if (iswdigit (*s)) {
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
	if ((*s == L'e') || (*s == L'E')) {
		++s;
		if ((*s == L'-') || (*s == L'+'))
			++s;
		ndigits = 0;
		while (iswdigit (*s)) {
			++ndigits;
			++s;
		}
	}
	return *s == L'\0';
}
