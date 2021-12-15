calculate :: Double -> String -> Double -> IO ()
calculate firstNumber operator secondNumber = do
    if operator == "+"
    then print(firstNumber + secondNumber)
    else if operator == "-"
    then print(firstNumber - secondNumber)
    else if operator == "*"
    then print(firstNumber * secondNumber)
    else if operator == "/"
    then print(firstNumber / secondNumber)
    else putStrLn "invalid operator"


main :: IO ()
main = do
     putStrLn "Enter first number: "
     firstStr <- getLine
     putStrLn "Enter an operator: "
     operator <- getLine
     putStrLn "Enter second number: "
     secondStr <- getLine
     
     let firstNumber = read firstStr::Double
     let secondNumber = read secondStr::Double

     calculate firstNumber operator secondNumber
