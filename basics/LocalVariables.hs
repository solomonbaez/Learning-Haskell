--let declares a let-bound variable block
--in closes the block and the scope by directing the code forwards
lend amount balance = let reserve    = 100
                          newBalance = balance - amount
                      in if balance < reserve
                          then Nothing
                          else Just newBalance

--example utilizing the where clause to declare local variables
lend2 amount balance = if amount < reserve 
                       then Just newBalance
                       else Nothing
    where reserve    = 100
          newBalance = balance - amount

--example of nested let blocks
foo = let a = 1
      in let b = 2
         in a + b

--example of local function declarations
pluralize::String->[Int]->[String]
pluralize word counts = map plural counts
  where plural 0 = "no" ++ word ++ "s"
        plural 1 = "one" ++ word
        plural n = show n ++ " " ++ word ++ "s"

