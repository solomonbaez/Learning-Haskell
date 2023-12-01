 --as patterns require the @ operator
 --allow for a more generalized pattern
 -- capital :: String -> String
 -- capital "" = "Empty string!"
 -- capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

--Patters are a way to match and deconstruct values
--Guards are a way to test the boolean validity of values/properties
--Guards function as large if/else trees!
floatOrSink :: (RealFloat a) => a -> a -> String 
floatOrSink mass volume 
  | density < 1.2       = "Huh, quite light..."
  | density <= 1000.0   = "Float!"
  | otherwise           = "Sink!" 
  where density = mass / volume

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b

compare' :: (Ord a) => a -> a -> Ordering
compare' a b 
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT

--the where keywork can be used to pattern match
initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
  where (f:_) = firstName
        (l:_) = lastName

--let/in bindings function on a more restricted scope than where
--critically they are expressions, and can be separated with ;
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
  let sideArea  = 2 * pi * r * h
      topArea   = pi * r^2
  in  sideArea + (2 * topArea)

calculateDensities :: (RealFloat a) => [(a, a)] -> [a]
calculateDensities xs = [density | (m, v) <- xs, let density = m / v]

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of []   -> "empty."
                                               [x]  -> "singleton."
                                               xs   -> "long!"
