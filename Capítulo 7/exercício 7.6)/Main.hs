module Main where

data Dupla a = Dupla deriving (Show)

instance Functor Dupla where
  fmap _ Dupla = Dupla

main = do
  putStrLn "Exercício 7.6"