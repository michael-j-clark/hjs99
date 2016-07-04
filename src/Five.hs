-- (*) Reverse a list. 

reverseList :: [a] -> [a]
reverseList [] = error "Empty list given"
reverseList [x] = [x]
reverseList (x:xs) =   (reverseList $ xs) ++ [x]
