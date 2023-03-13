-- 1
mean :: [Double] -> Double
mean list = foldr (+) 0 list / fromIntegral (length list)

-- 2
scalar :: [Double] -> [Double] -> Double
scalar xs ys = foldr (+) 0 (zipWith (*) xs ys)

-- 3
countEven :: [Int] -> Int
countEven list = foldr (\x y -> if even x then y + 1; else y) 0 list

-- 4
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)

-- 5
quicksort2 :: (a -> a -> Bool) -> [a] -> [a]
quicksort2 _ [] = []
quicksort2 comparator (x:xs) = quicksort2 comparator (filter (comparator x) xs) ++ [x] ++ quicksort2 comparator (filter (not . comparator x) xs)
