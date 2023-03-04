#!bin/bash

#to select all arguments without last argument creating a variable

#total number of arguments
allArgs=$#

#to select all without last argument ${parameter:offset:length}
fileNames=${@:1:$allArgs-1}

#to select last argument
message=${@:$allArgs:1}

# git add and commit
git add $fileNames
git commit -m"$message"

