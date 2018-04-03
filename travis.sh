#/bin/bash

set -e

export TESTSPACE=`pwd`/testspace
mkdir $TESTSPACE

cd $TESTSPACE

git clone https://github.com/tdlib/td

cd td
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -- -j 4
