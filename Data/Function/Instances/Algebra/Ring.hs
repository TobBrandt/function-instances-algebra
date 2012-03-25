module Data.Function.Instances.Algebra.Ring where

import Data.Function.Instances.Algebra.Internal
import Algebra.Ring as R

instance C a => C (k -> a) where
  (*) = zipFn (R.*)
  one = const R.one
  fromInteger = const . R.fromInteger
  f ^ e = \x -> f x R.^ e
