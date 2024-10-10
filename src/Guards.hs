module Guards (main) where

bookCategory :: Int -> String
bookCategory pages
  | pages < 100 = "Short Story"
  | pages < 300 = "Novel"
  | pages < 1000 = "SK Book!"
  | otherwise = "We don't know!"

main :: IO ()
main = do
  putStrLn "The category of your book is: "
  print (bookCategory 1001)
