{-# LANGUAGE InstanceSigs #-}

module Monoids (main) where

newtype MyString = MyString String deriving (Show, Eq)

instance Semigroup MyString where
  (<>) :: MyString -> MyString -> MyString
  MyString x <> MyString y = MyString (x ++ y)

instance Monoid MyString where
  mempty = MyString ""

main :: IO ()
main = do
    let s1 = MyString "Hello,"
    let s2 = MyString "World!"
    let s3 = MyString ""

    print $ s1 <> s2
    print $ s1 <> mempty
    print $ mempty <> s1

    print $ (s1 <> s2) <> s3
    print $ s1 <> (s2 <> s3)
