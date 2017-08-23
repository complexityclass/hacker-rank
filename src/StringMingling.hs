module StringMingling 
  ( mingle, 
    mingleFast, 
    stringOpermute 
  ) where

import Data.List

mingle :: String -> String -> String
mingle st1 st2 = foldl' (\str (a,b) -> str ++ [a] ++ [b]) [] (st1 `zip` st2) 

mingleFast :: String -> String -> String
mingleFast st1 st2 = concat $ zipWith (\a b -> [a,b]) st1 st2

stringOpermute :: String -> String
stringOpermute [] = []
stringOpermute (x:y:[]) = (y:x:[])
stringOpermute (x:s:xs) = (s:x:(stringOpermute xs))
