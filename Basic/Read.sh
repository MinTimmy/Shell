#!/bin/bash

if [ $# -eq 1 ]; then 
  pat=$1
else
  echo -n "Pat is: "
  read pat
fi
echo $pat
