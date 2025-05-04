#ifndef PTK_H
#define PTK_H

#include <stdlib.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

	typedef long Date;

	typedef struct {
		size_t length;
		size_t limit;
		char *text;
	} Expander;

	typedef struct {
		size_t length;
		size_t limit;
		wchar_t *text;
	} WExpander;

#ifndef __cplusplus
	typedef enum {
		VERBOSE_NONE,
		VERBOSE_ERRORS,
		VERBOSE_WARNINGS,
		VERBOSE_INFORMATION,
		VERBOSE_DEBUG
	} Verbosity;
#endif

#define STRPAD(len)     (((len) | 7) + 1)
#define STRLENPAD(str)  STRPAD (strlen (str))

#ifdef  lint

   /*
    * Definitions specific to lint.
    */

#else

   /*
    * Definitions specifically not for lint.
    */

#endif

#define exfree(x)       expander_free (__FILE__, __LINE__, x)
#define exnew(x)        expander_new (__FILE__, __LINE__, x)
#define exprint         expander_mark (__FILE__, __LINE__)
#define exreset(x)      expander_reset (__FILE__, __LINE__, x)

#define wexfree(x)      wexpander_free (__FILE__, __LINE__, x)
#define wexnew(x)       wexpander_new (__FILE__, __LINE__, x)
#define wexprint        wexpander_mark (__FILE__, __LINE__)
#define wexreset(x)     wexpander_reset (__FILE__, __LINE__, x)

	void caldat (Date, int *, int *, int *);
	void die (const char *, int, const char *, ...);
	void expander_check (const char *, int, const Expander *);
	void expander_free (const char *, int, Expander *);
	const char *(*expander_mark (const char *, int)) (Expander *, size_t, const char *, ...);
	Expander *expander_new (const char *, int, size_t);
	Expander *expander_reset (const char *, int, Expander *);
	Date get_today (void);
	int integer (const char *);
	Date julian (int, int, int);
	int lagfibi (int);
	double lagfibd (void);
	long double lagfibld (void);
	int number (const char *);
	char *pack (char *);
	int parse_columns (const char *, char *, int, char **);
	int parse_lines (char *, char ***, int);
	Date parse_ymd (const char *, const char *, int *, int *, int *);
	int popcnt (int);
	int popcntl (unsigned long);
	int popcntll (unsigned long long);
	void *ptk_calloc (const char *, int, size_t, size_t);
	void *ptk_malloc (const char *, int, size_t);
	void *ptk_memalign (const char *, int, size_t, size_t);
	void *ptk_realloc (const char *, int, void *, size_t);
	char *scan_list (size_t (*)(size_t, char *), int, const char *, int, const char *const *, size_t);
	int solve (int, const double *const *, double *const *, int, const double *const *);
	int solve_ld (int, const long double *const *, long double *const *, int, const long double *const *);
	size_t str_size (size_t, const char *);
	char *str_temp (size_t);
	char *trim (char *);
	int wexpander_check (const char *, int, const WExpander *);
	void wexpander_free (const char *, int, WExpander *);
	const wchar_t *(*wexpander_mark (const char *, int)) (WExpander *, size_t, const wchar_t *, ...);
	WExpander *wexpander_new (const char *, int, size_t);
	WExpander *wexpander_reset (const char *, int, WExpander *);
	int w_integer (const wchar_t *);
	int w_number (const wchar_t *);
	wchar_t *w_pack (wchar_t *);
	int w_parse_columns (const wchar_t *, wchar_t *, int, wchar_t **);
	int w_parse_lines (wchar_t *, wchar_t ***, int);
	Date w_parse_ymd (const wchar_t *, const wchar_t *, int *, int *, int *);
	wchar_t *w_trim (wchar_t *);

#ifdef __cplusplus
	extern int vflag;
#else
	extern Verbosity vflag;
#endif
	extern const char *const month_full[];
	extern const char *const month_short[];
	extern const char *const weekday_full[];
	extern const char *const weekday_short[];

#ifdef __cplusplus
}
#endif
#endif
