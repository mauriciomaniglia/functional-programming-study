runGame::Int -> IO()
runGame guesses = do
    let secretNumber = "41"

    if guesses == 3
    then putStrLn "Sorry dude, you lose"
    else do
         putStrLn "Enter a guess between 1 and 100: "
         userGuess <- getLine
         if userGuess == secretNumber
         then putStrLn "Yoo dude, you win!"
         else runGame (guesses + 1)


main = do
     runGame 0
