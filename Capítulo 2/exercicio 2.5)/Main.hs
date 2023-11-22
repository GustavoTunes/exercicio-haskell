{-2.5) Escreva a função head como composição de duas outras.-}

module Main where

mult :: Int -> [Int]
mult y = [y, 2*y..100]

divi :: Int -> Int -> Bool
divi x y = y `mod` x == 0

comp :: Int -> Int -> Int
comp x y = head . filter (divi x) $ mult y

main = do
    let x = 4
    let y = 10
    
    let result = comp x y
    
    putStrLn $ "O primeiro valor divisível por " ++ show x ++ " na lista de múltiplos de " ++ show y ++ " é: " ++ show result
