#!/bin/bash

echo "Number of argument is : $#"

i=0; sum=0
for  arg in $*; do
  printf "arg[%2d] = %s\n" $i $arg
  i=`expr $i + 1`
  sum=`expr $sum + $arg`
done

echo "The sum is $sum"
