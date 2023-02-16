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

