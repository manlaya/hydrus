# Makefile to compile HYDRUS-1D on Mac and Linux

# Find the fortran compiler
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	FC = /usr/local/bin/gfortran
endif

ifeq ($(UNAME_S),Linux)
	FC = $(shell which gfortran)
endif

# Set the files and objects
VPATH = $(shell pwd)/source
SRC = HYDRUS.FOR \
      INPUT.FOR \
      HYSTER.FOR \
      MATERIAL.FOR \
      OUTPUT.FOR \
      SINK.FOR \
      SOLUTE.FOR \
      TEMPER.FOR \
      TIME.FOR \
      WATFLOW.FOR

OBJ = $(SRC:.FOR=.o)
FFLAGS = -O2 -ffpe-summary=none


.PHONY: all clean f2py
all: hydrus clean

# implicit rule to make objects
# $@ : target; $(@F) file $(@D) directory
# $< : first requirement
# $^ : all requirements, no duplicated
%.o : %.FOR
	$(FC) -c $< $(FFLAGS)

# Compile to a Unix executable
hydrus: $(OBJ)
	$(FC) $(^F) -o $@
	mkdir -p bin/
	mv $@ bin/

install: hydrus
	mkdir -p $(HOME)/.local/bin
	cp ./bin/$< $(HOME)/.local/bin

# Compile to an shared-object file to import in python (WIP)
f2py : 
	f2py -c $(SRC) -m hydrus

# Clean the directory after
clean : 
	rm $(OBJ)
