module ErrHandle (main) where

import Control.Exception

main :: IO ()
main = do
    result <- try(evaluate(10 `div` 2)) :: IO (Either SomeException Int)
    case result of
        Left exc -> putStrLn $ "Error caught: " ++ show exc
        Right val -> putStrLn $ "The answer is: " ++ show val
