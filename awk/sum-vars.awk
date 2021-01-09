#!/usr/bin/awk -f 

/^#/ {
    print $0
  }

! /^#/ {
    name = $1
    sum = 0
    for(i=2; i<=NF; i++) 
        sum += $i
    var[ name ] += sum
  }

END{
  for (v in var)  printf "%s = %d\n", v, var[v]
}
