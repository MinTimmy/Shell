#!/usr/bin/awk -f

{
    if (NR % 2 == 0)
        printf $0"\n"
    else
        printf $0";" 
}