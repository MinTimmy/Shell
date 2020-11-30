# read DATA

# i=" "
c=0
while [ "$c" != "2" ] && read line
do
        echo "$INDEX: $line"
        (( INDEX++ ))
        (( c++ ))
done <DATA


# echo `ls` > DATA
# sed -i "s@ @\n@1" DATA
# sed -i "s@$data1@ @1" DATA_NEWEST # 不使用'/'而用 '@'是因為路徑名稱中會有'/'


# if [ "`file -b 1`" == "symbolic link" ]
# then 
#     echo "`file -b 1`"
# else
#     echo "NO"
# fi

# data=2

# if [ "$data" != "1" ] && [ "$data" != "2"  ]
# then
# echo "123"
# fi