{-2.2)Crie	 uma	 função	 que	 verifique	 se	 o	 tamanho	 de	 uma
String	é	par	ou	não.	Use		Bool		como	retorno.-}

module Main where

tamanho :: String -> Bool
tamanho x = even (length x)

main = do
  let string = "Gustavo"
  
  putStrLn $ string ++ ", é par? : " ++ show (tamanho string)