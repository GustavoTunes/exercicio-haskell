module Main where

dobro :: [Int] -> [Int]
dobro xs = filter (\x -> x `mod` 4 /= 0) (map (* 2) xs)

main = do
  putStrLn "Retorna o dobro, elimina multiplos de 4!"