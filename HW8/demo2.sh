# 找出最新的 file
for i in $*
do 
   data1="$data1 $i" 
done
DATA_NEWEST=`ls -t  $data1 | head -2`


# 找出最大的 file
DATA=" "
for d in $*
do 
    DATA="$DATA $d/`ls -S $d | head -1`"
done
DATA_BIGGEST=`ls -S $DATA | head -1`


echo $DATA_NEWEST > DATA_NEWEST
echo $DATA_BIGGEST > DATA_BIGGEST

# 利用 sed 除去不需要的字串
for d in $*
do
    data1="$d:"
    data2="$d/"
    sed -i "s@$data1@ @1" DATA_NEWEST # 不使用'/'而用 '@'是因為路徑名稱中會有'/'
    sed -i "s@$data2@ @1" DATA_BIGGEST 
done

DATA_NEWEST=`head -1 DATA_NEWEST` 
DATA_BIGGEST=`head -1 DATA_BIGGEST`

echo "newest:" $DATA_NEWEST
echo "biggest:" $DATA_BIGGEST

