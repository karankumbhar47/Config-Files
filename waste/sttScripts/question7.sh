#!/bin/bash


###################################################
#                                                 #
#       shell script creating list of commits     #
#                                                 #
###################################################


#initializing git
git init

###################################################
#       creating 50 commits using for loop        #
###################################################

for commit_count in {1..5};

do

  fileName=$commit_count.txt
  echo "This is file number :- $commit_count" > $fileName 
  git add $fileName
  git commit -m"This is commit number $commit_count"

done


###################################################
#       Extracting the list of commits            #
###################################################

echo -e "\n=============================================================================\n"
echo -e "printing list of commits...\n"

# listing commits from first commit
git log --reverse | awk '
{
  if($1 == "commit" ){
    hash=$2;
  }
  else if ($3 == "commit" ){
      gsub(/^[[:space:]]+/, "") $0;
      print $0 " ==> [" hash "]\n************************     ******************************************\n"
    }
}'

echo -e "===============================================================================\n"


