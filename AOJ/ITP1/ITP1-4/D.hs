import Control.Applicative
import Text.Printf

main = do
  x <- getLine
  xs <- map read . words <$> getLine
  putStrLn $ toString (minimum xs) (maximum xs) (sum xs)

toString :: Int -> Int -> Int -> String
toString x y z = printf "%d %d %d" x y z
