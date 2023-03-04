#!/bin/bash
#initializing git
git init

#making subdirectory and 'hello-world' file
j=1
for i in 12140860 12140540 12140110
do
  dir_name=$i'_member'$j
  mkdir $dir_name
  echo 'iitbhilai' >  $dir_name/hello-world
  j=$((j+1))
done

#commiting all files
git add .
git commit -m"First commit"

#Required git-graph
git-graph
