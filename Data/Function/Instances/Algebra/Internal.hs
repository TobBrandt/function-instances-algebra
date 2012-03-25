module Data.Function.Instances.Algebra.Internal where

zipFn :: (a -> b -> c) -> (d -> a) -> (d -> b) -> d -> c
zipFn op f g x = f x `op` g x
