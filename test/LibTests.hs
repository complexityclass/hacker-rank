module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Lib
import MathLib
import StringMingling
import ArraysProblems

main :: IO ()
main = do
  defaultMain (testGroup "Our Library Tests" [sayYoTest, add5Test, mingleTest, mingleFastTest, stringOpermuteTest, leftRotationTest])

sayYoTest :: TestTree
sayYoTest = testCase "Testing SayYo"
  (assertEqual "Should say Yo to Friend!" "Yo Friend!" (sayYo "Friend"))

add5Test :: TestTree
add5Test = testCase "Testing add5"
  (assertEqual "Should add 5 to get 10" 10 (add5 5))

mingleTest :: TestTree
mingleTest = testCase "Testing mingle"
  (assertEqual "Should mingle abcde pqrst" "apbqcrdset" (mingle "abcde" "pqrst"))

mingleFastTest :: TestTree
mingleFastTest = testCase "Testing mingleFast"
  (assertEqual "Should mingle abcde pqrst" "apbqcrdset" (mingleFast "abcde" "pqrst"))

stringOpermuteTest :: TestTree
stringOpermuteTest = testCase "Testing stringOpermute"
  (assertEqual "Should replace i and i + 1 in abcdpqrs" "badcqpsr" (stringOpermute "abcdpqrs"))

leftRotationTest :: TestTree
leftRotationTest = testCase "Testing left rotation"
  (assertEqual "Shoud rotate array [1,2,3] 2 times" [3,2,1] (leftRotation 2 [1,2,3]))