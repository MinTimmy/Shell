#!/bin/bash

echo "Number of argument is : $#"

i=0; op=""
for  arg in $*; do
  printf "arg[%2d] = %s\n" $i $arg
  i=`expr $i + 1`
  op="$op +"
done

sum=`echo "0 $* $op p" | dc`
echo "The sum is $sum"
