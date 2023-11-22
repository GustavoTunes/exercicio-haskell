module Main where

import Data.Semigroup

data TipoProduto = Escritorio | Informatica | Livro | Filme | Total deriving (Show, Eq)

data Produto = Produto Double TipoProduto | Nada deriving (Show)

instance Semigroup Produto where
  Nada <> p = p
  p <> Nada = p
  (Produto valor1 tp1) <> (Produto valor2 tp2) = Produto (valor1 + valor2) Total

instance Monoid Produto where
  mempty = Nada

totalGeral :: [Produto] -> Produto
totalGeral = foldr (<>) mempty

produtos = [Produto 25 Livro, Produto 55 Filme, Produto 20 Informatica]

total = totalGeral produtos

main = do
  putStrLn "Exercício 5.2"