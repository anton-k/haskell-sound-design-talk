module Proc where

import Csound.Base

drone = mul 0.5 $ testDrone2 (cpspch 6.02)

proc :: Sig2 -> SE Sig2
proc (a, b) = sum
  [ drone
  , pure $ hall 0.3 $ mixAt 0.5 (echo 1 0.6) $ mul 2 a
  ]


