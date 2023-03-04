git init
#<----- if you don't want to add files with .log extenstion and .gitGraph/ directory ----->

# create .gitignore file and put "*.log" and ".gitGraph" to ignore .log files 
# and ingnore .gitGraph/ directory
echo "*.log" > .gitignore
echo ".gitGraph/" >> .gitignore
git add .
git commit -m"first commit"



#<----- if you already committed files but you want to ignore them ----->
# update .gitignore file by adding 
echo "*log" > .gitignore
echo ".gitGraph/" >> .gitignore

#remove added files
git rm --cached *.log .gitGraph/*

# add updated .gitignore file
git add .gitignore

#commit all changes
git commit -m"updated ingnore files"





