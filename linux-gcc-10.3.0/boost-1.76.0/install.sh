#!/bin/sh

cd src
./bootstrap.sh
./b2 variant=release install
cd ..
