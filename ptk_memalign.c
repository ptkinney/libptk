#include <stdlib.h>

#include "ptk.h"

void *ptk_memalign (const char *file, int line, size_t alignment, size_t size)
{
	int err;
	void *ptr;

	if ((alignment ^ (alignment - 1)) != (2 * alignment - 1))
		die (file, line, "alignment = %lu is not a power of 2", (unsigned long) alignment);
	ptr = NULL;
	if ((err = posix_memalign (&ptr, alignment, size)) != 0)
		die (file, line, "posix_memalign (%p, %lu, %lu) returned %d", ptr, (unsigned long) alignment, (unsigned long) size);
	if (ptr == NULL)
		die (file, line, "ptr = %p", ptr);
	return ptr;
}
