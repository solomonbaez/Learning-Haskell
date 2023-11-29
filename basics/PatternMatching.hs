data Fruit = Apple | Pear

whichFruit::String->Fruit
whichFruit f = case f of
                  "apple" -> Apple
                  "pear"  -> Pear

--guard implementation
nodesAreSame (Node a _ _) (Node b _ _)
  | a==b         = Just a
nodesAreSame _ _ = Nothing

--lend function with guard implementation
lend3 amount balance
  | amount <= 0       = Nothing
  | amount > reserve  = Nothing
  | otherwise         = Just newBalance
  where reserve = 100
        newBalance = balance - amount

--comparative myDrop function 
--original implementation and guarded implementation
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)

myDropGuarded n xs | n <= 0 = xs
myDropGuarded _ []          = []
myDropGuarded n (_:xs)      = myDropGuarded (n - 1) xs
