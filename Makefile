SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

# Detect architecture
ARCH := $(shell uname -m)

# Set architecture-specific flags
ifeq ($(ARCH),arm64)
    # Apple Silicon - use consistent i386 architecture for both assembler and linker
    AS_FLAGS := --target=i386-apple-darwin -arch i386
    LD_FLAGS := -arch i386 -lSystem -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
    # Use clang as the linker on Apple Silicon
    LD_CMD := clang
else
    # Intel x86
    AS_FLAGS := --march=i386 --32 -gstabs
    LD_FLAGS := -m elf_i386
    LD_CMD := ld
endif

BUILDDIR = build
WENDDIR = test-programs
TESTS = $(shell find $(WENDDIR) -name '*.wend' -not -path '*/gfx/*')

GFXDIR = $(WENDDIR)/gfx
GFXASM = $(patsubst $(GFXDIR)/%.wend, $(BUILDDIR)/%.s,   $(wildcard $(GFXDIR)/*.wend))
GFXOBJ = $(patsubst $(GFXDIR)/%.wend, $(BUILDDIR)/%.o,   $(wildcard $(GFXDIR)/*.wend))
GFXEXE = $(patsubst $(GFXDIR)/%.wend, $(BUILDDIR)/%.exe, $(wildcard $(GFXDIR)/*.wend))

.PHONY: all test clean

all: test gfx

$(BUILDDIR):
	@mkdir -p $(BUILDDIR)

test: $(BUILDDIR)
    @for WEND in $(TESTS) ; do \
        SRCDIR=$$(dirname $$WEND) ; \
        DSTDIR=$$(dirname $$WEND | sed s/$(WENDDIR)/$(BUILDDIR)/) ; \
        mkdir -p $$DSTDIR ; \
        echo -n Testing $$WEND... ;\
        EXP=$$(echo $$WEND|sed s/\.wend/\.expected/) ; \
        ASM=$$DSTDIR/$$(basename $$WEND|sed s/\.wend/\.s/) ; \
        OBJ=$$DSTDIR/$$(basename $$WEND|sed s/\.wend/\.o/) ; \
        ELF=$$DSTDIR/$$(basename $$WEND|sed s/\.wend//) ; \
        python3 compiler.py $$WEND > $$ASM ; \
        as $(AS_FLAGS) -o $$OBJ $$ASM ; \
        $(LD_CMD) $(LD_FLAGS) $$OBJ -o $$ELF ; \
        $$ELF | diff $$EXP - ; \
        echo ' ok' ; \
    done

$(BUILDDIR)/%.exe: $(BUILDDIR)/%.o
	$(LD_CMD) $(LD_FLAGS) $< -o $@

$(BUILDDIR)/%.o: $(BUILDDIR)/%.s
	as $(AS_FLAGS) -o $@ $<

$(BUILDDIR)/%.s: $(GFXDIR)/%.wend
	python3 compiler.py $< > $@

#gfx: $(BUILDDIR) $(GFXASM) $(GFXOBJ) $(GFXEXE)
gfx: $(BUILDDIR) $(GFXASM)

clean:
	rm -rf $(BUILDDIR)
	find . -type f -name *.pyc -delete
	find . -type d -name __pycache__ -delete