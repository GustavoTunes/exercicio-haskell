{-2.1 G) Gere a lista: [2,4,8,10,12,16,18,22,24,28,30] -}

module Main where

lista = [x | x <- [2, 4..30], x `notElem` [14, 20, 26]]

main = do
  print lista