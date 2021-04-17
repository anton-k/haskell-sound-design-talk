module Techno where

import Csound.Base

hihat = chamber 0.3 $ mixAt 0.3 (echo 0.25 0.5) $
        at (hp 400 0.2) $ mul (upw 0.1 1) white

kick dt = let env = usaw dt
          in  env * osc' 0.25 (150*env)

lead x = mul 0.4 $ sum [ saw x, saw (x * cent 4), sqr (2 * x * cent 11) ]

freqs = constSeq (fmap cpspch [6.00, 6.01, 6.03, 5.10]) 4
cutOff = 700 + 4500 * utri 0.2 + 500 * osc 8
res    = 0.2 + 0.4 * uosc 0.2

bass = hall 0.2 $ mlp cutOff res $ lead freqs

main = dac $ sum [ pure $ fromMono $ kick 2, hihat, pure bass ]

