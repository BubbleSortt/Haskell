module Main where
import System.Environment (getArgs)

-- 2
main :: IO ()
main = do
  [fileName] <- getArgs
  file <- readFile fileName
  putStrLn file
