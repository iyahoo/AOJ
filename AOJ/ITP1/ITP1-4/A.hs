import Control.Applicative

import Text.Printf
import Data.Fixed (Pico)


main = do
  [x,y] <- map read . words <$> getLine
  putStrLn . toString . calc $ (x,y)

calc :: (Int,Int) -> (Int,Int,Pico)
calc (x,y) = (div x y,rem x y,(fromIntegral x / fromIntegral y) :: Pico)

toString :: (Int,Int,Pico) -> String
toString (x,y,z) = show x ++ " " ++ show y ++ " " ++ show z
