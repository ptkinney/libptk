CFLAGS	      = -DDEBUG -I.. -I../.. -g -momit-leaf-frame-pointer -march=native -pedantic-errors -std=gnu99 -Wall -Wfatal-errors

LDFLAGS	      = -g

HDRS	      = $(shell ls *.h)

SRCS	      = $(shell ls *.c)

OBJS	      = $(filter-out main_%.o,$(SRCS:%.c=%.o))

MAIN	      = $(filter main_%,$(SRCS:%.c=%))

BINS	      = $(MAIN:main_%=m32/%-dbg) $(MAIN:main_%=m64/%-dbg) \
		$(MAIN:main_%=m32/%-opt) $(MAIN:main_%=m64/%-opt) \
		$(MAIN:main_%=m32/%-prf) $(MAIN:main_%=m64/%-prf)

LOGS	      = $(MAIN:main_%=m32/%-dbg.log) $(MAIN:main_%=m64/%-dbg.log) \
		$(MAIN:main_%=m32/%-opt.log) $(MAIN:main_%=m64/%-opt.log) \
		$(MAIN:main_%=m32/%-prf.log) $(MAIN:main_%=m64/%-prf.log)

LIBRARY	      = libtest.a

LD32	      = ../lib32/libptk-debug.a
LD64	      = ../lib64/libptk-debug.a
LO32	      = ../lib32/libptk.a
LO64	      = ../lib64/libptk.a
LP32	      = ../lib32/libptk-gprof.a
LP64	      = ../lib64/libptk-gprof.a

LIBT	      = -lptk -lm

all:		$(BINS) $(LOGS)
		echo OBJS = $(OBJS)
		tail $(LOGS)

clean:;		rm -f gmon.out
		rm -f m32/*.o
		rm -f m64/*.o

clobber:	clean
		rm -f m32/*.a
		rm -f m64/*.a
		rm -f $(BINS)
		rm -f $(LOGS)

objs:		$(SRCS:%.c=%.o)

m32/%-dbg.log:	m32/%-dbg
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m64/%-dbg.log:	m64/%-dbg
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m32/%-opt.log:	m32/%-opt
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m64/%-opt.log:	m64/%-opt
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m32/%-prf.log:	m32/%-prf
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m64/%-prf.log:	m64/%-prf
		$< 1> $(@D)/temp.$(@F) 2>&1
		mv $(@D)/temp.$(@F) $@

m32/%-dbg:	m32/main_%.o m32/$(LIBRARY) $(LD32)
		cd m32 && $(CC) $(LDFLAGS) -m32 $(<F) $(LIBRARY) ../$(LD32) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m64/%-dbg:	m64/main_%.o m64/$(LIBRARY) $(LD64)
		cd m64 && $(CC) $(LDFLAGS) -m64 $(<F) $(LIBRARY) ../$(LD64) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m32/%-opt:	m32/main_%.o m32/$(LIBRARY) $(LO32)
		cd m32 && $(CC) $(LDFLAGS) -m32 $(<F) $(LIBRARY) ../$(LO32) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m64/%-opt:	m64/main_%.o m64/$(LIBRARY) $(LO64)
		cd m64 && $(CC) $(LDFLAGS) -m64 $(<F) $(LIBRARY) ../$(LO64) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m32/%-prf:	m32/main_%.o m32/$(LIBRARY) $(LP32)
		cd m32 && $(CC) $(LDFLAGS) -m32 $(<F) $(LIBRARY) ../$(LP32) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m64/%-prf:	m64/main_%.o m64/$(LIBRARY) $(LP64)
		cd m64 && $(CC) $(LDFLAGS) -m64 $(<F) $(LIBRARY) ../$(LP64) $(LIBT) -o temp.$(@F)
		mv $(@D)/temp.$(@F) $@

m32/$(LIBRARY):	$(OBJS:%.o=m32/%.o)
		rm -f $(@D)/temp.$(@F) $@
		cd m32 && ar crv temp.$(@F) $(OBJS)
		mv $(@D)/temp.$(@F) $@

m64/$(LIBRARY):	$(OBJS:%.o=m64/%.o)
		rm -f $(@D)/temp.$(@F) $@
		cd m64 && ar crv temp.$(@F) $(OBJS)
		mv $(@D)/temp.$(@F) $@

m32/%.o:	%.c
		cd m32 && $(CC) $(CFLAGS) -m32 -c -o temp.$(@F) ../$< 
		mv $(@D)/temp.$(@F) $@

m64/%.o:	%.c
		cd m64 && $(CC) $(CFLAGS) -m64 -c -o temp.$(@F) ../$< 
		mv $(@D)/temp.$(@F) $@
