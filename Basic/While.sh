#!/bin/bash

# this program reads from stdin, one number per line

i=1; sum=0
read arg
while [ $arg != "q" ];  do
  printf "arg[%2d] = %s\n" $i $arg
  i=`expr $i + 1`
  sum=`expr $sum + $arg`
  read arg
done

echo "The sum is $sum"