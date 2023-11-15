#ifndef TEST_H
#define TEST_H

 /*
  * Support routines.
  */

void report (int, const char *, int);

 /*
  * Specific test routines.
  */

int caldat_test1 (void);
int caldat_test2 (void);
int caldat_test3 (void);
int julian_test1 (void);
int julian_test2 (void);
int julian_test3 (void);
int memalign_test1 (void);
int parse_ymd_test1 (void);
int parse_ymd_test2 (void);
int parse_ymd_test3 (void);

 /*
  * Global variables.
  */

extern int global_nerrors;

#endif
