--function declaration matches filename 
--interesting to consider that short circuiting the if/then/else
--means it's reasonable to have early failures occur on the left
--hand side of the expression
--
--Additionally this expression evaluates RECURSIVELY
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs) 
