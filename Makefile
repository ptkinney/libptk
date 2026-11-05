# 1. Automate Version Discovery
# Priority 1: User explicitly overrides via command line (e.g., from an ebuild)
# Priority 2: Extract from local git tag if compiling locally in a git repo
# Priority 3: Hardcoded safe fallback
ifdef VERSION
	LIB_VERSION := $(VERSION)
else ifneq ($(wildcard .git),)
	# Staged locally in a Git repository
	LIB_VERSION := $(shell git describe --tags --always --dirty | sed 's/^v//')
else
	# Fallback default if built outside Git (like from a Gentoo release tarball)
	LIB_VERSION := 1.0.0
endif

# Extract the major version number for the SONAME (e.g., "1.2.3" -> "1")
LIB_MAJOR   := $(firstword $(subst ., ,$(LIB_VERSION)))

CFLAGS	      = -I/usr/local/include -fpic -march=native -pedantic-errors -std=gnu99 -Wall

CFLDBG	      = -DDEBUG -g -momit-leaf-frame-pointer
CFLOPT	      = -O3 -fomit-frame-pointer
CFLPRF	      = -DPROFILE -O3 -pg -momit-leaf-frame-pointer

DEST	      = /usr/local

LIBRARY	      = ptk

HEADER	      = $(LIBRARY).h

LDA	      = lib$(LIBRARY)-debug.a
LDSa	      = lib$(LIBRARY)-debug.so.$(LIB_MAJOR)
LDSb	      = lib$(LIBRARY)-debug.so.$(LIB_VERSION)
LOA	      = lib$(LIBRARY).a
LOSa	      = lib$(LIBRARY).so.$(LIB_MAJOR)
LOSb	      = lib$(LIBRARY).so.$(LIB_VERSION)
LPA	      = lib$(LIBRARY)-gprof.a
LPSa	      = lib$(LIBRARY)-gprof.so.$(LIB_MAJOR)
LPSb	      = lib$(LIBRARY)-gprof.so.$(LIB_VERSION)

LIST	      = $(LDA) $(LDSa) $(LDSb) \
		$(LOA) $(LOSa) $(LOSb) \
		$(LPA) $(LPSa) $(LPSb)

LIBT	      = -lm

HDRS	      = $(shell ls *.h)

SRCS	      = $(shell ls *.c)

DBG	      = $(SRCS:%.c=dbg/%.o)
OPT	      = $(SRCS:%.c=opt/%.o)
PRF	      = $(SRCS:%.c=prf/%.o)

SHELL	      = /bin/sh

all:		$(LIST)
		ls -l $(LIST)

clean:;		rm -f $(DBG)
		rm -f $(OPT)
		rm -f $(PRF)

clobber:	clean
		rm -f $(LDA) $(LDSa) $(LDSb)
		rm -f $(LOA) $(LOSa) $(LOSb)
		rm -f $(LPA) $(LPSa) $(LPSb)

$(LDA):		$(DBG)
		rm -f $@ dbg/temp.$(@F)
		cd dbg && $(AR) crv temp.$(@F) $(notdir $(DBG))
		mv dbg/temp.$(@F) $@

$(LDSa):	$(DBG)
		rm -f $@ dbg/temp.$(@F)
		cd dbg && $(CC) -shared -Wl,-soname,$(notdir $(LDSa)) -o temp.$(@F) $(notdir $(DBG)) $(LIBT)
		mv dbg/temp.$(@F) $@

$(LDSb):	$(DBG)
		rm -f $@ dbg/temp.$(@F)
		cd dbg && $(CC) -shared -Wl,-soname,$(notdir $(LDSb)) -o temp.$(@F) $(notdir $(DBG)) $(LIBT)
		mv dbg/temp.$(@F) $@

$(LOA):		$(OPT)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(AR) crv temp.$(@F) $(notdir $(OPT))
		mv opt/temp.$(@F) $@

$(LOSa):	$(OPT)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(CC) -shared -Wl,-soname,$(notdir $(LOSa)) -o temp.$(@F) $(notdir $(OPT)) $(LIBT)
		mv opt/temp.$(@F) $@

$(LOSb):	$(OPT)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(CC) -shared -Wl,-soname,$(notdir $(LOSb)) -o temp.$(@F) $(notdir $(OPT)) $(LIBT)
		mv opt/temp.$(@F) $@

$(LPA):		$(PRF)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(AR) crv temp.$(@F) $(notdir $(PRF))
		mv opt/temp.$(@F) $@

$(LPSa):	$(PRF)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(CC) -shared -Wl,-soname,$(notdir $(LOSa)) -o temp.$(@F) $(notdir $(PRF)) $(LIBT)
		mv opt/temp.$(@F) $@

$(LPSb):	$(PRF)
		rm -f $@ opt/temp.$(@F)
		cd opt && $(CC) -shared -Wl,-soname,$(notdir $(LOSb)) -o temp.$(@F) $(notdir $(PRF)) $(LIBT)
		mv opt/temp.$(@F) $@

dbg/%.o:	%.c $(HDRS)
		$(CC) $(CFLDBG) $(CFLAGS) -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

opt/%.o:	%.c $(HDRS)
		$(CC) $(CFLOPT) $(CFLAGS) -c -o $(@D)/temp.$(@F) $< 
		mv $(@D)/temp.$(@F) $@

prf/%.o:	%.c $(HDRS)
		$(CC) $(CFLPRF) $(CFLAGS) -c -o $(@D)/temp.$(@F) $< 
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
