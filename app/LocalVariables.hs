--let declares a let-bound variable block
--in closes the block and the scope by directing the code forwards
lend amount balance = let reserve    = 100
                          newBalance = balance - amount
                      in if balance < reserve
                          then Nothing
                          else Just newBalance

--example of nested let blocks
foo = let a = 1
      in let b = 2
         in a + b
