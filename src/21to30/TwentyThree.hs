module TwentyThree where

import System.Random

--Extract a given number of randomly selected elements from a list.  

rndSelect ::  [Int] -> Int -> [Int]
rndSelect lst n = zipWith (!!) (replicate n lst ) (take n $ randomRs (0,n) (mkStdGen 9127401298374))
