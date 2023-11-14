#include <stdlib.h>

#include "ptk.h"

void *ptk_memalign (const char *file, int line, size_t number, size_t size)
{
	int err;
	void *ptr;
	size_t alignment;

   /*
    * Determine smallest power of two to contain size.
    */
	alignment = ((size ^ (size - 1)) + 1) >> 1;
	while (alignment < sizeof (void *))
		alignment <<= 1;
	while (alignment < size)
		alignment <<= 1;
   /*
    * Preset ptr to NULL.
    */
	ptr = NULL;
   /*
    * Call posix_memalign.
    */
	if ((err = posix_memalign (&ptr, alignment, number * size)) != 0)
		die (__FILE__, __LINE__, "%s (%d):  posix_memalign (%p, %lu, %lu) returned %d", file, line, &ptr, (unsigned long) alignment, (unsigned long) (number * size), err);
   /*
    * Check result.
    */
	if (ptr == NULL)
		die (__FILE__, __LINE__, "%s (%d):  ptr = %p", file, line, ptr);
   /*
    * Return result.
    */
	return ptr;
}
