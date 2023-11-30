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
