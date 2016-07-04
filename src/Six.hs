module Six where 

import Five

--Find out whether a  list is a palindrome

palindrome :: (Eq a) =>  [a] -> Bool
palindrome xs
  | (xs == reverse' xs) =  True
  | otherwise = False