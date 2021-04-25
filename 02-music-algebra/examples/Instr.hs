-- | Instruments
module Instr(
  -- * Sound effects
    crossRoad
  , siren
  , beep
  , sea
  -- * Drum set
  , kick
  , hihat
  , woodBlock
  , xylo
  -- * Pads
  , pad
  -- * Bass
  , bassArg
  , bass
) where

import Csound.Base

-------------------------------------------
-- drum set

-- Kick drum. First argument - amplitude
--
-- > kick amp
kick :: D -> SE Sig2
kick amp = pure $ fromMono $
  let k = linseg [1, 0.3, 0] ** 2
  in  sig amp * k * osc' 0.25 (150 * k)

-- wood block

-- Add wooden quality to sounds
wooden :: Sig -> Sig -> Sig
wooden base asig = bat
  (\x ->      bp base  70 x
      + 0.8 * bp (base * 1110 / 560) 80 x
      +       bp (base * 2500 / 560) 70 x
      + 0.5 * bp (base * 3000 / 560) 100 x)
  asig

-- Noise burst
boom :: SE Sig
boom = mul (linseg [1, 0.2, 0] ** 2) white

-- Wooden block. First argument - amplitude
woodBlock :: D -> SE Sig2
woodBlock amp = mul (sig amp) $
  fmap fromMono $ at (wooden 560) boom

xylo :: (D, D) -> SE Sig2
xylo (amp, cps) = mul (sig amp) $
  fmap fromMono $ at (wooden (sig cps)) bm
  where
    bm = mul (leg 0.01 0.3 0 0.2 ** 3) $ at ((0.6 * sqr (sig cps)) + ) white

-- Hihat
hihat :: D -> SE Sig2
hihat amp  = at fromMono $ at (mul 2 . lp 3500 0.1 . hp 400 0.1)
  $ mul (sig amp * linseg [1, 0.2, 0] ** 2) pink

--------------------------------------
-- pads

pad :: (D, D) -> SE Sig2
pad (amp, cps) = pure $ fromMono $ hp 100 0.1 $ sig amp * evenEnv *
  (lowPassFilter (sig cps) $ fatSound (sig cps))
  where
    evenEnv = leg 0.2 0 1 0.5
    lowPassFilter cps = mlp (evenEnv * cps + 400) 0.1

    fatSound cps =
      sum [ pw (0.1 + 0.4 * uosc 0.2) cps
          , 0.3 * uosc 0.13 * tri (cps * 2 * cent (2 * uosc 0.13))
          , 0.2 * uosc 0.1  * tri (cps * 3 * cent (4 * uosc 0.17))
          ]

---------------------------------------
-- bass

-- инструмент возвращает сигналы для амплитуды и частоты
bassArg :: (D, D) -> SE Sig2
bassArg (amp, cps) = pure (sig amp, sig cps)

-- будем применять как эффект
-- через функцию eff
bass :: Sig2 -> SE Sig2
bass (amp, cps) = pure $ fromMono $ mul (smooth 0.01 amp)
  $ mlp (200 + 4500 * uosc 0.15) 0.1 $ lead (smooth 0.01 cps)
  where
    lead x = mul 0.4 $ sum
      [ saw x
      , saw (x * cent 4)
      , sqr (2 * x * cent 11)
      ]

-------------------------------------------
-- sound effects

crossRoad :: (D, D, D) -> SE Sig2
crossRoad (amp, dt, cps) = pure $ fromMono $
  sig amp * usqr (sig dt) * osc (sig cps)

beep :: (D, D, D) -> SE Sig2
beep (amp, cps1, cps2) = pure $ fromMono $
  linseg [1, 0.2, 1, 0.05, 0] * sig amp * (osc (sig cps1) + osc (sig cps2))

siren :: (D, D, D) -> SE Sig2
siren (amp, dt, cps) = pure $ fromMono $
  sig amp * env * saw (env * sig cps)
  where
    env = (1 - usaw (sig (1 / dt))) ** 2

sea :: D -> SE Sig2
sea amp = fromMono <$> do
  k <- jspline 1 0.1 0.2
  src <- pink
  let cutOff = 400 + 200 * k + 400 * uosc (0.2 + 0.1 * k + 0.1 * uosc 0.1 + 0.15 * tri 0.17)
      res = 0.3 * uosc 0.1
  pure $ mul (sig amp) $ hp 200 0.1 $ lp cutOff res src

