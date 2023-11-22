module Main where

data Arvore a = No a (Arvore a) (Arvore a) | Folha deriving (Show)

instance Functor Arvore where
  fmap _ Folha = Folha
  fmap f (No x esq dir) = No (f x) (fmap f esq) (fmap f dir)

instance Applicative Arvore where
  pure x = No x Folha Folha
  Folha <*> _ = Folha
  _ <*> Folha = Folha
  (No g esq1 dir1) <*> (No x esq dir) = No (g x) (esq1 <*> esq) (dir1 <*> dir)

main = do
  putStrLn "Exercicio 7.5"