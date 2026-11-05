#include <ctype.h>
#include <string.h>

#include "ptk.h"

 /*
  * Routine to parse text into year, month, date.  Format is integer, separator, integer, separator, integer.
  * Does not need to be null terminated.
  */

Date parse_ymd (const char *text, const char *sep, int *yp, int *mp, int *dp)
{
	int d0, d1, i, m0, m1, negative, y0, y1, skip;
	Date j;

	i = 0;
   /*
    * Minus sign?
    */
	if (text[i] == '-') {
		++i;
		negative = 1;
	} else {
		negative = 0;
	}
   /*
    * Year.
    */
	y0 = 0;
	if (!isdigit (text[i]))
		die (__FILE__, __LINE__, text);
	while (isdigit (text[i]))
		y0 = 10 * y0 + (text[i++] - '0');
	if (negative)
		y0 = -y0;
   /*
    * Separator.
    */
	skip = strspn (text + i, sep);
	if (skip < 1)
		die (__FILE__, __LINE__, text);
	i += skip;
   /*
    * Month.
    */
	m0 = 0;
	if (!isdigit (text[i]))
		die (__FILE__, __LINE__, text);
	while (isdigit (text[i]))
		m0 = 10 * m0 + (text[i++] - '0');
   /*
    * Separator.
    */
	skip = strspn (text + i, sep);
	if (skip < 1)
		die (__FILE__, __LINE__, text);
	i += skip;
   /*
    * Day.
    */
	d0 = 0;
	if (!isdigit (text[i]))
		die (__FILE__, __LINE__, text);
	while (isdigit (text[i]))
		d0 = 10 * d0 + (text[i++] - '0');
   /*
    * Double check date.
    */
	j = julian (y0, m0, d0);
	caldat (j, &y1, &m1, &d1);
	if ((y0 != y1) || (m0 != m1) || (d0 != d1))
		die (__FILE__, __LINE__, text);
   /*
    * Valid date; set results and return.
    */
	if (yp != NULL)
		*yp = y1;
	if (mp != NULL)
		*mp = m1;
	if (dp != NULL)
		*dp = d1;
	return j;
}
