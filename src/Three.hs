--(*) Find the K'th element of a list. The first element in the list is number 1. 

elementAt :: [a] -> Int -> a
elementAt [] _ = error "Empty list"
elementAt (x:_) 1 = x
elementAt (x:xs) k
    |k<1 = error "Index out of bounds"
    |otherwise = elementAt xs (k-1)
