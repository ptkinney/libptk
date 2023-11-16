#include "test.h"

int compar_ld (const long double *x, const long double *y)
{
	if (*x != *y) {
		if (*x < *y)
			return -1;
		else
			return 1;
	}
	return 0;
}
