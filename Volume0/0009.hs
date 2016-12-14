main = do
  s <- getContents
  let ss = filter (not . null) . lines $ s
  mapM_ (print . length . solve . read) ss

solve :: Integer -> [Integer]
solve x = takeWhile (<= x) primeNumbers 

primeNumbers :: [Integer]
primeNumbers = 2:f [3] [3,5..]
  where f (x:xs) ys = let (ps, qs) = span (< x^2) ys
                      in  ps ++ f (xs ++ ps) [z | z <- qs, mod z x /= 0]
