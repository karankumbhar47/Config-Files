#!/bin/bash


###########################################################################################
#                                                                                         #
#       shell script creating list of commits as well as printing any random commit       #
#                                                                                         #
###########################################################################################

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
#       and storing random commit in lines array  #
#       to print it at end                        #
###################################################

#to select any random number between range [1,50]
#we are using RANDOM variable to create the same
num=$(($((RANDOM%50))+1))


echo -e "\n===============================================================================\n"
echo -e "printing any random commit...\n"

#now using awk to extract random commit
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
  print "Printing random commit ...\n " lines["message"] "==> " lines["hash"]
}'

echo -e "===============================================================================\n"


###################################################
#                                                 #
#       creating and checking out to newbrach     #
#       at selected random commit                 #
#                                                 #
###################################################

#storing hash of random commit in hash variable
hash=$(git log | awk -v num="$num" '
{
    if( $1 == "commit" ){
        hash=$2
        }
    if( num == $5 ){
        print hash        
    }
}' )

#checking out to random commit 
git checkout $hash

#creating new branch and checking out to this branch
git checkout -b newBranch

git graph 


