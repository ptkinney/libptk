#include <math.h>
#include <stdio.h>
#include <string.h>

#include <ptk.h>

#include "test.h"

int compare_d0 (int width, const char *text, int mant, int frac, double tolerance, double actual, double expected)
{
	int nerrs = 0;
	int error = error_d (tolerance, actual, expected);
	if (width || (error > 0.0)) {
		if (global_nerrors <= 20) {
			if ((text != NULL) && (strlen (text) > 0))
				(void) printf ("%-*s ", width, text);
			(void) printf (" actual = %*.*f,", mant, frac, actual);
			(void) printf (" expected = %*.*f,", mant, frac, expected);
			(void) printf (" error = %*.*f", mant, frac, fabs (actual - expected));
			if (error)
				(void) printf ("  ERROR");
			(void) printf ("\n");
		}
		if (error) {
			++global_nerrors;
			++nerrs;
		}
	}
	return nerrs;
}
