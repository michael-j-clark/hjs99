module Three where

-- Find kth elm

kth :: [a] -> Int  -> a
kth [] _ = error "empty list"
kth xs k = if (k < 0 || k > (length  xs))  
           then error "k out of bounds" 
           else  xs !! k