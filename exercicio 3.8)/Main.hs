module Main where

eliminaNum :: [Int] -> [Int]
eliminaNum lista = reverse [x | x <- lista, not (even x || x `mod` 7 == 0 ||  x < 0)]

main = do
  putStrLn "Eliminador de números"