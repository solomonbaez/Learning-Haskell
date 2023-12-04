--the data keyword is utilized in type definitions
--read -- Bool = False or True
data Bool = False | True

--value constructors (such as Circle) are functions that produce a type
data Shape = Circle Float Float Float | Rectangle Float Float Float Float

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

