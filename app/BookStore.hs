-- BookInfo type constructor = value constructor + components
-- Parameterised type! The compiler has no way to determine actual typing
-- BookInfo is an example of a polymorphic parameterised type
data BookInfo = Book Int String [String] deriving(Show)

programmingBook = Book 10 "Hello, Haskell" ["The guys"]
