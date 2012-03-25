module Data.Function.Instances.Algebra.Monoid where

import Data.Function.Instances.Algebra.Internal
import Algebra.Monoid as M

instance C a => C (k -> a) where
  idt = const M.idt
  (<*>) = zipFn (M.<*>)
  cumulate fs = \x -> M.cumulate $ map ($ x) fs
