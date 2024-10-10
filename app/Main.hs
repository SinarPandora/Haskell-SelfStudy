import Data.List ( intercalate, intersperse )
import qualified Data.Set as Set

main :: IO ()
main = do
    print $ intersperse '|' "ILoveHaskell!"
    print $ intercalate "," ["Haskell", "is", "great"]
    print $ splitAt 3 "Apple"
    print $ Set.fromList "Hello world"
