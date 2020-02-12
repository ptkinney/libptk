#include <wchar.h>
#include <wctype.h>

#include "ptk.h"

wchar_t *w_pack (wchar_t *s)
{
	int white;
	wchar_t *dst;
	const wchar_t *src;

	if (s != NULL) {
		src = s;
		while (iswspace (*src))
			++src;
		dst = s;
		white = 0;
		while (*src) {
			if (iswspace (*src)) {
				++white;
			} else if (iswprint (*src)) {
				if (white) {
					*dst++ = L' ';
					white = 0;
				}
				*dst++ = *src;
			} else {
				die (__FILE__, __LINE__, "bad character in pack");
			}
			++src;
		}
		*dst = L'\0';
	}
	return s;
}
