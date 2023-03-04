num=$(($((RANDOM%4))+1))
echo "$num"

git log | awk '
{ 
if ( $num == $5 ){
  print $num " " $5;
  lines[1] = $0;
  lines[2] = prev
}
if ($1 == "commit"){
  prev = $2;
}
else if ($3 == "commit"){
  gsub(/^[[:space:]]+/, "", $0);
  print $0  " ==> [" prev "]\n"
} 
}
END{ 
  print "random commit ...\n " lines[1] "==> " lines[2]
}'



