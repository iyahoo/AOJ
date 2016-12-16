main = do
  s <- getContents
  let ss = init . filter (not . null) . lines $ s
  mapM_ (mapM_ putStrLn . reverse . (:) "" . reverse . solve [] . map read . words) ss

genLineSha :: Int -> String -> String
genLineSha 0 line = reverse line
genLineSha x line = genLineDot (x - 1) ('#' : line)

genLineDot :: Int -> String -> String
genLineDot 0 line = reverse line
genLineDot x line = genLineSha (x - 1) ('.' : line)


solve :: [String] -> [Int] -> [String]
solve ss [x,y]
  | x == 0    = ss
  | even x    = solve (genLineDot y "" : ss) [(x - 1),y]
  | otherwise = solve (genLineSha y "" : ss) [(x - 1),y]
