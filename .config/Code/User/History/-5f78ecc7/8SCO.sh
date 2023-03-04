# #!/bin/bash
#find .git/objects -type f | sed 's/\.git\/objects\///g'| sed 's/\///g'

# Go to the .git/objects directory
allFiles=$(echo find .git/objects -type f | sed 's/\.git\/objects\///g'| sed 's/\///g')

# Loop through all subdirectories in the objects directory
for file in $allFiles; 
  do
    #finding type of file
    sha=$file
    type=$(git cat-file -t $sha )

    #blob object
    if [ "$type" == "blob" ] 
    then
      echo "# Blob object [$sha] "
      echo "# Content -->"
      git cat-file -p "$sha" | sed 's/^/\t/'
      echo -e "\n***************************************************************************************************************\n"
    
    #tree object
    elif [ "$type" == "tree" ]
    then
      echo "# Tree object [$sha]"
      echo "# All blobs this tree pointed to :-"
      git ls-tree "$sha" | sed 's/^/\t/'
      echo -e "\n***************************************************************************************************************\n"

    #commit object  
    elif [ "$type" == "commit" ]
    then
      echo "# Commit object [$sha]"
      git cat-file -p $sha | grep author | cut -d " " -f 1-3 | sed 's/^/\t/'
      git cat-file -p $sha | grep parent | sed 's/^/\t/'
      echo -e "\n***************************************************************************************************************\n"
    fi

  done

