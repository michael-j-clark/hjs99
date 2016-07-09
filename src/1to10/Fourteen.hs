module Fourteen where

--Duplicate elements of a list

duplicate:: [a] -> [a]
duplicate [] = []
duplicate (x:xs) = x : x : duplicate xs
