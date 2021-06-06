#!/bin/sh

PREFIX=$HOME/Softwares/darwin-homebrew-gcc-9

cd ./src/tools/build
./bootstrap.sh
./b2 install --prefix=$PREFIX/boost-1.76.0
cd -

cd ./src
$PREFIX/boost-1.76.0/bin/b2 \
    toolset=gcc-9 \
    variant=release \
    link=static \
    --build-dir=$PREFIX/boost-1.76.0/build \
    --prefix=$PREFIX/boost-1.76.0 \
    install
cd -
