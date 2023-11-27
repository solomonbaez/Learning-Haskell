lastButOne xs = if not (null xs) && length xs >= 2
                then xs !! (length xs - 2)
                else error "List is not greater than 2"
