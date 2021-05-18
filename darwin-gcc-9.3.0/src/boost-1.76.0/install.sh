#!/bin/sh

cd ./tools/build
./bootstrap.sh
./b2 install --prefix=$HOME/Softwares/darwin-gcc-9.3.0
cd -

$HOME/Softwares/darwin-gcc-9.3.0/bin/b2 \
    toolset=gcc-9 \
    variant=release \
    --prefix=$HOME/Softwares/darwin-gcc-9.3.0 \
    install
