#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

int julian_test3 (void)
{
	int d, m, nerrs, y;
	Date j, result;

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
	    * Run test.
	    */
		result = julian (y, m, d);
	   /*
	    * Check results.
	    */
		if (result != j) {
			++nerrs;
			if (global_nerrors < 20) {
				(void) printf ("ERROR:  ");
				(void) printf ("output %7ld, %02d/%02d/%02d, ", result, y, m, d);
				(void) printf ("expected %7ld\n", j);
			}
			++global_nerrors;
		}
	}
   /*
    * Report errors.
    */
	report (3, "julian", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
