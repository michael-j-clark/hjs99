
module SplitN where

-- P17 Split a list into two parts; the length of the first list is given 

combine :: [a] -> [a] -> [[a]]
combine xs ys = [xs,ys]

splitn :: [a] -> Int -> [[a]]
splitn as n 
  | n <  0  = error "n is too small"
  | otherwise = combine (take n as)  (drop n as)