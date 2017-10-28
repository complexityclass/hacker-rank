module ArraysProblems 
  ( leftRotation
  ) where

import Control.Monad
import Deque

iteration :: Integer -> Deque Integer -> Deque Integer
iteration 0 deque = deque
iteration n deque = iteration (n - 1) (pushHead (peekTail deque) (snd (popTail deque)))

leftRotation :: Integer -> [Integer] -> [Integer]
leftRotation n arr = toArray (iteration n (Deque arr))
