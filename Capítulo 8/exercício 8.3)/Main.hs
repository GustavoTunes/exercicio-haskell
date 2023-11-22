{-# LANGUAGE InstanceSigs #-}

import Control.Monad (join)

data Caixa a = Um a | Dois a a | Tres a a a deriving (Show)

instance Functor Caixa where
  fmap :: (a -> b) -> Caixa a -> Caixa b
  fmap f (Um a) = Um (f a)
  fmap f (Dois a b) = Dois (f a) (f b)
  fmap f (Tres a b c) = Tres (f a) (f b) (f c)

instance Applicative Caixa where
  pure :: a -> Caixa a
  pure = Um
  (<*>) :: Caixa (a -> b) -> Caixa a -> Caixa b
  (Um f) <*> (Um a) = Um (f a)
  (Dois f g) <*> (Dois a b) = Dois (f a) (g b)
  (Tres f g h) <*> (Tres a b c) = Tres (f a) (g b) (h c)
  _ <*> _ = error "ERRO!!!"

instance Monad Caixa where
  return :: a -> Caixa a
  return = Um

  (>>=) :: Caixa a -> (a -> Caixa b) -> Caixa b
  (Um a) >>= f = f a
  (Dois a b) >>= f = join (Dois <$> f a <*> f b)
  (Tres a b c) >>= f = join (Tres <$> f a <*> f b <*> f c)

mult234 :: Double -> Caixa Double
mult234 x = Um x >>= (\a -> Dois (a * 2) (a * 3) >>= (\b -> Tres (b * 4) (b * 4) (b * 4)))

-- Tres	1	2	3	>>=	mult234	>>=	mult234 
-- Resultado: Dois 12 12

-- Dois	2	4	>>=	mult234	
-- Resultado: Tres 8 8 8

-- :kind	Coisa	
-- Resultado: Coisa :: * -> *

-- Dois	2	3	>>=	\_	->	Dois	7	7	
-- Resultado: Dois 7 7

main = do
  putStrLn "Exercício 4.3"