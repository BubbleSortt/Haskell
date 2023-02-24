-- 1

---- 1
ascList :: Int -> [Int]
ascList n = [1..n]

---- 2
oddList :: Int -> [Int]
oddList n = [1,3..n]

---- 3
evenList :: Int -> [Int]
evenList n = [2,4..n]

---- 4
-- здесь используется списковое включение
-- [выражение | переменная <- список, условие]
squaresList :: Int -> [Int]
squaresList n = [x*x | x <- [1..n]]

---- 5
factorialsList :: Int -> [Int]
factorialsList n = scanl (*) 1 [1..n]

---- 6
binList :: Int -> [Int]
binList n = [2^x | x <- [1..n]]


-- 2

---- 1
mean :: [Double] -> Double
mean list = sum list / fromIntegral (length list)

---- 2
-- Оператор !! извлекает элемент списка по его индексу
elemAt :: [Int] -> Int -> Int
elemAt list n = list !! n

---- 3
-- 2 : [] -> [2]
sumLists :: Num a => [a] -> [a] -> [a]
sumLists [] [] = []
sumLists [] ys = ys
sumLists xs [] = xs
sumLists (x:xs) (y:ys) = (x+y) : sumLists xs ys

---- 6
removeOdd :: [Int] -> [Int]
removeOdd list = [x | x <- list, even x]

---- 7
removeEmpty :: [String] -> [String]
removeEmpty list = [x | x <- list, length x > 0]

---- 8
countTrue :: [Bool] -> Int
countTrue list = length [x | x <- list, x == True]

---- 9
makePositive :: [Int] -> [Int]
makePositive list = map abs list

---- 10
deleteChar :: Char -> [Char] -> [Char]
deleteChar char word = [x | x <- word, x /= char]

---- 11
substitute :: Char -> Char -> String -> String
substitute oldChar newChar string = map (\c -> if c == oldChar then newChar; else c) string
