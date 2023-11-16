#include <stdio.h>

int main (int argc, char *const *argv)
{
   /*
    * Integer types.
    */
	(void) printf ("sizeof (short) = %lu\n", (unsigned long) sizeof (short));
	(void) printf ("sizeof (int) = %lu\n", (unsigned long) sizeof (int));
	(void) printf ("sizeof (long) = %lu\n", (unsigned long) sizeof (long));
	(void) printf ("sizeof (long long) = %lu\n", (unsigned long) sizeof (long long));
   /*
    * Integer types.
    */
	(void) printf ("sizeof (float) = %lu\n", (unsigned long) sizeof (float));
	(void) printf ("sizeof (double) = %lu\n", (unsigned long) sizeof (double));
	(void) printf ("sizeof (long double) = %lu\n", (unsigned long) sizeof (long double));
   /*
    * Pointer type.
    */
	(void) printf ("sizeof (char *) = %lu\n", (unsigned long) sizeof (char *));
}
