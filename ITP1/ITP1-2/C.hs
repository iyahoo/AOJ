module Main (main) where

import Control.Applicative hiding (read)
import Data.List

main :: IO ()
main = do
  [x,y,z] <- (map read . words) <$> getLine :: IO [Integer]
  putStrLn $ fromList $ sort [x,y,z]

fromList :: [Integer] -> String
fromList [x,y,z] =
  (show x) ++ " " ++ (show y) ++ " " ++ (show z)
