CC	     ?= gcc

CFLAGS	     ?= -O3 -fomit-frame-pointer -march=native -pedantic-errors -std=gnu99 -Wall

LDFLAGS	     ?=

ifdef VERSION
	LIB_VERSION  := $(VERSION)
else ifneq ($(wildcard .git),)
	LIB_VERSION  := $(shell git describe --tags --always --dirty | sed 's/^v//')
else
	LIB_VERSION  := 1.0.0
endif

LIB_MAJOR    := $(firstword $(subst ., ,$(LIB_VERSION)))

LIB_NAME      = libptk

LIB_SO	      = $(LIB_NAME).so.$(LIB_VERSION)

LIB_SONAME    = $(LIB_NAME).so.$(LIB_MAJOR)

OBJS	      = caldat.o \
		expander.o \
		get_today.o \
		integer.o \
		julian.o \
		lagfibd.o \
		lagfibi.o \
		lagfibld.o \
		month_full.o \
		month_short.o \
		newdie.o \
		number.o \
		pack.o \
		parse_columns.o \
		parse_lines.o \
		parse_ymd.o \
		pm_allocarray.o \
		popcnt.o \
		popcntl.o \
		popcntll.o \
		ptk_calloc.o \
		ptk_malloc.o \
		ptk_memalign.o \
		ptk_realloc.o \
		scan_list.o \
		solve.o \
		solve_ld.o \
		str_size.o \
		str_temp.o \
		trim.o \
		vflag.o \
		w_integer.o \
		w_number.o \
		w_pack.o \
		w_parse_columns.o \
		w_parse_lines.o \
		w_parse_ymd.o \
		w_trim.o \
		weekday_full.o \
		weekday_short.o

LIST	      = $(LIB_SO)

.PHONY:		all clean

all:		$(LIST)

clean:;		rm -f *.o
		rm -f $(LIST)

%.o:		%.c ptk.h
		$(CC) $(CFLAGS) -fPIC -c $< -o $@

$(LIB_SO):	$(OBJS)
		$(CC) -shared $(LDFLAGS) -Wl,-soname,$(LIB_SONAME) -o temp.$(LIB_SO) $(OBJS)
		mv temp.$(LIB_SO) $(LIB_SO)
