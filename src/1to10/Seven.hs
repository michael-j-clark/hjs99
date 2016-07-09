
--(**) Flatten a nested list structure.
--This answer is from solutions @ https://wiki.haskell.org/99_questions/1_to_10

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x
