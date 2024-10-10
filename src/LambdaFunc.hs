module LambdaFunc (main) where

main :: IO ()
main = print $ (\c -> c * 9 / 5 + 32) 25
