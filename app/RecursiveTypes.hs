--the type List is defined by itself
--leading to potentially infinite recursion
data List a = Cons a (List a) | Nil deriving(Show)

--demonstration that List is acceptable as a list type
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

--simple binar tree implementation
data BinaryTree a = Node a (BinaryTree a) (BinaryTree a)
                  | Empty
                    deriving (Show)

root = Node "root" (Node "left child" Empty Empty)
                   (Node "right child" Empty Empty)
