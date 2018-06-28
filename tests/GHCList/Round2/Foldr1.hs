{-@ LIQUID "--no-termination" @-}
module Round2.Foldr1 where

import Prelude       hiding (foldr1)
import GHCListRound2 hiding (foldr1)

{-@ foldr1              :: (a -> a -> a) -> {xs:[a] | ?? } -> a @-}
foldr1                  :: (a -> a -> a) -> [a] -> a
foldr1 f = go
  where go [x]            =  x
        go (x:xs)         =  f x (go xs)
        go []             =  errorEmptyList "foldr1"
