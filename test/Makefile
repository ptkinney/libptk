CFLAGS	      = -DDEBUG -I../.. -g -momit-leaf-frame-pointer -march=native -m64 -pedantic-errors -std=gnu99 -Wall -Wfatal-errors

LDFLAGS	      = -g -m64

HDRS	      = $(shell ls *.h)

SRCS	      = $(shell ls *.c)

OBJS	      = $(filter-out main_%.o,$(SRCS:%.c=%.o))

MAIN	      = $(filter main_%,$(SRCS:%.c=%))

BINS	      = $(MAIN:main_%=%-dbg) \
		$(MAIN:main_%=%-opt) \
		$(MAIN:main_%=%-prf)

LOGS	      = $(MAIN:main_%=%-dbg.log) \
		$(MAIN:main_%=%-opt.log) \
		$(MAIN:main_%=%-prf.log)

LIBRARY	      = libtest.a

LIBSD	      = ../lib64/libptk-debug.a
LIBSO	      = ../lib64/libptk.a
LIBSP	      = ../lib64/libptk-gprof.a

LIBT	      = -lptk -lm

all:		$(BINS) $(LOGS)
		echo OBJS = $(OBJS)
		tail $(LOGS)

clean:;		rm -f gmon.out
		rm -f *.o

clobber:	clean
		rm -f $(BINS)

objs:		$(SRCS:%.c=%.o)

%-dbg.log:	%-dbg
		$< 1> temp.$@ 2>&1
		mv temp.$@ $@

%-opt.log:	%-opt
		$< 1> temp.$@ 2>&1
		mv temp.$@ $@

%-prf.log:	%-prf
		$< 1> temp.$@ 2>&1
		mv temp.$@ $@

%-dbg:		main_%.o $(LIBRARY) $(LIBSD)
		$(CC) $(LDFLAGS) $< $(LIBRARY) $(LIBSD) $(LIBT) -o temp.$@
		mv temp.$@ $@

%-opt:		main_%.o $(LIBRARY) $(LIBSO)
		$(CC) $(LDFLAGS) $< $(LIBRARY) $(LIBSO) $(LIBT) -o temp.$@
		mv temp.$@ $@

%-prf:		main_%.o $(LIBRARY) $(LIBSP)
		$(CC) $(LDFLAGS) $< $(LIBRARY) $(LIBSP) $(LIBT) -o temp.$@
		mv temp.$@ $@

$(LIBRARY):	$(OBJS)
		rm -f temp.$@ $@
		ar crv temp.$@ $(OBJS)
		mv temp.$@ $@

%.o:		%.c
		$(CC) $(CFLAGS) -c -o temp.$@ $< 
		mv temp.$@ $@
