-- | Note: @'differentiate' f@ is not the derivative of
--   @f@. Rather, it is a function that takes one argument @x@
--   and returns the derivative of @f x@. In other words:
--
--   @ differentiate f = \\x -> differentiate (f x) @
module Data.Function.Instances.Algebra.Differential where

import Data.Function.Instances.Algebra.Ring

import Algebra.Differential as D

instance C a => C (k -> a) where
  differentiate = (D.differentiate .)
