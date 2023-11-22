{-2.1 F) Gere a lista: [1,10,19,28,37,46,55,64] -}

module Main where

lista = [ x * 9 + 1 | x <- [0..7]]

main = do
  print lista

  