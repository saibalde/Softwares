SuperLUroot = $(HOME)/Softwares/darwin-gcc-9.3.0/src/superlu-4.3
SUPERLULIB  = $(SuperLUroot)/lib/libsuperlu_4.3.a
TMGLIB      = libtmglib.a

BLASDEF     = -DUSE_VENDOR_BLAS
BLASLIB     = -framework Accelerate

LIBS        = $(SUPERLULIB) $(BLASLIB)

ARCH        = /usr/bin/ar
ARCHFLAGS   = cr

RANLIB      = /usr/bin/ranlib

CC          = /usr/local/bin/gcc-9
CFLAGS      = -DPRNTlevel=0 -O3

NOOPTS      = -O0

FORTRAN     = /usr/local/bin/gfortran-9
FFLAGS      = -O2

LOADER      = $(CC)
LOADOPTS    =

CDEFS       = -DAdd_
