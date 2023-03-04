git init
j=1
for i in 12140860  12140540 12140110
do
  dir_name=$i'_member'$j
  mkdir $dir_name
  #git add $dir_name
  #git commit -m"$dir_name created" $dir_name
  #git graph
  echo 'iitbhilai' >  $dir_name/hello-world
  git add $dir_name/hello-world
  git commit -m"$dir_name/hello-world created" $dir_name/hello-world  
  wait
  git-graph 
  sleep 1
  j=$((j+1))
done
#git add .
#git commit -m"First commit"
#git-graph
rm -rf 121* .git
