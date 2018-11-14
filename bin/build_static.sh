#!/bin/bash

echo "--- Build Static ---"

# JOB="cpx"
BUILD_SRC="dist"
SRC="static/**/*.{html,gif,png,jpg,jpeg,svg}"

task="cpx ${SRC} ${BUILD_SRC}"

if [ $WATCH ]; then
  ${task} --watch &
  echo "--- Watching Static... ---"
else
  ${task}
fi