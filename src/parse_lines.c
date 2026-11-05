#include <ctype.h>
#include <string.h>

#include "ptk.h"

 /*
  * Routine to parse text into nonempty lines.  Clears whitespace at end of line.
  */

int parse_lines (char *text, char ***line, int count)
{
	int i, n;
	char *next;

	if ((text != NULL) && *text) {
		next = strchr (text, '\n');
		if ((next != NULL) && (*next != '\0'))
			*next++ = '\0';
		i = strlen (text);
		while ((i > 0) && isspace (text[i - 1]))
			text[--i] = '\0';
		n = parse_lines (next, line, count + 1);
		(*line)[count] = text;
	} else if (count > 0) {
		*line = (char **) ptk_calloc (__FILE__, __LINE__, n = count, sizeof (**line));
	} else {
		n = 0;
		*line = NULL;
	}
	return n;
}
