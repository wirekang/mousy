#!/usr/bin/env bash

export MOUSY_BUILD_VERSION="\"$1\""
export MOUSY_BUILD_BRANCH="\"$2\""

echo "MOUSY_BUILD_VERSION: $MOUSY_BUILD_VERSION"
echo "MOUSY_BUILD_BRANCH: $MOUSY_BUILD_BRANCH"

if [ -z "$1" ];then
  echo "---------- WARNING: build without version"
  export MOUSY_BUILD_VERSION="\"undefined\""
fi

if [ -z "$2" ];then
  echo "---------- WARNING: build without branch"
  export MOUSY_BUILD_BRANCH="\"undefined\""
fi

cd "$(dirname "$( dirname "$(realpath "$0")" )")" || exit 1

mkdir -p build || exit 1
cd build || exit 1

cmake -G=Ninja .. -D CMAKE_BUILD_TYPE=Release || exit 1
ninja || exit 1
