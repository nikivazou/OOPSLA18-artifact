{-@ LIQUID "--no-termination"  @-}

module Round1.Cycle0 where

import qualified DataList as List 
import NonEmptyRound1 

import Prelude hiding (cycle)

{-@ cycle :: i:{NonEmpty a | ?? } -> NonEmpty a @-}
cycle :: NonEmpty a -> NonEmpty a
cycle = fromList . List.cycle . toList


