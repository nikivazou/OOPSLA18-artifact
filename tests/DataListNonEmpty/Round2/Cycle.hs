module Round2.Cycle where

import qualified DataList as List  
import NonEmptyRound2


{-@ assume GHCList.cycle :: i:{[a] | 0 < len i && ?? } -> {o:[a] | ?? } @-}

{-@ cycle :: NonEmpty a -> NonEmpty a @-}
cycle :: NonEmpty a -> NonEmpty a
cycle = fromList . List.cycle . toList