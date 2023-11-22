{-2.7 Faça uma função que receba um inteiro e retorne umatupla, contendo: o dobro deste número na primeira coordenada, o triplo na segunda, o quádruplo na terceira e o quíntuplo na quarta.-}

module Main where

geradorTupla :: Int -> (Int, Int, Int, Int)
geradorTupla x = (2 * x, 3 * x, 4 * x, 5 * x)

main = do
    let x = 10
    print (geradorTupla x)