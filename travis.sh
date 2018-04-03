#/bin/bash

set -e

git clone https://github.com/tdlib/td

mkdir -p build
cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -- -j 4
