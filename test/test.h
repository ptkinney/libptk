#ifndef TEST_H
#define TEST_H

 /*
  * Support routines.
  */

int compar_d (const double *, const double *);
int compar_i (const int *, const int *);
int compar_ld (const long double *, const long double *);
int compare_d0 (int, const char *, int, int, double, double, double);
int compare_ld0 (int, const char *, int, int, long double, long double, long double);
int error_d (double, double, double);
int error_ld (long double, long double, long double);
int error_i (int, int, int);
double percentile_d (double, int, const double *);
long double percentile_ld (double, int, const long double *);
void report (int, const char *, int);
void statistic_d (const char *, double, double);
void statistic_ld (const char *, long double, long double);

 /*
  * Specific test routines.
  */

int caldat_test1 (void);
int caldat_test2 (void);
int caldat_test3 (void);
int julian_test1 (void);
int julian_test2 (void);
int julian_test3 (void);
int lagfibd_test1 (void);
int lagfibi_test1 (void);
int lagfibld_test1 (void);
int memalign_test1 (void);
int parse_ymd_test1 (void);
int parse_ymd_test2 (void);
int parse_ymd_test3 (void);

 /*
  * Global variables.
  */

extern int global_nerrors;

#endif
