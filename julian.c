#include <math.h>

#include "ptk.h"

Date julian (int y, int m, int d)
{
	int ja, jy, jm;
	Date j;

	jy = y;
	if (jy < 0)
		++jy;
	if (m > 2) {
		jm = m + 1;
	} else {
		--jy;
		jm = m + 13;
	}
	j = (Date) (floor (365.25 * jy) + floor (30.6001 * jm) + d + 1720995);
	if ((d + 31L * (m + 12L * y)) >= (15 + 31L * (10 + 12L * 1582))) {
		ja = (int) (0.01 * jy);
		j += 2 - ja + (int) (0.25 * ja);
	}
	return j;
}
