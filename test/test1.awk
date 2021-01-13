#!/usr/bin/awk -f


{
    gsub("b","c")
    print $0
}