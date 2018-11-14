#!/bin/bash

echo "--- Build Image ---"

# JOB="cpx"

BUILD_SRC="dist"
SRC="src/**/*.{gif,png,jpg,jpeg,svg}"

task="cpx ${SRC} ${BUILD_SRC}"

if [ $WATCH ]; then
  ${task} --watch &
  echo "--- Watching Images... ---"
else
  ${task}
fi