-- BookInfo type constructor = value constructor + components
data BookInfo = Book Int String [String] deriving(Show)

programmingBook = Book 10 "Hello, Haskell" ["The guys"]
