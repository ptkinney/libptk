#include <immintrin.h>
#include <stdio.h>

#include <ptk.h>

#include "test.h"

#define MAXNUMBER 96
#define MAXSIZE 256

int memalign_test1 (void)
{
	int i, nerrs;
	long difference, alignment;
	size_t number, size;
	char *ptr;

   /*
    * Run tests.
    */
	nerrs = 0;
	for (number = 1; number <= MAXNUMBER; ++number)
		for (size = 1; size <= MAXSIZE; ++size) {
		   /*
		    * Allocate memory.
		    */
			ptr = (char *) ptk_memalign (__FILE__, __LINE__, number, size);
		   /*
		    * Check alignment.
		    */
			difference = ((const char *) ptr - (const char *) 0);
			alignment = ((difference ^ (difference - 1)) + 1) / 2;
			if (alignment < size) {
				++nerrs;
				if (global_nerrors < 20)
					(void) printf ("ERROR:  number = %u, size = %u, ptr = %p, alignment = %ld\n", number, size, ptr, alignment);
				++global_nerrors;
			}
		   /*
		    * Write to every element.
		    */
			for (i = 0; i < (number * size); ++i)
				ptr[i] = i & 127;
		   /*
		    * Clean up.
		    */
			free (ptr);
		}
   /*
    * Report errors.
    */
	report (1, "ptk_memalign", nerrs);
   /*
    * Return number of errors.
    */
	return nerrs;
}
