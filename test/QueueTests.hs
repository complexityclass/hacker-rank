module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Lib
import Queue
import Deque

main :: IO ()
main = do
    defaultMain (testGroup "Queue tests" 
                 [queuePushTest, queuePopTest, queuePeekTest, queueToArrayTest, 
                 dequePushHeadTest, dequePushTailTest, dequePopHeadTest, 
                 dequePopTailTest, dequePeekTailTest, dequePeekHeadTest, dequeToArrayTest])
                
queuePushTest :: TestTree
queuePushTest = testCase "Testing push" 
    (assertEqual "Should push" (Queue [1,2,3]) (push 3 (Queue [1,2])))

queuePopTest :: TestTree
queuePopTest = testCase "Testing pop"
    (assertEqual "Should pop" (1, Queue [2,3,4]) (pop (Queue [1,2,3,4])))

queuePeekTest :: TestTree
queuePeekTest = testCase "Testing peek"
    (assertEqual "Should peek" 1 (peek (Queue [1,2,3])))

queueToArrayTest :: TestTree
queueToArrayTest = testCase "Testing queue to array"
    (assertEqual "Should extract array" [1,2,3] (Queue.toArray (Queue [1,2,3])))

dequePushHeadTest :: TestTree
dequePushHeadTest = testCase "Testing push head to deque"
    (assertEqual "Should push" (Deque [1,2,3]) (pushHead 1 (Deque [2,3])))

dequePushTailTest :: TestTree
dequePushTailTest = testCase "Testing push tail to deque"
    (assertEqual "Should push" (Deque [1,2,3]) (pushTail 3 (Deque [1,2])))

dequePopHeadTest :: TestTree
dequePopHeadTest = testCase "Testing pop head deque"
    (assertEqual "Should pop" (1, Deque [2,3]) (popHead (Deque [1,2,3])))

dequePopTailTest :: TestTree
dequePopTailTest = testCase "Testing pop tail deque"
    (assertEqual "Should pop" (3, Deque [1,2]) (popTail (Deque [1,2,3])))

dequePeekHeadTest :: TestTree
dequePeekHeadTest = testCase "Testing peek head"
    (assertEqual "Should peek test" 1 (peekHead (Deque [1,2,3])))

dequePeekTailTest :: TestTree
dequePeekTailTest = testCase "Testing peek tail"
   (assertEqual "Should peek tail" 3 (peekTail (Deque [1,2,3])))
    
dequeToArrayTest :: TestTree
dequeToArrayTest = testCase "Testing deque to array"
    (assertEqual "Should extract array" [1,2,3] (Deque.toArray (Deque [1,2,3])))
