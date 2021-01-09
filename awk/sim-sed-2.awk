#!/usr/bin/awk -f 
{ 
  gsub("\\$", "$$")
  print $1 ":" $0
  # print $1

  gsub("S", "$")
  print $1 ":" $0
}
