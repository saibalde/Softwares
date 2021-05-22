#!/bin/sh

# copy make.inc
cp make.inc src

# build
cd src
make
cd -

# install prefix
PREFIX=$HOME/Softwares/darwin-gcc-9.3.0/superlu-dist-4.0

# install headers
mkdir -p $PREFIX/include

cp src/SRC/Cnames.h $PREFIX/include
cp src/SRC/cublas_utils.h $PREFIX/include
cp src/SRC/dcomplex.h $PREFIX/include
cp src/SRC/machines.h $PREFIX/include
cp src/SRC/psymbfact.h $PREFIX/include
cp src/SRC/superlu_ddefs.h $PREFIX/include
cp src/SRC/superlu_defs.h $PREFIX/include
cp src/SRC/superlu_enum_consts.h $PREFIX/include
cp src/SRC/superlu_zdefs.h $PREFIX/include
cp src/SRC/supermatrix.h $PREFIX/include
cp src/SRC/util_dist.h $PREFIX/include

chmod 644 $PREFIX/include/Cnames.h
chmod 644 $PREFIX/include/cublas_utils.h
chmod 644 $PREFIX/include/dcomplex.h
chmod 644 $PREFIX/include/machines.h
chmod 644 $PREFIX/include/psymbfact.h
chmod 644 $PREFIX/include/superlu_ddefs.h
chmod 644 $PREFIX/include/superlu_defs.h
chmod 644 $PREFIX/include/superlu_enum_consts.h
chmod 644 $PREFIX/include/superlu_zdefs.h
chmod 644 $PREFIX/include/supermatrix.h
chmod 644 $PREFIX/include/util_dist.h

# install libraries
mkdir -p $PREFIX/lib

cp src/lib/libsuperlu_dist_4.0.a $PREFIX/lib

chmod 644 $PREFIX/lib/libsuperlu_dist_4.0.a
