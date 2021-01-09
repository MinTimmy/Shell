#!/bin/bash

read num
echo $num | bc -l | xargs printf "%.3f"
# echo $num | bc -l |  printf "%.3f"