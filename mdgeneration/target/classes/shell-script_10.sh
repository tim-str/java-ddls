#!/usr/bin/env bash
# Automation script for renaming Feedzai source extracts archived using gzip()
# Call this script using the following signature script '<S3 prefix>' '<file prefix>'
# echo "bash -x is super useful!"

if ! [ -d ${1} ]; then
    echo 'please re-execute script & enter a source files directory name as a parameter.'
    exit 6
fi

if [ -f ${1}/${2}*.gz ]; then

  for i in $(ls ${1}/${2}*.gz)
    do
      echo $i
    done

  else echo 'please upload source files to process into $1 bucket.'
fi

# exit 0 is unnecessary
exit 0