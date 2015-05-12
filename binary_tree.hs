module BT
where
data BinaryTree a = Leaf a | Branch ( BinaryTree a) a (BinaryTree a)

--A function to calculate the numer of nodes in a tree

treeSize (Leaf x) = 1
treeSize (Branch left x right) = 1 + treeSize left +  treeSize right

-- A function to do preorder traversal
preorder (Leaf x) = [x]
preorder (Branch left x right) = preorder left ++ preorder right ++ [x]

-- A function to do inorder traversal
inorder (Leaf x) = [x]
inorder (Branch left x right) = inorder left ++ [x] ++ inorder right