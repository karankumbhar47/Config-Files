## Commands run before using git diff
<!-- first commit and creating maint branch -->
git init
git echo "initial content" > file1
git echo "initial content" > file2
git echo "initial content" > file3
git add .
git commit -m "first commit"
git branch maint
<!-- second commit  -->
echo "content modified for second commit" >> file1
echo "content modified for second commit" >> file2
echo "content modified for second commit" >> file3
git commit -am "second commit"
<!-- third commit  -->
echo "content modified for third commit" >> file1
echo "content modified for third commit" >> file2
echo "content modified for third commit" >> file3
git commit -am "third commit"
<!-- fourth commit  -->
echo "content modified for fourth commit" >> file2
echo "content modified for fourth commit" >> file3
echo "content modified for fourth commit" >> file1
git commit -am "fourth commit"
<!-- fifth commit  -->
echo "content modified for fifth commit" >> file1
echo "content modified for fifth commit" >> file2
echo "content modified for fifth commit" >> file3
git commit -am "fifth commit"
<!-- modify and adding file to stanging area -->
echo "content modified for staging area" >> file1
echo "content modified for staging area" >> file2
echo "content modified for staging area" >> file3
git commit -am "fifth commit"


## git log --all --oneline
5591c17 (HEAD -> master) fifth commit
f8ef61b fourth commit
a0b8973 third commit
7c9814d second commit
fc7fa68 (maint) first commit


## difference between second and fourth commit:-

'''
**$ git diff 7c98 f8ef**
diff --git a/file1 b/file1
index e7c1a89..f2e94a5 100644
--- a/file1
+++ b/file1
@@ -1 +1,3 @@
diff --git a/file1 b/file1
index e7c1a89..f2e94a5 100644
--- a/file1
+++ b/file1
@@ -1 +1,3 @@
 content modified for second commit
+content modified for third commit
+content modified for fourth commit
diff --git a/file2 b/file2
index e7c1a89..f2e94a5 100644
--- a/file2
+++ b/file2
@@ -1 +1,3 @@
 content modified for second commit
+content modified for third commit
+content modified for fourth commit
diff --git a/file3 b/file3
index e7c1a89..f2e94a5 100644
--- a/file3
+++ b/file3
@@ -1 +1,3 @@
 content modified for second commit
+content modified for third commit
 content modified for second commit
+content modified for third commit
+content modified for fourth commit
diff --git a/file2 b/file2
index e7c1a89..f2e94a5 100644
--- a/file2
+++ b/file2
@@ -1 +1,3 @@
 content modified for second commit
+content modified for third commit
+content modified for fourth commit
diff --git a/file3 b/file3
index e7c1a89..f2e94a5 100644
--- a/file3
+++ b/file3
@@ -1 +1,3 @@
 content modified for second commit
+content modified for third commit
+content modified for fourth commit
'''

## difference between maint and HEAD :-

'''
**$ git diff maint**
index e212970..8404f95 100644 
diff --git a/file1 b/file1 
--- a/file1 
+++ b/file1 
@@ -1 +1,2 @@ 
 file1 
+file1 modified 
diff --git a/file2 b/file2 
index e69de29..1bd55ff 100644 
--- a/file2 
+++ b/file2 
@@ -0,0 +1,2 @@ 
+file2 
+file2 modified 
diff --git a/file3 b/file3 
index e69de29..7c8ac2f 100644 
--- a/file3 
+++ b/file3 
@@ -0,0 +1 @@ 
+file3 
'''


## difference between master and Working diretory

'''
**$ git diff HEAD**
diff --git a/file3 b/file3
index 7c8ac2f..6a5160d 100644
--- a/file3
+++ b/file3
@@ -1 +1,2 @@
 file3
+file3 modified
'''

## difference between staging area and working directory
'''
**$ git diff**
diff --git a/file3 b/file3
index 6a5160d..09bb8c0 100644
--- a/file3
+++ b/file3
@@ -1,2 +1,3 @@
 file3
 file3 modified
+file3 modified second time
'''

## difference between staging area and master
'''
**$ git diff --cached**
diff --git a/file3 b/file3
index 7c8ac2f..6a5160d 100644
--- a/file3
+++ b/file3
@@ -1 +1,2 @@
 file3
+file3 modified
'''