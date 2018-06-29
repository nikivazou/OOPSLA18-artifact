module Round3.Sort where

import qualified DataList as List  
import NonEmptyRound3 hiding (sort)

{-@ assume List.sort :: i:{[a] | ?? } -> {o:[a] | ?? } @-}

sort :: Ord a => NonEmpty a -> NonEmpty a
sort = lift List.sort
