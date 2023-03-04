#!/bin/bash

#########################################################################################
#                                                                                       # 
#       here we are taking one input (which is first argument on command line)          #
#       for example :-                                                                  #
#       ./<script_name> git@github.com:<user_name>/<repository_name>.git                #
#                                                                                       #
#########################################################################################


#intializing git
git init 

#adding remote named as origin
git remote add origin $1



##########################################################################################
#                                                                                        #
#       creating three commits in master branch and pusing it to origin remote           #
#                                                                                        #
##########################################################################################

echo "iitbh" > file1
git add file1 
git commit -m"first commit"

echo "iitbh rocks" > file2
git add . 
git commit -m"second commit"

git rm --cached file1
echo "iitbh rocks iitbhilai" > file3
git add file3 
git commit -m"third commit"

#pushing master branch to origin
git push origin master


##########################################################################################
#                                                                                        #
#       cloning the same repository and makign product branch here                       #
#       (here we are cloning repository inside same direcoty)                            #
#                                                                                        #
##########################################################################################

git clone $1

#extrating repositoty name and changing directory to this repository
#here we are extracting directory name from ssh link given as first argument
repository_name=$(echo "$1" |  sed 's|.*/\(.*\)\..*|\1|' )
cd $repository_name
echo "$repository_name" 

#creating product branch with one commit in it
git checkout -b product 
git rm --cached file3
echo "iitbh rocks file4" > file4
git add file4 
git commit -m"fourth commit"

#moving head pointer to first commit
git checkout master
git checkout -f master~2

#showing git graph of cloned repository
git graph