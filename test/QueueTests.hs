module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Lib
import Queue

main :: IO ()
main = do
    defaultMain (testGroup "Queue tests" 
                 [queuePushTest, queuePopTest, queuePeekTest])
                
queuePushTest :: TestTree
queuePushTest = testCase "Testing push" 
    (assertEqual "Should push" (Queue [1,2,3]) (push 3 (Queue [1,2])))

queuePopTest :: TestTree
queuePopTest = testCase "Testing pop"
    (assertEqual "Should pop" (1, Queue [2,3,4]) (pop (Queue [1,2,3,4])))

queuePeekTest :: TestTree
queuePeekTest = testCase "Testing peek"
    (assertEqual "Should peek" 1 (peek (Queue [1,2,3])))