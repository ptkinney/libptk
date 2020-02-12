#include <fcntl.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include "ptk.h"

#define SCAN_BUFFER_SIZE 4096

char *scan_list (size_t (*filter) (size_t, char *), int fd, const char *name, int nleft, const char *const *list, size_t count)
{
	size_t nwrite;
	ssize_t nread;
	char *text;
	char buffer[SCAN_BUFFER_SIZE];

	if (fd < 0) {
		text = NULL;
		die (__FILE__, __LINE__, name);
	} else if ((nread = read (fd, buffer, sizeof (buffer))) > 0) {
		if (filter == NULL)
			nwrite = nread;
		else
			nwrite = filter (nread, buffer);
		text = scan_list (filter, fd, name, nleft, list, count + nwrite);
		if (nwrite > 0)
			(void) memcpy (text + count, buffer, nwrite);
	} else {
		if (close (fd) != 0)
			die (__FILE__, __LINE__, name);
		if (nleft > 0) {
			if ((fd = open (*list, O_RDONLY)) < 0)
				die (__FILE__, __LINE__, *list);
			if (nleft > 1)
				text = scan_list (filter, fd, *list, nleft - 1, list + 1, count);
			else
				text = scan_list (filter, fd, *list, 0, NULL, count);
		} else {
			text = ptk_malloc (__FILE__, __LINE__, STRPAD (count));
			text[count] = '\0';
		}
	}
	return text;
}
