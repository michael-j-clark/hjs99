module DupeN where

--(Problem 15) Duplicate elements of a list a given number of times 



duplicate :: [a] -> Int -> [a]  
duplicate [] _ = []
duplicate y@(x:xs) n = take n (repeat x) ++ (duplicate xs n)
