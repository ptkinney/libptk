#include <wchar.h>
#include <wctype.h>

#include "ptk.h"

 /*
  * Routine to parse text into nonempty lines.  Clears whitespace at end of line.
  */

int w_parse_lines (wchar_t *text, wchar_t ***line, int count)
{
	int i, n;
	wchar_t *next;

	if ((text != NULL) && *text) {
		next = wcschr (text, L'\n');
		if ((next != NULL) && (*next != L'\0'))
			*next++ = L'\0';
		i = wcslen (text);
		while ((i > 0) && iswspace (text[i - 1]))
			text[--i] = L'\0';
		n = w_parse_lines (next, line, count + 1);
		(*line)[count] = text;
	} else if (count > 0) {
		*line = (wchar_t **) ptk_calloc (__FILE__, __LINE__, n = count, sizeof (**line));
	} else {
		n = 0;
		*line = NULL;
	}
	return n;
}
