# #!/bin/bash

# Go to the .git/objects directory
cd ".git/objects"

# Loop through all subdirectories in the objects directory
for d in ./*; 
do
  for f in "$d"/*; 
  do    
    sha=$(echo "$d${f#$d}"| sed 's/\///g' | sed 's/\.//g')
    type=$(git cat-file -t $sha 2>/dev/null)
    echo "$type"
    if [ "$type" -eq "blob" ] 
    then
      echo "$sha --> This is an blob object"
      echo "displaying content ...."
      git cat-file -p "$sha"
    elif [ "$type" -eq "tree" ]
    then
      echo "$sha --> This is an tree object"
      echo "displaying all blobs this tree pointed to ..."
      git ls-tree "$sha"
    elif [ "$type" -eq "commit" ]
    then
      echo "$sha --> This is an commit object"
      git cat-file -p $sha | grep author | cut -d " " -f 1-3
      git cat-file -p $sha | grep parent 
    fi






    zz
  done
done

        #| sed 's/..$//' )
        #| sed 's/.\///g')
        #type=$(git cat-file -t $("$f" | sed 's/^............//g'| sed 's/\///g'))
        
        # else
        # #do nothing
        # echo "karan"
        # fi 

#git ls-files -s .git/objects | awk '{print $2}' | xargs -I {} sh -c "echo -n {}' '; git cat-file -t {}"
# cd .git/objects

# allDir=$(ls)
# for i in $allDir;
# do
#     for f in "$i"/*;
#     do
#       sha=$(echo ${i#$f} | sed 's/\///g' |sed 's/..$//')
#       echo "$sha"
#     done
#   #cd ..
# done

# # set the directory to loop through
# dir_path=".git/objects"

# # loop through all files in the directory
# for subdirectory in $(find $dir_path -type f); 
# do
#   echo "Processing directory: $subdirectory"

#   for file in $(find $subdirectory -type f);

#   do 
#     echo "Processing file: $file"
#     #fileType=$(git cat-file -t $(git hash-object $file))
#     echo "fileType: $fileType"
#   done
  
#   # do something with the file, for example, print its contents
# done

# #!/bin/bash