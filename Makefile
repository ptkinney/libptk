CFLAGS	      = -I/usr/local/include -fpic -O3 -fomit-frame-pointer -march=native -pedantic -std=gnu99 -Wall

DEST	      = /usr/local

EXTHDRS	      = /usr/local/include/ptk.h

HDRS	      = ptk.h

HEADER	      = ptk.h

LDFLAGS	      = -shared -Wl,-soname,$(LIBRARY)

LIBRARY	      = libptk.so.1

LIBT	      = -lm

MAKEFILE      = Makefile

MODE	      = 0644

NFLAGS	      = -f elf

OBJS	      = caldat.o \
		expander.o \
		integer.o \
		julian.o \
		lagfibd.o \
		lagfibi.o \
		lagfibld.o \
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
		w_trim.o

PRINT	      = pr

SHELL	      = /bin/sh

SRCS	      = caldat.c \
		expander.c \
		integer.c \
		julian.c \
		lagfibd.c \
		lagfibi.c \
		lagfibld.c \
		newdie.c \
		number.c \
		pack.c \
		parse_columns.c \
		parse_lines.c \
		parse_ymd.c \
		pm_allocarray.c \
		popcnt.c \
		popcntl.c \
		popcntll.c \
		ptk_calloc.c \
		ptk_malloc.c \
		ptk_memalign.c \
		ptk_realloc.c \
		scan_list.c \
		solve.c \
		solve_ld.c \
		str_size.c \
		str_temp.c \
		trim.c \
		vflag.c \
		w_integer.c \
		w_number.c \
		w_pack.c \
		w_parse_columns.c \
		w_parse_lines.c \
		w_parse_ymd.c \
		w_trim.c

