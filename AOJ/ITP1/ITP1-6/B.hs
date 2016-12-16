import Data.List
import Control.Monad

type Card = (String,Int)

main = do
  n <- readLn
  ss <- replicateM n getLine
  mapM_ (putStrLn . toString) . solve . map (toCards . words) $ ss

toString :: Card -> String
toString (t,n) = t ++ " " ++ show n

toCards :: [String] -> Card
toCards [t,n] = (t,read n) 

thirteenS :: String -> [String]
thirteenS = replicate 13

pattern :: [String]
pattern = (concat [thirteenS "S",thirteenS "H",thirteenS "C",thirteenS "D"])

numbers :: [Int]
numbers = (concat . replicate 4 $ [1..13])

makeCards :: [(String,Int)]
makeCards = zip pattern numbers

solve :: [Card] -> [Card]
solve cards = makeCards \\ cards
