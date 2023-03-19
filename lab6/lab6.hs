-- 1
--read number1 -> для преобразования из string в int
--show sum -> для преобразования из int в string
sumNumber = do
    putStrLn "Enter first number:"
    number1 <- getLine
    putStrLn "Enter second number:"
    number2 <- getLine
    let sum = read number1 + read number2
    putStrLn ("Sum is: " ++ show sum)



