{-2.1 D) Gere a lista: [5,8,11,17,20,26,29,32,38,41] -}

module Main where

lista = [5 + 3 * x | x <- [0 .. 12], (5 + 3 * x) `mod` 7 /= 0, (5 + 3 * x) /= 23]

main = do
  print lista