-- Функция вычисления арифметического среднего элементов
-- списка вещественных чисел с использованием функции
-- foldr. Функция должна осуществлять только один проход
-- по списку.
mean :: [Double] -> Double
mean list = foldr (+) 0 list / fromIntegral (length list)

-- Функция, вычисляющая скалярное произведение двух списков
-- (используйте функции foldr и zipWith).
-- zipWith применяет функцию к элементам двух списков и возвращает новый список
scalar :: [Double] -> [Double] -> Double
scalar xs ys = foldr (+) 0 (zipWith (*) xs ys)

-- Функция countEven, возвращающая количество четных элементов в списке.
countEven :: [Int] -> Int
countEven list = foldr (\x y -> if even x then y + 1; else y) 0 list

-- 4
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)

-- 5
-- символ . используется для композиции функций. Сначала применяется функция после .,а затем ту, которая указана перед
quicksort2 :: (a -> a -> Bool) -> [a] -> [a]
quicksort2 _ [] = []
quicksort2 comparator (x:xs) = quicksort2 comparator (filter (comparator x) xs) ++ [x] ++ quicksort2 comparator (filter (not . comparator x) xs)
