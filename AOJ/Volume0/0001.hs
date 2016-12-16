import Data.List
import Text.Printf

main = do
  s <- getContents
  printf . toString . solve . map read . lines $ s

toString :: [Int] -> String
toString [x,y,z] = printf "%d\n%d\n%d\n" x y z

solve :: [Int] -> [Int]
solve = take 3 . reverse . sort
