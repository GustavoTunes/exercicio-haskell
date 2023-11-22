module Main where

data Paridade = Par | Impar deriving (Show)

class ParImpar a where
  decide :: a -> Paridade

instance ParImpar Int where
  decide n
    | even n = Par
    | otherwise = Impar

instance ParImpar [a] where
  decide xs
    | even (length xs) = Par
    | otherwise = Impar

instance ParImpar Bool where
  decide False = Par
  decide True = Impar

main = do
  putStrLn "Exercício 5.5)"