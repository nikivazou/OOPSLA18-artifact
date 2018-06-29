module Round3.Reverse where

import qualified DataList as List  
import NonEmptyRound3 hiding (reverse)

{-@ assume DataList.reverse :: i:{[a] | ?? } -> {o:[a] | 0 < len o  && ?? } @-}

reverse :: NonEmpty a -> NonEmpty a
reverse = lift List.reverse
