module FileRead (main) where

main :: IO ()
main = do
    let file = "./content.txt"
    content <- readFile file
    putStrLn content
    appendFile file "Write something to file"
