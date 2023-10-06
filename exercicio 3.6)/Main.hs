module Main where

data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro deriving (Eq, Enum, Show)

checaFim :: Mes -> Int
checaFim mes
  | mes == Fevereiro = 28
  | mes `elem` [Abril, Junho, Setembro, Novembro] = 30
  | otherwise = 31

prox :: Mes -> Mes
prox Dezembro = Janeiro
prox mes = succ mes

estacao :: Mes -> String
estacao mes
  | mes `elem` [Janeiro, Fevereiro, Marco] = "Verao"
  | mes `elem` [Abril, Maio, Junho] = "Outono"
  | mes `elem` [Julho, Agosto, Setembro] = "Inverno"
  | otherwise = "Primavera"

main = do
  putStrLn "VERIFICADOR DE MESES"