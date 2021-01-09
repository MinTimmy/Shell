#! /usr/bin/awk -f

BEGIN{
    lowerbound = 100
  }

/^#/ {
    print $0
  }

! /^#/ {
    for(i=1; i<=NF; i++) 
      if( $i > lowerbound )
        print $i
  }
