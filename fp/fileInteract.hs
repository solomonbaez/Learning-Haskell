import System.Environment (getArgs)

--pull a file and parse it as inputs
interactWithFile function inputFile outputFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction 
  where mainWith function = do 
    args <- getArgs
    case args of 
      [input, output] -> interactWithFile function input output
      _               -> putStrLn "error: need exactly two args"

  myFunction = id
