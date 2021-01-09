#!/bin/bash

read a
read b
read c


if [[  $a == $b  &&  $a == $c  &&  $b == $c  ]]; then
    echo "EQUILATERAL"
elif [[  $a != $b  &&  $a != $c  &&  $b != $c  ]]; then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi
