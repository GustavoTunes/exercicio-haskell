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

produto1 = Produto 25 Livro
produto2 = Produto 55 Filme
produto3 = Produto 20 Informatica
produtoTotal = Produto 0 Total

valorTotal = produtoTotal <> produto1 <> produto2 <> produto3

main = do
  putStrLn "exercicio 5.1"
