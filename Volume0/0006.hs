module Main (main) where

main :: IO ()
main = do
  ss <- getLine 
  putStrLn $ reverse ss
