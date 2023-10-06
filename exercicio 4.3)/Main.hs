module Main where

filtroPar :: [Int] -> [Int]
filtroPar = filter even 

filtroImpar :: [Int] -> [Int]
filtroImpar = filter odd

main = do
  putStrLn "Filtrar pares e impares!"