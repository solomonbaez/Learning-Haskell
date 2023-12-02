quicksort :: (Ord a) => [a] -> [a]
quicksort []  = []
quicksort (x:xs) =
  let lhs = quicksort [a | a <- xs, a <= x]
      rhs = quicksort [a | a <- xs, a > x]
  in  lhs ++ [x] ++ rhs
