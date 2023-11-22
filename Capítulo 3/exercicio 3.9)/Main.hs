module Main where

revTupla :: String -> String -> String -> (String, String, String)
revTupla x y z = (reverse x, reverse y, reverse z)

main = do
  putStrLn "Reverter Tupla!"