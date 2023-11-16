#include "test.h"

int compar_d (const double *x, const double *y)
{
	if (*x != *y) {
		if (*x < *y)
			return -1;
		else
			return 1;
	}
	return 0;
}
