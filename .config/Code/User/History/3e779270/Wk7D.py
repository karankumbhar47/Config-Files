import hashlib
import re
# Define the list of objects to include in the tree
# objects = [
#     { 'type': 'blob', 'mode': '100644', 'name': 'file1.txt', 'hash': 'a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2' },
#     { 'type': 'blob', 'mode': '100644', 'name': 'file2.txt', 'hash': 'b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3' },
#     { 'type': 'tree', 'mode': '040000', 'name': 'subdir', 'hash': 'c3d4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4' }
# ]

objects = [
        {'mode':'100644','type':'blob','hash':'78201917ea4c7936828d74306e2c73181b18a92c','name':'hello-world'}
        ]
# Define the parent tree SHA1 hash (optional)
# parent_tree = 'd4e5f6a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4e'
parent_tree = None
# Concatenate the text representations of each object together
tree_content = b''
for obj in objects:
    tree_content += bytes(f"{obj['mode']} {obj['name']}\x00{obj['hash']}", 'utf-8')

# Add the parent tree SHA1 hash to the beginning of the tree content
if parent_tree and re.match(r'^[0-9a-fA-F]{40}$', parent_tree):
    tree_content = bytes.fromhex(parent_tree) + tree_content

# Compute the SHA1 hash of the resulting bytes to get the tree SHA1 hash
tree_sha1 = hashlib.sha1(tree_content).hexdigest()
print(f"Tree SHA1: {tree_sha1}")

