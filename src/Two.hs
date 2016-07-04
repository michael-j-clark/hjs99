
--(*) Find the last but one element of a list. 

lastButOneElm :: [a] -> a
lastButOneElm lst = head $ tail $ reverse $ lst 
