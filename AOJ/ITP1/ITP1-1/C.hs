module Main (main) where

import Control.Applicative

main :: IO ()
main = do
  [x,y] <- (map read . words) <$> getLine 
  putStr $ show $ area x y
  putStr " "
  putStrLn $ show $ circum x y

area :: Integer -> Integer -> Integer
area x y = x * y

circum :: Integer -> Integer -> Integer
circum x y = 2 * x + 2 * y
