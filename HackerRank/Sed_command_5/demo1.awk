#!/usr/bin/awk -f


{
    if(NF != 4)
        print $1
    else
        print $4,$3,$2,$1
}