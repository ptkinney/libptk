#include <math.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

int error_ld (long double tolerance, long double actual, long double expected)
{
	long double error = fabsl (actual - expected);
	if (vflag > 0)
		(void) fprintf (stderr, "%s (%d):  tolerance=%Lg, actual=%Lg, expected=%Lg, error=%Lg\n", __FILE__, __LINE__, tolerance, actual, expected, error);
	int nerrs = 0;
	if (isnanl (actual) || (error > tolerance)) {
		nerrs = 1;
		++global_nerrors;
	}
	return nerrs;
}
