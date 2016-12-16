import Text.Printf

main = do
  s <- getContents
  let ss = init . filter (not . null) . lines $ s
  mapM_ (mapM_ putStrLn . reverse . (:) "" . solve . map read . words) ss

solve :: [Int] -> [String]
solve [x,y] = (replicate x (replicate y '#'))
