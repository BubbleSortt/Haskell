module Main where
import System.Environment (getArgs)

main :: IO ()
main = do
  [a,b] <- getArgs
  putStrLn("sort: " ++ show (min a b, max a b))


