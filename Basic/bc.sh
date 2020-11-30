#!/bin/bash

echo "Number of argument is : $#"

i=0; str=""
for  arg in $*; do
  printf "arg[%2d] = %s\n" $i $arg
  i=`expr $i + 1`
  str="$str $arg + "
done

sum=`echo $str 0 | bc`
echo "The sum is $sum"
