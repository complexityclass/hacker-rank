module Deque
  ( Deque(..),
    pushHead,
    pushTail,
    popHead,
    popTail,
    peekHead,
    peekTail,
    toArray
  ) where

data Deque a = Deque [a] deriving (Show, Eq)

pushHead :: a -> Deque a -> Deque a
pushHead e (Deque es) = Deque ([e] ++ es)
    
pushTail :: a -> Deque a -> Deque a
pushTail e (Deque es) = Deque (es ++ [e])

popHead :: Deque a -> (a, Deque a)
popHead (Deque (e:es)) = (e, Deque es)
 
popTail :: Deque a -> (a, Deque a)
popTail (Deque es) = (last es, Deque $ init es)

peekHead :: Deque a -> a
peekHead (Deque (e:_)) = e

peekTail :: Deque a -> a
peekTail (Deque es) = last es

toArray :: Deque a -> [a]
toArray (Deque es) = es