#! /usr/bin/bash

#===============================================================
#
#
#
#===============================================================
devider="=========================================================="

if [[ $1 == "blob" ]]
then
echo "$devider"
#"blob <size><null><content>"
blob_content="Hello World"
content_size=$(echo $blob_content | wc -m)
myHash=$(echo -e "blob $content_size\0$blob_content" | sha1sum | awk '{print $1}')
gitHash=$(echo "$blob_content" | git hash-object --stdin)
printf "\ngit :-\n\t[$gitHash]\nby our team :-\n\t[$myHash]\n"
printf "content :-\n$blob_content\n\n"
echo "$devider"

#************************************************#


elif [[ $1 == "tree" ]]
then
echo "$devider"
filename=(12140590 12141550 12141770)
hash=(
8bbd92a69030b99fd1ba65fa3ffb6cd0f32570f5
8bbd92a69030b99fd1ba65fa3ffb6cd0f32570f5
8bbd92a69030b99fd1ba65fa3ffb6cd0f32570f5
)
fileMode=(40000 40000 40000 )
entries=${#fileMode[@]}

printf "" > /tmp/storing_here_because_of_null_char_error
for i in $(seq 0 $(($entries - 1)))
do
printf "${fileMode[$i]} ${filename[i]}\0" >> /tmp/storing_here_because_of_null_char_error
echo "${hash[i]}" | xxd -r -p >> /tmp/storing_here_because_of_null_char_error
content=$(printf "$content\n${fileMode[$i]} ${filename[i]} ${hash[i]}\n")
done
size=$(cat /tmp/storing_here_because_of_null_char_error | wc -c)
printf "tree $size\0" > /tmp/storing_here_because_of_null_char_error2
cat /tmp/storing_here_because_of_null_char_error >> /tmp/storing_here_because_of_null_char_error2
mysum=$(cat /tmp/storing_here_because_of_null_char_error2 | sha1sum | awk '{print $1}')
rm /tmp/storing_here_because_of_null_char_error*

#************************************************#

#creating repository as above content should come here also
git init > /dev/null 2>/dev/null
for dir in 12141550 12140590 12141770
do
mkdir $dir > /dev/null 2>/dev/null
echo "iitbhilai" > $dir/hello-world
git add $dir > /dev/null 2>/dev/null
git commit -m "Commit" > /dev/null 2>/dev/null
done

treehash="b7ef0d696e502245472ca2efa79805f006ef6aba"
gitcontent=$(git cat-file -p $treehash)

printf "\nSum computed by git is:-\n\t[$treehash]\nSum computed by us is:-\n\t[$mysum]\n"
printf "\ncontent taken as input for both:-$content\n\n"
echo "$devider"

#************************************************#

elif [[ $1 == "commit" ]]
then

echo "$devider"
treehash="b7ef0d696e502245472ca2efa79805f006ef6aba"
parenthash=("7b4fe3ab9feff8d68a5c757621f691b649160c81" )
author="karankumbhar47 <karansunilk@iitbhilai.ac.in> 1676723822 +0530"
committer="karankumbhar47 <karansunilk@iitbhilai.ac.in> 1676723822 +0530"
commitmsg="Commit"

content=$(printf "tree $treehash\n")
for hash in ${parenthash[@]}
do
content=$(printf "$content\nparent $hash")
done
content=$(printf "$content\nauthor $author\ncommitter $committer\n\n$commitmsg")
size=$(echo $content | wc -c)
size=$(($size + 1))
mysum=$(echo -e "commit $size\0$content" | sha1sum | awk '{print $1}')

#************************************************#

#creating repository as above content should come here also
git init > /dev/null 2>/dev/null
for dir in 12141550 12140590 12141770
do
mkdir $dir > /dev/null 2>/dev/null
echo "iitbhilai" > $dir/hello-world
git add $dir > /dev/null 2>/dev/null
git commit -m "Commit" > /dev/null 2>/dev/null
done

#************************************************#

commithash="2eb969ae7fa672bfaef98fdb034b926951d78f04"
gitcontent=$(git cat-file -p $commithash)

#************************************************#

printf "\ncontent:- \n$content"
printf "git hash:-\n\t[$commithash]\nhash by our group:-\n\t[$mysum]\n\n"
echo "$devider"
else
printf "Usage:\n./q6 blob|tree|commit\n\n"
echo "$devider"
fi