SYSHDRS	      = /usr/include/alloca.h \
		/usr/include/asm-generic/bitsperlong.h \
		/usr/include/asm-generic/errno-base.h \
		/usr/include/asm-generic/errno.h \
		/usr/include/asm-generic/int-ll64.h \
		/usr/include/asm-generic/posix_types.h \
		/usr/include/asm-generic/types.h \
		/usr/include/asm/bitsperlong.h \
		/usr/include/asm/errno.h \
		/usr/include/asm/posix_types.h \
		/usr/include/asm/posix_types_32.h \
		/usr/include/asm/posix_types_64.h \
		/usr/include/asm/posix_types_x32.h \
		/usr/include/asm/types.h \
		/usr/include/bits/atomic_wide_counter.h \
		/usr/include/bits/byteswap.h \
		/usr/include/bits/confname.h \
		/usr/include/bits/endian.h \
		/usr/include/bits/endianness.h \
		/usr/include/bits/environments.h \
		/usr/include/bits/errno.h \
		/usr/include/bits/fcntl-linux.h \
		/usr/include/bits/fcntl.h \
		/usr/include/bits/fcntl2.h \
		/usr/include/bits/floatn-common.h \
		/usr/include/bits/floatn.h \
		/usr/include/bits/flt-eval-method.h \
		/usr/include/bits/fp-fast.h \
		/usr/include/bits/fp-logb.h \
		/usr/include/bits/getopt_core.h \
		/usr/include/bits/getopt_posix.h \
		/usr/include/bits/iscanonical.h \
		/usr/include/bits/libc-header-start.h \
		/usr/include/bits/libm-simd-decl-stubs.h \
		/usr/include/bits/long-double.h \
		/usr/include/bits/math-vector.h \
		/usr/include/bits/mathcalls-helper-functions.h \
		/usr/include/bits/mathcalls-narrow.h \
		/usr/include/bits/mathcalls.h \
		/usr/include/bits/posix_opt.h \
		/usr/include/bits/pthreadtypes-arch.h \
		/usr/include/bits/pthreadtypes.h \
		/usr/include/bits/select.h \
		/usr/include/bits/select2.h \
		/usr/include/bits/setjmp.h \
		/usr/include/bits/setjmp2.h \
		/usr/include/bits/stat.h \
		/usr/include/bits/statx-generic.h \
		/usr/include/bits/statx.h \
		/usr/include/bits/stdint-intn.h \
		/usr/include/bits/stdint-uintn.h \
		/usr/include/bits/stdio-ldbl.h \
		/usr/include/bits/stdio.h \
		/usr/include/bits/stdio2-decl.h \
		/usr/include/bits/stdio2.h \
		/usr/include/bits/stdio_lim.h \
		/usr/include/bits/stdlib-bsearch.h \
		/usr/include/bits/stdlib-float.h \
		/usr/include/bits/stdlib-ldbl.h \
		/usr/include/bits/stdlib.h \
		/usr/include/bits/string_fortified.h \
		/usr/include/bits/strings_fortified.h \
		/usr/include/bits/struct_mutex.h \
		/usr/include/bits/struct_rwlock.h \
		/usr/include/bits/struct_stat.h \
		/usr/include/bits/struct_stat_time64_helper.h \
		/usr/include/bits/thread-shared-types.h \
		/usr/include/bits/time64.h \
		/usr/include/bits/timesize.h \
		/usr/include/bits/types.h \
		/usr/include/bits/types/FILE.h \
		/usr/include/bits/types/__FILE.h \
		/usr/include/bits/types/__fpos64_t.h \
		/usr/include/bits/types/__fpos_t.h \
		/usr/include/bits/types/__locale_t.h \
		/usr/include/bits/types/__mbstate_t.h \
		/usr/include/bits/types/__sigset_t.h \
		/usr/include/bits/types/clock_t.h \
		/usr/include/bits/types/clockid_t.h \
		/usr/include/bits/types/cookie_io_functions_t.h \
		/usr/include/bits/types/error_t.h \
		/usr/include/bits/types/locale_t.h \
		/usr/include/bits/types/mbstate_t.h \
		/usr/include/bits/types/sigset_t.h \
		/usr/include/bits/types/struct_FILE.h \
		/usr/include/bits/types/struct___jmp_buf_tag.h \
		/usr/include/bits/types/struct_iovec.h \
		/usr/include/bits/types/struct_statx.h \
		/usr/include/bits/types/struct_statx_timestamp.h \
		/usr/include/bits/types/struct_timespec.h \
		/usr/include/bits/types/struct_timeval.h \
		/usr/include/bits/types/time_t.h \
		/usr/include/bits/types/timer_t.h \
		/usr/include/bits/types/wint_t.h \
		/usr/include/bits/typesizes.h \
		/usr/include/bits/uintn-identity.h \
		/usr/include/bits/unistd.h \
		/usr/include/bits/unistd_ext.h \
		/usr/include/bits/waitflags.h \
		/usr/include/bits/waitstatus.h \
		/usr/include/bits/wchar-ldbl.h \
		/usr/include/bits/wchar.h \
		/usr/include/bits/wchar2-decl.h \
		/usr/include/bits/wchar2.h \
		/usr/include/bits/wctype-wchar.h \
		/usr/include/bits/wordsize.h \
		/usr/include/ctype.h \
		/usr/include/endian.h \
		/usr/include/errno.h \
		/usr/include/fcntl.h \
		/usr/include/features-time64.h \
		/usr/include/features.h \
		/usr/include/gnu/stubs-32.h \
		/usr/include/gnu/stubs-64.h \
		/usr/include/gnu/stubs.h \
		/usr/include/inttypes.h \
		/usr/include/linux/close_range.h \
		/usr/include/linux/errno.h \
		/usr/include/linux/falloc.h \
		/usr/include/linux/posix_types.h \
		/usr/include/linux/stat.h \
		/usr/include/linux/stddef.h \
		/usr/include/linux/types.h \
		/usr/include/malloc.h \
		/usr/include/math.h \
		/usr/include/netpbm/pbm.h \
		/usr/include/netpbm/pm.h \
		/usr/include/netpbm/pm_config.h \
		/usr/include/setjmp.h \
		/usr/include/stdc-predef.h \
		/usr/include/stdint.h \
		/usr/include/stdio.h \
		/usr/include/stdlib.h \
		/usr/include/string.h \
		/usr/include/strings.h \
		/usr/include/sys/cdefs.h \
		/usr/include/sys/select.h \
		/usr/include/sys/stat.h \
		/usr/include/sys/types.h \
		/usr/include/unistd.h \
		/usr/include/wchar.h \
		/usr/include/wctype.h

all:		$(LIBRARY)

$(LIBRARY):	$(OBJS)
		rm -f $@ temp.$@
		$(CC) $(LDFLAGS) -o temp.$@ $(OBJS) $(LIBT)
		mv temp.$@ $@

