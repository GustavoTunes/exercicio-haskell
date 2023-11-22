{-2.1 A) Gere a lista: [1,11,121,1331,14641,161051,1771561] -}

module Main where

lista = [11 ^ x | x <- [0 .. 6]]

main = do
  print lista