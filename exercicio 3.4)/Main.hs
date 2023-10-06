module Main where

remVog :: String -> String
remVog str = [c | c <- str, not (c `elem` "aeiouAEIOU")]

main = do
  putStrLn "Exercicio 3.4)"