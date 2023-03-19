module Main where
import System.Environment (getArgs)

-- 2
main :: IO ()
main = do
  args <- getArgs
  putStrLn("Arguments: " ++ unwords args)
