#!/usr/bin/awk 

cat | awk '
/^#/ {
    print $0
  }

! /^#/ {
    for(i=1; i<=NF; i++) 
      if( $i > '$1' )
        print $i
  }'
