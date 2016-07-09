module TwentyFive where

import System.Random
import Data.List

--Generate a random permutation of the elements of a list. 

rndPermu :: [a] -> [a]
rndPermu lst = let permu = permutations lst
    in  permu !! (fst (randomR (0,(length permu) -1) (mkStdGen 9127401298374)))
