maximum' :: (Ord a) => [a] -> a
maximum' []     = error "empty list"
maximum' [x]    = x
maximum' (x:xs) = max x (maximum' xs)

--Num ensures we utilize numbers capable of ordering 
--i.e. non complex numbers
replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' count x
  | count <= 0    = []
  | otherwise     = x : replicate' (count - 1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n (x:xs)
  | n <= 0          = []
  | otherwise       = x : take' (n - 1) xs

--compared to guards pattern matches allow for data 
--deconstruction and identifier binding (by scope)
reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x, y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' a []      = False
elem' a (x:xs)
  | a == x      = True
  | otherwise   = elem' a xs



