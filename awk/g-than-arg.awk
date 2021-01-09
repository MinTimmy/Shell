#!/usr/bin/awk -f 
BEGIN{
    lowerbound = threshold
    if(lowerbound == 0) lowerbound = 55
  }

/^#/ {
    print $0
  }

! /^#/ {
    for(i=1; i<=NF; i++) 
      if( $i > lowerbound )
        print $i
  }
