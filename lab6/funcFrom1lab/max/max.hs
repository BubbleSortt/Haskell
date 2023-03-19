module Main where
import System.Environment (getArgs)

main :: IO ()
main = do
  [a,b,c] <- getArgs
  putStrLn("max: " ++ max a (max b c))
