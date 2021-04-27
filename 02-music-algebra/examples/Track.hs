{-# Language TupleSections #-}
module Track where

import Csound.Base

import Instr
import Utils

track :: Sig2
track = mix $ mel [intro, sec1, bridge, mul 1.15 sec2, outro]

-- section 1
sec1 = mel
  [ har [drums1, chs1, bs1, xy11]
  , har [drums1, chs1, loopBy 2 xy12, bs1]
  ]

bridge = har [hh, chs2, mel [rest 8, xy12], sea1]

--- section 2
sec2   = har [drums1, chs2, bs2, xy13, at (hp 150 0.1) sea1]

intro = har [mel [k11, k12], shortHh]
outro = har [k11, chs3, xy14, rest 2]

---------------------------------------------------------
-- atmosphere

-- sea
sea1 = cave 0.5 $ sco sea $ str (8 * 2) $ temp 0.8

---------------------------------------------------------
-- pads

chords1 =
  [ [1, 3, 5]
  , [1, 4, 6]
  , [2, 5, 7]
  , [2, 4, 6]
  ]

chords2 =
  [ [3, 5, 7]
  , [1, 3, 5]
  , [1, 4, 6]
  , [4, 6, 8]
  ]
chords3 = [[1, 3, 5]]

chord :: D -> [D] -> Sco (D, D)
chord amp freqs = har $ fmap (temp . (amp, )) freqs

chs1 = chs' chords1
chs2 = chs' chords2
chs3 = chs' chords3

chs' pitches = hall 0.35 $ mixAt 0.3 (echo 0.25 0.3) $
  sco pad $ str 2 $ loopBy 2 $ mel $ fmap ch pitches
  where
    ch as = chord 0.35 $ extend (p_ <$> as)
    extend xs = dwn (head xs) : up (head xs) : up (last xs)  : xs

---------------------------------------------------------
-- bas

arp amp freqs = mel $ fmap (temp . (amp, )) freqs

bs1 = bs' chords1
bs2 = bs' chords2
bs3 = bs' chords3

bs' pitches = chamber 0.2 $ mixAt 0.3 (echo 0.25 0.5) $
  eff bass $ sco bassArg $ str 0.25 $ loopBy 2 $ mel $ fmap ch pitches
  where
    ch as = arp 0.4 $ extend ( (dwn . p_) <$> as)
    extend xs = xs ++ [up (last xs)] ++ xs ++ [up (xs !! 1)]

---------------------------------------------------------
-- drums

drums1 = har [loopBy 2 $ har [loopBy 2 $ kk, wb1], hh]

-- no kick
drums2 = har [loopBy 2 wb1, hh]

-- kick
kk = room 0.1 $ mel [k11, k12]

k11 = mul 1.3 $ sco kick $ mel
  [ en $ temp 0.8, qn $ temp 0.5, qn $ temp 0.7, enr, qnr
  , qnr, qn $ temp 0.5, qnr, qn $ temp 0.5]

k12 = mul 1.3 $ sco kick $ mel
  [ en $ temp 0.8, qn $ temp 0.5, qn $ temp 0.7, enr, qnr
  , qnr, qn $ temp 0.5, rest 0.5]

-- wood block
wb1 = mul 0.9 $ chamber 0.15 $ mixAt 0.2 (echo 0.25 0.3) $ sco woodBlock $ mel
      [ rest 1, temp 0.5, temp 0.5, temp 0.5
      , qn $ temp 0.7, qn $ temp 0.5, rest 1, temp 0.5]

-- hihat
hh = loopBy 4 shortHh

shortHh = mul 2.2 $ sco hihat hnotes
  where
    hnotes = mel
      [ loopBy 2 $ str (1/8) $
          mel $ temp <$> [ 1, 0.5, 0.5, 0, 0.2, 0.3, 1, 0.5]
      , rest 2 ]

--------------------------------------
-- xylo

scoXylo = mul 1.3 . chamber 0.2 . sco xylo

xy11 = scoXylo $ mel [xy1, rest 2, xy1', rest 2, xy2, rest 3, xy3, rest 3]
xy12 = scoXylo $ mel [xy2, xy2, xy3, xy3, rest 4]
xy13 = scoXylo $ loopBy 2 $ mel [xy2, xy2, xy3, xy3, rest 2, xy4]
xy14 = scoXylo $ en $ mel [xa 1, xb 3, xb 5, xa 1, xb 3, xb 5, xa 1, xa 8, har [xa 1, xa 3], rest 3, str 8 $ har [xa 1, xa 5]]
xy1 = en $ mel [ xa 1, xb 2, xb 3, rest 1
               , xa 2, xb 1, rest 1, xb 4
               , rest 8 ]

xy1' = en $ mel [ xa 2, xb 3, xb 4, rest 1
               , xa 3, xb 2, rest 1, xb 5
               , rest 8 ]

xy2 = en $ mel [ xa 3, xb 2, xc 1, xa 4, xb 3, xc 2, xa 5, xb 4 ]
xy3 = en $ mel [ xa 4, xb 3, xc 2, xa 5, xb 4, xc 3, xa 6, xb 5 ]
xy4 = en $ mel [ rest 4                , xa 3, xb 4,  xb 5, xb 6
               , xa 7, xb 6, xb 5, xb 4, xa 5, xb 4, xb 3, xb 2]

xa, xb, xc :: Int -> Sco (D, D)
xa n = temp (0.7, p' n)
xb n = temp (0.5, p' n)
xc n = temp (0.3, p' n)

