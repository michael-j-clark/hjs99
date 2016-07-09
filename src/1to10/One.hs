
--(*) Find the last element of a list. 

lastElmLst:: [a] -> a
lastElmLst lst = head $ reverse $ lst

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [x] = x
myLast (x:xs) = myLast $ xs
