#include <stdlib.h>
#include <string.h>

#include "ptk.h"

static size_t limit = 0;
static char *temp = NULL;

char *str_temp (size_t length)
{
	if (limit < length) {
		if (temp != NULL)
			free (temp);
		limit = STRPAD (length);
		temp = ptk_malloc (__FILE__, __LINE__, limit);
	}
	return memset (temp, 0, limit);
}
