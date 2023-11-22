{-2.4) Escreva uma função que receba um vetor de Strings eretorne uma lista com o tamanho de cada String. As palavras detamanho par devem ser excluídas da resposta.-}

module Main where

tamanhoImpar :: [String] -> [Int]
tamanhoImpar s = [length x | x <- s, odd (length x)]

main = do
    let s = ["Gustavo", "Souza", "Tunes"]
    print (tamanhoImpar s)