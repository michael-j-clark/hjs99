module Four where

-- Find the number of elements of a list

length'' :: [a] -> Int -> Int
length'' [] c     = c
length'' (x:xs) c = length'' xs (c + 1)

length' :: [a] -> Int
length' [] = 0
length' xs = length'' xs 0

