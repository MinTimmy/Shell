#!/usr/bin/awk -f 
{ 
  gsub("S", "$")
  print $0
}
