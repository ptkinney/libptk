#include "ptk.h"

int lagfibi (int n)
{
	int retval;

	if (n < 1)
		retval = 0;
	else
		retval = (int) ((long double ) n * lagfibld ());
	return retval;
}
