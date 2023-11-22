module Main where

data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Show, Eq)

filtroTerca :: [Dia] -> [Dia]
filtroTerca = filter (== Terca)

main = do
  putStrLn "Filtro de Terças-feiras"