module Nine where

------------------------------------------------------
-- (**) Pack consecutive duplicates of list elements 
--  into sublists. 
-- If a list contains repeated elements 
-- they should be placed in separate sublists. 
------------------------------------------------------

pack :: (Eq a) => [a] ->  [[a]]
pack []  = []
pack as  =   (takeWhile (==(head as)) as):pack (dropWhile (==(head as)) as)
