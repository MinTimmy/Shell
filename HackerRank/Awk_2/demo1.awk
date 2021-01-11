#!/usr/bin/awk -f


{
    check = 1
    for(i=2; i <= NF; i++){
        if($i < 50){
            printf "%c : Fail\n",$1
            check = 0
            break
        } 
    } 
    if(check){
        printf "%c : Pass\n",$1
    } 
}