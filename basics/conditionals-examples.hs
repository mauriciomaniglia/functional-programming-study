myAbs :: (Num a, Ord a) => a -> a
myAbs n = if n < 0 then (-n) else n

mySignum :: (Num a, Ord a) => a -> a
mySignum n = if n < 0
            then -1
            else if n == 0
                then 0
                else 1

-- Example using guards
mySignumV2 :: (Num a, Ord a) => a -> a
mySignumV2 n
    | n < 0     = -1
    | n == 0    = 0
    | otherwise = 1

nop :: Bool -> Bool
nop x = if x then False else True

nopV2 :: Bool -> Bool
nopV2 x
    | x = False
    | otherwise = True

-- Example using pattern matching
nopV3 :: Bool -> Bool
nopV3 True = False
nopV3 False = True

-- Other example using pattern matching
mySum 0 y = y
mySum x 0 = x
mySum x y = x + y

-- One more example of pattern matching using _ (don't care)
myMult 0 _ = 0
myMult _ 0 = 0
myMult 1 y = y
myMult x 1 = x
myMult x y = x * y



main = do
    print(myAbs 10)
    print(mySignum 22)
    print(mySignumV2 22)
    print(mySum 0 2)
    print(mySum 3 0)
    print(mySum 2 2)
    print(myMult 3 6)

 
