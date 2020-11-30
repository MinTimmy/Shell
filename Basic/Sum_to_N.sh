#!/bin/bash

N=${1}

i=1; sum=0
while [ $i -le $N ];  do
  sum=`expr $sum + $i`
  i=`expr $i + 1`
done

echo "The sum is $sum"
