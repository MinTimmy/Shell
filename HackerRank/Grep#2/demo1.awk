#!/usr/bin/awk -f
{
    for(i=1; i < NF; i++){
        if($i == "the" || $i == "The"){
            print $0
            break
        }
            
    }
}