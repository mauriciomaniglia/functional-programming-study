myConcat xss = [x | xs <- xss, x <- xs]

myLength xs = sum [1 | _ <- xs]

dividers n = [x | x <- [2..n], n `mod` x == 0]

main = do
    print(myConcat [[1,2,3], [4,5,6]])
    print(myLength [1,2,3,4,5,6])

    print(dividers 10)
    print(dividers 16)
