#include <ctype.h>

#include "ptk.h"

int integer (const char *s)
{
	if (*s == '-')
		++s;
	if (!isdigit (*s))
		return 0;
	do {
		++s;
	} while (isdigit (*s));
	return *s == '\0';
}
