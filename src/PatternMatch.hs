module PatternMatch (main) where

coffeeType :: String -> String
coffeeType "Espresso" = "String and Bold"
coffeeType "Latte" = "Milky and Werid!"
coffeeType "Cappuccino" = "Frothy and Rich"
coffeeType _ = "Unknown coffee type"


main :: IO ()
main = do
    putStrLn "Your Coffee description is: "
    print (coffeeType "Espresso")
    print (coffeeType "Latte")
    print (coffeeType "Any")
