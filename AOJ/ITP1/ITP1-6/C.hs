-- import Data.List
import Control.Monad
import Text.Printf
import Data.List

type Order = [Int] -- [b,f,r,v]

main = do
  n <- readLn
  ss <- replicateM n getLine
  printRooms 1 1 1 . map (map read) $ map words ss 

newline :: IO ()
newline = putStrLn ""

isThisroom :: (Int,Int,Int) -> Order -> Bool
isThisroom (b',f',r') (b:f:r:_) = b' == b && f' == f && r' == r

printRooms :: Int -> Int -> Int -> [Order]-> IO ()
printRooms b f r orders = do
  let v = sum . map getPopulation $ currentOrders
  printf " %d" v
  case (b,f,r) of
    (4,3,10) -> do {newline; return ()}
    (_,3,10) -> do {newline; putStrLn line;
                    printRooms (b + 1) 1 1 restOrders}
    (_,_,10) -> do {newline;
                    printRooms b (f + 1) 1 restOrders}
    _        ->     printRooms b f (r + 1) restOrders
    where line = "####################"
          currentOrders = filter (\o -> isThisroom (b,f,r) o) orders
          restOrders = orders \\ currentOrders
         
getPopulation :: Order -> Int
getPopulation (_:_:_:[v]) = v
