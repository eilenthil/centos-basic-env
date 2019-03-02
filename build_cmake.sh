#!/bin/sh

git clone https://github.com/Kitware/CMake
cd CMake
git checkout v3.13.4
./bootstrap --parallel=8
gmake -j8
sudo gmake install
cd ..
rm -rf CMake
