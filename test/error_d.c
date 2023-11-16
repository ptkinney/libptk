#include <math.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

int error_d (double tolerance, double actual, double expected)
{
	double error = fabs (actual - expected);
	if (vflag > 0)
		(void) fprintf (stderr, "%s (%d):  tolerance=%g, actual=%g, expected=%g, error=%g\n", __FILE__, __LINE__, tolerance, actual, expected, error);
	int nerrs = 0;
	if (isnan (actual) || (error > tolerance)) {
		nerrs = 1;
		++global_nerrors;
	}
	return nerrs;
}
