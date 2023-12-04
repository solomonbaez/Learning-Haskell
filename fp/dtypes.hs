--the data keyword is utilized in type definitions
--read -- Bool = False or True
data Bool = False | True

--value constructors (such as Circle) are functions that produce a type
data Point = Point Float Float 
  deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point 
  deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^ 2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

transform :: Shape -> Float -> Float -> Shape
transform (Circle (Point x y) r) tx ty = 
  Circle (Point (x + tx) (y + ty)) r
transform (Rectangle (Point x1 y1) (Point x2 y2)) tx ty = 
  Rectangle (Point (x1 + tx) (y1 + ty)) (Point (x2 + tx) (y2 + ty))
