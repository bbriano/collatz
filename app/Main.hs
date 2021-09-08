module Main where
import Data.List

main :: IO ()
main = putStr $ (++"\n") $ intercalate "\n" $ map collatzSeqStr [1..100]
  where collatzSeqStr n = intercalate " " $ map show $ collatzSeq n

collatz :: (Integral a) => a -> a
collatz n
  | even n    = n `div` 2
  | otherwise = 3*n + 1

collatzSeq :: (Integral a) => a -> [a]
collatzSeq 1 = [1]
collatzSeq n = n : collatzSeq (collatz n)
