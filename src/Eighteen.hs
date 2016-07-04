module Eighteen where

--(**) Extract a slice from a list.

--Given two indices, i and k, 
--the slice is the list containing the elements 
--between the i'th and k'th element 
--of the original list (both limits included). 
--Start counting the elements with 1. 

sliceList :: [a] -> Int -> Int -> [a]  
sliceList [] _ _ = []
sliceList y@(x:xs) i j = ((\lst -> drop i lst) . (\lst -> take j lst)) y
