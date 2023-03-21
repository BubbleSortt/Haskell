-- 1

---- Список натуральных чисел
ascList :: Int -> [Int]
ascList n = [1..n]

---- Список нечетных натуральных чисел
oddList :: Int -> [Int]
oddList n = [1,3..n]

---- Список четных натуральных чисел
evenList :: Int -> [Int]
evenList n = [2,4..n]

---- Список квадратов натуральных чисел
-- здесь используется списковое включение
-- [выражение | переменная <- список, условие]
squaresList :: Int -> [Int]
squaresList n = [x*x | x <- [1..n]]

---- Список факториалов
-- scanl задаем функции начальное значение, список и
-- функцию которую нужно применить к предыдущему и текущему значнию
factorialsList :: Int -> [Int]
factorialsList n = scanl (*) 1 [1..n]

---- Список степеней двойки
binList :: Int -> [Int]
binList n = [2^x | x <- [1..n]]


-- 2

---- Функция, принимающая на входе список вещественных чисел и
--   вычисляющую их арифметическое среднее. Постарайтесь, чтобы
--   функция осуществляла только один проход по списку.
mean :: [Double] -> Double
mean list = sum list / fromIntegral (length list)

---- Функция вычленения n-го элемента из заданного списка
-- Оператор !! извлекает элемент списка по его индексу
elemAt :: [Int] -> Int -> Int
elemAt list n = list !! n

---- Функция сложения элементов двух списков. Возвращает список,
--   составленный из сумм элементов списков-параметров. Учесть,
--   что переданные списки могут быть разной длины.
-- 2 : [] -> [2]
sumLists :: Num a => [a] -> [a] -> [a]
sumLists [] [] = []
sumLists [] ys = ys
sumLists xs [] = xs
sumLists (x:xs) (y:ys) = (x+y) : sumLists xs ys

---- Функция removeOdd, которая удаляет из заданного
--   списка целых чисел все нечетные числа. Например:
--   removeOdd [1,4,5,6,10] должен возвращать [4,10].
removeOdd :: [Int] -> [Int]
removeOdd list = [x | x <- list, even x]

---- Функция removeEmpty, которая удаляет пустые строки из заданного списка строк. Например:
--   removeEmpty ["", "Hello", "", "", "World!"]
--   возвращает ["Hello","World!"].
removeEmpty :: [String] -> [String]
removeEmpty list = [x | x <- list, length x > 0]

---- Функция countTrue :: [Bool] -> Integer, возвращающая количество элементов списка, равных True
countTrue :: [Bool] -> Int
countTrue list = length [x | x <- list, x == True]

---- Функция makePositive, которая меняет знак
--   всех отрицательных элементов списка чисел, например: makePositive [-1, 0, 5, -10, -20] дает
--   [1,0,5,10,20]
makePositive :: [Int] -> [Int]
makePositive list = map abs list

---- Функция delete :: Char -> String -> String, которая принимает на вход строку и символ и возвращает
--   строку, в которой удалены все вхождения символа. Пример: delete ’l’ "Hello world!" должно возвращать "Heo
--   word!"
deleteChar :: Char -> [Char] -> [Char]
deleteChar char word = [x | x <- word, x /= char]

---- Функция substitute :: Char -> Char -> String -> String,
--   которая заменяет в строке указанный символ на заданный. Пример: substitute ’e’ ’i’ "eigenvalue" возвращает
--   "iiginvalui"
substitute :: Char -> Char -> String -> String
substitute oldChar newChar string = map (\c -> if c == oldChar then newChar; else c) string
