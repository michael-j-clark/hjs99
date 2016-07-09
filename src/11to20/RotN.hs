module RotN where

--------------------------------------------------------------
-- P19 Rotate a list N places to the left
--Prelude> rotate ["a", "b", "c", "d", "e", "f", "g", "h"] 3
--["d","e","f","g","h","a","b","c"]
--
--Prelude> rotate ["a", "b", "c", "d", "e", "f", "g", "h"] (-2)
--["g","h","a","b","c","d","e","f"]
---------------------------------------------------------------


rotate :: [a] -> Int -> [a]
rotate xs n
  | (n < 0)   = (drop (subtract k l) xs) ++ (drop k xs)
  | otherwise = (drop k xs) ++ (take k xs)
  where k = ((abs n) `mod` l)
        l = (length xs)