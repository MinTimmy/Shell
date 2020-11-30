#####處理兩個都不是directory#####
count=0
data=" "
for i in $*
do 
    if [ "`file $i`" != "$i: directory" ]
    then
        count=`expr $count + 1`
    fi
    data="$data $i"
done

if [ "$count" == "$#" ] 
then
    echo "newest:" `ls -t $data | head -1`
    echo "biggest:" `ls -S $data | head -1`
    exit
fi


################################


# 找出最新的 file
DATA=" "
for d in $*
do 
    if [ "`file $d`" == "$d: directory" ]
    then
        DATA="$DATA $d/`ls -t $d | head -1`"
    else
        DATA="$DATA $d"
    fi
done
# echo $DATA
DATA_NEWEST=`ls -S $DATA | head -1`
# echo $DATA_NEWEST


# 找出最大的 file
DATA=" "
for d in $*
do 
    if [ "`file $d`" == "$d: directory" ]
    then
        DATA="$DATA $d/`ls -S $d | head -1`"
    else
        DATA="$DATA $d"
    fi
done
# echo $DATA
DATA_BIGGEST=`ls -S $DATA | head -1`
# echo $DATA_BIGGEST

echo $DATA_NEWEST > DATA_NEWEST
echo $DATA_BIGGEST > DATA_BIGGEST

# echo $DATA_BIGGEST
# 利用 sed 除去不需要的字串
for d in $*
do
    data1="$d:"
    data2="$d"
    sed -i "s@$data1@ @1" DATA_NEWEST # 不使用'/'而用 '@'是因為路徑名稱中會有'/'
    # sed -i "s@$data2@ @1" DATA_BIGGEST 
done

DATA_NEWEST=`head -1 DATA_NEWEST` 
DATA_BIGGEST=`head -1 DATA_BIGGEST`

echo "newest:" $DATA_NEWEST
echo "biggest:" $DATA_BIGGEST

