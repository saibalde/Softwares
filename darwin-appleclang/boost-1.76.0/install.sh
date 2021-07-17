#!/bin/sh

PREFIX=$HOME/Softwares/darwin-appleclang

cd ./src
./bootstrap.sh --prefix=$PREFIX/boost-1.76.0
./b2 variant=release link=static --build-dir=$PREFIX/boost-1.76.0/build install
cd -
