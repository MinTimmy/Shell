#!/usr/bin/awk -f 
/^#/ {
    print $0
  }

! /^#/ {
    name = ""
    sum = 0
    for(i=1; i<=NF; i++) 
      if( $i ~ /[0-9][0-9]*/ )
        sum = sum + $i
      else
	name = name $i
    print name "=" sum
  }
