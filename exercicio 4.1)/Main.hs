module Main where

media :: [Double] -> Double
media xs = total / count
  where
    (total, count) = foldl (\(s, n) x -> (s + x, n + 1)) (0, 0) xs

main = do
  putStrLn "Retorna média!"