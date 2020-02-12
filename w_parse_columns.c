#include <wchar.h>

#include "ptk.h"

 /*
  * Routine to parse a line into a maximum number of columns.
  */

int w_parse_columns (const wchar_t *str, wchar_t *line, int max, wchar_t **col)
{
	int i, n;
	wchar_t *sp, *state;

	n = 0;
	sp = wcstok (line, str, &state);
	while (sp != NULL) {
		if (n < max)
			col[n] = sp;
		++n;
		sp = wcstok (NULL, str, &state);
	}
	for (i = n; i < max; ++i)
		col[i] = NULL;
	return n;
}
