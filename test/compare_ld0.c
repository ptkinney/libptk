#include <math.h>
#include <stdio.h>
#include <string.h>

#include <ptk.h>

#include "test.h"

int compare_ld0 (int width, const char *text, int mant, int frac, long double tolerance, long double actual, long double expected)
{
	int nerrs = 0;
	int error = error_ld (tolerance, actual, expected);
	if (width || (error > 0.0)) {
		if (global_nerrors <= 20) {
			if ((text != NULL) && (strlen (text) > 0))
				(void) printf ("%-*s ", width, text);
			(void) printf (" actual = %*.*Lf,", mant, frac, actual);
			(void) printf (" expected = %*.*Lf,", mant, frac, expected);
			(void) printf (" error = %*.*Lf", mant, frac, fabsl (actual - expected));
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
