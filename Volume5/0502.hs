import Control.Monad

data Dice = Dice Int Int Int Int Int Int deriving Show

main = do  
  n <- readLn
  unless (n == 0) $ do
    solve n (Dice 1 6 2 5 3 4) 0
    main

move :: Dice -> String -> Dice
move (Dice t b f d r l) "North" = Dice f d b t r l
move (Dice t b f d r l) "South" = Dice d f t b r l
move (Dice t b f d r l) "East" = Dice l r f d t b
move (Dice t b f d r l) "West" = Dice r l f d b t
move (Dice t b f d r l) "Right" = Dice t b r l d f
move (Dice t b f d r l) "Left" = Dice t b l r f d

getTop :: Dice -> Int
getTop (Dice t _ _ _ _ _) = t

solve :: Int -> Dice -> Int -> IO ()
solve 0 dice score = print (getTop dice + score)
solve n dice score = do
  op <- getLine
  score `seq` solve (n - 1) (move dice op) (getTop dice + score)










