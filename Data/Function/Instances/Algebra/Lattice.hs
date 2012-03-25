module Data.Function.Instances.Algebra.Lattice where

import Data.Function.Instances.Algebra.Internal
import Algebra.Lattice as L

instance C a => C ((->) k a) where
  up = zipFn up
  dn = zipFn dn
