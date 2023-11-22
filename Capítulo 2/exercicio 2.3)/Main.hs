{-2.3)Escreva	uma função que receba um	vetor	de Strings e retorne	uma lista	com	todos	os elementos em ordem reversa.-}

module Main where

lista :: [String] -> [String]
lista = reverse 

main = do
    let x = ["Gustavo", "Souza", "Tunes"]
    let result = lista x
    print result