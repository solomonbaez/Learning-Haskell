--simple type definition for a previously declared function
removeNonUpper :: [Char] -> [Char]
removeNonUpper xs = [x|x <- xs, x `elem` ['A'..'Z']]

--arrow per input
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

--it's also possible to write functions without type definitions
--and use the :t ghci command to determine the type at runtime
--Int, Float, Bool, Char are common types (per any other lang)
--
--A special case is tuples, which have their own definition
--i.e. a bare tuple () is it's own type

--typeclasses function as interfaces
--Eq is a typeclass for equalities
--Ord is a typeclass for ordering
--Show is a typeclass for string coersion

--typeclasses function as constraints and are implemented with =>
factorial :: (Integral a) => a -> a
--recursive factorial definition
--base case defined
factorial 0 = 1
factorial x = x * factorial (x - 1)

addVectors :: (Num x) => (x, x) -> (x, x) -> (x, x)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

tripletFirst :: (a, b, c) -> a
tripletFirst (x, _, _) = x

tripletSecond :: (a, b, c) -> b
tripletSecond (_, y, _) = y

tripletThird:: (a, b, c) -> c 
tripletThird(_, _, z) = z

--pattern matching works for lists as and list comprehensions as well
--[1,2,3] is just syntactic sugar for 1:2:3:[] !
comprehensionMatch xs = [(a + b) | (a, b) <- xs]

