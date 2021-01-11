#!/usr/bin/awk -f

{
    for(i=1; i < NF; i++){
        if($i == "the" || $i == "The" ||$i == "that" ||$i == "That" ||$i == "then" ||$i == "Then" ||$i == "those" ||$i == "Those" ){
            print $0
            break
        }
    }
}