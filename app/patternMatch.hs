--pattern composition, including null case with wildcard
patternMatch (x:xs) = x + patternMatch xs
patternMatch _ = 0
