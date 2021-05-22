#!/bin/sh

cd ./src/tools/build
./bootstrap.sh
./b2 install --prefix=$HOME/Softwares/darwin-gcc-9.3.0/boost-1.76.0
cd -

cd ./src
$HOME/Softwares/darwin-gcc-9.3.0/boost-1.76.0/bin/b2 \
    toolset=gcc-9 \
    variant=release \
    link=static \
    --build-dir=$HOME/Softwares/darwin-gcc-9.3.0/boost-1.76.0/build \
    --prefix=$HOME/Softwares/darwin-gcc-9.3.0/boost-1.76.0 \
    install
cd -
