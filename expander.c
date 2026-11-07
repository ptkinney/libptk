#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#include "ptk.h"

static const char *save_file = NULL;
static int save_line = 0;

static const char *expander_print (Expander *ep, size_t max, const char *format, ...)
{
	size_t delta, new_length, old_limit;
	char *old_text;
	va_list ap;

   /*
    * Check expander.
    */
	expander_check (save_file, save_line, ep);
   /*
    * Expand limit if needed.
    */
	new_length = ep->length + max;
	if (new_length >= ep->limit) {
		old_limit = ep->limit;
		old_text = ep->text;
		ep->limit = STRPAD (new_length);
		ep->text = ptk_realloc (__FILE__, __LINE__, old_text, ep->limit);
		(void) memset (ep->text + old_limit, 0, ep->limit - old_limit);
	}
   /*
    * Print to text.
    */
	va_start (ap, format);
	delta = vsprintf (ep->text + ep->length, format, ap);
	va_end (ap);
   /*
    * Check for error.
    */
	if (delta > max)
		die (save_file, save_line, "Expander overflow:  was %lu, should be at least %lu", max, ((delta - 1) | 7) + 1);
   /*
    * Update and return expander's text pointer.
    */
	ep->length += delta;
	expander_check (save_file, save_line, ep);
	return ep->text;
}

void expander_check (const char *file, int line, const Expander *ep)
{
	if (ep->text == NULL) {
		if ((ep->limit != 0) || (ep->length != 0))
			die (file, line, "Expander:  text=%s, limit=%lu, length=%lu", ep->text, (unsigned long) ep->limit, (unsigned long) ep->length);
	} else {
		if ((ep->limit <= 0) || (ep->length >= ep->limit))
			die (file, line, "Expander:  text=%s, limit=%lu, length=%lu", ep->text, (unsigned long) ep->limit, (unsigned long) ep->length);
	}
}

void expander_free (const char *file, int line, Expander *ep)
{
	expander_check (file, line, ep);
	free (ep->text);
	free (ep);
}

const char *(*expander_mark (const char *file, int line)) (Expander *, size_t, const char *, ...) {
	save_file = file;
	save_line = line;
	return &expander_print;
}

Expander *expander_new (const char *file, int line, size_t size)
{
	Expander *ep;

	ep = ptk_calloc (__FILE__, __LINE__, 1, sizeof (*ep));
	ep->limit = STRPAD (size);
	ep->text = ptk_calloc (__FILE__, __LINE__, ep->limit, sizeof (*ep->text));
	expander_check (file, line, ep);
	return ep;
}

Expander *expander_reset (const char *file, int line, Expander *ep)
{
	expander_check (file, line, ep);
	(void) memset (ep->text, 0, ep->length);
	ep->length = 0;
	expander_check (file, line, ep);
	return ep;
}
