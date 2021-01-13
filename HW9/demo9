#! /usr/bin/awk -f

BEGIN{
    #print
    count=-1
}

/^#/{
    # print $2
    count++
    sum[count]=0
    name[count]=$2
}
! /^#/{
        for(i=1; i <= NF; i++){
            sum[count]+=$i
            # print sum[count]
        }
    }
        
END{
    for(i=0; i <= count; i++){
        printf "%s %d \n",name[i],sum[i]
    }
}