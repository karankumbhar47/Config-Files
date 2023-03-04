#!/bin/bash

git init

j=1
for i in 12140860  12140540 12140110
do

  dir_name=$i'_member'$j
  mkdir $dir_name
  echo 'iitbhilai' >  $dir_name/hello-world

  git add $dir_name/hello-world
  git commit -m"$dir_name/hello-world created" $dir_name/hello-world 
  git-graph 

  sleep 1
  j=$((j+1))

done
