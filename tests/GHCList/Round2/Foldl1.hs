{-@ LIQUID "--no-termination" @-}

{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Round2.Foldl1 where

import Prelude       hiding (foldl1, foldl, foldr)
import GHCListRound2 hiding (foldl1, foldl)
import GHC.Exts (oneShot)

{-@ foldl1              :: (a -> a -> a) -> {xs:[a] | ?? } -> a @-}
foldl1                  :: (a -> a -> a) -> [a] -> a
foldl1 f (x:xs)         =  foldl f x xs
foldl1 _ []             =  errorEmptyList "foldl1"

foldl :: forall a b. (b -> a -> b) -> b -> [a] -> b
foldl k z0 xs =
  foldr (\(v::a) (fn::b->b) -> oneShot (\(z::b) -> fn (k z v))) (id :: b -> b) xs z0
