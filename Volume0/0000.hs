import Text.Printf

main = mapM_ (putStrLn . solve) [(x,y) | x <- [1..9], y <- [1..9]]

solve :: (Int,Int) -> String
solve (x,y) = printf "%dx%d=%d" x y (x * y)
