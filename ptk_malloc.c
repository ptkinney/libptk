#include <stdlib.h>

#include "ptk.h"

void *ptk_malloc (const char *file, int line, size_t s)
{
	void *ptr;

	if ((ptr = malloc (s)) == NULL)
		die (file, line, "malloc (%lu) returned %p", (unsigned long) s, (const void *) ptr);
	return ptr;
}
