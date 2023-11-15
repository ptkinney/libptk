#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

static int day[] = {
	1, 2, 3, 5, 8, 13, 21,
};

static const char separator[] = "/";

int parse_ymd_test2 (void)
{
	int d, dout, m, mout, nerrs, w, y, yout;
	Date result;
	char date[80];

   /*
    * Run tests.
    */
	nerrs = 0;
	for (y = -4713; y < 5000; y += 107)
		for (m = 1; m <= 12; ++m)
			for (d = 0; d < ((int) sizeof (day) / (int) sizeof (*day)); ++d)
				for (w = 1; w <= 2; ++w) {
				   /*
				    * Print test date and separator strings.
				    */
					(void) sprintf (date, "%d%c%0*d%c%0*d", y, *separator, w, m, *separator, w, day[d]);
				   /*
				    * Run test.
				    */
					result = parse_ymd (date, separator, &yout, &mout, &dout);
				   /*
				    * Check results.
				    */
					if ((yout != y) || (mout != m) || (dout != day[d])) {
						++nerrs;
						if (global_nerrors < 20) {
							(void) printf ("ERROR:  \"%s\":  ", date);
							(void) printf ("output %7ld, %02d/%02d/%02d, ", result, yout, mout, dout);
							(void) printf ("expected %02d/%02d/%02d\n", y, m, day[d]);
						}
						++global_nerrors;
					}
				}
   /*
    * Report errors.
    */
	report (2, "parse_ymd", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
