module TruthTables where

import Data.Bool
import BinPred
import Prelude  hiding (and, or)
--(**) Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 
--(for logical equivalence) which succeed or fail according to the result of
-- their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed.

--A logical expression in two variables can then be written as in the following example: and(or(A,B),nand(A,B)).

--Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.

--Example:

--(table A B (and A (or A B)))
--true true true
--true fail true
--fail true fail
--fail fail fail


--https://wiki.haskell.org/99_questions/Solutions/46
table :: (Bool -> Bool -> Bool) -> IO ()
table f = mapM_ putStrLn [show a ++ " " ++ show b ++ " " ++ show (f a b)
  | a <- [True, False], b <- [True, False]]

tablen :: Int -> ([Bool] -> IO ())
tablen f = mapM_ putStrLn [show a ++ " " ++ show b ++ " " ++ show (f a b)
  | a <- [True, False], b <- [True, False]]


main :: IO()
main = do
  table (\x y -> (and x (x `or` y)))


