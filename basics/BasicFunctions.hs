--functions CANNOT begin capitalized
--
--haskell supports function hoisting
doubleUs x y = doubleMe x + doubleMe y

doubleMe x = x + x

--the if statement requires an else
--the if statement is an expression 
--(returns a value)
doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

--strings are lists in haskell
--list concatenation is exhaustive
--i.e. 
--to add two lists we work through every element
--
--using the cons : operator we can quickly append
smallConcat x xs = x:xs

getHead xs = if length xs > 0
              then head xs
              else Nothing

--ranges are useful but can be tricky
--infinite lists can be created with [a, b..]
infiniteSlice pos = take pos [0, 1..]

--list comprehension in action
getEvenNums maxNum = [x*2 | x <- [1..maxNum]]

oddBoomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <-xs, odd x]

removeNonUpper st = [c | c <- st, c `elem` ['A'..'Z']]

--tuples function as static lists
--they can also be nonhomogenous
safeZip xs ys = if length xs == length ys 
                then zip xs ys
                else error "unequal list lengths"

triangles = [(a,b,c) | c<-[1..10], b<-[1..10], a<-[1..10]]
rightTriangles = [(a,b,c) | c<-[1..10], b<-[1..10], a<-[1..10], 
                  a^2 + b^2 == c^2]




