#!/usr/bin/env bash
cd "$(dirname "$( dirname "$(realpath "$0")" )")" || exit 1

set -o allexport
source build.env || exit 1
set +o allexport

echo "MOUSY_BUILD_VERSION: $MOUSY_BUILD_VERSION"

if [ -z "$MOUSY_BUILD_VERSION" ];then
  echo "---------- WARNING: build without version"
  export MOUSY_BUILD_VERSION="\"undefined\""
fi


mkdir -p build || exit 1
cd build || exit 1

cmake -G=Ninja .. -D CMAKE_BUILD_TYPE=Release || exit 1
ninja || exit 1
