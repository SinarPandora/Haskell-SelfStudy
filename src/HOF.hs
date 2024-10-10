module HOF (main) where

main :: IO ()
main = do
  print $ any (< 3) [1, 2, 3, 4, 5]
