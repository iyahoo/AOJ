main = do
  s <- getContents
  let ss = init $ lines s
  mapM_ (putStrLn . toString . comp . map read . words) ss
  

toString :: (Integer,Integer) -> String
toString (x,y) = (show x) ++ " " ++ (show y)

comp :: [Integer] -> (Integer,Integer)  
comp (x:y:[])
  | x > y  = (y,x)
  | x <= y = (x,y)
