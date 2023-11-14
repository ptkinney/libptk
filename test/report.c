#include <stdio.h>

#include "test.h"

void report (int testno, const char *name, int nerrs)
{
	(void) printf ("TEST %d for %s:  ", testno, name);
	switch (nerrs) {
	case 0:
		(void) printf ("NO ERRORS");
		break;
	case 1:
		(void) printf ("%d ERROR", nerrs);
		break;
	default:
		(void) printf ("%d ERRORS", nerrs);
		break;
	}
	(void) printf ("\n");
}
