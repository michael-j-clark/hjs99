--(*) Remove the K'th element from a list. 

removeAt :: [a] -> Int -> [a]  
removeAt  y@(x:xs) k  
    | k > 0 = take k y ++  drop (k + 1) y
    | otherwise = error "k cannot be negative"
