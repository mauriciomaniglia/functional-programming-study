listSum :: Num a => [a] -> a
listSum [] = 0
listSum (x:xs) = x + listSum xs

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
    qsort minors ++ [x] ++ qsort bigger
    where
        minors = [e | e <- xs, e < x]
        bigger = [e | e <- xs, e >= x]

main = do
    print(listSum [1,2,3])
    print(myLength [1,2,3])
    print(qsort [3,2,1])