check:;		rlog -R -L RCS/*,v

clean:;		rm -f $(OBJS) core

clobber:	clean
		rm -f $(LIBRARY) tags

depend:;	@mkmf -f $(MAKEFILE)

echo:;		@echo $(HDRS) $(SRCS)

extract:;	@ar x $(DEST)/$(LIBRARY)

index:;		@ctags -wx $(HDRS) $(SRCS)

install:	install-inc install-lib

install-inc:	$(HEADER)
		sudo rm -f $(DEST)/include/$(HEADER)
		sudo install -m $(MODE) $(HEADER) $(DEST)/include

install-lib:	$(LIBRARY)
		sudo rm -f $(DEST)/lib/$(LIBRARY)
		sudo install -m $(MODE) $(LIBRARY) $(DEST)/lib

print:;		@$(PRINT) $(HDRS) $(SRCS)

tags:           $(HDRS) $(SRCS); @ctags $(HDRS) $(SRCS)

update:		$(DEST)/include/$(HEADER) $(DEST)/lib/$(LIBRARY)

#popcnt.o:	popcnt.asm
#		nasm $(NFLAGS) -l popcnt.lst popcnt.asm

$(DEST)/include/$(HEADER): $(HEADER)
		@$(MAKE) $(MFLAGS) -f $(MAKEFILE) install-inc

$(DEST)/lib/$(LIBRARY): $(HDRS) $(SRCS)
		@$(MAKE) $(MFLAGS) -f $(MAKEFILE) install-lib
###
caldat.o: /usr/include/math.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/math-vector.h \
	/usr/include/bits/libm-simd-decl-stubs.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/flt-eval-method.h \
	/usr/include/bits/fp-logb.h /usr/include/bits/fp-fast.h \
	/usr/include/bits/mathcalls-helper-functions.h \
	/usr/include/bits/mathcalls.h /usr/include/bits/mathcalls-narrow.h \
	/usr/include/bits/iscanonical.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
expander.o: /usr/include/stdio.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/__fpos_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__fpos64_t.h /usr/include/bits/types/__FILE.h \
	/usr/include/bits/types/FILE.h /usr/include/bits/types/struct_FILE.h \
	/usr/include/bits/types/cookie_io_functions_t.h \
	/usr/include/bits/stdio_lim.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/getopt_posix.h \
	/usr/include/bits/getopt_core.h /usr/include/bits/stdio2-decl.h \
	/usr/include/bits/stdio-ldbl.h /usr/include/bits/stdio.h \
	/usr/include/bits/stdio2.h /usr/include/string.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/wchar2-decl.h /usr/include/bits/wchar-ldbl.h \
	/usr/include/bits/wchar2.h
integer.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
julian.o: /usr/include/math.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/math-vector.h \
	/usr/include/bits/libm-simd-decl-stubs.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/flt-eval-method.h \
	/usr/include/bits/fp-logb.h /usr/include/bits/fp-fast.h \
	/usr/include/bits/mathcalls-helper-functions.h \
	/usr/include/bits/mathcalls.h /usr/include/bits/mathcalls-narrow.h \
	/usr/include/bits/iscanonical.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
lagfibd.o: /usr/local/include/ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
lagfibi.o: /usr/local/include/ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
lagfibld.o: /usr/include/fcntl.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/fcntl.h /usr/include/bits/fcntl-linux.h \
	/usr/include/bits/types/struct_iovec.h /usr/include/linux/falloc.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/stat.h /usr/include/bits/struct_stat.h \
	/usr/include/bits/struct_stat_time64_helper.h \
	/usr/include/bits/fcntl2.h /usr/include/sys/stat.h \
	/usr/include/bits/statx.h /usr/include/linux/stat.h \
	/usr/include/linux/types.h /usr/include/asm/types.h \
	/usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
	/usr/include/asm/bitsperlong.h /usr/include/asm-generic/bitsperlong.h \
	/usr/include/linux/posix_types.h /usr/include/linux/stddef.h \
	/usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h \
	/usr/include/asm-generic/posix_types.h \
	/usr/include/asm/posix_types_x32.h /usr/include/asm/posix_types_64.h \
	/usr/include/bits/statx-generic.h \
	/usr/include/bits/types/struct_statx_timestamp.h \
	/usr/include/bits/types/struct_statx.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/unistd.h /usr/include/bits/posix_opt.h \
	/usr/include/bits/environments.h /usr/include/bits/confname.h \
	/usr/include/bits/getopt_posix.h /usr/include/bits/getopt_core.h \
	/usr/include/bits/unistd.h /usr/include/bits/unistd_ext.h \
	/usr/include/linux/close_range.h /usr/local/include/ptk.h \
	/usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/alloca.h \
	/usr/include/bits/stdlib-bsearch.h /usr/include/bits/stdlib-float.h \
	/usr/include/bits/stdlib.h /usr/include/bits/stdlib-ldbl.h \
	/usr/include/wchar.h /usr/include/bits/wchar.h \
	/usr/include/bits/types/wint_t.h /usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
newdie.o: /usr/include/errno.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/errno.h \
	/usr/include/linux/errno.h /usr/include/asm/errno.h \
	/usr/include/asm-generic/errno.h \
	/usr/include/asm-generic/errno-base.h \
	/usr/include/bits/types/error_t.h /usr/include/stdio.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/types/__fpos_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__fpos64_t.h /usr/include/bits/types/__FILE.h \
	/usr/include/bits/types/FILE.h /usr/include/bits/types/struct_FILE.h \
	/usr/include/bits/types/cookie_io_functions_t.h \
	/usr/include/bits/stdio_lim.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/getopt_posix.h \
	/usr/include/bits/getopt_core.h /usr/include/bits/stdio2-decl.h \
	/usr/include/bits/stdio-ldbl.h /usr/include/bits/stdio.h \
	/usr/include/bits/stdio2.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/string.h \
	/usr/include/strings.h /usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/wchar2-decl.h /usr/include/bits/wchar-ldbl.h \
	/usr/include/bits/wchar2.h
number.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
pack.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/string.h \
	/usr/include/bits/libc-header-start.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
parse_columns.o: /usr/include/string.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
parse_lines.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/string.h \
	/usr/include/bits/libc-header-start.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
parse_ymd.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/string.h \
	/usr/include/bits/libc-header-start.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
pm_allocarray.o: /usr/include/netpbm/pbm.h /usr/include/netpbm/pm.h \
	/usr/include/netpbm/pm_config.h /usr/include/inttypes.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/stdint.h /usr/include/bits/libc-header-start.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/wchar.h \
	/usr/include/bits/stdint-intn.h /usr/include/bits/stdint-uintn.h \
	/usr/include/string.h /usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/malloc.h \
	/usr/include/stdio.h /usr/include/bits/types/__fpos_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__fpos64_t.h /usr/include/bits/types/__FILE.h \
	/usr/include/bits/types/FILE.h /usr/include/bits/types/struct_FILE.h \
	/usr/include/bits/types/cookie_io_functions_t.h \
	/usr/include/bits/stdio_lim.h /usr/include/bits/getopt_posix.h \
	/usr/include/bits/getopt_core.h /usr/include/bits/stdio2-decl.h \
	/usr/include/bits/stdio-ldbl.h /usr/include/bits/stdio.h \
	/usr/include/bits/stdio2.h /usr/include/unistd.h \
	/usr/include/bits/posix_opt.h /usr/include/bits/environments.h \
	/usr/include/bits/confname.h /usr/include/bits/unistd.h \
	/usr/include/bits/unistd_ext.h /usr/include/linux/close_range.h \
	/usr/include/ctype.h /usr/include/errno.h /usr/include/bits/errno.h \
	/usr/include/linux/errno.h /usr/include/asm/errno.h \
	/usr/include/asm-generic/errno.h \
	/usr/include/asm-generic/errno-base.h \
	/usr/include/bits/types/error_t.h /usr/include/setjmp.h \
	/usr/include/bits/setjmp.h \
	/usr/include/bits/types/struct___jmp_buf_tag.h \
	/usr/include/bits/setjmp2.h /usr/include/sys/stat.h \
	/usr/include/bits/stat.h /usr/include/bits/struct_stat.h \
	/usr/include/bits/struct_stat_time64_helper.h \
	/usr/include/bits/statx.h /usr/include/linux/stat.h \
	/usr/include/linux/types.h /usr/include/asm/types.h \
	/usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
	/usr/include/asm/bitsperlong.h /usr/include/asm-generic/bitsperlong.h \
	/usr/include/linux/posix_types.h /usr/include/linux/stddef.h \
	/usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h \
	/usr/include/asm-generic/posix_types.h \
	/usr/include/asm/posix_types_x32.h /usr/include/asm/posix_types_64.h \
	/usr/include/bits/statx-generic.h \
	/usr/include/bits/types/struct_statx_timestamp.h \
	/usr/include/bits/types/struct_statx.h /usr/include/fcntl.h \
	/usr/include/bits/fcntl.h /usr/include/bits/fcntl-linux.h \
	/usr/include/bits/types/struct_iovec.h /usr/include/linux/falloc.h \
	/usr/include/bits/fcntl2.h /usr/local/include/ptk.h \
	/usr/include/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/wchar2-decl.h /usr/include/bits/wchar-ldbl.h \
	/usr/include/bits/wchar2.h
ptk_calloc.o: /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
ptk_malloc.o: /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
ptk_memalign.o: /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
ptk_realloc.o: ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
scan_list.o: /usr/include/fcntl.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/fcntl.h /usr/include/bits/fcntl-linux.h \
	/usr/include/bits/types/struct_iovec.h /usr/include/linux/falloc.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/stat.h /usr/include/bits/struct_stat.h \
	/usr/include/bits/struct_stat_time64_helper.h \
	/usr/include/bits/fcntl2.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/string.h \
	/usr/include/strings.h /usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h /usr/include/sys/stat.h \
	/usr/include/bits/statx.h /usr/include/linux/stat.h \
	/usr/include/linux/types.h /usr/include/asm/types.h \
	/usr/include/asm-generic/types.h /usr/include/asm-generic/int-ll64.h \
	/usr/include/asm/bitsperlong.h /usr/include/asm-generic/bitsperlong.h \
	/usr/include/linux/posix_types.h /usr/include/linux/stddef.h \
	/usr/include/asm/posix_types.h /usr/include/asm/posix_types_32.h \
	/usr/include/asm-generic/posix_types.h \
	/usr/include/asm/posix_types_x32.h /usr/include/asm/posix_types_64.h \
	/usr/include/bits/statx-generic.h \
	/usr/include/bits/types/struct_statx_timestamp.h \
	/usr/include/bits/types/struct_statx.h /usr/include/unistd.h \
	/usr/include/bits/posix_opt.h /usr/include/bits/environments.h \
	/usr/include/bits/confname.h /usr/include/bits/getopt_posix.h \
	/usr/include/bits/getopt_core.h /usr/include/bits/unistd.h \
	/usr/include/bits/unistd_ext.h /usr/include/linux/close_range.h ptk.h \
	/usr/include/wchar.h /usr/include/bits/wchar.h \
	/usr/include/bits/types/wint_t.h /usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
solve.o: /usr/include/math.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/math-vector.h \
	/usr/include/bits/libm-simd-decl-stubs.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/flt-eval-method.h \
	/usr/include/bits/fp-logb.h /usr/include/bits/fp-fast.h \
	/usr/include/bits/mathcalls-helper-functions.h \
	/usr/include/bits/mathcalls.h /usr/include/bits/mathcalls-narrow.h \
	/usr/include/bits/iscanonical.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
solve_ld.o: /usr/include/math.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/math-vector.h \
	/usr/include/bits/libm-simd-decl-stubs.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/bits/flt-eval-method.h \
	/usr/include/bits/fp-logb.h /usr/include/bits/fp-fast.h \
	/usr/include/bits/mathcalls-helper-functions.h \
	/usr/include/bits/mathcalls.h /usr/include/bits/mathcalls-narrow.h \
	/usr/include/bits/iscanonical.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
str_size.o: /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/string.h \
	/usr/include/strings.h /usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
str_temp.o: /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/string.h \
	/usr/include/strings.h /usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
trim.o: /usr/include/ctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/string.h \
	/usr/include/bits/libc-header-start.h /usr/include/strings.h \
	/usr/include/bits/strings_fortified.h \
	/usr/include/bits/string_fortified.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
vflag.o: ptk.h /usr/include/stdlib.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/sys/types.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wctype-wchar.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h
w_integer.o: /usr/include/wctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/types/wint_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wchar2-decl.h /usr/include/bits/wchar-ldbl.h \
	/usr/include/bits/wchar2.h
w_number.o: /usr/include/wctype.h /usr/include/features.h \
	/usr/include/features-time64.h /usr/include/bits/wordsize.h \
	/usr/include/bits/timesize.h /usr/include/stdc-predef.h \
	/usr/include/sys/cdefs.h /usr/include/bits/long-double.h \
	/usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
	/usr/include/gnu/stubs-64.h /usr/include/bits/types.h \
	/usr/include/bits/typesizes.h /usr/include/bits/time64.h \
	/usr/include/bits/types/wint_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/endian.h /usr/include/bits/endianness.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/libc-header-start.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/bits/floatn.h \
	/usr/include/bits/floatn-common.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h /usr/include/wchar.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/wchar2-decl.h /usr/include/bits/wchar-ldbl.h \
	/usr/include/bits/wchar2.h
w_pack.o: /usr/include/wchar.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h \
	/usr/include/wctype.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h
w_parse_columns.o: /usr/include/wchar.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h ptk.h \
	/usr/include/stdlib.h /usr/include/bits/waitflags.h \
	/usr/include/bits/waitstatus.h /usr/include/sys/types.h \
	/usr/include/bits/types/clock_t.h /usr/include/bits/types/clockid_t.h \
	/usr/include/bits/types/time_t.h /usr/include/bits/types/timer_t.h \
	/usr/include/bits/stdint-intn.h /usr/include/endian.h \
	/usr/include/bits/byteswap.h /usr/include/bits/uintn-identity.h \
	/usr/include/sys/select.h /usr/include/bits/select.h \
	/usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h
w_parse_lines.o: /usr/include/wchar.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h \
	/usr/include/wctype.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h
w_parse_ymd.o: /usr/include/wchar.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h \
	/usr/include/wctype.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h
w_trim.o: /usr/include/wchar.h /usr/include/bits/libc-header-start.h \
	/usr/include/features.h /usr/include/features-time64.h \
	/usr/include/bits/wordsize.h /usr/include/bits/timesize.h \
	/usr/include/stdc-predef.h /usr/include/sys/cdefs.h \
	/usr/include/bits/long-double.h /usr/include/gnu/stubs.h \
	/usr/include/gnu/stubs-32.h /usr/include/gnu/stubs-64.h \
	/usr/include/bits/floatn.h /usr/include/bits/floatn-common.h \
	/usr/include/bits/wchar.h /usr/include/bits/types/wint_t.h \
	/usr/include/bits/types/mbstate_t.h \
	/usr/include/bits/types/__mbstate_t.h \
	/usr/include/bits/types/__FILE.h /usr/include/bits/types/FILE.h \
	/usr/include/bits/types/locale_t.h \
	/usr/include/bits/types/__locale_t.h /usr/include/bits/wctype-wchar.h \
	/usr/include/bits/types.h /usr/include/bits/typesizes.h \
	/usr/include/bits/time64.h /usr/include/bits/endian.h \
	/usr/include/bits/endianness.h /usr/include/bits/wchar2-decl.h \
	/usr/include/bits/wchar-ldbl.h /usr/include/bits/wchar2.h \
	/usr/include/wctype.h ptk.h /usr/include/stdlib.h \
	/usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h \
	/usr/include/sys/types.h /usr/include/bits/types/clock_t.h \
	/usr/include/bits/types/clockid_t.h /usr/include/bits/types/time_t.h \
	/usr/include/bits/types/timer_t.h /usr/include/bits/stdint-intn.h \
	/usr/include/endian.h /usr/include/bits/byteswap.h \
	/usr/include/bits/uintn-identity.h /usr/include/sys/select.h \
	/usr/include/bits/select.h /usr/include/bits/types/sigset_t.h \
	/usr/include/bits/types/__sigset_t.h \
	/usr/include/bits/types/struct_timeval.h \
	/usr/include/bits/types/struct_timespec.h /usr/include/bits/select2.h \
	/usr/include/bits/pthreadtypes.h \
	/usr/include/bits/thread-shared-types.h \
	/usr/include/bits/pthreadtypes-arch.h \
	/usr/include/bits/atomic_wide_counter.h \
	/usr/include/bits/struct_mutex.h /usr/include/bits/struct_rwlock.h \
	/usr/include/alloca.h /usr/include/bits/stdlib-bsearch.h \
	/usr/include/bits/stdlib-float.h /usr/include/bits/stdlib.h \
	/usr/include/bits/stdlib-ldbl.h
