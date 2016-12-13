module Main (main) where

import Control.Applicative

main :: IO ()
main = do
  [x,y,z] <- (map read . words) <$> getLine 
  putStrLn $ comp x y z

comp :: Integer -> Integer -> Integer -> String
comp x y z 
  | x < y && y < z = "Yes"
  | otherwise = "No"
