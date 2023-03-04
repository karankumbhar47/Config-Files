# import the library module
import hashlib

'''
blob function will take input as content of file.
input should be in the form string
This function will print hash of this bolb
'''
def blob(content):
    content_length = len(content.encode('utf-8'))
    content=content.encode('utf-8')
    blob_obj = f"blob {content_length}\0".encode('utf-8')
    blob_obj += content 
    sha1 = hashlib.sha1(blob_obj).hexdigest()
    print("Hash value of blob is :- \n\t",sha1)


'''
Tree function will take input list of list contain mode of file name and
'''
def tree(treeData):
    tree_obj=""
    for data in treeData:
        tree_obj+=f"{data[0]} {data[1]}\0{data[2]}"
    sha1=hashlib.sha1()
    sha1.update(tree_obj.encode())
    sha1=sha1.hexdigest()
    print("Hash value of tree is :- \n\t",sha1)

def commit(commitData):
    sha1=hashlib.sha1()
    sha1.update(commitData.encode())
    sha1=sha1.hexdigest()
    print("Hash value of commit is :- \n\t",sha1)



