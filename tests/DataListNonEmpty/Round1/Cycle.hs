{-@ LIQUID "--no-termination"  @-}

module Round1.Cycle where

import qualified DataList as List 
import NonEmptyRound1 hiding (toList)

import Prelude hiding (cycle)


{-@ cycle :: i:{NonEmpty a | ?? } -> NonEmpty a @-}
cycle :: NonEmpty a -> NonEmpty a
cycle = fromList . List.cycle . toList

{-@ toList :: NonEmpty a -> {o:[a] | 0 < len o } @-}
toList :: NonEmpty a -> [a]
toList ~(a :| as) = a : as

