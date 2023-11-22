module Main where

data Pergunta = Sim | Nao

instance Show Pergunta where
  show Sim = "Sim"
  show Nao = "Nao"

pergNum :: Pergunta -> Int
pergNum Nao = 0
pergNum Sim = 1

listPergs :: [Pergunta] -> [Int]
listPergs = map pergNum

and' :: Pergunta -> Pergunta -> Pergunta
and' Sim Sim = Sim
and' _ _ = Nao

or' :: Pergunta -> Pergunta -> Pergunta
or' Sim _ = Sim
or' _ Sim = Sim
or' _ _ = Nao

not' :: Pergunta -> Pergunta
not' Sim = Nao
not' Nao = Sim

main = do
  putStrLn "Sim ou Não!"