#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>

#include <ptk.h>

#ifndef  NEVER
#define SHORT 5
#define LONG 17
#define MAX  32
#else
#define SHORT 3
#define LONG  5
#define MAX   8
#endif

typedef union {
	long double real;
	unsigned char word[sizeof (long double)];
} Mixed;

static const char random_device[] = "/dev/urandom";

static Mixed rndm_seed[MAX];
static int rndm_count = 0;

long double lagfibld (void)
{
	int fd;
	long double x;
	ssize_t nread, temp, total;

	if (rndm_count <= 0) {
		if ((fd = open (random_device, O_RDONLY)) < 0)
			die (__FILE__, __LINE__, random_device);
		nread = LONG * sizeof (*rndm_seed);
		if ((total = read (fd, rndm_seed, nread)) <= 0)
			die (__FILE__, __LINE__, random_device);
		while (total < nread) {
			if ((temp = read (fd, (char *) rndm_seed + total, nread - total)) <= 0)
				die (__FILE__, __LINE__, random_device);
			total += temp;
		}
		if (close (fd))
			die (__FILE__, __LINE__, random_device);
		for (rndm_count = 0; rndm_count < LONG; ++rndm_count) {
			rndm_seed[rndm_count].word[9] &= 0x3f;
			rndm_seed[rndm_count].word[9] |= 0x3f;
			rndm_seed[rndm_count].word[8] |= 0xff;
			rndm_seed[rndm_count].word[7] |= 0x80;
			rndm_seed[rndm_count].real -= 1.0;
			if ((rndm_seed[rndm_count].real < 0.0) || (rndm_seed[rndm_count].real >= 1.0))
				die (__FILE__, __LINE__, random_device);
		}
	}
	x = rndm_seed[(rndm_count - SHORT) % MAX].real + rndm_seed[(rndm_count - LONG) % MAX].real;
	if (x >= 1.0)
		x -= 1.0;
	if ((x < 0.0) || (x >= 1.0))
		die (__FILE__, __LINE__, random_device);
	rndm_seed[(rndm_count++) % MAX].real = x;
	return x;
}
