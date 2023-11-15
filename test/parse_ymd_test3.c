#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

static const char separator[] = "/";

int parse_ymd_test3 (void)
{
	int d, dout, m, mout, nerrs, y, yout;
	Date j, result;
	char date[80];

   /*
    * Run tests.
    */
	nerrs = 0;
	for (j = 0; j < 3000000; ++j) {
	   /*
	    * Convert Julian day number to y, m, d.
	    */
		caldat (j, &y, &m, &d);
	   /*
	    * Print test date and separator strings.
	    */
		(void) sprintf (date, "%d%c%d%c%d", y, *separator, m, *separator, d);
	   /*
	    * Run test.
	    */
		result = parse_ymd (date, separator, &yout, &mout, &dout);
	   /*
	    * Check results.
	    */
		if ((result != j) || (yout != y) || (mout != m) || (dout != d)) {
			++nerrs;
			if (global_nerrors < 20) {
				(void) printf ("ERROR:  \"%s\":  ", date);
				(void) printf ("output %7ld, %02d/%02d/%02d, ", result, yout, mout, dout);
				(void) printf ("expected %7ld, %02d/%02d/%02d\n", j, y, m, d);
			}
			++global_nerrors;
		}
	}
   /*
    * Report errors.
    */
	report (3, "parse_ymd", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
