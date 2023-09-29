CFLAGS	      = -I/usr/local/include -fpic -march=native -pedantic-errors -std=gnu99 -Wall

CFLDBG	      = -DDEBUG -g -momit-leaf-frame-pointer

CFLOPT	      = -O3 -fomit-frame-pointer

DEST	      = /usr/local

LIBRARY	      = ptk

HEADER	      = $(LIBRARY).h

LDA32	      = lib32/lib$(LIBRARY)-debug.a
LDA64	      = lib64/lib$(LIBRARY)-debug.a
LDS32	      = lib32/lib$(LIBRARY)-debug.so.1
LDS64	      = lib64/lib$(LIBRARY)-debug.so.1
LOA32	      = lib32/lib$(LIBRARY).a
LOA64	      = lib64/lib$(LIBRARY).a
LOS32	      = lib32/lib$(LIBRARY).so.1
LOS64	      = lib64/lib$(LIBRARY).so.1

LIST	      = $(LDA32) \
		$(LDA64) \
		$(LDS32) \
		$(LDS64) \
		$(LOA32) \
		$(LOA64) \
		$(LOS32) \
		$(LOS64)

LIBT	      = -lm

HDRS	      = $(shell ls *.h)

SRCS	      = $(shell ls *.c)

DBG32	      = $(SRCS:%.c=dbg32/%.o)
DBG64	      = $(SRCS:%.c=dbg64/%.o)
OPT32	      = $(SRCS:%.c=opt32/%.o)
OPT64	      = $(SRCS:%.c=opt64/%.o)

SHELL	      = /bin/sh

all:		$(LIST)

clean:;		rm -f $(DBG32)
		rm -f $(DBG64)
		rm -f $(OPT32)
		rm -f $(OPT64)

clobber:	clean
		rm -f $(LDA32)
		rm -f $(LDA64)
		rm -f $(LDS32)
		rm -f $(LDS64)
		rm -f $(LOA32)
		rm -f $(LOA64)
		rm -f $(LOS32)
		rm -f $(LOS64)

$(LDA32):	$(DBG32)
		rm -f $@ dbg32/temp.$(@F)
		cd dbg32 && $(AR) crv temp.$(@F) $(notdir $(DBG32))
		mv dbg32/temp.$(@F) $@

$(LDA64):	$(DBG64)
		rm -f $@ dbg64/temp.$(@F)
		cd dbg64 && $(AR) crv temp.$(@F) $(notdir $(DBG64))
		mv dbg64/temp.$(@F) $@

$(LDS32):	$(DBG32)
		rm -f $@ dbg32/temp.$(@F)
		cd dbg32 && $(CC) -shared -Wl,-soname,$(notdir $(LDS32)) -m32 -o temp.$(@F) $(notdir $(DBG32)) $(LIBT)
		mv dbg32/temp.$(@F) $@

$(LDS64):	$(DBG64)
		rm -f $@ dbg64/temp.$(@F)
		cd dbg64 && $(CC) -shared -Wl,-soname,$(notdir $(LDS64)) -m64 -o temp.$(@F) $(notdir $(DBG64)) $(LIBT)
		mv dbg64/temp.$(@F) $@

$(LOA32):	$(OPT32)
		rm -f $@ opt32/temp.$(@F)
		cd opt32 && $(AR) crv temp.$(@F) $(notdir $(OPT32))
		mv opt32/temp.$(@F) $@

$(LOA64):	$(OPT64)
		rm -f $@ opt64/temp.$(@F)
		cd opt64 && $(AR) crv temp.$(@F) $(notdir $(OPT64))
		mv opt64/temp.$(@F) $@

$(LOS32):	$(OPT32)
		rm -f $@ opt32/temp.$(@F)
		cd opt32 && $(CC) -shared -Wl,-soname,$(notdir $(LOS32)) -m32 -o temp.$(@F) $(notdir $(OPT32)) $(LIBT)
		mv opt32/temp.$(@F) $@

$(LOS64):	$(OPT64)
		rm -f $@ opt64/temp.$(@F)
		cd opt64 && $(CC) -shared -Wl,-soname,$(notdir $(LOS64)) -m64 -o temp.$(@F) $(notdir $(OPT64)) $(LIBT)
		mv opt64/temp.$(@F) $@

dbg32/%.o:	%.c $(HDRS)
		$(CC) $(CFLDBG) $(CFLAGS) -m32 -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

dbg64/%.o:	%.c $(HDRS)
		$(CC) $(CFLDBG) $(CFLAGS) -m64 -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

opt32/%.o:	%.c $(HDRS)
		$(CC) $(CFLOPT) $(CFLAGS) -m32 -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

opt64/%.o:	%.c $(HDRS)
		$(CC) $(CFLOPT) $(CFLAGS) -m64 -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

install:	install-inc install-lib

update:		install-inc install-lib

install-inc:	$(HEADER:%.h=$(DEST)/include/%.h)

install-lib:	$(LIST:%=$(DEST)/%)

$(DEST)/include/%.h: %.h
		sudo rm -f $@
		sudo install -m 0644 $< $(DEST)/include

$(DEST)/%.so.1: %.so.1
		sudo rm -f $@
		sudo install -m 0755 $< $(@D)

$(DEST)/%.a:	%.a
		sudo rm -f $@
		sudo install -m 0644 $< $(@D)
