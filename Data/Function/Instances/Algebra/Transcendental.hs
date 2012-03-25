module Data.Function.Instances.Algebra.Transcendental where

import Data.Function.Instances.Algebra.Internal
import Data.Function.Instances.Algebra.Algebraic

import Algebra.Transcendental as T

instance C a => C (k -> a) where
  pi = const T.pi
  exp = (T.exp .)
  log = (T.log .)
  logBase = zipFn T.logBase
  (**) = zipFn (T.**)
  sin = (T.sin .)
  tan = (T.tan .)
  cos = (T.cos .)
  asin = (T.asin .)
  atan = (T.atan .)
  acos = (T.acos .)
  sinh = (T.sinh .)
  tanh = (T.tanh .)
  cosh = (T.cosh .)
  asinh = (T.asinh .)
  atanh = (T.atanh .)
  acosh = (T.acosh .)
  

