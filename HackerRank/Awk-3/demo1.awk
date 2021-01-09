#!/usr/bin/awk -f

{
    total = ($2 + $3 + $4) / 3
    if(total >= 80)
        print $0, ": A"
    else if(total >= 60)
        print $0, ": B"
    else if(total >= 50)
        print $0, ": C"
    else
        print $0, ": FAIL"
}
