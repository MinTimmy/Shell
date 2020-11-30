#!/bin/bash

echo "Number of argument is : $#"

i=1
for  arg in $*; do
  printf "arg[%d] = %s\n" $i $arg
  i=`expr $i + 1`
done
