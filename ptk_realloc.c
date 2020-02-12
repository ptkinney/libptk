#include "ptk.h"

void *ptk_realloc (const char *file, int line, void *r, size_t s)
{
	void *ptr;

	if ((ptr = realloc (r, s)) == NULL)
		die (file, line, "realloc (%p, %lu) returned %p", (const void *) r, (unsigned long) s, (const void *) ptr);
	return ptr;
}
