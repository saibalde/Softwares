PREFIX            := $(HOME)/Softwares/darwin-homebrew-gcc-9

DSuperLUroot      := $(PREFIX)/superlu-dist-4.0/src
DSUPERLULIB       := $(DSuperLUroot)/lib/libsuperlu_dist_4.0.a

FLIBS              = 

BLASDEF            = -DUSE_VENDOR_BLAS
BLASLIB            = -framework Accelerate

METIS_DIR         := $(PREFIX)/metis-5.1.0
METIS_INCLUDES    := -I $(METIS_DIR)/include
METIS_LIBS        := -L $(METIS_DIR)/lib -lmetis

PARMETIS_DIR	  := $(PREFIX)/parmetis-4.0.3
PARMETIS_INCLUDES := -I $(PARMETIS_DIR)/include
PARMETIS_LIBS     := -L $(PARMETIS_DIR)lib -lparmetis

INCS              := $(METIS_INCLUDES) $(PARMETIS_INCLUDES)
LIBS              := $(FLIBS) $(BLASLIB) $(METIS_LIBS) $(PARMETIS_LIBS) $(DSUPERLULIB)

ARCH               = /usr/bin/ar
ARCHFLAGS          = cr

RANLIB             = /usr/bin/ranlib

MPI_DIR           := $(PREFIX)/openmpi-4.1.1

CC                := $(MPI_DIR)/bin/mpicc
CFLAGS            := -std=c99 -O3 -fopenmp -DDEBUGlevel=0 -DPRNTlevel=0 -DPROFlevel=0 $(INCS)
NOOPTS             = -O0

FORTRAN           := $(MPI_DIR)/bin/mpifort
F90FLAGS           = -fopenmp

LOADER	          := $(CC)
LOADOPTS          := -fopenmp

CDEFS              = -DAdd_
