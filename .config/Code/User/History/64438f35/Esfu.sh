#!/bin/bash

#Initializing Git
git init

#Creating Two files and giving them the same content

echo "Work For First Commit" > f1.txt

echo "Work For First Commit" > f2.txt

#Adding the git file
git add .

#Committing the two files
git commit -m "Committing for the First Time"


#Making a Directory and file inside it

mkdir File1

echo "Working next" > File1/f3.txt

#Adding and Committing For the Second Time

git add .
git commit -m "Committing for the Second Time"

#Making another Directory and two different files in which one has the same content as f1 and f2 text files and other one has different content

mkdir File2

echo "Work For First Commit" > File2/f4.txt

echo "GIT is a nice tool" > File2/f5.txt

#Adding and Committing For the Third Time

git add .
git commit -m "Committing for the Third Time"

#Making a gitGraph

git graph

