#include <ctype.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

typedef struct {
	Date date;
	int year, month, day;
} Datum;

static Datum data[] = {
	{0, -4713, 1, 1},
	{2437037, 1960, 4, 12},
	{2437113, 1960, 6, 27},
	{2437462, 1961, 6, 11},
	{2460264, 2023, 11, 15},
};

int julian_test1 (void)
{
	int c, i, nerrs;
	Date result;

   /*
    * Run tests.
    */
	nerrs = 0;
	for (i = 0; i < ((int) sizeof (data) / (int) sizeof (*data)); ++i)
		for (c = 1; c < 128; ++c)
			if (isprint (c) && !isdigit (c)) {
			   /*
			    * Run test.
			    */
				result = julian (data[i].year, data[i].month, data[i].day);
			   /*
			    * Check results.
			    */
				if (result != data[i].date) {
					++nerrs;
					if (global_nerrors < 20) {
						(void) printf ("ERROR:  %02d/%02d/%02d", data[i].year, data[i].month, data[i].day);
						(void) printf ("output %7ld, ", result);
						(void) printf ("expected %7ld\n", data[i].date);
					}
					++global_nerrors;
				}
			}
   /*
    * Report errors.
    */
	report (1, "julian", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
