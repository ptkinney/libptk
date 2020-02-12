#include <immintrin.h>
#include <netpbm/pbm.h>
#include <stdlib.h>

#include <ptk.h>

char **pm_allocarray (int const ncols, int const nrows, int const size)
{
	int i, nvecs, retval;
	char **work;

	nvecs = ((ncols * size + sizeof (__m256i) - 1) / sizeof (__m256i)) | 1;
	work = (char **) ptk_calloc (__FILE__, __LINE__, nrows, sizeof (*work));
	if ((retval = posix_memalign ((void **) work, sizeof (__m256i), nrows * nvecs * sizeof (__m256i))) != 0)
		die (__FILE__, __LINE__, "posix_memalign (%p, %lu, %lu) returned %d", (const void *) work, (unsigned long) sizeof (__m256i), (unsigned long) (nrows * nvecs * sizeof (__m256i)), retval);
	for (i = 1; i < nrows; ++i)
		work[i] = work[i - 1] + nvecs * sizeof (__m256i);
	return work;
}

void pm_freearray (char **const its, int const rows)
{
	free (*its);
	free (its);
}
