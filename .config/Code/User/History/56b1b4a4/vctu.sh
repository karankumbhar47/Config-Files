git init 

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

#git-graph
#sleep 1



git checkout -b product 
git rm -cached file3
echo "iitbh rocks file4" > file4
git add file4 
git commit -m"fourth commit"

git checkout master


