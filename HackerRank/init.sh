#!/bin/bash

# echo $*
ans="$1"
i=0
for c in $*; do
    if [[ $i != 0 ]]; then
        ans="$ans"_"$c"
    fi
    i=$((i+1))
done
mkdir $ans
cd $ans
touch demo1.awk demo2.awk
echo "#!/usr/bin/awk -f" > demo1.awk 
echo "#!/usr/bin/awk -f" > demo2.awk 
chmod u+x demo1.awk demo2.awk