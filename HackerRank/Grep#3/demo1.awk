#!/usr/bin/awk -f
{
    check=1
    for(i=1; i < NF; i++){
        if($i == "that" || $i == "That"){
            check=0
            break
        }
    }
    if(check){
        print $0
    }
}