#include <math.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

int error_i (int tolerance, int actual, int expected)
{
	int error;

	error = abs (actual - expected);
	if (vflag > 0)
		(void) fprintf (stderr, "%s (%d):  tolerance=%d, actual=%d, expected=%d, error=%d\n", __FILE__, __LINE__, tolerance, actual, expected, error);
	if (error <= tolerance)
		return 0;
	++global_nerrors;
	return error;
}
