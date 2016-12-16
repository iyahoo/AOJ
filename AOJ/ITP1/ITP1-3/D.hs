import Control.Applicative

main = do
  [x,y,z] <- (map read . words) <$> getLine
  print . length $ filter (\u -> divisor z u) [x .. y]

divisor :: Integer -> Integer -> Bool
divisor x y = rem x y == 0

