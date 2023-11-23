#!/usr/bin/env bash
cd "$(dirname "$( dirname "$(realpath "$0")" )")" || exit 1

cat build.env || exit 1
set -o allexport
source build.env || exit 1
set +o allexport

if [ -z "$MOUSY_BUILD_VERSION" ];then
  echo "no MOUSY_BUILD_VERSION"
  exit 1
fi

mkdir -p build || exit 1
cd build || exit 1

cmake -G=Ninja .. -D CMAKE_BUILD_TYPE=Release || exit 1
ninja || exit 1
