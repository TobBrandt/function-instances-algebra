module Data.Function.Instances.Algebra.Field where

import Data.Function.Instances.Algebra.Internal
import Data.Function.Instances.Algebra.Ring

import Algebra.Field as F

instance C a => C (k -> a) where
  (/) = zipFn (F./)
  recip = (F.recip .)
  fromRational' = const . fromRational'
  f ^- e = \x -> f x F.^- e
