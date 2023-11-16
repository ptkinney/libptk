#include <stdio.h>
#include <unistd.h>

#include <ptk.h>

#include "test.h"

static void usage (FILE *fp, const char *name)
{
	(void) fprintf (fp, "usage:  %s [ -h ] [ -v... ]\n", name);
	exit (fp != stdout);
}

int main (int argc, char *const *argv)
{
	int c, hflag, nerrs;

   /*
    * Initializations.
    */
	hflag = 0;
	nerrs = 0;
   /*
    * Get command line arguments.
    */
	while ((c = getopt (argc, argv, "hv")) != EOF)
		switch (c) {
		case 'h':
			hflag = 1;
			break;
		case 'v':
			++vflag;
			break;
		default:
			++nerrs;
			break;
		}
   /*
    * Feedback?
    */
	if (nerrs > 0)
		usage (stderr, argv[0]);
	if (hflag)
		usage (stdout, argv[0]);
   /*
    * Run tests.
    */
	nerrs += lagfibld_test1 ();
   /*
    * Return overall outcome.
    */
	return nerrs;
}
