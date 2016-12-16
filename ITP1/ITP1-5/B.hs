import Text.Printf

main = do
  s <- getContents
  let ss = init . filter (not . null) . lines $ s
  mapM_ (mapM_ putStrLn . reverse . (:) "" . solve . map read . words) ss

coverWith :: [a] -> a -> [a]
coverWith ss s =  s : ss ++ [s]

solve :: [Int] -> [String]
solve [x,y] = coverWith (replicate (x - 2) (coverWith (replicate (y - 2) '.')'#')) lid
  where lid = (replicate y '#')
