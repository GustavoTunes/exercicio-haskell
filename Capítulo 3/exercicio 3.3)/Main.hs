module Main where

data Jogada = Pedra | Papel | Tesoura
data Resultado = Vitoria | Empate | Derrota


instance Show Resultado where
  show Vitoria = "Vitória"
  show Empate = "Empate"
  show Derrota = "Derrota"


partida :: Jogada -> Jogada -> Resultado

partida Pedra Papel = Derrota 
partida Pedra Tesoura = Vitoria 
partida Pedra Pedra = Empate 

partida Papel Papel = Empate
partida Papel Tesoura = Derrota
partida Papel Pedra = Vitoria

partida Tesoura Papel = Vitoria
partida Tesoura Tesoura = Empate
partida Tesoura Pedra = Derrota


main = do
  putStrLn "PEDRA PAPEL TESOURA!"