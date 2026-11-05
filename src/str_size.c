#include <stdlib.h>
#include <string.h>

#include "ptk.h"

size_t str_size (size_t width, const char *text)
{
	return STRPAD (width * strlen (text));
}
