#!/bin/bash


###########################################################################################
#                                                                                         #
#       shell script creating time line of commits                                        #
#                                                                                         #
###########################################################################################

#initializing git
git init

###################################################
#       creating 50 commits using for loop        #
#       each commit contain some time gap         #
###################################################

for commit_count in {1..5};

do

  fileName=$commit_count.txt
  echo "This is file number :- $commit_count" > $fileName 
  git add $fileName
  git commit -m"This is commit number $commit_count"
  
  #choosing random sleep time between 1 to 5 seconds
  sleepTime=$(($((RANDOM%4))+1))
  sleep $sleepTime

done


###################################################
#                                                 #
#       showing timeline of commits               # 
#       starting from first commit                #
#                                                 #
###################################################


echo -e "\n======================================================================\n"
echo -e "printing timline of commits...\n"

# grep --> used for searching timeline 
# awk  --> used for output formatting 

# git log --reverse | grep -e "Date" -e "commit"| awk 'NR%3==0{gsub(/^[[:space:]]+/, "", $0);print $0 "["prev2 "]\n" prev1 "\n\n=====================================================================\n"} {if(NR%3==2) gsub(/commit /, "", prev1); prev2=prev1; prev1=$0;}'

git log --reverse | grep -e "Date" -e "commit" | awk '
{
  if(NR%3==1){
    hash="";
    hash=$2
  }
  else if(NR%3==2){
    date="";
    date=$0;
  }
  else{
    gsub(/^[[:space:]]+/, "", $0);
    print $0 " ==> [" hash "]" ;
    print date"\n=====================================================================\n"
  }
}'




