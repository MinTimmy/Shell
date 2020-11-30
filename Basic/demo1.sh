#!/bin/bash

max=0
max_name=""
min=0
min_name=""
while read name data; do
if [ $data -gt $max ]; then
    max=$data;
    max_name=$name;
fi
if [ $data -lt $max ]; then
    min=$data    
    min_name=$name
fi
done

echo "max is $max_name, value = $max"
echo "min is $min_name, value = $min"
