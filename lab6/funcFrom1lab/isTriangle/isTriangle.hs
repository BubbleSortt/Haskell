module Main where
import System.Environment (getArgs)

main :: IO ()
main = do
  [a,b,c] <- getArgs
  let n1 = read a :: Int
  let n2 = read b :: Int
  let n3 = read c :: Int
  let isTriangle = if n1 + n2 > n3 && n1 + n3 > n2 && n2 + n3 > n1 then True else False
  putStrLn("isTriangle: " ++ show isTriangle)

