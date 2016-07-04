module Five where 

import Data.List

--Reverse a list
--cribbed from http://stackoverflow.com/questions/7862881/how-can-i-write-reverse-by-foldr-efficiently-in-haskell  Oct 22 '11 22:08 answer
reverse' :: [a] -> [a]
reverse' xs = foldl' (\a b -> [b] ++ a) [] xs