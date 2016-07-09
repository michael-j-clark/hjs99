module TwentyFour where

import System.Random

--Lotto: Draw N different random numbers from the set 1..M.  

rndSelect :: Int -> [Int]
rndSelect n = zipWith (!!) (replicate n [1..n]) (take n $ randomRs (0,(n-1)) (mkStdGen 9127401298374))
