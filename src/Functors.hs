module Functors (main) where

-- class Functor f where
--   fmap :: (a -> b) -> f a -> f b
-- 
-- class (Functor f) => Applicative f where
--     pure :: a -> f a
--     (<*>) :: f (a -> b) -> f a -> f b
-- class Monad m where
--     return :: a -> m a
--     -- Bind
--     (>>=) :: m a -> (a -> m b) -> m b
--     -- Then
--     (>>) :: m a -> m b -> m b
--     -- x >> y = x >>= \_ -> y
--     -- Fail
--     fail :: String => m a
--     fail msg = error msg

-- Monad Laws
-- 1. Left identity
-- return a >>= f `is the same as` f a
-- 2. Right identity
-- x >>= return `is the same as` x {Value not changed}
-- 3. Associativity
-- (m >>= f) >>= g `is the same as` m >>= (\x -> f x >>= g)


f1 :: Num a => a -> a -> a
f1 x y = 2 * x + y

main :: IO ()
main = do
  -- 对于 List，fmap 和 map 行为一致
  -- map 是列表下的特化 fmap
  print $ fmap (subtract 1) [2, 4, 6, 8, 10]
  print $ map (subtract 1) [2, 4, 6, 8, 10]
  print $ fmap (subtract 1) (Just 2)
  -- print $ map (subtract 1) (Just 2)
  print $ show $ f1 <$> Just 1 <*> Just 2
  print $ show $ fmap f1 (Just 1) <*> Just 2
  print $ show $ fmap f1 (Just 1) <*> Just 2
  print $ show $ Just $ f1 1 2
  let a = (*2)
  let b = Just 4
  print $ a <$> b
  let a = Just (*2)
  let b = Just 4
  print $ a <*> b

