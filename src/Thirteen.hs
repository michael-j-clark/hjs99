--(**) Run-length encoding of a list (direct solution).

--Implement the so-called run-length encoding data compression method directly. 
--I.e. don't explicitly create the sublists containing the duplicates, 
--as in problem 9, but only count them. 
--As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X. 

data Frequency =  Single Char | Multiple Int Char deriving Show

frequency :: [Char] -> Frequency
frequency xs
    |length xs  == 1 = Single $ head xs
    | otherwise      = Multiple (length xs)  (head xs)

encodeDirect :: [Char] -> [Frequency]  
encodeDirect [] = []
encodeDirect (x:xs) = frequency (x:(takeWhile (==x) xs)) : encodeDirect (dropWhile (==x) xs)
