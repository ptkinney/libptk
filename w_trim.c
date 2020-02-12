#include <wchar.h>
#include <wctype.h>

#include "ptk.h"

wchar_t *w_trim (wchar_t *s)
{
	int i, len, skip;

	if (s == NULL)
		return s;
	len = wcslen (s);
	while ((len > 0) && iswspace (s[len - 1]))
		s[--len] = L'\0';
	skip = 0;
	while (iswspace (s[skip]))
		++skip;
	if (skip > 0)
		for (i = skip; i <= len; ++i)
			s[i - skip] = s[i];
	return s;
}
