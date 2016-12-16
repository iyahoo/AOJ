main = do
  _ <- getLine
  s <- getLine
  putStrLn . unwords . reverse . words $ s
