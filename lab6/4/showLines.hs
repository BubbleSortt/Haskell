module Main where
import System.Environment

main :: IO ()
main = do
  [fileName, n] <- getArgs
  file <- readFile fileName
  let countLines = read n
  let rows = lines file
  putStrLn (unlines (take countLines rows))
