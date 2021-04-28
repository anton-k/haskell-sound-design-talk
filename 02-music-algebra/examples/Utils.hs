-- | Useful helpers
module Utils where

import Csound.Base

-- | Euclidean beats
--
-- > euc totalLength initDelay durations scores
euc :: Double -> Double -> [Double] -> [Sco a] -> Sco a
euc len delTime durs scos =
  go (delTime, rest (sig $ double delTime)) $ zip (cycle durs) (cycle scos)
  where
    go :: (Double, Sco a) -> [(Double, Sco  a)] -> Sco a
    go (time, res) xs = case xs of
      []             -> res
      (dt, a) : rest ->
        let nextTime = time + dt
        in  if nextTime < len
              then go (nextTime, mel [res, str (sig $ double dt) a]) rest
              else let dtReduced = len - time
                   in  mel [res, str (sig $ double dtReduced) a]

----------------------------------------------------------------
-- pitch helpers

pitches :: (SigOrD a) => [a]
pitches  = [1, 9/8, 6/5, 4/3, 3/2, 5/3, 16/9, 2] -- ноты тональности

baseNote :: (SigOrD a) => a
baseNote = cpspch 8.00                  -- тоника (оновная нота)

p, p', p_ :: (SigOrD a) => Int -> a

p x = baseNote * pitches !! (x - 1)     -- класс нот

oct :: (SigOrD a) => a -> a -> a
oct n x = (2 ** n) * x                  -- перенос по октавам

up, dwn :: (SigOrD a) => a -> a
up = oct 1
dwn = oct (-1)
p' = up . p                             -- нота на октаву выше и ниже
p_ = dwn . p

----------------------------------------------------------------
-- str helpers

en, qn, hn, bn :: Sco a -> Sco a
enr, qnr, hnr, bnr ::  Sco a

en = str 0.125  -- eights note
qn = str 0.25   -- quater note
hn = str 0.5    -- half note
bn = str 2      -- brewis note (two whole notes

-- rests
enr = rest 0.125  -- eights note
qnr = rest 0.25   -- quater note
hnr = rest 0.5    -- half note
bnr = rest 2      -- brewis note (two whole notes))
