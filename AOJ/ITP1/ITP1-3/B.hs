main = do
  s <- getContents
  let ss = init $ lines s
  mapM_ putStrLn $ zipWith caseId [1 .. (length ss)] ss 
  
caseId n s = "Case " ++ (show n) ++ ": " ++ s
