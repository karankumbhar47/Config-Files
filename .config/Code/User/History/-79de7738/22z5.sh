echo "content modified for third commit" >> file1
echo "content modified for third commit" >> file2
echo "content modified for third commit" >> file3
git commit -am "third commit"
#<!-- fourth commit  -->
echo "content modified for fourth commit" >> file2
echo "content modified for fourth commit" >> file3
echo "content modified for fourth commit" >> file1
git commit -am "fourth commit"
#<!-- fifth commit  -->
echo "content modified for fifth commit" >> file1
echo "content modified for fifth commit" >> file2
echo "content modified for fifth commit" >> file3
git commit -am "fifth commit"
working direcort