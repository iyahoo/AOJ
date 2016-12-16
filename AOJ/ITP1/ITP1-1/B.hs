module Main (main) where

main :: IO ()
main = do
  x <- readLn -- :: IO Integer
  print (x ^ 3)



