#!/bin/bash

echo "--- Build Image ---"

# JOB="cpx"

# BUILD_SRC="dist"
# srcPC="src/img/**/*.*"
# srcSP="src/s/img/**/*.*"

taskPC="cpx 'src/img/**/*.*' 'dist/img'"
taskSP="cpx 'src/s/img/**/*.*' 'dist/s/img'"

if [ $WATCH ]; then
  ${taskPC} --watch &
  ${taskSP} --watch

else
  $taskPC &
  $taskSP
fi