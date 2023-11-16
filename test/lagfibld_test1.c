#include <math.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

 /*
  * Basic numerical statistics.
  */

#define MAXN 10000000

int lagfibld_test1 (void)
{
	int nerrs;
	long double *data;

	nerrs = 0;
   /*
    * Allocate memory.
    */
	data = (long double *) ptk_calloc (__FILE__, __LINE__, MAXN, sizeof (*data));
   /*
    * Fill memory.
    */
	int n = 0;
	long double sum0 = 0.0;
	long double sum1 = 0.0;
	long double sum2 = 0.0;
	for (int i = 0; i < MAXN; ++i) {
		double x = lagfibd ();
		data[n++] = x;
		sum0 += 1.0;
		sum1 += x;
		sum2 += x * x;
	}
	qsort (data, n, sizeof (*data), (int (*)(const void *, const void *)) compar_ld);
   /*
    * Report.
    */
	long double toll = sqrtl (1.0 / (long double) MAXN);
	nerrs += compare_ld0 (8, "average", 8, 6, toll, sum1 / sum0, 0.5);
	nerrs += compare_ld0 (8, "std dev", 8, 6, toll, sqrtl (sum0 * sum2 - sum1 * sum1) / sum0, sqrtl (1.0 / (long double) 12.0));
	(void) printf ("\n");
	long double tol = sqrtl (5.0 / (long double) MAXN);
	nerrs += compare_ld0 (8, "min", 8, 6, tol, data[0], 0.0);
	for (int j = 5; j < 100; j += 5) {
		char temp[8];
		long double fraction = (long double) j / 100.0;
		(void) sprintf (temp, "p%02d", j);
		long double pctl = percentile_ld (fraction, n, data);
		nerrs += compare_ld0 (8, temp, 8, 6, tol, pctl, fraction);
	}
	nerrs += compare_ld0 (8, "max", 8, 6, tol, data[n - 1], 1.0);
   /*
    * Report errors.
    */
	report (1, "ptk_lagfibd", nerrs);
   /*
    * Clean up.
    */
	free (data);
   /*
    * Return number of errors.
    */
	return nerrs;
}
