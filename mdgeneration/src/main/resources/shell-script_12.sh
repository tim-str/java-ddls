#!/usr/bin/env bash
# Automation script for renaming Feedzai source extracts archived using gzip()
# Call this script using the following signature script '<S3 prefix>' '<file prefix>'
# echo "bash -x is super useful!"

FILES=$(ls)

for file in $FILES
do
  if [[ "$file" != *[[:upper:]]* ]]; then
    echo "$file" doesnt contain uppercase
    continue
  fi

  OLD="$file"
  NEW=$(echo $file | tr '[:upper:]' '[:lower:]')

  mv "$OLD" "$NEW"
  echo "$OLD" has been renamed to "$NEW"
done

# exit 0 is unnecessary
exit 0