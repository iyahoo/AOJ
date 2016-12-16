import Text.Printf

main = do
  x <- readLn
  mapM_ (printf . toString) $ solve x
  putStrLn ""

toString :: Int -> String
toString x = printf " %d" x

include3 :: Int -> Bool
include3 x = any (\y -> y `rem` 10 == 3) . takeWhile (/= 0) $ iterate (\y -> y `div` 10) x

solve :: Int -> [Int]
solve x = filter (\y -> include3 y || y `rem` 3 == 0) [1..x]
