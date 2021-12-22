size :: [a] -> Int
size [] = 0
size (_:xs) = 1 + size xs

isOdd :: Integral a => a -> Bool
isOdd n = n `mod` 2 == 1

isSquare :: Num a => a -> a
isSquare x = x * x

squarePlus6Mod9 :: Integral a => a -> a
squarePlus6Mod9 x = (x + 6) `mod` 9


main = do 
    let l1 = [1,2,3,4,5]
    let l2 = [True, False]
    let l3 = ['A', 'B', 'C']
    
    print(size l1)
    print(size l2)
    print(size l3)

    let myNumber = 26
    print(isOdd myNumber)
