module Main where
import System.Environment (getArgs)

main :: IO ()
main = do
  [a,b,c] <- getArgs
  putStrLn("min: " ++ min a (min b c))
