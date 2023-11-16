#include <stdio.h>
#include <string.h>

#include "test.h"

void statistic_d (const char *name, double actual, double expected)
{
	(void) printf ("%s:  ", name);
	int len = strlen (name);
	if (len < 6)
		(void) printf ("%*s", 6 - len, "");
	(void) printf ("actual = %14.6f, ", actual);
	(void) printf ("expected = %14.6f\n", expected);
}
