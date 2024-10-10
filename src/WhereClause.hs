module WhereClause (main) where

popDensity :: (Float, Float) -> Float
popDensity (popilation, area) = density where density = popilation / area

main :: IO ()
main = do
  print (popDensity (110000000.25, 850.78))
