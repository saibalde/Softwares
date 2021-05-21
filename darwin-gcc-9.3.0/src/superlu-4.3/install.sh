#!/bin/sh

PREFIX=$HOME/Softwares/darwin-gcc-9.3.0

mkdir -p $PREFIX/include
mkdir -p $PREFIX/lib

# Copy files

cp SRC/slu_cdefs.h $PREFIX/include
cp SRC/slu_Cnames.h $PREFIX/include
cp SRC/slu_dcomplex.h $PREFIX/include
cp SRC/slu_ddefs.h $PREFIX/include
cp SRC/slu_scomplex.h $PREFIX/include
cp SRC/slu_sdefs.h $PREFIX/include
cp SRC/slu_util.h $PREFIX/include
cp SRC/slu_zdefs.h $PREFIX/include
cp SRC/superlu_enum_consts.h $PREFIX/include
cp SRC/supermatrix.h $PREFIX/include

cp lib/libsuperlu_4.3.a $PREFIX/lib

# Fix permissions

chmod 644 $PREFIX/include/slu_cdefs.h          
chmod 644 $PREFIX/include/slu_Cnames.h         
chmod 644 $PREFIX/include/slu_dcomplex.h       
chmod 644 $PREFIX/include/slu_ddefs.h          
chmod 644 $PREFIX/include/slu_scomplex.h       
chmod 644 $PREFIX/include/slu_sdefs.h          
chmod 644 $PREFIX/include/slu_util.h           
chmod 644 $PREFIX/include/slu_zdefs.h          
chmod 644 $PREFIX/include/superlu_enum_consts.h
chmod 644 $PREFIX/include/supermatrix.h        

chmod 644 $PREFIX/lib/libsuperlu_4.3.a
