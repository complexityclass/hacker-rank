module ArraysProblems 
  ( leftRotation
  ) where

import Control.Monad
import Deque

iteration :: Int -> Deque Int -> Deque Int
iteration 0 deque = deque
iteration n deque = iteration (n - 1) (pushTail (peekHead deque) (snd (popHead deque)))

leftRotation :: Int -> [Int] -> [Int]
leftRotation n arr = toArray (iteration n (Deque arr))
