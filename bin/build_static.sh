#!/bin/bash

echo "--- Build Static ---"

# JOB="cpx"
# BUILD_SRC="./dist/"
# SRC="./static"

task="cpx 'static/**/*.*' 'dist'"

if [ $WATCH ]; then
  ${task} --watch
else
  ${task}
fi