SHELL=/usr/bin/env bash
export ACT_PATH:=$(shell pwd)/src:$(ACT_PATH)
export ACT_TEST_VERBOSE=0

all: runtest

truth:
	cd test && ./testgen.sh

cleantest:
	cd test && ./cleantest.sh

include $(ACT_HOME)/scripts/Makefile.std
