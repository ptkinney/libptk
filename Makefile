# Automate Version Discovery
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
LIB_MAJOR    := $(firstword $(subst ., ,$(LIB_VERSION)))

# Project Metadata & Target Definitions
LIBRARY	     := ptk
LIB_NAME     := lib$(LIBRARY)
HEADER	      = $(LIBRARY).h

LIB_SO	     := $(LIB_NAME).so.$(LIB_VERSION)
LIB_SONAME   := $(LIB_NAME).so.$(LIB_MAJOR)

# Portability/Staging directory prefixes
PREFIX	     ?= /usr
LIBDIR	     ?= $(PREFIX)/lib
INCDIR	     ?= $(PREFIX)/include

# Standard Toolchain variables
CC	     ?= gcc
CFLAGS	     ?= -O3 -fomit-frame-pointer -fpic -march=native -pedantic-errors -std=gnu99 -Wall
LDFLAGS	     ?=

# Append mandatory flags for building shared libraries without overwriting CFLAGS
TARGET_CFLAGS := $(CFLAGS) -fPIC -Iinclude

# Target Lists
LIB_SRCS      = $(shell ls src/*.c)
LIB_OBJS      = $(LIB_SRCS:%.c=%.o)

# Build Rules
.PHONY:		all clean install

# The default target
all:		$(LIB_SO)

# Cleanup
clean:;		rm -f src/*.o $(LIB_SO)

# Compile C source files to Object files (Uses CC and TARGET_CFLAGS)
src/%.o:	src/%.c
		$(CC) $(TARGET_CFLAGS) -c $< -o $@

# Link Shared Library (Uses LDFLAGS)
$(LIB_SO):	$(LIB_OBJS)
		$(CC) $(LDFLAGS) -shared -Wl,-soname,$(LIB_SONAME) -o $@ $^

# Install Target
install:	include/$(HEADER) $(LIB_SO)
		install -d "$(DESTDIR)$(INCDIR)"
		install -m 0644 include/$(HEADER) "$(DESTDIR)$(INCDIR)/"
		install -d "$(DESTDIR)$(LIBDIR)"
		install -m 0755 $(LIB_SO) "$(DESTDIR)$(LIBDIR)/"
		ln -sf $(LIB_SO) "$(DESTDIR)$(LIBDIR)/$(LIB_SONAME)"
		ln -sf $(LIB_SO) "$(DESTDIR)$(LIBDIR)/$(LIB_NAME).so"
