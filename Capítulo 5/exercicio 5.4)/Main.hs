module Main where

data MyMin = MyMin Int deriving (Ord, Eq, Show)

instance Semigroup MyMin where
  (MyMin a) <> (MyMin b) = MyMin (min a b)

instance Monoid MyMin where
  mempty = MyMin maxBound

minAll :: [MyMin] -> MyMin
minAll [] = mempty
minAll xs = foldr (<>) (head xs) xs

main = do
  putStrLn "Exercício 5.4"