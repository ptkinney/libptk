#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

int caldat_test2 (void)
{
	int dout, mout, nerrs, yout;
	Date j, jday;

   /*
    * Run tests.
    */
	nerrs = 0;
	for (j = 0; j < 3000000; ++j) {
	   /*
	    * Convert Julian day number to y, m, d.
	    */
		caldat (j, &yout, &mout, &dout);
	   /*
	    * Invert.
	    */
		jday = julian (yout, mout, dout);
	   /*
	    * Check results.
	    */
		if (jday != j) {
			++nerrs;
			if (global_nerrors < 20) {
				(void) printf ("ERROR:  %02d/%02d/%02d:  ", yout, mout, dout);
				(void) printf ("output %7ld, ", jday);
				(void) printf ("expected %7ld\n", j);
			}
			++global_nerrors;
		}
	}
   /*
    * Report errors.
    */
	report (2, "caldat", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
