{-# Language TupleSections #-}
module Session where

import Csound.Base
import Instr
import Utils

--------------------------------------
-- kicks

-- Single note
singleKick = dac $ mix $ sco kick notes
  where
    notes = temp 0.5

-- Kick with accents
kickAccents = dac $ mix $ sco kick notes
  where
    accents = [0.9, 0.6, 0.4, 0.5]
    notes = mel $ fmap temp accents

fasterKick = dac $ mix $ sco kick notes
  where
    -- повторим четыре раза
    notes = loopBy 4 $ str 0.5 $ mel $ fmap temp accents
    accents = [0.9, 0.6, 0.4, 0.5]

--------------------------------------
-- chords

chord amp as = har $ fmap (\cps -> temp (amp, cpspch cps)) as

singleChord = dac $ mix $ sco pad $ chord 0.5 [7.00, 7.04, 7.07]

chordProgression =
  dac $ mix $ sco pad $ str 2 $ loopBy 2 $ mel
    [ chord 0.5 [7.00, 7.03, 7.07]   -- Cm
    , chord 0.5 [7.00, 7.05, 7.08]   -- Fm
    , chord 0.5 [7.02, 7.05, 7.07]   -- G7
    , chord 0.5 [7.00, 7.03, 7.07]   -- Cm
    ]


kk = sco kick $ loopBy 8 $ str 0.5 $ mel $ fmap temp [0.7, 0.5, 0.4, 0.5]

-- несколько аккордов
chords = sco pad $ str 2 $ loopBy 2 $ mel
  [ chord 0.5 [7.00, 7.03, 7.07]   -- Cm
  , chord 0.5 [7.00, 7.05, 7.08]   -- Fm
  , chord 0.5 [7.02, 7.05, 7.07]   -- G7
  , chord 0.5 [7.00, 7.03, 7.07]   -- Cm
  ]

kickChords = dac $ mix $ har [kk, hall 2 $ del 2 $ chords]

--------------------------------------
-- wood block comes

wnotes = str 0.5 $ loopBy 12 $ mel
  [ str 0.5 $ mel [temp 0.5, temp 0.2]
  , rest 2.5]

wb = sco woodBlock wnotes

trackSection = dac $ mix $ har
  [ kk
  , wb
  , del 2 $ chords ]

--------------------------------------
-- Sco effects

scoEffects = dac $ mix $ har
  [ kk

  -- добавим дилэй на перкуссию
  , mixAt 0.25 (echo 0.25 0.3) wb

  -- добавим реверб на аккорды
  , mul 0.7 $ hall 0.3 $ del 2 $ chords
  ]

--------------------------------------
-- bass problem

bassRefresher =
  dac $ mlp (250 + 4500 * uosc 0.15) 0.1 $ lead freqs
  where
    lead x = mul 0.4 $ sum
      [ saw x
      , saw (x * cent 4)
      , sqr (2 * x * cent 11)
      ]

    freqs = constSeq (fmap cpspch [6.00, 6.01, 6.03, 5.10]) 4

--------------------------------------
-- bass solution
--
-- use eff with arguments that produce arg signals

bassNotes = loopBy 4 $ str 0.25 $ mel $ (temp . (0.5 , ) . cpspch) <$>
  [6.00, 6.02, 6.03, 5.10, 0, 6.03, 6.07, 6.12, 6.10, 6.07, 0]

bs = eff bass $ sco bassArg bassNotes

playBass = dac $ mix $ har [kk, bs, wb]

--------------------------------------

pitchExample =
  dac $ osc freqs
  where
    freqs = constSeq [p 1, p 3, p 2, p_ 7] 4

--------------------------------------
noteExample = notes
  where
    -- example
    t :: Int -> Sco (D, D)
    t x = temp (0.5, p x)

    notes = mel [qn $ t 1, hn $ t 2, en $ mel [t 3, t 4]]

--------------------------------------
eucStarter =
  dac $ har [ sco kick a
            , sco hihat b]
  where
    a = en      $ euc  16        0   [3, 3, 2]         [temp 0.5]
    b = en      $ euc  16        0   [2, 1, 2, 1, 2]   [temp 0.5]

--------------------------------------
-- euclidean drums

-- hihat
h1 = sco hihat $ en $
  euc 32 0 [1] (fmap temp [1, 0.5, 0.3, 0.2])

-- wood block as snare
s1 = sco woodBlock $ en $
  euc 32 4 [8] (fmap temp [0.5, 0.4, 0.3, 0.45, 0.55])

-- kick drum
k1 = sco kick $ en $
  euc 32 0 [3, 3, 2, 1,2, 2,3] [temp 0.5]

drums = har [h1, s1, k1]

--------------------------------------
-- euclidean melody

-- xylophone 1
xylo1 = sco xylo $ en $
  euc 32 0 [3, 2, 2, 1, 3, 3, 2]
    (fmap temp [ (0.5, p 1), (0.4, p 2), (0.5, p 3)
               , (1, p 5), (0.8, p 7), (0.5, p 6) ])

track = loopBy 2 $ mel [drums, har [drums, xylo1]]

