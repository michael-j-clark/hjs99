module BinPred where

import Data.Bool
import Prelude hiding (and, or)
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

type BinPredSig = Bool -> Bool -> Bool

and :: BinPredSig
and True True = True
and  _   _    = False

or :: BinPredSig
or True  True   = True
or True  False  = True
or False True   = True
or False False  = False

-- NAND is the negation of 'and'
nand :: BinPredSig
nand a b = not $ and a b
 
nor :: BinPredSig
nor False False = True
nor _     _     = False

xor :: BinPredSig
xor True  False = True
xor False True  = True
xor _     _     = False

impl :: BinPredSig
impl a b = not $ a `or` b

equ :: BinPredSig
equ True  True  = True
equ False False = True
equ _     _     = False




