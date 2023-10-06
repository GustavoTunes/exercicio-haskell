{-2.1 B) Gere a lista [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,
27,29,30,31,33,34,35,37,38,39]-}

module Main where

lista = [x | x <- [1..39], x `mod` 4 /= 0]

main = do
  print lista