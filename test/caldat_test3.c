#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

static int day[] = {
	1, 2, 3, 5, 8, 13, 21,
};

int caldat_test3 (void)
{
	int d, dout, m, mout, nerrs, w, y, yout;
	Date jday;

   /*
    * Run tests.
    */
	nerrs = 0;
	for (y = -4713; y < 5000; y += 107)
		for (m = 1; m <= 12; ++m)
			for (d = 0; d < ((int) sizeof (day) / (int) sizeof (*day)); ++d)
				for (w = 1; w <= 2; ++w) {
				   /*
				    * Generate input.
				    */
					jday = julian (y, m, day[d]);
				   /*
				    * Run test.
				    */
					caldat (jday, &yout, &mout, &dout);
				   /*
				    * Check results.
				    */
					if ((yout != y) || (mout != m) || (dout != day[d])) {
						++nerrs;
						if (global_nerrors < 20) {
							(void) printf ("ERROR:  %7ld:  ", jday);
							(void) printf ("output %02d/%02d/%02d, ", yout, mout, dout);
							(void) printf ("expected %02d/%02d/%02d\n", y, m, day[d]);
						}
						++global_nerrors;
					}
				}
   /*
    * Report errors.
    */
	report (3, "caldat", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
