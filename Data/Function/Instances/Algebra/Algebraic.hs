module Data.Function.Instances.Algebra.Algebraic where

import Data.Function.Instances.Algebra.Internal
import Data.Function.Instances.Algebra.Field

import Algebra.Algebraic as A

instance C a => C (k -> a) where
  sqrt = (A.sqrt .)
  root i = (A.root i .)
  f ^/ e = \x -> f x A.^/ e
