module Main (main) where

main :: IO ()
main = do
  x <- readLn :: IO Integer
  putStrLn $ fromTime $ time x

time :: Integer -> [Integer]
time x = [h,m,s]
  where
    h = div x 3600
    remXdh = rem x 3600
    m = div remXdh 60
    remXdm = rem remXdh 60
    s = remXdm

fromTime :: [Integer] -> String
fromTime [h,m,s] =
  (show h) ++ ":" ++ (show m) ++ ":" ++ (show s)

