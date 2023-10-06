{-2.1 C) Gere a lista: ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB","AgBB"]-}

module Main where

lista = [x ++ "BB" | x <- map (\a -> ['A', a]) ['a'..'g']]

main = do
    print lista