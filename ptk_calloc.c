#include <stdlib.h>

#include "ptk.h"

void *ptk_calloc (const char *file, int line, size_t n, size_t s)
{
	void *ptr;

	if ((ptr = calloc (n, s)) == NULL)
		die (file, line, "calloc (%lu, %lu) returned %p", (unsigned long) n, (unsigned long) s, (const void *) ptr);
	return ptr;
}
