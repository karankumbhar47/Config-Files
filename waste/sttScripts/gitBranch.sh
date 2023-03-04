#!/bin/bash

git init

echo "iitbhilai" > file1
git add .
git commit -m"file1"

echo "iitbhilai" > file2
git add .
git commit -m"file2"

git checkout master~1
git checkout -b feature

echo "iitbhilai" > file4
git add .
git commit -m"file4"

echo "iitbhilai" > file5
git add .
git commit -m"file5"

echo "iitbhilai" > file6
git add .
git commit -m"file6"

echo "iitbhilai" > file7
git add .
git commit -m"file7"
 
echo "iitbhilai" > file8
git add .
git commit -m"file8"

echo "iitbhilai" > file9
git add .
git commit -m"file9"

git-graph

