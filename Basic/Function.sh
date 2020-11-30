    #!/bin/bash

    sum=0

    sigma()
    {
    if [ $1 -le 0 ]; then  return;  fi

    sum=`expr $sum + $1`
    sigma `expr $1 - 1`
    }


    sigma ${1-0}
    echo $sum
