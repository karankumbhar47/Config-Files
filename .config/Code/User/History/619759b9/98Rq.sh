#!/bin/bash

#Initializing Git
git init

for i in 12140540 12140860 12140110
do
    dir_name = $i'_member'
    mkdir dir_name
    echo "$i" > dir_name/$1'_member'.txt
    git branch i
    git add .
    git commit -m "Adding and Committing $i"
done


    for j in 12140540 12140860 12140110 master
    do
        git checkout j
        for k in range(4)
        do
            file_name = $k.txt
            echo "$k" > $dir_name/$k.txt
            git add .
            git commit -m "Adding and Committing in branches"
        done
done

