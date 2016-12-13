module Main (main) where
import Control.Applicative hiding (read)

type Point = (Integer,Integer)
type Rect = Point
type Circle = (Point,Integer)

main :: IO ()
main = do
  [w,h,x,y,r] <- (map read . words) <$> getLine :: IO [Integer]
  putStrLn $ yesno $ overlap (w,h) ((x,y),r)

overSurface :: Rect -> Circle -> Bool
overSurface (_,h) ((_,y),r) = h < y + r

overBase :: Rect -> Circle -> Bool
overBase _ ((_,y),r) = 0 > y - r

overRight :: Rect -> Circle -> Bool
overRight (w,_) ((x,_),r) = w < x + r

overLeft :: Rect -> Circle -> Bool
overLeft _ ((x,_),r) = 0 > x - r

overlap :: Rect -> Circle -> Bool
overlap rect circle
  | overSurface rect circle || overBase rect circle ||
    overRight rect circle || overLeft rect circle = False
  | otherwise = True

yesno :: Bool -> String
yesno True  = "Yes"
yesno False = "No"
