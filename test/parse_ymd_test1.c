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

int parse_ymd_test1 (void)
{
	int c, dout, i, mout, nerrs, yout;
	Date result;
	char date[80], separator[8];

   /*
    * Run tests.
    */
	nerrs = 0;
	for (i = 0; i < ((int) sizeof (data) / (int) sizeof (*data)); ++i)
		for (c = 1; c < 128; ++c)
			if (isprint (c) && !isdigit (c)) {
			   /*
			    * Print test date and separator strings.
			    */
				(void) sprintf (date, "%d%c%d%c%d", data[i].year, c, data[i].month, c, data[i].day);
				(void) sprintf (separator, "%c", c);
			   /*
			    * Run test.
			    */
				result = parse_ymd (date, separator, &yout, &mout, &dout);
			   /*
			    * Check results.
			    */
				if ((result != data[i].date) || (yout != data[i].year) || (mout != data[i].month) || (dout != data[i].day)) {
					++nerrs;
					if (global_nerrors < 20) {
						(void) printf ("ERROR:  \"%s\":  ", date);
						(void) printf ("output %7ld, %02d/%02d/%02d, ", result, yout, mout, dout);
						(void) printf ("expected %7ld, %02d/%02d/%02d\n", data[i].date, data[i].year, data[i].month, data[i].day);
					}
					++global_nerrors;
				}
			}
   /*
    * Report errors.
    */
	report (1, "parse_ymd", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
