-- BookInfo type constructor = value constructor + components
-- Parameterised type! The compiler has no way to determine actual typing
-- Book is an example of a polymorphic parameterised type
data BookInfo = Book Int String [String] deriving(Show)

type CustomerID = Int
type ReviewBody = String
data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

programmingBook = Book 10 "Hello, Haskell" ["The guys"]
