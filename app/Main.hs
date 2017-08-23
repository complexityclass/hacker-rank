module Main where

import Lib
import StringMingling

getInt :: IO Int
getInt = do
  s <- getLine
  return (read s)

repeatIOAction :: Int -> IO (String) -> IO ()
repeatIOAction 0 _ = return ()              
repeatIOAction n action = do
  action                                  
  repeatIOAction (n-1) action

main :: IO ()
main = do
  n <- getInt
  let repeat 1 action = action
      repeat n action = 
  in action
     repeat (n - 1) action
  
    