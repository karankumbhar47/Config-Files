#!/bin/bash

#initializing git
git init

#creating file and commitng
for commit_count in {1..50};

do

  fileName=$commit_count.txt
  echo "This is file number :- $commit_count" > $fileName 
  git add $fileName
  git commit -m"This is commit number $commit_count"

done


num=$(($((RANDOM%50))+1))

git log | awk -v num="$num" '
{ 
if ( num == $5 ){
  lines["message"] = $0;
  lines["hash"] = prev
}
if ($1 == "commit"){
  prev = $2;
}
else if ($3 == "commit"){
  gsub(/^[[:space:]]+/, "", $0);
  print $0  " ==> [" prev "]\n"
} 
}
END{ 
  print "random commit ...\n " lines["message"] "==> " lines["hash"]
}'



