module Main where

data Fantasma a = Fantasma deriving (Show)

instance Functor Fantasma where
  fmap _ Fantasma = Fantasma

main = do
  putStrLn "exercicio 7.5"