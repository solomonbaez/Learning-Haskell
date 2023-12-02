--haskell fundamentally defines WHAT a thing is
--rather than instructions to create a thing
--a somewhat subtle difference
--
--FUNDAMENTALLY: Every haskell function only accepts one param
--
--curried functions allow us to define wrapper functions 
--think: a mini recursion wrapper

max' :: (Ord a) => a -> (a -> a)
max' x y 
  | x > y     = x
  | otherwise = y

--as such we can also call partial functions 
--without their full parameter complement
--this allows us to use partially executed functions later as params

multThree :: (Num a) => a -> (a -> (a -> a))
multThree x y z = x * y * z

--An excellent example of this is a mathematical balance:
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred x = compare 100 x

--then balanced:
balancedCompareWithHundred :: (Num a, Ord a) => a -> Ordering
balancedCompareWithHundred = compare 100

--this is possible with fn inputs as well!
--notice that the type declaration requires a specific scope
--for the function, and a unified type for the returns
doubleFn :: (a -> a) -> a -> a
doubleFn fn x = fn (fn x)

--in essence FP utilizes higher order functions for abstractions
--where we would use loops, state management, etc in IP
--zipWith zips two arrays utilizing a arbitrage function
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

--i.e. fn (a -> b) ++ x:xs ([a]) and returns ([b])
map' :: (a -> b) -> [a] -> [b]
map' fn (x:xs) = fn x : map fn xs
