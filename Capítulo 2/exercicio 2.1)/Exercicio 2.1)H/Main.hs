{-2.1 H) Gere a lista: ['@','A','C','D','E','G','J','L'] -}

module Main where
import Data.Char (chr)

lista = [ [chr x] | x <- [64, 65, 67, 68, 69, 71, 74, 76]]

main = do
  print lista