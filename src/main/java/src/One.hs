module One where


--Find last elem of a lsit

last1 :: (Eq a) => [a] -> a
last1 (a:[]) = a
last1 (a:as) = last1 as