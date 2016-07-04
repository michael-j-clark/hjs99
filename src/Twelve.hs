module Twelve where

---------------------------------------------------------
--(**) Decode a run-length encoded list.

--Given a run-length code list generated as specified in problem 11. 
--Construct its uncompressed version. 
---------------------------------------------------------
data Frequency =  Single Char | Multiple Int Char deriving Show

getTerms :: Frequency -> [Char]
getTerms (Single c) = [c]
getTerms (Multiple k c) = replicate k c

decodeModified ::  [Frequency] -> [Char] 
decodeModified [] = []
decodeModified (x:xs) = (getTerms x) ++ decodeModified xs
