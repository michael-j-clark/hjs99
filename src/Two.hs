module Two where

-- Last but one elem

secondLast :: [a] -> a
secondLast s@(x:xs)
  | (length s < 2) = error "list must be longer than 2"
  | (length s > 2) = secondLast xs
  | otherwise   = x