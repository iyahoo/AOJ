import Control.Applicative

import Text.Printf

main = do
  r <- read <$> getLine
  putStrLn . toString . calc $ r

calc :: Double -> (Double,Double)
calc r = (r * r * pi, 2.0 * r * pi)

toString :: (Double,Double) -> String
toString (x,y) = printf "%f %f" x y
