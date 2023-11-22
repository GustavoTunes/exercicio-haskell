module Main where

import Data.Semigroup

data MyMin = MyMin Int deriving (Ord, Eq, Show)

instance Semigroup MyMin where
  (MyMin a) <> (MyMin b) = MyMin (min a b)

instance Monoid MyMin where
  mempty = MyMin maxBound

-- a expressão vale: MyMin (-34)

-- O uso do maxBound garante que a combinação do mempty com o Min resultará no valor original de  Min

main = do
  putStrLn "Exercício 5.3"