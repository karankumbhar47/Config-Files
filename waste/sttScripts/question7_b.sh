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

for commit_count in {1..50};

do

  fileName=$commit_count.txt
  echo "This is file number :- $commit_count" > $fileName 
  git add $fileName
  git commit -m"This is commit number $commit_count"

done


###################################################
#       Extracting any random commit form list    #
###################################################


#to select any random number between range [1,50]
#we are using RANDOM variable to create the same
num=$(($((RANDOM%50))+1))


echo -e "\n===============================================================================\n"
echo -e "printing any random commit...\n"

#now using awk to extract random commit
git log | awk -v num="$num" '
{
    if( $1 == "commit" ){
        hash=$2
        }
    if( num == $5 ){
        gsub(/^[[:space:]]+/, "" ,$0);
        print "\n" $0 " ==> [" hash "]\n************************     ******************************************\n"
    }
}'

echo -e "===============================================================================\n"
