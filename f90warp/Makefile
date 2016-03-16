FC = gfortran 

FCFLAGS = -fPIC -fcray-pointer -fdefault-real-8 -fdefault-double-8 -finit-real=snan -g -fbounds-check -Wall -fbacktrace 

INCFLAGS = 
LDFLAGS  = 

SRC = ./src/

PROGRAM=prog
MODULE_NAME=mymodule

LIBSRC_SOURCES = $(shell find $(SRC) -name "*.f90" '!' -name $(PROGRAM).f90 -exec basename \{} .f90 \;)
LIBSRC_SOURCES_ALL = ${LIBSRC_SOURCES} + $(PROGRAM)

LIBSRC_FILES_ = $(addsuffix .f90  , ${LIBSRC_SOURCES})
LIBSRC_FILES  = $(addprefix $(SRC), ${LIBSRC_FILES_} )
LIBSRC_OBJECTS = $(addsuffix .o,${LIBSRC_SOURCES})

LIBSRC_FILES_ALL_ = $(addsuffix .f90  , ${LIBSRC_SOURCES_ALL})
LIBSRC_FILES_ALL  = $(addprefix $(SRC), ${LIBSRC_FILES_ALL_} )
LIBSRC_OBJECTS_ALL = $(addsuffix .o,${LIBSRC_SOURCES_ALL})

.PHONY: clean python

$(PROGRAM): ${LIBSRC_OBJECTS}

%: %.o
	$(FC) $(FCFLAGS) $(INCFLAGS) -o $@ $^ $(LDFLAGS)

%.o: $(SRC)%.f90
	$(FC) $(FCFLAGS) $(INCFLAGS) -c $<

_$(MODULE_NAME).so: ${LIBSRC_OBJECTS}	
	f90wrap -m $(MODULE_NAME) ${LIBSRC_FILES} -k include/kind_map -v 
	f2py-f90wrap --build-dir . -c -m _$(MODULE_NAME) ${LIBSRC_OBJECTS} f90wrap*.f90 --f90flags='$(FCFLAGS)' $(INCFLAGS) $(LDFLAGS)

clean:
	rm -rf *.o *.mod *.MOD _$(MODULE_NAME).so $(MODULE_NAME).py* f90wrap*.f90 $(PROGRAM) src.linux-x86_64-2.7/ test*.out


python: $(PROGRAM) _$(MODULE_NAME).so ${LIBSRC_OBJECTS}
	@if python ./test/test.py > test.out ; then echo "## test OK"; else echo "## test failed"; exit 1; fi
	@echo "########"
	@tail test.out

