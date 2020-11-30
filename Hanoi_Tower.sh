moveDisk()
{
    echo from "$1" to "$2"
}
moveTower()
{
    if [ "$1" -eq 1 ]; then
        moveDisk $2 $4
    else
        moveTower `expr $1 - 1` $2 $4 $3
        moveDisk $2 $4
        moveTower `expr $1 - 1` $3 $2 $4
    fi
}

num=$1
moveTower $num 'A' 'B' 'C'

