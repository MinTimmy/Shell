#! /usr/bin/awk -f

BEGIN{
    #print
}

/^#/{
    print $2
}
! /^#/{
    
}