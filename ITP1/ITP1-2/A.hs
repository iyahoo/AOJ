module Main (main) where

import Control.Applicative

main :: IO ()
main = do
  [x,y] <- (map read . words) <$> getLine 
  putStrLn $ comp x y

comp :: Integer -> Integer -> String
comp x y
  | x == y = "a == b"
  | x > y  = "a > b"
  | x < y  = "a < b"

