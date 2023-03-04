# import the library module
import hashlib

def blob(content):
    content_length = len(content.encode('utf-8'))
    content=content.encode('utf-8')
    blob_obj = f"blob {content_length}\0".encode('utf-8')
    blob_obj += content 
    sha1 = hashlib.sha1(blob_obj).hexdigest()
    return sha1

# def objectEntry(s):
    
#     object_id = object_id.encode('utf-8')
#     object_entry = f"{mode} {fileName}\0".encode('utf-8')
#     object_entry += object_id
def tree(tree):
    for data in tree:
        tree_obj+=f"{data[0]} {data[1]}\0{data[2]}"




# # initialize a string
str = "iitbhilai"
content=str
content_bytes = content.encode('utf-8')
length = len(content_bytes)

    # Create the header string and concatenate it with the content and null byte
header = f"blob {length}\0".encode('utf-8')
data = header + content_bytes + b"\0"

#     # Compute the SHA-1 hash of the data and return it as a hexadecimal string
sha1 = hashlib.sha1(data).hexdigest()
# encode the string
encoded_str = str.encode()
 
# create a sha1 hash object initialized with the encoded string
hash_obj = hashlib.sha1(encoded_str)
 
# convert the hash object to a hexadecimal value
hexa_value = hash_obj.hexdigest()
 
# print
print("\n", hexa_value, "\n")
print(blob("iitbhilai/n"))
print(hashlib.sha1("iitbhilai".encode()).hexdigest())