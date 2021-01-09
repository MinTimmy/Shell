#!/usr/bin/awk -f 
{
    for (i=1;i<=NF ;i++){
        s=substr($1,1,6)
        s=toupper(s)
        print s
    }
    
}
