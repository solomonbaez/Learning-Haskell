--the type List is defined by itself
--leading to potentially infinite recursion
--
--a simple singly linked list implementation
data List a = Cons a (List a) | Nil deriving(Show)

--demonstration that List is acceptable as a list type
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

--reverse demonstration that the list type is acceptable as a List 
toList (Cons x xs) = x : toList xs
toList Nil         = []

--simple binar tree implementation
data BinaryTree a = Node a (BinaryTree a) (BinaryTree a)
                  | Empty
                    deriving (Show)

root = Node "root" (Node "left child" Empty Empty)
                   (Node "right child" Empty Empty)
