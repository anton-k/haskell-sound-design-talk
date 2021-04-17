module Main where

import Csound.Base

kick = let env = sawSeq [1] 2 ** 2
     in  osc' 0.25 (110 * env)  * env

hh = at (mlp (7000 + 5000 * uosc 0.25) 0.1 . hp 500 0.1) $ mul (sqrSeq [1, 0.5, 0.25, 0.1] 8) pinker

bas = mlp (900 + 300 * osc 0.25) (0.1 + 0.4 * uosc 0.2) $
  mul 0.9 $ (\x -> saw x + saw (x * cent 5) + sqr (x * 2 * cent 11)) $
  smooth 0.01 $ stepSeq (fmap (* 0.5) [220, 440, 0, 330, 220, 0, 880 + 440 * usqr 0.5, 0]) 1

song = mul 0.5 $ 2 * hh + (pure $ 3.5* kick + bas)

main = dac song

