#include <math.h>

#include "ptk.h"

void caldat (Date j, int *y, int *m, int *d)
{
	int yy, mm, dd;
	Date ja, jalpha, jb, jc, jd, je;

	if (j > 2299161L) {
		jalpha = (Date) (((float) (j - 1867216) - 0.25) / 36524.25);
		ja = j + 1 + jalpha - (Date) (0.25 * jalpha);
	} else {
		ja = j;
	}
	jb = ja + 1524;
	jc = (Date) (6680.0 + ((float) (jb - 2439870) - 122.1) / 365.25);
	jd = (Date) (365 * jc + (0.25 * jc));
	je = (Date) ((jb - jd) / 30.6001);
	dd = jb - jd - (Date) (30.6001 * je);
	mm = je - 1;
	if (mm > 12)
		mm -= 12;
	yy = jc - 4715;
	if (mm > 2)
		--yy;
	if (yy <= 0)
		--yy;
	*y = yy;
	*m = mm;
	*d = dd;
}
