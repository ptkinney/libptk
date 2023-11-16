#include <stdio.h>
#include <string.h>

#include "test.h"

void statistic_ld (const char *name, long double actual, long double expected)
{
	(void) printf ("%s:  ", name);
	int len = strlen (name);
	if (len < 6)
		(void) printf ("%*s", 6 - len, "");
	(void) printf ("actual = %14.6Lf, ", actual);
	(void) printf ("expected = %14.6Lf\n", expected);
}
