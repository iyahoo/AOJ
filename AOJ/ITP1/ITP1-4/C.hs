main = do
  s <- getContents
  let ss = init . filter (not . null) . lines $ s
  mapM_ (print . calc . words) ss

calc :: [String] -> Int
calc [x,"+",y] = (read x + read y)
calc [x,"-",y] = (read x - read y)
calc [x,"*",y] = (read x * read y)
calc [x,"/",y] = (read x `div` read y)
