#/bin/bash

set -e

export TESTSPACE=`pwd`/testspace
mkdir $TESTSPACE

cd $TESTSPACE

git init ./td
cd td
git remote add origin https://github.com/tdlib/td
git pull origin master

mkdir -p build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -- -j 4
