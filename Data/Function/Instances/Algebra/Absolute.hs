module Data.Function.Instances.Algebra.Absolute where

import Data.Function.Instances.Algebra.Ring

import Algebra.Absolute as A

instance C a => C (k -> a) where
  abs = (A.abs .)
  signum = (A.signum .)
