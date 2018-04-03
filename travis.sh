#/bin/bash

set -e

git init ./td
cd td
git remote add origin https://github.com/tdlib/td
git pull origin master

cd build

cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . -- -j 4
