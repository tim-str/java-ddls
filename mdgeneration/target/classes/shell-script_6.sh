#!/usr/bin/env bash
# Patterns
echo "Showing longest match with delete on ${1}:"
# # is when pattern matching starts from left (longest match since it's 2# used in the expression)
filename=${1##*/}
echo $filename
# % is when pattern matching is going from right (shortest match since it's just one % sign)
directoryname=${1%/*}
echo $directoryname

# exit 0 is unnecessary
exit 0