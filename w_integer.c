#include <wctype.h>

#include "ptk.h"

int winteger (const wchar_t *s)
{
	if (*s == L'-')
		++s;
	if (!iswdigit (*s))
		return 0;
	do {
		++s;
	} while (iswdigit (*s));
	return *s == L'\0';
}
