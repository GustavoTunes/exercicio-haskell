{-2.1 E) Gere a lista: [1.0,0.5,0.25,0.125,0.0625,0.03125] -}

module Main where

lista = [ 0.5 ^ x | x <- [0..5]]

main = do
  print lista

  