module Main where

import Csound.Base

hellowSound =
  dac (0.5 * osc 440)

----------------------------------

crossRoad =
  dac (osc 1000 * usqr 4)

----------------------------------

beep :: Sig -> Sig -> Sig
beep x y =
  0.4 * usqr 1 * (osc x + osc y)

road1 = dac (beep 220 660)
road2 = dac (beep 330 440)

----------------------------------

envelopes =
  dac (linseg [1, 2.5, 1, 0.2, 0] * beep 200 300)

----------------------------------

siren dt freq =
    linseg [0, dt, 1]
  * saw (expseg [10, dt, freq])

playSiren =
  dac $ 0.5 * siren 5 300

----------------------------------

growSlow =
  dac $ leg 1.5 1 0.75 1 * osc 330

strikeEnvelope =
  dac $ leg 0.001 0.3 0 0.5 * osc 330

strikeInstr freq = leg 1 1 0.5 1 * osc freq

virtualMidiStrike =
  vdac $ mul 0.5 $ tryMidi strikeInstr

----------------------------------

vibr =
  dac $ usqr 1 * osc (1000 * (1 + 0.05 * osc 6))

arpNote2 =
  dac $ usqr 1 * osc (220 + 110 * usqr 0.5)

arpNote4 =
  dac $ usqr 1 * osc (220 + 110 * usqr 0.5 + 110 * sqr 0.25)

----------------------------------

siren2 freq =
  let env = 1 - usaw 0.25
  in env * saw (freq * env)

playSiren2 =
 dac (siren2 400)

----------------------------------

kick1 dt =
  let env = usaw dt
  in  env * osc (150 * env)

playKick1 =
  dac $ kick1 2

kick2 dt =
  let env = usaw dt
  in  env * osc' 0.25 (150*env)

playKick2 =
  dac $ kick2 2

----------------------------------

playNoise =
  dac $ fmap (0.5 * ) pink

----------------------------------

hihat1 :: Sig -> SE Sig
hihat1 dt = mul (saw dt) pinker

playHihat =
  dac $ hihat1 4 + pure (kick1 2)

----------------------------------

cutoffRise =
  let cutOff = linseg [1, 8, 2500]
  in  dac $ mlp cutOff 0.1 (saw 220)

cutoffLfo =
  let cutOff = 50 + 2500 * uosc 1
  in  dac $ mlp cutOff 0.1 (saw 220)
----------------------------------

dubstep =
  let
      cutoff = 50 + 2000 * uosc (2 + 2 * uosc 0.5)
      res    = 0.1 + 0.8 * uosc 0.1

      bas    = mlp cutoff res (saw 110)

  in  dac bas

----------------------------------

hihat2 :: Sig -> SE Sig
hihat2 dt =
  at (hp 400 0.1)
     (mul (saw dt) pinker)

playHihat2 =
  dac $ hihat2 4 + pure (kick 2)

----------------------------------

playArp1 =
  dac $ osc $
    constSeq [220, 330, 660, 110] 4

----------------------------------

playArp2 =
  let
      freqs = constSeq [220, 330, 660, 110] 4
      amps  = sawSeq   [1,   0.5, 0.2, 0.3] 4

  in  dac $ mul amps $ osc freqs

----------------------------------

playArp3 =
  let
      freqs = constSeq (fmap cpspch [8.00, 8.02, 8.03, 8.07]) 4
      amps  = sawSeq   [1,   0.5, 0.2, 0.3] 4

  in  dac $ mul (smooth 0.02 amps) $ osc freqs

----------------------------------

analogLead =
  let
      lead x = mul 0.4 $ sum
        [ saw x
        , saw (x * cent 4)
        , sqr (2 * x * cent 11)
        ]

      freqs = constSeq (fmap cpspch [6.00, 6.01, 6.03, 5.10]) 4

  in  dac $ mlp 4500 0.1 $ lead freqs

----------------------------------

analogLead2 =
  let
      lead x = mul 0.4 $ sum
        [ saw x
        , saw (x * cent 4)
        , sqr (2 * x * cent 11)
        ]

      -- добавим "портаменто" (слайд между нотами)
      freqs = smooth 0.015 $ constSeq (fmap cpspch [6.00, 6.01, 6.03, 5.10]) 4

      -- добавим LFO-шек
      cutOff = 700 + 4500 * utri 0.2 + 500 * osc 8
      res    = 0.2 + 0.4 * uosc 0.2

  in  dac $ mlp cutOff res $ lead freqs

----------------------------------

playHall =
  let
      lead x = mul 0.4 $ sum
        [ saw x
        , saw (x * cent 4)
        , sqr (2 * x * cent 11)
        ]

      -- добавим "портаменто" (слайд между нотами)
      freqs = smooth 0.015 $ constSeq (fmap cpspch [6.00, 6.01, 6.03, 5.10]) 4

      -- добавим LFO-шек
      cutOff = 700 + 4500 * utri 0.2 + 500 * osc 8
      res    = 0.2 + 0.4 * uosc 0.2
  in   dac $ hall 0.25 $ mlp cutOff res $ lead freqs

----------------------------------

playEcho =
  dac $ echo 0.5 0.7 $ leg 0.01 0.2 0 0 * osc 440

----------------------------------

delayFun =
  dac $ echo 0.333 0.3 $ echo 0.5 0.7 $ leg 0.01 0.2 0 0 * osc 440

----------------------------------

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

