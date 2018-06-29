{-@ LIQUID "--no-termination"  @-}

module Round1.Cycle where

import qualified DataList as List 
import NonEmptyRound1 hiding (toList)

import Prelude hiding (cycle)

{-@ toList :: NonEmpty a -> {o:[a] | ?? } @-}
toList :: NonEmpty a -> [a]
toList ~(a :| as) = a : as

