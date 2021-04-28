{-# Language TupleSections #-}
module EucTrack where

import Csound.Base

import Utils
import Instr

x1 = sco xylo $ en $ euc 32 0 [3, 2, 2, 1, 3, 3, 2]
  (fmap temp [(0.5, p 1), (0.4, p 2), (0.5, p 3), (1, p 5), (0.8, p 7), (0.5, p 6) ])

x2 = sco xylo $ en $ euc 32 0 [1, 2, 2, 4, 2, 3, 2]
  (fmap temp [(0.5, p 1), (0.4, p 7), (0.5, p 3), (1, p 5), (0.8, p 7), (0.5, p 6), (1, p 5), (0.5, p 4) ])

x3 = sco xylo $ en $ euc 64 0 [3, 2, 1, 3, 1, 1, 1, 3]
  (fmap temp [(0.5, p 4), (0.4, p 3), (0.5, p 2), (1, p 5), (0.8, p 7), (0.5, p 6), (0.4, p 5), (0.5, p 8), (0.6, p' 2)])

x2' = sco xylo $ en $ euc 32 0 [1, 1, 1, 2, 4, 2, 2, 1, 2]
  (fmap temp [(0.5, p' 1), (0.4, p' 7), (0.5, p' 3), (1, p' 5), (0.8, p' 7), (0.5, p' 6), (1, p' 5), (0.5, p' 4) ])


h1 = sco hihat $ en $ euc 32 0 [1] (fmap temp [1, 0.5, 0.3, 0.2])

s1 = chamber 0.2 $ mixAt (0.15 + 0.1 * uosc 0.5) (echo 0.25 (0.2 + 0.2 * uosc 0.2)) $
  sco woodBlock $ en $ euc 32 4 [8] (fmap temp [0.5, 0.4, 0.3, 0.45, 0.55])

k1 = sco kick $ en $ euc 32 0 [3, 3, 2, 1,2, 2,3] [temp 0.5]

drums = har [k1, s1, h1]
bridgeDrums = har [h1]
outro = mel [
    har [drums, x1]
  , har [drums, x2]
  , drums
  , sco kick $ temp 0.7
  ]

sec1 = mel
  [ mel [har [drums, x1], har [drums, x2]]
  , loopBy 2 $ mel [har [drums, x1, ch1, bs1], har [drums, x2, ch2, bs2]]
  ]
sec2 = loopBy 2 $ har [loopBy 2 (har [drums, ch2, bs2, mul 0.7 x2']), x3]
bridge = har [loopBy 2 $ har [bridgeDrums, ch1], x3]

track = mix $ mel [ sec1, bridge, sec2, outro ]

-----------------------------------------------------
--

-- pad

chord :: D -> [D] -> Sco (D, D)
chord amp freqs = har $ fmap (temp . (amp, )) freqs

toCh = hall 0.2 . mixAt 0.3 (echo 0.25 0.3) .
  sco pad . en . euc 32 0 [16] . fmap (chord 0.3 . extend  . fmap p_)
  where
    extend xs = dwn (head xs) : up (head xs) : up (last xs)  : xs

ch1 = toCh chords1
ch2 = toCh chords2

-- bass

arp amp freqs = fmap (temp . (amp, )) freqs

toBs = chamber 0.2 . mixAt 0.3 (echo 0.25 0.5) .
  eff bass . en . sco bassArg . euc 32 0 [3, 3, 2, 1, 2, 1, 2, 2] . ((arp 0.4 . extend . fmap (dwn . p_ )) =<<)
  where
    extend xs = xs ++ [up (last xs)] ++ xs ++ [up (xs !! 1)]

bs1 = toBs chords1
bs2 = toBs chords2

-- harmony

chords1 =
  [ [1, 3, 5]
  , [1, 4, 6]
  ]

chords2 =
  [ [3, 5, 7]
  , [4, 6, 8]
  ]

