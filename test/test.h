#ifndef	TEST_H
#define	TEST_H

 /*
  * Support routines.
  */

void report (int, const char *, int);

 /*
  * Specific test routines.
  */

int memalign_test1 (void);

 /*
  * Global variables.
  */

extern int global_nerrors;

#endif
