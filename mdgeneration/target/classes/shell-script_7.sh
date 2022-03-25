#!/usr/bin/env bash
# Patterns - Substitution
echo "Showing pattern-based replacement logic on ${1}:"
# ${var/pattern/replacement}
# ${var//pattern/replacement} - global replacement (may be multiple replacements)
# ${var/#pattern/replacement} - pattern only applied to the beginning of a string
# ${var/%pattern/replacement} - pattern only applied to the end of a string

# # is when pattern matching starts from left (longest match since it's 2# used in the expression)
filename=${1##*/}
echo $filename
# % is when pattern matching is going from right (shortest match since it's just one % sign)
directoryname=${1%/*}
echo $directoryname

# exit 0 is unnecessary
exit 0