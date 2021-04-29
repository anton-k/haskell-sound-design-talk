-- | Useful helpers
module Utils where

import Csound.Base


-- | Euclidean beats
--
-- > euc totalLength initDelay durations scores
euclid :: Double -> Double -> [Double] -> [Sco a] -> Sco a
euclid len delTime durs scos =
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

