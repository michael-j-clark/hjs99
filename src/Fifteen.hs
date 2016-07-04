--(**) Replicate the elements of a list a given number of times. 

replicate':: [a] -> Int -> [a]
replicate' [] _ = []
replicate' (x:xs) k =  (replicate k x) ++ replicate' xs k 
