#include <time.h>

#include "ptk.h"

Date get_today (void)
{
	time_t lt;
	struct tm *tm;

	lt = time (NULL);
	tm = localtime (&lt);
	return julian (tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday);
}
