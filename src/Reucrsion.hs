module Reucrsion (main) where

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n - 1)

main :: IO ()
main = do
  putStrLn "Factorial your nunmber is: "
  -- 执行一个无法计算的结果返回 0
  print $ fact 100000
