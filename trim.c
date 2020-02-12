#include <ctype.h>
#include <string.h>

#include "ptk.h"

char *trim (char *s)
{
	int i, len, skip;

	if (s == NULL)
		return s;
	len = strlen (s);
	while ((len > 0) && isspace (s[len - 1]))
		s[--len] = '\0';
	skip = 0;
	while (isspace (s[skip]))
		++skip;
	if (skip > 0)
		for (i = skip; i <= len; ++i)
			s[i - skip] = s[i];
	return s;
}
