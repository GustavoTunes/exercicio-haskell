module Main where

data Arvore a = No a (Arvore a) (Arvore a) | Folha a | Nulo deriving (Show)

mapa :: (a -> b) -> Arvore a -> Arvore b
mapa _ Nulo = Nulo
mapa f (Folha x) = Folha (f x)
mapa f (No x esq dir) = No (f x) (mapa f esq) (mapa f dir)

arvore :: Arvore Int
arvore = No 1 (Folha 2) (No 3 (Folha 4) (Folha 8))

arvoreCom5 :: Arvore Int
arvoreCom5 = mapa (+ 5) arvore

main = do
  putStrLn "Exercício 5.8)"