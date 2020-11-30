DATA_BIGGEST=" "
DATA_NEWEST=" "
for i in $*
do 
    echo "`file -b $i`" > DATA1
    sed -i "s@ @\n@1" DATA1

    if [ "`head -1 DATA1`" == "directory" ]
    then
        echo "`ls -t1 $i`" > DATA_NEWEST
        echo "`ls -S1 $i`" > DATA_BIGGEST
        
        check=0
        # 判斷是否有 directory 和 symbolic
        while [ "$check" == "0" ] && read line
        do
            echo "`file -b $i/$line`" > DATA
            sed -i "s@ @\n@1" DATA
            if [ "`head -1 DATA`" != "directory" ] && [ "`head -1 DATA`" != "symbolic" ]
            then
                DATA_NEWEST="$DATA_NEWEST $i/$line "
                check=1
            fi
        done <DATA_NEWEST
        check=0
        while [ "$check" == "0" ] && read line
        do
            echo "`file -b $i/$line`" > DATA
            sed -i "s@ @\n@1" DATA
            if [ "`head -1 DATA`" != "directory" ] && [ "`head -1 DATA`" != "symbolic" ]
            then
                DATA_BIGGEST="$DATA_BIGGEST $i/$line "
                check=1
            fi
        done <DATA_BIGGEST
    fi

    # 只是普通的 file
    if [ "`head -1 DATA1`" != "symbolic" ] && [ "`head -1 DATA1`" != "directory" ]
    then
        DATA_BIGGEST="$DATA_BIGGEST $i"
        DATA_NEWEST="$DATA_NEWEST $i"
    fi
done



# echo $DATA_BIGGEST
# echo $DATA_NEWEST
# echo `ls -S $DATA_BIGGEST | head -1` > DATA_BIGGEST
# echo `ls -t $DATA_NEWEST | head -1` > DATA_NEWEST
# sed -i "s@/@\n@1" DATA_BIGGEST
# sed -i "s@/@\n@1" DATA_NEWEST

# if [ "`haed -1 DATA_BIGGEST`" == "." ]
# then
#     sed -i "s@./@@1" 
#     echo "biggest: `ls -S "`he`" | head -1`"

# fi
echo "biggest: `ls -S $DATA_BIGGEST | head -1`"
echo "newest: `ls -t $DATA_NEWEST | head -1`" 






