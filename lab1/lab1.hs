--1. ((Char,Integer), String, [Double])
---- (('a', 345), "word", [13.2, 35.3, 66.3])

--2. [(Double,Bool,(String,Integer))]
---- [(13.4, True, ("string", 56)), (53.6, False, ("long string", 42))]

--3. ([Integer],[Double],[(Bool,Char)])
---- ([34,624,63], [24.53, 64.26, 74.4], [(False, 'g'), (True, 'm')])

--4. [[[(Integer,Bool)]]]
---- [[[(54, False), (46, True)], [(347, False), (25, True)]], [[(33, False), (76, True)], [(1, False), (87, True)]]]

--5. (((Char,Char),Char),[String])
---- ((('a', 'b'), 'c'), ["word", "long word"])

--6. (([Double],[Bool]),[Integer])
---- (([3.5, 3.2, 35.6], [True, True, False]), [46, 33, 246, 64])

--7. [Integer, (Integer,[Bool])]
---- daamn wtf

--8. (Bool,([Bool],[Integer]))
---- (True, ([True, True, False], [35, 66, 62]))

--9. [([Bool],[Double])]
---- [([True, True, False], [45.6, 34.2, 63.2]), ([True, False, True], [3.6, 34.2, 61.5])]

--10. [([Integer],[Char])]
---- [([45, 346, 346], "word"), ([45, 77, 34], "word")]


--1.2

-- Функция max3, по трем целым возвращающая наибольшее из них.
max3 :: Int -> Int -> Int -> Int
max3 a b c = max a (max b c)

-- Функция min3, по трем целым возвращающая наименьшее из них.
min3 :: Int -> Int -> Int -> Int
min3 a b c = min a (min b c)

-- Функция sort2, по двум целым возвращающая пару, в которой
-- наименьшее из них стоит на первом месте, а наибольшее — на
-- втором.
sort2 :: Int -> Int -> (Int, Int)
sort2 a b = (min a b, max a b)

-- Функция bothTrue :: Bool -> Bool -> Bool, которая
-- возвращает True тогда и только тогда, когда оба ее аргумента
-- будут равны True. Не используйте при определении функции
-- стандартные логический операции (&&, || и т.п.)
bothTrue :: Bool -> Bool -> Bool
bothTrue a b = if a == True then
         if b == True then True
         else False
          else False

-- Функция solve2::Double->Double->(Bool,Double),
-- которая по двум числам, представляющим собой коэффициенты
-- линейного уравнения ax + b = 0, возвращает пару, первый
-- элемент которой равен True, если решение существует и False
-- в противном случае; при этом второй элемент равен либо
-- значению корня, либо 0.0.
solve2 :: Double -> Double -> (Bool, Double)
solve2 a b = if a == 0 then (False, 0.0) else (True, (-b) / a)

-- Функция isParallel, возвращающая True, если два отрезка, концы которых задаются в аргументах функции,
-- параллельны (или лежат на одной прямой). Например, значение выражения isParallel (1,1) (2,2) (2,0) (4,2) должно быть
-- равно True, поскольку отрезки (1, 1) − (2, 2) и (2, 0) − (4, 2) параллельны
isParallel :: (Double, Double) -> (Double, Double) -> (Double, Double) -> (Double, Double) -> Bool
isParallel a b c d = if ((snd b - snd a) / (fst b - fst a)) == ((snd d - snd c) / (fst d - fst c)) then True else False

-- Функция isIncluded, аргументами которой служат параметры
-- двух окружностей на плоскости (координаты центров и радиусы);
-- функция возвращает True, если вторая окружность целиком содержится внутри первой.
isIncluded :: (Int, Int) -> Int -> (Int, Int) -> Int -> Bool
isIncluded c1 r1 c2 r2 = if (fst c1 - fst c2)^2 + (snd c1 - snd c2)^2 < (r1 -r2)^2 then True else False

-- Функция isRectangular, принимающая в качестве параметров координаты трех точек на плоскости, и возвращающая True,
-- если образуемый ими треугольник — прямоугольный.
-- (5,5) (0,5) (5,0) - ok
-- (5,6) (0,5) (5,0) - not ok
isRectangular :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Bool
isRectangular a b c = if ((fst b - fst a) * (fst c - fst a) + (snd b - snd a) * (snd c - snd a)) == 0 || ((fst c - fst b) * (fst a - fst b) + (snd c - snd b) * (snd a - snd b)) == 0 || ((fst a - fst c) * (fst b - fst c) + (snd a - snd c) * (snd b - snd c)) == 0 then True else False

-- Функция isTriangle, определяющая, можно ли их отрезков с
-- заданными длинами x, y и z построить треугольник
-- сумма двух сторон всегда больше 3
isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = if a + b > c && a + c > b && b + c > a then True else False

-- Функция isSorted, принимающая на вход три числа и возвращающая True, если они упорядочены по возрастанию или по
-- убыванию
isSorted :: Int -> Int -> Int -> Bool
isSorted a b c = if(a >= b && b >= c) || (a <= b && b <= c) then True else False
