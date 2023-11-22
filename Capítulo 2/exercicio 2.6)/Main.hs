{-2.6) Faça uma função que receba uma String e retorne True se esta for um palíndromo; caso contrário, False.-}

module Main where

palin :: String -> Bool
palin s = s == reverse s

main = do
    let string1 = "GUSTAVO"
    let string2 = "ANA"
    
    putStrLn $ string1 ++ ", é palíndromo?: " ++ show (palin string1)
    putStrLn $ string2 ++ ", é palíndromo?: " ++ show (palin string2)
