#!/bin/bash

echo "--- Build JS ---"

JOB="webpack"
COPY="cpx"
lint="eslint"

BUILD_PC="./dist/js"
BUILD_SP="./dist/s/js"
SRC="./src/"

# taskOption="--config"
taskLibCopyPC="${COPY} ${SRC}js/lib/*.js ${BUILD_PC}/lib"
taskLibCopySP="${COPY} ${SRC}s/js/lib/*.js ${BUILD_SP}/lib"

echo "--- Run eslint ---"
eslint -c standard ${SRC}

if [ $WATCH ]; then
  echo "--- Watching JS... ---"
  ${taskLibCopyPC} & ${taskLibCopySP} & 
  ${JOB} --progress --devtool source-map --watch &
else
  if [ "$MODE" = "dev" ]; then
    echo "--- Build JS Development ---"
    ${taskLibCopyPC} & ${taskLibCopySP} &
    ${JOB} --mode development
  else
    echo "--- Build JS Production ---"
    ${taskLibCopyPC} & ${taskLibCopySP} &
    ${JOB} --mode production 
  fi
fi