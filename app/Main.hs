module Main where

import Lib
import StringMingling
import Control.Monad

getInt :: IO Int
getInt = do
  s <- getLine
  return (read s)

main :: IO ()
main = do
  n <- getInt
  inputStrings <- replicateM n getLine
  mapM_ (putStrLn . stringOpermute) inputStrings 
  
    