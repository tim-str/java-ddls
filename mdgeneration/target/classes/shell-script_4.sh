#!/usr/bin/env bash
# This is a comment
echo "Hello ${1}, how are you today?"
echo "\$# gives: " $#
echo "\$# gives: $#"
echo "\$* gives $*"
echo "\$@ gives $@"

echo showing the interpretation of \$*
for i in "$*"
do
  echo $i
done

echo showing the interpretation of \$@
for i in "$@"
do
  echo $i
done

# exit 0 is unnecessary
exit 5