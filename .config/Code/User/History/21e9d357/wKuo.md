<!-- =========================================================================== -->
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
git add .
<!-- just modifing files but not adding to staging area -->
echo "content modified for working directory" >> file2
echo "content modified for working directory" >> file3
echo "content modified for working directory" >> file1


## git log --all --oneline
5591c17 (HEAD -> master) fifth commit
f8ef61b fourth commit
a0b8973 third commit
7c9814d second commit
fc7fa68 (maint) first commit

<!-- =============================================================================== -->

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
diff --git a/file1 b/file1
index e69de29..53fd6c0 100644
--- a/file1
+++ b/file1
@@ -0,0 +1,6 @@
+content modified for second commit
+content modified for third commit
+content modified for fourth commit
+content modified for fifth commit
+content modified for staging area
+content modified for working directory
diff --git a/file2 b/file2
index e69de29..53fd6c0 100644
--- a/file2
+++ b/file2
@@ -0,0 +1,6 @@
+content modified for second commit
+content modified for third commit
+content modified for fourth commit
+content modified for fifth commit
+content modified for staging area
+content modified for working directory
diff --git a/file3 b/file3
index e69de29..53fd6c0 100644
--- a/file3
+++ b/file3
@@ -0,0 +1,6 @@
+content modified for second commit
+content modified for third commit
+content modified for fourth commit
+content modified for fifth commit
+content modified for staging area
+content modified for working directory
'''

## difference between staging area and working directory
'''
**$ git diff**
diff --git a/file1 b/file1
index 7312348..53fd6c0 100644
--- a/file1
+++ b/file1
@@ -3,3 +3,4 @@ content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
 content modified for staging area
+content modified for working directory
diff --git a/file2 b/file2
index 7312348..53fd6c0 100644
--- a/file2
+++ b/file2
@@ -3,3 +3,4 @@ content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
 content modified for staging area
+content modified for working directory
diff --git a/file3 b/file3
index 7312348..53fd6c0 100644
--- a/file3
+++ b/file3
@@ -3,3 +3,4 @@ content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
 content modified for staging area
+content modified for working directory
'''

## difference between staging area and master
'''
**$ git diff --cached**
diff --git a/file1 b/file1
index 99982a2..7312348 100644
index 99982a2..7312348 100644
--- a/file1
+++ b/file1
@@ -2,3 +2,4 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
diff --git a/file2 b/file2
index 99982a2..7312348 100644
--- a/file2
+++ b/file2
@@ -2,3 +2,4 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
diff --git a/file3 b/file3
index 99982a2..7312348 100644
--- a/file3
+++ b/file3
@@ -2,3 +2,4 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
'''

## difference between HEAD and working directory
'''
**$ git diff HEAD**
diff --git a/file1 b/file1
index 99982a2..53fd6c0 100644
--- a/file1
+++ b/file1
@@ -2,3 +2,5 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
+content modified for working directory
diff --git a/file2 b/file2
index 99982a2..53fd6c0 100644
--- a/file2
+++ b/file2
@@ -2,3 +2,5 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
+content modified for working directory
diff --git a/file3 b/file3
index 99982a2..53fd6c0 100644
--- a/file3
+++ b/file3
@@ -2,3 +2,5 @@ content modified for second commit
 content modified for third commit
 content modified for fourth commit
 content modified for fifth commit
+content modified for staging area
+content modified for working directory
'''