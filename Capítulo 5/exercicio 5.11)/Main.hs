module Main where

data Arvore a = Raiz a (Arvore a) (Arvore a) | Folha a | Nula deriving (Show)

preOrdem :: Arvore a -> [a]
preOrdem Nula = []
preOrdem (Folha x) = [x]
preOrdem (Raiz x esq dir) = [x] ++ preOrdem esq ++ preOrdem dir

posOrdem :: Arvore a -> [a]
posOrdem Nula = []
posOrdem (Folha x) = [x]
posOrdem (Raiz x esq dir) = posOrdem esq ++ posOrdem dir ++ [x]

main = do
  putStrLn "Exercício 5.11"
  let arvoreTeste =
        Raiz
          15
          (Raiz 11 (Folha 6) (Raiz 12 (Folha 10) Nula))
          (Raiz 20 Nula (Raiz 22 (Folha 21) Nula))

  -- pré-ordem: [15, 11, 6, 12, 10, 20, 22, 21]
  let preOrdemResultado = preOrdem arvoreTeste
  print preOrdemResultado

  -- pós-ordem: [6, 10, 12, 11, 21, 22, 20, 15]
  let posOrdemResultado = posOrdem arvoreTeste
  print posOrdemResultado
