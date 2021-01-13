#!/usr/bin/awk -f 
{
    for (i=1;i<=NF; i++){
        if ($i ~/^#/) {
            break
        }
        if ($i ~/^[a-zA-Z]/){
            s=substr($i,1,6)
            s=toupper(s)
        }
        if($i ~/^[0-9]/){
            answer[s]+=$i
            count[s]+=1
        }
    }
    
}
END{
    for(i in answer){
        printf "%s = %.2f\n", i,((answer[i]/count[i])*1.00)
    }
}
