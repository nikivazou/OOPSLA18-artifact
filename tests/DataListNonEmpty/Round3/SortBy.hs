module Round3.SortBy where

import qualified DataList as List  
import NonEmptyRound3 hiding (sortBy)

{-@ assume List.sortBy :: (a -> a -> Ordering) -> i:{[a] | ?? } -> {o:[a] | ?? } @-}

sortBy :: (a -> a -> Ordering) -> NonEmpty a -> NonEmpty a
sortBy cmp = lift (List.sortBy cmp)
