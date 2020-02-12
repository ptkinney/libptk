#include <string.h>

#include "ptk.h"

 /*
  * Routine to parse a line into a maximum number of columns.
  */

int parse_columns (const char *str, char *line, int max, char **col)
{
	int i, n;
	char *sp;

	n = 0;
	sp = strtok (line, str);
	while (sp != NULL) {
		if (n < max)
			col[n] = sp;
		++n;
		sp = strtok (NULL, str);
	}
	for (i = n; i < max; ++i)
		col[i] = NULL;
	return n;
}
