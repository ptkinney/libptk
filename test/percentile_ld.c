#include <math.h>

#include "test.h"

long double percentile_ld (double fraction, int n, const long double *data)
{
	double mid = fraction * (double) (n - 1);
	int lo = (int) floor (mid);
	int hi = (int) ceil (mid);
	if (lo < hi)
		return (hi - mid) * data[lo] + (mid - lo) * data[hi];
	else
		return data[lo];
}
