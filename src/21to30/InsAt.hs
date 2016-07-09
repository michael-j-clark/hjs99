module InsAt where

-- P21 Insert an element at a given position into a list

insertAt :: [a] -> [a] -> Int -> [a]  
insertAt s y@(x:xs) k  
    | k > 0 = take k y ++ s ++ drop k y
    | otherwise = error "k cannot be negative"
