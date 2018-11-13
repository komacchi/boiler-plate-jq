#!/bin/bash

echo "--- Build Html ---"

JOB="pug"
LINT="htmlhint"

BUILD="./dist/"
SRC_PC="./src/${JOB}/"
SRC_SP="./src/s/${JOB}/"
lintConfig="./.htmlhintrc"
taskOption="--pretty"

taskPC="${JOB} ${taskOption} ${SRC_PC}*.${JOB} -o ${BUILD}"
taskSP="${JOB} ${taskOption} ${SRC_SP}*.${JOB} -o ${BUILD}s/"
tasklint="${LINT} --config ${lintConfig} ${BUILD}/**/*.html"

if [ $WATCH ]; then
  ${taskPC} --watch & ${taskSP} --watch & ${tasklint}
else
  ${taskPC} & ${taskSP} & ${tasklint}
fi