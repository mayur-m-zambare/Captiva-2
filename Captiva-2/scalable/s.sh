search_dir1="./256/*"
search_dir2="./apps/*"

for entry1 in $search_dir1
do
    for entry2 in $search_dir2
    do
        a="${entry1##*/}"
        b="${entry2##*/}"
        name1=$(echo "$a" | cut -f 1 -d '.')
        name2=$(echo "$b" | cut -f 1 -d '.')
        if [ $name1 = $name2 ]
        then
            echo "$name1"
            mv ./256/${entry1##*/} ./256/$name1.svg
            rm ./apps/${entry2##*/}
        # else
        #     echo ""
        fi
    done
done



    # for entry2 in $search_dir2
    # do
    #     b="${entry2##*/}"
    #     name2=$(echo "$entry2" | cut -f 1 -d '.')
    
    #         echo "$name2"
     
    # done
