#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "ptk.h"

void die (const char *file, int line, const char *format, ...)
{
	va_list ap;

	if (file != NULL)
		(void) fprintf (stderr, "%s ", file);
	(void) fprintf (stderr, "(%d)", line);
	if (format != NULL) {
		(void) fprintf (stderr, ":  ");
		va_start (ap, format);
		(void) vfprintf (stderr, format, ap);
		va_end (ap);
	} else if (errno) {
		(void) fprintf (stderr, ":  %s", strerror (errno));
	}
	(void) fprintf (stderr, "\n");
	exit (-1);
}
