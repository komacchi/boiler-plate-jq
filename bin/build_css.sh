#!/bin/bash

echo "--- Build CSS ---"

JOB="postcss"

BUILD_SRC="./dist"
srcPC="./src/css/"
srcSP="./src/s/css/"

# taskOption="--config"
configPath="./postcss.config.js"

taskPC="${JOB} --config ${configPath} ${srcPC}**/[^_]* --base ${srcPC} --dir ${BUILD_SRC}/css"
taskSP="${JOB} --config ${configPath} ${srcSP}**/[^_]* --base ${srcSP} --dir ${BUILD_SRC}/s/css"

echo "--- Stylelint ---"
stylelint ${srcPC}pc.css
stylelint ${srcSP}sp.css

if [ $WATCH ]; then
  echo "--- Watching CSS... ---"
  ${taskPC} -m -w & ${taskSP} -m -w &

else
  echo "--- Build CSS Production ---"
  ${taskPC}
  ${taskSP}
fi