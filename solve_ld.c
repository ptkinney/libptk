#include <math.h>
#ifdef	__cplusplus
#else
#include <stdlib.h>
#endif

#include "ptk.h"

int solve_ld (int n, const long double *const *a, long double *const *x, int m, const long double *const *b)
{
	int bmax, i, j, k, temp, xmax;
	int *ib, *ix;
	long double **aa, **bb;
	static int lastn = 0;
	static int *work = 0;
	static long double **matr = 0;

	if ((m < 1) || (n < 1))
		return __LINE__;
 /*
  * Set up workspace.
  */
	if ((m + n) > lastn) {
#ifdef	__cplusplus
		if (matr != 0) {
			if (*matr != 0)
				delete [] *matr;
			delete [] matr;
		}
		if (work != 0)
			delete [] work;
#else
		if (matr != NULL) {
			if (*matr != NULL)
				free (*matr);
			free (matr);
		}
		if (work != NULL)
			free (work);
#endif
		lastn = m + n;
#ifdef	__cplusplus
		if ((work = new int [2 * (lastn - 1)]) == 0)
			return __LINE__;
		if ((matr = new long double *[lastn]) == 0)
			return __LINE__;
		if ((*matr = new long double [(lastn - 1) * lastn]) == 0)
			return __LINE__;
#else
		if ((work = (int *) calloc (2 * (lastn - 1), sizeof (*work))) == NULL)
			return __LINE__;
		if ((matr = (long double **) calloc (lastn, sizeof (*matr))) == NULL)
			return __LINE__;
		if ((*matr = (long double *) calloc ((lastn - 1) * lastn, sizeof (**matr))) == NULL)
			return __LINE__;
#endif
	}
	aa = matr;
	aa[0] = *matr;
	for (i = 1; i < n; ++i)
		aa[i] = aa[i - 1] + n;
	bb = matr + n;
	bb[0] = aa[n - 1] + n;
	for (i = 1; i < m; ++i)
		bb[i] = bb[i - 1] + n;
	ib = work;
	ix = ib + n;
	for (i = 0; i < n; ++i) {
		ib[i] = i;
		ix[i] = i;
	}
	for (j = 0; j < m; ++j)
		for (i = 0; i < n; ++i)
			bb[j][i] = b[j][i];
	for (j = 0; j < n; ++j)
		for (i = 0; i < n; ++i)
			aa[j][i] = a[j][i];
 /*
  * Forward elimination.
  */
	for (i = 0; i < n; ++i) {
		bmax = i;
		xmax = i;
		for (k = i; k < n; ++k)
			for (j = i; j < n; ++j)
				if (fabsl (aa[ix[xmax]][ib[bmax]]) < fabsl (aa[ix[k]][ib[j]])) {
					bmax = j;
					xmax = k;
				}
		if (bmax > i) {
			temp = ib[i];
			ib[i] = ib[bmax];
			ib[bmax] = temp;
		}
		if (xmax > i) {
			temp = ix[i];
			ix[i] = ix[xmax];
			ix[xmax] = temp;
		}
		if (aa[ix[i]][ib[i]] == 0.0)
			return __LINE__;
		for (j = i + 1; j < n; ++j) {
			for (k = i + 1; k < n; ++k)
				aa[ix[k]][ib[j]] -= aa[ix[i]][ib[j]] * aa[ix[k]][ib[i]] / aa[ix[i]][ib[i]];
			for (k = 0; k < m; ++k)
				bb[k][ib[j]] -= aa[ix[i]][ib[j]] * bb[k][ib[i]] / aa[ix[i]][ib[i]];
		}
	}
 /*
  * Back substitution.
  */
	for (k = 0; k < m; ++k)
		for (i = n - 1; i >= 0; --i) {
			x[k][ix[i]] = bb[k][ib[i]];
			for (j = n - 1; j > i; --j)
				x[k][ix[i]] -= aa[ix[j]][ib[i]] * x[k][ix[j]];
			x[k][ix[i]] /= aa[ix[i]][ib[i]];
		}
	return 0;
}
