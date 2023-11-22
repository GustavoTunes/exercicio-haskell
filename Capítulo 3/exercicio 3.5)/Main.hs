module Main where

data Unidade = Inch | Yard | Foot

converterMetros :: Double -> Unidade  -> Double
converterMetros valor Inch = valor / 0.0254
converterMetros valor Yard = valor / 0.9144
converterMetros valor Foot = valor / 0.3048

converterImperial :: Double -> Unidade  -> Double
converterImperial valor Inch = valor * 39.3701
converterImperial valor Yard = valor * 1.09361
converterImperial valor Foot = valor * 3.28084


main = do
  putStrLn "CONVERSOR DE UNIDADES IMPERIAIS!"