#include <ctype.h>
#include <string.h>

#include "ptk.h"

char *pack (char *s)
{
	int white;
	char *dst;
	const char *src;

	if (s != NULL) {
		src = s;
		while (isspace (*src))
			++src;
		dst = s;
		white = 0;
		while (*src) {
			if (isspace (*src)) {
				++white;
			} else if (isprint (*src)) {
				if (white) {
					*dst++ = ' ';
					white = 0;
				}
				*dst++ = *src;
			} else {
				die (__FILE__, __LINE__, "bad character in pack");
			}
			++src;
		}
		*dst = '\0';
	}
	return s;
}
