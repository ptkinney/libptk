#include <math.h>

#include "test.h"

double percentile_d (double fraction, int n, const double *data)
{
	double mid = fraction * (double) (n - 1);
	int lo = (int) floor (mid);
	int hi = (int) ceil (mid);
	if (lo < hi)
		return (hi - mid) * data[lo] + (mid - lo) * data[hi];
	else
		return data[lo];
}
