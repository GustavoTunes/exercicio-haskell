module Main where

data Coisa a = UmaCoisa a | DuasCoisas a a | ZeroCoisa deriving (Show)

instance Functor Coisa where
    fmap _ ZeroCoisa = ZeroCoisa
    fmap g (UmaCoisa a) = UmaCoisa (g a)
    fmap g (DuasCoisas a b) = DuasCoisas (g a) (g b)

main = do
  putStrLn "Exercício 7.1"