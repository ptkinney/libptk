#include <immintrin.h>
#include <netpbm/pbm.h>
#include <stdlib.h>

#include <ptk.h>

char **pm_allocarray (int const ncols, int const nrows, int const size)
{
	int i, retval;
	unsigned long row_length;
	char **work;

   /*
    * row_length is the row length in bytes.
    */
	row_length = ((ncols * size - 1) | (sizeof (__m256i) - 1)) + 1;
	if (vflag > 0)
		(void) fprintf (stderr, "%s (%d):  sizeof (__m256i) = %d, ncols = %d, nrows = %d, size = %d, row_length = %lu\n", __FILE__, __LINE__, (int) sizeof (__m256i), ncols, nrows, size, row_length);
	work = (char **) ptk_calloc (__FILE__, __LINE__, nrows, sizeof (*work));
	if ((retval = posix_memalign ((void **) work, sizeof (__m256i), nrows * row_length)) != 0)
		die (__FILE__, __LINE__, "posix_memalign (%p, %lu, %lu) returned %d", (const void *) work, (unsigned long) sizeof (__m256i), (unsigned long) (nrows * row_length), retval);
	for (i = 1; i < nrows; ++i)
		work[i] = work[i - 1] + row_length;
	return work;
}

char **iptk_allocarray (int const ncols, int const nrows, int const size)
{
	int i, row_length, retval;
	char **work;

   /*
    * row_length is the row length in bytes.
    */
	row_length = ((ncols * size - 1) | (sizeof (__m256i) - 1)) + 1;
	if (vflag > 0)
		(void) fprintf (stderr, "%s (%d):  ncols = %d, row_length = %d\n", __FILE__, __LINE__, ncols, row_length);
	work = (char **) ptk_calloc (__FILE__, __LINE__, nrows, sizeof (*work));
	if ((retval = posix_memalign ((void **) work, sizeof (__m256i), nrows * row_length)) != 0)
		die (__FILE__, __LINE__, "posix_memalign (%p, %lu, %lu) returned %d", (const void *) work, (unsigned long) sizeof (__m256i), (unsigned long) (nrows * row_length), retval);
	for (i = 1; i < nrows; ++i)
		work[i] = work[i - 1] + row_length;
	return work;
}

void pm_freearray (char **const its, int const rows)
{
	free (*its);
	free (its);
}

void iptk_freearray (char **const its, int const rows)
{
	free (*its);
	free (its);
}
