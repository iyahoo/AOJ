main = do
  mapM_ putStrLn $ makeHello 1000

makeHello n = replicate n "Hello World"
